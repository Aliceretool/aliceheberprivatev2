<Screen
  id="TTCodes"
  _hashParams={[]}
  _searchParams={[]}
  title="Time Tracking Codes"
  urlSlug=""
>
  <SqlQueryUnified
    id="getclients4"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getclients4.sql", "string")}
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
    id="updateRow3"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"company_name","value":"{{select9.value}}"},{"key":"type","value":"{{select8.value}}"},{"key":"company_address","value":"{{textArea8.value}}"},{"key":"company_contact","value":"{{textInput35.value}}"},{"key":"company_phone","value":"{{textInput38.value}}"},{"key":"company_email","value":"{{textInput36.value}}"},{"key":"company_website","value":"{{textInput37.value}}"}]'
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
      pluginId="getclients4"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getuserpreviousemails3"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getuserpreviousemails3.sql", "string")}
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
  <SqlQueryUnified
    id="addNewClient3"
    actionType="INSERT"
    changeset={
      '[{"key":"company_name","value":"{{ textInput39.value }}"},{"key":"type","value":"{{select8.value}}"},{"key":"company_address","value":"{{textArea8.value}}"},{"key":"company_contact","value":"{{textInput35.value}}"},{"key":"company_phone","value":"{{textInput38.value}}"},{"key":"company_email","value":"{{textInput36.value}}"},{"key":"company_website","value":"{{textInput37.value}}"},{"key":"id","value":"{{ Math.floor(Math.random() * 10000000) }}"},{"key":"date_created","value":"{{ new Date() }}"}]'
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
      params={{ ordered: [{ value: "{{ addNewClient3.data.result}}" }] }}
      pluginId="variable3"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RetoolAIQuery
    id="welcome_email_ai3"
    customSystemMessage="Ensure the response is in HTML format and do not include the subject line in the email"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    instruction={
      'Write a professional welcome / personal email to {{table3.selectedRow.name}} to welcome them to Pharmacare Premium. Write with the keywords "Generic Products", "GMP", "European Facility" for a Pharmaceutical client who enjoys networking, and describe the benefits of our offering  in 100 words. Sign it from {{current_user.fullName}}'
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
      params={{ ordered: [{ value: "{{welcome_email_ai3.data}}" }] }}
      pluginId="richTextEditor3"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolAIQuery>
  <SqlQueryUnified
    id="updTable2"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="accountID"
    changesetIsObject={true}
    changesetObject="{{table40.changesetArray}}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"accountID","value":"{{table40.selectedRow.accountID}}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    records="{{table40.changesetArray}}"
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="time_accounts"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getTime_accounts2"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getLoggedTime2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getLoggedTime2.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query105"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/query105.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query106"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/query106.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query107"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// Query results are available as the `data` variable
return data"
    updateSetValueDynamically={true}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getTime_accounts2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getTime_accounts2.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="getlogo4"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="https://logo.clearbit.com/{{select64.selectedItem.company_website}}?size=400"
    resourceName="REST-WithoutResource"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="get_emails3"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/get_emails3.sql", "string")}
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
  <State
    id="variable3"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <SqlQueryUnified
    id="getProducts5"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getProducts5.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function id="transformer13" />
  <Function
    id="transformer14"
    funcBody={include("../lib/transformer14.js", "string")}
  />
  <Function
    id="transformer15"
    funcBody={include("../lib/transformer15.js", "string")}
  />
  <SMTPQuery
    id="sendemail3"
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
    subject="{{textInput40.value}}"
    toEmail="{{email3.value}}"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="insAccount"
    actionType="INSERT"
    changeset={
      '[{"key":"account_name","value":"{{textInput77.value}}"},{"key":"status","value":"{{select63.value}}"},{"key":"client_id","value":"{{select64.value}}"},{"key":"products","value":"{{multiselect23.value}}"},{"key":"accountID","value":"{{uuid.v4()}}"},{"key":"created_by","value":"{{current_user.email}}"},{"key":"created_at","value":"{{ moment().format() }}"},{"key":"account_key","value":"{{textInput76.value}}"}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    queryFailureConditions="[]"
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="time_accounts"
    transformer="// Query results are available as the `data` variable
return data"
    updateSetValueDynamically={true}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                {
                  title:
                    "Please ensure the Key value is unique and not used in other accounts",
                },
                { description: "" },
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
  </SqlQueryUnified>
  <Frame
    id="$main22"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Include src="./container31.rsx" />
  </Frame>
  <Include src="./modalFrame9.rsx" />
</Screen>
