const { address_components, geometry, name } = {{ GetPlaceDetailsById?.data?.result }};

const addressSelectValue = {{ AddressSelect.value }};

 if (!address_components || !addressSelectValue) return {};

 const getAddressEntry = (type) =>
   address_components.find((item) => item.types.includes(type))?.long_name ?? '';

 const streetNumber = getAddressEntry("street_number");
 const street = getAddressEntry("route");
 const city = getAddressEntry("locality");
 const region = getAddressEntry("administrative_area_level_1");
 const country = getAddressEntry("country");
 const code = address_components?.find((item) => item.types.includes('country'))?.short_name ?? '';
 const zip = getAddressEntry("postal_code");

 const { lat, lng } = geometry.location;

 return {
   name,
   street,
   streetNumber,
   city,
   region,
   country,
   code,
   zip,
   placeId: {{ AddressSelect?.selectedItem?.place_id  }},
   lat,
   lng,
   fullAddress: {{ AddressSelect?.selectedItem?.description  }},
 }