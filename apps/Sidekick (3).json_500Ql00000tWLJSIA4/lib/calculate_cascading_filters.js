// 0. Get RAW NESTED data
const raw = data_ops_API_query_mlv.data.data ?? [];

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
const selCohort  = toArray(cohort_filter_multiselect2.value);
const selCompany = toArray(company_filter_multiselect2.value);
const selCoach   = toArray(coach_filter_multiselect2.value);
const selStatus  = toArray(status_filter_multiselect2.value);
const selRisk    = toArray(risk_level_filter_multiselect2.value);

// 2. Setup standard objects to hold deduplicated options
// Key = normalized identifier, Value = { id, name } object
const optCohort  = {};
const optCompany = {};
const optCoach   = {};
const optStatus  = {};
const optRisk    = {};

// 3. Single loop to evaluate all rows
for (const row of raw) {
  const cohortId   = row.cohort?.id;
  const cohortName = row.cohort?.name;
  const companyId  = row.company?.id;
  const companyName = row.company?.name;
  const coachId    = row.coach?.id;
  const coachName  = `${row.coach?.first_name || ''} ${row.coach?.last_name || ''}`.trim();
  const statusVal  = row.status?.latest_status;
  const riskVal    = row.withdrawal_risk?.risk_bucket_name;

  const passCohort  = passes(selCohort, [cohortId, cohortName]);
  const passCompany = passes(selCompany, [companyId, companyName]);
  const passCoach   = passes(selCoach, [coachId, coachName]);
  const passStatus  = passes(selStatus, statusVal);
  const passRisk    = passes(selRisk, riskVal);

  // Store both ID and name for cohort
  if (passCompany && passCoach && passStatus && passRisk && cohortId && cohortName) {
    const key = normalize(cohortId);
    optCohort[key] = { id: cohortId, name: cohortName };
  }
  
  // Store both ID and name for company
  if (passCohort && passCoach && passStatus && passRisk && companyId && companyName) {
    const key = normalize(companyId);
    optCompany[key] = { id: companyId, name: companyName };
  }
  
  // Store both ID and name for coach
  if (passCohort && passCompany && passStatus && passRisk && coachId && coachName) {
    const key = normalize(coachId);
    optCoach[key] = { id: coachId, name: coachName };
  }
  
  // Status and risk use value as both label and value
  if (passCohort && passCompany && passCoach && passRisk && statusVal) {
    const key = normalize(statusVal);
    optStatus[key] = statusVal;
  }
  
  if (passCohort && passCompany && passCoach && passStatus && riskVal) {
    const key = normalize(riskVal);
    optRisk[key] = riskVal;
  }
}

// 4. Format into array of objects { label, value }
const formatOptionsWithId = (obj) => 
  Object.values(obj)
    .map(item => ({ label: item.name, value: item.id }))
    .sort((a, b) => a.label.localeCompare(b.label));

const formatOptionsSimple = (obj) => 
  Object.values(obj)
    .sort()
    .map(v => ({ label: v, value: v }));

const newOptions = {
  cohorts: formatOptionsWithId(optCohort),
  companies: formatOptionsWithId(optCompany),
  coaches: formatOptionsWithId(optCoach),
  statuses: formatOptionsSimple(optStatus),
  risks: formatOptionsSimple(optRisk)
};

// ONLY update if the data is actually different
if (!_.isEqual(filter_options_state.value, newOptions)) {
  filter_options_state.setValue(newOptions);
}