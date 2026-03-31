// 0. Get RAW NESTED data
const raw = {{data_ops_api_query_dd3.data}} ?? [];

const toArray = (v) => {
  if (Array.isArray(v)) return v;
  if (v === null || v === undefined || v === "") return [];
  return [v];
};

const normalize = (v) => String(v ?? "").trim().toLowerCase();

const normalizeFilterList = (list) =>
  toArray(list).map(item => {
    if (item && typeof item === "object") {
      let v = item.value ?? item.label ?? item.name ?? item.id;
      if (v && typeof v === "object") v = v.id ?? v.value ?? v.label ?? v.name;
      return v;
    }
    return item;
  }).map(normalize).filter(x => x !== "");

const passes = (filterList, rowValueOrValues) => {
  const cleanList = normalizeFilterList(filterList);
  if (cleanList.length === 0) return true;
  const rowVals = toArray(rowValueOrValues).map(normalize).filter(x => x !== "");
  if (rowVals.length === 0) return false;
  return rowVals.some(v => cleanList.includes(v));
};

// 1. Get current UI selections
const selCohort  = toArray({{cohort_dd_cohortSelect4.value}});
const selCompany = toArray({{cohort_dd_companySelect4.value}});
const selCoach   = toArray({{cohort_dd_coachSelect4.value}});
const selStatus  = toArray({{cohort_dd_statusSelect4.value}});
const selRisk    = toArray({{cohort_dd_riskSelect4.value}});

// 2. Setup standard objects to hold deduplicated options
const optCohort  = {};
const optCompany = {};
const optCoach   = {};
const optStatus  = {};
const optRisk    = {};

// 3. Single loop to evaluate all rows
for (const row of raw) {
  const cohortVal  = row.cohort?.name;
  const companyVal = row.company?.name;
  const coachId    = row.coach?.id;
  const coachName  = `${row.coach?.first_name || ''} ${row.coach?.last_name || ''}`.trim();
  const statusVal  = row.status?.latest_status;
  const riskVal    = row.withdrawal_risk?.risk_bucket_name;

  const passCohort  = passes(selCohort, cohortVal);
  const passCompany = passes(selCompany, companyVal);
  const passCoach   = passes(selCoach, [coachId, coachName]);
  const passStatus  = passes(selStatus, statusVal);
  const passRisk    = passes(selRisk, riskVal);

  if (passCompany && passCoach && passStatus && passRisk && cohortVal) {
    optCohort[String(cohortVal).trim().toLowerCase()] = String(cohortVal).trim();
  }
  if (passCohort && passCoach && passStatus && passRisk && companyVal) {
    optCompany[String(companyVal).trim().toLowerCase()] = String(companyVal).trim();
  }
  if (passCohort && passCompany && passStatus && passRisk && coachName) {
    optCoach[String(coachName).trim().toLowerCase()] = String(coachName).trim();
  }
  if (passCohort && passCompany && passCoach && passRisk && statusVal) {
    optStatus[String(statusVal).trim().toLowerCase()] = String(statusVal).trim();
  }
  if (passCohort && passCompany && passCoach && passStatus && riskVal) {
    optRisk[String(riskVal).trim().toLowerCase()] = String(riskVal).trim();
  }
}

// 4. Format into array of objects { label, value } and return
const formatOptions = (obj) => Object.values(obj).sort().map(v => ({ label: v, value: v }));

return {
  cohorts: formatOptions(optCohort),
  companies: formatOptions(optCompany),
  coaches: formatOptions(optCoach),
  statuses: formatOptions(optStatus),
  risks: formatOptions(optRisk)
};