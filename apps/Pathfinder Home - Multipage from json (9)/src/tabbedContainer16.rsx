<Container
  id="tabbedContainer16"
  _gap={0}
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
      id="tags3"
      allowWrap={true}
      data="[{{ getIssue6.data.status_value[0] }}]"
      horizontalAlign="center"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
      tooltipByIndex="{{ getIssue6.data.status_value[0] }}"
    />
    <Button
      id="button91"
      iconBefore="bold/interface-arrows-left"
      style={{ ordered: [{ background: "rgba(0, 0, 0, 1)" }] }}
      text="{{ i18n.t('Back to all CRF') }}"
    >
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "CRF_Home" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <DropdownButton
      id="dropdownButton4"
      _colorByIndex={["", "", "", "", "", "", "", "", "", "", "", ""]}
      _fallbackTextByIndex={["", "", "", "", "", "", "", "", "", "", "", ""]}
      _imageByIndex={["", "", "", "", "", "", "", "", "", "", "", ""]}
      _values={[
        "Action 3",
        "Action 5",
        "Action 12",
        "Action 4",
        "Action 7",
        "Action 5",
        "Action 6",
        "Action 8",
        "Action 9",
        "Action 9",
        "Action 9",
        "Action 14",
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
        id="86512"
        hidden="{{ !['Pending Department Review','Pending', 'QA Reviewed', 'Awaiting QA Review','Awaiting Committee Review','In Progress'].includes(getIssue6.data.status_value[0]) ? true : (['Pending Department Review', 'Awaiting QA Review'].includes(getIssue6.data.status_value[0]) && !(is_current_user_assignee3.value)) || (['Pending','QA Reviewed','Awaiting Committee Review','Committee Approved','In Progress'].includes(getIssue6.data.status_value[0] ) && !(is_current_user_assignee3.value || is_current_user_CRFAdmin.value)) }}"
        icon="line/interface-add-square"
        label="{{ i18n.t('Add Tasks') }}"
      >
        <Event
          event="click"
          method="open"
          params={{ ordered: [] }}
          pluginId="modal_addTasks"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              { key: "next_crf_task_id" },
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
        id="a8661"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'CR Rejected')[0].project_field_type_valueID ).length == 0 ? true : !(is_current_user_assignee3.value) }}"
        icon="line/interface-file-block"
        label="{{ i18n.t('Reject') }}"
        tooltip="{{ i18n.t('Assignee') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentTransitionNew2"
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
                  "{{ formatDataAsArray(getField_relationship3.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'CR Rejected')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp3"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="ac8e8"
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Pending Department Review')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Pending')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee3.value || is_current_user_CRFAdmin.value) }}"
        icon="bold/interface-file-check"
        label="{{ i18n.t('Send for Review') }}"
        tooltip="{{ i18n.t('Assignee / CRF - Administrator') }}"
      >
        <Event
          enabled=""
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_sendForReview"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="bda3e"
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Pending')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'CR Rejected')[0].project_field_type_valueID)).length == 0 ? true : !(is_current_user_assignee3.value || is_current_user_CRFAdmin.value) }}"
        icon="line/interface-file-block"
        label="{{ i18n.t('Reopen') }}"
        tooltip="{{ i18n.t('Assignee / CRF - Administrator') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_reopen"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="9a423"
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Awaiting QA Review')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee3.value) }}"
        icon={'{{  "/icon:line/interface-file-check-alternate"  }}'}
        label="{{ i18n.t('Approved') }}"
        tooltip="{{ i18n.t('Assignee') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_approved2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="5b64c"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Pending Department Review')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Awaiting QA Review')[0].project_field_type_valueID) || (x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'QA Reviewed')[0].project_field_type_valueID) || (x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Awaiting Committee Review')[0].project_field_type_valueID)).length == 0 ? true : !(is_current_user_assignee3.value || is_current_user_CRFAdmin.value) }}"
        icon="line/interface-file-block"
        label="{{ i18n.t('Reject') }}"
        tooltip="{{ i18n.t('Assignee / CRF - Administrator') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentTransitionNew2"
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
                  "{{ formatDataAsArray(getField_relationship3.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Pending Department Review')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Awaiting QA Review')[0].project_field_type_valueID) || (x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'QA Reviewed')[0].project_field_type_valueID) || (x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Awaiting Committee Review')[0].project_field_type_valueID))[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp3"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="e4690"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'QA Reviewed')[0].project_field_type_valueID ).length == 0 ? true : !(is_current_user_assignee3.value || is_current_user_CRFAdmin.value) }} "
        icon="line/interface-file-check-alternate"
        label="{{ i18n.t('Impact & Risk Analysis') }}"
        tooltip="{{ i18n.t('Assignee / CRF - Administrator') }}"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_Risk_Impact_New"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setCurrentViewIndex"
          params={{ ordered: [{ viewIndex: "0" }] }}
          pluginId="steppedContainer2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getRiskAnalysis"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="164ef"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Awaiting Committee Review')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee3.value || is_current_user_CRFAdmin.value) }}"
        icon="bold/interface-file-check-alternate"
        label="{{ i18n.t('Send for Committee Review') }}"
        tooltip="{{ i18n.t('Assignee / CRF - Administrator') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship3.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Awaiting Committee Review')[0].project_field_type_valueID )[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp3"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentTransitionNew2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="004b3"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'QA Approved')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_CRFAdmin.value || is_current_user_qaManager3.value || is_current_user_qualifiedPerson3.value) }}"
        icon="line/interface-file-check"
        label="{{ i18n.t('QA Approved') }}"
        tooltip="{{ i18n.t('CRF - Administrator / QA Manager / Qualified Person') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_QAApproved"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="3f7ba"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'In Progress')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee3.value || is_current_user_CRFAdmin.value || is_current_user_qaManager3.value || is_current_user_qualifiedPerson3.value) }}"
        icon="line/interface-file-check"
        label="{{ i18n.t('Start Implementation') }}"
        tooltip="{{ i18n.t('Assignee / CRF - Administrator / QA Manager / Qualified Person') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_startImplementation"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="7a1aa"
        disabled="{{ formatDataAsArray(getRelatedTasks.data).every(function(item){ return !['Closed'].includes(item.task_status_value) }) }}"
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Done')[0].project_field_type_valueID).length == 0 ? true : !(is_current_user_assignee3.value || is_current_user_CRFAdmin.value) }}"
        icon="line/interface-file-check"
        label="{{ i18n.t('Done') }}"
        tooltip="{{ i18n.t('Assignee / CRF - Administrator
