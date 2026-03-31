const raw = data_ops_API_query2.data;

// Be defensive in case the API wraps the array
const getRows = (v) => {
  if (Array.isArray(v)) return v;
  if (!v || typeof v !== "object") return [];
  if (Array.isArray(v.data)) return v.data;
  if (Array.isArray(v.rows)) return v.rows;
  if (Array.isArray(v.results)) return v.results;
  return [];
};

const rows = getRows(raw);

// Extract coach id + display label (best-effort)
const getCoachInfo = (row) => {
  const coachObj = row?.coach;

  const id =
    row?.coach_account_id ??
    row?.coach_id ??
    coachObj?.id ??
    null;

  const name =
    row?.coach_full_name ??
    [coachObj?.preferred_name ?? coachObj?.first_name, coachObj?.last_name]
      .filter(Boolean)
      .join(" ")
      .trim();

  const label = name || (id ? String(id).trim() : null);

  return { id, label };
};

// Dedupe by id (recommended) so labels can repeat safely
const byId = new Map();

for (const row of rows) {
  const { id, label } = getCoachInfo(row);
  if (id === null || id === undefined) continue;

  const idStr = String(id).trim();
  if (!idStr) continue;

  // Keep the first non-empty label we see
  const existing = byId.get(idStr);
  if (!existing || (existing.label === idStr && label && label !== idStr)) {
    byId.set(idStr, { value: idStr, label: label || idStr });
  }
}

return Array.from(byId.values())
  .sort((a, b) => a.label.localeCompare(b.label))
  .map(({ label, value }) => ({ label, value }));


