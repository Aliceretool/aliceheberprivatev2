const rawInput = getLearnerProjectData.data;
const raw = typeof rawInput === "string" ? JSON.parse(rawInput) : (rawInput || {});

const STATUS_LABELS = {
  completed: "Completed",
  in_progress: "In progress",
  needs_more_work: "Needs more work",
  not_started: "Not started",
  started: "In progress",
};

const STATUS_COLORS = {
  completed: "success",
  in_progress: "primary",
  needs_more_work: "warning",
  not_started: "secondary",
  started: "primary",
};

const GRADE_LABELS = {
  exceeded: "Exceeds expectations",
  met: "Meets expectations",
  below: "Below expectations",
  needs_more_work: "Needs more work",
  mixed: "Mixed",
};

const GRADE_COLORS = {
  exceeded: "success",
  met: "success",
  below: "warning",
  needs_more_work: "warning",
  mixed: "secondary",
};

const KSB_TYPE_LABELS = {
  knowledge: "Knowledge",
  skill: "Skill",
  behaviour: "Behaviour",
};

const TASK_ORDER_LOOKUP = {
  situation: 1,
  task: 2,
  action: 3,
  result: 4,
  results: 4,
  introduction: 1,
  "project proposal introduction": 1,
  context: 2,
  "context business case review": 2,
  "analysis plan": 3,
  conclusion: 4,
};

function decodeHtml(value) {
  if (value == null) return "";
  const input = String(value);

  if (typeof document !== "undefined") {
    const el = document.createElement("textarea");
    el.innerHTML = input;
    return el.value;
  }

  return input
    .replace(/&nbsp;/gi, " ")
    .replace(/&amp;/gi, "&")
    .replace(/&lt;/gi, "<")
    .replace(/&gt;/gi, ">")
    .replace(/&quot;/gi, '"')
    .replace(/&#39;/gi, "'");
}

function normalizeText(value) {
  if (value == null) return null;

  let s = decodeHtml(String(value)).trim();
  if (!s) return "";

  let previous;
  do {
    previous = s;
    s = s.replace(/\\"/g, '"').replace(/\\'/g, "'");
    if (
      (s.startsWith('"') && s.endsWith('"')) ||
      (s.startsWith("'") && s.endsWith("'")) ||
      (s.startsWith("“") && s.endsWith("”")) ||
      (s.startsWith("‘") && s.endsWith("’"))
    ) {
      s = s.slice(1, -1).trim();
    }
  } while (s !== previous);

  return s.replace(/\s+/g, " ").trim();
}

function toKey(value) {
  const s = normalizeText(value);
  if (!s) return null;
  return s
    .toLowerCase()
    .replace(/&/g, "and")
    .replace(/[^\w]+/g, "_")
    .replace(/^_+|_+$/g, "");
}

function toOrderKey(value) {
  const s = normalizeText(value);
  if (!s) return "";
  return s
    .toLowerCase()
    .replace(/&/g, "and")
    .replace(/[^\w]+/g, " ")
    .replace(/\s+/g, " ")
    .trim();
}

function titleCase(value) {
  if (!value) return value;
  return String(value)
    .split(" ")
    .filter(Boolean)
    .map((part) => part.charAt(0).toUpperCase() + part.slice(1))
    .join(" ");
}

function timestampOf(value) {
  if (!value) return 0;
  const ts = new Date(value).getTime();
  return Number.isFinite(ts) ? ts : 0;
}

function formatDate(value) {
  const ts = timestampOf(value);
  if (!ts) return null;
  return new Date(ts).toLocaleDateString("en-GB", {
    day: "numeric",
    month: "short",
    year: "numeric",
  });
}

function formatDateTime(value) {
  const ts = timestampOf(value);
  if (!ts) return null;
  return new Date(ts).toLocaleString("en-GB", {
    day: "numeric",
    month: "short",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });
}

function truncate(value, max = 180) {
  if (!value) return "";
  const s = String(value).trim();
  if (s.length <= max) return s;
  return `${s.slice(0, max - 1).trim()}…`;
}

function stripHtml(html) {
  if (!html) return "";

  const text = String(html)
    .replace(/<br\s*\/?>/gi, "\n")
    .replace(/<\/p>/gi, "\n")
    .replace(/<\/li>/gi, "\n")
    .replace(/<\/div>/gi, "\n")
    .replace(/<\/h[1-6]>/gi, "\n")
    .replace(/<\/tr>/gi, "\n")
    .replace(/<li[^>]*>/gi, "• ")
    .replace(/<[^>]+>/g, " ")
    .replace(/&nbsp;/gi, " ");

  return decodeHtml(text)
    .replace(/[ \t]+\n/g, "\n")
    .replace(/\n[ \t]+/g, "\n")
    .replace(/\n{3,}/g, "\n\n")
    .replace(/[ \t]{2,}/g, " ")
    .trim();
}

function extractFirstStrongText(html) {
  const match = String(html || "").match(/<strong[^>]*>([\s\S]*?)<\/strong>/i);
  return match ? normalizeText(stripHtml(match[1])) : null;
}

function extractFirstParagraphText(html) {
  const match = String(html || "").match(/<p[^>]*>([\s\S]*?)<\/p>/i);
  return match ? normalizeText(stripHtml(match[1])) : null;
}

function extractHeading(html, fallback = "") {
  const strong = extractFirstStrongText(html);
  const paragraph = extractFirstParagraphText(html);
  const plain = stripHtml(html);

  let heading =
    strong ||
    paragraph ||
    plain.split("\n").map((x) => x.trim()).find(Boolean) ||
    fallback ||
    "";

  heading = normalizeText(heading) || "";
  heading = heading
    .replace(/\s*\(approx\.[^)]+\)/gi, "")
    .replace(/\s*\(max\.[^)]+\)/gi, "")
    .trim();

  return heading;
}

