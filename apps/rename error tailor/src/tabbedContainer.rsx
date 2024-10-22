<Container
  id="tabbedContainer"
  _direction="vertical"
  _gap="24px"
  _type="stack"
  currentViewKey="{{ self.viewKeys[0] }}"
  disabled="{{ purchaseOrder2.isFetching }}"
  footerPadding="4px 12px"
  headerPadding="0"
  loading="{{ purchaseOrder2.isFetching }}"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs"
      heightType="fixed"
      itemMode="static"
      margin="0 0 0 8px"
      navigateContainer={true}
      style={{
        ordered: [
          { selectedBackground: "{{ common.accentColor }}" },
          { fontSize: "16px" },
          { pillBorderRadius: "4px 4px 0 0" },
        ],
      }}
      targetContainerId="tabbedContainer"
      value="{{ self.values[0] }}"
    >
      <Option id="c636f" value="Tab 1" />
      <Option id="6d632" value="Tab 2" />
      <Option id="2dcdd" value="Tab 3" />
    </Tabs>
    <Divider
      id="divider10"
      margin="0"
      style={{ ordered: [{ color: "rgb(207, 216, 220)" }] }}
    />
  </Header>
  <View id="df88f" label="受注伝票詳細" viewKey="slipDetail">
    <Include src="./tabbedContainer2.rsx" />
    <ButtonGroup2
      id="detailScrollButtons"
      alignment="left"
      heightType="auto"
      margin="16px 0 0"
      overflowPosition={8}
      style={{ fontSize: "14px" }}
    >
      <ButtonGroup2-Button
        id="2f3ac"
        backgroundColor="rgba(0, 0, 0, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="伝票情報"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="sellerContainer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="d9157"
        backgroundColor="rgba(255, 255, 255, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="この受注に紐づく発注伝票"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="salesOrdersContainer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="b75ea"
        backgroundColor="rgba(255, 255, 255, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="一括番号に紐づく発注伝票"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="bulkSalesOrdersContainer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="3cc62"
        backgroundColor="rgba(255, 255, 255, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="この受注の出荷指図"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="instructionsContainer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="5b053"
        backgroundColor="rgba(255, 255, 255, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="受注先情報"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="overviewContainer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="66286"
        backgroundColor="rgba(255, 255, 255, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="出荷先情報"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="overviewContainer2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="08441"
        backgroundColor="rgba(255, 255, 255, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="金額情報"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="overviewContainer5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="0b80e"
        backgroundColor="rgba(255, 255, 255, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="受注明細"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="tabbedContainer2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
    <Include src="./collapsibleContainer1.rsx" />
    <Include src="./collapsibleContainer2.rsx" />
  </View>
  <View id="ff38b" label="登録者情報・履歴" viewKey="history">
    <Container
      id="creatorContainer"
      _direction="vertical"
      _gap="8px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="16px 16px 0px 16px"
      margin="1px"
      padding="16px"
      showBody={true}
      showHeader={true}
      showHeaderBorder={false}
      style={{
        ordered: [
          { background: "rgb(255, 255, 255)" },
          { border: "rgb(207, 216, 220)" },
        ],
      }}
      styleContext={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Header>
        <Text
          id="creatorContainerTitle"
          margin="0"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**登録者情報**"
          verticalAlign="center"
        />
      </Header>
      <View id="173bc" viewKey="View 1">
        <Container
          id="stack20"
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
              id="fieldData40"
              fieldData="{{ purchaseOrder2.data?.creatorDivisionName }}"
              fieldSubData="{{ purchaseOrder2.data?.creatorDivisionCode }}"
              format=""
              label="部"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData41"
              fieldData="{{ purchaseOrder2.data?.creatorName }}"
              fieldSubData="{{ purchaseOrder2.data?.creatorCode }}"
              format=""
              label="氏名"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData38"
              fieldData="{{ purchaseOrder2.data?.creatorSectionName }}"
              fieldSubData="{{ purchaseOrder2.data?.creatorSectionCode }}"
              format=""
              label="課"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
            <Module
              id="fieldData39"
              fieldData="{{ purchaseOrder2.data?.creatorGroupName }}"
              fieldSubData="{{ purchaseOrder2.data?.creatorGroupCode }}"
              format=""
              label="グループ"
              margin="0"
              name="fieldData"
              pageUuid="eae0e640-d872-4fb5-a966-0decbfe48406"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="requestsContainer"
      currentViewKey="PRODUCT"
      footerPadding="4px 12px"
      headerPadding="12px 16px 0px 16px"
      hidden="{{ !isApprovalNeeded.value }}"
      margin="1px"
      padding="16px"
      showBody={true}
      showHeader={true}
      showHeaderBorder={false}
      style={{ ordered: [{ border: "rgb(207, 216, 220)" }] }}
    >
      <Header>
        <Text
          id="text10"
          margin="0"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**申請履歴**"
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
          id="requestsTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ purchaseOrderDetail.data?.requests }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="一致するデータがありません"
          enableSaveActions={true}
          heightType="auto"
          hidden=""
          margin="0"
          primaryKeyColumnId="ba9c3"
          rowSelection="none"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{ headerBackground: "rgb(236, 239, 241)" }}
          toolbarPosition="bottom"
        >
          <Column
            id="ba9c3"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="f5296"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="createdAt"
            label="申請日時"
            placeholder="Enter value"
            position="center"
            size={165.25}
            summaryAggregationMode="none"
            valueOverride={'{{ moment(item).format("yyyy-MM-DD HH:mm:ss") }}'}
          />
          <Column
            id="1c360"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="type"
            label="申請タイプ"
            placeholder="Enter value"
            position="center"
            size={113}
            summaryAggregationMode="none"
            valueOverride={
              '{{ \n  {\n    CREATE: "新規作成",\n    REJECTED_CREATE: "新規作成",\n    UPDATE: "更新",\n    DELETE: "削除"\n  }[item]\n}}'
            }
          />
          <Column
            id="5fad6"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="currentStatus"
            label="承認ステータス"
            placeholder="Enter value"
            position="center"
            size={154}
            summaryAggregationMode="none"
            valueOverride={
              '{{ \n  {\n    DONE: "全承認",\n    REJECTED: "却下",\n    WAIT_FOR_FIRST_APPROVAL: "第一承認者承認待ち",\n    WAIT_FOR_SECOND_APPROVAL: "第二承認者承認待ち",\n    WAIT_FOR_THIRD_APPROVAL: "第三承認者承認待ち",\n    WAIT_FOR_FOURTH_APPROVAL: "第四承認者承認待ち",\n    WAIT_FOR_FIFTH_APPROVAL: "第五承認者承認待ち",\n    WAIT_FOR_SIXTH_APPROVAL: "第六承認者承認待ち",\n    WAIT_FOR_SEVENTH_APPROVAL: "第七承認者承認待ち",\n  }[item]\n}}'
            }
          />
          <Column
            id="8173e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="requesterName"
            label="申請者名"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="updatesContainer"
      _direction="vertical"
      _gap="0px"
      currentViewKey="PRODUCT"
      footerPadding="4px 12px"
      headerPadding="12px 16px 0px 16px"
      hidden="{{ isApprovalNeeded.value }}"
      margin="1px"
      padding="16px"
      showBody={true}
      showHeader={true}
      showHeaderBorder={false}
      style={{ ordered: [{ border: "rgb(207, 216, 220)" }] }}
    >
      <Header>
        <Text
          id="text11"
          margin="0"
          style={{ ordered: [{ fontSize: "16px" }] }}
          value="**編集履歴**"
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
          id="updatesTable"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ purchaseOrderDetail.data.histories }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="一致するデータがありません"
          enableSaveActions={true}
          heightType="auto"
          hidden=""
          margin="0"
          primaryKeyColumnId="0d67b"
          rowSelection="none"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{ headerBackground: "rgb(236, 239, 241)" }}
          toolbarPosition="bottom"
        >
          <Column
            id="0d67b"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="id"
            label="id"
            placeholder="Enter value"
            position="center"
            referenceId="id"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="167b7"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="createdAt"
            label="編集日時"
            placeholder="Enter value"
            position="center"
            size={140.4375}
            summaryAggregationMode="none"
            valueOverride={'{{ moment(item).format("yyyy-MM-DD HH:mm:ss") }}'}
          />
          <Column
            id="b444b"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="creatorName"
            label="編集者名"
            placeholder="Enter value"
            position="center"
            size={93.15625}
            summaryAggregationMode="none"
          />
        </Table>
      </View>
    </Container>
    <ButtonGroup2
      id="historyScrollButtons"
      alignment="left"
      heightType="auto"
      margin="16px 0 0"
      overflowPosition={3}
      style={{ fontSize: "14px" }}
    >
      <ButtonGroup2-Button
        id="2f3ac"
        backgroundColor="rgba(0, 0, 0, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="登録者情報"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="creatorContainer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="5b053"
        backgroundColor="rgba(255, 255, 255, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="申請履歴"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="requestsContainer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="9bf16"
        backgroundColor="rgba(255, 255, 255, 0)"
        icon="bold/interface-arrows-down"
        iconPosition="left"
        labelColor="{{ theme.primary }}"
        styleVariant="custom"
        text="編集履歴"
      >
        <Event
          event="click"
          method="scrollIntoView"
          params={{
            ordered: [
              {
                options: {
                  ordered: [{ block: "start" }, { behavior: "smooth" }],
                },
              },
            ],
          }}
          pluginId="updatesContainer"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </View>
</Container>
