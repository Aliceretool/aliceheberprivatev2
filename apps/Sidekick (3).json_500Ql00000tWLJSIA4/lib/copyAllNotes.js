// copyNotesForLLM (JS query) — copies EXACTLY what matches active filters

// ---------- Helpers ----------
const pick = (v) => {
  if (!v) return v;
  if (typeof v === "object") return v.value ?? v.id ?? v.label;
  return v;
};

const toArray = (raw) => {
  if (Array.isArray(raw)) return raw;
  if (raw == null) return [];
  if (typeof raw === "string") {
    const s = raw.trim();
    if (!s) return [];
    // Handle edge case where Retool stores "[]"
    if (s.startsWith("[") && s.endsWith("]")) {
      try {
        const parsed = JSON.parse(s);
        return Array.isArray(parsed) ? parsed : [raw];
      } catch (_) {
        return [raw];
      }
    }
    return [raw];
  }
  return [raw];
};

/** Handle microseconds + missing timezone safely for sorting/filtering */
const normalizeIso = (s) => {
  if (!s || typeof s !== "string") return "";
  // truncate fractional seconds to 3 digits if present
  let out = s.replace(/(\.\d{3})\d+/, "$1");
  // pad fractional seconds to 3 digits if 1-2 digits
  out = out.replace(/\.(\d{1,2})(?!\d)/, (_, d) => `.${String(d).padEnd(3, "0")}`);
  // add Z if no timezone info (treat as UTC-ish for consistent ordering)
  if (!/[zZ]|[+-]\d{2}:\d{2}$/.test(out)) out += "Z";
  return out;
};

const toTime = (s) => Date.parse(normalizeIso(s)) || 0;

/** UUID scrubber (ensures no UUIDs appear anywhere in output) */
const UUID_RE =
  /\b[0-9a-f]{8}-[0-9a-f]{4}-[1-5][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}\b/gi;

const scrubUUIDs = (v) => {
  if (v == null) return v;
  if (Array.isArray(v)) return v.map(scrubUUIDs).filter(Boolean);
  if (typeof v === "string") {
    const cleaned = v.replace(UUID_RE, "").replace(/\s{2,}/g, " ").trim();
    return cleaned || null;
  }
  return v;
};

const authorName = (a) => {
  if (!a) return null;
  const name =
    a.preferred_name?.trim() ||
    [a.first_name, a.last_name].filter(Boolean).join(" ").trim();
  return scrubUUIDs(name);
};

// ---------- 1) Source notes: prefer the filtered list UI (perfect parity) ----------
const notesFromListView = (() => {
  try {
    // This will ONLY work if your ListView component is actually named viewNotesList3
    if (typeof viewNotesList3 !== "undefined" && Array.isArray(viewNotesList3.data)) {
      return viewNotesList3.data;
    }
  } catch (_) {}
  return null;
})();

const allNotes = getLearnerNotes2.data?.items || [];

// If we can read ListView data, it already includes all active filters.
// If not, we compute filters below to match UI.
let filteredNotes = notesFromListView ?? allNotes;

// ---------- 2) If we DIDN'T get ListView data, re-apply the active filter logic ----------
if (!notesFromListView) {
  // 2.1 Top-level content_type filter
  const selectedTypes = toArray(noteFilterMultiselect2.value).map(pick).filter(Boolean);

  filteredNotes =
    selectedTypes.length === 0
      ? allNotes
      : allNotes.filter((n) => selectedTypes.includes(n.content_type));

  // 2.2 Rolling date filter (same as UI)
  const period = pick(noteDatePeriodRadio.value) || "all";

  const endMs = moment().endOf("day").valueOf();
  let startMs = null;

  if (period === "last_week") {
    startMs = moment().subtract(7, "days").startOf("day").valueOf();
  } else if (period === "last_month") {
    startMs = moment().subtract(30, "days").startOf("day").valueOf();
  } else if (period === "last_6_months") {
    startMs = moment().subtract(6, "months").startOf("day").valueOf();
  }

  if (startMs != null) {
    filteredNotes = filteredNotes.filter((n) => {
      const t = toTime(n.created_at);
      if (!t) return false;
      return t >= startMs && t <= endMs;
    });
  }

  // 2.3 Sub-filter: intervention actions (multi) — applies ONLY to intervention logs
  const selectedActions = toArray(interventionActionFilterSelect?.value).map(pick).filter(Boolean);

  if (selectedActions.length > 0) {
    filteredNotes = filteredNotes.filter((n) => {
      if (n.content_type !== "intervention") return true;
      return selectedActions.includes(n.intervention_action);
    });
  }

  // 2.4 Sub-filter: support factors (multi) — applies ONLY to support_factor logs
  const selectedSF = toArray(supportFactorFilterMultiselect?.value).map(pick).filter(Boolean);

  if (selectedSF.length > 0) {
    filteredNotes = filteredNotes.filter((n) => {
      if (n.content_type !== "support_factor") return true;
      const sf = Array.isArray(n.support_factors) ? n.support_factors : [];
      // OR logic: match ANY selected factor
      return selectedSF.some((x) => sf.includes(x));
      // If you want AND instead, swap to:
      // return selectedSF.every((x) => sf.includes(x));
    });
  }
}

