<ModalFrame
  id="InteractionFullScreen_Modal"
  footerPadding="0"
  headerPadding="8px 12px"
  hidden="{{ !open.value }}"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Button
      id="modalCloseButton1"
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
        pluginId="InteractionFullScreen_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="modalTitle1"
      style={{
        ordered: [
          { fontSize: "h3Font" },
          { fontWeight: "h3Font" },
          { fontFamily: "h3Font" },
        ],
      }}
      value="{{ interactionWithEmail.value.subject }}"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <TextInput
      id="textInput1"
      label="To"
      labelPosition="top"
      placeholder="Enter value"
      readOnly="true"
      value="{{ interactionWithEmail.value.to }}"
    />
    <Divider id="divider1" hidden="{{ !interactionWithEmail.value.content }}" />
    <Text
      id="text1"
      hidden="{{ !interactionWithEmail.value.content }}"
      value="{{ interactionWithEmail.value.content }}"
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Container
      id="stack1"
      _gap="0px"
      _justify="end"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="7a7e7" viewKey="View 1">
        <Button
          id="button1"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        />
      </View>
    </Container>
  </Footer>
</ModalFrame>
