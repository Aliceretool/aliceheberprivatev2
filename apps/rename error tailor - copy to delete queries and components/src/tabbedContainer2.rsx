<Container
  id="tabbedContainer2"
  _direction="vertical"
  _gap="16px"
  _type="stack"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="16px 16px 0px 16px"
  margin="1px"
  padding="16px"
  showBody={true}
  showHeader={true}
  showHeaderBorder={false}
>
  <Header>
    <Text
      id="text15"
      heightType="fixed"
      margin="0"
      style={{ ordered: [{ fontSize: "16px" }] }}
      value="**受注明細**"
      verticalAlign="center"
    />
    <Tabs
      id="tabs2"
      itemMode="static"
      margin="16px 0px 0px 0px"
      navigateContainer={true}
      style={{ ordered: [{ fontSize: "14px" }] }}
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="644d8" value="Tab 1" />
      <Option id="18d04" value="Tab 2" />
      <Option id="3a1a6" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="7e89d" viewKey="製品情報">
    <Table
      id="listItemsTable2"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ purchaseOrderDetail.data?.lineItems }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="明細がありません"
      enableSaveActions={true}
      heightType="auto"
      hidden=""
      margin="0"
      primaryKeyColumnId="87a18"
      rowSelection="none"
      showBorder={true}
      showHeader={true}
      style={{ headerBackground: "rgb(236, 239, 241)" }}
      toolbarPosition="bottom"
    >
      <Column
        id="87a18"
        alignment="left"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="code"
        label="明細番号"
        placeholder="Enter value"
        position="left"
        size={64}
      />
      <Column
        id="a2bf8"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="productID"
        label="品目コード"
        placeholder="Enter value"
        position="left"
        size={76}
        valueOverride={
          '{{ formatNameAndCode({ item: currentSourceRow, type: "product" }) }}'
        }
      >
        <Event
          event="clickCell"
          method="run"
          params={{
            ordered: [
              {
                src: 'parent.postMessage(\n  {\n    type: "link",\n    payload: { path: `/master/products/${currentSourceRow.productID}`, blank: true }\n  }, \n  urlparams.href\n);',
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="9a01b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="品目名称"
        placeholder="Enter value"
        position="center"
        referenceId="品目名称"
        size={64}
      />
      <Column
        id="ec0c0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="受注先品目名称"
        placeholder="Enter value"
        position="center"
        referenceId="受注先品目名称"
        size={100}
      />
      <Column
        id="d42bf"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="ロット"
        placeholder="Enter value"
        position="center"
        referenceId="ロット"
        size={52}
      />
      <Column
        id="930cf"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="色番"
        placeholder="Enter value"
        position="center"
        referenceId="色番"
        size={40}
      />
      <Column
        id="b8c7f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="色目"
        placeholder="Enter value"
        position="center"
        referenceId="色目"
        size={40}
      />
      <Column
        id="71e82"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="格付"
        placeholder="Enter value"
        position="center"
        referenceId="格付"
        size={40}
      />
      <Column
        id="1ca82"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="非評価在庫"
        placeholder="Enter value"
        position="center"
        referenceId="非評価在庫"
        size={76}
      />
      <Column
        id="ffb95"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="出荷予定日"
        placeholder="Enter value"
        position="center"
        referenceId="出荷予定日"
        size={76}
      />
      <Column
        id="b1374"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="納入日"
        placeholder="Enter value"
        position="center"
        referenceId="納入日"
        size={52}
      />
      <Column
        id="4ba7f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="在庫保管場所"
        placeholder="Enter value"
        position="center"
        referenceId="在庫保管場所"
        size={88}
      />
      <Column
        id="d426f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="在庫数量"
        placeholder="Enter value"
        position="center"
        referenceId="在庫数量"
        size={64}
      />
      <Column
        id="05f5a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="摘要"
        placeholder="Enter value"
        position="center"
        referenceId="摘要"
        size={40}
      />
    </Table>
  </View>
  <View id="d5985" viewKey="受注情報">
    <Table
      id="listItemsTable3"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ purchaseOrderDetail.data?.lineItems }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="明細がありません"
      enableSaveActions={true}
      heightType="auto"
      hidden=""
      margin="0"
      primaryKeyColumnId="87a18"
      rowSelection="none"
      showBorder={true}
      showHeader={true}
      style={{ headerBackground: "rgb(236, 239, 241)" }}
      toolbarPosition="bottom"
    >
      <Column
        id="87a18"
        alignment="left"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="code"
        label="明細番号"
        placeholder="Enter value"
        position="left"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="a2bf8"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="productID"
        label="品目コード"
        placeholder="Enter value"
        position="left"
        size={76}
        summaryAggregationMode="none"
        valueOverride={
          '{{ formatNameAndCode({ item: currentSourceRow, type: "product" }) }}'
        }
      >
        <Event
          event="clickCell"
          method="run"
          params={{
            ordered: [
              {
                src: 'parent.postMessage(\n  {\n    type: "link",\n    payload: { path: `/master/products/${currentSourceRow.productID}`, blank: true }\n  }, \n  urlparams.href\n);',
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="9a01b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="品目名称"
        placeholder="Enter value"
        position="center"
        referenceId="品目名称"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="d57e9"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="受注単価"
        placeholder="Enter value"
        position="center"
        referenceId="受注単価"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="17234"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="受注数量"
        placeholder="Enter value"
        position="center"
        referenceId="受注数量"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="46037"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="受注数量単位"
        placeholder="Enter value"
        position="center"
        referenceId="受注数量単位"
        size={88}
        summaryAggregationMode="none"
      />
      <Column
        id="c7e72"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="換算数量"
        placeholder="Enter value"
        position="center"
        referenceId="換算数量"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="44e16"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="換算数量単位"
        placeholder="Enter value"
        position="center"
        referenceId="換算数量単位"
        size={88}
        summaryAggregationMode="none"
      />
      <Column
        id="2a8e9"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="コスト"
        placeholder="Enter value"
        position="center"
        referenceId="コスト"
        size={52}
        summaryAggregationMode="none"
      />
      <Column
        id="0776c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="税区分"
        placeholder="Enter value"
        position="center"
        referenceId="税区分"
        size={52}
        summaryAggregationMode="none"
      />
      <Column
        id="2a7f6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="合計金額（円）"
        placeholder="Enter value"
        position="center"
        referenceId="合計金額（円）"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="72c71"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        label="合計金額（ドル）"
        placeholder="Enter value"
        position="center"
        referenceId="合計金額（ドル）"
        size={111.515625}
        summaryAggregationMode="none"
      />
      <Column
        id="ebd54"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="摘要"
        placeholder="Enter value"
        position="center"
        referenceId="摘要"
        size={40}
        summaryAggregationMode="none"
      />
    </Table>
  </View>
  <View id="891c7" viewKey="更新情報">
    <Table
      id="listItemsTable4"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ purchaseOrderDetail.data?.lineItems }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="明細がありません"
      enableSaveActions={true}
      heightType="auto"
      hidden=""
      margin="0"
      primaryKeyColumnId="87a18"
      rowSelection="none"
      showBorder={true}
      showHeader={true}
      style={{ headerBackground: "rgb(236, 239, 241)" }}
      toolbarPosition="bottom"
    >
      <Column
        id="87a18"
        alignment="left"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="code"
        label="明細番号"
        placeholder="Enter value"
        position="left"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="a2bf8"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="productID"
        label="品目コード"
        placeholder="Enter value"
        position="left"
        size={76}
        summaryAggregationMode="none"
        valueOverride={
          '{{ formatNameAndCode({ item: currentSourceRow, type: "product" }) }}'
        }
      >
        <Event
          event="clickCell"
          method="run"
          params={{
            ordered: [
              {
                src: 'parent.postMessage(\n  {\n    type: "link",\n    payload: { path: `/master/products/${currentSourceRow.productID}`, blank: true }\n  }, \n  urlparams.href\n);',
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="9a01b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="品目名称"
        placeholder="Enter value"
        position="center"
        referenceId="品目名称"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="2f87f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="作成日時"
        placeholder="Enter value"
        position="center"
        referenceId="作成日時"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="9f138"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="更新日時"
        placeholder="Enter value"
        position="center"
        referenceId="更新日時Jst表示"
        size={64}
        summaryAggregationMode="none"
      />
      <Column
        id="aef77"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="レコードステータス"
        placeholder="Enter value"
        position="center"
        referenceId="レコードステータス"
        size={123.53125}
        summaryAggregationMode="none"
      />
      <Column
        id="ffcc2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="摘要"
        placeholder="Enter value"
        position="center"
        referenceId="摘要"
        size={40}
        summaryAggregationMode="none"
      />
    </Table>
  </View>
</Container>
