const selectedTemplateId = form.data.templateSelect;

const template = GetTemplateTasks.data.find(
  (el) => el.id === selectedTemplateId
);

await prefillDeliverablesByTemplate.trigger({
  additionalScope: { selectedTemplate: template },
});

const { dueDate, dueTime } = await prefillDateByTemplate.trigger({
  additionalScope: { date_range: template.date_range },
});

const { priority_id, category_id, description, team_id } = template;

const status_id = GetTaskStatuses.data.find(
  (status) => status.name === "Opened"
).id;

form.setData({
  ...form.data,
  priority_id,
  status_id,
  category_id,
  description,
  team_id,
  dueDate,
  dueTime,
});
