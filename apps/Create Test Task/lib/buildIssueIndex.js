let project_code = {{ selectProject.selectedItem.projectCode }}
let number_start = {{ parseInt(selectProject.selectedItem.numberStart) }}

let issues = {{ formatDataAsArray(getReferenceIssues.data) }}

let max = number_start
if (issues.length > 0) {
  let issue_index_numbers = issues.map((issue) => {
    return parseInt(issue.issue_index.split('-')[1])
  })

  max = _.max(issue_index_numbers) + 1
}

return project_code.concat('-').concat(max)