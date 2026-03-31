const monthlyData = {{ best_average_charts_query3.data.data }} || [];
const prData = {{ best_average_pr_chart_query4.data.data }} || [];
const myName = {{ currentUser_fullName4.value }};

const getNum = (row, key) => Number(row[key]) || 0;

// Helper to normalize date strings to "YYYY-MM-DD"
const normDate = (d) => d ? moment(d).startOf('month').format('YYYY-MM-DD') : null;

const mergedMap = new Map();

// Process Monthly Data
monthlyData.forEach(row => {
  const mDate = normDate(row['sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date']);
  const coach = row['sidekick__apprenticeship_monthly.coach_full_name'];
  if (mDate && coach) {
    const key = `${mDate}_${coach}`;
    mergedMap.set(key, { ...row, normalizedMonth: mDate });
  }
});

// Process PR Data
prData.forEach(row => {
  const pDate = normDate(row['sidekick__apprenticeship.progress_review_due_date']);
  const coach = row['sidekick__apprenticeship.coach_full_name'];
  if (pDate && coach) {
    const key = `${pDate}_${coach}`;
    const existing = mergedMap.get(key) || {};
    mergedMap.set(key, { ...existing, ...row, normalizedMonth: pDate });
  }
});

const combinedRows = Array.from(mergedMap.values());

// Debugging: If this returns 0, the join keys are failing
if (combinedRows.length === 0) return [];

const groupedByMonth = _.groupBy(combinedRows, 'normalizedMonth');

const trendData = Object.entries(groupedByMonth).map(([month, coachRows]) => {
  // FILTER: Only coaches with > 10 learners
  const peerGroup = coachRows.filter(row => 
    getNum(row, 'sidekick__apprenticeship_monthly.apprenticeship_month_active_apprenticeships_count') > 10
  );

  const myRow = coachRows.find(row => 
    (row['sidekick__apprenticeship_monthly.coach_full_name'] || row['sidekick__apprenticeship.coach_full_name']) === myName
  );

  return {
    month: month,
    eol_avg: (_.meanBy(peerGroup, r => getNum(r, 'sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct'))).toFixed(2),
    eol_best: (_.max(peerGroup.map(r => getNum(r, 'sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct')))).toFixed(2),
    eol_me: myRow ? (getNum(myRow, 'sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct')).toFixed(2) : null,

    att_avg: (_.meanBy(peerGroup, r => getNum(r, 'sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct'))).toFixed(2),
    att_best: (_.max(peerGroup.map(r => getNum(r, 'sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct')))).toFixed(2),
    att_me: myRow ? (getNum(myRow, 'sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct')).toFixed(2) : null,

    lsat_avg: _.meanBy(peerGroup, r => getNum(r, 'sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg')).toFixed(2),
    lsat_best: _.max(peerGroup.map(r => getNum(r, 'sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg'))).toFixed(2),
    lsat_me: myRow ? getNum(myRow, 'sidekick__apprenticeship_monthly.apprenticeship_month_avg_lsat_score_avg').toFixed(2) : null,

    gw_avg: (_.meanBy(peerGroup, r => getNum(r, 'sidekick__apprenticeship_monthly.apprenticeship_month_expected_gateway_rate_pct')) ).toFixed(3),
    gw_best: (_.max(peerGroup.map(r => getNum(r, 'sidekick__apprenticeship_monthly.apprenticeship_month_expected_gateway_rate_pct')))).toFixed(3),
    gw_me: myRow ? (getNum(myRow, 'sidekick__apprenticeship_monthly.apprenticeship_month_expected_gateway_rate_pct')).toFixed(3) : null,

    pr_avg: (_.meanBy(peerGroup, r => getNum(r, 'sidekick__apprenticeship.progress_review_completed_on_time_pct'))).toFixed(4),
    pr_best: (_.max(peerGroup.map(r => getNum(r, 'sidekick__apprenticeship.progress_review_completed_on_time_pct')))).toFixed(4),
    pr_me: myRow ? (getNum(myRow, 'sidekick__apprenticeship.progress_review_completed_on_time_pct')).toFixed(4) : null
  };
});

return _.sortBy(trendData, 'month');