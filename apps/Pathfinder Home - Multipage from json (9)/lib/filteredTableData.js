// Tip: assign your external references to variables instead of chaining off the curly brackets.

return formatDataAsArray({{getenquiries.data}}).filter((row)=> row.name.toLowerCase().includes({{nameFilter.value}}))