function extractAttr(tag, attrName) {
  const regex = new RegExp(`${attrName}="([^"]*)"`, "i");
  const match = String(tag || "").match(regex);
  return match ? decodeHtml(match[1]) : null;
}

function extractCkFiles(html) {
  const tags =
    String(html || "").match(/<div[^>]*class="[^"]*\bck-file\b[^"]*"[^>]*>/gi) || [];

  return tags
    .map((tag) => ({
      id: extractAttr(tag, "data-file-id"),
      referenceId: extractAttr(tag, "data-file-reference-id"),
      name: normalizeText(extractAttr(tag, "data-file-name")),
      url: extractAttr(tag, "data-file-url"),
      isOpen: extractAttr(tag, "data-file-is-open") === "true",
    }))
    .filter((item) => item.name || item.url);
}

function buildSubmission(submission) {
  const startedAt = submission?.submission_started_at ?? submission?.started_at ?? null;
  const submittedAt = submission?.submission_submitted_at ?? submission?.submitted_at ?? null;
  const completedAt = submission?.submission_completed_at ?? submission?.completed_at ?? null;

  const latestActivityTs = Math.max(
    timestampOf(startedAt),
    timestampOf(submittedAt),
    timestampOf(completedAt)
  );

  const rawStatus = toKey(submission?.submission_state ?? submission?.state) || "not_started";
  const statusKey = rawStatus === "started" ? "in_progress" : rawStatus;

  return {
    id: submission?.id ?? null,
    status: {
      raw: statusKey,
      label: STATUS_LABELS[statusKey] || titleCase(statusKey.replace(/_/g, " ")),
      color: STATUS_COLORS[statusKey] || "secondary",
    },
    projectState: {
      raw: toKey(submission?.project_state),
      label:
        STATUS_LABELS[toKey(submission?.project_state)] ||
        (submission?.project_state
          ? titleCase(normalizeText(submission.project_state).replace(/_/g, " "))
          : null),
    },
    dates: {
      started: {
        raw: startedAt,
        display: formatDate(startedAt),
        displayDateTime: formatDateTime(startedAt),
      },
      submitted: {
        raw: submittedAt,
        display: formatDate(submittedAt),
        displayDateTime: formatDateTime(submittedAt),
      },
      completed: {
        raw: completedAt,
        display: formatDate(completedAt),
        displayDateTime: formatDateTime(completedAt),
      },
      latestActivity: {
        raw: latestActivityTs ? new Date(latestActivityTs).toISOString() : null,
        displayDateTime: latestActivityTs
          ? formatDateTime(new Date(latestActivityTs).toISOString())
          : null,
      },
    },
    sortTs: latestActivityTs,
  };
}

