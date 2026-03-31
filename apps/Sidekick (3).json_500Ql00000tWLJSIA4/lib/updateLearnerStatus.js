// Documentation:
//   Updates a learner's actionStatus in the mockLearners state.
//   Call this query with .trigger({ additionalScope: { id: 'learner-id', newStatus: 'done' } })
// Returns:
//   Array<{
//     id: string,
//     actionStatus: string,
//     [key: string]: any
//   }> // The updated array of learners

const id = typeof i !== 'undefined' && i?.id;
const newStatus = typeof i !== 'undefined' && i?.newStatus;

if (!id || !newStatus) {
  return mockLearners.value;
}

const updated = mockLearners.value.map((l) =>
l.id === id ? { ...l, actionStatus: newStatus } : l);


mockLearners.setValue(updated);

return updated;