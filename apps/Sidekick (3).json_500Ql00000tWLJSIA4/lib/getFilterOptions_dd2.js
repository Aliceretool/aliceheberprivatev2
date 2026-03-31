// Get data from the three dedicated list queries
const coachList = {{get_coach_list_dm.data}} ?? [];
const cohortList = {{get_cohort_list_dm.data}} ?? [];
const companyList = {{get_companies_list_dm.data}} ?? [];

// Setup objects to hold deduplicated options
const optCohort = {};
const optCompany = {};
const optCoach = {};

// Build coach options from dedicated query - Updated for new nested schema
for (const item of coachList) {
  // Access the nested coach object
  const coachData = item.coach || {}; 
  const coachName = `${coachData.first_name || ''} ${coachData.last_name || ''}`.trim();
  
  if (coachName) {
    optCoach[coachName.toLowerCase()] = coachName;
  }
}

// Build cohort options from dedicated query
for (const cohort of cohortList) {
  const cohortName = cohort.name || cohort.cohort_name;
  if (cohortName) {
    optCohort[String(cohortName).trim().toLowerCase()] = String(cohortName).trim();
  }
}

// Build company options from dedicated query
for (const company of companyList) {
  const companyName = company.name || company.company_name;
  if (companyName) {
    optCompany[String(companyName).trim().toLowerCase()] = String(companyName).trim();
  }
}

// Format into array of objects { label, value } and return
const formatOptions = (obj) => Object.values(obj).sort().map(v => ({ label: v, value: v }));

return {
  cohorts: formatOptions(optCohort),
  companies: formatOptions(optCompany),
  coaches: formatOptions(optCoach)
};