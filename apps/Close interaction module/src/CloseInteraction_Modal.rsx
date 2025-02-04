<ModalFrame
  id="CloseInteraction_Modal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="{{ !isOpen.value }}"
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
      id="CloseInteraction_Title"
      style={{ ordered: [{ fontSize: "20px" }] }}
      value="Close interaction"
      verticalAlign="center"
    />
    <Button
      id="CloseInteractin_CloseButton"
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
        pluginId="CloseInteraction_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="CloseInteraction_Form"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text id="formTitle2" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Select
          id="CloseInteractionReason_Select"
          data="{{ GetInteractionCloseReasons.data }}"
          emptyMessage="No options"
          formDataKey="reasonId"
          label="Reason to close interaction"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select a reason"
          required={true}
          showClear={true}
          showSelectionIndicator={true}
          value="null"
          values="{{ item.id }}"
        />
        <TextInput
          id="CloseInteractionReason_Input"
          formDataKey="customReason"
          hidden="{{ !isOtherCloseReason.value }}"
          label=""
          labelPosition="top"
          placeholder="Type in a reason"
          required="{{ isOtherCloseReason.value }}"
        />
        <TextArea
          id="CloseInteractionComment_Input"
          autoResize={true}
          formDataKey="comment"
          label="Comment"
          labelPosition="top"
          minLines="6"
          placeholder="Enter value"
        />
      </Body>
      <Footer>
        <Button
          id="formButton2"
          submit={true}
          submitTargetId="CloseInteraction_Form"
          text="Submit"
        />
      </Footer>
    </Form>
  </Body>
  <Footer>
    <Container
      id="CloseInteraction_Actions"
      _align="center"
      _gap="0px"
      _justify="end"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="261f0" viewKey="View 1">
        <Button
          id="CloseInteraction_Cancel"
          heightType="auto"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="hide"
            params={{ ordered: [] }}
            pluginId="CloseInteraction_Modal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="CloseInteraction_Submit"
          heightType="auto"
          loaderPosition="left"
          loading="{{ submitCloseInteractionForm.isFetching }}"
          text="Close interaction"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="submitCloseInteractionForm"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </Footer>
  <Event
    event="hide"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="onHide"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
