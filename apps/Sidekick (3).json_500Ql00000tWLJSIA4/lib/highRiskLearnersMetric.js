const rows = filteredLearners.data ?? [];

const highRisk = rows.filter((row) => {
  const risk = String(
    row["latest_risk_bucket_name"] ?? ""
  )
    .trim()
    .toLowerCase();

  return risk === "high" || risk === "very high";
}).length;

return { highRisk };
