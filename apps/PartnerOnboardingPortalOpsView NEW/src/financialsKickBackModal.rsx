<ModalFrame
  id="financialsKickBackModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
>
  <Header>
    <Button
      id="modalCloseButton5"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="financialsKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="financialsKickBackForm2"
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
          id="formTitle2"
          value="#### Kick Back Details"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="financialsKickBackRejectionReasonTextArea2"
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
        <Spacer id="spacer36" marginType="normal" />
        <Multiselect
          id="financialsDocumentsToInvalidateMultiselect"
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
          id="formButton2"
          submit={true}
          submitTargetId="financialsKickBackForm2"
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
  </Body>
  <Event
    event="show"
    method="setValue"
    params={{ ordered: [{ value: '{ "financialsReview": "Rejected" }' }] }}
    pluginId="applicationSectionStatusUpdates"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="setValue"
    params={{ ordered: [{ value: "{}" }] }}
    pluginId="applicationSectionStatusUpdates"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="clearValue"
    params={{ ordered: [] }}
    pluginId="financialsKickBackRejectionReasonTextArea2"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="clearValue"
    params={{ ordered: [] }}
    pluginId="financialsDocumentsToInvalidateMultiselect"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="show"
    method="setValue"
    params={{ ordered: [{ value: "financials" }] }}
    pluginId="kickBackSection"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="hide"
    method="setValue"
    params={{ ordered: [{ value: "null" }] }}
    pluginId="kickBackSection"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
