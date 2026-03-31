// 0) Get rows safely even if the API wrapped them (data/rows/results)
const raw = data_ops_API_query2.data;

const getRows = (v) => {
  if (Array.isArray(v)) return v;
  if (!v || typeof v !== "object") return [];
  if (Array.isArray(v.data)) return v.data;
  if (Array.isArray(v.rows)) return v.rows;
  if (Array.isArray(v.results)) return v.results;
  return [];
};

const rows = getRows(raw);

// Ensure multiselect values are always arrays (prevents .map crashes)
const toArray = (v) => {
  if (Array.isArray(v)) return v;
  if (v === null || v === undefined || v === "") return [];
  return [v];
};

// 1) Get User Selections (Safe Defaults)
const cohortFilter  = toArray(cohort_filter_multiselect.value);
const companyFilter = toArray(company_filter_multiselect.value);
const coachFilter   = toArray(coach_filter_multiselect.value);
const statusFilter  = toArray(status_filter_multiselect.value);
const riskFilter    = toArray(risk_level_filter_multiselect.value);

// 2) Helpers (case-insensitive matching)
const normalize = (v) => String(v ?? "").trim().toLowerCase();

const normalizeFilterList = (list) =>
  toArray(list)
    .map((item) => {
      // Retool multiselect sometimes returns objects; try to extract a primitive
      if (item && typeof item === "object") {
        let v = item.value ?? item.label ?? item.name ?? item.id;

        // If the "value" is itself an object, try common keys
        if (v && typeof v === "object") {
          v = v.id ?? v.value ?? v.label ?? v.name;
        }
        return v;
      }
      return item;
    })
    .map(normalize)
    .filter((x) => x !== "");

// Allow rowValue to be a single value OR an array of candidate values.
// Passes if ANY candidate matches any selected filter value.
const passes = (filterList, rowValueOrValues) => {
  const cleanFilterList = normalizeFilterList(filterList);
  if (cleanFilterList.length === 0) return true;

  const rowValues = toArray(rowValueOrValues)
    .map(normalize)
    .filter((x) => x !== "");

  if (rowValues.length === 0) return false;
  return rowValues.some((v) => cleanFilterList.includes(v));
};

// Coach can now be nested: row.coach.id
// Also keep backward compatibility with old flat fields.
const getCoachCandidates = (row) => {
  const id =
    row.coach_account_id ??
    row.coach_id ??
    row.coach?.id;

  const name =
    row.coach_full_name ??
    [row.coach?.preferred_name ?? row.coach?.first_name, row.coach?.last_name]
      .filter(Boolean)
      .join(" ")
      .trim();

  const email =
    row.coach_email ??
    row.coach?.email;

  return [id, name, email].filter((v) => v !== null && v !== undefined && String(v).trim() !== "");
};

// 3) Apply Filters
return rows.filter((row) => {
  const passCohort  = passes(cohortFilter,  row["cohort_name"]);
  const passCompany = passes(companyFilter, row["company_name"]);
  const passCoach   = passes(coachFilter,   getCoachCandidates(row));
  const passStatus  = passes(statusFilter,  row["latest_status"]);
  const passRisk    = passes(riskFilter,    row["latest_risk_bucket_name"]);

  return passCohort && passCompany && passCoach && passStatus && passRisk;
});