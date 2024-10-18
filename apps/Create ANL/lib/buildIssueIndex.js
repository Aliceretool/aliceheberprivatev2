let project_code = {{ formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].projectCode }}
let number_start = {{ parseInt(formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].numberStart) }}

let issues = {{ formatDataAsArray(getIssues.data) }}

let max = number_start
if (issues.length > 0) {
  let issue_index_numbers = issues.map((issue) => {
    return parseInt(issue.issue_index.split('-')[1])
  })

  max = _.max(issue_index_numbers) + 1
}

return project_code.concat('-').concat(max)
