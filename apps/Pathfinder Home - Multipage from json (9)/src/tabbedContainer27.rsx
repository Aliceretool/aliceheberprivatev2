<Container
  id="tabbedContainer27"
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
      id="breadcrumbs5"
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
        appTarget="4f7a7408-271a-11ef-b538-cf2ed0021396"
        itemType="app"
        label="{{ i18n.t('Analysis & Investigations') }}"
      />
      <Option
        id="fa971"
        appTarget="fae11fec-0346-11ef-be47-0ff8328004ce"
        itemType="custom"
        label="{{ i18n.t(getIssue11.data.issue_index[0]) }}"
      />
    </Breadcrumbs>
    <TagsWidget2
      id="tags5"
      allowWrap={true}
      data="[{{ getIssue11.data.status_value[0] }}]"
      horizontalAlign="center"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
    />
    <Button
      id="button109"
      iconBefore="bold/interface-arrows-left"
      style={{ ordered: [{ background: "rgba(0, 0, 0, 1)" }] }}
      text="{{ i18n.t('Back to List') }}"
    >
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "AINV_Home" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <DropdownButton
      id="dropdownButton6"
      _colorByIndex={["", "", "", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", "", "", ""]}
      _imageByIndex={["", "", "", "", "", "", ""]}
      _values={[
        "",
        "Action 9",
        "Action 3",
        "Action 7",
        "Action 6",
        "Action 5",
        "Action 7",
      ]}
      hidden=""
      icon="bold/interface-setting-menu-1"
      itemMode="static"
      marginType="normal"
      overlayMaxHeight={375}
      style={{ ordered: [{ background: "secondary" }] }}
      text="{{ i18n.t('Actions') }}"
    >
      <Option
        id="f6e02"
        icon="line/interface-user-single"
        label="{{ i18n.t('Assign') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalassign"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="focus"
          params={{ ordered: [] }}
          pluginId="select26"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="7a1aa"
        disabled="{{ ['Approved','Rejected','Pending Testing'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value)}}"
        hidden="{{ ['Approved','Rejected','Pending Testing'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value)}}"
        icon="line/interface-file-check"
        label="{{ i18n.t('Add Results') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_results"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="5fdea"
        disabled="{{ ['Approved','Rejected','Pending Testing'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value)}}"
        hidden="{{ ['Approved','Rejected','Pending Testing'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value)}}"
        icon="line/interface-arrows-turn-forward"
        label="{{ i18n.t('Send for Review') }}"
        tooltip="{{ i18n.t('QC Supervisors') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalSendForReview"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="81f65"
        disabled="{{ ['Approved','Rejected', 'Open'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value || is_current_user_QC_supervisor.value)  }}"
        hidden="{{ ['Approved','Rejected', 'Open'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value || is_current_user_QC_supervisor.value)  }}"
        icon="line/interface-alert-information-circle"
        label="{{ i18n.t('More Information Needed') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalmoreinfoNeeded"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="d828f"
        disabled="{{ ['Approved','Rejected', 'Open'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value || is_current_user_QC_supervisor.value)  }}"
        hidden="{{ ['Approved','Rejected', 'Open'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value || is_current_user_QC_supervisor.value)  }}"
        icon="line/interface-arrows-turn-backward"
        label="{{ i18n.t('Reject') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_rejected2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="b20b3"
        disabled="{{ ['Approved','Rejected', 'Open'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value || is_current_user_QC_supervisor.value)  }}"
        hidden="{{ ['Approved','Rejected', 'Open'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value || is_current_user_QC_supervisor.value)  }}"
        icon="line/interface-validation-check"
        label="{{ i18n.t('Approve') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_approved3"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="a9596"
        disabled="{{ ['Open','Pending Testing','Rejected', ].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value || is_current_user_QC_supervisor.value)  }}"
        hidden="{{ ['Open','Pending Testing','Rejected', ].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value || is_current_user_QC_supervisor.value)  }}"
        icon="bold/computer-printer-alternate"
        label="{{ i18n.t('Generate Certificate') }}"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
        targetId="ac8e8"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID && (x.value_from == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)).length > 0 }}"
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
        enabled="{{ formatDataAsArray(getField_relationship5.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID)).length > 0 }}"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Open Modified')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Withdrawn')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Resolved')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
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
                "{{ formatDataAsArray(getField_relationship5.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values5.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp5"
        targetId="dc908"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_done4"
        targetId="dc908"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </DropdownButton>
    <Button
      id="button110"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="{{ i18n.t('Activity') }}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="drawerFrame6"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "Comments" }] }}
        pluginId="tabbedContainer29"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer24" />
    <EditableText
      id="editableText5"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label=""
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
      required={true}
      style={{
        ordered: [
          { fontSize: "h3Font" },
          { fontWeight: "700" },
          { lineHeight: "1.17em" },
        ],
      }}
      textSize="h3"
      value="{{ getIssue11.data.issue[0] }}"
    >
      <Event
        enabled="{{ ['Approved','Rejected'].includes(getIssue11.data.status_value[0]) ? true : !(is_current_user_assignee5.value ) }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_summary5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Spacer id="spacer23" />
    <Container
      id="collapsibleContainer26"
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
          id="collapsibleTitle30"
          marginType="normal"
          value="#### {{ i18n.t('Details')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="Change Details">
        <Include src="./tabbedContainer28.rsx" />
      </View>
    </Container>
    <Include src="./collapsibleContainer29.rsx" />
    <Container
      id="collapsibleContainer27"
      _gap={0}
      disabled="{{ ['Complete'].includes(getIssue11.data.status_value[0]) }}"
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
          id="collapsibleTitle31"
          marginType="normal"
          value="#### {{ i18n.t('Description')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <TextEditor
          id="richTextEditor10"
          events={[
            {
              ordered: [
                { event: "change" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "updIssue_description5" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
                {
                  enabled:
                    "{{ !['Closed','QP Rejected'].includes(getIssue11.data.status_value[0]) }}",
                },
              ],
            },
          ]}
          value={
            "{{ getIssue11.data.description[0] ==  '<p>undefined</p>' || getIssue11.data.description[0] ==  '<p>null</p>' ? \"\" : getIssue11.data.description[0] }}"
          }
        />
      </View>
    </Container>
    <Container
      id="collapsibleContainer28"
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
          id="collapsibleTitle32"
          marginType="normal"
          value="#### {{ i18n.t('Attachments')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <Module
          id="attachmentUploader5"
          hidden="{{ ['Closed','QP Rejected'].includes(getIssue11.data.status_value[0]) }}"
          issueId="{{url.searchParams.issueID}}"
          margin="0"
          name="Attachment Uploader"
          pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
          project="anl"
          refresh="getS3Files5"
        />
        <Table
          id="table17"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getS3Files5.data.Contents }}"
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
            valueOverride="{{ item.replace(('anl/' + url.searchParams.issueID) + '/','').substring(36) }}"
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
              pluginId="downloadS3File5"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="selectRow"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="tabbedContainer30"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Container
          id="tabbedContainer30"
          _gap={0}
          currentViewKey="{{table17.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
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
              id="tabs26"
              data={[]}
              disabledByIndex={[]}
              hidden="true"
              hiddenByIndex={[]}
              iconByIndex={[]}
              iconPositionByIndex={[]}
              itemMode="static"
              labels={[]}
              navigateContainer={true}
              targetContainerId="tabbedContainer30"
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
              id="image12"
              fit="contain"
              heightType="fixed"
              horizontalAlign="center"
              retoolFileObject=""
              src="{{readFile10.data.Body}}"
            />
          </View>
          <View id="c766d" viewKey="pdf">
            <PDFViewer
              id="pdf10"
              retoolFileObject={{ ordered: [] }}
              showTopBar={true}
              src="{{readFile10.data.Body}}"
            />
          </View>
        </Container>
      </View>
    </Container>
  </Header>
  <View id="03e07" viewKey="Summary (Screen 1)" />
</Container>
