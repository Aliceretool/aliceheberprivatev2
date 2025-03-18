<Container
  id="sampleContractContainer"
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
      id="containerTitle7"
      marginType="normal"
      value="#### Sample Contract Check"
      verticalAlign="center"
    />
    <Modal
      id="companyInfoKickBackModal2Deprecated"
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
            { pluginId: "invalidateSampleContractCheckbox2" },
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
        id="companyInfoKickBackForm2Deprecated"
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
            id="companyInfoKickBackFormTitle2"
            marginType="normal"
            value="#### Kick Back Details"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextArea
            id="companyInfoKickBackRejectionReasonTextArea2"
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
          <Spacer id="spacer26" marginType="normal" />
          <Checkbox
            id="invalidateSampleContractCheckbox2"
            label="Invalidate Sample Contract?"
            labelPosition="left"
            marginType="normal"
          />
        </Body>
        <Footer>
          <Button
            id="companyInfoKickBackSubmitButton2"
            marginType="normal"
            submit={true}
            submitTargetId="companyInfoKickBackForm2Deprecated"
            text="Submit kickback"
          />
        </Footer>
        <Event
          enabled="{{invalidateSampleContractCheckbox2.value === true}}"
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="formatKickBackInvalidationsAsArray"
          type="datasource"
          waitMs=""
          waitType="debounce"
        />
        <Event
          enabled="{{invalidateSampleContractCheckbox2.value === false}}"
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
    <Container
      id="companyInfoKickBackNotesCollapsibleContainer2"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hidden={
        '{{ GetAccountHome.data.applicationSectionStatus?.companyProfileReview !== "Rejected" }}'
      }
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(246, 229, 196)" }] }}
    >
      <Header>
        <Text
          id="companyInfoKickBackNotesHeaderText3"
          marginType="normal"
          value="###### Kick Back Notes"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle6"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          marginType="normal"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ companyInfoKickBackNotesCollapsibleContainer2.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="companyInfoKickBackNotesCollapsibleContainer2"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="a8035" viewKey="View 1">
        <Text
          id="companyInfoKickBackNotesText3"
          marginType="normal"
          value="{{ GetAccountHome.data?.applicationSectionStatus?.companyProfileKickbackNotes }} "
          verticalAlign="center"
        />
      </View>
    </Container>
    <Button
      id="openCompanyInfoKickBackModal2Button"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data.applicationSectionStatus.companyProfileReview === "Rejected" }}'
      }
      text="Kick Back Section"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="companyInfoKickBackModal2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="f8495" viewKey="View 1">
    <Spacer id="contractSpacer1" marginType="normal" />
    <Link
      id="sampleContractLink"
      iconBefore="bold/interface-download-button-2"
      marginType="normal"
      text="Download Sample Contract (Upoaded by Installer in the POP)"
      textSize="default"
    >
      <Event
        enabled="{{ GetAttachments.data !== null && GetAttachments.data.filter((attachment) => attachment.type === 'Sample_Contract').length > 0}}"
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "{{GetAttachments.data === null || GetAttachments.data.filter((attachment) => attachment.type === 'Sample_Contract').length === 0 ? '#' : GetAttachments.data.filter((attachment) => attachment.type === 'Sample_Contract' && !attachment.invalidatedAt)[0]?.file.url }}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ GetAttachments.data === null || GetAttachments.data.filter((attachment) => attachment.type === 'Sample_Contract').length === 0}}"
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "warning" },
                  { title: "Sorry! " },
                  {
                    description:
                      "Sample contract not yet uploaded by applicant. Please reach out to the account.",
                  },
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
    </Link>
    <Spacer id="contractSpacer2" marginType="normal" />
    <Date
      id="twoYearWarrantyDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value || GetAttachments.data === null || GetAttachments.data.filter((attachment) => attachment.type === 'Sample_Contract').length === 0}}"
      iconBefore="bold/interface-calendar"
      label="Contract 2-year Warranty Verified"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{moment(self.value).format('YYYY-MM-DD') !== moment(GetInsurances.data.contractTwoYearWarrantyVerified).format('YYYY-MM-DD') ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetInsurances.data === null ? null : GetInsurances.data.contractTwoYearWarrantyVerified}}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: "installerApplicationUpdates.setValue({...installerApplicationUpdates.value, \"contractTwoYearWarrantyVerified\": self.value === '' ? null : self.value+moment().format().slice(10)})",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="contractSpacer3" marginType="normal" />
  </View>
</Container>
