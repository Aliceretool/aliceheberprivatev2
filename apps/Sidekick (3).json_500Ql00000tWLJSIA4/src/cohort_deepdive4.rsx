<ModalFrame
  id="cohort_deepdive4"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="fullScreen"
>
  <Header>
    <Text id="modalTitle5" value="### Deep Dive" verticalAlign="center" />
    <Button
      id="modalCloseButton10"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="e51d97ca"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="cohort_deepdive4"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="cohort_dd_search4"
      label="Search"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Multiselect
      id="cohort_dd_cohortSelect4"
      captionByIndex=""
      colorByIndex=""
      data="{{ getFilterOptions_dd3.value.cohorts }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Cohort"
      labelPosition="top"
      labels="{{item.label}}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex="{{item.label}}"
      value="{{ cohort_cohortSelect4.value }}"
      values="{{item.value}}"
      wrapTags={true}
    >
      <Event
        id="21ab0bda"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table3"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_dd_companySelect4"
      captionByIndex=""
      data="{{ getFilterOptions_dd3.value.companies }}"
      emptyMessage="No options"
      label="Company"
      labelPosition="top"
      labels="{{item.value}}"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex="{{item.value}}"
      value="{{ cohort_companySelect4.value }}"
      values="{{item.value}}"
      wrapTags={true}
    >
      <Event
        id="576478e4"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table3"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_dd_statusSelect4"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Status"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value={'"On-Programme"'}
      values=""
      wrapTags={true}
    >
      <Option id="5297e" disabled={false} hidden={false} value="On-Programme" />
      <Option id="53c6d" disabled={false} hidden={false} value="Non-Starter" />
      <Option id="6d749" disabled={false} hidden={false} value="No-Show" />
      <Option
        id="2cf06"
        disabled={false}
        hidden={false}
        value="Completed On-Time"
      />
      <Option
        id="d31a4"
        disabled={false}
        hidden={false}
        value="Completed Late"
      />
      <Option id="ae79c" disabled={false} hidden={false} value="Post-Gateway" />
      <Option id="bb2ae" disabled={false} hidden={false} value="On-BIL" />
      <Event
        id="7d4a0e4f"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table3"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_dd_riskSelect4"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Risk Level"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ cohort_riskSelect3.value }}"
      values=""
      wrapTags={true}
    >
      <Option id="e4287" disabled={false} hidden={false} value="Very High" />
      <Option id="7b322" disabled={false} hidden={false} value="High" />
      <Option id="7c413" disabled={false} hidden={false} value="Medium" />
      <Option id="bfb86" disabled={false} hidden={false} value="Low" />
      <Event
        id="83ae75af"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table3"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Multiselect
      id="cohort_dd_coachSelect4"
      data="{{ cohort_dd_coach_dropdown3.data }}"
      emptyMessage="No options"
      hidden="true"
      label="Coach"
      labelPosition="top"
      labels={'{{ item["gh_apprenticeship.coach_full_name"] }}'}
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      value=""
      values={'{{ item["gh_apprenticeship.coach_full_name"] }}'}
      wrapTags={true}
    >
      <Event
        id="3f5b75fd"
        event="change"
        method="trigger"
        params={{}}
        pluginId="cohort_dd_learners_table3"
        type="datasource"
        waitMs="500"
        waitType="debounce"
      />
    </Multiselect>
    <Switch
      id="view_switcher3"
      label="Full View"
      labelCaption="Switch to EOL Focus"
      value="true"
    />
    <Table
      id="cohort_dd_table12"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{mergedSortedTableData_dd2.value}}"
      defaultFilters={{
        0: {
          id: "dd570",
          columnId: "f9a6b",
          operator: "intersects",
          value: "{{ cohort_dd_cohortSelect4.value }}",
          disabled: false,
        },
        1: {
          id: "af58e",
          columnId: "4f6ec",
          operator: "intersects",
          value: "{{cohort_dd_companySelect4.value}}",
          disabled: false,
        },
        2: {
          id: "0e866",
          columnId: "a5b5f",
          operator: "intersects",
          value: "{{ cohort_dd_riskSelect4.value }}",
          disabled: false,
        },
        3: {
          id: "d9832",
          columnId: "8a644",
          operator: "includes",
          value: "{{cohort_dd_statusSelect4.value}}",
          disabled: false,
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      groupByColumns={{}}
      headerTextWrap={true}
      heightType="auto"
      limitOffsetRowCount="{{ dd }}"
      primaryKeyColumnId="3c2e7"
      rowHeight="small"
      searchTerm="{{ cohort_dd_search4.value }}"
      showFooter={true}
      showHeader={true}
      style={{}}
    >
      <Column
        id="e9ee4"
        alignment="left"
        cellTooltip="Open Learner Page"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/interface-user-profile-focus",
          buttonColor: "rgba(0, 0, 0, 0)",
        }}
        groupAggregationMode="none"
        hidden="false"
        placeholder="Enter value"
        position="left"
        referenceId="Learner Profile"
        size={30}
        valueOverride=" "
      >
        <Event
          id="39a50fb1"
          event="clickCell"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="75b38ceb"
          event="clickCell"
          method="openPage"
          params={{
            options: {
              passDataWith: "urlParams",
              queryParams: [
                { key: "UserID", value: "{{ currentSourceRow.email }}" },
              ],
            },
            pageName: "indvidual_learner_view",
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="6c7d0"
        alignment="left"
        cellTooltip="Chat to Learner"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/mail-chat-bubble-oval",
          buttonColor: "rgba(0, 0, 0, 0)",
          iconAfter: "",
        }}
        groupAggregationMode="none"
        hidden="false"
        placeholder="Enter value"
        position="left"
        referenceId="sendCoachMessage"
        size={52}
        valueOverride=" "
      >
        <Event
          id="08ddbe15"
          event="clickCell"
          method="openUrl"
          params={{
            map: {
              url: "https://platform.multiverse.io/manager/me?chat=User:{{ selected_user.value.id }}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="27d1e"
        alignment="left"
        cellTooltip="Send Email, CC Manager"
        cellTooltipMode="custom"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          buttonColor: "rgba(0, 0, 0, 0)",
          iconBefore: "line/mail-inbox-envelope-add-1",
        }}
        groupAggregationMode="none"
        placeholder="Enter value"
        position="left"
        referenceId="sendEmail"
        size={30}
        valueOverride=" "
      >
        <Event
          id="19d49163"
          event="clickCell"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow.learner.email}}&cc={{ currentSourceRow.apprentice_manager.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="94e9c"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="learner"
        label="Learner"
        placeholder="Enter value"
        position="left"
        referenceId="Learner"
        size={104}
        valueOverride="{{item.first_name}}{{ item.last_name }}"
      />
      <Column
        id="a5b5f"
        alignment="left"
        cellTooltip={
          'Risk Prediction Date: {{ currentSourceRow.withdrawal_risk?.prediction_timestamp ? moment(currentSourceRow.withdrawal_risk.prediction_timestamp).format("DD-MM-YYYY") : "" }}'
        }
        cellTooltipMode="custom"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.withdrawal_risk.risk_bucket_name === "Very High" ? "#C62828" :  // Warning Red (Softer)\n  currentSourceRow.withdrawal_risk.risk_bucket_name === "High"      ? "#FF5252" :  // Bright Red\n  currentSourceRow.withdrawal_risk.risk_bucket_name === "Medium"    ? "#FFA726" :  // Orange Warning\n  currentSourceRow.withdrawal_risk.risk_bucket_name === "Low"       ? "#3C92DC" :  // Blue\n  null \n}}',
        }}
        groupAggregationMode="none"
        key="withdrawal_risk"
        label="Risk"
        optionList={{ manualData: [] }}
        placeholder="Select option"
        position="left"
        referenceId="Risk"
        size={82}
        valueOverride="{{ item.risk_bucket_name }}"
      />
      <Column
        id="5deb5"
        alignment="left"
        cellTooltip="{{ item }}"
        cellTooltipMode="custom"
        editable="true"
        editableOptions={{ spellCheck: false, allowCustomValue: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="coach_tag"
        label="Coach Tag"
        optionList={{
          manualData: [
            { value: '{"On Annual Leave"}', label: "On Annual Leave" },
            { map: { value: "Sick Leave" } },
          ],
        }}
        placeholder="Update Tag"
        position="left"
        referenceId="coach_tag"
        size={100}
      />
      <Column
        id="eadb6"
        alignment="left"
        cellTooltip="{{ item }}"
        cellTooltipMode="custom"
        editable="true"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="latest_comment"
        label="Coach Comment"
        placeholder="Update Comment"
        position="left"
        referenceId="latest_comment"
        size={100}
      />
      <Column
        id="f9a6b"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="cohort"
        label="Cohort"
        placeholder="Select option"
        position="center"
        referenceId="Cohort"
        size={166}
        valueOverride="{{item.name}}"
      />
      <Column
        id="b9802"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="status"
        label="Days on Programme"
        placeholder="Enter value"
        position="center"
        referenceId="days_on_programme"
        size={90}
        valueOverride="{{ item.latest_days_on_programme}}"
      />
      <Column
        id="4f6ec"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="company"
        label="Company"
        placeholder="Enter value"
        position="center"
        referenceId="Company"
        size={81}
        valueOverride="{{ item.name }}"
      />
      <Column
        id="8a644"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.status.latest_status === "On-Programme"      ? "#3C92DC" : \n  currentSourceRow.status.latest_status === "Completed On-Time" ? "#2EB886" : \n  currentSourceRow.status.latest_status === "Completed Late"    ? "#D4E157" : \n  currentSourceRow.status.latest_status === "Post-Gateway"      ? "#9B51E0" : \n  currentSourceRow.status.latest_status === "On-BIL"            ? "#F2C94C" : \n  currentSourceRow.status.latest_status === "Non-Starter"       ? "#9E9E9E" : \n  currentSourceRow.status.latest_status === "No-Show"           ? "#EB5757" : \n  null \n}}',
        }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        referenceId="latest_status"
        size={102}
        valueOverride="{{ item.latest_status }}"
      />
      <Column
        id="ca99b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="status"
        label="OTJ Total"
        placeholder="Enter value"
        position="center"
        referenceId="otj_total"
        size={52}
        valueOverride="{{item.otj_submitted_hours_to_date}}"
      />
      <Column
        id="7d664"
        alignment="center"
        editableOptions={{ spellCheck: false }}
        format="boolean"
        formatOptions={{
          automaticColors: true,
          trueIcon: "bold/interface-validation-check-circle-alternate",
          trueColor: "{{ theme.success }}",
          falseIcon: "bold/interface-delete-2-alternate",
          falseColor: "{{ theme.danger }}",
        }}
        groupAggregationMode="none"
        label="EOL Current Month"
        optionList={{
          mode: "manual",
          manualData: [
            { value: "true", label: "Yes" },
            { value: "false", label: "No" },
          ],
        }}
        placeholder="Enter value"
        position="center"
        referenceId="EOL Current Month"
        size={87}
        statusIndicatorOptions={{ manualData: [] }}
        valueOverride="{{ 

  !!(currentSourceRow['Latest EOL'] && 

  moment(currentSourceRow['Latest EOL']).isSame(moment(), 'month'))

}}"
      />
      <Column
        id="02c66"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        editableOptions={{ showStepper: true }}
        format="date"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="status"
        label="Latest EOL"
        placeholder="Enter value"
        position="center"
        referenceId="latest_eol_date"
        size={93}
        tooltip="Last Evidence of Learning

