<Screen id="CRM" _hashParams={[]} _searchParams={[]} title="CRM" urlSlug="">
  <Folder id="getCRFIssues">
    <SqlQueryUnified
      id="getCRF"
      isMultiplayerEdited={false}
      query={include("../lib/getCRF.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      warningCodes={[]}
    />
    <State id="spl_project" value="'65ecccb8-2886-4361-a2e0-6f87c98569cf'" />
    <State id="crf_project" value="'a026255a-3934-4889-8712-63348dac8d74'" />
    <SqlQueryUnified
      id="getSPL"
      isMultiplayerEdited={false}
      query={include("../lib/getSPL.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      warningCodes={[]}
    />
  </Folder>
  <Folder id="samples">
    <JavascriptQuery
      id="checkSPLClosure"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/checkSPLClosure.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="transformer8"
      funcBody={include("../lib/transformer8.js", "string")}
    />
  </Folder>
  <Folder id="S3">
    <S3Query
      id="getS3Files8"
      bucketName="pathfinder-uat"
      prefix="crm/{{ table32.selectedRow.id }}"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
    />
  </Folder>
  <Folder id="Products">
    <SqlQueryUnified
      id="getProducts3"
      query={include("../lib/getProducts3.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      warningCodes={[]}
    />
  </Folder>
  <Folder id="clients">
    <SqlQueryUnified
      id="get_Suppliers"
      query={include("../lib/get_Suppliers.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="get_Buyers"
      query={include("../lib/get_Buyers.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      warningCodes={[]}
    />
  </Folder>
  <SqlQueryUnified
    id="get_emails"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/get_emails.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="update_user"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"name","value":"{{ table33.selectedRow.name }}"},{"key":"email_address","value":"{{ table33.selectedRow.email_address }}"},{"key":"additional_info","value":"{{ table33.selectedRow.additional_info }}"},{"key":"newsletter","value":"{{ table33.selectedRow.newsletter }}"},{"key":"vip","value":"{{ table33.selectedRow.vip }}"},{"key":"user_notes","value":"{{ table33.selectedRow.user_notes }}"},{"key":"date_amended","value":"{{ new Date() }}"},{"key":"phone_no","value":"{{ table33.selectedRow.phone_no}}"}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"userID","value":"{{ table33.selectedRow.userID }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    query={include("../lib/update_user.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="client_users"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getusers"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="getlogo"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="https://logo.clearbit.com/{{table32.selectedRow.company_website}}?size=400"
    resourceName="REST-WithoutResource"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getUser15"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getUser15.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <State id="lng" value="{{query24.data.results[0].geometry.location.lng}}" />
  <SMTPQuery
    id="re_sendemail"
    attachment={["fileDropzone7"]}
    body="{{richTextEditor5.value}}"
    bodyType="html"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    fromEmail="pathfinder@exelcis.com"
    isMultiplayerEdited={false}
    replyToEmail="pathfinder@exelcis.com"
    resourceName="de698f27-23bd-4709-9bf2-c550286e1e10"
    resourceTypeOverride=""
    showReplyTo={true}
    showSuccessToaster={false}
    subject="{{textInput68.value}}"
    toEmail="{{email5.value}}"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="welcome_email_ai"
    customSystemMessage="Ensure the response is in HTML format and do not include the subject line in the email"
    dynamicModelName="gpt-4o-mini"
    dynamicModelNameEnabled={false}
    dynamicModelProvider="openAI"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    instruction={
      'Write a professional welcome / personal email to {{table33.selectedRow.name}} to welcome them to Pharmacare Premium. Write with the keywords "Generic Products", "GMP", "European Facility" for a Pharmaceutical client who enjoys networking, and describe the benefits of our offering  in 100 words. Sign it from {{current_user.fullName}}'
    }
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{welcome_email_ai.data}}" }] }}
      pluginId="richTextEditor3"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolAIQuery>
  <SqlQueryUnified
    id="query23"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/query23.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="query13"
    action="documentParsing"
    dynamicModelName="gpt-4o-mini"
    dynamicModelNameEnabled={false}
    dynamicModelProvider="openAI"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    fileSource="fileInput1"
    imageModel="dall-e-2"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <OpenAPIQuery
    id="query24"
    isMultiplayerEdited={false}
    method="get"
    operationId="geocode"
    parameterDynamicStates={
      '{"address":false,"bounds":false,"components":false,"latlng":false,"location_type":false,"place_id":false,"result_type":false,"language":false,"region":false}'
    }
    parameterMetadata="{}"
    parameters={'{"address":"{{ textArea31.value }}"}'}
    path="/maps/api/geocode/json"
    requestBodyMetadata=""
    resourceName="b695ac37-3675-4433-ada2-c9636418e56e"
    runWhenModelUpdates={true}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="setValue"
      params={{
        ordered: [
          { value: "{{ query24.data.results[0].geometry.location.lat}}" },
        ],
      }}
      pluginId="lat"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{
        ordered: [
          { value: "{{ query24.data.results[0].geometry.location.lng}}" },
        ],
      }}
      pluginId="lng"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </OpenAPIQuery>
  <SqlQueryUnified
    id="addNewClient"
    actionType="INSERT"
    changeset={
      '[{"key":"company_name","value":"{{ textInput65.value }}"},{"key":"type","value":"{{select8.value}}"},{"key":"company_address","value":"{{textArea31.value}}"},{"key":"company_contact","value":"{{textInput61.value}}"},{"key":"company_phone","value":"{{textInput64.value}}"},{"key":"company_email","value":"{{textInput62.value}}"},{"key":"company_website","value":"{{textInput63.value}}"},{"key":"id","value":"{{ Math.floor(Math.random() * 10000000) }}"},{"key":"date_created","value":"{{ new Date() }}"}]'
    }
    changesetObject="{{ { ...form.data, id: Math.max(...getRows.data.id.map(id => parseInt(id))) + 1 } }}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="clients"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ addNewClient.data.result}}" }] }}
      pluginId="variable1"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <connectResource
    id="query102"
    _componentId="select10"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="addnewuser_existingclient"
    actionType="INSERT"
    changeset={
      '[{"key":"name","value":"{{textInput60.value}}"},{"key":"email_address","value":"{{textInput58.value}}"},{"key":"date_created","value":"{{ new Date() }}"},{"key":"phone_no","value":"{{textInput59.value}}"},{"key":"user_notes","value":"{{textArea30.value}}"},{"key":"client_id","value":"{{select9.selectedItem.id}}"},{"key":"active","value":"true"},{"key":"department","value":"{{select10.value}}"},{"key":"position","value":"{{ select11.value }}"},{"key":"mobile_no","value":"{{textInput44.value}}"}]'
    }
    changesetObject="{{form35.data}}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="client_users"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="chat2_query1"
    action="textSummarization"
    dynamicModelName="gpt-4o-mini"
    dynamicModelNameEnabled={false}
    dynamicModelProvider="openAI"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    imageModel="dall-e-2"
    instruction=" {{ chat2.lastMessage }}"
    isMultiplayerEdited={false}
    model="gpt-3.5-turbo"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getuserpreviousemails"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getuserpreviousemails.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
//return formatDataAsArray(data).map(row=> ({...row, id:data[row.email_id]}))

//console.log();
"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="chat2_query2"
    action="documentParsing"
    dynamicModelName="gpt-4o-mini"
    dynamicModelNameEnabled={false}
    dynamicModelProvider="openAI"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    fileSource="fileDropzone1"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{chat1.messageHistory}}"
    chatInput="{{chat1.lastMessage}}"
    dynamicModelName="gpt-4o-mini"
    dynamicModelNameEnabled={false}
    dynamicModelProvider="openAI"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    resourceTypeOverride=""
    showSuccessToaster={false}
    systemMessage="You are a helpful assistant specialised in the Pharmaceutical Indutry, GMP and EU Pharmaceutical Regulations."
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="chat1_query2"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    dynamicModelName="gpt-4o-mini"
    dynamicModelNameEnabled={false}
    dynamicModelProvider="openAI"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    imageModel="dall-e-2"
    model="gpt-3.5-turbo"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="updateRow"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"company_name","value":"{{select9.value}}"},{"key":"type","value":"{{select8.value}}"},{"key":"company_address","value":"{{textArea31.value}}"},{"key":"company_contact","value":"{{textInput61.value}}"},{"key":"company_phone","value":"{{textInput64.value}}"},{"key":"company_email","value":"{{textInput62.value}}"},{"key":"company_website","value":"{{textInput63.value}}"}]'
    }
    changesetObject="{{ form.data }}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={'[{"key":"id","value":"{{select9.id}}","operation":"="}]'}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="clients"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getclients"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getusers"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getusers.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getclients"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getclients.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SMTPQuery
    id="sendemail"
    attachment={["fileDropzone7"]}
    body="{{richTextEditor3.value}}"
    bodyType="html"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    fromEmail="pathfinder@exelcis.com"
    isMultiplayerEdited={false}
    replyToEmail="pathfinder@exelcis.com"
    resourceName="de698f27-23bd-4709-9bf2-c550286e1e10"
    resourceTypeOverride=""
    showCcBcc={true}
    showReplyTo={true}
    showSuccessToaster={false}
    subject="{{textInput66.value}}"
    toEmail="{{email3.value}}"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="update_email_resend"
    actionType="INSERT"
    changeset={
      '[{"key":"userID","value":"{{table4.selectedRow.userID}}"},{"key":"email_subject","value":"{{textInput68.value}}"},{"key":"email_body","value":"{{richTextEditor5.value}}"},{"key":"to_address","value":"{{email5.value}}"},{"key":"sender","value":"{{current_user.email}}"},{"key":"sent_date_time","value":"now()"},{"key":"","value":""}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={'[{"key":"userID","value":"","operation":"="}]'}
    isMultiplayerEdited={false}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="client_outgoing_emails"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <State
    id="variable1"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <SqlQueryUnified
    id="update_email_table"
    actionType="INSERT"
    changeset={
      '[{"key":"userID","value":"{{table33.selectedRow.userID}}"},{"key":"email_subject","value":"{{textInput57.value}}"},{"key":"email_body","value":"{{richTextEditor1.value}}"},{"key":"to_address","value":"{{email1.value}}"},{"key":"sender","value":"{{email1.value}}"},{"key":"sent_date_time","value":"{{ new Date() }}"},{"key":"","value":""}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={'[{"key":"userID","value":"","operation":"="}]'}
    isMultiplayerEdited={false}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="client_outgoing_emails"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="addnewuser_newclient"
    actionType="INSERT"
    changeset={
      '[{"key":"name","value":"{{textInput60.value}}"},{"key":"email_address","value":"{{textInput58.value}}"},{"key":"date_created","value":"{{ new Date() }}"},{"key":"phone_no","value":"{{textInput59.value}}"},{"key":"user_notes","value":"{{textArea30.value}}"},{"key":"client_id","value":"{{ variable1.value[\'0\'] }}"},{"key":"active","value":"true"},{"key":"department","value":"{{select10.value}}"},{"key":"position","value":"{{select11.value}}"}]'
    }
    changesetObject="{{form35.data}}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="client_users"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getusers"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Function id="transformer7" />
  <State id="lat" value="{{query24.data.results[0].geometry.location.lat}}" />
  <Frame
    id="$main19"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Include src="./container20.rsx" />
    <Container
      id="container21"
      _gap={0}
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle65"
          value="#### Contacts at {{table32.selectedRow.company_name}}"
          verticalAlign="center"
        />
        <Image
          id="image2"
          altText="{{table32.selectedRow.company_website}}"
          fit="contain"
          heightType="fixed"
          horizontalAlign="center"
          src="data:image/png;base64, {{getlogo.data.base64Data}}"
        />
      </Header>
      <View id="08d32" viewKey="View 1">
        <Table
          id="table33"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ getusers.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          primaryKeyColumnId="58298"
          rowHeight="medium"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="58298"
            alignment="right"
            editable={false}
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="userID"
            label="User id"
            placeholder="Enter value"
            position="center"
            size={56.90625}
            summaryAggregationMode="none"
          />
          <Column
            id="5a380"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="name"
            label="Name"
            placeholder="Select option"
            position="left"
            size={138.1875}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="31a31"
            alignment="left"
            editable="true"
            format="string"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            key="email_address"
            label="Email address"
            placeholder="Enter value"
            position="center"
            size={133.53125}
            summaryAggregationMode="none"
          />
          <Column
            id="1174e"
            alignment="left"
            editable="true"
            editableOptions={{ object: {} }}
            format="string"
            formatOptions={{ showUnderline: "hover" }}
            groupAggregationMode="none"
            key="phone_no"
            label="Phone no"
            placeholder="Enter value"
            position="center"
            size={85.9375}
            summaryAggregationMode="none"
          />
          <Column
            id="2fde9"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="department"
            label="Department"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="540fc"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="position"
            label="Position"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="e99a8"
            alignment="center"
            editable="true"
            format="boolean"
            groupAggregationMode="none"
            hidden="true"
            key="vip"
            label="VIP"
            placeholder="Enter value"
            position="center"
            size={35.6875}
            summaryAggregationMode="none"
          />
          <Column
            id="ae26f"
            alignment="left"
            editable="true"
            format="boolean"
            formatOptions={{
              icon: '{{ item === "success" ? "/icon:bold/interface-validation-check-circle" : "/icon:bold/interface-alert-warning-circle" }}',
            }}
            groupAggregationMode="none"
            hidden="true"
            key="newsletter"
            label="Newsletter"
            placeholder="Enter value"
            position="center"
            size={79.75}
            summaryAggregationMode="none"
          />
          <Column
            id="089e3"
            alignment="center"
            editable="true"
            format="boolean"
            groupAggregationMode="none"
            hidden="true"
            key="additional_info"
            label="Additional info"
            placeholder="Enter value"
            position="center"
            size={100.03125}
            summaryAggregationMode="none"
          />
          <Column
            id="4f4ea"
            alignment="left"
            editable="true"
            format="date"
            groupAggregationMode="none"
            hidden="true"
            key="date_created"
            label="Date created"
            placeholder="Enter value"
            position="center"
            size={90.734375}
            summaryAggregationMode="none"
          />
          <Column
            id="9c55a"
            alignment="left"
            editable="true"
            format="string"
            groupAggregationMode="none"
            key="user_notes"
            label="Notes"
            placeholder="Enter value"
            position="center"
            size={50.359375}
            summaryAggregationMode="none"
          />
          <Column
            id="8ac24"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="client_id"
            label="Client ID"
            placeholder="Enter value"
            position="center"
            size={65.125}
            summaryAggregationMode="none"
          />
          <Column
            id="ffd78"
            alignment="left"
            format="datetime"
            groupAggregationMode="none"
            hidden="true"
            key="date_amended"
            label="Date amended"
            placeholder="Enter value"
            position="center"
            size={145.03125}
            summaryAggregationMode="none"
          />
          <Column
            id="1a6fe"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="active"
            label="Active"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Action
            id="4d01f"
            hidden="false"
            icon="bold/mail-send-envelope-alternate"
            label="Send email"
          >
            <Event
              event="clickAction"
              method="open"
              params={{ ordered: [] }}
              pluginId="modal11"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="update_user"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="selectRow"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="get_emails"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="container22"
      _gap={0}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle66"
          value="#### Corrospondance with {{table33.selectedRow.name}}"
          verticalAlign="center"
        />
      </Header>
      <View id="89601" viewKey="View 1">
        <Table
          id="table4"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ get_emails.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="848b3"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="userID"
            label="User id"
            placeholder="Enter value"
            position="center"
            size={56.90625}
            summaryAggregationMode="none"
          />
          <Column
            id="c3ec1"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="fullName"
            label="Sender"
            placeholder="Select option"
            position="center"
            size={118.1875}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="ff434"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="firstName"
            label="First name"
            placeholder="Enter value"
            position="center"
            size={77.125}
            summaryAggregationMode="none"
          />
          <Column
            id="6b715"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="lastName"
            label="Last name"
            placeholder="Enter value"
            position="center"
            size={75.890625}
            summaryAggregationMode="none"
          />
          <Column
            id="cedf5"
            alignment="left"
            format="string"
            formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
            groupAggregationMode="none"
            hidden="true"
            key="sender"
            label="Sender"
            placeholder="Enter value"
            position="center"
            size={150.53125}
            summaryAggregationMode="none"
          >
            <Event
              event="clickCell"
              method="openUrl"
              params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Column>
          <Column
            id="eb92e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="to_address"
            label="To address"
            placeholder="Enter value"
            position="center"
            size={150.53125}
            summaryAggregationMode="none"
          />
          <Column
            id="5934c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="email_subject"
            label="Subject"
            placeholder="Enter value"
            position="center"
            size={110.171875}
            summaryAggregationMode="none"
          />
          <Column
            id="4a75e"
            alignment="left"
            format="html"
            groupAggregationMode="none"
            key="email_body"
            label="Email"
            placeholder="Enter value"
            position="center"
            size={197.046875}
            summaryAggregationMode="none"
          />
          <Column
            id="8f958"
            alignment="right"
            format="datetime"
            groupAggregationMode="none"
            key="sent_date_time"
            label="Sent on"
            placeholder="Enter value"
            position="right"
            size={155}
            summaryAggregationMode="none"
          />
          <Column
            id="70876"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="itemID"
            label="Item id"
            placeholder="Enter value"
            position="center"
            size={55.3125}
            summaryAggregationMode="none"
          />
          <Action id="e33cf" icon="bold/interface-edit-view" label="View">
            <Event
              event="clickAction"
              method="open"
              params={{ ordered: [] }}
              pluginId="modal7"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
        </Table>
      </View>
    </Container>
    <Modal
      id="modal7"
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      hidden="true"
      modalHeight="616px"
      modalHeightType="auto"
      modalOverflowType="hidden"
      modalWidth="40%"
    >
      <Form
        id="form41"
        data={{ ordered: [] }}
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle39"
            marginType="normal"
            value="#### Email from {{table4.selectedRow.sender}}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="email5"
            iconBefore="bold/mail-send-envelope"
            label="Email"
            labelPosition="top"
            marginType="normal"
            patternType="email"
            placeholder="you@example.com"
            value="{{table4.selectedRow.to_address}}"
          />
          <TextInput
            id="textInput68"
            label="Subject"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            value="{{table4.selectedRow.email_subject}}"
          />
          <TextEditor
            id="richTextEditor5"
            value="{{table4.selectedRow.email_body}}"
          />
        </Body>
        <Footer>
          <DateTime
            id="dateTime2"
            dateFormat="MMM d, yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            disabled="true"
            label="Sent on"
            minuteStep={15}
            value="{{table4.selectedRow.sent_date_time}}"
          />
          <Button
            id="formButton29"
            marginType="normal"
            submit={true}
            submitTargetId="form41"
            text="Re-send"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="re_sendemail"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="update_email_resend"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="showNotification"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    { notificationType: "info" },
                    { title: "Email Re-sent successfully" },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
      <Modal
        id="modal8"
        buttonText="Open Modal"
        closeOnOutsideClick={true}
        hidden="true"
        modalHeight="616px"
        modalHeightType="auto"
        modalOverflowType="hidden"
        modalWidth="40%"
      >
        <Form
          id="form42"
          data={{ ordered: [] }}
          footerPadding="4px 12px"
          footerPaddingType="normal"
          headerPadding="4px 12px"
          headerPaddingType="normal"
          marginType="normal"
          padding="12px"
          paddingType="normal"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="formTitle40"
              marginType="normal"
              value="#### Email {{table33.selectedRow.name}}"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <TextInput
              id="email6"
              iconBefore="bold/mail-send-envelope"
              label="Email"
              labelPosition="top"
              marginType="normal"
              patternType="email"
              placeholder="you@example.com"
              value="{{table33.selectedRow.email_address}}"
            />
            <TextInput
              id="textInput43"
              label="Subject"
              labelPosition="top"
              marginType="normal"
              placeholder="Enter value"
            />
            <TextEditor
              id="richTextEditor13"
              value="Dear {{table33.selectedRow.name}},


</br></br></br></br></br>
Respectfully,</br>
{{current_user.fullName}}</br>
{{}}
Pharmacare Premium

"
            />
            <FileDropzone
              id="fileDropzone6"
              accept={[]}
              appendNewSelection={true}
              files={[]}
              iconBefore="bold/programming-browser-search"
              label=""
              labelPosition="top"
              marginType="normal"
              parsedValue={[]}
              placeholder="Select or drag and drop"
              selectionType="multiple"
              value={[]}
            />
          </Body>
          <Footer>
            <Button
              id="formButton30"
              marginType="normal"
              submit={true}
              submitTargetId="form42"
              text="Send"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="sendemail"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="update_email_table"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="close"
            params={{ ordered: [] }}
            pluginId="modal8"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="confetti"
            params={{ ordered: [] }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </Modal>
    </Modal>
    <Modal
      id="modal10"
      buttonText="+ Add New Contact"
      closeOnOutsideClick={true}
      modalHeightType="auto"
    >
      <Form
        id="form35"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ table33.selectedRow }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle33"
            marginType="normal"
            value="### New contact"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput56"
            formDataKey="name"
            label="Name"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="textInput54"
            formDataKey="email"
            iconBefore="bold/mail-send-envelope"
            label="Email"
            marginType="normal"
            patternType="email"
            placeholder="you@example.com"
            required={true}
          />
          <TextInput
            id="textInput55"
            formDataKey="phone_no"
            label="Phone no"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <TextArea
            id="textArea29"
            autoResize={true}
            formDataKey="notes"
            label="Notes"
            marginType="normal"
            minLines={2}
            placeholder="Enter value"
          />
          <Checkbox
            id="checkbox7"
            formDataKey="vip"
            label="VIP"
            labelAlign="right"
            labelPosition="left"
            marginType="normal"
          />
          <Checkbox
            id="checkbox8"
            formDataKey="newsletter"
            label="Newsletter"
            labelAlign="right"
            labelPosition="left"
            marginType="normal"
          />
          <Checkbox
            id="checkbox9"
            formDataKey="additional_info"
            label="Additional info"
            labelAlign="right"
            labelPosition="left"
            marginType="normal"
          />
        </Body>
        <Footer>
          <Button
            id="formButton25"
            marginType="normal"
            submit={true}
            submitTargetId="form35"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="addnewuser_existingclient"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Modal
      id="modal11"
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      hidden="true"
      modalHeight="616px"
      modalHeightType="auto"
      modalOverflowType="hidden"
      modalWidth="40%"
    >
      <Form
        id="form36"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle34"
            marginType="normal"
            value="#### Email {{table33.selectedRow.name}}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput57"
            label="Subject"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
          />
          <TextInput
            id="email1"
            iconBefore="bold/mail-send-envelope"
            label="Email"
            labelPosition="top"
            marginType="normal"
            patternType="email"
            placeholder="you@example.com"
            value="{{table33.selectedRow.email_address}}"
          />
          <TextEditor
            id="richTextEditor1"
            value="Dear {{table33.selectedRow.name}},


</br></br></br></br></br>
Respectfully,</br>
{{current_user.fullName}}</br>
{{}}
Pharmacare Premium

"
          />
          <FileDropzone
            id="fileDropzone7"
            appendNewSelection={true}
            iconBefore="bold/programming-browser-search"
            label=""
            labelPosition="top"
            marginType="normal"
            placeholder="Select or drag and drop"
            selectionType="multiple"
          />
        </Body>
        <Footer>
          <Button
            id="formButton26"
            marginType="normal"
            submit={true}
            submitTargetId="form36"
            text="Send"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="sendemail"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="update_email_table"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="modal11"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="showNotification"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    { notificationType: "info" },
                    { title: "Email sent successfully" },
                  ],
                },
              },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
      <Modal
        id="modal6"
        buttonText="Open Modal"
        closeOnOutsideClick={true}
        hidden="true"
        modalHeight="616px"
        modalHeightType="auto"
        modalOverflowType="hidden"
        modalWidth="40%"
      >
        <Form
          id="form40"
          data={{ ordered: [] }}
          footerPadding="4px 12px"
          footerPaddingType="normal"
          headerPadding="4px 12px"
          headerPaddingType="normal"
          marginType="normal"
          padding="12px"
          paddingType="normal"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="formTitle38"
              marginType="normal"
              value="#### Email {{table33.selectedRow.name}}"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <TextInput
              id="email4"
              iconBefore="bold/mail-send-envelope"
              label="Email"
              labelPosition="top"
              marginType="normal"
              patternType="email"
              placeholder="you@example.com"
              value="{{table33.selectedRow.email_address}}"
            />
            <TextInput
              id="textInput67"
              label="Subject"
              labelPosition="top"
              marginType="normal"
              placeholder="Enter value"
            />
            <TextEditor
              id="richTextEditor4"
              value="Dear {{table33.selectedRow.name}},


</br></br></br></br></br>
Respectfully,</br>
{{current_user.fullName}}</br>
{{}}
Pharmacare Premium

"
            />
            <FileDropzone
              id="fileDropzone4"
              accept={[]}
              appendNewSelection={true}
              files={[]}
              iconBefore="bold/programming-browser-search"
              label=""
              labelPosition="top"
              marginType="normal"
              parsedValue={[]}
              placeholder="Select or drag and drop"
              selectionType="multiple"
              value={[]}
            />
          </Body>
          <Footer>
            <Button
              id="formButton28"
              marginType="normal"
              submit={true}
              submitTargetId="form40"
              text="Send"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="sendemail"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="update_email_table"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="close"
            params={{ ordered: [] }}
            pluginId="modal6"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="submit"
            method="confetti"
            params={{ ordered: [] }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </Modal>
    </Modal>
  </Frame>
  <Include src="./modalFrame4.rsx" />
  <Include src="./modalFrame5.rsx" />
  <Include src="./modalFrame6.rsx" />
</Screen>
