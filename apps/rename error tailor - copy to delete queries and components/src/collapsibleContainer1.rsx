<Container
  id="collapsibleContainer1"
  _direction="vertical"
  _gap="0px"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="1px"
  padding="16px"
  showBody={true}
  showHeader={true}
  style={{
    ordered: [
      { border: "rgb(207, 216, 220)" },
      { headerBackground: "{{ common.accentColor }}" },
    ],
  }}
>
  <Header>
    <Text
      id="collapsibleTitle1"
      style={{ ordered: [{ fontSize: "20px" }] }}
      value="**基本情報**"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle1"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer1.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="bf3ed" viewKey="View 1">
    <Container
      id="sellerContainer"
      _direction="vertical"
      _gap="8px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      styleContext={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="sellerContainerTitle"
          margin="0px 0px 16px 0px"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**伝票情報**"
          verticalAlign="center"
        />
      </Header>
      <View id="173bc" viewKey="View 1">
        <Container
          id="stack2"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData4"
              fieldData="{{ purchaseOrder2.data?.sellerDivisionName }}"
              fieldSubData="{{ purchaseOrder2.data?.sellerDivisionCode }}"
              format=""
              label="部"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData5"
              fieldData="{{ purchaseOrder2.data?.sellerName }}"
              fieldSubData="{{ purchaseOrder2.data?.sellerCode }}"
              format=""
              label="営業員"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData32"
              fieldData="{{ purchaseOrder2.data?.sellerSectionName }}"
              fieldSubData="{{ purchaseOrder2.data?.sellerSectionCode }}"
              format=""
              label="課"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData33"
              fieldData="{{ purchaseOrder2.data?.sellerGroupName }}"
              fieldSubData="{{ purchaseOrder2.data?.sellerGroupCode }}"
              format=""
              label="グループ"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
          </View>
        </Container>
        <Container
          id="stack30"
          _gap="{{ common.gap }}"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0.5px"
          showBody={true}
          showBorder={false}
        >
          <View id="b3612" viewKey="View 1">
            <Module
              id="fieldData56"
              fieldData="{{ purchaseOrder2.data?.completionFlag }}
"
              fieldSubData=""
              format="boolean"
              label="契約完了"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData57"
              fieldData="{{ purchaseOrder2.data?.status }}"
              fieldSubData=""
              format="status"
              label="承認ステータス"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData58"
              fieldData="{{ purchaseOrder2.data?.createdAt }}
