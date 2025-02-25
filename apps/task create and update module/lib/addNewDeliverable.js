const existingDeliverables = addedDeliverables.value;
const newDeliverable = {
  id: existingDeliverables.at(-1) ? existingDeliverables.at(-1)?.id + 1 : 1,
  category_id: null,
  comment: null,
  deleting_comment: null,
  is_removed: false,
  is_finished: false,
};

addedDeliverables.setValue([...existingDeliverables, newDeliverable]);
