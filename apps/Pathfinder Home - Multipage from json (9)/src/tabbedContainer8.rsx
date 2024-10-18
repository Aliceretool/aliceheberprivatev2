<Container
  id="tabbedContainer8"
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
      id="breadcrumbs1"
      itemMode="static"
      marginType="normal"
      value="{{ retoolContext.appUuid }}"
    >
      <Option
        id="3bf2e"
        appTarget="13572a3e-7058-11ef-bcd3-cff4a07b09fb"
        itemType="custom"
        label="{{ i18n.t('Pathfinder Home - Multi-Page') }}"
      />
      <Option
        id="b4695"
        disabled={false}
        iconPosition="left"
        itemType="custom"
        label="{{ i18n.t('CAPA Home') }}"
      >
        <Event
          event="click"
          method="openPage"
          params={{ ordered: [{ pageName: "CAPA_Home" }] }}
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
        label="{{ i18n.t(getIssue2.data.issue_index[0]) }}"
      >
        <Event
          enabled="{{ 1 == 0 }}"
          event="click"
          method="openPage"
          params={{
            ordered: [
              { pageName: "CAPA_Specific" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [{ ordered: [{ key: "" }, { value: "" }] }],
                    },
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
      </Option>
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "CAPA_Home" }] }}
        pluginId=""
        targetId="1f0d2"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Breadcrumbs>
    <TagsWidget2
      id="tags1"
      allowWrap={true}
      data="[{{ i18n.t(getIssue2.data.status_value[0]) }}]"
      horizontalAlign="center"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
    />
    <Button
      id="button53"
      iconBefore="bold/interface-arrows-left"
      style={{ ordered: [{ background: "rgba(0, 0, 0, 1)" }] }}
      text="{{ i18n.t('Back to all CAPA') }}"
    >
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "CAPA_Home" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <DropdownButton
      id="dropdownButton2"
      _colorByIndex={["", "", "", "", "", "", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", "", "", "", "", "", ""]}
      _imageByIndex={["", "", "", "", "", "", "", "", "", ""]}
      _values={[
        "Action 12",
        "Action 3",
        "Action 4",
        "Action 7",
        "Action 5",
        "Action 8",
        "Action 6",
        "Action 9",
        "Action 9",
        "Action 10",
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
        id="ac8e8"
        hidden="{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID ).length == 0 ? true : !(is_current_user_assignee.value || is_current_user_CAPAAdmin.value) }}"
        icon="bold/interface-file-delete"
        label="{{ i18n.t( formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID )[0].transition_name) }}"
        tooltip="{{ i18n.t('Assignee / CAPA - Administrator') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID && (x.value_from == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)).length > 0 }}"
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Transition_New"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="{{ formatDataAsArray(getField_relationship.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID)).length > 0 }}"
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_requestWithdrawl_noJustification"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="6957e"
        hidden="{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Open Modified')[0].project_field_type_valueID ).length == 0 ? true : !(is_current_user_assignee.value || is_current_user_CAPAAdmin.value) }}"
        icon="line/interface-edit-write-1"
        label="{{ i18n.t(formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Open Modified')[0].project_field_type_valueID )[0].transition_name) }}"
        tooltip="{{ i18n.t('Assignee / CAPA - Administrator') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Open Modified')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Transition_New"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="bda3e"
        hidden="{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Resolved')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee.value || is_current_user_CAPAAdmin.value) }}"
        icon="line/interface-file-check-alternate"
        label="{{ i18n.t( formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Resolved')[0].project_field_type_valueID )[0].transition_name) }}"
        tooltip="{{ i18n.t('Assignee / CAPA - Administrator') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Resolved')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Transition_New"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="9a423"
        hidden="{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee.value || is_current_user_CAPAAdmin.value) }}"
        icon={'{{  "/icon:line/natrue-ecology-recycle-2"  }}'}
        label="{{ i18n.t(formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID )[0].transition_name) }}"
        tooltip="{{ i18n.t('Assignee / CAPA - Administrator') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Transition_New"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="a8661"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_CAPAAdmin.value) }}"
        icon="line/interface-file-check-alternate"
        label="{{ i18n.t(formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name) }}"
        tooltip="{{ i18n.t('CAPA - Administrator') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Transition_New"
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
                  "{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="164ef"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawn')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_CAPAAdmin.value) }}"
        icon="line/interface-file-delete"
        label="{{ i18n.t('Withdrawal Accepted') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawn')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Transition_New"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="e4690"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_CAPAAdmin.value) }} "
        icon="line/interface-file-block"
        label="{{ i18n.t(formatDataAsArray(getField_relationship.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID)[0].transition_name) }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID)[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Transition_New"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="e5502"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_CAPAAdmin.value) }}"
        icon="bold/interface-file-block"
        label="{{ i18n.t(formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID )[0].transition_name) }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Transition_New"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="7a1aa"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_CAPAAdmin.value) }}"
        icon="line/interface-file-check"
        label="{{ i18n.t(formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID )[0].transition_name) }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Transition_New"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="47061"
        disabled={false}
        hidden={false}
        label="{{ i18n.t('Print') }}"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ formatDataAsArray(getField_relationship.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp"
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
    </DropdownButton>
    <Button
      id="button54"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="{{ i18n.t(formattedProjectFieldValues.data.by_id['502e8878-020f-4bf1-a0dd-1e867dc656d3'].field_value) }}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="drawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer11" />
    <EditableText
      id="editableText1"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label=""
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      textSize="h4"
      value="{{ getIssue2.data.issue[0] }}"
    >
      <Event
        enabled="{{ !['Closed','QP Rejected'].includes(getIssue2.data.status_value[0]) }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_summary"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Spacer id="spacer10" />
    <Container
      id="collapsibleContainer1"
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
          id="collapsibleTitle1"
          marginType="normal"
          value="#### {{ i18n.t(formattedProjectFieldValues.data.by_id['6751dffc-f041-4432-9e8d-0a8aae3b4a06'].field_value) }}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="Change Details">
        <Include src="./tabbedContainer2.rsx" />
      </View>
    </Container>
    <Include src="./collapsibleContainer8.rsx" />
    <Container
      id="collapsibleContainer4"
      _gap={0}
      disabled="{{ ['Closed','QP Rejected'].includes(getIssue2.data.status_value[0]) }}"
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
          id="collapsibleTitle4"
          marginType="normal"
          value="#### {{ i18n.t(formattedProjectFieldValues.data.by_id['f19a6eaf-ab0e-48dc-b2c1-a12db16636e7'].field_value)}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <TextEditor
          id="richTextEditor6"
          events={[
            {
              ordered: [
                { event: "change" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "updIssue_description" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
                {
                  enabled:
                    "{{ !['Closed','Withdrawn'].includes(getIssue2.data.status_value[0]) }}",
                },
              ],
            },
          ]}
          value={
            "{{ getIssue2.data.description[0] ==  '<p>undefined</p>' || getIssue2.data.description[0] ==  '<p>null</p>' ? \"\" : getIssue2.data.description[0] }}"
          }
        />
      </View>
    </Container>
    <Container
      id="collapsibleContainer5"
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
          id="collapsibleTitle9"
          marginType="normal"
          value="#### {{ i18n.t(formattedProjectFieldValues.data.by_id['fe0724e7-0e5c-43bd-aadf-fd6fb349d4f6'].field_value)}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <Module
          id="attachmentUploader1"
          hidden=""
          issueId="{{ url.searchParams.issueID }}"
          name="Attachment Uploader"
          pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
          project="capa"
          refresh="getS3Files"
        />
        <Table
          id="table5"
          actionsOverflowPosition={2}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getS3Files.data.Contents }}"
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
            size={126}
            summaryAggregationMode="none"
            valueOverride="{{ item.replace(('capa/' + url.searchParams.issueID) + '/','').substring(36) }}"
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
            size={140}
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
              pluginId="downloadS3File"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Action
            id="627f3"
            hidden="{{  (is_current_user_qaManager.value || is_current_user_CAPAAdmin.value) }} "
            icon="line/interface-delete-bin-1"
            label="{{ i18n.t('Delete')}}"
          >
            <Event
              enabled="{{  (is_current_user_assignee.value || is_current_user_CAPAAdmin.value) }} "
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="deleteS3File9"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="getS3Files"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="selectRow"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="tabbedContainer7"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Container
          id="tabbedContainer7"
          _gap={0}
          currentViewKey="{{table5.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
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
              id="tabs7"
              data={[]}
              disabledByIndex={[]}
              hidden="true"
              hiddenByIndex={[]}
              iconByIndex={[]}
              iconPositionByIndex={[]}
              itemMode="static"
              labels={[]}
              navigateContainer={true}
              targetContainerId="tabbedContainer7"
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
              id="image1"
              fit="contain"
              heightType="fixed"
              horizontalAlign="center"
              retoolFileObject=""
              src="{{readFile2.data.Body}}"
            />
          </View>
          <View id="c766d" viewKey="pdf">
            <PDFViewer
              id="pdf1"
              retoolFileObject={{ ordered: [] }}
              showTopBar={true}
              src="{{readFile2.data.Body}}"
            />
          </View>
        </Container>
      </View>
    </Container>
  </Header>
  <View id="03e07" viewKey="Summary (Screen 1)" />
</Container>
