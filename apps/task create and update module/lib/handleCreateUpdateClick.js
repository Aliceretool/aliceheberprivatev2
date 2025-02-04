if (isUpdateMode.value) {
  await UpdateTask.trigger();
} else {
  await CreateTask.trigger();
}
onSubmit.trigger();
await CountOfTasksByCaseKey.trigger();
