selectedRow._deliverables_of_task.filter(
  (deliverable) => deliverable.is_finished === false
).length > 0
  ? utils.showNotification({
      notificationType: "error",
      title:
        "Please make sure your deliverables are Done before completing the task.",
    })
  : await CompleteTask.trigger({ additionalScope: { selectedTaskId: selectedRow.id } });
