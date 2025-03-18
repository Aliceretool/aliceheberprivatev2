<Container
  id="accountHeaderContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  hoistFetching={true}
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="accountName"
      marginType="normal"
      value="## Application overview"
      verticalAlign="center"
    />
    <Button
      id="claimApplicationButton"
      disabled="{{ isLendingPartnerVettingUser.value || CreateApplicationProcesssor.isFetching || GetAccountHome.isFetching }}"
      loading="{{ CreateApplicationProcesssor.isFetching || GetAccountHome.isFetching }}"
      marginType="normal"
      style={{ ordered: [{ background: "primary" }] }}
      text="Claim Application"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CreateApplicationProcesssor"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="2eff6" viewKey="View 1">
    <Date
      id="appSubmissionDate"
      dateFormat="M/d/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Original application submission"
      labelWidth="40"
      labelWrap={true}
      marginType="normal"
      readOnly="true"
      value="{{ GetAccountHome.data?.applicationSubmitted }}"
    />
    <EditableText
      id="statusEditableText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Status"
      labelWidth="40"
      marginType="normal"
      placeholder="None Assigned"
      readOnly="true"
      textSize="default"
      value="{{ _.startCase(GetAccountHome.data?.applicationReviewStatus) }}"
    />
    <Spacer id="homeSpacer10" marginType="normal" />
    <Date
      id="appResubmittedDate"
      dateFormat="M/d/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Application Resubmitted Date"
      labelWidth="40"
      labelWrap={true}
      readOnly="true"
      value="{{ GetAccountHome.data?.applicationResubmitted }}"
    />
    <Spacer id="homeSpacer8" marginType="normal" />
    <Date
      id="appProcessorClaimedDate"
      dateFormat="M/d/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Date App Processor Claimed"
      labelWidth="40"
      labelWrap={true}
      readOnly="true"
      value="{{ GetAccountHome.data?.applicationProcessorClaimed }}"
    />
    <Spacer id="homeSpacer2" marginType="normal" />
    <Spacer id="homeSpacer11" marginType="normal" />
    <EditableText
      id="accountMangerEditableText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Account Manager"
      labelWidth="40"
      marginType="normal"
      placeholder="None Assigned"
      readOnly="true"
      textSize="default"
      value="{{ GetChannelManager.data?.[0]?.Sungage_Channel_Manager__r?.Name }}"
    />
    <Date
      id="sendToApplicantForRevisionDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      hidden=""
      iconBefore="bold/interface-calendar"
      label="Send to Applicant for Revision"
      labelWidth="40"
      labelWrap={true}
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.returnedToApplicantForRevision ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetAccountHome.data?.returnedToApplicantForRevision }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "returnedToApplicantForRevision", GetAccountHome.data?.returnedToApplicantForRevision, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="homeSpacer12" marginType="normal" />
    <Spacer id="homeSpacer3" marginType="normal" />
    <Checkbox
      id="pendingInformationCheckbox"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Pending Information?"
      labelPosition="left"
      labelWidth="70"
      marginType="normal"
      style={{
        ordered: [
          {
            border:
              "{{ !!installerApplicationUpdates.value?.isPendingMoreInformation ? 'warning' : '#c4c4c4' }}",
          },
          {
            checkedBackground:
              "{{ !!installerApplicationUpdates.value?.isPendingMoreInformation ? 'warning' : '#548582' }}",
          },
        ],
      }}
      value="{{ GetAccountHome.data?.isPendingMoreInformation || false }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "isPendingMoreInformation", GetAccountHome.data?.isPendingMoreInformation, self.value);\n',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Select
      id="applicationPrioritySelect"
      emptyMessage="No options"
      itemMode="static"
      label="Priority"
      labelWidth="40"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.applicationPriority ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetAccountHome.data?.applicationPriority }}"
    >
      <Option
        id="8deaf"
        disabled={false}
        hidden={false}
        label="Low"
        value="Low"
      />
      <Option
        id="91331"
        disabled={false}
        hidden={false}
        label="Low-Medium"
        value="Medium_Low"
      />
      <Option id="a2a84" label="Medium" value="Medium" />
      <Option id="ae655" label="Medium-high" value="Medium_High" />
      <Option id="72d0f" label="High" value="High" />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: '/* \n  Global function to set state based on update. Takes the following parameters:\n    1. stateToUpdate (ex: installerApplicationUpdates)\n    2. fieldName (targeted field for update)\n    3. currentValue (value in the database)\n    4. newValue (i.e self.value)\n    5. isDateField (optional boolean to determine if value is a date field)\n*/\nsetStateForUpdate(installerApplicationUpdates, "applicationPriority", GetAccountHome.data?.applicationPriority, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Spacer id="homeSpacer4" marginType="normal" />
    <Spacer id="homeSpacer7" marginType="normal" />
    <EditableText
      id="leadSourceEditableText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Lead Source"
      labelWidth="40"
      marginType="normal"
      placeholder="None Assigned"
      readOnly="true"
      textSize="default"
      value="{{ _.startCase(GetAccountHome.data?.account?.leadSource) }}"
    />
    <Date
      id="returnedToAccountManagerDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      hidden=""
      iconBefore="bold/interface-calendar"
      label="Return to Account Manager"
      labelWidth="40"
      labelWrap={true}
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.returnedToAccountManager ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetAccountHome.data?.returnedToAccountManager }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "returnedToAccountManager", GetAccountHome.data?.returnedToAccountManager, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="homeSpacer13" marginType="normal" />
    <Date
      id="discussWithIRCDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Discuss in IRC "
      labelWidth="40"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.waitingOnIRCDiscussion ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetAccountHome.data?.waitingOnIRCDiscussion }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "waitingOnIRCDiscussion", GetAccountHome.data?.waitingOnIRCDiscussion, self.value, true);\n',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="homeSpacer5" marginType="normal" />
    <Spacer id="homeSpacer14" marginType="normal" />
    <EditableText
      id="appProcessorEditableText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Application Processor"
      labelWidth="40"
      marginType="normal"
      placeholder="None Assigned"
      readOnly="true"
      textSize="default"
      value="{{ GetAccountHome.data?.applicationProcessor?.name }}"
    />
    <Date
      id="returnedToApplicationProcessingDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      hidden=""
      iconBefore="bold/interface-calendar"
      label="Return to App Processing"
      labelWidth="40"
      labelWrap={true}
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.returnedToApplicationProcessing ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetAccountHome.data?.returnedToApplicationProcessing }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'console.log("self value", self.value);\nsetStateForUpdate(installerApplicationUpdates, "returnedToApplicationProcessing", GetAccountHome.data?.returnedToApplicationProcessing, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="homeSpacer15" marginType="normal" />
    <Date
      id="applicationProcessingCompletedDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      hidden=""
      iconBefore="bold/interface-calendar"
      label="App Processing Complete"
      labelWidth="40"
      labelWrap={true}
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="true"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.applicationProcessingCompleted ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetAccountHome.data?.applicationProcessingCompleted }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "returnedToApplicantForRevision", GetAccountHome.data?.returnedToApplicantForRevision, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="homeSpacer9" marginType="normal" />
    <EditableText
      id="appReviewerEditableText"
      editIcon="bold/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Application Reviewer"
      labelWidth="40"
      marginType="normal"
      placeholder="None Assigned"
      readOnly="true"
      textSize="default"
      value="{{ GetAccountHome.data?.applicationReviewer?.name }}"
    />
    <Spacer id="homeSpacer6" marginType="normal" />
    <Date
      id="applicationStalledDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      hidden=""
      iconBefore="bold/interface-calendar"
      label="Application Stalled"
      labelWidth="40"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.applicationStalled ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetAccountHome.data?.applicationStalled }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: '// (stateToUpdate, fieldName, currentValue, newValue, isDateField = false)\nsetStateForUpdate(installerApplicationUpdates, "applicationStalled", GetAccountHome.data?.applicationStalled, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="homeSpacer16" marginType="normal" />
    <Checkbox
      id="financialsOnlyCheckbox"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Financials Only?"
      labelPosition="left"
      labelWidth="70"
      marginType="normal"
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.requiresCaf != null ? 'warning' : '#c4c4c4' }}",
          },
          {
            checkedBackground:
              "{{ installerApplicationUpdates?.value?.requiresCaf != null ? 'warning' : '#548582' }}",
          },
        ],
      }}
      value="{{ !GetAccountHome.data?.requiresCaf || false }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "requiresCaf", GetAccountHome.data?.requiresCaf, !financialsOnlyCheckbox.value);\n',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
  </View>
</Container>
