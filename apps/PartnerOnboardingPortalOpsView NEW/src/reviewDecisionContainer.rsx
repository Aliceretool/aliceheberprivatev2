<Container
  id="reviewDecisionContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle12"
      marginType="normal"
      value="### Reviewing + Decisioning"
      verticalAlign="center"
    />
    <Modal
      id="applicationDecisionSaveModalDeprecated"
      buttonText="Save Application Decision"
      events={[
        {
          ordered: [
            { event: "close" },
            { type: "widget" },
            { method: "resetValue" },
            { pluginId: "appDecisionSelect" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="true"
      modalHeight="250px"
    >
      <Alert
        id="outstandingSectionsWarning"
        description="This application cannot be put into the Pass or Ready for Review status because there are sections or the fields, 'Minimum Business Age Met?' and 'Date Scorecard Completed', that require further review."
        title="Review Required: Outstanding"
        type="warning"
      />
    </Modal>
    <Include src="./contactCreationModalDeprecated.rsx" />
    <Button
      id="claimReviewButton"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      marginType="normal"
      text="Claim Application for Review"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CreateApplicationReviewer"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="bde3c" viewKey="View 1">
    <Spacer id="decisioningSpacer1" marginType="normal" />
    <EditableText
      id="applicationReviwerEditableText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Application Reviewer:"
      labelWidth="40"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      textSize="default"
      value="{{ GetAccountHome.data?.applicationReviewer?.id ? GetAccountHome.data.applicationReviewer?.firstName + ' ' + GetAccountHome.data.applicationReviewer?.lastName  : 'Use button to claim application'  }}"
    />
    <Date
      id="applicationProcessingCompletedDateDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      hidden=""
      iconBefore="bold/interface-calendar"
      label="Date App Reviewer Claimed"
      labelWidth="40"
      labelWrap={true}
      marginType="normal"
      maxDate="{{ moment() }}"
      readOnly="true"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.applicationReviewerClaimed ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetAccountHome.data?.applicationReviewerClaimed }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "applicationReviewerClaimed", GetAccountHome.data?.applicationReviewerClaimed, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="decisioningSpacer2" marginType="normal" />
    <Select
      id="appDecisionSelect"
      disabled=""
      emptyMessage="No options"
      itemMode="static"
      label="Application Decision"
      labelWidth="40"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear="{{appDecisionSelect.value !== 'Pass'}}"
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"applicationDecision\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      tooltipText={
        '{{applicationReviwerEditableText.value === "Use button to claim application" ? "You must claim the application for review before it can be decisioned" : null}}'
      }
      value="{{ GetAccountHome.data?.applicationDecision }}"
    >
      <Option id="32fe6" label="Fail" value="Fail" />
      <Option id="020e8" label="Pending Fail" value="Pending_Fail" />
      <Option id="d49a2" label="Ready for Review" value="Pending_Pass" />
      <Option
        id="2ae9c"
        hidden="{{ !['admin', 'Tech', 'Sr. Ops'].some(specialGroup => current_user.groups.map(group => group.name).includes(specialGroup)) }}"
        label="Pass"
        value="Pass"
      />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "applicationDecision", GetInstallerAppScorecard.data?.applicationDecision, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'if (self.value === "Pending_Fail" || self.value === "Pending_Pass") {\n  setStateForUpdate(installerApplicationUpdates, "applicationProcessingCompleted", GetInstallerAppScorecard.data?.applicationProcessingCompleted, new Date().toISOString());\n}',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="appDecisionDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled={
        '{{ isLendingPartnerVettingUser.value || applicationReviwerEditableText.value === "Use button to claim application"}}'
      }
      iconBefore="bold/interface-calendar"
      label="Application Decision Date"
      labelWidth="40"
      marginType="normal"
      maxDate="{{moment()}}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"applicationDecisionDate\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      tooltipText={
        '{{applicationReviwerEditableText.value === "Use button to claim application" ? "You must claim the application for review before it can be decisioned" : null}}'
      }
      value="{{ GetAccountHome.data?.applicationDecisionDate }}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "applicationDecisionDate", GetAccountHome.data?.applicationDecisionDate, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="spacer33" />
    <Select
      id="primaryDenialReasonSelect"
      disabled={
        '{{applicationReviwerEditableText.value === "Use button to claim application"}}'
      }
      emptyMessage="No options"
      itemMode="static"
      label="Primary Denial Reason"
      labelWidth="40"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"primaryDenialReason\") ? 'warning' : '#c4c4c4' }}\n",
          },
        ],
      }}
      tooltipText={
        '{{applicationReviwerEditableText.value === "Use button to claim application" ? "You must claim the application for review before it can be decisioned" : null}}'
      }
      value="{{ GetAccountHome.data?.primaryDenialReason }}"
    >
      <Option id="4c410" label="Background Check" value="Background_Check" />
      <Option id="fd195" label="Bankruptcy" value="Bankruptcy" />
      <Option
        id="d050b"
        label="Bankruptcy Plus Score"
        value="Bankruptcy_Plus_Score"
      />
      <Option
        id="633cd"
        disabled={false}
        hidden={false}
        label="Commercial Credit"
        value="Commercial_Credit"
      />
      <Option
        id="25cb2"
        disabled={false}
        hidden={false}
        label="Customer Reviews / References"
        value="Customer_Reviews_References"
      />
      <Option
        id="bdc83"
        disabled={false}
        hidden={false}
        label="FICO"
        value="Fico"
      />
      <Option
        id="c19e5"
        disabled={false}
        hidden={false}
        label="Financials"
        value="Financials"
      />
      <Option
        id="5876f"
        disabled={false}
        hidden={false}
        label="License Issue"
        value="License_Issue"
      />
      <Option
        id="d47a3"
        disabled={false}
        hidden={false}
        label="Marginal Denial"
        value="Marginal_Denial"
      />
      <Option
        id="30bd2"
        disabled={false}
        hidden={false}
        label="Online Reserarch"
        value="Online_Research"
      />
      <Option
        id="7a6b7"
        disabled={false}
        hidden={false}
        label="Other"
        value="Other"
      />
      <Option
        id="fb31a"
        disabled={false}
        hidden={false}
        label="Slim Application"
        value="Slim_Application"
      />
      <Option
        id="3a6f2"
        disabled={false}
        hidden={false}
        label="Suspected Fraud"
        value="Suspected_Fraud"
      />
      <Option
        id="fdd41"
        disabled={false}
        hidden={false}
        label="Terminated / Blacklisted Association"
        value="Terminated_Blacklisted_Association"
      />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "primaryDenialReason", GetInstallerAppScorecard.data?.primaryDenialReason, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Spacer id="decisioningSpacer3" marginType="normal" />
  </View>
</Container>
