<Container
  id="highRiskContainer"
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
      id="highRiskContainerTitle"
      marginType="normal"
      value="#### High Risk Designation"
      verticalAlign="center"
    />
  </Header>
  <View id="bde3c" viewKey="View 1">
    <Spacer id="highRiskSpacer1" marginType="normal" />
    <TextInput
      id="weightedFicoScorecardTextInput"
      label="Weighted FICO"
      labelPosition="top"
      marginType="normal"
      placeholder="Not Calculated Yet"
      readOnly="true"
      value="{{ calculateWeightedFICO?.data }}"
    />
    <TextArea
      id="highRiskNotes"
      autoResize={true}
      label="High Risk Notes"
      labelPosition="top"
      marginType="normal"
      minLines="4"
      placeholder="Notes go here"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"highRiskNotes\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppScorecard.data?.highRiskNotes }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "highRiskNotes", GetInstallerAppScorecard.data?.highRiskNotes, self.value || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <Date
      id="flaggedForHighRiskDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Date Flagged for High Risk"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"dateFlaggedForHighRisk\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppScorecard.data?.dateFlaggedForHighRisk }}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "dateFlaggedForHighRisk", GetInstallerAppScorecard.data?.dateFlaggedForHighRisk, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <TextInput
      id="fsrTextInput"
      label="FSR"
      labelPosition="top"
      marginType="normal"
      placeholder="Not Entered Yet"
      readOnly="true"
      value={
        '{{ GetInstallerAppScorecard.data?.financialStabilityRiskScore === "n/a" ? "None available" : GetInstallerAppScorecard.data?.financialStabilityRiskScore }}'
      }
    />
    <TextInput
      id="lowestOwnerFicoScoreTextInput"
      label="Lowest Owner FICO"
      labelPosition="top"
      marginType="normal"
      placeholder="Not Calculated Yet"
      readOnly="true"
      value="{{ calculateLowestFICO?.data }}"
    />
    <TextInput
      id="intellyScoreTextInput"
      label="Intelly Score"
      labelPosition="top"
      marginType="normal"
      placeholder="Not Entered Yet"
      readOnly="true"
      value={
        '{{ GetInstallerAppScorecard.data?.intelliscore === "n/a" ? "None available" : GetInstallerAppScorecard.data?.intelliscore }}'
      }
    />
    <TextInput
      id="highestBiqScoreTextInput"
      label="Highest BK+"
      labelPosition="top"
      marginType="normal"
      placeholder="Not Calculated Yet"
      readOnly="true"
      value="{{ calculateHighestBKPlusScore?.data }}"
    />
    <Spacer id="highRiskSpacer2" marginType="normal" />
  </View>
</Container>
