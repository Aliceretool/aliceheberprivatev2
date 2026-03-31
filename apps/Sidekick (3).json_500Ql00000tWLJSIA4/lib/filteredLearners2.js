// filteredLearners2 (Run JS Code)

// 0) Get the raw data
const raw = data_ops_API_query_mlv.data.data || data_ops_API_query_mlv.data;

// Normalize rows from various shapes
const getRows = (v) => {
  if (Array.isArray(v)) return v;
  if (!v || typeof v !== "object") return [];
  if (Array.isArray(v.data)) return v.data;
  if (Array.isArray(v.rows)) return v.rows;
  if (Array.isArray(v.results)) return v.results;
  return [];
};

const rows = getRows(raw);

// 1) Helpers
const toArray = (v) => {
  if (Array.isArray(v)) return v;
  if (v === null || v === undefined || v === "") return [];
  return [v];
};

const normalize = (v) => String(v ?? "").trim().toLowerCase();

// Treat these as “no filter” values if your multiselect uses them
const IGNORED_FILTER_VALUES = new Set(["all", "any", "everyone", "select all"]);

// Retool multiselect values can be primitives OR objects.
// This extracts a comparable primitive and normalizes it.
const normalizeFilterList = (list) =>
toArray(list).
map((item) => {
  if (item && typeof item === "object") {
    let v = item.value ?? item.label ?? item.name ?? item.id;
    if (v && typeof v === "object") v = v.id ?? v.value ?? v.label ?? v.name;
    return v;
  }
  return item;
}).
map(normalize).
filter((x) => x !== "" && !IGNORED_FILTER_VALUES.has(x));

// Passes if ANY row candidate matches ANY selected filter value.
// If filter is empty → pass.
// If row field is missing → (optionally) pass for some fields.
const passes = (filterList, rowValueOrValues, { failOpenIfMissing = false } = {}) => {
  const cleanFilterList = normalizeFilterList(filterList);
  if (cleanFilterList.length === 0) return true;

  const rowValues = toArray(rowValueOrValues).map(normalize).filter((x) => x !== "");
  if (rowValues.length === 0) return failOpenIfMissing;

  return rowValues.some((v) => cleanFilterList.includes(v));
};

// 2) Read filter component selections
// NOTE: cohort/company multiselects now use IDs (item.id) as values,
// so we must compare against the corresponding row.cohort?.id / row.company?.id fields.
const cohortFilter = toArray(cohort_filter_multiselect2.value);
const companyFilter = toArray(company_filter_multiselect2.value);
const coachFilter = toArray(coach_filter_multiselect2.value);
const statusFilter = toArray(status_filter_multiselect2.value);
const riskFilter = toArray(risk_level_filter_multiselect2.value);

// 3) Coach candidates (IMPORTANT FIX)
// Include coach / launch_coach / success_coach and match by id/email/name.
const getCoachCandidates = (row) => {
  const coaches = [row.coach, row.launch_coach, row.success_coach].filter(Boolean);
  const candidates = coaches.flatMap((c) => [
  c.id,
  c.email,
  `${c.first_name || ""} ${c.last_name || ""}`.trim()]);

  return candidates.filter((v) => v && String(v).trim() !== "");
};

// 4) Apply filters
return rows.filter((row) => {
  // IMPORTANT: compare cohort/company filters (IDs) against row.cohort.id / row.company.id
  const passCohort = passes(cohortFilter, row.cohort?.id);
  const passCompany = passes(companyFilter, row.company?.id);

  // FAIL OPEN for coach is usually correct because many rows have coach null
  // but do have launch_coach/success_coach (or may be truly blank).
  const passCoach = passes(coachFilter, getCoachCandidates(row), { failOpenIfMissing: true });

  const passStatus = passes(statusFilter, row.status?.latest_status);

  // Keep risk as fail-closed (default) so filtering to "High" won't include null-risk rows.
  const passRisk = passes(riskFilter, row.withdrawal_risk?.risk_bucket_name);

  return passCohort && passCompany && passCoach && passStatus && passRisk;
});