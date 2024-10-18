<ModalFrame
  id="modal_add"
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
>
  <Header>
    <Text id="modalTitle8" value="### Container title" verticalAlign="center" />
    <Button
      id="modalCloseButton8"
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
        pluginId="modal_add"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form15"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Text
          id="formTitle16"
          marginType="normal"
          value="#### {{ transitionNameTemp2.value }}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextArea
          id="textArea7"
          autoResize={true}
          label="Add Comment"
          labelPosition="top"
          marginType="normal"
          minLines={2}
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="button77"
          marginType="normal"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="close"
            params={{ ordered: [] }}
            pluginId="modal_add"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="button76"
          disabled={'{{ textArea7.value == "" }}'}
          hidden=""
          marginType="normal"
          text="{{ transitionNameTemp2.value }}"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="insComments4"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ transitionNameTemp2.value == 'Send for Approval'}}"
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updIssue_sendForApproval"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ transitionNameTemp2.value == 'More Information Needed' }}"
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updIssue_moreInformationNeeded"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ transitionNameTemp2.value == 'Rejected' }}"
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updIssue_rejected"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insTime_planned"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
