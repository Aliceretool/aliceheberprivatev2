// 1. Read saved state
const savedState = localStorage.values.metrics_filters;

currentUser_fullName.setValue(current_user_transformer.value || current_user.fullName);

if (savedState) {
  // 2. Wait for initialization
  await new Promise(resolve => setTimeout(resolve, 300));

  // 3. Restore filter values
  if (savedState.cohort) cohort_cohortSelect.setValue(savedState.cohort);
  if (savedState.company) cohort_companySelect.setValue(savedState.company);
  if (savedState.risk) cohort_riskSelect.setValue(savedState.risk);

  // 4. MAP THE VARIABLE (Add this)
  currentUser_fullName.setValue(current_user_transformer.value || current_user.fullName);
}