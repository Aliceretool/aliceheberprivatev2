<Container
  id="financialsContainer"
  _align="center"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text id="financialsTitle" value="### Financials" verticalAlign="center" />
    <Modal
      id="financialsKickBackModalDeprecated"
      buttonText="Kick Back Section"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.financialsReview === "Rejected" }}'
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
                ordered: [{ value: '{ "financialsReview": "Rejected" }' }],
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
            { pluginId: "financialsKickBackRejectionReasonTextArea" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "widget" },
            { method: "clearValue" },
            { pluginId: "financialsDocumentsToInvalidateMultiselect_Dep" },
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
            { params: { ordered: [{ value: "financials" }] } },
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
      ]}
      hidden="true"
      modalHeightType="auto"
    >
      <Form
        id="financialsKickBackForm"
        disabled=""
        disableSubmit="{{ UpdateKickbackRelatedAttachmentsForInsurances.isFetching || UpdateFinancialStatements.isFetching || UpdateApplicationSectionStatus.isFetching }}"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        loading="{{ UpdateKickbackRelatedAttachmentsForInsurances.isFetching || UpdateFinancialStatements.isFetching || UpdateApplicationSectionStatus.isFetching }}"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle1"
            value="#### Kick Back Details"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextArea
            id="financialsKickBackRejectionReasonTextArea"
            autoResize={true}
            label="Rejection Notes"
            labelPosition="top"
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
                      '{{{...applicationSectionStatusUpdates.value, "financialsKickbackNotes": self.value}}}',
                  },
                ],
              }}
              pluginId="applicationSectionStatusUpdates"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </TextArea>
          <Spacer id="spacer32" marginType="normal" />
          <Multiselect
            id="financialsDocumentsToInvalidateMultiselect_Dep"
            emptyMessage="No options"
            itemMode="static"
            label="Documents to invalidate:"
            labelPosition="top"
            overlayMaxHeight={375}
            placeholder="Select options"
            required={true}
            showSelectionIndicator={true}
            wrapTags={true}
          >
            <Option id="09d0f" label="Bank Statement" value="Bank_Statement" />
            <Option id="72aad" label="Tax Return" value="Tax_Return" />
            <Option id="09321" label="Balance Sheet" value="Balance_Sheet" />
            <Option
              id="30d5c"
              disabled={false}
              hidden={false}
              label="Profit & Loss"
              value="Profit_And_Loss"
            />
          </Multiselect>
        </Body>
        <Footer>
          <Button
            id="formButton1"
            submit={true}
            submitTargetId="financialsKickBackForm"
            text="Submit kickback"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="formatKickBackInvalidationsAsArray"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Container
      id="financialsKickBackNotesCollapsibleContainer"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hidden={
        '{{ GetAccountHome.data?.applicationSectionStatus?.financialsReview !== "Rejected" }}'
      }
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(246, 229, 196)" }] }}
    >
      <Header>
        <Text
          id="installerAgreementKickBackNotesHeaderText3"
          marginType="normal"
          value="###### Kick Back Notes"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle7"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          marginType="normal"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ financialsKickBackNotesCollapsibleContainer.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="financialsKickBackNotesCollapsibleContainer"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="a8035" viewKey="View 1">
        <Text
          id="financialsKickBackNotesText"
          marginType="normal"
          value="{{ GetAccountHome.data?.applicationSectionStatus?.financialsKickbackNotes }} "
          verticalAlign="center"
        />
      </View>
    </Container>
  </Header>
  <View id="880fa" viewKey="View 1">
    <Button
      id="financialsKickBackModalButton"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.financialsReview === "Rejected" }}'
      }
      text="Kick Back Section"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="financialsKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="financialsSpacer" marginType="normal" />
    <Link
      id="profitAndLossLink"
      disabled="{{ GetAttachments.data === null || GetAttachments.data?.filter((attachment) => attachment.type === 'Profit_And_Loss').length === 0 }}"
      iconBefore="bold/interface-link-square-alternate"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      text="Profit & Loss"
      textSize="h4"
    >
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "const profitAndLosses = GetAttachments.data === null || GetAttachments.data?.filter((attachment) => attachment.type === 'Profit_And_Loss').length === 0 ? [] : GetAttachments.data?.filter((attachment) => attachment.type === 'Profit_And_Loss' && !attachment.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt));\n\nprofitAndLosses.forEach(document => utils.openUrl(document.file.urlForPreview));\n",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Link
      id="bankStatementsLink"
      disabled="{{ GetAttachments.data === null || GetAttachments.data?.filter((attachment) => attachment.type === 'Bank_Statement').length === 0 }}"
      iconBefore="bold/interface-link-square-alternate"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      text="Bank Statements"
      textSize="h4"
    >
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "const bankStatements = GetAttachments.data === null || GetAttachments.data?.filter((attachment) => attachment.type === 'Bank_Statement').length === 0 ? [] : GetAttachments.data?.filter((attachment) => attachment.type === 'Bank_Statement' && !attachment.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt));\n\nbankStatements.forEach(document => utils.openUrl(document.file.urlForPreview));\n",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Link
      id="taxReturnsLink"
      disabled="{{ GetAttachments.data === null || GetAttachments.data?.filter((attachment) => attachment.type === 'Tax_Return').length === 0 }}"
      iconBefore="bold/interface-link-square-alternate"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      text="Tax Returns"
      textSize="h4"
    >
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "const taxReturns = GetAttachments.data === null || GetAttachments.data?.filter((attachment) => attachment.type === 'Tax_Return').length === 0 ? [] : GetAttachments.data?.filter((attachment) => attachment.type === 'Tax_Return' && !attachment.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt));\n\ntaxReturns.forEach(document => utils.openUrl(document.file.urlForPreview));\n",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Link
      id="balanceSheetLink"
      disabled="{{ GetAttachments.data === null || GetAttachments.data?.filter((attachment) => attachment.type === 'Balance_Sheet').length === 0 }}"
      iconBefore="bold/interface-link-square-alternate"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      text="Balance Sheet"
      textSize="h4"
    >
      <Event
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: "const balancSeheets = GetAttachments.data === null || GetAttachments.data?.filter((attachment) => attachment.type === 'Balance_Sheet').length === 0 ? [] : GetAttachments.data?.filter((attachment) => attachment.type === 'Balance_Sheet' && !attachment.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt));\n\nbalancSeheets.forEach(document => utils.openUrl(document.file.urlForPreview));\n",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Spacer id="financialsSpacer2" marginType="normal" />
    <Date
      id="ocrolusProcessingDateInput"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Ocrolus Processing Date"
      labelPosition="top"
      showClear={true}
      value="{{ GetFinancialStatements.data?.filter((statement) => statement.statementType === 'Bank_Statement' && !statement.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt))[0]?.ocrolusProcessingDate }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ { ...financialsUpdates.value, \"ocrolusProcessingDate\": self.value == '' ? null : self.value } }}",
            },
          ],
        }}
        pluginId="financialsUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <TextArea
      id="ocrolusUploadNotesTextArea"
      autoResize={true}
      label="Ocrolus Upload Notes"
      labelPosition="top"
      minLines="9"
      placeholder="Enter value"
      value="{{ GetFinancialStatements.data?.filter((statement) => statement.statementType === 'Bank_Statement' && !statement.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt))[0]?.ocrolusUploadNotes }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ { ...financialsUpdates.value, \"ocrolusUploadNotes\": self.value == '' ? null : self.value } }}",
            },
          ],
        }}
        pluginId="financialsUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <Spacer id="financialsSpacer3" />
    <TextInput
      id="ocrolusAuthenticityScoreInput"
      customValidation={
        '{{ Number.isInteger(+self.value) ? "" : "Please enter an integer value" }}'
      }
      label="Ocrolus Authenticity Score"
      labelPosition="top"
      pattern="^\d+$"
      placeholder="Enter value"
      value="{{ GetFinancialStatements.data?.filter((statement) => statement.statementType === 'Bank_Statement' && !statement.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt))[0]?.ocrolusAuthenticityScore }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ { ...financialsUpdates.value, \"ocrolusAuthenticityScore\": self.value == '' ? null : +self.value } }}",
            },
          ],
        }}
        pluginId="financialsUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Spacer id="financialsSpacer4" />
    <DateTime
      id="bankStatementsOverrideInput"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      displayTimeZone="local"
      iconBefore="bold/interface-calendar"
      label="Bank Statements Override"
      labelPosition="top"
      manageTimeZone={true}
      minuteStep={15}
      showClear={true}
      timeFormat="h:m a"
      value="{{ GetFinancialStatements.data?.filter((statement) => statement.statementType === 'Bank_Statement' && !statement.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt))[0]?.bankStatementOverride }}"
      valueTimeZone="00:00"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ { ...financialsUpdates.value, \"bankStatementOverride\": self.value == '' ? null : self.value } }}",
            },
          ],
        }}
        pluginId="financialsUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </DateTime>
    <Spacer id="financialsSpacer5" marginType="normal" />
  </View>
</Container>
