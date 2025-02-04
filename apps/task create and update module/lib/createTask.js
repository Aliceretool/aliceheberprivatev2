return {
  key: {{ taskTitleKey.value}},
  task_id: {{ task_id.value }},
  case_id: {{ GetCurrentCase.data.id }},
  label_name: {{ form.data.templateSelect === "Custom" ? form.data.labelName : GetTemplateTasks.data.find(
  (el) => el.id === form.data.templateSelect
)?.label_name  }},
  priority_id: {{ form.data.priority_id }},
  status_id: {{ form.data.status_id }},
  category_id: {{ form.data.category_id }},
  description: {{ form.data.description || ""}},
  date: {{ createTimestamp.value }},
  deliverables: {{ deliverables?.value?.length > 0 ? deliverables?.value?.filter(item => item?.category_id?.trim()) : [] }},
  comments: {{ form.data.comments}},
  added_deliverables: {{ addedDeliverables.value.filter(item => item.category_id !== null || item.comment !== null) }},
};
