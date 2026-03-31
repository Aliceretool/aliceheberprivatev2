const REVIEW_THRESHOLD_DAYS = 84;
const rows = filteredLearners2.data ?? [];
const thresholdDate = moment.utc().startOf("day").subtract(REVIEW_THRESHOLD_DAYS, "days");

const isMissing = (value) => value == null || value === "";

const parseDay = (value) => {
  if (isMissing(value)) return null;
  const m = moment.utc(value, ["YYYY-MM-DD", moment.ISO_8601], true).startOf("day");
  return m.isValid() ? m : null;
};

const progressReviewOverdue = rows.filter((row) => {
  const pr = row?.progress_review_summary?.previous_progress_review;

  // Parity intent: latest completed PR must exist
  if (!pr?.id || isMissing(pr.completed_at)) return false;

  const dueDate = parseDay(pr.due_date);
  const dueDateOverdue = !!dueDate && dueDate.isBefore(thresholdDate);

  const apprenticeAckMissing =
    isMissing(pr.apprentice_confirmed_at) &&
    isMissing(pr.apprentice_disagreed_at);

  const managerAckMissing =
    isMissing(pr.apprentice_manager_confirmed_at) &&
    isMissing(pr.apprentice_manager_disagreed_at);

  const followUpOutstanding =
    pr.follow_up_needed === true &&
    pr.follow_up_happened === false;

  return (
    dueDateOverdue ||
    apprenticeAckMissing ||
    managerAckMissing ||
    followUpOutstanding
  );
}).length;

return { progressReviewOverdue };