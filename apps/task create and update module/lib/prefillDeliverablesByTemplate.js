const deliverables = selectedTemplate ? selectedTemplate.deliverables : [];

const newDeliverables = deliverables.map((deliverable) => ({
  ...deliverable,
}));

addedDeliverables.setValue([...newDeliverables]);
