<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css="" />
  <SyncFunction
    id="formatNameAndCode"
    body={
      'const [name, code] = ["Name", "Code"].map(key => item[type + key]);\nif (!name) {\n  return \'-\';\n}\nreturn `${name}（${code}）`;'
    }
    parameters={{
      ordered: [
        {
          item: {
            ordered: [
              { name: "item" },
              {
                sampleValue:
                  '{\n      "purchaseOrderID": "9f0c8bbe-88fe-42e9-9a91-962558bdf411",\n      "productID": "2bb3ce10-5bca-470c-9fee-cb5276f800be",\n      "productName": "繊維_染品",\n      "productCode": "F1002",\n      "warehouseID": "8991c1f9-9d1d-413a-b416-4212d8ee89f8",\n      "warehouseName": null,\n      "warehouseCode": null,\n      "shipDate": "2024-07-01",\n      "deliveryDate": "2024-08-20",\n      "price": 1000,\n      "quantity": 1000,\n      "unit": "DZ",\n      "totalPriceJpy": null,\n      "totalPrice": null,\n      "createdAt": "2024-09-18T03:14:48Z",\n      "updatedAt": null,\n      "status": "CURRENT"\n    }',
              },
            ],
          },
        },
        { type: { ordered: [{ name: "type" }, { sampleValue: "product" }] } },
      ],
    }}
  />
  <Include src="./src/lineItemCancelModal.rsx" />
  <Include src="./src/updateCompletionModal.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="0"
    sticky={null}
    style={{ ordered: [{ canvas: "rgb(242, 242, 242)" }] }}
    type="main"
  >
    <Container
      id="pageContainer"
      _direction="vertical"
      _gap="24px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="false"
      margin="0"
      padding="24px 16px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="c79f8" viewKey="View 1">
        <TextInput
          id="textInput1"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Include src="./src/tabbedContainer.rsx" />
        <Module
          id="pageHeader"
          breadcrumbs={
            '[\n  {\n    "label": "受注管理",\n    "path": "/salesOrders/textile"\n  },\n  {\n    "label": "受注詳細"\n  }\n]'
          }
          duplicateOrder="duplicateOrder"
          margin="0"
          name="pageHeaderWithBreadcrumbs"
          otherActionsDefs="{{ otherActionsDefs.value }}"
          otherActionsQuery="otherActionsQuery"
          pageUuid="b0fb7f89-2c96-4105-85af-69b946be0a07"
          primaryButtonLabel="編集"
          primaryButtonQuery="toEdit"
          secondaryButtonLabel="複製"
          secondaryButtonQuery="duplicateOrder"
          title="受注詳細"
        />
        <Module
          id="common"
          hidden="true"
          margin="0"
          name="commonVariables"
          pageUuid="e8f04913-4bdb-4cd8-8562-d23896973c85"
        />
      </View>
    </Container>
  </Frame>
</App>
