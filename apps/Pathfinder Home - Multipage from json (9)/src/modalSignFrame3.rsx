<ModalFrame
  id="modalSignFrame3"
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
    <Text id="modalTitle31" value="### Signature" verticalAlign="center" />
    <Button
      id="modalCloseButton32"
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
        pluginId="modalSignFrame3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="tabbedContainer45"
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
          id="tabs38"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer45"
          value="{{ self.values[0] }}"
        >
          <Option id="7f794" value="Tab 1" />
          <Option id="b1ec6" value="Tab 2" />
          <Option id="c2ed6" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="caaf1" viewKey="Signature">
        <SignaturePad2
          id="signature4"
          emptyMessage="Sign here"
          label=""
          labelPosition="top"
          showRedrawIcon={true}
        />
      </View>
    </Container>
    <TextArea
      id="textArea23"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines={2}
      placeholder="{{ i18n.t('Comments added to the printer doument') }}"
    />
    <Avatar
      id="avatar13"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ current_user.fullName }}"
      src="{{getUser13.data.avatarURL[0]}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <Text
      id="text84"
      value="IP: {{get_user_ip_address.data.ip}}"
      verticalAlign="center"
    />
    <Text
      id="text85"
      value="{{moment().format('DD-MM-YYYY HH:MM')}}"
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Button id="button137" text="{{ i18n.t('Generate') }}" />
  </Footer>
</ModalFrame>
