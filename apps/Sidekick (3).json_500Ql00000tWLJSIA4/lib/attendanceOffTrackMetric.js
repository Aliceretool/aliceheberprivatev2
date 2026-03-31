const rows = filteredLearners.data ?? [];

const attendanceOverdue = rows.filter((row) => {
  const coachDate = row["latest_coaching_session_attended_date"];
  const delivDate = row["latest_delivery_session_attended_date"];

  // CASE A: both missing -> do not count
  if (!coachDate && !delivDate) return false;

  // CASE B: pick the most recent of the two (fallback so real dates win)
  const mCoach = coachDate ? moment(coachDate) : moment("1900-01-01");
  const mDeliv = delivDate ? moment(delivDate) : moment("1900-01-01");
  const latest = moment.max(mCoach, mDeliv);

  // Count only if last attendance was > 30 days ago
  const daysAgo = moment().diff(latest, "days");
  return daysAgo > 30;
}).length;

return { attendanceOverdue };
