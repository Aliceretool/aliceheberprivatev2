<Container
  id="tabbedContainer52"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "canvas" }] }}
>
  <Header>
    <TagsWidget2
      id="tags10"
      allowWrap={true}
      data="[{{ getIssue17.data.status_value[0] }}]"
      horizontalAlign="center"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
    />
    <Breadcrumbs
      id="breadcrumbs9"
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
        appTarget="ba6aec6e-b615-11ee-ab9a-4bf2afd45f66"
        itemType="custom"
        label="{{ i18n.t('SPL')}}"
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
      </Option>
      <Option
        id="7f33b"
        appTarget="d45ab810-b61b-11ee-b0de-fbac4f0702e8"
        disabled={false}
        iconPosition="left"
        itemType="custom"
        label="{{ i18n.t(getReferenceIssue2.data.issue_index[0] )}}"
      >
        <Event
          event="click"
          method="openPage"
          params={{
            ordered: [
              { pageName: "SPL_Detail" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "issueID" },
                            {
                              value:
                                "{{ getIssue17.data.reference_issueID[0] }}",
                            },
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
      </Option>
      <Option
        id="fa971"
        appTarget="b8df9f38-9dde-11ee-bcb5-a7293e5d72e7"
        itemType="custom"
        label="{{ i18n.t(getIssue17.data.issue_index[0]) }}"
      />
    </Breadcrumbs>
    <DropdownButton
      id="dropdownButton11"
      _colorByIndex={["", "", "", "", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", "", "", "", ""]}
      _imageByIndex={["", "", "", "", "", "", "", ""]}
      _values={[
        "Action 5",
        "Action 12",
        "Action 4",
        "Action 7",
        "Action 6",
        "Action 7",
        "Action 8",
        "Action 9",
      ]}
      hidden=""
      icon="bold/interface-setting-menu-1"
      itemMode="static"
      marginType="normal"
      overlayMaxHeight={375}
      style={{ ordered: [{ background: "secondary" }] }}
      text="Actions"
    >
      <Option
        id="a8661"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship11.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending Verification')[0].project_field_type_valueID ).length == 0 ? true : !(is_current_user_assignee9.value || is_current_user_SPLAdmin.value) }}"
        icon="line/interface-file-check"
        label="{{i18n.t(formatDataAsArray(getField_relationship11.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending Verification')[0].project_field_type_valueID )[0].transition_name) }}"
        tooltip="{{ i18n.t('Assignee / CRF - Administrator')}}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship11.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending Verification')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp9"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal_addCommentTransition"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="ac8e8"
        hidden="{{ formatDataAsArray(getField_relationship11.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'TO DO')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending Verification')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_SPLAdmin.value) }}"
        icon="bold/natrue-ecology-recycle-2"
        label="{{ i18n.t(formatDataAsArray(getField_relationship11.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'TO DO')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending Verification')[0].project_field_type_valueID)[0].transition_name) }}"
        tooltip="CRF - Administrator"
      >
        <Event
          enabled=""
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_reopen_pendingVerification2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="bda3e"
        hidden="{{ formatDataAsArray(getField_relationship11.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID)).length == 0 ? true : !(is_current_user_SPLAdmin.value) }}"
        icon="line/interface-file-check-alternate"
        label="{{ i18n.t(formatDataAsArray(getField_relationship11.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Closed')[0].project_field_type_valueID))[0].transition_name) }}"
        tooltip="CRF - Administrator"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_verifiedAndCompleted2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="9a423"
        hidden="{{ formatDataAsArray(getField_relationship11.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_SPLAdmin.value) }}"
        icon={'{{  "/icon:line/natrue-ecology-recycle-2"  }}'}
        label="{{ i18n.t(formatDataAsArray(getField_relationship11.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending')[0].project_field_type_valueID )[0].transition_name )}}"
        tooltip="CRF - Administrator"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_reopen3"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="{{ getReferenceIssue2.data.status_value[0] == 'Done' && getIssue17.data.status_value[0] == 'Closed' }}"
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_parentReopen2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="58b7a"
        disabled="{{ ['TO DO','Pending Testing','Approved','Rejected','Pending Review'].includes(getIssue17.data.status_value[0]) ? true : !(is_current_user_assignee9.value)}}"
        hidden="{{ ['TO DO','Pending Testing','Approved','Rejected','Pending Review'].includes(getIssue17.data.status_value[0]) ? true : !(is_current_user_assignee9.value)}}"
        icon="bold/interface-id-user"
        label="{{ i18n.t('Accepted')}}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_assignToMe9"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_todo"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="0c183"
        disabled="{{ ['TO DO','Closed','Rejected', 'Open', 'Pending Testing'].includes(getIssue17.data.status_value[0]) ? true : !(is_current_user_assignee9.value || is_current_user_SPLAdmin.value)  }}"
        hidden="{{ ['TO DO','Closed','Rejected', 'Open', 'Pending Testing'].includes(getIssue17.data.status_value[0]) ? true : !(is_current_user_assignee9.value || is_current_user_SPLAdmin.value)  }}"
        icon="line/interface-alert-information-circle"
        label="{{ i18n.t('More Information Needed') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_morenifoneeded"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="258fe"
        disabled="{{ ['Pending Testing','Approved','Rejected','Pending Review'].includes(getIssue17.data.status_value[0]) ? true : !(is_current_user_assignee9.value)}}"
        hidden="{{ ['Pending Testing','Approved','Rejected','Pending Review'].includes(getIssue17.data.status_value[0]) ? true : !(is_current_user_assignee9.value)}}"
        icon="line/interface-file-clipboard-check"
        label="{{ i18n.t('Done')}}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_done"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="d0e6c"
        disabled="{{ ['TO DO','Closed','Rejected', 'Open', 'Pending Testing'].includes(getIssue17.data.status_value[0]) ? true : !(is_current_user_assignee9.value || is_current_user_SPLAdmin.value)  }}"
        hidden="{{ ['TO DO','Closed','Rejected', 'Open', 'Pending Testing'].includes(getIssue17.data.status_value[0]) ? true : !(is_current_user_assignee9.value || is_current_user_SPLAdmin.value)  }}"
        icon="line/interface-favorite-like-1"
        label="{{ i18n.t('Verified & Completetd')}}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modalVerifiedandCompleted"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Event
        event="click"
        method="show"
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
        pluginId="modal_impactRiskAnalysis"
        targetId="e4690"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_QAApproved"
        targetId="004b3"
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
                "{{ formatDataAsArray(getField_relationship11.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending Department Review')[0].project_field_type_valueID))[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp9"
        targetId="20a81"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="20a81"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_done8"
        targetId="7a1aa"
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
                "{{ formatDataAsArray(getField_relationship11.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Committee Approved')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp9"
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
                "{{ formatDataAsArray(getField_relationship11.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Awaiting Committee Review')[0].project_field_type_valueID )[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp9"
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
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addTasks"
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
                "{{ formatDataAsArray(getField_relationship11.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp9"
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
        pluginId="updIssue_QAApproved"
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
        pluginId="modal_addTasks"
        targetId="86512"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_startImplementation"
        targetId="3f7ba"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="open"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition"
        targetId="5b64c"
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
                "{{ formatDataAsArray(getField_relationship11.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Pending Department Review')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Awaiting QA Review')[0].project_field_type_valueID) || (x.value_from == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'QA Reviewed')[0].project_field_type_valueID) || (x.value_from == formatDataAsArray(getProject_field_status_values9.data).filter(x => x.field_value == 'Awaiting Committee Review')[0].project_field_type_valueID))[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp9"
        targetId="5b64c"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </DropdownButton>
    <Button
      id="button155"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="{{ i18n.t('Activity')}}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="drawerFrame11"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer34" />
    <EditableText
      id="editableText9"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label=""
      labelPosition="top"
      placeholder="Enter value"
      readOnly="{{ ['Closed'].includes(getIssue17.data.status_value[0]) }}"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      textSize="h4"
      value="{{ getIssue17.data.issue[0] }}"
    />
    <Spacer id="spacer35" />
    <Include src="./collapsibleContainer46.rsx" />
    <Container
      id="collapsibleContainer43"
      currentViewKey="{{ collapsibleContainer43.showBody }}"
      footerPaddingType="normal"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody="true"
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(227, 232, 239)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle47"
          marginType="normal"
          value="#### {{ i18n.t('SPL Details')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="Change Details">
        <Include src="./tabbedContainer6.rsx" />
      </View>
    </Container>
    <Container
      id="collapsibleContainer44"
      footerPaddingType="normal"
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
          id="collapsibleTitle48"
          marginType="normal"
          value="#### {{ i18n.t('Description')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <TextEditor
          id="richTextEditor16"
          events={[
            {
              ordered: [
                { event: "change" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "updIssue_description9" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
                {
                  enabled:
                    "{{ !['Closed'].includes(getIssue17.data.status_value[0]) }}",
                },
              ],
            },
          ]}
          value={
            "{{ getIssue17.data.description[0] ==  '<p>undefined</p>' || getIssue17.data.description[0] ==  '<p>null</p>' ? \"\" : getIssue17.data.description[0] }}"
          }
        />
      </View>
    </Container>
    <Container
      id="collapsibleContainer45"
      footerPaddingType="normal"
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
          id="collapsibleTitle49"
          marginType="normal"
          value="#### {{ i18n.t('Attachments')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <Module
          id="attachmentUploader10"
          hidden="{{ ['Closed','QP Rejected'].includes(getIssue17.data.status_value[0]) }}"
          issueId="{{url.searchParams.issueID}}"
          margin="0"
          name="Attachment Uploader"
          pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
          project="test"
          refresh="getS3Files10"
        />
        <Table
          id="table43"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getS3Files10.data.Contents }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[{ object: { columnId: "6697a", direction: "asc" } }]}
          enableSaveActions={true}
          hidden=""
          primaryKeyColumnId="07d1b"
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
            size={257}
            summaryAggregationMode="none"
            valueOverride="{{ item.replace(('test/' + url.searchParams.issueID) + '/','').substring(36) }}"
          />
          <Column
            id="a93a9"
            alignment="center"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "compact" }}
            groupAggregationMode="sum"
            key="Size"
            label="{{ i18n.t('Size (MB)')}}"
            placeholder="Enter value"
            position="center"
            size={99}
            summaryAggregationMode="none"
          />
          <Column
            id="827a3"
            alignment="left"
            format="datetime"
            formatOptions={{ dateFormat: "dd MMM yyyy" }}
            groupAggregationMode="none"
            key="LastModified"
            label="{{ i18n.t('Last Modified')}}"
            placeholder="Enter value"
            position="center"
            size={162.390625}
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
            label="Checksum algorithm"
            placeholder="Select options"
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
            label="Storage class"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
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
              pluginId="downloadS3File9"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
        </Table>
      </View>
    </Container>
  </Header>
  <View id="03e07" viewKey="Summary (Screen 1)" />
</Container>
