// -------------------------------
// Source data (data_ops_API_query_cc)
// -------------------------------
const api = {{ data_ops_API_query_cc.data }} ?? {};

// Your query has enableTransformer=true and returns { data: [...] , ... }
// But we’ll support a couple shapes defensively.
const learners =
  (Array.isArray(api) && api) ||
  (Array.isArray(api.data) && api.data) ||
  (Array.isArray(api.items) && api.items) ||
  [];

// -------------------------------
// Helpers
// -------------------------------
const normalize = (v) => String(v ?? "").trim();
const keyify = (v) => normalize(v).toLowerCase();

const formatOptions = (obj) =>
  Object.values(obj)
    .sort((a, b) => a.localeCompare(b))
    .map((v) => ({ label: v, value: v }));

// -------------------------------
// Build unique options
// -------------------------------
const optCohort = {};
const optCompany = {};

for (const row of learners) {
  // Try a few likely cohort paths
  const cohortName =
    normalize(row?.cohort_name) ||
    normalize(row?.cohort?.name) ||
    normalize(row?.cohort?.cohort_name);

  if (cohortName) optCohort[keyify(cohortName)] = cohortName;

  // Try a few likely company paths
  const companyName =
    normalize(row?.company_name) ||
    normalize(row?.company?.name) ||
    normalize(row?.company?.company_name);

  if (companyName) optCompany[keyify(companyName)] = companyName;
}

return {
  cohorts: formatOptions(optCohort),
  companies: formatOptions(optCompany),
};