<ModalFrame
  id="modalCompleteInformation"
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
      id="modalTitle6"
      value="### {{ transitionNameTemp2.value }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton6"
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
        pluginId="modalCompleteInformation"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form19"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ transitionNameTemp2.value != 'Complete Information' }}"
      marginType="normal"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Text
          id="formTitle20"
          marginType="normal"
          value="#### {{ transitionNameTemp2.value }}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="textArea_preventativeAction2"
          autoResize={true}
          label="Proposed Preventative Action"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.preventative_action[0] }}"
        />
        <TextArea
          id="textArea_correctiveAction2"
          autoResize={true}
          label="Proposed Corrective Action"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.corrective_action[0] }}"
        />
        <TextArea
          id="textArea_reasonInvestigation4"
          autoResize={true}
          label="Reason / Investigation"
          labelPosition="top"
          marginType="normal"
          minLines="4"
          required={true}
          value="{{ getIssue4.data?.reason[0] }}"
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_completeInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "Corrective Details" }] }}
        pluginId="tabbedContainer12"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="button82"
      marginType="normal"
      submit={true}
      submitTargetId="form19"
      text="Complete Information"
    />
  </Footer>
</ModalFrame>
