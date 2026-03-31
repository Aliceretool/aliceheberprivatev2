const rows = data_ops_API_query2.data ?? [];

const map = new Map(); // key: normalized, value: original display
for (const row of rows) {
  const raw = row?.cohort_name;
  if (raw === null || raw === undefined) continue;

  const val = String(raw).trim();
  if (!val) continue;

  const key = val.toLowerCase(); // case-insensitive dedupe
  if (!map.has(key)) map.set(key, val);
}

return Array.from(map.values())
  .sort((a, b) => a.localeCompare(b))
  .map(v => ({ label: v, value: v }));