The most recent date that a learner has attended/caught up on a live session, submitted a coaching survey, or logged the relevant type of OTJ"
        valueOverride="{{ item.latest_evidence_of_learning_date }}"
      >
        <Event
          id="6867ebef"
          event="clickCell"
          method="trigger"
          params={{}}
          pluginId="cohort_dd_learners_table3"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="689bd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="status"
        label="BIL Status"
        placeholder="Select option"
        position="center"
        referenceId="bil_status"
        size={0}
        valueOverride="{{item.bil_process_status}}"
      />
      <Column
        id="559b1"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="status"
        label="Missed Delivery Sessions (Total)"
        placeholder="Enter value"
        position="center"
        referenceId="delivery_sessions_missed"
        size={104}
        valueOverride="{{ item.delivery_sessions_missed }}"
      />
      <Column
        id="f2ce5"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        editableOptions={{ spellCheck: false }}
        format="date"
        groupAggregationMode="none"
        key="status"
        label="Latest Delivery Session"
        placeholder="Enter value"
        position="center"
        referenceId="latest_delivery_session_date"
        size={108}
        tooltip="Last attended delivery session

The last time an apprentice attended a delivery session"
        valueOverride="{{ item.latest_delivery_session_attended_date }}"
      />
      <Column
        id="dd3a1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="project_summary"
        label="Submitted Projects"
        placeholder="Enter value"
        position="center"
        referenceId="total_projects_submitted"
        size={83}
        tooltip="Projects submitted

