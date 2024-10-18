<GlobalFunctions>
  <Folder id="CSSComponents">
    <State
      id="cssBackgroundColor"
      value="{{darkMode.value==1? '#746f73' : '#ffffff' }}"
    />
    <State id="cssBackgroundSecondaryColor" />
  </Folder>
  <Folder id="AI_Chat_Folder">
    <RetoolAIQuery
      id="generative_text"
      action="chatResponseGeneration"
      chatHistory="{{ chat6.messageHistory }}"
      chatInput="{{ chat6.lastMessage }}"
      defaultModelInitialized={true}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      showSuccessToaster={false}
      systemMessage="You are a helpful assistantYou are a helpful assistant trained in the Pharmaceutical Industry, GmP, FDA  and EU Regulations. Make your responses short and concise."
    />
    <RetoolAIQuery
      id="uploadDocument"
      action="documentParsing"
      fileSource="fileDropzone9"
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      showSuccessToaster={false}
    />
    <EmbeddingQuery
      id="convert_toText"
      content="{{ uploadDocument.data }}"
      resourceName="EmbeddingQuery"
      resourceTypeOverride=""
      source="{{uploadDocument.timestamp}}"
      vectorAction="insertDocument"
      vectorNamespaceId="09f66ab6-1e02-4e88-a78c-210c94802c94"
    />
    <RetoolAIQuery
      id="vector_chat"
      action="chatResponseGeneration"
      chatHistory="{{chat4.messageHistory}}"
      chatInput="{{chat4.lastMessage}}"
      defaultModelInitialized={true}
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      showSuccessToaster={false}
      vectorModeEnabled={true}
      vectorNamespaceIds={["09f66ab6-1e02-4e88-a78c-210c94802c94"]}
    />
    <RetoolAIQuery
      id="parsePDF"
      action="documentParsing"
      fileSource="fileDropzone9"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="summarizePDF"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RetoolAIQuery>
    <RetoolAIQuery
      id="summarizePDF"
      action="textSummarization"
      defaultModelInitialized={true}
      instruction="Please summarise the following document, focusing on information relevant to the Pharmaceutical industry and is relevant to manufacturing under GmP guidelines 

{{ parsePDF.data[0] }}"
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      showSuccessToaster={false}
    />
    <RetoolAIQuery
      id="PDFChatQuery"
      action="chatResponseGeneration"
      chatHistory="{{ chat4.messageHistory }}"
      chatInput="{{ chat4.lastMessage }}"
      defaultModelInitialized={true}
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
      showSuccessToaster={false}
      systemMessage="You are a helpful assistantYou are a helpful assistant who can answer pharmaceutical related question question based on the information below.

{{ parsePDF.data[0] }}"
    />
    <WorkflowRun
      id="generateTopicWF"
      resourceName="WorkflowRun"
      resourceTypeOverride=""
      workflowId="c7497dc5-0e5f-4d1f-bed4-d0d17bbe74df"
      workflowParams={include("./lib/generateTopicWF.json", "string")}
      workflowRunBodyType="json"
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{{generateTopicWF.rawData}}" }] }}
        pluginId="textArea44"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </WorkflowRun>
    <State id="botLogo" value="https://picsum.photos/id/1025/800/600" />
  </Folder>
  <SqlQueryUnified
    id="getLoggedInUser"
    isMultiplayerEdited={false}
    query={include("./lib/getLoggedInUser.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="run"
      params={{
        ordered: [{ src: "utils.changeLocale(getLoggedInUser.data.code)" }],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ getLoggedInUser.data.darkmode }}" }] }}
      pluginId="darkMode"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <State id="darkMode" value="0" />
  <SqlQueryUnified
    id="setUserDarkMode"
    actionType="UPDATE_BY"
    changeset={'[{"key":"darkmode","value":"{{ switch1.value }}"}]'}
    editorMode="gui"
    filterBy={
      '[{"key":"email","value":"{{ current_user.email }}","operation":"="}]'
    }
    query={include("./lib/setUserDarkMode.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    tableName="user"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getUserDarkMode"
    actionType="UPDATE_BY"
    filterBy={
      '[{"key":"email","value":"{{ current_user.email }}","operation":"="}]'
    }
    query={include("./lib/getUserDarkMode.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    showFailureToaster={false}
    tableName="user"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="setValue"
      params={{
        ordered: [{ value: "{{ getUserDarkMode.data.darkMode[0] }}" }],
      }}
      pluginId="darkMode"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{
        ordered: [
          { value: "{{ getUserDarkMode.data.darkMode[0]=='0'?false:true }}" },
        ],
      }}
      pluginId="switch1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getUserData"
    notificationDuration={null}
    query={include("./lib/getUserData.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <JavascriptQuery
    id="closeprofilemodal"
    notificationDuration={4.5}
    query={include("./lib/closeprofilemodal.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="get_user_ip_address"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration="4.5"
    query={include("./lib/get_user_ip_address.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="closetimemodal"
    notificationDuration={4.5}
    query={include("./lib/closetimemodal.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <JavascriptQuery
    id="randNo"
    notificationDuration={4.5}
    query={include("./lib/randNo.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
