<Container
  id="tabbedContainer11"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  enableFullBleed={true}
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
  style={{ ordered: [{ background: "canvas" }] }}
>
  <Header>
    <TagsWidget2
      id="tags2"
      allowWrap={true}
      data="[{{ i18n.t(getIssue4.data.status_value[0] )}}]"
      horizontalAlign="center"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
    />
    <Button
      id="button74"
      iconBefore="bold/interface-arrows-left"
      marginType="normal"
      style={{ ordered: [{ background: "rgba(0, 0, 0, 1)" }] }}
      text="{{i18n.t('Back to all Deviations')}}"
    >
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "DEVIATION_Home" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Breadcrumbs
      id="breadcrumbs2"
      itemMode="static"
      marginType="normal"
      value="{{ retoolContext.appUuid }}"
    >
      <Option
        id="3bf2e"
        appTarget="110a7f0e-9d42-11ee-8c49-f34e2402ef1e"
        itemType="custom"
        label="{{ i18n.t('Home')}}"
      >
        <Event
          event="click"
          method="openPage"
          params={{ ordered: [{ pageName: "Pathfinder_home" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="1f0d2"
        appTarget="209660d6-9dd9-11ee-b55f-6f511a8c6f1e"
        itemType="custom"
        label="{{ i18n.t('Deviation')}}"
      >
        <Event
          event="click"
          method="openPage"
          params={{ ordered: [{ pageName: "DEVIATION_Home" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="fa971"
        appTarget="b8df9f38-9dde-11ee-bcb5-a7293e5d72e7"
        itemType="custom"
        label="{{ i18n.t(getIssue4.data.issue_index[0])}}"
      />
    </Breadcrumbs>
    <DropdownButton
      id="dropdownButton3"
      _colorByIndex={["", "", "", "", "", "", "", "", "", "", "", "", "", ""]}
      _fallbackTextByIndex={[
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
        "",
      ]}
      _imageByIndex={["", "", "", "", "", "", "", "", "", "", "", "", "", ""]}
      _values={[
        "Action 12",
        "Action 3",
        "Action 4",
        "Action 7",
        "Action 5",
        "Action 6",
        "Action 8",
        "Action 9",
        "Action 9",
        "Action 11",
        "Action 11",
        "Action 14",
        "Action 14",
        "Action 15",
      ]}
      hidden=""
      icon="bold/interface-setting-menu-1"
      itemMode="static"
      marginType="normal"
      overlayMaxHeight=""
      style={{ ordered: [{ background: "secondary" }] }}
      text="{{ i18n.t('Actions')}}"
    >
      <Option
        id="8c6ba"
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'More Information Needed')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee2.value || is_current_user_qaManager2.value || is_current_user_qualifiedPerson2.value) }}"
        icon="bold/mail-chat-bubble-oval-question-alternate"
        label="{{ i18n.t('More Information Needed') }}"
        tooltip="Assignee / QA Manager / Qualified Person required"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'More Information Needed')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp2"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentNew"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="6957e"
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Rejected')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_qaManager2.value || is_current_user_qualifiedPerson2.value) }}"
        icon="line/interface-file-block"
        label="{{i18n.t('Rejected')}}"
        tooltip="QA Manager / Qualified Person required"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Rejected')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp2"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentNew"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="bda3e"
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Deviation Accepted')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_qaManager2.value || is_current_user_qualifiedPerson2.value) }} "
        icon="line/interface-file-check-alternate"
        label="{{ i18n.t('Approved')}}"
        tooltip="QA Manager / Qualified Person required"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_deviationAccepted"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="9a423"
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee2.value || is_current_user_deviationAdmin.value) }}"
        icon="line/natrue-ecology-recycle-2"
        label="{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID )[0].transition_name }}"
        tooltip="Comment & Assignee / Deviation Administrator"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp2"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentNew"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="a8661"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Pending Evaluation')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Deviation Accepted')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_departmentManager.value) }}"
        icon="line/image-picture-portrait-view"
        label="{{i18n.t('Complete Information')  }}"
        tooltip="{{i18n.t('Complete Information')  }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalCompleteInformation"
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
                  "{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Pending Evaluation')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp2"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="e4690"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Deviation Accepted')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Pending Evaluation')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_qaManager2.value || is_current_user_qualifiedPerson2.value) }} "
        icon="line/interface-file-check-alternate"
        label="{{ i18n.t('Pending Information') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship2.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Deviation Accepted')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Pending Evaluation')[0].project_field_type_valueID)[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp2"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentNew"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="164ef"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Evaluated')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_qaManager2.value || is_current_user_qualifiedPerson2.value) }}"
        icon="line/interface-time-clock-circle"
        label="{{ i18n.t('Complete Evaluation') }}"
        tooltip="{{ i18n.t('Complete Evaluation') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Evaluated')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp2"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentNew"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="e5502"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Pending Evaluation')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Evaluated')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_qualifiedPerson2.value) }}"
        icon="bold/mail-chat-bubble-oval-question-alternate"
        label="{{ i18n.t('More Information Needed') }}"
        tooltip="{{ i18n.t('More Information Needed') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship2.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Pending Evaluation')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Evaluated')[0].project_field_type_valueID)[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp2"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentNew"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="7a1aa"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'QP Approved')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_qualifiedPerson2.value) }}"
        icon="line/interface-file-check"
        label="{{ i18n.t('Approved') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_approved"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="a11db"
        hidden="{{ ['Open','More Information Needed','Deviation Accepted','Pending Evaluation','Evaluated','Closed','QP Rejected','Rejected'].includes(getIssue4.data.status_value[0]) }}"
        icon="line/interface-add-1"
        label="{{i18n.t('Add CAPA')}}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalAddCAPA"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              { key: "next_capa_issue_id" },
              { newValue: "{{ uuid.v4() }}" },
            ],
          }}
          pluginId=""
          type="localStorage"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="267fe"
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'QP Rejected')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_qualifiedPerson2.value) }}"
        icon="bold/interface-file-block"
        label="{{ i18n.t('Rejected') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_rejectedQP"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="687af"
        disabled="{{ formatDataAsArray(getRelatedCAPAIssues2.data).every(function(item){ return !['Closed','Withdrawn'].includes(item.status_value) }) }}"
        hidden="{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee2.value || is_current_user_qaManager2.value || is_current_user_qualifiedPerson2.value) }}"
        icon="bold/interface-validation-check-circle-alternate"
        label="{{ formatDataAsArray(getField_relationship2.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values2.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}"
        tooltip="All associated CAPAs must be 'Closed' / 'Withdrawn'"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_closed"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="abb5b"
        disabled={false}
        hidden="true"
        icon="bold/interface-add-2-alternate"
        label="Add CAPA"
      >
        <Event
          event="click"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal_createCAPA"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              { key: "next_capa_issue_id" },
              { newValue: "{{uuid.v4()}}" },
            ],
          }}
          pluginId=""
          type="localStorage"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="dcdbb"
        disabled="true"
        hidden={false}
        icon="bold/computer-printer"
        label="{{i18n.t('Print')}}"
        tooltip="Currently disabled"
      >
        <Event
          event="click"
          method="run"
          params={{
            ordered: [
              {
                src: "utils.downloadPage( getIssue4.data.issue_index[0] + '-' + moment().format('d MMM yyyy'))",
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "utils.downloadPage( getIssue4.data.issue_index[0] + '-' + moment().format('d MMM yyyy'))",
            },
          ],
        }}
        pluginId=""
        targetId="98e5b"
        type="script"
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
    </DropdownButton>
    <Button
      id="button75"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="{{i18n.t('Activity')}}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="drawerFrame3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <EditableText
      id="editableText2"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label=""
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="{{ ['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
      required={true}
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      textSize="h4"
      value="{{ getIssue4.data.issue[0] }}"
    >
      <Event
        enabled="{{ !['Closed'].includes(getIssue4.data.status_value[0]) }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_summary2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Spacer id="spacer14" marginType="normal" />
    <Spacer id="spacer13" marginType="normal" />
    <Include src="./collapsibleContainer12.rsx" />
    <Container
      id="collapsibleContainer9"
      _gap={0}
      disabled="{{getIssue4.data.statusID == 
  'eb3fa225-ee5f-44af-b911-32896c4c5248'}}"
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
          id="collapsibleTitle11"
          marginType="normal"
          value="#### {{i18n.t('Details')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="Change Details">
        <Include src="./tabbedContainer12.rsx" />
      </View>
    </Container>
    <Container
      id="collapsibleContainer10"
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
          id="collapsibleTitle12"
          marginType="normal"
          value="#### {{i18n.t('Description')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <TextEditor
          id="richTextEditor7"
          events={[
            {
              ordered: [
                { event: "blur" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "updIssue_description2" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "4000" },
                {
                  enabled:
                    "{{ !['Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}",
                },
              ],
            },
          ]}
          value={
            "{{ getIssue4.data.description[0] ==  '<p>undefined</p>' || getIssue4.data.description[0] ==  '<p>null</p>' ? \"\" : getIssue4.data.description[0] }}"
          }
        />
      </View>
    </Container>
    <Container
      id="collapsibleContainer11"
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
          id="collapsibleTitle13"
          marginType="normal"
          value="#### {{i18n.t('Attachments')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <Module
          id="attachmentUploader2"
          hidden=""
          issueId="{{url.searchParams.issueID}}"
          margin="0"
          name="Attachment Uploader"
          pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
          project="deviation"
          refresh="getS3Files2"
        />
        <Table
          id="table8"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getS3Files2.data.Contents }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[{ object: { columnId: "6697a", direction: "asc" } }]}
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
            label="{{ i18n.t('Name')}}"
            placeholder="Enter value"
            position="center"
            size={512.109375}
            summaryAggregationMode="none"
            valueOverride="{{ item.replace(('deviation/' + url.searchParams.issueID) + '/','').substring(36) }}"
          />
          <Column
            id="a93a9"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "compact" }}
            groupAggregationMode="sum"
            key="Size"
            label="Size (MB)"
            placeholder="Enter value"
            position="center"
            size={73.75}
            summaryAggregationMode="none"
          />
          <Column
            id="827a3"
            alignment="right"
            format="datetime"
            formatOptions={{ dateFormat: "dd MMM yyyy" }}
            groupAggregationMode="none"
            key="LastModified"
            label="Last Modified"
            placeholder="Enter value"
            position="center"
            size={141.421875}
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
            label="E tag"
            placeholder="Enter value"
            position="center"
            size={236.09375}
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
            label="Checksum algorithm"
            placeholder="Select options"
            position="center"
            size={136.296875}
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
            label="Storage class"
            placeholder="Select option"
            position="center"
            size={96.84375}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="1226c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="Key"
            label="Key"
            placeholder="Enter value"
            position="center"
            referenceId="Key"
            size={100}
            summaryAggregationMode="none"
          />
          <Action
            id="6014a"
            icon="bold/interface-download-button-2"
            label="Download"
          >
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="downloadS3File2"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="table8"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="table8"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="selectRow"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="tabbedContainer13"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Container
          id="tabbedContainer13"
          _gap={0}
          currentViewKey="{{table8.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
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
              id="tabs13"
              data={[]}
              disabledByIndex={[]}
              hidden="true"
              hiddenByIndex={[]}
              iconByIndex={[]}
              iconPositionByIndex={[]}
              itemMode="static"
              labels={[]}
              navigateContainer={true}
              targetContainerId="tabbedContainer13"
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
              id="image6"
              fit="contain"
              heightType="fixed"
              horizontalAlign="center"
              retoolFileObject=""
              src="{{readFile4.data.Body}}"
            />
          </View>
          <View id="c766d" viewKey="pdf">
            <PDFViewer
              id="pdf4"
              retoolFileObject={{ ordered: [] }}
              showTopBar={true}
              src="{{readFile4.data.Body}}"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="collapsibleContainer7"
      _gap={0}
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      heightType="fixed"
      hidden=""
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(227, 232, 239)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle7"
          marginType="normal"
          value="#### {{i18n.t('Linked CAPA(s)')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <Button
          id="button37"
          disabled="{{ ['Open','More Information Needed','Deviation Accepted','Pending Evaluation','Evaluated','Closed','QP Rejected', 'Rejected'].includes(getIssue4.data.status_value[0]) }}"
          hidden="false"
          iconBefore="bold/interface-add-1"
          marginType="normal"
          style={{ ordered: [{ background: "secondary" }] }}
          text="{{ i18n.t('Add CAPA')}}"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalAddCAPA"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="setValue"
            params={{
              ordered: [
                { key: "next_capa_issue_id" },
                { newValue: "{{ uuid.v4() }}" },
              ],
            }}
            pluginId=""
            type="localStorage"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Table
          id="table_relatedCAPAs"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getRelatedCAPAIssues2.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[{ object: { columnId: "6697a", direction: "asc" } }]}
          hidden=""
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{ headerBackground: "canvas" }}
          toolbarPosition="bottom"
        >
          <Column
            id="e5502"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            key="issue_index"
            label="{{ i18n.t('Issue ID')}}"
            placeholder="Enter value"
            position="left"
            size={94.51666259765625}
            summaryAggregationMode="none"
          />
          <Column
            id="c932a"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="project_type_value"
            label="{{ i18n.t('Type')}}"
            placeholder="Select option"
            position="center"
            size={154.13333129882812}
            summaryAggregationMode="none"
            valueOverride="{{ i18n.t(_.startCase(item)) }}"
          />
          <Column
            id="38275"
            alignment="left"
            cellTooltipMode="overflow"
            format="string"
            groupAggregationMode="none"
            key="issue"
            label="{{ i18n.t('Issue')}}"
            placeholder="Enter value"
            position="center"
            size={206.61666870117188}
            summaryAggregationMode="none"
          />
          <Column
            id="e155c"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            hidden="true"
            key="incident_date"
            label="Incident date"
            placeholder="Enter value"
            position="center"
            size={145.0500030517578}
            summaryAggregationMode="none"
          />
          <Column
            id="95d22"
            alignment="left"
            cellTooltipMode="overflow"
            format="html"
            groupAggregationMode="none"
            key="description"
            label="{{ i18n.t('Description')}}"
            placeholder="Enter value"
            position="center"
            referenceId="i18NTDescription"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="7061c"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status_value"
            label="{{ i18n.t('Status')}}"
            placeholder="Select option"
            position="center"
            size={126.83332824707031}
            summaryAggregationMode="none"
            valueOverride="{{ i18n.t(_.startCase(item))}}"
          />
          <Column
            id="6697a"
            alignment="center"
            editable="true"
            format="date"
            formatOptions={{ dateFormat: "d MMM yyyy" }}
            groupAggregationMode="none"
            key="due_date"
            label="{{ i18n.t('Due Date')}}"
            placeholder="Enter value"
            position="center"
            size={134.93333435058594}
            summaryAggregationMode="none"
          />
          <Column
            id="b4bb4"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="responsible_department_value"
            label="Responsible Section"
            placeholder="Enter value"
            position="center"
            size={253.13333129882812}
            summaryAggregationMode="none"
          />
          <Column
            id="48a5e"
            alignment="left"
            format="string"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            hidden="true"
            key="department_manager"
            label="Responsible Person"
            placeholder="Enter value"
            position="center"
            size={216.11666870117188}
            summaryAggregationMode="none"
            valueOverride="{{ formatDataAsArray(getUsers3.data).filter(x =>  x.userID == item)[0].email }}"
          />
          <Column
            id="67b48"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="project"
            label="Project"
            placeholder="Select option"
            position="center"
            size={64.31666564941406}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="ebb23"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="project_type"
            label="Project type"
            placeholder="Select option"
            position="center"
            size={132.13333129882812}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="f1765"
            alignment="right"
            format="avatar"
            formatOptions={{
              showUnderline: "hover",
              underlineStyle: "solid",
              fallbackText:
                "{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}",
              image: "{{ currentSourceRow.assignedAvatarURL }}",
            }}
            groupAggregationMode="none"
            hidden="false"
            key="assignedAvatarURL"
            label="{{ i18n.t('Assignee')}}"
            placeholder="No user"
            position="right"
            size={108.89999389648438}
            summaryAggregationMode="none"
            valueOverride="{{currentSourceRow.assignedfirstName}} {{currentSourceRow.assignedLastName}}"
          >
            <Event
              event="clickCell"
              method="openUrl"
              params={{ ordered: [{ url: "{{ item }}" }] }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="c97c4"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="issueID"
            label="issueID"
            placeholder="Enter value"
            position="center"
            referenceId="issueID"
            size={100}
            summaryAggregationMode="none"
          />
          <Action
            id="e586a"
            icon="bold/interface-link-square-alternate"
            label="View CAPA"
          >
            <Event
              event="clickAction"
              method="openApp"
              params={{
                ordered: [
                  { uuid: "b053272a-aefc-11ee-a936-ffc34d96a397" },
                  {
                    options: {
                      ordered: [
                        {
                          hashParams: [
                            {
                              ordered: [
                                { key: "issueID" },
                                { value: "{{ currentSourceRow.issueID }}" },
                              ],
                            },
                          ],
                        },
                        { newTab: true },
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
          </Action>
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="table_relatedCAPAs"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="table_relatedCAPAs"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updTasks"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Modal
      id="modal_addCommentTransition2"
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      hidden="true"
      modalHeightType="auto"
      modalWidth="60%"
    >
      <Form
        id="form22"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        hidden="{{ transitionNameTemp2.value == 'Complete Information' }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{ ordered: [{ background: "canvas" }] }}
      >
        <Header>
          <Text
            id="formTitle23"
            marginType="normal"
            value="#### {{ transitionNameTemp2.value }}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextArea
            id="textArea10"
            autoResize={true}
            hidden="{{ has_comment2.value == false }}"
            label="Add Comment"
            marginType="normal"
            minLines="4"
          />
          <Select
            id="select_classificationDisposition"
            automaticItemColors={true}
            captionByIndex=""
            colorByIndex=""
            data="{{ getProject_field_classificationDisposition_values2.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Classification / Disposition"
            labels="{{ item.field_value }}"
            marginType="normal"
            overlayMaxHeight={375}
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ getIssue4.data?.classification_dispositionID[0] }}"
            values="{{ item.project_field_type_valueID }}"
          />
          <Select
            id="select_classificationRootCause"
            automaticItemColors={true}
            captionByIndex=""
            colorByIndex=""
            data="{{ getProject_field_classificationRootCause_values2.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Classification / Root Cause"
            labels="{{ item.field_value }}"
            marginType="normal"
            overlayMaxHeight={375}
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ getIssue4.data?.classification_root_causeID[0] }}"
            values="{{ item.project_field_type_valueID }}"
          />
          <SegmentedControl
            id="select_classificationEvaluationOfRelated"
            data="{{ getProject_field_classificationEvaluationOfRelated_values2.data }}"
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            label="Classification / Evaluation of Related"
            labels="{{ item.field_value }}"
            paddingType="spacious"
            required={true}
            value="{{ getIssue4.data?.classification_evaluation_of_relatedID[0] }}"
            values="{{ item.project_field_type_valueID }}"
          >
            <Option id="0000" />
            <Option id="0001" />
          </SegmentedControl>
          <SegmentedControl
            id="select_classificationNotification"
            data="{{ getProject_field_classificationNotification_values2.data }}"
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            label="Classification / Notification"
            labels="{{ item.field_value}}"
            paddingType="spacious"
            required={true}
            value="{{ getIssue4.data?.classification_notificationID[0] }}"
            values="{{ item.project_field_type_valueID }}"
          >
            <Option id="0000" />
            <Option id="0001" />
          </SegmentedControl>
          <SegmentedControl
            id="select_classificationRecurrence"
            data="{{ getProject_field_classificationRecurrence_values2.data }}"
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            label="Classification / Recurrence"
            labels="{{ item.field_value }}"
            paddingType="spacious"
            required={true}
            value="{{ getIssue4.data?.classification_recurrenceID[0] }}"
            values="{{ item.project_field_type_valueID }}"
          >
            <Option id="0000" />
            <Option id="0001" />
          </SegmentedControl>
          <SegmentedControl
            id="select_classificationSeverity"
            data="{{ getProject_field_classificationSeverity_values2.data }}"
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            label="Classification / Severity"
            labels="{{ item.field_value }}"
            paddingType="spacious"
            required={true}
            value="{{ getIssue4.data?.classification_severityID[0] }}"
            values="{{ item.project_field_type_valueID }}"
          >
            <Option id="0000" />
            <Option id="0001" />
          </SegmentedControl>
          <TextArea
            id="textArea_evaluation"
            autoResize={true}
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            label="Evaluation"
            labelWrap={true}
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue4.data?.evaluation[0] }}"
          />
          <TextArea
            id="textArea_proposedCorrectiveAction2"
            autoResize={true}
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            label="Proposed Corrective Action"
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue4.data?.corrective_action[0] }}"
          />
          <TextArea
            id="textArea_proposedPreventativeAction2"
            autoResize={true}
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            label="Proposed Preventative Action"
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue4.data?.preventative_action[0] }}"
          />
          <TextArea
            id="textArea_reasonInvestigation2"
            autoResize={true}
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            label="Reason / Investigation"
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue4.data?.reason[0] }}"
          />
          <Select
            id="select_chooseQP"
            automaticItemColors={true}
            captionByIndex="{{ item.email }}"
            colorByIndex=""
            data="{{ getUsers_QP2.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex="{{item.avatarURL}}"
            label="Choose Qualified Person"
            labels="{{ `${item.firstName} ${item.lastName}` }}"
            marginType="normal"
            overlayMaxHeight={375}
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ getIssue4.data?.choose_QP_value[0] }}"
            values="{{ item.userID }}"
          />
        </Body>
        <Footer>
          <Button
            id="button42"
            marginType="normal"
            style={{ ordered: [] }}
            styleVariant="outline"
            text="Cancel"
          >
            <Event
              event="click"
              method="close"
              params={{ ordered: [] }}
              pluginId="modal_addCommentTransition2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="button49"
            hidden="{{ transitionNameTemp2.value != 'Complete Information' }}"
            marginType="normal"
            text="{{ transitionNameTemp2.value }}"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_completeInformation"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="button71"
            hidden="{{ transitionNameTemp2.value != 'Complete Evaluation' }}"
            marginType="normal"
            submit={true}
            submitTargetId="form22"
            text="{{ transitionNameTemp2.value }}"
          />
          <Button
            id="button70"
            disabled={'{{ has_comment2.value && textArea10.value == "" }}'}
            hidden="{{ transitionNameTemp2.value == 'Complete Information' || transitionNameTemp2.value == 'Complete Evaluation'}}"
            marginType="normal"
            text="{{ transitionNameTemp2.value }}"
          >
            <Event
              enabled="{{ has_comment2.value }}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="insComments4"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp2.value == 'Send for Approval'}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_sendForApproval"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp2.value == 'More Information Needed' && getIssue4.data.status_value[0] == 'Open'}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_moreInformationNeeded"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp2.value == 'Rejected' }}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_rejected"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp2.value == 'Pending Information' }}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_pendingInformation"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ transitionNameTemp2.value == 'More Information Needed' && getIssue4.data.status_value[0] == 'Evaluated'}}"
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updIssue_moreInformationNeededEvaluation"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_completeEvaluation"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
      <Form
        id="form14"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        hidden="{{ transitionNameTemp2.value != 'Complete Information' }}"
        marginType="normal"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{ ordered: [{ background: "canvas" }] }}
      >
        <Header>
          <Text
            id="formTitle15"
            marginType="normal"
            value="#### {{ transitionNameTemp2.value }}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextArea
            id="textArea_preventativeAction"
            autoResize={true}
            label="Proposed Preventative Action"
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue4.data?.preventative_action[0] }}"
          />
          <TextArea
            id="textArea_correctiveAction"
            autoResize={true}
            label="Proposed Corrective Action"
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue4.data?.corrective_action[0] }}"
          />
          <TextArea
            id="textArea_reasonInvestigation"
            autoResize={true}
            label="Reason / Investigation"
            marginType="normal"
            minLines="4"
            required={true}
            value="{{ getIssue4.data?.reason[0] }}"
          />
        </Body>
        <Footer>
          <Button
            id="button72"
            marginType="normal"
            style={{ ordered: [] }}
            styleVariant="outline"
            text="Cancel"
          >
            <Event
              event="click"
              method="close"
              params={{ ordered: [] }}
              pluginId="modal_addCommentTransition2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="button73"
            marginType="normal"
            submit={true}
            submitTargetId="form14"
            text="Complete Information"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_completeInformation"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
  </Header>
  <View id="03e07" viewKey="Summary (Screen 1)" />
</Container>
