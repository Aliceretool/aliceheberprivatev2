// 1. Read saved state
const savedState = localStorage.values.metrics_filters;

currentUser_fullName3.setValue(current_user_transformer2.value);

if (savedState) {
  // 2. Wait for initialization
  await new Promise(resolve => setTimeout(resolve, 300));

  // 3. Restore filter values
  if (savedState.cohort) cohort_cohortSelect3.setValue(savedState.cohort);
  if (savedState.company) cohort_companySelect3.setValue(savedState.company);
  if (savedState.risk) cohort_riskSelect2.setValue(savedState.risk);

  // 4. MAP THE VARIABLE (Add this)
  currentUser_fullName3.setValue(current_user_transformer2.value);
}