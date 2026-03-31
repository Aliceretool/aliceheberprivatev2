<Container
  id="actionInnerCard"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  padding="12px"
  showBody={true}
  style={{
    border: "surfacePrimaryBorder",
    borderRadius: "6px",
    background: "#FFFFFF",
    boxShadow: "0 1px 3px rgba(0, 0, 0, 0.1)",
  }}
>
  <View id="00030" viewKey="View 1">
    <Text id="logicTraceLabel" value="**REASONING**" verticalAlign="center" />
    <Text
      id="logicTraceText"
      value="{{ currentLearner.value.ai_reasoning }}"
      verticalAlign="center"
    />
    <Text
      id="draftMessageLabel2"
      value="**RECOMMENDED ACTION**"
      verticalAlign="center"
    />
    <Text
      id="draftMessageLabel3"
      value="**ACTION TYPE**"
      verticalAlign="center"
    />
    <Text
      id="logicTraceText2"
      value="{{ currentLearner.value.recommended_action }}"
      verticalAlign="center"
    />
    <Text
      id="logicTraceText3"
      value="{{ currentLearner.value.action_type }}"
      verticalAlign="center"
    />
    <Text
      id="draftMessageLabel"
      value="**DRAFT MESSAGE**"
      verticalAlign="center"
    />
    <TextArea
      id="draftMessageTextArea"
      autoResize={true}
      label="Edit the message here"
      labelPosition="top"
      maxLines="8"
      minLines="5"
      placeholder="Enter value"
      value="{{ currentLearner.value.ai_draft_message }}"
    />
    <Link
      id="copyAndUpdateMessage"
      ariaLabel=""
      horizontalAlign="right"
      iconBefore="line/interface-edit-copy"
      text="Copy Text"
    >
      <Event
        id="f6962cd7"
        event="click"
        method="trigger"
        params={{}}
        pluginId="updateMessageText"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="7d1c3995"
        event="click"
        method="copyToClipboard"
        params={{ map: { value: "{{ draftMessageTextArea.value }}" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
  </View>
</Container>
