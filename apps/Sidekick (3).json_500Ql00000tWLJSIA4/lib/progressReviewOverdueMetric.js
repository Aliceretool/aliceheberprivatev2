// JS query for the widget: Progress Review Overdue (> 84 days)
const rows = filteredLearners.data ?? [];

const progressReviewOverdue = rows.filter((row) => {
  const prDate =
    row["latest_progress_review_completed_date"];

  // If date is missing/null/blank, do NOT count
  if (!prDate) return false;

  const mDate = moment(prDate);
  if (!mDate.isValid()) return false;

  const daysAgo = moment().diff(mDate, "days");
  return daysAgo > 84;
}).length;

return { progressReviewOverdue };
