<Container
  id="tabbedContainer34"
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
      id="breadcrumbs6"
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
        appTarget="6e03147e-2d88-11ef-b262-93decadc6f95"
        itemType="app"
        label="{{i18n.t('Reagent Preparations Home')}}"
      />
      <Option
        id="fa971"
        appTarget="7bf1713e-2d88-11ef-9016-6bf3dc60e753"
        itemType="custom"
        label="{{ i18n.t(getIssue13.data.issue_index[0]) }}"
      />
    </Breadcrumbs>
    <TagsWidget2
      id="tags6"
      allowWrap={true}
      data="[{{ getIssue13.data.status_value[0] }}]"
      horizontalAlign="center"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
    />
    <Button
      id="button119"
      iconBefore="bold/interface-arrows-left"
      style={{ ordered: [{ background: "rgba(0, 0, 0, 1)" }] }}
      text="{{ i18n.t('Back to List') }}"
    >
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "RSN_Home" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <DropdownButton
      id="dropdownButton7"
      _colorByIndex={["", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", ""]}
      _imageByIndex={["", "", "", "", ""]}
      _values={["Action 3", "Action 7", "Action 5", "Action 6", "Action 7"]}
      hidden=""
      icon="bold/interface-setting-menu-1"
      itemMode="static"
      marginType="normal"
      overlayMaxHeight={375}
      style={{ ordered: [{ background: "secondary" }] }}
      text="{{ i18n.t('Actions') }}"
    >
      <Option
        id="5fdea"
        disabled="{{ ['Approved','Rejected','Under Review'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value)}}"
        hidden="{{ ['Approved','Rejected','Under Review'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value)}}"
        icon="line/interface-arrows-turn-forward"
        label="{{ i18n.t('Send for Review') }}"
        tooltip="{{ i18n.t('QC Supervisors') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalSendForReview2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="81f65"
        disabled="{{ ['Approved','Rejected', 'Open'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value || is_current_user_QC_supervisor2.value)  }}"
        hidden="{{ ['Approved','Rejected', 'Open'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value || is_current_user_QC_supervisor2.value)  }}"
        icon="line/interface-alert-information-circle"
        label="{{ i18n.t('More Information Needed') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalmoreinfoNeeded2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="b20b3"
        disabled="{{ ['Approved','Rejected', 'Open'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value || is_current_user_QC_supervisor2.value)  }}"
        hidden="{{ ['Approved','Rejected', 'Open'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value || is_current_user_QC_supervisor2.value)  }}"
        icon="line/interface-validation-check"
        label="{{ i18n.t('Approved') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_approved4"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="d828f"
        disabled="{{ ['Approved','Rejected', 'Open'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value || is_current_user_QC_supervisor2.value)  }}"
        hidden="{{ ['Approved','Rejected', 'Open'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value || is_current_user_QC_supervisor2.value)  }}"
        icon="line/interface-arrows-turn-backward"
        label="{{ i18n.t('Reject') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_rejected3"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="a9596"
        disabled="{{ ['Open','Pending Testing','Rejected', ].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value || is_current_user_QC_supervisor2.value)  }}"
        hidden="{{ ['Open','Pending Testing','Rejected', ].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value || is_current_user_QC_supervisor2.value)  }}"
        icon="bold/computer-printer-alternate"
        label="{{ i18n.t('Generate Certificate') }}"
      />
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalassign2"
        targetId="f6e02"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="focus"
        params={{ ordered: [] }}
        pluginId="select26"
        targetId="f6e02"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modal_results2"
        targetId="7a1aa"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
        targetId="ac8e8"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID && (x.value_from == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)).length > 0 }}"
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
        enabled="{{ formatDataAsArray(getField_relationship6.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID)).length > 0 }}"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Open Modified')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Withdrawn')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Resolved')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
        targetId="f7ac6"
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
                "{{ formatDataAsArray(getField_relationship6.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values6.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp6"
        targetId="dc908"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_done5"
        targetId="dc908"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </DropdownButton>
    <Button
      id="button120"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="{{ i18n.t('Activity') }}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="drawerFrame7"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "Comments" }] }}
        pluginId="tabbedContainer36"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer27" />
    <EditableText
      id="editableText6"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label=""
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
      required={true}
      style={{
        ordered: [
          { fontSize: "h3Font" },
          { fontWeight: "700" },
          { lineHeight: "1.17em" },
        ],
      }}
      textSize="h3"
      value="{{ getIssue13.data.issue[0] }}"
    >
      <Event
        enabled="{{ ['Approved','Rejected'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_summary6"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Spacer id="spacer26" />
    <Container
      id="collapsibleContainer30"
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
          id="collapsibleTitle34"
          marginType="normal"
          value="#### {{i18n.t('Details')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="Change Details">
        <Include src="./tabbedContainer35.rsx" />
      </View>
    </Container>
    <Include src="./collapsibleContainer33.rsx" />
    <Container
      id="collapsibleContainer31"
      _gap={0}
      disabled="{{ ['Complete'].includes(getIssue13.data.status_value[0]) }}"
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
          id="collapsibleTitle35"
          marginType="normal"
          value="#### {{i18n.t('Description')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <TextEditor
          id="richTextEditor11"
          events={[
            {
              ordered: [
                { event: "change" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "updIssue_description6" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
                {
                  enabled:
                    "{{ ['Approved','Invalid'].includes(getIssue13.data.status_value[0]) ? true : !(is_current_user_assignee6.value ) }}",
                },
              ],
            },
          ]}
          value={
            "{{ getIssue13.data.description[0] ==  '<p>undefined</p>' || getIssue13.data.description[0] ==  '<p>null</p>' ? \"\" : getIssue13.data.description[0] }}"
          }
        />
      </View>
    </Container>
    <Container
      id="collapsibleContainer32"
      _gap={0}
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      heightType="fixed"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(227, 232, 239)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle36"
          marginType="normal"
          value="#### {{i18n.t('Attachments')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <Module
          id="attachmentUploader6"
          hidden="{{ ['Closed','QP Rejected'].includes(getIssue13.data.status_value[0]) }}"
          issueId="{{url.searchParams.issueID}}"
          margin="0"
          name="Attachment Uploader"
          pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
          project="rsn"
          refresh="getS3Files6"
        />
        <Table
          id="table20"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getS3Files6.data.Contents }}"
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
            valueOverride="{{ item.replace(('rsn/' + url.searchParams.issueID) + '/','').substring(36) }}"
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
              pluginId="downloadS3File6"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="selectRow"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="tabbedContainer37"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Container
          id="tabbedContainer37"
          _gap={0}
          currentViewKey="{{table20.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
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
              id="tabs32"
              data={[]}
              disabledByIndex={[]}
              hidden="true"
              hiddenByIndex={[]}
              iconByIndex={[]}
              iconPositionByIndex={[]}
              itemMode="static"
              labels={[]}
              navigateContainer={true}
              targetContainerId="tabbedContainer37"
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
              id="image14"
              fit="contain"
              heightType="fixed"
              horizontalAlign="center"
              retoolFileObject=""
              src="{{readFile12.data.Body}}"
            />
          </View>
          <View id="c766d" viewKey="pdf">
            <PDFViewer
              id="pdf12"
              retoolFileObject={{ ordered: [] }}
              showTopBar={true}
              src="{{readFile12.data.Body}}"
            />
          </View>
        </Container>
      </View>
    </Container>
  </Header>
  <View id="03e07" viewKey="Summary (Screen 1)" />
  <View id="1ecbc" viewKey="Tasks (Screen 2)">
    <Table
      id="table19"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getTasks.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="261e7"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="taskID"
        label="{{ i18n.t('Task id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={267.8833312988281}
        summaryAggregationMode="none"
      />
      <Column
        id="7e868"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="issueID"
        label="{{ i18n.t('Issue id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={279.3666687011719}
        summaryAggregationMode="none"
      />
      <Column
        id="e70f2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="reason_comment_investigation"
        label="{{ i18n.t('Reason/Comment/Investigation') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={205.96665954589844}
        summaryAggregationMode="none"
      />
      <Column
        id="724ae"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="proposed_corrective_action"
        label="{{ i18n.t('Proposed Corrective Action') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={224.28334045410156}
        summaryAggregationMode="none"
      />
      <Column
        id="79ec3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="assignee"
        label="{{ i18n.t('Assignee') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={149.8333282470703}
        summaryAggregationMode="none"
      />
      <Column
        id="7c748"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="target_date"
        label="{{ i18n.t('Target date') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={200.89999389648438}
        summaryAggregationMode="none"
      />
      <Column
        id="a0fcb"
        alignment="center"
        editableOptions={{ showStepper: true }}
        format="boolean"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="confirmed_person_responsible"
        label="{{ i18n.t('Confirmed Person Responsible') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={191.8000030517578}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="{{ i18n.t('Filter') }}"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="{{ i18n.t('Download') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table19"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="{{ i18n.t('Refresh') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table19"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="tableTasks"
      cellSelection="none"
      clearChangesetOnSave={true}
      data=""
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="7a179"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="issueID"
        label="{{ i18n.t('Issue id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={281.23333740234375}
        summaryAggregationMode="none"
      />
      <Column
        id="93c65"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="taskID"
        label="{{ i18n.t('Task id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="959ad"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="task"
        label="{{ i18n.t('Task') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="{{ i18n.t('Filter') }}"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="{{ i18n.t('Download') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="tableTasks"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="{{ i18n.t('Refresh') }}"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="tableTasks"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="a4207" viewKey="CAPA (Screen 3)" />
</Container>
