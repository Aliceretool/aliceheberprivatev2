<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle1"
      value="### Personalise Learner Message"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="d9b29de1"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextArea
      id="textArea2"
      autoResize={true}
      label="Edit & Confirm Message to be Sent to Learners"
      labelPosition="top"
      minLines={2}
      value="Hi [Name],

I hope you’re having a good week.

I’ve been reviewing cohort progress and noticed that your Off-The-Job (OTJ) hours are currently flagged as 'Behind'. It is crucial for your apprenticeship that we get this back on track.

Could you please update your logs by the end of this week or let me know if there are any blockers preventing you from doing so?

Thanks"
    />
  </Body>
  <Footer>
    <Button
      id="button10"
      disabled="{{ isBulkSending.value }}"
      loading="{{ isBulkSending.value }}"
      text="Send Bulk Message"
    >
      <Event
        id="525002ba"
        event="click"
        method="trigger"
        params={{}}
        pluginId="execute_bulk_message"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="1deee02c"
        event="click"
        method="clearValue"
        params={{}}
        pluginId="select1"
        type="widget"
        waitMs="200"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
