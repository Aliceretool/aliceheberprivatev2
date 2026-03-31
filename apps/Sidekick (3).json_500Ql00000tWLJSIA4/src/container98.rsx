<Container
  id="container98"
  enableFullBleed={true}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  overflowType="hidden"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Button
      id="closeButton4"
      ariaLabel="Close"
      disabled="{{ (guruChat.value.messages?.length || 0) === 0 }}"
      iconBefore="bold/interface-delete-bin-1"
      style={{}}
      styleVariant="outline"
      submitTargetId=""
      tooltipText="Clear Chat"
    >
      <Event
        id="b8a80077"
        event="click"
        method="setValue"
        params={{
          map: {
            value:
              "{ \n  ...guruChat.value, \n  messages: [], \n  pending: false, \n  sessionId: null \n}",
          },
        }}
        pluginId="guruChat"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="ddd52d54"
        event="click"
        method="showNotification"
        params={{
          map: {
            options: {
              notificationType: "success",
              title: "Chat cleared",
              duration: "2",
            },
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="guruContainerTitle"
      horizontalAlign="center"
      value="#### Guru Knowledge Base"
      verticalAlign="center"
    />
    <Button
      id="closeButton3"
      ariaLabel="Close"
      iconBefore="bold/interface-delete-2"
      style={{ map: { border: "transparent" } }}
      styleVariant="outline"
    >
      <Event
        id="f4dea6ba"
        event="click"
        method="hide"
        params={{}}
        pluginId="guruSplitFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="00030" viewKey="View 1">
    <ListViewBeta
      id="guruResponses"
      _primaryKeys=""
      data="{{ guruChat.value.messages }}"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Include src="./container99.rsx" />
    </ListViewBeta>
  </View>
  <Footer>
    <TextInput
      id="guruInput"
      disabled="{{ guruChat.value.pending }}"
      label="Search the knowledge base or ask a question..."
      labelPosition="top"
      loading="{{ guruChat.value.pending }}"
      placeholder="Enter value"
      showClear={true}
    />
    <Button
      id="sendGuru"
      disabled="{{ guruChat.value.pending }}"
      loading="{{ guruChat.value.pending }}"
      text="Send"
    >
      <Event
        id="18cf380b"
        event="click"
        method="run"
        params={{
          map: {
            src: '// 1) Read and validate input (force string)\nconst userText = String(guruInput.value || "").trim();\nif (!userText) return;\n\n// 2) Create sessionId\nconst sessionId = guruChat.value.sessionId || `sess_${Date.now()}`;\n\n// 3) Get messages (done-only)\nconst allMsgs = guruChat.value.messages || [];\nconst doneMsgs = allMsgs.filter(m => m.status === "done");\n\n// 4) Find last assistant + last user\nconst lastAssistant = [...doneMsgs].reverse().find(m => m.role === "assistant");\nconst lastUser = [...doneMsgs].reverse().find(m => m.role === "user");\n\n// 5) Follow-up heuristic\nconst looksLikeFollowUp =\n  /\\b(it|that|this|they|those|these)\\b/i.test(userText) ||\n  userText.split(/\\s+/).length < 8;\n\n// 6) Cap helper\nconst cap = (text, max) => (text && text.length > max ? text.slice(0, max) + "…" : (text || ""));\nconst contextAssistant = cap(lastAssistant?.content, 1800);\nconst contextUser = cap(lastUser?.content, 600);\n\n// 7) Build questionForGuru (this is ALWAYS a string)\nconst questionForGuru = (looksLikeFollowUp && contextAssistant)\n  ? `Context (previous exchange):\\nUser: ${contextUser}\\nAssistant: ${contextAssistant}\\n\\nFollow-up question:\\n${userText}`\n  : userText;\n\n// 8) Create user message\nconst userMsg = {\n  id: `msg_${Date.now()}_u`,\n  role: "user",\n  content: userText,\n  status: "done",\n  answerId: null,\n  sources: [],\n  createdAt: new Date().toISOString()\n};\n\n// 9) Update state (pending true) and clear input\nconst baseMsgs = [...allMsgs, userMsg];\nguruChat.setValue({\n  ...guruChat.value,\n  sessionId,\n  pending: true,\n  messages: baseMsgs\n});\nguruInput.setValue("");\n\n// 10) Trigger the query WITH callbacks (most reliable)\naskGuru.trigger({\n  additionalScope: { questionForGuru },\n\n  onSuccess: function (data) {\n    try {\n      // Some setups return an object; some return JSON text—handle both.\n      const resp = (typeof data === "string") ? JSON.parse(data) : (data || {});\n\n      const status = resp.status;\n      const answerText = resp.answer || "";\n      const sources = resp.sources || [];\n      const answerId = resp.answerId || null;\n\n      const finalText =\n        (status === "NOT_ANSWERED" || !answerText)\n          ? "I couldn’t find an answer in Guru for that. Try adding specific keywords (process name, tool, program, error message)."\n          : answerText;\n\n      const assistantMsg = {\n        id: `msg_${Date.now()}_a`,\n        role: "assistant",\n        content: finalText,\n        status: "done",\n        answerId,\n        sources,\n        createdAt: new Date().toISOString()\n      };\n\n      guruChat.setValue({\n        ...guruChat.value,\n        pending: false,\n        messages: [...baseMsgs, assistantMsg]\n      });\n    } catch (e) {\n      console.error("onSuccess handler error:", e);\n\n      const assistantMsg = {\n        id: `msg_${Date.now()}_a`,\n        role: "assistant",\n        content: "The API succeeded but the UI update failed (script error). Open DevTools console to see the error.",\n        status: "error",\n        answerId: null,\n        sources: [],\n        createdAt: new Date().toISOString()\n      };\n\n      guruChat.setValue({\n        ...guruChat.value,\n        pending: false,\n        messages: [...baseMsgs, assistantMsg]\n      });\n    }\n  },\n\n  onFailure: function (error) {\n    console.error("askGuru failed:", error);\n\n    const assistantMsg = {\n      id: `msg_${Date.now()}_a`,\n      role: "assistant",\n      content: "Sorry—Guru couldn’t be reached. Check token/permissions and try again.",\n      status: "error",\n      answerId: null,\n      sources: [],\n      createdAt: new Date().toISOString()\n    };\n\n    guruChat.setValue({\n      ...guruChat.value,\n      pending: false,\n      messages: [...baseMsgs, assistantMsg]\n    });\n  }\n});\n',
          },
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
