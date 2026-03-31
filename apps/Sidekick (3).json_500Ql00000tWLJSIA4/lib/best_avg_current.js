const rawData = {{ best_avg_query_current.data.data }};

const data = (rawData || []).filter(row => 
  Number(row['sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count']) > 10
);

if (data.length === 0) {
  return {
    eol: { avg: 0, best: 0 },
    lsat: { avg: 0, best: 0 },
    attendance: { avg: 0, best: 0 },
    reviews: { avg: 0, best: 0 },
    gateway: { avg: 0, best: 0 },
    active: { avg: 0, max: 0 },
    bil: { avg: 0, lowest: 0 },
    risk: { avg: 0, lowest: 0 },
    zeroEol: { avg: 0, lowest: 0 }
  };
}

const getNum = (row, key) => Number(row[key]) || 0;

return {
  eol: {
    avg: (_.meanBy(data, o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct')) * 100).toFixed(1),
    best: (_.max(data.map(o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct'))) * 100).toFixed(1)
  },
  lsat: {
    avg: _.meanBy(data, o => getNum(o, 'sidekick__apprenticeship_monthly.avg_lsat_coach_score')).toFixed(1),
    best: _.max(data.map(o => getNum(o, 'sidekick__apprenticeship_monthly.avg_lsat_coach_score'))).toFixed(1)
  },
  attendance: {
    avg: (_.meanBy(data, o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct')) * 100).toFixed(1),
    best: (_.max(data.map(o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct'))) * 100).toFixed(1)
  },
  reviews: {
    avg: (_.meanBy(data, o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct')) * 100).toFixed(1),
    best: (_.max(data.map(o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct'))) * 100).toFixed(1)
  },
  gateway: {
    avg: (_.meanBy(data, o => getNum(o, 'sidekick__apprenticeship.apprenticeship_gateway_booked_total_pct')) * 100).toFixed(1),
    best: (_.max(data.map(o => getNum(o, 'sidekick__apprenticeship.apprenticeship_gateway_booked_total_pct'))) * 100).toFixed(1)
  },
  active: {
    avg: _.meanBy(data, o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count')).toFixed(0),
    max: _.max(data.map(o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count')))
  },
  bil: {
    avg: _.meanBy(data, o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_bil_count')).toFixed(1),
    lowest: _.min(data.map(o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_bil_count')))
  },
  risk: {
    avg: _.meanBy(data, o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count')).toFixed(1),
    lowest: _.min(data.map(o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_very_high_risk_count')))
  },
  zeroEol: {
    avg: _.mean(data.map(o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count') - getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count'))).toFixed(0),
    lowest: _.min(data.map(o => getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_retainable_learner_count') - getNum(o, 'sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submitted_count')))
  }
};