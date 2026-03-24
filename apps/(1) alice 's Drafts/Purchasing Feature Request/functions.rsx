<GlobalFunctions>
  <JavascriptQuery
    id="handleRequestFeatureSubmit"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/handleRequestFeatureSubmit.js", "string")}
    queryFailureConditions="[]"
    resourceName="JavascriptQuery"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <RESTQuery
    id="postRequestFeature"
    body={
      '[{"key":"feature_title","value":"{{input_title.value}}"},{"key":"feature_priority","value":"{{select_priority.value}}"},{"key":"feature_type","value":"{{select_type.value}}"},{"key":"feature_description","value":"{{textarea_description.value}}"},{"key":"email","value":"{{current_user.email}}"},{"key":"retool_app_link","value":"{{`https://one.finn.auto/apps/${retoolContext.appUuid}/${retoolContext.appName}`}}"},{"key":"retool_app_name","value":"{{retoolContext.appName}}"},{"key":"username","value":"{{current_user.fullName}}"},{"key":"feature_team","value":"{{ select_team.value }}"}]'
    }
    bodyType="json"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="https://hook.finn.integromat.cloud/flodbzkktxcgqvnis5xgsigqu11spnxn"
    resourceName="REST-WithoutResource"
    retoolVersion="2.92.10"
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    type="POST"
  />
</GlobalFunctions>
