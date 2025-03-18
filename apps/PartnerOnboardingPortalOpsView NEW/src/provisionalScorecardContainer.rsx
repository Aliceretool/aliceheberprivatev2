<Container
  id="provisionalScorecardContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="scorecardContainerTitle"
      marginType="normal"
      value="#### Provisional Scorecard"
      verticalAlign="center"
    />
  </Header>
  <View id="f8495" viewKey="View 1">
    <Spacer id="scorecardSpacer1" marginType="normal" />
    <Select
      id="scorecardBiq"
      disabled="true"
      emptyMessage="No options"
      itemMode="static"
      label="Ability to Score BIQ?"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{GetInstallerAppCommCredit.data?.abilityToScoreBiq}}"
    >
      <Option id="95fa4" label="Yes" value="Yes" />
      <Option id="6fbcd" label="No" value="No" />
    </Select>
    <Select
      id="pullBiqScoreSelect"
      disabled="true"
      emptyMessage="No options"
      itemMode="static"
      label="Ability to Pull BIQ?"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ GetInstallerAppCommCredit.data?.abilityToPullBiq }}"
    >
      <Option id="6fbcd" label="Yes" value="Yes" />
      <Option id="95fa4" label="No" value="No" />
    </Select>
    <Date
      id="dateOfFormationScoreDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      iconBefore="bold/interface-calendar"
      label="Date of Formation from SOS / License"
      labelPosition="top"
      marginType="normal"
      value="{{ GetLicenseSosFraud.data?.dateOfFormationFromSOSLicense }}"
    />
    <Select
      id="moreThan5ReviewsScoreSelect"
      disabled="true"
      emptyMessage="No options"
      itemMode="static"
      label="More than 5 online reviews!"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipText="{{ self.label }}"
      value="{{ GetInstallerAppCommCredit.data?.hasMoreThanFiveOnlineReviews }}"
    >
      <Option id="95fa4" label="Yes" value="Yes" />
      <Option id="6fbcd" label="No" value="No" />
    </Select>
    <Spacer id="scorecardSpacer2" marginType="normal" />
    <Date
      id="dateScorecardComplete"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Date Scorecard Completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"dateScorecardCompleted\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppScorecard.data?.dateScorecardCompleted }}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "dateScorecardCompleted", GetInstallerAppScorecard.data?.dateScorecardCompleted, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Date
      id="provisionalScorecardException"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Provisional Scorecard Exception"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"provisionalScorecardException\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppScorecard.data?.provisionalScorecardException }}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "provisionalScorecardException", GetInstallerAppScorecard.data?.provisionalScorecardException, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Statistic
      id="scorecardScore"
      align="center"
      currency="USD"
      label="Total Provisional Score"
      labelCaption="{{ 
  dateOfFormationScoreDate.value === '' || 
  pullBiqScoreSelect.value === null || 
  scorecardBiq.value === null || 
  moreThan5ReviewsScoreSelect.value === null || 
  minBusinessAgeMetScoreSelect.value === null || 
  dateScorecardComplete.value === '' 
    ? 'scorecard not complete' 
    : minBusinessAgeMetScoreSelect.style.border !== '#c4c4c4' || dateScorecardComplete.style.border !== '#c4c4c4' 
      ? 'save to complete scorecard' 
      : 'scorecard complete' 
}}"
      marginType="normal"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          {
            caption:
              "{{ self.labelCaption === 'scorecard not complete' ? 'danger' : 'success' }}",
          },
        ],
      }}
      value="{{totalProvisionalScore.data}}"
    />
    <Select
      id="minBusinessAgeMetScoreSelect"
      disabled=""
      emptyMessage="No options"
      itemMode="static"
      label="Minimum Business Age Met?"
      labelPosition="top"
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
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"minimumBusinessAgeMet\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.minimumBusinessAgeMet }}"
    >
      <Option id="95fa4" label="Yes" value="Yes" />
      <Option id="6fbcd" label="No" value="No" />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "minimumBusinessAgeMet", GetInstallerAppScorecard.data?.minimumBusinessAgeMet, self.value);',
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
        method="trigger"
        params={{ ordered: [] }}
        pluginId="totalProvisionalScore"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Spacer id="scorecardSpacer3" marginType="normal" />
  </View>
</Container>
