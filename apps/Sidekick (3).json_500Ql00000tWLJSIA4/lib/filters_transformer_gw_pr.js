return [
  // 1. Cohort Filter
  ({{ cohort_cohortSelect.value }} && {{ cohort_cohortSelect.value }}.length > 0) ? {
    "member": "sidekick__apprenticeship.cohort_name",
    "operator": "equals",
    "values": Array.isArray({{ cohort_cohortSelect.value }}) ? {{ cohort_cohortSelect.value }} : [{{ cohort_cohortSelect.value }}]
  } : null,
  
  // 2. Company Filter
  ({{ cohort_companySelect.value }} && {{ cohort_companySelect.value }}.length > 0) ? {
    "member": "sidekick__apprenticeship.company_name",
    "operator": "equals",
    "values": Array.isArray({{ cohort_companySelect.value }}) ? {{ cohort_companySelect.value }} : [{{ cohort_companySelect.value }}]
  } : null,

  // 3. Status Filter
  ({{ cohort_statusSelect.value }} && {{ cohort_statusSelect.value }}.length > 0) ? {
    "member": "sidekick__apprenticeship.apprenticeship_latest_status",
    "operator": "equals",
    "values": Array.isArray({{ cohort_statusSelect.value }}) ? {{ cohort_statusSelect.value }} : [{{ cohort_statusSelect.value }}]
  } : null,

  // 4. Risk Filter
  ({{ cohort_riskSelect.value }} && {{ cohort_riskSelect.value }}.length > 0) ? {
    "member": "sidekick__apprenticeship.apprenticeship_latest_risk_bucket_name",
    "operator": "equals",
    "values": Array.isArray({{ cohort_riskSelect.value }}) ? {{ cohort_riskSelect.value }} : [{{ cohort_riskSelect.value }}]
  } : null
].filter(item => item !== null);