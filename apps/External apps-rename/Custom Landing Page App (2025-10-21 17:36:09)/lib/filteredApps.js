const searchFilter = {{ AppSearch.value }}
const exampleApps = {{ exampleApps.value }}

return searchFilter.length > 0 ? exampleApps.filter(a => a.name.toLowerCase().includes(searchFilter)) : exampleApps