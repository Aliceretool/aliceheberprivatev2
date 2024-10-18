<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="close" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Form
        id="form1"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        marginType="normal"
        padding="12px"
        requireValidation={true}
        showBody={true}
        showFooter={true}
      >
        <Header>
          <Text
            id="formTitle1"
            horizontalAlign="center"
            marginType="normal"
            value="#### My Profile"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Include src="./src/tabbedContainer1.rsx" />
        </Body>
        <Footer>
          <Button
            id="button1"
            marginType="normal"
            style={{ ordered: [] }}
            styleVariant="outline"
            text="Cancel"
          >
            <Event
              event="click"
              method="close"
              params={{ ordered: [] }}
              pluginId="modal1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="formButton1"
            marginType="normal"
            submit={true}
            submitTargetId="form1"
            text="Save"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updUser"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </ModuleContainerWidget>
  </Frame>
</App>
