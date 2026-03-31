const rows = filteredLearners2.data ?? [];

const highRisk = rows.filter((row) => {
  // CHANGED: Added the ? after withdrawal_risk to prevent crashes
  const risk = String(
    row.withdrawal_risk?.risk_bucket_name ?? ""
  )
    .trim()
    .toLowerCase();

  return risk === "high" || risk === "very_high";
}).length;

return { highRisk };