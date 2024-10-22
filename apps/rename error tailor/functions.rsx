<GlobalFunctions>
  <Folder id="PurchaseOrder">
    <Function
      id="isApprovalNeeded"
      funcBody={include("./lib/isApprovalNeeded.js", "string")}
    />
    <Function
      id="partnerShipMergedAddress"
      funcBody={include("./lib/partnerShipMergedAddress.js", "string")}
    />
    <ParentWindowQuery
      id="purchaseOrderId"
      isMultiplayerEdited={false}
      resourceName="ParentWindow"
      resourceTypeOverride=""
      selector="purchaseOrderID"
    />
    <GraphQLQuery
      id="purchaseOrder"
      body={include("./lib/purchaseOrder.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{ purchaseOrderId.data }}"}]'}
      headers={
        '[{"key":"Authorization","value":"Bearer {{ common.tailorToken }}"}]'
      }
      isMultiplayerEdited={false}
      query="{{ common.tailorEndpoint }}"
      queryDisabled="{{ purchaseOrder.data != null }}"
      resourceName="GraphQL-WithoutResource"
      resourceTypeOverride=""
      transformer="return data.purchaseOrderTextile;"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="purchaseOrderDetail"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: "parent.postMessage(\n  {\n    custom: true,\n    payload: { purchaseOrder: purchaseOrder2.data },\n  }, \n  urlparams.href\n);",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="purchaseOrderDetail"
      body={include("./lib/purchaseOrderDetail.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"id","value":"{{ purchaseOrder2.data.id }}"},{"key":"bulkCode","value":"{{ purchaseOrder2.data.bulkCode }}"}]'
      }
      headers={
        '[{"key":"Authorization","value":"Bearer {{ common.tailorToken }}"}]'
      }
      isMultiplayerEdited={false}
      query="{{ common.tailorEndpoint }}"
      queryDisabled="{{ !purchaseOrder2.data || !!purchaseOrderDetail.data }}"
      resourceName="GraphQL-WithoutResource"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      transformer={
        'const ret = {};\n\n["lineItems", "bulkSalesOrders", "requests", "histories"].forEach(key => ret[key] = data[key]?.collection || []);\n\nret.salesOrders = data.salesOrders.collection.map(({ salesOrder }) => salesOrder).filter(({ archived }) => !archived);\nret.instructions = data.instructions.collection.map(({ instruction }) => instruction).filter(({ archived }) => !archived);\n\nreturn ret;\n'
      }
    />
  </Folder>
  <Folder id="ListItems">
    <Function
      id="listItemTypes"
      funcBody={include("./lib/listItemTypes.js", "string")}
    />
  </Folder>
  <Folder id="Actions">
    <GraphQLQuery
      id="deletePurchaseOrder"
      body={include("./lib/deletePurchaseOrder.gql", "string")}
      graphQLVariables={'[{"key":"id","value":"{{ purchaseOrder2.data.id }}"}]'}
      headers={
        '[{"key":"Authorization","value":"Bearer {{ common.tailorToken }}"}]'
      }
      isMultiplayerEdited={false}
      query="{{ common.tailorEndpoint }}"
      resourceName="GraphQL-WithoutResource"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: '  parent.postMessage(\n    {\n      type: "toast",\n      payload: {\n        onRouteChange: true,\n        content: {\n          title: `発注伝票${isApprovalNeeded ? "の削除申請を" : "を削除"}しました`,\n          variant: "success"\n        }\n      }\n    },\n    urlparams.href,\n  );\nparent.postMessage(\n  {\n    type: "link",\n    payload: { path: "/purchaseOrders/textile",  }\n  }, \n  urlparams.href\n);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "発注の削除に失敗しました" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <JavascriptQuery
      id="duplicateOrder"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/duplicateOrder.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="toEdit"
      notificationDuration={4.5}
      query={include("./lib/toEdit.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <GraphQLQuery
      id="updateCompletionFlag"
      body={include("./lib/updateCompletionFlag.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{ purchaseOrder2.data.id }}"},{"key":"completionFlag","value":"{{ !purchaseOrder2.data.completionFlag }}"}]'
      }
      headers={
        '[{"key":"Authorization","value":"Bearer {{ common.tailorToken }}"}]'
      }
      isMultiplayerEdited={false}
      query="{{ common.tailorEndpoint }}"
      resourceName="GraphQL-WithoutResource"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: "updateCompletionModal.setHidden(true);\npurchaseOrder2.reset();\npurchaseOrder2.trigger();",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "契約の更新に失敗しました" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <JavascriptQuery
      id="otherActionsQuery"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/otherActionsQuery.js", "string")}
      resourceName="JavascriptQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <Function
      id="otherActionsDefs"
      funcBody={include("./lib/otherActionsDefs.js", "string")}
    />
  </Folder>
</GlobalFunctions>
