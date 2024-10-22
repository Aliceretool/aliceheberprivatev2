// Reference external variables with curly brackets or using JS variables
const data = {{ purchaseOrder2.data }};
if (!data) {
  return [];
}

return [
  { id: "PRODUCT", label: "製品情報" },
  data.purchaseSlipTypeCode !== "" ? {id: "PURCHASE", label: "発注情報"} : null,
  { id: "UPDATE", label: "更新情報" }
]