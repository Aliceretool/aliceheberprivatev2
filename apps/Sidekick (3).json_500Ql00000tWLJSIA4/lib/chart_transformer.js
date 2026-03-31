// 1. Safely pull the arrays from your 3 queries
const podData = {{ dm_perf_chart.data?.data}} || [];
const companyData = {{ dm_average_chart.data?.data}} || [];
const allCoachesData = {{ dm_best_chart.data?.data}} || [];

// 2. Extract a unique, sorted list of months (Using companyData as the reliable base)
const uniqueMonths = [...new Set(companyData.map(row => row['sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date']))].sort();

// 3. Map through each month and stitch the metrics together
const chartData = uniqueMonths.map(monthString => {
  
  const podRow = podData.find(r => r['sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date'] === monthString) || {};
  const companyRow = companyData.find(r => r['sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date'] === monthString) || {};
  const coachesThisMonth = allCoachesData.filter(r => r['sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date'] === monthString);

  const bestEol = Math.max(0, ...coachesThisMonth.map(c => Number(c['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct']) || 0));
  const bestAttendance = Math.max(0, ...coachesThisMonth.map(c => Number(c['sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct']) || 0));
  const bestLsat = Math.max(0, ...coachesThisMonth.map(c => Number(c['sidekick__apprenticeship_monthly.avg_lsat_coach_score']) || 0));

  const formattedMonth = monthString ? monthString.substring(0, 7) : "Unknown";

  return {
    "Month": formattedMonth,

    // --- EOL RATE ---
    "Pod EOL": Number(podRow['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct']) || 0,
    "Company EOL": Number(companyRow['sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct']) || 0,
    "Best Coach EOL": bestEol,

    // --- ATTENDANCE RATE ---
    "Pod Attendance": Number(podRow['sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct']) || 0,
    "Company Attendance": Number(companyRow['sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct']) || 0,
    "Best Coach Attendance": bestAttendance,

    // --- LSAT SCORE ---
    "Pod LSAT": Number(podRow['sidekick__apprenticeship_monthly.avg_lsat_coach_score']) || 0,
    "Company LSAT": Number(companyRow['sidekick__apprenticeship_monthly.avg_lsat_coach_score']) || 0,
    "Best Coach LSAT": bestLsat
  };
});

// 4. THE MAGIC FIX: Convert the Array of Objects into an Object of Arrays for the Chart
return formatDataAsObject(chartData);