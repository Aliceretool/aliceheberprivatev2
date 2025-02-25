return {
  task_id: {{ task_id.value }},
  label_name: {{ form.data.labelName }},
  priority_id: {{ form.data.priority_id }},
  status_id: {{ form.data.status_id }},
  category_id: {{ form.data.category_id }},
  description: {{ form.data.description || ""}},
  date: {{ createTimestamp.value }},
  deliverables: {{ deliverables?.value.length > 0 ? deliverables?.value.filter(item => item.category_id.trim()) : [] }},
  comments: {{ form.data.comments }},
  added_deliverables: {{ addedDeliverables.value.filter(item => item.category_id !== null || item.comment !== null) }},
};
