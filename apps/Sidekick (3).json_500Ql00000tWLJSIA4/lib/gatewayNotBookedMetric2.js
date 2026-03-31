const rows = filteredLearners2.data ?? [];

const gatewayNotBooked = rows.filter((row) => {
  const gwDate = row.status.booked_gateway_date;
  return !gwDate || gwDate === "";
}).length;

return { gatewayNotBooked };

