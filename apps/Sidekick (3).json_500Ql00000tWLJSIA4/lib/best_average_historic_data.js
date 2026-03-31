// 1. Load data safely from the monthly query only
const monthlyData = {{ best_average_charts_query.data?.data }} || [];
const myName = {{ currentUser_fullName.value }};

// 2. Helper Functions
const getNum = (row, key) => Number(row?.[key]) || 0;
const normDate = (d) => (d ? moment(d).startOf("month").format("YYYY-MM-DD") : null);

// 3. Normalize / tag rows with a month key (no cross-query merge needed)
const normalizedMonthlyRows = monthlyData
  .map((row) => {
    const mDate = normDate(
      row["sidekick__apprenticeship_monthly.apprenticeship_month_month_start_date"]
    );
    const coach = row["sidekick__apprenticeship_monthly.coach_full_name"];
    if (!mDate || !coach) return null;

    return { ...row, normalizedMonth: mDate };
  })
  .filter(Boolean);

if (normalizedMonthlyRows.length === 0) return [];

// 4. Group by Month
const groupedByMonth = _.groupBy(normalizedMonthlyRows, "normalizedMonth");

// 5. Calculate Averages, Bests, and My Stats per Month
const trendData = Object.entries(groupedByMonth).map(([month, coachRows]) => {
  // FILTER: Only include coaches with > 10 learners
  // Cohort_Coach uses "on_programme_count" in the query
  const peerGroup = coachRows.filter(
    (row) =>
      getNum(row, "sidekick__apprenticeship_monthly.apprenticeship_month_on_programme_count") >
      10
  );

  // Find row for logged-in coach
  const myRow = coachRows.find(
    (row) => row["sidekick__apprenticeship_monthly.coach_full_name"] === myName
  );

  return {
    month,

    // --- EOL RATE ---
    eol_avg: (
      _.meanBy(peerGroup, (r) =>
        getNum(
          r,
          "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct"
        )
      ) || 0
    ).toFixed(2),
    eol_best: (
      _.max(
        peerGroup.map((r) =>
          getNum(
            r,
            "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct"
          )
        )
      ) || 0
    ).toFixed(2),
    eol_me: myRow
      ? getNum(
          myRow,
          "sidekick__apprenticeship_monthly.apprenticeship_month_retainable_eol_submission_rate_pct"
        ).toFixed(2)
      : null,

    // --- ATTENDANCE RATE ---
    att_avg: (
      _.meanBy(peerGroup, (r) =>
        getNum(
          r,
          "sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct"
        )
      ) || 0
    ).toFixed(2),
    att_best: (
      _.max(
        peerGroup.map((r) =>
          getNum(
            r,
            "sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct"
          )
        )
      ) || 0
    ).toFixed(2),
    att_me: myRow
      ? getNum(
          myRow,
          "sidekick__apprenticeship_monthly.apprenticeship_month_delivery_plan_attendance_rate_pct"
        ).toFixed(2)
      : null,

    // --- LSAT SCORE (UPDATED FIELD for Cohort_Coach) ---
    lsat_avg: (
      _.meanBy(peerGroup, (r) =>
        getNum(r, "sidekick__apprenticeship_monthly.avg_lsat_coach_score")
      ) || 0
    ).toFixed(2),
    lsat_best: (
      _.max(
        peerGroup.map((r) => getNum(r, "sidekick__apprenticeship_monthly.avg_lsat_coach_score"))
      ) || 0
    ).toFixed(2),
    lsat_me: myRow
      ? getNum(myRow, "sidekick__apprenticeship_monthly.avg_lsat_coach_score").toFixed(2)
      : null,

    // --- MONTHLY PR % (NEW; from monthly query) ---
    monthly_pr_avg: (
      _.meanBy(peerGroup, (r) =>
        getNum(
          r,
          "sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct"
        )
      ) || 0
    ).toFixed(4),
    monthly_pr_best: (
      _.max(
        peerGroup.map((r) =>
          getNum(
            r,
            "sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct"
          )
        )
      ) || 0
    ).toFixed(4),
    monthly_pr_me: myRow
      ? getNum(
          myRow,
          "sidekick__apprenticeship_monthly.apprenticeship_month_progress_review_coach_completion_pct"
        ).toFixed(4)
      : null,
  };
});

// 6. Final Sort
return _.sortBy(trendData, "month");