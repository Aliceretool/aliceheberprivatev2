<Container
  id="tabbedContainer41"
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
      id="breadcrumbs7"
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
        appTarget="f7ea03c0-2fb6-11ef-a1ef-1702491107aa"
        itemType="app"
        label="{{i18n.t('Sample Registration Details')}}"
      />
      <Option
        id="fa971"
        appTarget="09c126a0-2fb7-11ef-be7a-532c6ac1ff15"
        itemType="app"
        label="{{ i18n.t(getIssue15.data.issue_index[0]) }}"
      />
    </Breadcrumbs>
    <TagsWidget2
      id="tags7"
      allowWrap={true}
      data="[{{ getIssue15.data.status_value[0] }}]"
      horizontalAlign="center"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
    />
    <Button
      id="button131"
      iconBefore="bold/interface-arrows-left"
      style={{ ordered: [{ background: "rgba(0, 0, 0, 1)" }] }}
      text="{{ i18n.t('Back to List') }}"
    >
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "SPL_Home" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <DropdownButton
      id="dropdownButton8"
      _colorByIndex={["", "", "", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", "", "", ""]}
      _imageByIndex={["", "", "", "", "", "", ""]}
      _values={[
        "Action 3",
        "Action 3",
        "Action 7",
        "Action 6",
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
        id="b7402"
        disabled="{{ ['Accepted','Pending Testing','Approved','Rejected','Pending Review'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value)}}"
        hidden="{{ ['Accepted','Pending Testing','Approved','Rejected','Pending Review'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value)}}"
        icon="line/interface-file-clipboard-text"
        label="{{ i18n.t('Pending Testing') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_addtask"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              { key: "next_test_issue_id" },
              { newValue: "{{uuid.v4()}}" },
            ],
          }}
          pluginId=""
          type="localStorage"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_pending_testing2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="5fdea"
        disabled="{{ ['Accepted','Open','Approved','Rejected','Pending Review'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value)}}"
        hidden="{{ ['Accepted','Open','Approved','Rejected','Pending Review'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value)}}"
        icon="line/interface-arrows-turn-forward"
        label="{{ i18n.t('Send for Review') }}"
        tooltip="{{ i18n.t('QC Supervisors') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalSendForReview3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="81f65"
        disabled="{{ ['Accepted','Approved','Rejected', 'Open', 'Pending Testing'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value || is_current_user_QC_supervisor3.value)  }}"
        hidden="{{ ['Accepted','Approved','Rejected', 'Open', 'Pending Testing'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value || is_current_user_QC_supervisor3.value)  }}"
        icon="line/interface-alert-information-circle"
        label="{{ i18n.t('More Information Needed') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalmoreinfoNeeded3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="d828f"
        disabled="{{ ['Accepted','Rejected', 'Open', 'Pending Testing'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value || is_current_user_QC_supervisor3.value)  }}"
        hidden="{{ ['Accepted','Rejected', 'Open', 'Pending Testing'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value || is_current_user_QC_supervisor3.value)  }}"
        icon="line/interface-validation-check"
        label="{{ i18n.t('Accepted') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{
            ordered: [
              {
                options: {
                  object: {
                    onSuccess: null,
                    onFailure: null,
                    additionalScope: null,
                  },
                },
              },
            ],
          }}
          pluginId="updIssue_accepted"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="8130e"
        disabled="{{ ['Accepted','Approved','Rejected', 'Open'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value || is_current_user_QC_supervisor3.value)  }}"
        hidden="{{ ['Accepted','Approved','Rejected', 'Open'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value || is_current_user_QC_supervisor3.value)  }}"
        icon="line/interface-arrows-turn-backward"
        label="{{ i18n.t('Reject') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Rejection_comments"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="b20b3"
        disabled="{{ formatDataAsArray(getRalatedTests_simplified.data).every(function(item){ return !['Rejected','Closed'].includes(item.status_value) }) }}"
        hidden="{{ ['Rejected', 'Open', 'Pending Testing', 'Pending Review'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value || is_current_user_QC_supervisor3.value)  }}"
        icon="line/interface-favorite-like-1"
        label="{{ i18n.t('Ready for Closure') }}"
        tooltip="{{ i18n.t('All associated Tests must be Closed / Rejected') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_close"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="a9596"
        disabled="{{ ['Open','Pending Testing','Rejected', ].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value || is_current_user_QC_supervisor3.value)  }}"
        hidden="{{ ['Open','Pending Testing','Rejected', ].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value || is_current_user_QC_supervisor3.value)  }}"
        icon="bold/computer-printer-alternate"
        label="{{ i18n.t('Generate Certificate') }}"
      />
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalassign3"
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
        pluginId="modal_addtask"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
        targetId="ac8e8"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID && (x.value_from == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)).length > 0 }}"
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
        enabled="{{ formatDataAsArray(getField_relationship7.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID || x.value_from == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID)).length > 0 }}"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Open Modified')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Modification Rejected')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Withdrawn')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Open')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Resolved')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
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
                "{{ formatDataAsArray(getField_relationship7.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values7.data).filter(x => x.field_value == 'Modification Accepted')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp7"
        targetId="dc908"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_done6"
        targetId="dc908"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </DropdownButton>
    <Button
      id="button132"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="{{ i18n.t('Activity') }}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="drawerFrame9"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "Comments" }] }}
        pluginId="tabbedContainer43"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer30" />
    <EditableText
      id="editableText7"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="{{i18n.t('`Enter` to save, `Esc` to cancel')}}"
      label=""
      labelPosition="top"
      marginType="normal"
      readOnly="{{ ['Approved','Invalid'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
      required={true}
      style={{
        ordered: [
          { fontSize: "h3Font" },
          { fontWeight: "700" },
          { lineHeight: "1.17em" },
        ],
      }}
      textSize="h3"
      value="{{ getIssue15.data.issue[0] }}"
    >
      <Event
        enabled="{{ ['Closed','Rejected'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_summary7"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Spacer id="spacer29" />
    <Container
      id="collapsibleContainer34"
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
          id="collapsibleTitle38"
          marginType="normal"
          value="#### {{i18n.t('Details')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="Change Details">
        <Include src="./tabbedContainer42.rsx" />
      </View>
    </Container>
    <Include src="./collapsibleContainer37.rsx" />
    <Container
      id="collapsibleContainer35"
      _gap={0}
      disabled="{{ ['Complete'].includes(getIssue15.data.status_value[0]) }}"
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
          id="collapsibleTitle39"
          marginType="normal"
          value="#### {{i18n.t('Description')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <TextEditor
          id="richTextEditor12"
          events={[
            {
              ordered: [
                { event: "change" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "updIssue_description7" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
                {
                  enabled:
                    "{{ ['Approved','Invalid'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value ) }}",
                },
              ],
            },
          ]}
          value={
            "{{ getIssue15.data.description[0] ==  '<p>undefined</p>' || getIssue15.data.description[0] ==  '<p>null</p>' ? \"\" : getIssue15.data.description[0] }}"
          }
        />
      </View>
    </Container>
    <Container
      id="collapsibleContainer36"
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
          id="collapsibleTitle40"
          marginType="normal"
          value="#### {{i18n.t('Attachments')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <Module
          id="attachmentUploader7"
          hidden=""
          issueId="{{url.searchParams.issueID}}"
          margin="0"
          name="Attachment Uploader"
          pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
          project="spl"
          refresh="getS3Files7"
        />
        <Table
          id="table24"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getS3Files7.data.Contents }}"
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
            valueOverride="{{ item.replace(('spl/' + url.searchParams.issueID) + '/','').substring(36) }}"
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
              pluginId="downloadS3File7"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="selectRow"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="tabbedContainer44"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Container
          id="tabbedContainer44"
          _gap={0}
          currentViewKey="{{table24.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
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
              id="tabs37"
              data={[]}
              disabledByIndex={[]}
              hidden="true"
              hiddenByIndex={[]}
              iconByIndex={[]}
              iconPositionByIndex={[]}
              itemMode="static"
              labels={[]}
              navigateContainer={true}
              targetContainerId="tabbedContainer44"
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
              id="image16"
              fit="contain"
              heightType="fixed"
              horizontalAlign="center"
              retoolFileObject=""
              src="{{readFile14.data.Body}}"
            />
          </View>
          <View id="c766d" viewKey="pdf">
            <PDFViewer
              id="pdf14"
              retoolFileObject={{ ordered: [] }}
              showTopBar={true}
              src="{{readFile14.data.Body}}"
            />
          </View>
        </Container>
      </View>
    </Container>
  </Header>
  <View id="03e07" viewKey="Summary (Screen 1)">
    <Button
      id="button138"
      disabled="{{ ['Approved','Rejected','Under Review', 'Closed'].includes(getIssue15.data.status_value[0]) ? true : !(is_current_user_assignee7.value)}}"
      style={{ ordered: [{ background: "secondary" }] }}
      text="+ {{i18n.t('Add Tests') }}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modal_addtask"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            { key: "next_test_issue_id" },
            { newValue: "{{uuid.v4()}}" },
          ],
        }}
        pluginId=""
        type="localStorage"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Table
      id="table25"
      actionsOverflowPosition={1}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getRalatedTests.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      showBorder={true}
      showColumnBorders={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="59d33"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="project_type_value"
        label="{{ i18n.t('Project') }}"
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={57.96875}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(_.startCase(item)) }}"
      />
      <Column
        id="b60c9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="issue_index"
        label="{{ i18n.t('Issue No') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={78.890625}
        summaryAggregationMode="none"
      />
      <Column
        id="c4442"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status_value"
        label="{{ i18n.t('Status') }}"
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={105.5625}
        summaryAggregationMode="none"
        valueOverride="{{ i18n.t(_.startCase(item)) }}"
      />
      <Column
        id="84316"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="issue"
        label="{{ i18n.t('Issue') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={174.890625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b23fe"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="issueID"
        label="{{ i18n.t('Issue id') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={240.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="ad1f1"
        alignment="left"
        cellTooltipMode="overflow"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="test"
        label="{{ i18n.t('Test') }}"
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={288}
        summaryAggregationMode="none"
      />
      <Column
        id="11699"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="incident_date"
        label="{{ i18n.t('Incident date') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={87.640625}
        summaryAggregationMode="none"
      />
      <Column
        id="57258"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "d MMM yyyy" }}
        groupAggregationMode="none"
        key="due_date"
        label="{{ i18n.t('Due date') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={125.25}
        summaryAggregationMode="none"
      />
      <Column
        id="ba5a7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="responsible_department_value"
        label="{{ i18n.t('Responsible department value') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={180.8125}
        summaryAggregationMode="none"
      />
      <Column
        id="9a49d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="department_manager"
        label="{{ i18n.t('Department manager') }}"
        placeholder="{{ i18n.t('Enter value') }}"
        position="center"
        size={133.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="8d791"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="assigned_to"
        label="{{ i18n.t('Assigned to') }}"
        position="center"
        size={212.953125}
        summaryAggregationMode="none"
      />
      <Column
        id="00c6b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="project"
        label="{{ i18n.t('Project') }}"
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={60.359375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="ef025"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="project_type"
        label="{{ i18n.t('Project type') }}"
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={81.34375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="344a1"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="assignedfirstName"
        label="{{ i18n.t('Assignedfirst name') }}"
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={120.234375}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="87a2e"
        alignment="left"
        format="avatar"
        formatOptions={{
          showUnderline: "hover",
          underlineStyle: "solid",
          widthType: "fit",
          image: "{{currentSourceRow.assignedAvatarURL}}",
        }}
        groupAggregationMode="none"
        key="assignedAvatarURL"
        label="{{ i18n.t('Assignee') }}"
        placeholder="{{ i18n.t('No user') }}"
        position="center"
        size={119.03125}
        summaryAggregationMode="none"
        valueOverride="{{currentSourceRow.assignedfirstName}} {{currentSourceRow.assignedlastName}}"
      />
      <Column
        id="75dc4"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="reporterAvatarURL"
        label="{{ i18n.t('Reporter avatar url') }}"
        position="center"
        size={496.984375}
        summaryAggregationMode="none"
      />
      <Column
        id="b01f5"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="assignedlastName"
        label="{{ i18n.t('Assignedlast name') }}"
        placeholder="{{ i18n.t('Select option') }}"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Action
        id="5bece"
        icon="bold/interface-edit-pencil"
        label="{{ i18n.t('View Test') }}"
      >
        <Event
          event="clickAction"
          method="openPage"
          params={{
            ordered: [
              { pageName: "SPL_TEST" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "issueID" },
                            { value: "{{table25.selectedRow.issueID}}" },
                          ],
                        },
                      ],
                    },
                    { hashParams: [] },
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
          pluginId="table25"
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
          pluginId="table25"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="1ecbc" viewKey="Tasks (Screen 2)">
    <Table
      id="table23"
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
          pluginId="table23"
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
          pluginId="table23"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="tableTasks2"
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
          pluginId="tableTasks2"
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
          pluginId="tableTasks2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View id="a4207" viewKey="CAPA (Screen 3)" />
</Container>
