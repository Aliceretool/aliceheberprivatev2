let collection = []

{{ multiselect1.value }}.forEach((x) => {
  let collaborators_format = {}
  collaborators_format.collaboratorsID = uuid.v4()
  collaborators_format.issueID = {{url.searchParams.issueID}}
  collaborators_format.userID = x
  collection.push(collaborators_format)
})

return collection