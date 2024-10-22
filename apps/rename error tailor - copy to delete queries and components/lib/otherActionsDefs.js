const purchaseOrder = {{ purchaseOrder2?.data }};

return [{
  id: "DELETE",
  label: "削除"
}, {
  id: "DOWNLOAD",
  label: "加工指図書のダウンロード",
  type: "downloadProcessingInstruction",
}, {
  id: "DOWNLOAD",
  label: "買契約書のダウンロード",
  type: "downloadPurchaseContract",
}, {
  id: "DOWNLOAD",
  label: "注文書兼出荷指図書のダウンロード",
  type: "downloadOrderAndShippingInstructions",
}, {
  id: "DOWNLOAD",
  label: "東レ専用注文書縦のダウンロード",
  type: "downloadTorayPurchaseOrderVertical",
}, {
  id: "DOWNLOAD",
  label: "東レ専用注文書横のダウンロード",
  type: "downloadTorayPurchaseOrderHorizontal",
}, purchaseOrder.completionFlag ? {
  id: "INCOMPLETE",
  label: "契約未完了"
} : {
  id: "COMPLETE",
  label: "契約完了"
}];