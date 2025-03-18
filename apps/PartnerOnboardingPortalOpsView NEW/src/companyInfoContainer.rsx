<Container
  id="companyInfoContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Modal
      id="companyInfoKickBackModalDeprecated"
      buttonText="Kick Back Section"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data.applicationSectionStatus.companyProfileReview === "Rejected" }}'
      }
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "applicationSectionStatusUpdates" },
            { targetId: null },
            {
              params: {
                ordered: [{ value: '{"companyProfileReview": "Rejected" }' }],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "applicationSectionStatusUpdates" },
            { targetId: null },
            { params: { ordered: [{ value: "{}" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "widget" },
            { method: "clearValue" },
            { pluginId: "companyInfoKickBackRejectionReasonTextArea" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "open" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "kickBackSection" },
            { targetId: null },
            { params: { ordered: [{ value: "companyInfo" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "kickBackSection" },
            { targetId: null },
            { params: { ordered: [{ value: "null" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "widget" },
            { method: "resetValue" },
            { pluginId: "invalidateSampleContractCheckbox" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="true"
      margin="4px 8px"
      marginType="normal"
      modalHeightType="auto"
      style={{ ordered: [{ "primary-surface": "" }] }}
    >
      <Form
        id="companyInfoKickBackForm"
        footerPaddingType="normal"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="companyInfoKickBackFormTitle"
            marginType="normal"
            value="#### Kick Back Details"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextArea
            id="companyInfoKickBackRejectionReasonTextArea"
            autoResize={true}
            label="Rejection Notes"
            labelPosition="top"
            marginType="normal"
            minLines="3"
            placeholder="Please enter the reason for rejecting this section..."
            required="true"
          >
            <Event
              event="change"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      '{{{...applicationSectionStatusUpdates.value, "companyProfileKickbackNotes": self.value}}}',
                  },
                ],
              }}
              pluginId="applicationSectionStatusUpdates"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </TextArea>
          <Spacer id="spacer18" marginType="normal" />
          <Checkbox
            id="invalidateSampleContractCheckbox"
            label="Invalidate Sample Contract?"
            labelPosition="left"
            marginType="normal"
          />
        </Body>
        <Footer>
          <Button
            id="companyInfoKickBackSubmitButton"
            marginType="normal"
            submit={true}
            submitTargetId="companyInfoKickBackForm"
            text="Submit kickback"
          />
        </Footer>
        <Event
          enabled="{{invalidateSampleContractCheckbox.value === true}}"
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="formatKickBackInvalidationsAsArray"
          type="datasource"
          waitMs=""
          waitType="debounce"
        />
        <Event
          enabled="{{invalidateSampleContractCheckbox.value === false}}"
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="UpdateApplicationSectionStatus"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Text
      id="companyInfoTitle"
      marginType="normal"
      value="### Company Info"
      verticalAlign="center"
    />
    <Button
      id="secOfStateUrlButton"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      marginType="normal"
      text="Secretary of State Wiki Page"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "https://sungage.atlassian.net/wiki/spaces/SUNGAGE/pages/766443525/Secretary+of+State+SoS+Business+Certificate+Search+Sites",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="companyInfoKickBackNotesCollapsibleContainer"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hidden="true"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(246, 229, 196)" }] }}
    >
      <Header>
        <Text
          id="companyInfoKickBackNotesHeaderText"
          marginType="normal"
          value="###### Kick Back Notes"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle2"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          marginType="normal"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ companyInfoKickBackNotesCollapsibleContainer.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="companyInfoKickBackNotesCollapsibleContainer"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="a8035" viewKey="View 1">
        <Text
          id="companyInfoKickBackNotesText"
          marginType="normal"
          value="{{ GetAccountHome.data?.applicationSectionStatus?.companyProfileKickbackNotes }} "
          verticalAlign="center"
        />
      </View>
    </Container>
  </Header>
  <View id="40bf9" viewKey="View 1">
    <Spacer id="companyInfoSpacer1" marginType="normal" />
    <TextInput
      id="legalEntityTextInput"
      label="Legal Name of Entity"
      labelPosition="top"
      marginType="normal"
      placeholder="None entered"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{self.value !== GetLicenseSosFraud.data.applicationCompany.legalName && self.value !== '' ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      value="{{ GetLicenseSosFraud.data?.applicationCompany?.legalName }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'applicationCompanyUpdates.setValue({...applicationCompanyUpdates.value, "legalName": self.value})',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="dbaTextInput"
      label="DBA Name"
      labelPosition="top"
      marginType="normal"
      placeholder="None entered"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{self.value !== GetLicenseSosFraud.data.applicationCompany.dbaName && self.value !== '' ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      value="{{GetLicenseSosFraud.data === null ? null : GetLicenseSosFraud.data.applicationCompany.dbaName}}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'applicationCompanyUpdates.setValue({...applicationCompanyUpdates.value, "dbaName": self.value})',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="yearOfFormationTextInput"
      label="Year of Formation"
      labelPosition="top"
      labelWrap={true}
      marginType="normal"
      placeholder="None entered"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{self.value !== GetLicenseSosFraud.data.applicationCompany.yearOfFormation && self.value !== '' ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      value="{{GetLicenseSosFraud.data === null ? null : GetLicenseSosFraud.data.applicationCompany.yearOfFormation}}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'applicationCompanyUpdates.setValue({...applicationCompanyUpdates.value, "yearOfFormation": self.value})',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="stateOfFormationTextInput"
      label="State of Formation"
      labelPosition="top"
      labelWrap={true}
      marginType="normal"
      placeholder="None entered"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{self.value !== GetLicenseSosFraud.data.applicationCompany.stateOfFormation && self.value !== '' ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      value="{{GetLicenseSosFraud.data === null ? null : GetLicenseSosFraud.data.applicationCompany.stateOfFormation}}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'applicationCompanyUpdates.setValue({...applicationCompanyUpdates.value, "stateOfFormation": self.value})',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Date
      id="dateOfFormationSOSDate"
      dateFormat="MM/dd/yyyy"
      disabled="{{  isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Date of Formation from SOS/License"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ moment(self.value).format('YYYY-DD-MM') !== moment(GetLicenseSosFraud.data.dateOfFormationFromSOSLicense).format('YYYY-DD-MM') ? 'warning' : '#C4C4C4'}}\n",
          },
        ],
      }}
      tooltipText="{{ self.label }}"
      value="{{GetLicenseSosFraud.data === null ? null : GetLicenseSosFraud.data.dateOfFormationFromSOSLicense}}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: "installerApplicationUpdates.setValue({...installerApplicationUpdates.value, \"dateOfFormationFromSOSLicense\": (self.value === '' ? null : moment(self.value).format())})",
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
      id="businessFilingChecksDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Business Filing Checks Completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{moment(self.value).format('YYYY-DD-MM') !== moment(GetLicenseSosFraud.data.businessFilingChecksCompleted).format('YYYY-DD-MM')  ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      tooltipText="{{ self.label }}"
      value="{{GetLicenseSosFraud.data === null || GetLicenseSosFraud.data.businessFilingChecksCompleted === null ? null : GetLicenseSosFraud.data.businessFilingChecksCompleted }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: "installerApplicationUpdates.setValue({...installerApplicationUpdates.value, \"businessFilingChecksCompleted\": self.value === '' ? null : self.value+moment().format().slice(10)})",
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
      id="streetTextInput"
      label="Street"
      labelPosition="top"
      placeholder="Enter value"
      readOnly="true"
      style={{
        ordered: [
          {
            border:
              "{{self.value !== GetLicenseSosFraud.data.applicationCompany.address.street1 && self.value !== '' ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      value="{{ GetLicenseSosFraud.data?.applicationCompany?.address.street1 }}"
    />
    <TextInput
      id="cityTextInput"
      label="City"
      labelPosition="top"
      placeholder="Enter value"
      readOnly="true"
      style={{
        ordered: [
          {
            border:
              "{{self.value !== GetLicenseSosFraud.data.applicationCompany.address.city && self.value !== '' ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      value="{{ GetLicenseSosFraud.data?.applicationCompany?.address.city }}"
    />
    <TextInput
      id="stateTextInput"
      label="State"
      labelPosition="top"
      placeholder="Enter value"
      readOnly="true"
      style={{
        ordered: [
          {
            border:
              "{{self.value !== GetLicenseSosFraud.data.applicationCompany.address.state && self.value !== '' ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      value="{{ GetLicenseSosFraud.data?.applicationCompany?.address.state }}"
    />
    <TextInput
      id="zipCodeTextInput"
      label="Zip Code"
      labelPosition="top"
      placeholder="Enter value"
      readOnly="true"
      style={{
        ordered: [
          {
            border:
              "{{self.value !== GetLicenseSosFraud.data.applicationCompany.address.zipCode && self.value !== '' ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      value="{{ GetLicenseSosFraud.data?.applicationCompany?.address.zipCode }}"
    />
    <Spacer id="companyInfoSpacer2" marginType="normal" />
    <Text
      id="sosFileUploadText"
      marginType="normal"
      value="#### File Upload for SOS / DBA"
      verticalAlign="center"
    />
    <Spacer id="spacer17" marginType="normal" />
    <Select
      id="typeOfFileSelect"
      emptyMessage="No options"
      itemMode="static"
      label="What type of file is this?"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showSelectionIndicator={true}
    >
      <Option
        id="7eff0"
        label="Secretary of State Registrations"
        value="Sos_Registrations"
      />
      <Option id="9b45d" label="DBA" value="Dba_Registrations" />
    </Select>
    <FileButton
      id="sosFileUpload"
      _isUpgraded={true}
      disabled="{{ isLendingPartnerVettingUser.value || typeOfFileSelect.value === null}}"
      files={[]}
      iconBefore="bold/programming-browser-search"
      loading="{{CreateAttachmentFileUpload.isFetching}}"
      marginType="normal"
      styleVariant="outline"
      text="Upload SOS/DBA attachment"
      tooltipText={
        '{{typeOfFileSelect.value === null ? "File type is required" : null }}'
      }
      value={[]}
    >
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["attachmentType"]' },
            { value: "{{typeOfFileSelect.value}}" },
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
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["fileUpload"]' },
            { value: "{{self.value?.[0]?.base64Data}}" },
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
            { keyPath: '["component"]' },
            { value: "{{self.files?.[0]}}" },
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
    <Spacer id="companyInfoSpacer5" marginType="normal" />
  </View>
</Container>
