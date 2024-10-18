SELECT * FROM {{ formatDataAsArray(getUsers4.data) }} as u 
INNER JOIN {{ formatDataAsArray(getProject_field_crfApprovers_values.data) }} as pf on u.email = pf.field_value
