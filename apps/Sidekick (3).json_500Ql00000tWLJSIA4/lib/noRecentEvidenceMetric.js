// JS query for the widget: No Recent Evidence (> 30 days)
const rows = filteredLearners.data ?? [];

const noRecentEvidence = rows.filter((row) => {
  const dateVal =
    row["latest_evidence_of_learning_date"];

  // If date is missing/null/blank, do NOT count
  if (!dateVal) return false;

  const mDate = moment(dateVal);
  if (!mDate.isValid()) return false;

  const daysAgo = moment().diff(mDate, "days");
  return daysAgo > 30;
}).length;

return { noRecentEvidence };