The total number of projects that a learner has submitted so far. These projects will either be awaiting a review or are already graded"
        valueOverride="{{ item.projects_submitted }}"
      />
      <Column
        id="2afb1"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        editableOptions={{ spellCheck: false }}
        format="date"
        groupAggregationMode="none"
        key="project_summary"
        label="Latest Project"
        placeholder="Enter value"
        position="center"
        referenceId="latest_project_date"
        size={70}
        valueOverride="{{ item.latest_project_submission.submission_submitted_at }}"
      />
      <Column
        id="a1b41"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="status"
        label="Latest Coaching Session"
        placeholder="Enter value"
        position="center"
        referenceId="latest_coaching_date"
        size={109}
        tooltip="Last attended coaching session

The last time an apprentice attended a coaching session (group coaching or 1:1)"
        valueOverride="{{ item.latest_coaching_session_attended_date }}"
      />
      <Column
        id="1ab8f"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="progress_review_summary"
        label="Latest Progress Review"
        placeholder="Enter value"
        position="center"
        referenceId="latest_progress_review"
        size={104}
        tooltip="Last progress review

The last time the Learner, Manager and Coach completed the Progress Review forms. If async, acknowledgements are required and if sync, a meeting is required"
        valueOverride="{{ item.previous_progress_review.completed_at }}"
      />
      <Column
        id="45f49"
        alignment="left"
        caption="{{ moment(currentSourceRow.status.booked_gateway_date).format('MMM DD, YYYY') }}"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  (currentSourceRow.status.booked_gateway_date) ? "#D1FAE5" : \n  (currentSourceRow.status.latest_days_on_programme / 30.44) >= 5 ? "#FEE2E2" : \n  (currentSourceRow.status.latest_days_on_programme / 30.44) >= 3 ? "#FEF3C7" : \n  (currentSourceRow.status.latest_days_on_programme / 30.44) < 3  ? "#F3F4F6" : \n  null \n}}',
        }}
        groupAggregationMode="none"
        key="status"
        label="Gateway Booked"
        placeholder="Select option"
        position="center"
        referenceId="booked_gateway_date"
        size={103}
        tooltip={
          'Gateway booked\nIf an apprentice\'s gateway session is scheduled\nWhen showing "No":\nGrey: under 3 months on programme\nYellow: 3-4 months on programme\nRed: 5+ months on programme\nBooked gateways are always shown in grey'
        }
        valueOverride="{{ item.booked_gateway_date ? 'Yes' : 'No'}}"
      />
      <Column
        id="7c7ce"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="job_title"
        label="Job Title"
        placeholder="Enter value"
        position="center"
        referenceId="learner_job_title"
        size={69}
      />
      <Column
        id="7c745"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="learner"
        label="Learner Email"
        placeholder="Enter value"
        position="center"
        referenceId="learner_email"
        size={0}
        valueOverride="{{ item.email }}"
      >
        <Event
          id="1d338838"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="42c70"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{
          showUnderline: "hover",
          underlineStyle: "solid",
          widthType: "fit",
        }}
        groupAggregationMode="none"
        hidden="false"
        key="apprentice_manager"
        label="Learner's Manager"
        placeholder="Enter value"
        position="center"
        referenceId="manager"
        size={84}
        valueOverride="{{ item.first_name}} {{ item.last_name }}"
      />
      <Column
        id="d1a42"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="apprentice_manager"
        label="Manager Email"
        placeholder="No user"
        position="center"
        referenceId="manager_email"
        size={97}
        valueOverride="{{ item.email }}"
      >
        <Event
          id="044e6ba9"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="db7d3"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="project_summary"
        label="Project summary"
        placeholder="Select option"
        position="center"
        referenceId="latest_project_grade"
        size={0}
        valueOverride="{{item.latest_project_submission_review.details.project_submission_grade}}"
      />
      <Column
        id="eab48"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={0}
      />
      <Column
        id="a47f6"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="coach"
        label="Coach account ID"
        placeholder="Enter value"
        position="center"
        size={0}
        valueOverride="{{ item.id}}"
      />
      <Column
        id="55f18"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="coach"
        label="Coach"
        placeholder="Enter value"
        position="center"
        referenceId="coach_full_name"
        size={0}
        valueOverride="{{item.first_name}} {{item.last_name}}"
      />
      <Column
        id="1e43c"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="status"
        label="Gateway booked"
        placeholder="Enter value"
        position="center"
        referenceId="gateway_booked"
        size={0}
        valueOverride="{{ item.booked_gateway_date }}"
      />
      <Column
        id="3c2e7"
        alignment="left"
        editable={false}
        editableOptions={{ spellCheck: false }}
        format="json"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="learner"
        label="Learner ID"
        placeholder="Enter value"
        position="center"
        size={0}
        valueOverride="{{ item.id }}"
      />
      <Column
        id="86962"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="withdrawal_risk"
        label="Latest risk assessment date"
        placeholder="Enter value"
        position="center"
        size={0}
        valueOverride="{{ item.prediction_timestamp }}"
      />
      <Column
        id="66eba"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="coach"
        label="Coach ID"
        placeholder="Enter value"
        position="center"
        referenceId="coach_id"
        size={0}
        valueOverride="{{ item.id }}"
      />
      <Column
        id="5c720"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  (currentSourceRow.status.functional_skills_english_status === "Exempt with Certs" || currentSourceRow.status.functional_skills_english_status === "Achieved") ? "#F3F4F6" : \n  (currentSourceRow.status.functional_skills_english_status?.startsWith("Exam") || currentSourceRow.status.latest_days_on_programme >= 180) ? "#FEE2E2" : \n  (currentSourceRow.status.latest_days_on_programme < 180) ? "#FEF3C7" : \n  null \n}}',
        }}
        groupAggregationMode="none"
        key="status"
        label="English Functional Skills"
        placeholder="Select option"
        position="center"
        referenceId="english_skills"
        size={100}
        tooltip="The overall status of Math functional skills completion.
