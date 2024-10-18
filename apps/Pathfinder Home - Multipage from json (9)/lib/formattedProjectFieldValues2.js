const data = formatDataAsArray(
  getProject_field_translation2.data
)

let id_lookup = {}
let name_lookup = {}

data.forEach( (r) => {
  id_lookup[r.project_fieldID] = r
  name_lookup[r.project_field] = r
})

return {
  by_id: id_lookup,
  by_name: name_lookup
}