All associated Tasks must be 'Closed'') }}"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updIssue_done2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="20a81"
        disabled={false}
        hidden="{{ formatDataAsArray(getField_relationship3.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Pending')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Pending Department Review')[0].project_field_type_valueID)).length == 0 ? true : !(is_current_user_assignee3.value) }}"
        icon="bold/interface-edit-write-1"
        label="{{ i18n.t('More Information Needed') }}"
        tooltip="{{ i18n.t('Assignee') }}"
      >
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ formatDataAsArray(getField_relationship3.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Pending')[0].project_field_type_valueID) && (x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Pending Department Review')[0].project_field_type_valueID))[0].transition_name }}",
              },
            ],
          }}
          pluginId="transitionNameTemp3"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="modal_AddCommentTransitionNew2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_committeeApproved"
        targetId="e5502"
        type="datasource"
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
                "{{ formatDataAsArray(getField_relationship3.data).filter(x => (x.value_to == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Withdrawl Requested')[0].project_field_type_valueID) && x.value_from == formatDataAsArray(getProject_field_status_values3.data).filter(x => x.field_value == 'Reopened')[0].project_field_type_valueID)[0].transition_name }}",
            },
          ],
        }}
        pluginId="transitionNameTemp3"
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
        pluginId="modal_assign"
        targetId="f6e02"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </DropdownButton>
    <Button
      id="button92"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="{{ i18n.t('Activity') }}"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="drawerFrame4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Breadcrumbs
      id="breadcrumbs3"
      itemMode="static"
      marginType="normal"
      value="{{ retoolContext.appUuid }}"
    >
      <Option
        id="3bf2e"
        appTarget="110a7f0e-9d42-11ee-8c49-f34e2402ef1e"
        itemType="custom"
        label="{{ i18n.t('Home') }}"
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
        label="{{ i18n.t('Change Control') }}"
      >
        <Event
          event="click"
          method="openPage"
          params={{ ordered: [{ pageName: "CRF_Home" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option
        id="fa971"
        appTarget="d45ab810-b61b-11ee-b0de-fbac4f0702e8"
        itemType="custom"
        label="{{ i18n.t(getIssue6.data.issue_index[0]) }}"
      />
    </Breadcrumbs>
    <Spacer id="spacer16" />
    <EditableText
      id="editableText3"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label=""
      labelPosition="top"
      marginType="normal"
      placeholder="{{ i18n.t('Enter value') }}"
      readOnly="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      textSize="h4"
      value="{{ getIssue6.data.issue[0] }}"
    >
      <Event
        enabled="{{ ['Done','In Progress'].includes(getIssue6.data.status_value[0]) }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_summary3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Spacer id="spacer17" />
    <Container
      id="collapsibleContainer18"
      _gap={0}
      disabled=""
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
          id="collapsibleTitle18"
          marginType="normal"
          value="#### {{ i18n.t('Details')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="Change Details">
        <Include src="./tabbedContainer17.rsx" />
      </View>
    </Container>
    <Include src="./collapsibleContainer21.rsx" />
    <Container
      id="collapsibleContainer19"
      _gap={0}
      disabled={
        '{{ getIssue6.data.status_value[0] = "CR Rejected" }} or {{ getIssue6.data.status_value[0] = "Done" }}'
      }
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
          id="collapsibleTitle20"
          marginType="normal"
          value="#### {{i18n.t('Description')}}"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <TextEditor
          id="richTextEditor8"
          events={[
            {
              ordered: [
                { event: "change" },
                { type: "datasource" },
                { method: "trigger" },
                { pluginId: "updIssue_description3" },
                { targetId: null },
                { params: { ordered: [] } },
                { waitType: "debounce" },
                { waitMs: "0" },
                {
                  enabled:
                    "{{ !['Done','CRP Rejected'].includes(getIssue6.data.status_value[0]) }}",
                },
              ],
            },
          ]}
          value={
            "{{ getIssue6.data.description[0] ==  '<p>undefined</p>' || getIssue6.data.description[0] ==  '<p>null</p>' ? \"\" : getIssue6.data.description[0] }}"
          }
        />
      </View>
    </Container>
    <Container
      id="collapsibleContainer14"
      _gap={0}
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
          id="collapsibleTitle19"
          marginType="normal"
          value="#### {{ i18n.t('Linked Tasks(s)')}}
"
          verticalAlign="center"
        />
        <Button
          id="button99"
          hidden="{{ !['Pending Department Review','Pending', 'Awaiting QA Review','QA Reviewed','Awaiting Committee Review','In Progress'].includes(getIssue6.data.status_value[0]) ? true : (['Pending Department Review', 'Awaiting QA Review'].includes(getIssue6.data.status_value[0]) && !(is_current_user_assignee3.value)) || (['Pending','QA Reviewed','Awaiting Committee Review','Committee Approved','In Progress'].includes(getIssue6.data.status_value[0] ) && !(is_current_user_assignee3.value || is_current_user_CRFAdmin.value)) }}"
          style={{ ordered: [{ background: "secondary" }] }}
          text="{{ i18n.t('+ Add Tasks') }}"
        >
          <Event
            event="click"
            method="open"
            params={{ ordered: [] }}
            pluginId="modal_addTasks"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="setValue"
            params={{
              ordered: [
                { key: "next_crf_task_id" },
                { newValue: "{{ uuid.v4() }}" },
              ],
            }}
            pluginId=""
            type="localStorage"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="b5896" viewKey="View 1">
        <Table
          id="table_relatedTasks2"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getRelatedCRFTasks.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[{ object: { columnId: "6697a", direction: "asc" } }]}
          groupByColumns={{}}
          heightType="auto"
          hidden=""
          primaryKeyColumnId="bfd51"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{ headerBackground: "canvas" }}
          toolbarPosition="bottom"
        >
          <Column
            id="bfd51"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="issueID"
            label="{{ i18n.t('IssueID') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            referenceId="issueId"
            size={100}
          />
          <Column
            id="7b08c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="issue_index"
            label="{{ i18n.t('Task No') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="left"
            size={74}
          >
            <Event
              event="clickCell"
              method="openApp"
              params={{
                ordered: [
                  { uuid: "54e268e0-becb-11ee-8506-73ceea6c5a43" },
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
          </Column>
          <Column
            id="67a61"
            alignment="center"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status_value"
            label="{{ i18n.t('Status') }}"
            optionList={{ mode: "mapped" }}
            placeholder="{{ i18n.t('Select option') }}"
            position="left"
            size={91}
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="48e11"
            alignment="left"
            cellTooltipMode="overflow"
            format="string"
            groupAggregationMode="none"
            key="issue"
            label="{{ i18n.t('Action Summary') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={283}
          >
            <Event
              event="clickCell"
              method="openApp"
              params={{
                ordered: [
                  { uuid: "54e268e0-becb-11ee-8506-73ceea6c5a43" },
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
          </Column>
          <Column
            id="25c7d"
            alignment="left"
            format="html"
            groupAggregationMode="none"
            hidden="true"
            key="description"
            label="{{ i18n.t('Action Description') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            referenceId="actionDescription"
            size={173}
          />
          <Column
            id="6697a"
            alignment="center"
            editable="true"
            format="date"
            groupAggregationMode="none"
            key="due_date"
            label="{{ i18n.t('Due Date') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={79.9375}
          />
          <Column
            id="c97c4"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="reference_issueID"
            label="{{ i18n.t('Parent Issue') }}"
            optionList={{
              mode: "mapped",
              mappedData: "{{ getCRFIssues.data }}",
              valueByIndex: "{{ item.issueID }}",
              labelByIndex: "{{ item.issue }}",
            }}
            placeholder="{{ i18n.t('Select option') }}"
            position="center"
            referenceId="issueID"
            size={164.796875}
            valueOverride="{{ item }}"
          />
          <Column
            id="7f2ba"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="assigned_to"
            label="{{ i18n.t('Assigned To') }}"
            optionList={{
              mode: "mapped",
              mappedData: "{{ getUsers4.data }}",
              valueByIndex: "{{ item.email }}",
              labelByIndex: "{{ `${item.firstName} ${item.lastName}` }}",
            }}
            placeholder="{{ i18n.t('Select option') }}"
            position="center"
            referenceId="assignedTo"
            size={124}
            summaryAggregationMode="none"
          />
          <Column
            id="121bf"
            alignment="left"
            format="avatar"
            formatOptions={{
              showUnderline: "hover",
              underlineStyle: "solid",
              image: "{{currentSourceRow.avatarURL}}",
            }}
            groupAggregationMode="none"
            key="avatarURL"
            label="{{ i18n.t('Assignee') }}"
            placeholder="{{ i18n.t('No user') }}"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}"
          />
          <Action
            id="05e84"
            icon="bold/interface-arrows-expand-5-alternate"
            label="{{ i18n.t('View Task') }}"
          >
            <Event
              event="clickAction"
              method="openPage"
              params={{
                ordered: [
                  { pageName: "CRF_Task" },
                  {
                    options: {
                      ordered: [
                        {
                          queryParams: [
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
              pluginId="table_relatedTasks2"
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
              pluginId="table_relatedTasks2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updTasks2"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="collapsibleContainer20"
      _gap={0}
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
          id="collapsibleTitle21"
          marginType="normal"
          value="#### {{ i18n.t('Attachments')}}
"
          verticalAlign="center"
        />
      </Header>
      <View id="b5896" viewKey="View 1">
        <Module
          id="attachmentUploader3"
          hidden="{{ ['Closed','QP Rejected'].includes(getIssue6.data.status_value[0]) }}"
          issueId="{{url.searchParams.issueID}}"
          margin="0"
          name="Attachment Uploader"
          pageUuid="d8e7ce81-b66a-4d7f-8b46-e94fed6d04e4"
          project="crf"
          refresh="getS3Files3"
        />
        <Table
          id="table12"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getS3Files3.data.Contents }}"
          defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
          defaultSort={[{ object: { columnId: "6697a", direction: "asc" } }]}
          emptyMessage="No attachments"
          enableSaveActions={true}
          hidden="{{ !getS3Files3.data }}"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          style={{ headerBackground: "canvas" }}
          toolbarPosition="bottom"
        >
          <Column
            id="220d2"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="Key"
            label="{{ i18n.t('File name') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            referenceId="name"
            size={396}
            summaryAggregationMode="none"
            valueOverride="{{ item.replace(('crf/' + getIssue6.data.issueID ) + '/','').substring(36) }}"
          />
          <Column
            id="f0050"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="Key"
            label="{{ i18n.t('Key') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={257}
            summaryAggregationMode="none"
          />
          <Column
            id="827a3"
            alignment="left"
            format="datetime"
            formatOptions={{ dateFormat: "dd MMM yyyy" }}
            groupAggregationMode="none"
            key="LastModified"
            label="{{ i18n.t('Last Modified') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={228.390625}
            summaryAggregationMode="none"
          />
          <Column
            id="a93a9"
            alignment="center"
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
          <Action
            id="6014a"
            icon="bold/interface-download-button-2"
            label="{{ i18n.t('Download') }}"
          >
            <Event
              event="clickAction"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="downloadS3File3"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="selectRow"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="tabbedContainer18"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Container
          id="tabbedContainer18"
          _gap={0}
          currentViewKey="{{table12.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
          enableFullBleed={true}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          heightType="fixed"
          hidden="true"
          overflowType="hidden"
          padding="12px"
          showBody={true}
          showHeader={true}
        >
          <Header>
            <Tabs
              id="tabs17"
              hidden="true"
              itemMode="static"
              navigateContainer={true}
              targetContainerId="tabbedContainer18"
              value="{{ self.values[0] }}"
            >
              <Option id="f4d61" value="Tab 1" />
              <Option id="e1a61" value="Tab 2" />
              <Option id="2ce82" value="Tab 3" />
            </Tabs>
          </Header>
          <View id="9cd43" viewKey="image">
            <Image
              id="image8"
              fit="contain"
              heightType="fixed"
              horizontalAlign="center"
              retoolFileObject=""
              src="{{ readFile6.data.Body }}"
            />
          </View>
          <View id="c766d" viewKey="pdf">
            <PDFViewer
              id="pdf6"
              showTopBar={true}
              src="{{ readFile6.data.Body }}"
            />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="collapsibleContainer17"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ formatDataAsArray(getIssue_approval.data).length == 0 || ['Pending','Pending Department Review', 'CR Rejected', 'Awaiting QA Review','QA Reviewed'].includes(getIssue6.data.status_value[0])}}"
      marginType="normal"
      padding="12px"
      showBody={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(227, 232, 239)" }] }}
    >
      <Header>
        <Text
          id="collapsibleTitle17"
          marginType="normal"
          value="#### Approval Committee"
          verticalAlign="center"
        />
      </Header>
      <View id="8ef7c" viewKey="View 1">
        <ProgressBar
          id="progressBar1"
          label=""
          marginType="normal"
          value="{{ (getIssue_approval_progress.data.processed[0] / getIssue_approval_progress.data.all_records[0]) * 100 }}"
        />
        <Table
          id="table_crfApprovers"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getIssue_approval.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[{ object: { columnId: "72975", direction: "desc" } }]}
          dynamicRowHeights={true}
          enableSaveActions={true}
          showBorder={true}
          showColumnBorders={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="f8d98"
            alignment="left"
            format="avatar"
            formatOptions={{ image: "{{currentSourceRow.avatarURL}}" }}
            groupAggregationMode="none"
            label="{{ i18n.t('Approver') }}"
            placeholder="{{ i18n.t('No user') }}"
            position="left"
            referenceId="approver"
            size={117.640625}
            summaryAggregationMode="none"
            valueOverride="{{currentSourceRow.firstName}} {{currentSourceRow.lastName}}"
          />
          <Column
            id="b7d2a"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="approver"
            label="{{ i18n.t('Approver_hide') }}"
            optionList={{
              mode: "mapped",
              mappedData: "{{ getUsers4.data }}",
              valueByIndex: "{{ item.userID }}",
              labelByIndex: "{{ `${item.firstName} ${item.lastName}` }}",
            }}
            placeholder="{{ i18n.t('Select option') }}"
            position="center"
            size={100.515625}
            summaryAggregationMode="none"
          />
          <Column
            id="52195"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="issueID"
            label="{{ i18n.t('Issue id') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={278.4375}
            summaryAggregationMode="none"
          />
          <Column
            id="7f5b0"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="issue_approvalID"
            label="{{ i18n.t('Issue approval id') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={279.5}
            summaryAggregationMode="none"
          />
          <Column
            id="6911b"
            alignment="center"
            format="string"
            groupAggregationMode="none"
            key="approval_status"
            label="{{ i18n.t('Status') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={75.765625}
            summaryAggregationMode="none"
          />
          <Column
            id="5f9fa"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            hidden="true"
            key="avatarURL"
            label="{{ i18n.t('Avatar url') }}"
            position="center"
            size={348.25}
            summaryAggregationMode="none"
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
            id="80457"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            hidden="true"
            key="email"
            label="{{ i18n.t('Email') }}"
            position="center"
            size={165.96875}
            summaryAggregationMode="none"
          >
            <Event
              event="clickCell"
              method="openUrl"
              params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="a3110"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="firstName"
            label="{{ i18n.t('First name') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={77.109375}
            summaryAggregationMode="none"
          />
          <Column
            id="0e298"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="lastName"
            label="{{ i18n.t('Last name') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={75.875}
            summaryAggregationMode="none"
          />
          <Column
            id="dd761"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            hidden="true"
            key="approval_dateTime"
            label="{{ i18n.t('Approval date time') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={148.171875}
            summaryAggregationMode="none"
          />
          <Column
            id="d10f9"
            alignment="center"
            cellTooltip="{{item}}"
            cellTooltipMode="custom"
            format="html"
            formatOptions={{
              showUnderline: "hover",
              underlineStyle: "solid",
              widthType: "fit",
            }}
            groupAggregationMode="none"
            key="signature_url"
            label="{{ i18n.t('Signature') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={72.0625}
            summaryAggregationMode="none"
            valueOverride={'<img src="{{item}}">'}
          />
          <Column
            id="7af6e"
            alignment="left"
            editableOptions={{ showStepper: true }}
            format="datetime"
            formatOptions={{ automaticColors: true, dateFormat: "d MMM yyyy" }}
            groupAggregationMode="sum"
            key="approval_dateTime"
            label="{{ i18n.t('Approval date & time') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={144.859375}
            summaryAggregationMode="none"
          />
          <Column
            id="8b851"
            alignment="center"
            format="string"
            groupAggregationMode="none"
            key="ip_address"
            label="{{ i18n.t('IP Address') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={110.359375}
            summaryAggregationMode="none"
          />
          <Column
            id="91dae"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="executed_by"
            label="{{ i18n.t('Executed by') }}"
            placeholder="{{ i18n.t('Select option') }}"
            position="center"
            size={184.84375}
            summaryAggregationMode="none"
          />
          <Column
            id="2fbaf"
            alignment="left"
            format="avatar"
            formatOptions={{ image: "{{currentSourceRow.ex_avatarURL}}" }}
            groupAggregationMode="none"
            key="ex_avatarURL"
            label="{{ i18n.t('Executed By') }}"
            placeholder="{{ i18n.t('No user') }}"
            position="center"
            referenceId="executedBy"
            size={109.765625}
            summaryAggregationMode="none"
            valueOverride="{{currentSourceRow.ex_firstname}} {{currentSourceRow.ex_lastname}}"
          />
          <Column
            id="c1cee"
            alignment="center"
            cellTooltipMode="overflow"
            editableOptions={{ showStepper: true, alwaysShowCheckboxes: false }}
            format="boolean"
            formatOptions={{
              automaticColors: true,
              falseIcon: "line/interface-remove-circle",
            }}
            groupAggregationMode="sum"
            hidden="true"
            key="crf_administrator_override"
            label="{{ i18n.t('Admin') }}"
            placeholder="{{ i18n.t('Enter value') }}"
            position="center"
            size={53.234375}
            summaryAggregationMode="none"
          />
          <Column
            id="b58de"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="ex_firstname"
            label="{{ i18n.t('Ex firstname') }}"
            placeholder="{{ i18n.t('Select option') }}"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="a1be5"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            hidden="true"
            key="ex_lastname"
            label="{{ i18n.t('Ex lastname') }}"
            placeholder="{{ i18n.t('Select option') }}"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="48db3"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            hidden="true"
            key="ex_email"
            label="{{ i18n.t('Ex email') }}"
            position="center"
            size={100}
            summaryAggregationMode="none"
          >
            <Event
              event="clickCell"
              method="openUrl"
              params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="8a3cf"
            alignment="left"
            format="link"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            hidden="true"
            key="ex_avatar"
            label="{{ i18n.t('Ex avatar') }}"
            position="center"
            size={100}
            summaryAggregationMode="none"
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
          <Action
            id="be42d"
            disabled="{{ !(currentSourceRow.approver == formatDataAsArray(getUsers4.data).filter(x => x.email == current_user.email)[0].userID || is_current_user_CRFAdmin.value) || ['Approved','Rejected'].includes(currentSourceRow.approval_status) }} "
            icon="bold/interface-validation-check-circle"
            label="{{ i18n.t('Approve') }}"
          >
            <Event
              event="clickAction"
              method="show"
              params={{ ordered: [] }}
              pluginId="modalFrame_crfSignature"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "approve" }] }}
              pluginId="approval_transition"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Action
            id="02fc4"
            disabled="{{ !(currentSourceRow.approver == formatDataAsArray(getUsers4.data).filter(x => x.email == current_user.email)[0].userID || is_current_user_CRFAdmin.value) || ['Approved','Rejected'].includes(currentSourceRow.approval_status) }}"
            icon="bold/interface-alert-warning-diamond"
            label="{{ i18n.t('Reject') }}"
          >
            <Event
              event="clickAction"
              method="show"
              params={{ ordered: [] }}
              pluginId="modalFrame_crfSignature"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="setValue"
              params={{ ordered: [{ value: "reject" }] }}
              pluginId="approval_transition"
              type="state"
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
              pluginId="table_crfApprovers"
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
              pluginId="table_crfApprovers"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
  </Header>
  <View id="03e07" viewKey="Summary (Screen 1)" />
</Container>
