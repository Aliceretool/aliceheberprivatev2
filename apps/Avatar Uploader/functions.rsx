<GlobalFunctions>
  <Folder id="SimpleUpload">
    <SqlQueryUnified
      id="updUserSimple"
      actionType="UPDATE_BY"
      changeset={
        '[{"key":"avatarURL","value":"https://pathfinder-uat.s3.eu-west-2.amazonaws.com/{{uploadS3Simple.data.fileName}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"userID","value":"{{ userID.value }}","operation":"="}]'
      }
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="user"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="fileInput1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="refresh"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <S3Query
      id="uploadS3Simple"
      actionType="upload"
      bucketName="pathfinder-uat"
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
      uploadData="{{ fileInput1.value['0'].base64Data }}"
      uploadFileName="{{userID.value}}/{{uuid.v4()}}-{{fileInput1.value[0].name}}"
      uploadFileType="{{ fileInput1.value['0'].type }}"
      useRawUploadFileType={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updUserSimple"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </S3Query>
    <GlobalWidgetQuery
      id="refresh"
      defaultValue=""
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      resourceName="GlobalWidgetQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      value=""
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <S3Query
    id="uploadS3"
    actionType="upload"
    bucketName="pathfinder-uat"
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
    uploadData="{{ fileInput1.value['0'].base64Data }}"
    uploadFileName="{{ fileName }}"
    uploadFileType="{{ fileInput1.value[0].type }}"
    useRawUploadFileType={true}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="refresh"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clearValue"
      params={{ ordered: [] }}
      pluginId="fileInput1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </S3Query>
  <SqlQueryUnified
    id="getUser"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/getUser.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="avatarProcessing"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/avatarProcessing.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <S3Query
    id="getSignedURL"
    actionType="getSignedUrl"
    bucketName="pathfinder-uat"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    signedOperationName="getObject"
    signedOperationOptions={'{\n"Key": {{ keyValue }}\n}'}
    transformer="// Query results are available as the `data` variable
return data"
    uploadData="{{ fileInput1.value['0'].base64Data }}"
    uploadFileName="{{`${userID.value}/${uuid.v4()}-${fileInput1.value[0].name}` }}"
    uploadFileType="{{ fileInput1.value[0].type }}"
    useRawUploadFileType={true}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="updUser"
    actionType="UPDATE_BY"
    changeset={'[{"key":"avatarURL","value":"{{ avatarURL }}"}]'}
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={'[{"key":"userID","value":"{{ userID.value }}","operation":"="}]'}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="user"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <S3Query
    id="query8"
    actionType="delete"
    bucketName="pathfinder-uat"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    fileKey="b625e28f-597c-4626-a11e-ee676587d2b8/b74ddf8b-fa21-40fd-83b1-9333a0bb8947-Cute Dog 2.jpg"
    isMultiplayerEdited={false}
    prefix="{{ userID.value }}"
    resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
