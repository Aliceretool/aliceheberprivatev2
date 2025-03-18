<Container
  id="commercialCreditContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Button
      id="experianLoginButton"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      marginType="normal"
      text="Experian BIQ Login"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "https://gateway.secure.experian.com/BusinessIQ/login.html",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="containerTitle4"
      marginType="normal"
      value="#### Commercial Credit"
      verticalAlign="center"
    />
  </Header>
  <View id="f8495" viewKey="View 1">
    <Spacer id="commercialCreditSpacer1" marginType="normal" />
    <NumberInput
      id="daysBeyondNumberInput"
      allowNull={true}
      currency="USD"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetInstallerAppCommCredit.data?.daysBeyondTerms === "n/a" }}'
      }
      inputTooltip={
        '{{ self.disabled ? "To enter numbers, please uncheck the associated checkbox" : "" }}'
      }
      inputValue={0}
      label="DBT (Days Beyond Terms)"
      labelPosition="top"
      marginType="normal"
      min="0"
      placeholder="Enter value"
      showClear={true}
      showSeparators={true}
      showStepper={true}
      style={{
        ordered: [
          {
            border:
              '{{ \n  installerApplicationUpdates?.value?.hasOwnProperty("daysBeyondTerms") && installerApplicationUpdates?.value?.daysBeyondTerms !== "n/a" \n    ? "warning" \n    : "#c4c4c4" \n}}',
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.daysBeyondTerms }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "daysBeyondTerms", GetInstallerAppCommCredit.data?.daysBeyondTerms, self.value?.toString() || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </NumberInput>
    <Select
      id="scoreBiqSelect"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      emptyMessage="No options"
      itemMode="static"
      label="Ability to Score BIQ?"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            border:
              '{{ installerApplicationUpdates?.value?.hasOwnProperty("abilityToScoreBiq") ? "warning" : "#c4c4c4" }}',
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.abilityToScoreBiq}}"
    >
      <Option id="6fbcd" label="Yes" value="Yes" />
      <Option id="95fa4" label="No" value="No" />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "abilityToScoreBiq", GetInstallerAppCommCredit.data?.abilityToScoreBiq, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <NumberInput
      id="fsrNumberInput"
      allowNull={true}
      currency="USD"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetInstallerAppCommCredit.data?.financialStabilityRiskScore === "n/a" }}'
      }
      inputTooltip={
        '{{ self.disabled ? "To enter numbers, please uncheck the associated checkbox" : "" }}'
      }
      inputValue={0}
      label="FSR (Financial Stability Risk) Score"
      labelPosition="top"
      marginType="normal"
      min="0"
      placeholder="Enter value"
      showClear={true}
      showSeparators={true}
      showStepper={true}
      style={{
        ordered: [
          {
            border:
              '{{ \n  installerApplicationUpdates?.value?.hasOwnProperty("financialStabilityRiskScore") && installerApplicationUpdates?.value?.financialStabilityRiskScore !== "n/a" \n    ? "warning" \n    : "#c4c4c4" \n}}',
          },
        ],
      }}
      tooltipText="{{ self.label }}"
      value="{{ GetInstallerAppCommCredit.data?.financialStabilityRiskScore }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "financialStabilityRiskScore", GetInstallerAppCommCredit.data?.financialStabilityRiskScore, self.value?.toString() || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </NumberInput>
    <NumberInput
      id="intelliscoreNumberInput"
      allowNull={true}
      currency="USD"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetInstallerAppCommCredit.data?.intelliscore === "n/a" }}'
      }
      inputTooltip={
        '{{ self.disabled ? "To enter numbers, please uncheck the associated checkbox" : "" }}'
      }
      inputValue={0}
      label="Intelliscore"
      labelPosition="top"
      marginType="normal"
      min="0"
      placeholder="Enter value"
      showClear={true}
      showSeparators={true}
      showStepper={true}
      style={{
        ordered: [
          {
            border:
              '{{ \n  installerApplicationUpdates?.value?.hasOwnProperty("intelliscore") && installerApplicationUpdates?.value?.intelliscore !== "n/a" \n    ? "warning" \n    : "#c4c4c4" \n}}',
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.intelliscore }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "intelliscore", GetInstallerAppCommCredit.data?.intelliscore, self.value?.toString() || null);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </NumberInput>
    <Select
      id="pullBiqSelect"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      emptyMessage="No options"
      itemMode="static"
      label="Ability to Pull BIQ?"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            border:
              '{{ installerApplicationUpdates?.value?.hasOwnProperty("abilityToPullBiq") ? "warning" : "#c4c4c4" }}',
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.abilityToPullBiq }}"
    >
      <Option id="6fbcd" label="Yes" value="Yes" />
      <Option id="95fa4" label="No" value="No" />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "abilityToPullBiq", GetInstallerAppCommCredit.data?.abilityToPullBiq, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Checkbox
      id="fsrNotAvailableCheckbox"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Not Available?"
      labelWrap={true}
      marginType="normal"
      style={{
        ordered: [
          {
            border:
              '{{ \n  installerApplicationUpdates?.value?.hasOwnProperty("financialStabilityRiskScore") && installerApplicationUpdates?.value?.financialStabilityRiskScore === "n/a" \n    ? "warning" \n    : "#c4c4c4" \n}}',
          },
          {
            checkedBackground:
              '{{ \n  installerApplicationUpdates?.value?.hasOwnProperty("financialStabilityRiskScore") && installerApplicationUpdates?.value?.financialStabilityRiskScore === "n/a" \n    ? "warning" \n    : "#548582" \n}}',
          },
        ],
      }}
      value={
        '{{ GetInstallerAppCommCredit.data?.financialStabilityRiskScore === "n/a" }}'
      }
    >
      <Event
        enabled="{{ self.value === true }}"
        event="change"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="fsrNumberInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ self.value === true }}"
        event="change"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="fsrNumberInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ self.value === false }}"
        event="change"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="fsrNumberInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'const isFSRAvailable = self.value;\nif (isFSRAvailable) {\n  installerApplicationUpdates.setValue({\n    ...installerApplicationUpdates.value,\n    "financialStabilityRiskScore": "n/a"\n  });\n} else {\n  const { financialStabilityRiskScore, ...remainingData } = installerApplicationUpdates.value;\n  if (financialStabilityRiskScore !== undefined) {\n    installerApplicationUpdates.setValue(remainingData);\n  }\n}',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Checkbox
      id="intelliscoreNotAvailableCheckbox"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Not Available?"
      labelWrap={true}
      marginType="normal"
      style={{
        ordered: [
          {
            border:
              '{{ \n  installerApplicationUpdates?.value?.hasOwnProperty("intelliscore") && installerApplicationUpdates?.value?.intelliscore === "n/a" \n    ? "warning" \n    : "#c4c4c4" \n}}',
          },
          {
            checkedBackground:
              '{{ \n  installerApplicationUpdates?.value?.hasOwnProperty("intelliscore") && installerApplicationUpdates?.value?.intelliscore === "n/a" \n    ? "warning" \n    : "#548582" \n}}',
          },
        ],
      }}
      value={'{{ GetInstallerAppCommCredit.data?.intelliscore === "n/a" }}'}
    >
      <Event
        enabled="{{ self.value === true }}"
        event="change"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="intelliscoreNumberInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ self.value === true }}"
        event="change"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="intelliscoreNumberInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ self.value === false }}"
        event="change"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="intelliscoreNumberInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'const isIntelliscoreAvailable = self.value;\nif (isIntelliscoreAvailable) {\n  installerApplicationUpdates.setValue({\n    ...installerApplicationUpdates.value,\n    "intelliscore": "n/a"\n  });\n} else {\n  const { intelliscore, ...remainingData } = installerApplicationUpdates.value;\n  if (intelliscore !== undefined) {\n    installerApplicationUpdates.setValue(remainingData);\n  }\n}',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Checkbox
      id="dbtNotAvailableCheckbox"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Not Available?"
      labelWrap={true}
      marginType="normal"
      style={{
        ordered: [
          {
            border:
              '{{ \n  installerApplicationUpdates?.value?.hasOwnProperty("daysBeyondTerms") && installerApplicationUpdates?.value?.daysBeyondTerms === "n/a" \n    ? "warning" \n    : "#c4c4c4" \n}}',
          },
          {
            checkedBackground:
              '{{ \n  installerApplicationUpdates?.value?.hasOwnProperty("daysBeyondTerms") && installerApplicationUpdates?.value?.daysBeyondTerms === "n/a" \n    ? "warning" \n    : "#548582" \n}}',
          },
        ],
      }}
      value={'{{ GetInstallerAppCommCredit.data?.daysBeyondTerms === "n/a" }}'}
    >
      <Event
        enabled="{{ self.value === true }}"
        event="change"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="daysBeyondNumberInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ self.value === true }}"
        event="change"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="daysBeyondNumberInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ self.value === false }}"
        event="change"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="daysBeyondNumberInput"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'const isDBTAvailable = self.value;\nif (isDBTAvailable) {\n  installerApplicationUpdates.setValue({\n    ...installerApplicationUpdates.value,\n    "daysBeyondTerms": "n/a"\n  });\n} else {\n  const { daysBeyondTerms, ...remainingData } = installerApplicationUpdates.value;\n  if (daysBeyondTerms !== undefined) {\n    installerApplicationUpdates.setValue(remainingData);\n  }\n}',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Spacer id="commercialCreditSpacer2" marginType="normal" />
    <Date
      id="commercialCreditCompleteDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Commercial Credit Check Completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"commercialCreditCheckCompleted\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      tooltipText="{{ self.label }}"
      value="{{ GetInstallerAppCommCredit.data?.commercialCreditCheckCompleted }}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "commercialCreditCheckCompleted", GetInstallerAppCommCredit.data?.commercialCreditCheckCompleted, self.value, true);',
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
      id="ofacCheckDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="OFAC Check Completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates?.value?.hasOwnProperty(\"ofacCheckCompleted\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetInstallerAppCommCredit.data?.ofacCheckCompleted || null }}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "ofacCheckCompleted", GetInstallerAppCommCredit.data?.ofacCheckCompleted, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="commercialCreditSpacer3" marginType="normal" />
    <FileButton
      id="uploadBiqFile"
      _isUpgraded={true}
      disabled="{{ isLendingPartnerVettingUser.value || CreateAttachmentFileUpload.isFetching }}"
      files={[]}
      iconBefore="bold/programming-browser-search"
      loading="{{ CreateAttachmentFileUpload.isFetching }}"
      marginType="normal"
      styleVariant="outline"
      text={'File Upload "BIQ Profile"'}
      value={[]}
    >
      <Event
        enabled=""
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["attachmentType"]' },
            { value: "Biq_Profile" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["fileUpload"]' },
            { value: "{{ self.value?.[0]?.base64Data }}" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["component"]' },
            { value: "{{ self.files?.[0] }}" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["connection"]' },
            { value: '"installerApplication"' },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="parse"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createOperationsBody"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileButton>
    <Spacer id="commercialCreditSpacer4" marginType="normal" />
  </View>
</Container>
