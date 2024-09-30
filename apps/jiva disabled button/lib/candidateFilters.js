let filters = {};
let searchTerm = {{ candidateStandardFilters.search }};
let locationId = {{ candidateStandardFilters.locationId }};
if(searchTerm) filters.search = searchTerm;
if(locationId) filters.locationId = locationId;

filters.cropType = {{ candidateStandardFilters.cropType || null }};
filters.createdAt = {{ candidateStandardFilters.applicationDate }};

return filters; 