"
              fieldSubData=""
              format="datetime"
              label="作成日時"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData59"
              fieldData="{{ purchaseOrder2.data?.updatedAt }}"
              fieldSubData=""
              format="datetime"
              label="更新日時"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
          </View>
        </Container>
        <Include src="./stack4.rsx" />
      </View>
    </Container>
    <Divider
      id="divider3"
      margin="16px 0px"
      style={{ ordered: [{ color: "rgb(207, 216, 220)" }] }}
    />
    <Container
      id="instructionsContainer"
      _gap="0px"
      _type="stack"
      currentViewKey="PRODUCT"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <Header>
        <Text
          id="text12"
          margin="0px 0px 16px 0px"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**この受注の出荷指図**"
          verticalAlign="center"
        />
      </Header>
      <View
        id="4e894"
        disabled={false}
        hidden={false}
        iconPosition="left"
        label="更新情報"
        viewKey="UPDATE"
      >
        <Table
          id="instructionsTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ purchaseOrderDetail.data.instructions }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="一致するデータがありません"
          enableSaveActions={true}
          heightType="auto"
          hidden=""
          margin="0"
          primaryKeyColumnId="b8e09"
          rowSelection="none"
          showBorder={true}
          showHeader={true}
          style={{ headerBackground: "rgb(236, 239, 241)" }}
          toolbarPosition="bottom"
        >
          <Column
            id="b8e09"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
            groupAggregationMode="none"
            key="id"
            label="伝票番号"
            placeholder="Enter value"
            position="center"
            size={165}
            summaryAggregationMode="none"
            valueOverride="{{ currentSourceRow.code }}"
          >
            <Event
              event="clickCell"
              method="run"
              params={{
                ordered: [
                  {
                    src: 'parent.postMessage(\n  {\n    type: "link",\n    payload: { path: `/purchaseStockInstructions/textile/${currentSourceRow.id}`, blank: true }\n  }, \n  urlparams.href\n);',
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
            id="55f47"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="shipDate"
            label="出荷予定日"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride={'{{ moment(item).format("yyyy-MM-DD") }}'}
          />
        </Table>
      </View>
    </Container>
    <Divider
      id="divider7"
      margin="16px 0px"
      style={{ ordered: [{ color: "rgb(207, 216, 220)" }] }}
    />
    <Container
      id="bulkSalesOrdersContainer"
      _gap="0px"
      _type="stack"
      currentViewKey="PRODUCT"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
    >
      <Header>
        <Text
          id="text8"
          margin="0px 0px 16px 0px"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**一括番号に紐づく発注伝票**"
          verticalAlign="center"
        />
      </Header>
      <View
        id="4e894"
        disabled={false}
        hidden={false}
        iconPosition="left"
        label="更新情報"
        viewKey="UPDATE"
      >
        <Table
          id="bulkSalesOrdersTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ purchaseOrderDetail.data.bulkSalesOrders }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="一致するデータがありません"
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
            format="link"
            formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
            groupAggregationMode="sum"
            key="id"
            label="伝票番号"
            placeholder="Enter value"
            position="left"
            size={116.875}
            summaryAggregationMode="none"
            valueOverride="{{ currentSourceRow.code }}"
          >
            <Event
              event="clickCell"
              method="run"
              params={{
                ordered: [
                  {
                    src: 'parent.postMessage(\n  {\n    type: "link",\n    payload: { path: `/salesOrders/textile/${currentSourceRow.id}`, blank: true }\n  }, \n  urlparams.href\n);',
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
            id="df0d8"
            alignment="left"
            format="string"
            formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
            groupAggregationMode="none"
            key="partnerID"
            label="発注先コード"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ formatNameAndCode({ item: purchaseOrderDetail.data.bulkSalesOrders[i] }) }}"
          />
          <Column
            id="5484b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            label="発注先名称"
            placeholder="Enter value"
            position="center"
            referenceId="発注先名称"
            size={100}
            summaryAggregationMode="none"
          />
        </Table>
      </View>
    </Container>
    <Divider
      id="divider8"
      margin="16px 0px"
      style={{ ordered: [{ color: "rgb(207, 216, 220)" }] }}
    />
    <Container
      id="salesOrdersContainer"
      _gap="0px"
      _type="stack"
      currentViewKey="PRODUCT"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader={true}
      showHeaderBorder={false}
    >
      <Header>
        <Text
          id="text9"
          margin="0px 0px 16px 0px"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**この受注に紐づく発注伝票**"
          verticalAlign="center"
        />
      </Header>
      <View
        id="4e894"
        disabled={false}
        hidden={false}
        iconPosition="left"
        label="更新情報"
        viewKey="UPDATE"
      >
        <Table
          id="salesOrdersTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ purchaseOrderDetail.data.salesOrders }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="一致するデータがありません"
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
            format="link"
            formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
            groupAggregationMode="sum"
            key="id"
            label="伝票番号"
            placeholder="Enter value"
            position="left"
            size={116.875}
            summaryAggregationMode="none"
            valueOverride="{{ currentSourceRow.code }}"
          >
            <Event
              event="clickCell"
              method="run"
              params={{
                ordered: [
                  {
                    src: 'parent.postMessage(\n  {\n    type: "link",\n    payload: { path: `/salesOrders/textile/${currentSourceRow.id}`, blank: true }\n  }, \n  urlparams.href\n);',
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
            id="df0d8"
            alignment="left"
            format="string"
            formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
            groupAggregationMode="none"
            key="partnerID"
            label="発注先コード"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ formatNameAndCode({ item: purchaseOrderDetail.data.salesOrders[i] }) }}"
          />
          <Column
            id="44a57"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            label="発注先名称"
            placeholder="Enter value"
            position="center"
            referenceId="発注先名称"
            size={100}
            summaryAggregationMode="none"
          />
        </Table>
      </View>
    </Container>
  </View>
</Container>
