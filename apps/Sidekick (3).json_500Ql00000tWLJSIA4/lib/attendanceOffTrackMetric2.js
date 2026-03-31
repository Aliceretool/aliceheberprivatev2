const rows = filteredLearners2.data ?? [];
const now = moment();

const isMissingDate = (v) =>
  v === null || v === undefined || v === "" || v === 0 || v === "0";

const parseMoment = (v) => {
  if (isMissingDate(v)) return null;

  // strict ISO parse first (safer), then fall back if needed
  const mStrict = moment(v, moment.ISO_8601, true);
  if (mStrict.isValid()) return mStrict;

  const mLoose = moment(v);
  return mLoose.isValid() ? mLoose : null;
};

const attendanceOverdue = rows.filter((row) => {
  const coachRaw = row.status?.latest_coaching_session_attended_date;
  const delivRaw = row.status?.latest_delivery_session_attended_date;

  const mCoach = parseMoment(coachRaw);
  const mDeliv = parseMoment(delivRaw);

  // NEW: If both missing/invalid, COUNT as overdue
  if (!mCoach && !mDeliv) return true;

  // Use the latest valid attendance date
  const latest =
    mCoach && mDeliv ? moment.max(mCoach, mDeliv) : (mCoach || mDeliv);

  const daysAgo = now.diff(latest, "days");

  // Optional: protect against future dates (bad data)
  if (daysAgo < 0) return false;

  return daysAgo > 30;
}).length;

return { attendanceOverdue };