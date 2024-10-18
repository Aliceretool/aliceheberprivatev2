<ModalFrame
  id="modalFrame8"
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
      id="modalTitle38"
      value="### Add Products & Services"
      verticalAlign="center"
    />
    <Image
      id="image18"
      hidden="{{!getlogo3.data.base64Data}}"
      horizontalAlign="center"
      src="data:image/png;base64, {{getlogo3.data.base64Data}}"
    />
    <Button
      id="modalCloseButton39"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame8"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form46"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table38.selectedRow }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle44" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Include src="./tabbedContainer49.rsx" />
      </Body>
      <Footer>
        <Button
          id="formButton34"
          submit={true}
          submitTargetId="form46"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insProductService"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
