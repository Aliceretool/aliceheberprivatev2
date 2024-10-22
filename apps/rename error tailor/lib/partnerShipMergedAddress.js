// Reference external variables with curly brackets or using JS variables
const data = {{ purchaseOrder2.data }};
if (!data) {
  return null;
}

return [
  !!data.partnerShipZipcode ? `〒${data.partnerShipZipcode}` : null,
  data.partnerShipCountryName,
  data.partnerShipPrefectureName,
  data.partnerShipAddress
].filter(part => !!part).join(" ")