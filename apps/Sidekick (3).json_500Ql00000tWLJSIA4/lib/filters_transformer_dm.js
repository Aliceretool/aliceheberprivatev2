return [
  // 1. Cohort Filter
  ({{ cohort_cohortSelect3.value }} && {{ cohort_cohortSelect3.value }}.length > 0) ? {
    "member": "sidekick__apprenticeship_monthly.cohort_name",
    "operator": "equals",
    "values": Array.isArray({{ cohort_cohortSelect3.value }}) ? {{ cohort_cohortSelect3.value }} : [{{ cohort_cohortSelect3.value }}]
  } : null,
  
  // 2. Company Filter
  ({{ cohort_companySelect3.value }} && {{ cohort_companySelect3.value }}.length > 0) ? {
    "member": "sidekick__apprenticeship_monthly.company_name",
    "operator": "equals",
    "values": Array.isArray({{ cohort_companySelect3.value }}) ? {{ cohort_companySelect3.value }} : [{{ cohort_companySelect3.value }}]
  } : null,

  // 3. Risk Filter
  ({{ cohort_riskSelect2.value }} && {{ cohort_riskSelect2.value }}.length > 0) ? {
    "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_risk_bucket_name",
    "operator": "equals",
    "values": Array.isArray({{ cohort_riskSelect2.value }}) ? {{ cohort_riskSelect2.value }} : [{{ cohort_riskSelect2.value }}]
  } : null,

  // 4. Status Filter
  ({{ cohort_statusSelect3.value }} && {{ cohort_statusSelect3.value }}.length > 0) ? {
    "member": "sidekick__apprenticeship_monthly.apprenticeship_latest_status",
    "operator": "equals",
    "values": Array.isArray({{ cohort_statusSelect3.value }}) ? {{ cohort_statusSelect3.value }} : [{{ cohort_statusSelect3.value }}]
  } : null,
].filter(item => item !== null);