const rows = filteredLearners.data ?? [];

const behindOnOTJ = rows.filter((row) => {
  // OTJ % actual vs target to date
  const rawPct = row["otj_pct_actual_vs_target_to_date"];

  // Parse to number (defaults to 0 if missing/null/blank)
  const pct = parseFloat(rawPct || 0);

  // Learners whose OTJ is at 90% or below
  return pct <= 90;
}).length;

return { behindOnOTJ };
