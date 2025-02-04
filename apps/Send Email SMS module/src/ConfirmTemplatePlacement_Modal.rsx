<ModalFrame
  id="ConfirmTemplatePlacement_Modal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showOverlay={true}
>
  <Header>
    <Text id="modalTitle2" value="### Container title" verticalAlign="center" />
    <Button
      id="modalCloseButton2"
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
        pluginId="ConfirmTemplatePlacement_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text2"
      margin="8px 8px 4px 8px"
      style={{
        ordered: [
          { fontSize: "h5Font" },
          { fontWeight: "h5Font" },
          { fontFamily: "h5Font" },
        ],
      }}
      value="You’re about to replace the content of your message with this template"
      verticalAlign="center"
    />
    <Container
      id="stack3"
      _flexWrap={true}
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
      <View id="6b967" viewKey="View 1">
        <Button
          id="button1"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        />
        <Button id="ConfirmTemplateReplacement_Button" text="Confirm">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="replaceBodyWithTemplate"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </Body>
</ModalFrame>
