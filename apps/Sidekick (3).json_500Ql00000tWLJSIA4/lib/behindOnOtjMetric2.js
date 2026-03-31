const rows = filteredLearners2.data ?? [];

const behindOnOTJ = rows.filter((row) => {
  // Completed (submitted) + target hours to date (safe access)
  // ⚠️ Field names must stay EXACTLY as below
  const rawCompleted = row.status?.otj_submitted_hours_to_date;
  const rawTarget = row.status?.otj_target_hours_to_date;

  // ✅ Treat null/undefined/blank as "No data" => NOT counted
  if (rawCompleted === null || rawCompleted === undefined || rawCompleted === "") return false;
  if (rawTarget === null || rawTarget === undefined || rawTarget === "") return false;

  // Parse to number safely (handles strings like "1,234", "126 hrs", etc.)
  const toNumber = (v) => {
    if (typeof v === "number") return v;
    if (typeof v === "string") {
      const cleaned = v
        .replace(/,/g, "")
        .replace(/hrs?|hours?/gi, "")
        .trim();
      return parseFloat(cleaned);
    }
    return parseFloat(v);
  };

  const completed = toNumber(rawCompleted);
  const target = toNumber(rawTarget);

  // ✅ If unparseable (e.g. "No data", "N/A"), do NOT count
  if (!Number.isFinite(completed) || !Number.isFinite(target)) return false;

  // Learners whose OTJ submitted hours are at 90% or below of target hours to date
  return completed <= target * 0.9;
}).length;

return { behindOnOTJ };