// ---------- 3) Sort oldest -> newest ----------
const sorted = [...filteredNotes].sort((a, b) => toTime(a.created_at) - toTime(b.created_at));

// ---------- 4) Build filter summary for the output header ----------
const selectedTypesForSummary = toArray(noteFilterMultiselect2.value).map(pick).filter(Boolean);
const periodForSummary = pick(noteDatePeriodRadio.value) || "all";

const periodLabel = ({
  all: "All time",
  last_week: "Last 7 days",
  last_month: "Last 30 days",
  last_6_months: "Last 6 months",
}[periodForSummary] || String(periodForSummary));

const selectedActionsForSummary = toArray(interventionActionFilterSelect?.value).map(pick).filter(Boolean);
const selectedSFFOrSummary = toArray(supportFactorFilterMultiselect?.value).map(pick).filter(Boolean);

const typeLabel = selectedTypesForSummary.length ? selectedTypesForSummary.join(", ") : "All types";

// ---------- 5) Normalize into an LLM-friendly shape with NO UUID fields ----------
const normalized = sorted.map((n, idx) => {
  const tags = [
    ...(Array.isArray(n.support_factors) ? n.support_factors : []),
    ...(n.intervention_type ? [n.intervention_type] : []),
    ...(n.intervention_action ? [n.intervention_action] : []),
  ]
    .map(scrubUUIDs)
    .filter(Boolean);

  return {
    note_number: idx + 1,
    created_at: scrubUUIDs(n.created_at),
    content_type: scrubUUIDs(n.content_type),
    tags: [...new Set(tags)],
    intervention_type: scrubUUIDs(n.intervention_type) || null,
    intervention_action: scrubUUIDs(n.intervention_action) || null,
    author_name: authorName(n.author),
    author_email: scrubUUIDs(n.author?.email) || null,
    content: scrubUUIDs(n.content) || "(empty)",
  };
});

// ---------- 6) Output as clean Markdown ----------
const filterSummaryLines = [
  `- Types: ${scrubUUIDs(typeLabel)}`,
  `- Date: ${scrubUUIDs(periodLabel)}`,
  selectedActionsForSummary.length
    ? `- Intervention actions: ${scrubUUIDs(selectedActionsForSummary.join(", "))}`
    : `- Intervention actions: (none)`,
  selectedSFFOrSummary.length
    ? `- Support factors: ${scrubUUIDs(selectedSFFOrSummary.join(", "))}`
    : `- Support factors: (none)`,
];

const output = [
  `# Learner Notes (chronological: oldest → newest)`,
  `Total: ${normalized.length}`,
  ``,
  `## Active filters`,
  ...filterSummaryLines,
  ``,
  ...normalized.map((n) => {
    const lines = [
      `## Note ${n.note_number}`,
      `- Date: ${n.created_at}`,
      `- Type: ${n.content_type}`,
      n.tags?.length ? `- Tags: ${n.tags.join(", ")}` : `- Tags: (none)`,
      n.intervention_type ? `- Intervention type: ${n.intervention_type}` : null,
      n.intervention_action ? `- Intervention action: ${n.intervention_action}` : null,
      n.author_name || n.author_email
        ? `- Author: ${[n.author_name, n.author_email].filter(Boolean).join(" · ")}`
        : null,
      ``,
      n.content,
    ].filter(Boolean);

    return lines.join("\n");
  }),
].join("\n\n---\n\n");

// ---------- 7) Copy + toast ----------
await utils.copyToClipboard(output);

utils.showNotification({
  title: "Copied notes",
  description: `Copied ${normalized.length} notes (matches active filters; no UUIDs).`,
  notificationType: "success",
});

return output;