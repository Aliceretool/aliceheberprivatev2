// JS query for the widget: No Recent Evidence (> 30 days)
// ✅ Counts learners with missing/blank/0/invalid evidence date as "no recent evidence"

const rows = filteredLearners2.data ?? [];
const now = moment();

const isMissingEvidenceDate = (v) =>
  v === null || v === undefined || v === "" || v === 0 || v === "0";

const noRecentEvidence = rows.filter((row) => {
  const dateVal = row.status?.latest_evidence_of_learning_date;

  // If missing/null/blank/0 => COUNT as no recent evidence
  if (isMissingEvidenceDate(dateVal)) return true;

  const mDate = moment(dateVal);

  // If unparseable => treat as missing => COUNT
  if (!mDate.isValid()) return true;

  const daysAgo = now.diff(mDate, "days");
  return daysAgo > 30;
}).length;

return { noRecentEvidence };
