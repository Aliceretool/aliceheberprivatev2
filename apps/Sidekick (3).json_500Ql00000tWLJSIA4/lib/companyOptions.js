const rows = data_ops_API_query2.data ?? [];

const map = new Map();
for (const row of rows) {
  const raw = row?.company_name;
  if (raw === null || raw === undefined) continue;

  const val = String(raw).trim();
  if (!val) continue;

  const key = val.toLowerCase();
  if (!map.has(key)) map.set(key, val);
}

return Array.from(map.values())
  .sort((a, b) => a.localeCompare(b))
  .map(v => ({ label: v, value: v }));
