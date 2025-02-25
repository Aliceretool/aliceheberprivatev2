<ModalFrame
  id="SearchTemplate_Modal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="{{ !open.value }}"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="0"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showOverlay={true}
>
  <Header>
    <Text
      id="SearchTemplateTitle"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "h4Font" },
          { fontFamily: "h4Font" },
        ],
      }}
      value="Search template"
      verticalAlign="center"
    />
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
        pluginId="SearchTemplate_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="ModalContent_Container"
      _direction="vertical"
      _gap="10px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="8be8f" viewKey="View 1">
        <TextInput
          id="SearchTitle_Input"
          label=""
          labelPosition="top"
          placeholder="Enter template title"
        >
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="GetTemplates"
            type="datasource"
            waitMs="500"
            waitType="debounce"
          />
        </TextInput>
        <Listbox
          id="TemplatesListbox"
          captionByIndex="{{ item.subject }}"
          data="{{ templates.value }}"
          emptyMessage="No options"
          iconByIndex={
            '{{ item.type === "email" ? "/icon:bold/mail-send-envelope-alternate" : "/icon:bold/mail-chat-bubble-text-oval-alternate" }}'
          }
          label="Found templates"
          labelPosition="top"
          labels="{{ item.title }}"
          searchTerm="{{ SearchTitle_Input.value }}"
          showSelectionIndicator={true}
          value=""
          values="{{ item.id }}"
        />
      </View>
    </Container>
  </Body>
  <Footer>
    <Button id="Confirm_Button" text="Confirm">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="handleConfirm"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    event="show"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="onHide"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
