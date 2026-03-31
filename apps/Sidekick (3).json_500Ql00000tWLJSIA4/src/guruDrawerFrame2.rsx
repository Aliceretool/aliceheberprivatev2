<DrawerFrame
  id="guruDrawerFrame2"
  enableFullBleed={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showOverlay={true}
  width="medium"
>
  <Header>
    <Text
      id="drawerTitle9"
      value="### Container title"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton9"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="b6e57198"
        event="click"
        method="setHidden"
        params={{ map: { hidden: true } }}
        pluginId="guruDrawerFrame2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Chat
      id="llmChat2"
      _actionDisabled={{ map: { "1a": "" } }}
      _actionHidden={{ map: { "1a": "" } }}
      _actionIcon={{ map: { "1a": "line/interface-align-front" } }}
      _actionIds={["1a"]}
      _actionLabel={{ map: { "1a": "Copy" } }}
      _actionType={{ map: { "1a": "copy" } }}
      _defaultUsername="{{ current_user.fullName }}"
      _headerButtonHidden={{ "2b": "", "3c": "" }}
      _headerButtonIcon={{
        "2b": "line/interface-download-button-2",
        "3c": "line/interface-delete-bin-2",
      }}
      _headerButtonIds={["2b", "3c"]}
      _headerButtonLabel={{ "2b": "Download", "3c": "Clear history" }}
      _headerButtonType={{ "2b": "download", "3c": "clearHistory" }}
      _sessionStorageId="ff2d85cb-50df-452b-a203-25b2cca073a2"
      assistantName="Retool AI"
      avatarFallback="{{ current_user.fullName }}"
      avatarImageSize={32}
      avatarSrc="{{ current_user.profilePhotoUrl }}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      placeholder="Type a message"
      queryTargetId=""
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{ map: { background: "automatic" } }}
      title="Guru"
    >
      <Event
        id="13f68bd6"
        event="clickAction"
        method="copyToClipboard"
        params={{ map: { value: "{{ currentMessage.value }}" } }}
        pluginId="llmChat2"
        targetId="1a"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="89affa1f"
        event="clickHeader"
        method="exportData"
        pluginId="llmChat2"
        targetId="2b"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="93587f33"
        event="clickHeader"
        method="clearHistory"
        pluginId="llmChat2"
        targetId="3c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Chat>
  </Body>
</DrawerFrame>
