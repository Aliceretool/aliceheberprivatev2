<Screen
  id="daily_coach_digest"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={8}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="68418019-aa85-461f-bdcd-d7c2cb737e7f"
>
  <SqlQueryUnified
    id="query1"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    showFailureToaster={false}
    showSuccessToaster={false}
    warningCodes={[]}
  />
  <Frame
    id="$main6"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Table
      id="table3"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query1.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="d86ea"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="d86ea"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b7117"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="event_summary"
        label="Event summary"
        placeholder="Enter value"
        position="center"
        size={199}
        summaryAggregationMode="none"
      />
      <Column
        id="24f38"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="start_date"
        label="Start date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cc2c8"
        alignment="left"
        format="time"
        groupAggregationMode="none"
        key="start_time"
        label="Start time"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ce933"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="end_date"
        label="End date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="09749"
        alignment="left"
        format="time"
        groupAggregationMode="none"
        key="end_time"
        label="End time"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7df2c"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="false"
        key="coach_email"
        label="Coach email"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f2bab"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="attendee_email"
        label="Attendee email"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0ca43"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="event_link"
        label="Event link"
        position="center"
        size={231}
        summaryAggregationMode="none"
      />
      <Column
        id="1291a"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="learner_name"
        label="Learner name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="16f6d"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="apprenticeship_uuid"
        label="Apprenticeship UUID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="45f78"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="coach_world_url"
        label="Coach world URL"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bf1e0"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="company_name"
        label="Company name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="622b7"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="job_title"
        label="Job title"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="16f39"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="programme_status"
        label="Programme status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="8f74a"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="cohort_name"
        label="Cohort name"
        placeholder="Enter value"
        position="center"
        size={173}
        summaryAggregationMode="none"
      />
      <Column
        id="79285"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="cohort_name_df"
        label="Cohort name df"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ed96a"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="expected_gateway_date"
        label="Expected gateway date"
        placeholder="Enter value"
        position="center"
        size={160}
        summaryAggregationMode="none"
      />
      <Column
        id="af488"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="actual_gateway_date"
        label="Actual gateway date"
        placeholder="Enter value"
        position="center"
        size={163}
        summaryAggregationMode="none"
      />
      <Column
        id="f1337"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="otj_target_hours"
        label="Otj target hours"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ee9a4"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="otj_completed_hours"
        label="Otj completed hours"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7960c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="otj_defecit_hours"
        label="Otj defecit hours"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0ae76"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="days_on_programme"
        label="Days on programme"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a6d95"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="latest_eol"
        label="Latest eol"
        placeholder="Enter value"
        position="center"
        size={160}
        summaryAggregationMode="none"
      />
      <Column
        id="61dff"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="latest_att"
        label="Latest att"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c722b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="latest_risk_prediction_days_on_programme"
        label="Latest risk prediction days on programme"
        placeholder="Enter value"
        position="center"
        size={111}
        summaryAggregationMode="none"
      />
      <Column
        id="b1673"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="latest_risk_prediction_bucket"
        label="Latest risk prediction bucket"
        placeholder="Enter value"
        position="center"
        size={166}
        summaryAggregationMode="none"
      />
      <Column
        id="d19ee"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="next_pr_due_date"
        label="Next pr due date"
        placeholder="Enter value"
        position="center"
        size={167}
        summaryAggregationMode="none"
      />
      <Column
        id="47289"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="next_pr_apprentice_completed"
        label="Next pr apprentice completed"
        placeholder="Select option"
        position="center"
        size={182}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b1979"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="next_pr_apprentice_manager_completed"
        label="Next pr apprentice manager completed"
        placeholder="Select option"
        position="center"
        size={182}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="629d6"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="next_pr_async_recommendation"
        label="Next pr async recommendation"
        placeholder="Select option"
        position="center"
        size={201}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="ff3de"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="module_name"
        label="Module name"
        placeholder="Enter value"
        position="center"
        size={170}
        summaryAggregationMode="none"
      />
      <Column
        id="fc530"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="project_name"
        label="Project name"
        placeholder="Enter value"
        position="center"
        size={157}
        summaryAggregationMode="none"
      />
      <Column
        id="68183"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project_submission_status"
        label="Project submission status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7902d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="project_grade"
        label="Project grade"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="6f9a2"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="project_graded_at"
        label="Project graded at"
        placeholder="Enter value"
        position="center"
        size={172}
        summaryAggregationMode="none"
      />
      <Column
        id="bcf42"
        alignment="left"
        cellTooltipMode="overflow"
        format="multilineString"
        groupAggregationMode="none"
        key="review_notes"
        label="Review notes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3d967"
        alignment="left"
        editableOptions={{ spellCheck: false }}
        format="string"
        groupAggregationMode="none"
        key="review_url"
        label="Review URL"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ecc14"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        key="coach_notes"
        label="Coach notes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
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
          id="db1ef591"
          event="clickToolbar"
          method="exportData"
          pluginId="table3"
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
          id="545a6944"
          event="clickToolbar"
          method="refresh"
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Container
      id="container35"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="### **Hey {{ current_user.firstName || 'friend' }}! Here's your daily coaching digest! ☕️**"
          verticalAlign="center"
        />
        <Text
          id="text12"
          value={
            '<div style="background-color: #f0f7ff; border-left: 4px solid #3b82f6; padding: 12px; border-radius: 4px; display: flex; align-items: flex-start; gap: 8px; color: #1e3a8a; font-family: sans-serif;">\n  <span>📌</span>\n  <span><strong>Important:</strong> Please check your calendar for event details and attendee accuracy. Events with hidden attendees are not covered in this email.</span>\n</div>'
          }
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Text
          id="text3"
          value={
            '<div style="display: flex; justify-content: space-between; align-items: center; background-color: #f8fbff; border: 1px solid #e5e7eb; border-left: 5px solid #4a90e2; padding: 20px; border-radius: 8px; font-family: sans-serif; box-shadow: 0 1px 2px rgba(0,0,0,0.05);">\n  \n  <div style="flex-grow: 1; padding-right: 20px;">\n    <div style="font-size: 19px; font-weight: 700; color: #1e293b; margin-bottom: 6px; line-height: 1.4;">\n      {{ table3.selectedRow.event_summary }}\n    </div>\n    <div style="font-size: 14px; color: #64748b; display: flex; align-items: center; gap: 8px;">\n      📅 {{ moment(table3.selectedRow.start_date).format(\'MMMM D, YYYY\') }} | ⏰ {{ table3.selectedRow.start_time.substring(0,5) }} - {{ table3.selectedRow.end_time.substring(0,5) }}\n    </div>\n  </div>\n\n  <a href="{{ table3.selectedRow.event_link }}" target="_blank" style="text-decoration: none; background-color: #6395ed; color: white; padding: 12px 24px; border-radius: 8px; font-weight: 600; text-align: center; font-size: 14px; display: inline-block;">\n    Join Meeting\n  </a>\n\n</div>'
          }
          verticalAlign="center"
        />
        <Container
          id="container1"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
        >
          <Header>
            <HTML
              id="html6"
              css={include("../lib/html6.css", "string")}
              html={include("../lib/html6.html", "string")}
            />
          </Header>
          <View id="00030" viewKey="View 1">
            <HTML
              id="html5"
              css={include("../lib/html5.css", "string")}
              html={include("../lib/html5.html", "string")}
            >
              <Event
                id="739f05ef"
                event="click"
                method="trigger"
                params={{}}
                pluginId="query1"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </HTML>
            <HTML
              id="html3"
              css={include("../lib/html3.css", "string")}
              html={include("../lib/html3.html", "string")}
            />
            <HTML
              id="html4"
              css={include("../lib/html4.css", "string")}
              html={include("../lib/html4.html", "string")}
            />
          </View>
        </Container>
      </View>
    </Container>
  </Frame>
</Screen>
