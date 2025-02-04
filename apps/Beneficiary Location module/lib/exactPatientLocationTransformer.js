const location = {{ ExactPatientLocation_Module?.address || {} }}

return JSON.parse(location || {})