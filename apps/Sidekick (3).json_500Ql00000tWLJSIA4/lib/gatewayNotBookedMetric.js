const rows = filteredLearners.data ?? [];

const gatewayNotBooked = rows.filter((row) => {
  const gwDate = row["gateway_date"];
  return !gwDate || gwDate === "";
}).length;

return { gatewayNotBooked };

