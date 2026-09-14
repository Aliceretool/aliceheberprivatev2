<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="be86ca57-fe86-41a6-aa1a-7ef6e1679fa5"
>
  <OpenAIProviderQuery
    id="llmChat1_query1"
    action="chatResponseGeneration"
    agentGuiMode={null}
    agentQueryMode={null}
    agentWorkflowRunMode="async"
    chatHistory="{{ llmChat1.messageHistory }}"
    chatInput="{{ llmChat1.lastMessage }}"
    defaultModelInitialized={true}
    model="gpt-5.2"
    providerId="retoolAIBuiltIn::openAI"
    providerName="openAI"
    providerResourceName="retool_ai_provider_8e492862c40273db55ba8d222f441dc6"
    resourceDisplayName="OpenAI"
    resourceName="retool_ai_provider_8e492862c40273db55ba8d222f441dc6"
  />
  <RetoolAIAgentInvokeQuery
    id="agentChat1_query1"
    action="agentInvoke"
    agentInputs="{{ agentChat1.agentInputs }}"
    resourceName="RetoolAIAgentInvokeQuery"
    showSuccessToaster={false}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Chat
      id="llmChat1"
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
      _sessionStorageId="a686f599-e0e8-466c-9421-67877508f8ec"
      assistantName="Retool AI"
      avatarFallback="{{ current_user.fullName }}"
      avatarImageSize={32}
      avatarSrc="{{ current_user.profilePhotoUrl }}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      placeholder="Type a message"
      queryTargetId="llmChat1_query1"
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{ map: { background: "automatic" } }}
      title="Chat"
    >
      <Event
        id="mockEventHandlerId1"
        event="clickAction"
        method="copyToClipboard"
        params={{ map: { value: "{{ currentMessage.value }}" } }}
        pluginId="llmChat1"
        targetId="1a"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="mockEventHandlerId1"
        event="clickHeader"
        method="exportData"
        pluginId="llmChat1"
        targetId="2b"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="mockEventHandlerId1"
        event="clickHeader"
        method="clearHistory"
        pluginId="llmChat1"
        targetId="3c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Chat>
  </Frame>
</Screen>
