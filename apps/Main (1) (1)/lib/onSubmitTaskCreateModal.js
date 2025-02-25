modalTaskCreating.hide()
const tasksTabIndex = CaseDetails_Tabs.data.findIndex(tab => tab.label.toLowerCase() === 'tasks')
CaseDetails_Tabs.setValue(tasksTabIndex)
await GetTasksListByCase.trigger()