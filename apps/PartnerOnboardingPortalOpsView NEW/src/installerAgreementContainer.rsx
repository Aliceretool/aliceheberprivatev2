<Container
  id="installerAgreementContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Container
      id="installerAgreementGroup"
      _align="center"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="a7484" viewKey="View 1">
        <Text
          id="installerAgreementTitle"
          marginType="normal"
          value="#### Installer Agreement Verification"
          verticalAlign="center"
        />
        <TagsWidget2
          id="installerAgreementTags"
          allowWrap={true}
          colorByIndex="{{ theme.danger }}"
          data={'["Custom IA"]'}
          hidden="{{ !GetAccountHome.data.hasCustomInstallerAgreement }}"
        />
      </View>
    </Container>
    <Modal
      id="installerAgreementKickBackModalDeprecated"
      buttonText="Kick Back Section"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.installerAgreementReview === "Rejected" }}'
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
                ordered: [
                  { value: '{"installerAgreementReview": "Rejected" }' },
                ],
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
            { pluginId: "installerAgreementKickBackRejectionReasonTextArea" },
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
        id="installerAgreementKickBackForm"
        disableSubmit="{{ UpdateApplicationSectionStatus.isFetching || UpdateKickbackAttachments.isFetching}}"
        footerPaddingType="normal"
        headerPaddingType="normal"
        loading="{{ UpdateApplicationSectionStatus.isFetching || UpdateKickbackAttachments.isFetching}}"
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
            id="kickbackFormTitle"
            marginType="normal"
            value="#### Kick Back Details"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextArea
            id="installerAgreementKickBackRejectionReasonTextArea"
            autoResize={true}
            label="Rejection Notes"
            labelPosition="top"
            marginType="normal"
            minLines="3"
            placeholder="Please enter the reason for rejecting this section..."
            required={true}
          >
            <Event
              event="change"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      '{{{...applicationSectionStatusUpdates.value, "installerAgreementKickbackNotes": self.value}}}',
                  },
                ],
              }}
              pluginId="applicationSectionStatusUpdates"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </TextArea>
        </Body>
        <Footer>
          <Button
            id="installerAgreementKickBackSubmitButton"
            marginType="normal"
            submit={true}
            submitTargetId="installerAgreementKickBackForm"
            text="Submit kickback"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="UpdateInstallerAgreement"
          type="datasource"
          waitMs=""
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Button
      id="installerAgreementKickBackModalButton"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.installerAgreementReview === "Rejected" }}'
      }
      text="Kick Back Section"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="installerAgreementKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="installerAgreementKickBackNotesCollapsibleContainer"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hidden={
        '{{ GetAccountHome.data.applicationSectionStatus?.installerAgreementReview !== "Rejected" }}'
      }
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(246, 229, 196)" }] }}
    >
      <Header>
        <Text
          id="installerAgreementKickBackNotesHeaderText"
          marginType="normal"
          value="###### Kick Back Notes"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle1"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          marginType="normal"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ installerAgreementKickBackNotesCollapsibleContainer.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="installerAgreementKickBackNotesCollapsibleContainer"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="a8035" viewKey="View 1">
        <Text
          id="installerAgreementKickBackNotesText"
          marginType="normal"
          value="{{ GetAccountHome.data?.applicationSectionStatus?.installerAgreementKickbackNotes }} "
          verticalAlign="center"
        />
      </View>
    </Container>
  </Header>
  <View id="f8495" viewKey="View 1">
    <Spacer id="installerAgreementSpacer1" marginType="normal" />
    <EditableText
      id="installerAgreementVersion"
      hidden="{{ GetAccountHome.data.hasCustomInstallerAgreement }}"
      label="Version"
      placeholder="No value"
      readOnly="true"
      textSize="default"
      value="{{ GetInsurances.data?.agreement?.version}}"
    />
    <Link
      id="installerAgreementDocLink"
      iconBefore="bold/interface-download-button-2"
      marginType="normal"
      text="Download Installer Agreement"
      textSize="default"
    >
      <Event
        enabled="{{ GetInsurances.data !== null && GetInsurances.data.agreement !== null && Object.keys(GetInsurances.data.agreement.signingDocument).length > 0}}"
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: '{{ GetAccountHome.data.hasCustomInstallerAgreement ? GetAttachments.data.find(attachment => attachment.type === "Signed_Installer_Agreement")?.file?.url : GetInsurances.data === null || (GetInsurances.data.agreement === null || GetInsurances.data.agreement?.invalidatedAt) ? null : GetInsurances.data.agreement.signingDocument?.documentPdf?.file?.url}}',
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ GetAccountHome.data.hasCustomInstallerAgreement ? GetAttachments.data.find(attachment => attachment.type === "Signed_Installer_Agreement") == null : GetInsurances.data === null || GetInsurances.data.agreement === null || Object.keys(GetInsurances.data.agreement.signingDocument).length === 0}}'
        }
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "warning" },
                  { title: "Sorry!" },
                  {
                    description:
                      "Installer agreement not yet signed. Please reach out to the account owner(s).",
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
    <Spacer id="installerAgreementSpacer2" marginType="normal" />
    <Date
      id="installerAgreementRecievedDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      hidden="{{ GetAccountHome.data.hasCustomInstallerAgreement }}"
      iconBefore="bold/interface-calendar"
      label="Installer Agreement Received"
      labelPosition="top"
      marginType="normal"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      value="{{GetInsurances.data === null || GetInsurances.data.agreement === null ? null : GetInsurances.data.agreement.signingDocument.completedAt}}"
    />
    <TextInput
      id="installerAgreementSignedBy"
      disabled="true"
      hidden="{{ GetAccountHome.data.hasCustomInstallerAgreement }}"
      label="Installer Agreement Signed By"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      value="{{GetInsurances.data === null || GetInsurances.data.agreement === null ? null : GetInsurances.data.agreement.recipientName}}"
    />
    <Spacer
      id="installerAgreementSpacer3"
      hidden="{{ GetAccountHome.data.hasCustomInstallerAgreement }}"
      marginType="normal"
    />
  </View>
</Container>
