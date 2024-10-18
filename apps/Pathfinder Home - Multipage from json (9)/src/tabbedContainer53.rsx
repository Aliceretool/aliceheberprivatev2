<Container
  id="tabbedContainer53"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hoistFetching={true}
  padding="12px"
  showBody={true}
  showHeader={true}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs45"
      alignment="justify"
      itemMode="static"
      maintainSpaceWhenHidden={true}
      navigateContainer={true}
      style={{ ordered: [{ selectedBackground: "info" }] }}
      targetContainerId="tabbedContainer53"
      value="{{ self.values[0] }}"
    >
      <Option id="b7f05" value="Tab 1" />
      <Option id="712c2" value="Tab 2" />
      <Option id="32b06" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="ebf1e" label="Intractive Chat" viewKey="View 1">
    <Chat
      id="chat6"
      _actionDisabled={{ ordered: [{ "1a": "" }] }}
      _actionHidden={{ ordered: [{ "1a": "" }] }}
      _actionIcon={{ ordered: [{ "1a": "line/interface-align-front" }] }}
      _actionIds={["1a"]}
      _actionLabel={{ ordered: [{ "1a": "Copy" }] }}
      _actionType={{ ordered: [{ "1a": "copy" }] }}
      _chatWith="ai"
      _defaultUsername="{{ current_user.fullName }}"
      _headerButtonHidden={{ ordered: [{ "2b": "" }, { "3c": "" }] }}
      _headerButtonIcon={{
        ordered: [
          { "2b": "line/interface-download-button-2" },
          { "3c": "line/interface-delete-bin-2" },
        ],
      }}
      _headerButtonIds={["2b", "3c"]}
      _headerButtonLabel={{
        ordered: [{ "2b": "Download" }, { "3c": "Clear history" }],
      }}
      _headerButtonType={{
        ordered: [{ "2b": "download" }, { "3c": "clearHistory" }],
      }}
      _sessionStorageId="3c119f47-26bd-4f75-836f-19b0da9c6550"
      _sourceSessionStorageId={null}
      assistantName="Pathfinder"
      avatarFallback="{{ getUserData.data.firstName[0] }}"
      avatarIcon="line/interface-edit-pathfinder-outline"
      avatarImageSize={32}
      avatarSrc="{{ getUserData.data.avatarURL[0] != null ? getUserData.data.avatarURL[0] : botLogo.value}}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      loading={false}
      placeholder="I am trained on all matters Pharmaceutical. Ask me anything !"
      queryTargetId="generative_text"
      sessionStorageId="c5886b12-9a56-4f11-b5ff-91b93815e470"
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{ ordered: [] }}
      threadId=""
      title="Chat"
    >
      <Event
        event="clickAction"
        method="copyToClipboard"
        params={{ ordered: [{ value: "{{ currentMessage.value }}" }] }}
        pluginId="chat6"
        targetId="1a"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="exportData"
        pluginId="chat6"
        targetId="2b"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="clearHistory"
        pluginId="chat6"
        targetId="3c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Chat>
  </View>
  <View id="a0718" label="Summarise a Document" viewKey="Documents">
    <Container
      id="group33"
      _gap="0px"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="2ea74" viewKey="View 1">
        <Chat
          id="chat4"
          _actionDisabled={{ ordered: [{ "1a": "" }] }}
          _actionHidden={{ ordered: [{ "1a": "" }] }}
          _actionIcon={{ ordered: [{ "1a": "line/interface-align-front" }] }}
          _actionIds={["1a"]}
          _actionLabel={{ ordered: [{ "1a": "Copy" }] }}
          _actionType={{ ordered: [{ "1a": "copy" }] }}
          _chatWith="ai"
          _defaultUsername="{{ getUserData.data.firstName[0] }}"
          _headerButtonHidden={{ ordered: [{ "2b": "" }, { "3c": "" }] }}
          _headerButtonIcon={{
            ordered: [
              { "2b": "line/interface-download-button-2" },
              { "3c": "line/interface-delete-bin-2" },
            ],
          }}
          _headerButtonIds={["2b", "3c"]}
          _headerButtonLabel={{
            ordered: [{ "2b": "Download" }, { "3c": "Clear history" }],
          }}
          _headerButtonType={{
            ordered: [{ "2b": "download" }, { "3c": "clearHistory" }],
          }}
          _sessionStorageId="a4e7fc5a-22b1-4456-a9f9-6929d2a1fe86"
          assistantName="PFBot"
          avatarFallback="{{ getUserData.data.firstName[0] }}"
          avatarImageSize={32}
          avatarSrc="{{ getUserData.data.avatarURL[0] != null ? getUserData.data.avatarURL[0] : botLogo.value}}"
          disableSubmit="{{ fileDropzone9.value = null }}"
          emptyDescription="Send a message to chat with AI"
          emptyTitle="No messages here yet"
          loading={false}
          placeholder="Upload a PDF file to interact with content. For ex; list the 5 most important points / Create an email summary / What's this document about ?"
          queryTargetId="PDFChatQuery"
          showAvatar={true}
          showEmptyState={true}
          showHeader={true}
          showTimestamp={true}
          style={{ ordered: [{ background: "automatic" }] }}
          threadId=""
          title="Chat"
        >
          <Event
            event="clickAction"
            method="copyToClipboard"
            params={{ ordered: [{ value: "{{ currentMessage.value }}" }] }}
            pluginId="chat2"
            targetId="1a"
            type="util"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickHeader"
            method="exportData"
            pluginId="chat2"
            targetId="2b"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="clickHeader"
            method="clearHistory"
            pluginId="chat2"
            targetId="3c"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Chat>
        <FileDropzone
          id="fileDropzone9"
          _isUpgraded={true}
          appendNewSelection={true}
          iconBefore="bold/programming-browser-search"
          label=""
          labelPosition="top"
          maxCount={20}
          maxSize="250mb"
          placeholder="Select or drag and drop"
          selectionType="multiple"
          shouldOverwriteOnNameCollision={true}
          uploadToRetoolStorage={true}
        >
          <Event
            event="parse"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="parsePDF"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </FileDropzone>
        <Text
          id="text115"
          heightType="fixed"
          value="{{ summarizePDF.data }}"
          verticalAlign="center"
        />
      </View>
    </Container>
  </View>
  <View id="b0713" label="Content Generation" viewKey="View 3">
    <TextInput
      id="textInput85"
      hideLabel={true}
      label="Topic "
      placeholder="I can write a post/email/document/about any topic, just start by typing and press on Generate..  "
      showClear={true}
    />
    <TextArea
      id="textArea44"
      hideLabel={true}
      labelPosition="top"
      minLines="20"
      placeholder="Enter value"
    />
    <Switch
      id="switch10"
      disabled={'{{ textInput85.value == "" }}'}
      label="Send me email"
      value="true"
    />
    <Button
      id="button160"
      disabled={'{{ textInput85.value == "" }}'}
      loading="{{generateTopicWF.isFetching}}"
      text="Generate"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="generateTopicWF"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <Body>
    <Spacer id="spacer36" />
    <Spacer id="spacer37" />
    <Chat
      id="chat3"
      _actionDisabled={{ ordered: [{ "1a": "" }] }}
      _actionHidden={{ ordered: [{ "1a": "" }] }}
      _actionIcon={{ ordered: [{ "1a": "line/interface-align-front" }] }}
      _actionIds={["1a"]}
      _actionLabel={{ ordered: [{ "1a": "Copy" }] }}
      _actionType={{ ordered: [{ "1a": "copy" }] }}
      _chatWith="ai"
      _defaultUsername="{{ current_user.fullName }}"
      _headerButtonHidden={{ ordered: [{ "2b": "" }, { "3c": "" }] }}
      _headerButtonIcon={{
        ordered: [
          { "2b": "line/interface-download-button-2" },
          { "3c": "line/interface-delete-bin-2" },
        ],
      }}
      _headerButtonIds={["2b", "3c"]}
      _headerButtonLabel={{
        ordered: [{ "2b": "Download" }, { "3c": "Clear history" }],
      }}
      _headerButtonType={{
        ordered: [{ "2b": "download" }, { "3c": "clearHistory" }],
      }}
      _sessionStorageId="3c119f47-26bd-4f75-836f-19b0da9c6550"
      assistantName="Exelcis AI"
      avatarFallback="{{ current_user.fullName }}"
      avatarImageSize={32}
      avatarSrc="{{ current_user.profilePhotoUrl }}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      loading={false}
      placeholder="Type a message"
      queryTargetId="generative_text"
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{ ordered: [{ background: "automatic" }] }}
      threadId=""
      title="Chat"
    >
      <Event
        event="clickAction"
        method="copyToClipboard"
        params={{ ordered: [{ value: "{{ currentMessage.value }}" }] }}
        pluginId="chat1"
        targetId="1a"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="exportData"
        pluginId="chat1"
        targetId="2b"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="clearHistory"
        pluginId="chat1"
        targetId="3c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Chat>
    <Chat
      id="chat5"
      _actionDisabled={{ ordered: [{ "1a": "" }] }}
      _actionHidden={{ ordered: [{ "1a": "" }] }}
      _actionIcon={{ ordered: [{ "1a": "line/interface-align-front" }] }}
      _actionIds={["1a"]}
      _actionLabel={{ ordered: [{ "1a": "Copy" }] }}
      _actionType={{ ordered: [{ "1a": "copy" }] }}
      _chatWith="ai"
      _defaultUsername="{{ current_user.fullName }}"
      _headerButtonHidden={{ ordered: [{ "2b": "" }, { "3c": "" }] }}
      _headerButtonIcon={{
        ordered: [
          { "2b": "line/interface-download-button-2" },
          { "3c": "line/interface-delete-bin-2" },
        ],
      }}
      _headerButtonIds={["2b", "3c"]}
      _headerButtonLabel={{
        ordered: [{ "2b": "Download" }, { "3c": "Clear history" }],
      }}
      _headerButtonType={{
        ordered: [{ "2b": "download" }, { "3c": "clearHistory" }],
      }}
      _sessionStorageId="3c119f47-26bd-4f75-836f-19b0da9c6550"
      assistantName="Exelcis AI"
      avatarFallback="{{ current_user.fullName }}"
      avatarImageSize={32}
      avatarSrc="{{ current_user.profilePhotoUrl }}"
      emptyDescription="Send a message to chat with AI"
      emptyTitle="No messages here yet"
      loading={false}
      placeholder="Type a message"
      queryTargetId="generative_text"
      showAvatar={true}
      showEmptyState={true}
      showHeader={true}
      showTimestamp={true}
      style={{ ordered: [{ background: "automatic" }] }}
      threadId=""
      title="Chat"
    >
      <Event
        event="clickAction"
        method="copyToClipboard"
        params={{ ordered: [{ value: "{{ currentMessage.value }}" }] }}
        pluginId="chat1"
        targetId="1a"
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="exportData"
        pluginId="chat1"
        targetId="2b"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="clickHeader"
        method="clearHistory"
        pluginId="chat1"
        targetId="3c"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Chat>
  </Body>
</Container>