Grey: completed/passed
Yellow: in progress (under 180 days on programme)
Red: urgent action required (180+ days on programme)
Please head to Apprentice Profile for more detail"
        valueOverride="{{ item.functional_skills_english_status }}"
      />
      <Column
        id="dc9ea"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Math Functional Skills"
        placeholder="Select option"
        position="center"
        referenceId="math_skills"
        size={100}
        tooltip="The overall status of English functional skills completion.
Grey: completed/passed
Yellow: in progress (under 180 days on programme)
Red: urgent action required (180+ days on programme)
Please head to Apprentice Profile for more detail"
        valueOverride="{{ item.functional_skills_maths_status }}"
      />
      <Action
        id="ad2fc"
        icon="bold/mail-inbox-envelope-reply"
        label="Email Learner"
      >
        <Event
          id="3c5bdcfb"
          event="clickAction"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow.learner.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="8430b"
        icon="bold/mail-inbox-envelope-favorite"
        label="Email Manager"
      >
        <Event
          id="ab4e79b6"
          event="clickAction"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{currentSourceRow.apprentice_manager.email}}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="cb311"
        icon="bold/mail-inbox-envelope-reply-all"
        label="Email Learner and Manager"
      >
        <Event
          id="31ae09ae"
          event="clickAction"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow.learner.email}}&cc={{ currentSourceRow.apprentice_manager.email}}",
            },
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
        id="d2268"
        icon="bold/interface-arrows-data-trasnfer-vertical"
        label="Sort"
        type="sort"
      />
      <ToolbarButton
        id="b974f"
        icon="bold/interface-text-formatting-list-bullets"
        label="Group by"
        type="groupBy"
      />
      <Event
        id="9357f586"
        event="selectRow"
        method="setValue"
        params={{ map: { value: "{{ currentSourceRow }}" } }}
        pluginId="selected_user"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Table
      id="cohort_dd_table10"
      autoColumnWidth={true}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ cohort_dd_learners_table3.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      enableSaveActions={true}
      groupByColumns={{}}
      headerTextWrap={true}
      hidden="true"
      primaryKeyColumnId="3c2e7"
      rowHeight="small"
      searchTerm="{{ cohort_dd_search4.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{}}
    >
      <Column
        id="e9ee4"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/interface-user-profile-focus",
          buttonColor: "rgba(0, 0, 0, 0)",
        }}
        groupAggregationMode="none"
        hidden="false"
        placeholder="Enter value"
        position="left"
        referenceId="Learner Profile"
        size={44}
        summaryAggregationMode="none"
        valueOverride=" "
      >
        <Event
          id="39a50fb1"
          event="clickCell"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="75b38ceb"
          event="clickCell"
          method="openPage"
          params={{
            options: {
              passDataWith: "urlParams",
              queryParams: [
                { key: "UserID", value: "{{ currentSourceRow.email }}" },
              ],
            },
            pageName: "indvidual_learner_view",
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="6c7d0"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          iconBefore: "line/mail-chat-bubble-oval",
          buttonColor: "rgba(0, 0, 0, 0)",
          iconAfter: "",
        }}
        groupAggregationMode="none"
        hidden="false"
        placeholder="Enter value"
        position="left"
        referenceId="sendCoachMessage"
        size={44}
        summaryAggregationMode="none"
        valueOverride=" "
      />
      <Column
        id="27d1e"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="button"
        formatOptions={{
          variant: "solid",
          buttonColor: "rgba(0, 0, 0, 0)",
          iconBefore: "line/mail-inbox-envelope-add-1",
        }}
        groupAggregationMode="none"
        placeholder="Enter value"
        position="left"
        referenceId="sendEmail"
        size={44}
        summaryAggregationMode="none"
        valueOverride=" "
      >
        <Event
          id="19d49163"
          event="clickCell"
          method="openUrl"
          params={{
            map: {
              url: "https://mail.google.com/mail/?view=cm&fs=1&to={{ currentSourceRow['Learner Email'] }}&cc={{ currentSourceRow['Apprentice Manager Email'] }}",
            },
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="94e9c"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="Learner"
        label="Learner"
        placeholder="Enter value"
        position="left"
        size={102.03125}
        summaryAggregationMode="none"
      />
      <Column
        id="f9a6b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="Cohort"
        label="Cohort"
        placeholder="Select option"
        position="center"
        size={157.671875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4f6ec"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="Company"
        label="Company"
        placeholder="Enter value"
        position="center"
        size={179.6875}
        summaryAggregationMode="none"
      />
      <Column
        id="8a644"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.Status === "On-Programme"      ? "#3C92DC" : \n  currentSourceRow.Status === "Completed On-Time" ? "#2EB886" : \n  currentSourceRow.Status === "Completed Late"    ? "#D4E157" : \n  currentSourceRow.Status === "Post-Gateway"      ? "#9B51E0" : \n  currentSourceRow.Status === "On-BIL"            ? "#F2C94C" : \n  currentSourceRow.Status === "Non-Starter"       ? "#9E9E9E" : \n  currentSourceRow.Status === "No-Show"           ? "#EB5757" : \n  null \n}}',
        }}
        groupAggregationMode="none"
        key="Status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={93.75}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="a5b5f"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            '{{ \n  currentSourceRow.Risk === "Very High" ? "#C62828" :  // Warning Red (Softer)\n  currentSourceRow.Risk === "High"      ? "#FF5252" :  // Bright Red\n  currentSourceRow.Risk === "Medium"    ? "#FFA726" :  // Orange Warning\n  currentSourceRow.Risk === "Low"       ? "#3C92DC" :  // Blue\n  null \n}}',
        }}
        groupAggregationMode="none"
        key="Risk"
        label="Risk"
        placeholder="Select option"
        position="center"
        size={83.40625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="ca99b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="OTJ Total"
        label="OTJ Total"
        placeholder="Enter value"
        position="center"
        size={64.375}
        summaryAggregationMode="none"
      />
      <Column
        id="7d664"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="boolean"
        formatOptions={{
          automaticColors: true,
          trueIcon: "bold/interface-validation-check-circle-alternate",
          trueColor: "{{ theme.success }}",
          falseIcon: "bold/interface-alert-warning-circle-alternate",
          falseColor: "{{ theme.warning }}",
        }}
        groupAggregationMode="none"
        label="EOL Current Month"
        optionList={{
          mode: "manual",
          manualData: [
            { value: "true", label: "Yes" },
            { value: "false", label: "No" },
          ],
        }}
        placeholder="Enter value"
        position="center"
        referenceId="EOL Current Month"
        size={120.15625}
        statusIndicatorOptions={{ manualData: [] }}
        summaryAggregationMode="none"
        valueOverride="{{ 

  !!(currentSourceRow['Latest EOL'] && 

  moment(currentSourceRow['Latest EOL']).isSame(moment(), 'month'))

}}"
      />
      <Column
        id="02c66"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest EOL"
        label="Latest EOL"
        placeholder="Enter value"
        position="center"
        size={85.34375}
        summaryAggregationMode="none"
      >
        <Event
          id="6867ebef"
          event="clickCell"
          method="trigger"
          params={{}}
          pluginId="cohort_dd_learners_table3"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="689bd"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="BiL Status"
        label="BIL Status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="559b1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Missed Sessions"
        label="Missed Delivery Sessions (Total)"
        placeholder="Enter value"
        position="center"
        size={182.90625}
        summaryAggregationMode="none"
      />
      <Column
        id="f2ce5"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest Delivery"
        label="Latest Delivery Session"
        placeholder="Enter value"
        position="center"
        size={137.5625}
        summaryAggregationMode="none"
      />
      <Column
        id="dd3a1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="Apprenticeship Total Projects Submitted"
        label="Submitted Projects"
        placeholder="Enter value"
        position="center"
        size={118.25}
        summaryAggregationMode="none"
      />
      <Column
        id="2afb1"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest Project"
        label="Latest Project"
        placeholder="Enter value"
        position="center"
        size={89.234375}
        summaryAggregationMode="none"
      />
      <Column
        id="a1b41"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest Coaching"
        label="Latest Coaching Session"
        placeholder="Enter value"
        position="center"
        size={147.03125}
        summaryAggregationMode="none"
      />
      <Column
        id="1ab8f"
        alignment="left"
        caption={
          '{{ item ? moment().diff(moment(item), \'days\') + " days ago" : "" }}'
        }
        format="date"
        groupAggregationMode="none"
        key="Latest Review"
        label="Latest Progress Review"
        placeholder="Enter value"
        position="center"
        size={139.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="45f49"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="Gateway Date"
        label="Gateway date"
        placeholder="Enter value"
        position="center"
        size={88.953125}
        summaryAggregationMode="none"
      />
      <Column
        id="7c7ce"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="Job Title"
        label="Job Title"
        placeholder="Enter value"
        position="center"
        size={183.71875}
        summaryAggregationMode="none"
      />
      <Column
        id="7c745"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="true"
        key="Learner Email"
        label="Learner Email"
        position="center"
        size={209.5}
        summaryAggregationMode="none"
      >
        <Event
          id="1d338838"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="42c70"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Manager"
        label="Learner's Manager"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d1a42"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        hidden="{{ !view_switcher3.value }}"
        key="Apprentice Manager Email"
        label="Manager Email"
        position="center"
        size={203.5625}
        summaryAggregationMode="none"
      >
        <Event
          id="044e6ba9"
          event="clickCell"
          method="openUrl"
          params={{ map: { url: "mailto:{{ item }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="db7d3"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="Apprenticeship Latest Project Submission Grade"
        label="Apprenticeship latest project submission grade"
        placeholder="Select option"
        position="center"
        size={282.625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="eab48"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Apprenticeship Uuid"
        label="Apprenticeship UUID"
        placeholder="Enter value"
        position="center"
        size={273.25}
        summaryAggregationMode="none"
      />
      <Column
        id="a47f6"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Coach Account Id"
        label="Coach account ID"
        placeholder="Enter value"
        position="center"
        size={268.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="55f18"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="Coach Full Name"
        label="Coach full name"
        placeholder="Select option"
        position="center"
        size={124.265625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="dfeb1"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="Day"
        label="Day"
        placeholder="Enter value"
        position="center"
        size={150.5}
        summaryAggregationMode="none"
      />
      <Column
        id="1e43c"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="Gateway Booked"
        label="Gateway booked"
        placeholder="Enter value"
        position="center"
        size={256.984375}
        summaryAggregationMode="none"
      />
      <Column
        id="3c2e7"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="Learner ID"
        label="Learner id"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Action
        id="ad2fc"
        icon="bold/interface-user-profile-focus"
        label="Open Learner Page"
      >
        <Event
          id="fc1ecee4"
          event="clickAction"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_user"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="3c5bdcfb"
          event="clickAction"
          method="openPage"
          params={{
            options: {
              passDataWith: "urlParams",
              queryParams: [
                { key: "UserID", value: "{{ currentSourceRow.email }}" },
              ],
            },
            pageName: "indvidual_learner_view",
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="8430b"
        icon="bold/mail-chat-bubble-oval-alternate"
        label="Message in Chat"
      />
      <Action
        id="cb311"
        icon="bold/mail-inbox-envelope-add-2"
        label="Send Email"
      />
      <Action
        id="dc650"
        icon="bold/travel-map-flag-alternate"
        label="Escalate to CSM"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="d2268"
        icon="bold/interface-arrows-data-trasnfer-vertical"
        label="Sort"
        type="sort"
      />
      <ToolbarButton
        id="b974f"
        icon="bold/interface-text-formatting-list-bullets"
        label="Group by"
        type="groupBy"
      />
    </Table>
  </Body>
</ModalFrame>