function deriveProjectState(latestSubmission, rawProjectState) {
  const raw =
    latestSubmission?.status?.raw ||
    toKey(rawProjectState) ||
    "not_started";

  return {
    raw,
    label: STATUS_LABELS[raw] || titleCase(raw.replace(/_/g, " ")),
    color: STATUS_COLORS[raw] || "secondary",
  };
}

function normalizeGrade(grade) {
  const summary = toKey(grade?.assessment_summary ?? grade?.summary ?? grade?.value);

  return {
    summary,
    label:
      summary == null
        ? null
        : GRADE_LABELS[summary] || titleCase(summary.replace(/_/g, " ")),
    color: summary == null ? null : GRADE_COLORS[summary] || "secondary",
  };
}

function buildKsb(entry) {
  const ksb = entry?.ksb ?? entry ?? {};
  const typeKey = toKey(ksb?.type);

  return {
    id: ksb?.id ?? null,
    tag: normalizeText(ksb?.tag),
    title: normalizeText(ksb?.title),
    description: normalizeText(ksb?.description),
    type: {
      key: typeKey,
      label:
        KSB_TYPE_LABELS[typeKey] ||
        (typeKey ? titleCase(typeKey.replace(/_/g, " ")) : null),
    },
    grade: normalizeGrade(entry?.grade),
  };
}

function deriveTaskAssessment(ksbs) {
  const summaries = ksbs.map((k) => k.grade?.summary).filter(Boolean);
  const unique = [...new Set(summaries)];

  if (unique.length === 0) {
    return { summary: null, label: null, color: null };
  }

  if (unique.length === 1) {
    const key = unique[0];
    return {
      summary: key,
      label: GRADE_LABELS[key] || titleCase(key.replace(/_/g, " ")),
      color: GRADE_COLORS[key] || "secondary",
    };
  }

  return {
    summary: "mixed",
    label: GRADE_LABELS.mixed,
    color: GRADE_COLORS.mixed,
  };
}

function buildTaskHeading(descriptionHtml, fallback = "") {
  const rawHeading = extractHeading(descriptionHtml, fallback);
  const taskNumberMatch = rawHeading.match(/\bTask\s*(\d+)\b/i);
  const taskNumber = taskNumberMatch ? Number(taskNumberMatch[1]) : null;

  let title = rawHeading;
  let subtitle = null;
  let kind = null;
  let sortOrder = 1000;

  if (taskNumber != null) {
    title = `Task ${taskNumber}`;
    subtitle =
      normalizeText(rawHeading.replace(/^Task\s*\d+\s*[:.-]?\s*/i, "")) || null;
    kind = "task";
    sortOrder = taskNumber;
  } else {
    const parts = rawHeading.split(/\s*:\s*/, 2);
    const firstPart = normalizeText(parts[0]) || rawHeading;
    const orderKey = toOrderKey(firstPart);

    title = firstPart;
    subtitle = parts[1] ? normalizeText(parts[1]) : null;
    kind = toKey(firstPart);

    if (TASK_ORDER_LOOKUP[orderKey] != null) {
      sortOrder = TASK_ORDER_LOOKUP[orderKey];
    }
  }

  return {
    raw: rawHeading,
    title,
    subtitle,
    kind,
    number: taskNumber,
    sortOrder,
  };
}

