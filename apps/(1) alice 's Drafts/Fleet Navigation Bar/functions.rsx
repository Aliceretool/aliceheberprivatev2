<GlobalFunctions>
  <RESTQuery
    id="chatGPTJoke"
    body={
      '{\n  "model": "gpt-4o",\n  "messages": [\n    {\n      "role": "system",\n      "content": "Tell me your favorite programming joke and laugh at it with me"\n    }\n  ]\n}'
    }
    bodyType="raw"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={'[{"key":"content-type","value":"application/json"}]'}
    query="https://api.openai.com/v1/chat/completions"
    queryTimeout="30000"
    resourceName="66978b1f-1e7f-4939-8b98-6eab0a215015"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data?.choices?.[0].message"
    type="POST"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      id="8c75ea8a"
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { title: "Joke Time 🌝" },
                { description: "{{ chatGPTJoke.data.content }}" },
                { duration: "15" },
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
  </RESTQuery>
  <RESTQuery
    id="chatGPTPrompt"
    body={
      '{\n  "model": "gpt-4o",\n  "messages": [\n    {\n      "role": "system",\n      "content": "{{ createChatGPTPrompt.value }}"\n    }\n  ]\n}'
    }
    bodyType="raw"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={'[{"key":"content-type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    query="https://hook.finn.integromat.cloud/rqe96ogbct5u7ique5sbq2mg4o72d1je"
    queryDisabled="{{ !queryVectorDB.data || !searchBar.value }}"
    queryTimeout="30000"
    resourceName="66978b1f-1e7f-4939-8b98-6eab0a215015"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer=""
    type="POST"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="createChatGPTPrompt"
    funcBody={include("./lib/createChatGPTPrompt.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="defaultCountry"
    funcBody={include("./lib/defaultCountry.js", "string")}
    runBehavior="debounced"
  />
  <Function
    id="fleetyRatingLabel"
    funcBody={include("./lib/fleetyRatingLabel.js", "string")}
    runBehavior="debounced"
  />
  <JavascriptQuery
    id="handleAskFleety"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/handleAskFleety.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="isPurchasingPage"
    funcBody={include("./lib/isPurchasingPage.js", "string")}
    runBehavior="debounced"
  />
  <SqlQueryUnified
    id="logFleetyPrompt"
    actionType="INSERT"
    changeset={
      '[{"key":"actor","value":"{{ current_user.email }}"},{"key":"question_prompt","value":"{{ searchBar.value }}"},{"key":"resp_gpt","value":"{{ chatGPTPrompt.data.content }}"},{"key":"resp_vector_db","value":"{{ JSON.stringify( queryVectorDB.data?.map(item => item.metadata) )}}"}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    tableName="fleety_logs"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <State
    id="purchasingKeywords"
    value={
      '[\n  "partner",\n  "volume",\n  "deal",\n  "evaluation",\n  "configurations",\n  "pricings",\n  "invoice",\n  "financing",\n  "eta",\n  "next",\n  "framework",\n  "matching",\n  "compare",\n  "schwacke",\n  "sny"\n]'
    }
  />
  <RESTQuery
    id="queryVectorDB"
    body={
      '[{"key":"queries","value":"[{ \\"query\\": {{ searchBar.value }}, \\"top_k\\": 3 }]"}]'
    }
    bodyType="json"
    cacheKeyTtl={300}
    enableCaching={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={
      '[{"key":"Authorization","value":"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMTEiLCJuYW1lIjoiTGVhbmRlciJ9.d6W5S_Cl9he-2qXtVokkfghlaweWpBs0ZwCQJGdgmzA"}]'
    }
    query="https://vector.finn.auto/datastores/fleet_confluence/query"
    queryThrottleTime="1000"
    queryTriggerDelay=""
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="try {
  return data.results[0].results;
} catch (e) {
  return [];
}
"
    type="POST"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      id="83b27112"
      event="success"
      method="open"
      params={{ ordered: [] }}
      pluginId="searchBarResultsModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="259656ea"
      event="success"
      method="focus"
      params={{ ordered: [] }}
      pluginId="searchBar"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="fc362255"
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                { duration: "10" },
                { title: "Error" },
                { description: "Confluence search failed" },
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
  </RESTQuery>
  <SqlQueryUnified
    id="updateFleetyFeedback"
    actionType="UPDATE_OR_INSERT_BY"
    changeset={
      '[{"key":"feedback_rating","value":"{{ fleetyRatingLabel.value.value }}"},{"key":"feedback_comments","value":"{{ fleetingFeedbackComment.value || null }}"},{"key":"feedback_rating_score","value":"{{ fleetyRating.value }}"}]'
    }
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"id","value":"{{ logFleetyPrompt.data?.result?.[0]?.id }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    showSuccessToaster={false}
    tableName="fleety_logs"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      id="2fbd768f"
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Feedback Received :)" },
                { description: "Thank you for your help improving Fleety!" },
                { duration: "5" },
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
</GlobalFunctions>
