<ModalFrame
  id="modalSignFrame"
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
    <Text id="modalTitle19" value="### Signature" verticalAlign="center" />
    <Button
      id="modalCloseButton20"
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
        pluginId="modalSignFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="tabbedContainer31"
      _gap={0}
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs27"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer31"
          value="{{ self.values[0] }}"
        >
          <Option id="7f794" value="Tab 1" />
          <Option id="b1ec6" value="Tab 2" />
          <Option id="c2ed6" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="caaf1" viewKey="Signature">
        <SignaturePad2
          id="signature2"
          emptyMessage="Sign here"
          label=""
          labelPosition="top"
          showRedrawIcon={true}
        />
      </View>
    </Container>
    <TextArea
      id="textArea16"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines={2}
      placeholder="{{ i18n.t('Comments added to the printer doument') }}"
    />
    <Avatar
      id="avatar9"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ i18n.t('{{ current_user.fullName }}') }}"
      src="{{getUser9.data.avatarURL[0]}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <Text
      id="text62"
      value="IP: {{get_ip_address7.data.ip}}"
      verticalAlign="center"
    />
    <Text
      id="text63"
      value="{{moment().format('DD-MM-YYYY HH:MM')}}"
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Button id="button61" text="{{ i18n.t('Generate') }}" />
  </Footer>
</ModalFrame>
