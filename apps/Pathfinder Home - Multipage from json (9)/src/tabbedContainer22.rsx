<Container
  id="tabbedContainer22"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader="true"
  style={{ ordered: [{ background: "canvas" }] }}
>
  <Header>
    <Breadcrumbs
      id="breadcrumbs4"
      itemMode="static"
      marginType="normal"
      value="{{ retoolContext.appUuid }}"
    >
      <Option
        id="3bf2e"
        appTarget="110a7f0e-9d42-11ee-8c49-f34e2402ef1e"
        itemType="app"
        label="{{ i18n.t('Home') }}"
      />
      <Option
        id="1f0d2"
        appTarget="28293f70-0347-11ef-ad65-e3c4d7bbc2fe"
        itemType="app"
        label="{{ i18n.t('QP Register') }}"
      />
      <Option
        id="fa971"
        appTarget="fae11fec-0346-11ef-be47-0ff8328004ce"
        itemType="app"
        label="{{ i18n.t(getIssue9.data.issue_index[0]) }}"
      />
    </Breadcrumbs>
    <TagsWidget2
      id="tags4"
      allowWrap={true}
      data="[{{ getIssue9.data.status_value[0] }}]"
      horizontalAlign="center"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
    />
    <Button
      id="button103"
      iconBefore="bold/interface-arrows-left"
      style={{ ordered: [{ background: "rgba(0, 0, 0, 1)" }] }}
      text="{{ i18n.t('Back to Register') }}"
    >
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "QPRegister_Home" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <DropdownButton
      id="dropdownButton5"
      _colorByIndex={[""]}
      _fallbackTextByIndex={[""]}
      _imageByIndex={[""]}
      _values={["Action 9"]}
      hidden=""
      icon="bold/interface-setting-menu-1"
      itemMode="static"
      marginType="normal"
      overlayMaxHeight={375}
      style={{ ordered: [{ background: "secondary" }] }}
      text="{{ i18n.t('Actions') }}"
    >
      <Option
        id="7a1aa"
        disabled="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
        icon="line/interface-file-check"
        label="{{ i18n.t('Confirm Details') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp4"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_done3"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="ac8e8"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID && (x.value_from == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)).length > 0 }}"
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="ac8e8"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ formatDataAsArray(getField_relationship4.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID)).length > 0 }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_requestWithdrawl_noJustification"
        targetId="ac8e8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Open Modified')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="6957e"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="6957e"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="8c6ba"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="8c6ba"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="e5502"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="e5502"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Withdrawn')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="164ef"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="164ef"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="e4690"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="e4690"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="a8661"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="a8661"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="9a423"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="9a423"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Resolved')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="bda3e"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="bda3e"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_modificationAccepted"
        targetId="267fe"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addTask"
        targetId="bf019"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_assign"
        targetId="f6e02"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="f7ac6"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship4.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values4.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp4"
        targetId="f7ac6"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </DropdownButton>
    <Button
      id="button104"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="{{ i18n.t('Activity') }}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="drawerFrame5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer21" />
    <EditableText
      id="editableText4"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label=""
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      textSize="h4"
      value="{{ getIssue9.data.issue[0] }}"
    >
      <Event
        enabled="{{ !['Closed','QP Rejected'].includes(getIssue9.data.status_value[0]) }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_summary4"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Spacer id="spacer20" />
    <Container
      id="collapsibleContainer22"
      _gap={0}
      disabled=""
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(227, 232, 239)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle25"
          marginType="normal"
          value="#### {{i18n.t('Details')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="Change Details">
        <Include src="./tabbedContainer23.rsx" />
      </View>
    </Container>
    <Include src="./collapsibleContainer25.rsx" />
    <Container
      id="collapsibleContainer23"
      _gap={0}
      disabled="{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(227, 232, 239)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle26"
          marginType="normal"
          value="#### {{i18n.t('Description')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <TextEditor
          id="richTextEditor9"
          events={[
            {
              ordered: [
                { event: "change" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "updIssue_description4" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
                {
                  enabled:
                    "{{ ['Complete'].includes(getIssue9.data.status_value[0]) }}",
                },
              ],
            },
          ]}
          value={
            "{{ getIssue9.data.description[0] ==  '<p>undefined</p>' || getIssue9.data.description[0] ==  '<p>null</p>' ? \"\" : getIssue9.data.description[0] }}"
          }
        />
      </View>
    </Container>
    <Container
      id="collapsibleContainer24"
      _gap={0}
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(227, 232, 239)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle27"
          marginType="normal"
          value="#### {{i18n.t('Attachments')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <Module
          id="attachmentUploader4"
          hidden=""
          issueId="{{url.searchParams.issueID}}"
          margin="0"
          name="Attachment Uploader"
          pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
          project="qp"
          refresh="getS3Files4"
        />
        <Table
          id="table15"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getS3Files4.data.Contents }}"
          defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
          defaultSort={[{ object: { columnId: "6697a", direction: "asc" } }]}
          emptyMessage="No attachments found"
          enableSaveActions={true}
          hidden=""
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{ headerBackground: "canvas" }}
          toolbarPosition="bottom"
        >
          <Column
            id="f0050"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="Key"
            label="{{ i18n.t('File name') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            referenceId="name"
            size={268}
            summaryAggregationMode="none"
            valueOverride="{{ item.replace(('qp/' + url.searchParams.issueID) + '/','').substring(36) }}"
          />
          <Column
            id="a93a9"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "compact" }}
            groupAggregationMode="sum"
            key="Size"
            label="{{ i18n.t('Size (MB)') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={99}
            summaryAggregationMode="none"
          />
          <Column
            id="827a3"
            alignment="right"
            format="datetime"
            formatOptions={{ dateFormat: "dd MMM yyyy" }}
            groupAggregationMode="none"
            key="LastModified"
            label="{{ i18n.t('Last Modified') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={152.390625}
            summaryAggregationMode="none"
          />
          <Column
            id="07d1b"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="ETag"
            label="{{ i18n.t('E tag') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="b4be7"
            alignment="left"
            cellTooltipMode="overflow"
            format="tags"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="ChecksumAlgorithm"
            label="{{ i18n.t('Checksum algorithm') }}"
            placeholder="{{ i18n.t('Select options') }}"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="d9bbf"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="StorageClass"
            label="{{ i18n.t('Storage class') }}"
            placeholder="{{ i18n.t('Select option') }}"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="30e78"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="Key"
            label="{{ i18n.t('Key') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            referenceId="Key"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{item}}"
          />
          <Action
            id="6014a"
            icon="bold/interface-download-button-2"
            label="{{ i18n.t('Download') }}"
          >
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="downloadS3File4"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="selectRow"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="tabbedContainer24"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Container
          id="tabbedContainer24"
          _gap={0}
          currentViewKey="{{table15.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
          disabledByIndex={[]}
          enableFullBleed={true}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          heightType="fixed"
          hidden="true"
          hiddenByIndex={[]}
          iconByIndex={[]}
          iconPositionByIndex={[]}
          labels={[]}
          overflowType="hidden"
          padding="12px"
          showBody={true}
          showBorder={false}
          showHeader={true}
          tooltipByIndex={[]}
          viewKeys={[]}
          views={[]}
        >
          <Header>
            <Tabs
              id="tabs21"
              data={[]}
              disabledByIndex={[]}
              hidden="true"
              hiddenByIndex={[]}
              iconByIndex={[]}
              iconPositionByIndex={[]}
              itemMode="static"
              labels={[]}
              navigateContainer={true}
              targetContainerId="tabbedContainer24"
              tooltipByIndex={[]}
              value="{{ self.values[0] }}"
              values={[]}
            >
              <Option id="f4d61" value="Tab 1" />
              <Option id="e1a61" value="Tab 2" />
              <Option id="2ce82" value="Tab 3" />
            </Tabs>
          </Header>
          <View id="9cd43" viewKey="image">
            <Image
              id="image10"
              fit="contain"
              heightType="fixed"
              horizontalAlign="center"
              retoolFileObject=""
              src="{{readFile8.data.Body}}"
            />
          </View>
          <View id="c766d" viewKey="pdf">
            <PDFViewer
              id="pdf8"
              retoolFileObject={{ ordered: [] }}
              showTopBar={true}
              src="{{readFile8.data.Body}}"
            />
          </View>
        </Container>
      </View>
    </Container>
  </Header>
  <View id="03e07" viewKey="Summary (Screen 1)" />
</Container>
