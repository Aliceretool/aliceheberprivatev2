return {{ 
  task_id.value 
    ? GetCurrentTask?.data?.key 
    : `${(CountOfTasksByCaseKey.data.count || 0) + 1} - ${GetCurrentCase.data.key}`
}};
