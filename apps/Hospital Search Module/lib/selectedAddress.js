// Reference external variables with curly brackets or using JS variables
const name = {{ GoogleMapsSearch_Module?.address }};

const address = JSON.parse(name);

return address || {}