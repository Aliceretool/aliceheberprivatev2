const data = {{  FetchCallBackInteractions.data}};

return data.map(interaction => ({
  ...interaction.call,
  ...(interaction.case ? { case: interaction.case } : {})
}))