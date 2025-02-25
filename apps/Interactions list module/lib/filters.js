const formData = {{ FilterInteraction_Form.data }};

const filters = {
  ..._.omit(formData, ["receivedDate"]),
  receivedStartDate: formData.receivedDate.start,
  receivedEndDate: formData.receivedDate.end,
};

if (filters.receivedStartDate) {
  const timestamp = `${filters.receivedStartDate}T00:00:00.000Z`;
  filters.receivedStartDate = new Date(timestamp).toISOString();
}

if (filters.receivedEndDate) {
  const timestamp = `${filters.receivedEndDate}T23:59:59.999Z`;
  filters.receivedEndDate = new Date(timestamp).toISOString();
}

return Object.fromEntries(
  Object.entries(filters).filter(
    ([key, value]) => value !== "" && value !== null
  )
);
