<GlobalFunctions>
  <S3Query
    id="uploadS3"
    actionType="upload"
    bucketName="pathfinder-uat"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    uploadData="{{ fileData }}"
    uploadFileName="{{ fileName }}"
    uploadFileType="{{ contentType }}"
    useRawUploadFileType={true}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="issue_file_addition"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </S3Query>
  <JavascriptQuery
    id="upload"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/upload.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <GlobalWidgetQuery
    id="refresh"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceName="GlobalWidgetQuery"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="issue_file_addition"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"file_addition","value":"{{ uploadS3.data.fileName }}"},{"key":"updated_at","value":"{{ moment() }}"},{"key":"updated_by","value":"{{ current_user.email }}"}]'
    }
    editorMode="gui"
    filterBy={
      '[{"key":"issueID","value":"{{ issueId.value }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    runWhenModelUpdates={false}
    tableName="issue"
  />
</GlobalFunctions>