const projects = (Array.isArray(raw.elements) ? raw.elements : [])
  .map((element, originalProjectIndex) => {
    const sourceProject = element?.project || {};
    const rawSubmissions =
      element?.project_submissions ||
      sourceProject?.project_submissions ||
      element?.submissions ||
      sourceProject?.submissions ||
      [];

    const submissionsAll = (Array.isArray(rawSubmissions) ? rawSubmissions : [])
      .map(buildSubmission)
      .sort((a, b) => b.sortTs - a.sortTs);

    const latestSubmission = submissionsAll[0] || null;
    const state = deriveProjectState(
      latestSubmission,
      sourceProject?.project_state ?? element?.project_state
    );

    const deadlineRaw = element?.deadline ?? null;
    const submittedDisplay =
      latestSubmission?.dates?.submitted?.display ||
      latestSubmission?.dates?.completed?.display ||
      latestSubmission?.dates?.started?.display ||
      null;

    const secondaryText =
      state.raw === "completed"
        ? `Submitted: ${submittedDisplay || "Completed"}`
        : `Due: ${formatDate(deadlineRaw) || "No due date"}`;

    const tasks = (Array.isArray(sourceProject?.tasks) ? sourceProject.tasks : [])
      .map((task, originalTaskIndex) => {
        const heading = buildTaskHeading(
          task?.description || "",
          `Task ${originalTaskIndex + 1}`
        );
        const ksbs = (Array.isArray(task?.ksbs) ? task.ksbs : [])
          .map(buildKsb)
          .sort((a, b) => (a.tag || "").localeCompare(b.tag || ""));

        return {
          id: task?.id ?? null,
          order: heading.sortOrder,
          _originalIndex: originalTaskIndex,
          heading: {
            raw: heading.raw,
            title: heading.title,
            subtitle: heading.subtitle,
            kind: heading.kind,
            number: heading.number,
          },
          content: {
            html: task?.description || "",
            text: stripHtml(task?.description || ""),
            preview: truncate(stripHtml(task?.description || ""), 220),
            resources: extractCkFiles(task?.description || ""),
          },
          assessment: deriveTaskAssessment(ksbs),
          ksbs,
        };
      })
      .sort((a, b) => {
        if (a.order !== b.order) return a.order - b.order;
        return a._originalIndex - b._originalIndex;
      })
      .map((task, taskIndex) => ({
        id: task.id,
        order: task.order,
        heading: {
          ...task.heading,
          title: `Task ${taskIndex + 1}`,
          number: taskIndex + 1,
        },
        content: task.content,
        assessment: task.assessment,
        ksbs: task.ksbs,
      }));

    return {
      project: {
        id: sourceProject?.id ?? null,
        elementId: element?.id ?? null,
        order: element?.element_order ?? Number.MAX_SAFE_INTEGER,

        title: normalizeText(sourceProject?.title) || `Project ${originalProjectIndex + 1}`,
        shortDescription: normalizeText(sourceProject?.short_description),
        thumbnail: sourceProject?.thumbnail || null,

        module: {
          id: element?.module_id ?? null,
          title: normalizeText(element?.module_title),
        },

        state,

        schedule: {
          deadline: deadlineRaw,
          deadlineDisplay: formatDate(deadlineRaw) || "No due date",
          secondaryText,
        },

        content: {
          html: sourceProject?.html_description || "",
          text: stripHtml(sourceProject?.html_description || ""),
          preview: truncate(stripHtml(sourceProject?.html_description || ""), 280),
          resources: extractCkFiles(sourceProject?.html_description || ""),
        },

        submissions: {
          count: submissionsAll.length,
          latest: latestSubmission,
          all: submissionsAll,
        },

        tasks,
      },
    };
  })
  .sort((a, b) => a.project.order - b.project.order);

return {
  programme: {
    id: raw?.id ?? null,
    name: normalizeText(raw?.name),
    pathwayType: normalizeText(raw?.pathway_type),
    deletedAt: raw?.deleted_at ?? null,
    projectCount: projects.length,
  },
  projects,
};