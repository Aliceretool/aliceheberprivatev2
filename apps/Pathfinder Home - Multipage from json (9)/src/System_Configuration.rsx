<Screen
  id="System_Configuration"
  _hashParams={[]}
  _searchParams={[]}
  title="Page page1"
  urlSlug=""
>
  <Folder id="Parameter">
    <SqlQueryUnified
      id="updParameter"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="parameterId"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      records="{{table28.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="parameter"
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getParameter2"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getParameter2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="project_field_type_value">
    <SqlQueryUnified
      id="updproject_field_type_value"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="project_field_type_valueID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      records="{{table_project_field_type_values.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_type_value"
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
        pluginId="getProject_field_type_value"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insProject_field_type_value"
      actionType="INSERT"
      changeset={
        '[{"key":"project_field_type_valueID","value":"{{uuid.v4()}}"},{"key":"project_field_project_typeID","value":"{{table_project_field_project_type.selectedRow.project_field_project_typeID}}"},{"key":"isActive","value":"1"},{"key":"field_value","value":"{{textInput9.value}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_type_value"
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
        pluginId="getProject_field_type_value"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_fieldValueCascade"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insProject_field_type_value_bulk"
      actionType="BULK_INSERT"
      changeset={
        '[{"key":"project_field_type_valueID","value":"{{uuid.v4()}}"},{"key":"project_field_project_typeID","value":"{{table_project_field_project_type.selectedRow.project_field_project_typeID}}"},{"key":"isActive","value":"1"},{"key":"field_value","value":"{{textInput9.value}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      records="{{ fileInput1.parsedValue[0].map((x) => {return Object.assign(x,{project_field_type_valueID: uuid.v4(),project_field_project_typeID: table_project_field_project_type.selectedRow.project_field_project_typeID,isActive: 1})}) }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_type_value"
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
        pluginId="getProject_field_type_value"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal4"
        type="widget"
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
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_field_type_value"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_type_value.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={["SQL_TEMPLATED_COLUMN_NAME_ERR"]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="delProject_field_project_typeID"
      actionType="DELETE_BY"
      confirmationMessage="Are you sure you wish to delete this field value?  This cannot be undone."
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"project_field_type_valueID","value":"{{table_project_field_type_values.selectedRow.project_field_type_valueID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      notificationDuration={null}
      requireConfirmation={true}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_type_value"
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
        pluginId="getProject_field_type_value"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="project_field_project_type">
    <SqlQueryUnified
      id="getProject_field_CROSS_project_type"
      confirmationMessage="Are you sure you want to refresh project type and field combinations?  This will check for new project types, and if present insert them here for the field."
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_CROSS_project_type.sql",
        "string"
      )}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_CROSS_project_type_delta"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getproject_field_project_type_NoValues"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include(
        "../lib/getproject_field_project_type_NoValues.sql",
        "string"
      )}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getProject_field_project_type"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_project_type.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insProject_type_project_field"
      actionType="INSERT"
      bulkUpdatePrimaryKey="project_field_project_typeID"
      changeset={
        '[{"key":"project_field_project_typeID","value":"{{ uuid.v4() }}"},{"key":"project_fieldID","value":""}]'
      }
      changesetIsObject={true}
      changesetObject="{{ getProject_field_CROSS_project_type_delta.data.map(v => ({...v,project_field_project_typeID: uuid.v4() })) }}"
      editorMode="gui"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      queryDisabled="{{getProject_field_CROSS_project_type_delta.data.length < 1}}"
      records="{{ getProject_field_CROSS_project_type_delta.data.map(v => ({...v,project_field_project_typeID: uuid.v4() })) }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      tableName="project_field_project_type"
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
        pluginId="getProject_field_project_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_project_typeTable"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="query73"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/query73.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="query67"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/query67.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_project_type"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_project_typeTable"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_field_project_typeTable_Refresh"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_project_typeTable_Refresh.sql",
        "string"
      )}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_CROSS_project_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_field_project_typeTable"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_project_typeTable.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insProject_type_project_field2"
      actionType="INSERT"
      bulkUpdatePrimaryKey="project_field_project_typeID"
      changeset={
        '[{"key":"project_field_project_typeID","value":"{{ uuid.v4() }}"},{"key":"project_fieldID","value":""}]'
      }
      changesetIsObject={true}
      changesetObject="{{ getUser_project_role_delta.data.map(v => ({...v,user_project_roleID: uuid.v4() })) }}"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insProject_type_project_field2.sql", "string")}
      queryDisabled="{{getProject_field_CROSS_project_type_delta.data.length < 1}}"
      records="{{ getProject_field_CROSS_project_type_delta.data.map(v => ({...v,project_field_project_typeID: uuid.v4() })) }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showFailureToaster={false}
      showSuccessToaster={false}
      tableName="project_field_project_type"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_project_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_project_typeTable"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_field_project_type2"
      actionType="DELETE_BY"
      editorMode="gui"
      enableBulkUpdates={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"project_typeID","value":"3d39211c-17dc-436b-8880-e01addb1bfef","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_project_type2.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_project_type"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getProject_field_project_type3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_project_type3.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updProject_field_project_type"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="project_field_project_typeID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      records="{{table_project_field_project_type.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_project_type"
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
        pluginId="getProject_field_project_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_project_typeTable"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delProject_field_project_type"
      actionType="DELETE_BY"
      confirmationMessage="Are you sure you want to delete this project field project type record 
with key {{table_project_field_project_type.selectedRow.project_field_project_typeID}}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"project_field_project_typeID","value":"{{table_project_field_project_type.selectedRow.project_field_project_typeID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      requireConfirmation={true}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_project_type"
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
        pluginId="getProject_field_project_typeTable"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getMissingPTyopesFromPFPT"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getMissingPTyopesFromPFPT.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlTransformQuery
      id="getProject_field_CROSS_project_type_delta"
      confirmationMessage="Are you sure you want to refresh project type and field combinations?  This will check for new project types, and if present insert them here for the field."
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_CROSS_project_type_delta.sql",
        "string"
      )}
      requireConfirmation={true}
      resourceName="SQL Transforms"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
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
        pluginId="insProject_type_project_field"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlTransformQuery>
  </Folder>
  <Folder id="Storage">
    <RetoolStorageQuery
      id="getFiles"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      limit=""
      offset=""
      resourceDisplayName="retool_storage"
      resourceName="retool_storage"
      resourceTypeOverride=""
      searchBy="fileId"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <S3Query
      id="insFile_FromDropzone2"
      actionType="upload"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      uploadData="{{fileDropzone1.value['0'].base64Data}}"
      uploadFileName="{{fileDropzone1.value['0'].name}}"
      uploadFileType="{{fileDropzone1.value['0'].type}}"
      useRawUploadFileType={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RetoolStorageQuery
      id="insFile_FromDropzone"
      actionType="upload"
      data="{{fileDropzone1.value['0'].base64Data}}"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      fileName="LeeTest.{{fileDropzone1.value['0'].type}}"
      limit=""
      offset=""
      resourceDisplayName="retool_storage"
      resourceName="retool_storage"
      runWhenModelUpdates={false}
      searchBy="fileId"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      uploadBy="programmatic"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getFiles"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RetoolStorageQuery>
    <S3Query
      id="getFiles_S3"
      bucketName="pathfinder-uat"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      resourceName="4e7d4de3-8ec5-400b-b615-60dc2be31dce"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="project_field_translation">
    <SqlQueryUnified
      id="updProject_field_translation_from_project_field"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="project_field_translationID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      queryDisabled="{{getProject_field_translation_update_with_english_blank.data.length == 0}} "
      records="{{getProject_field_translation_update_with_english_blank.data}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_translation"
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
        pluginId="getProject_field_translation3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_field_translation3"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("../lib/getProject_field_translation3.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updProject_field_translation_upload"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="project_field_translationID"
      changeset={
        '[{"key":"project_field_type_valueID","value":"{{uuid.v4()}}"},{"key":"project_field_project_typeID","value":"{{table_project_field_project_type.selectedRow.project_field_project_typeID}}"},{"key":"isActive","value":"1"},{"key":"field_value","value":"{{textInput9.value}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      records="{{ getProject_field_translation_to_update.data }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_translation"
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
        pluginId="fileInput3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_translation3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_field_translation_filtered"
      actionType="INSERT"
      changeset={
        '[{"key":"project_field_translationID","value":"{{uuid.v4()}}"},{"key":"languageID","value":"{{ select3.value }}"},{"key":"project_fieldID","value":"{{table_projectFields.selectedRow.project_fieldID }}"},{"key":"translation","value":"{{ textInput42.value }}"},{"key":"key","value":"{{ textInput19.value }}"}]'
      }
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_translation_filtered.sql",
        "string"
      )}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_translation"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_type_value"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_fieldValueCascade"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlTransformQuery
      id="getProject_field_translation_Delta"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_translation_Delta.sql", "string")}
      resourceName="SQL Transforms"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer=""
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insProject_field_english_no_translation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlTransformQuery>
    <SqlQueryUnified
      id="getProject_field_translation_with_values"
      actionType="INSERT"
      changeset={
        '[{"key":"project_field_translationID","value":"{{uuid.v4()}}"},{"key":"languageID","value":"{{ select3.value }}"},{"key":"project_fieldID","value":"{{table_projectFields.selectedRow.project_fieldID }}"},{"key":"translation","value":"{{ textInput42.value }}"},{"key":"key","value":"{{ textInput19.value }}"}]'
      }
      confirmationMessage="Are you sure you'd like to check for new field x language combinations for this project? If new combos are found, the will be inserted into the project_field_translation table.  The results of this table will then be shown below for you to download."
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include(
        "../lib/getProject_field_translation_with_values.sql",
        "string"
      )}
      requireConfirmation={true}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_translation"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_type_value"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_fieldValueCascade"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlTransformQuery
      id="getProject_field_translation_update_with_english_blank"
      confirmationMessage="Are you sure you want to update all translations to the english field labels if a translation has not been provided?  You can always update them later."
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_translation_update_with_english_blank.sql",
        "string"
      )}
      requireConfirmation={true}
      resourceName="SQL Transforms"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer=""
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updProject_field_translation_from_project_field"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlTransformQuery>
    <SqlQueryUnified
      id="insProject_field_translation"
      actionType="INSERT"
      changeset={
        '[{"key":"project_field_translationID","value":"{{uuid.v4()}}"},{"key":"languageID","value":"{{ select3.value }}"},{"key":"project_fieldID","value":"{{table_projectFields.selectedRow.project_fieldID }}"},{"key":"field_value","value":"{{textInput42.value}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_translation"
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
        pluginId="getProject_field_translation_filtered"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_addProjectFieldTranslation"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="run"
        params={{
          ordered: [{ src: "select3.resetValue()\ntextInput42.resetValue()" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insProject_field_english_no_translation"
      actionType="BULK_INSERT"
      changeset={
        '[{"key":"project_field_translationID","value":"{{uuid.v4()}}"},{"key":"languageID","value":"{{ select3.value }}"},{"key":"project_fieldID","value":"{{table_projectFields.selectedRow.project_fieldID }}"},{"key":"field_value","value":"{{textInput42.value}}"}]'
      }
      changesetIsObject={true}
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      records="{{getProject_field_translation_Delta.data.map(v => ({ ...v, project_field_translationID: uuid.v4() })) }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_translation"
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
        pluginId="getProject_field_translation3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="run"
        params={{
          ordered: [{ src: "select3.resetValue()\ntextInput42.resetValue()" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_field_cross_Languages"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/getProject_field_cross_Languages.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="delProject_field_translation"
      actionType="DELETE_BY"
      changeset={
        '[{"key":"project_field_translationID","value":"{{uuid.v4()}}"},{"key":"languageID","value":"{{ select3.value }}"},{"key":"project_fieldID","value":"{{table_projectFields.selectedRow.project_fieldID }}"},{"key":"translation","value":"{{ textInput42.value }}"},{"key":"key","value":"{{ textInput19.value }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"project_field_translationID","value":"{{ table_project_field_translations.selectedRow.project_field_translationID }}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_translation"
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
        pluginId="getProject_field_translation_filtered"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updProject_field_translation"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="project_field_translationID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      records="{{table_project_field_translations.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field_translation"
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
        pluginId="getProject_field_translation_filtered"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlTransformQuery
      id="getProject_field_translation_to_update"
      confirmationMessage="Are you sure you want to update the translations provided in field value?"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include(
        "../lib/getProject_field_translation_to_update.sql",
        "string"
      )}
      requireConfirmation={true}
      resourceName="SQL Transforms"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
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
        pluginId="updProject_field_translation_upload"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlTransformQuery>
  </Folder>
  <Folder id="project_role">
    <SqlQueryUnified
      id="getProject_roles"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_roles.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="updProject_role"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="project_roleID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      records="{{table27.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_role"
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
        pluginId="getProject_role"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delProject_role"
      actionType="DELETE_BY"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"project_roleID","value":"{{table27.selectedRow.project_roleID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_role"
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
        pluginId="getProject_role"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insProject_role"
      actionType="INSERT"
      changeset={
        '[{"key":"project_roleID","value":"{{uuid.v4()}}"},{"key":"project_role","value":"{{textInput3.value}}"},{"key":"projectID","value":"{{tableProject8.selectedRow.projectID}}"},{"key":"isActive","value":"1"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_role"
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
        pluginId="getProject_role"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_project_role"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="resetValue"
        params={{ ordered: [] }}
        pluginId="textInput3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_role"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject_role.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="language">
    <SqlQueryUnified
      id="updLanguage"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="languageID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      records="{{table30.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="language"
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
        pluginId="getLanguage"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delLanguage"
      actionType="DELETE_BY"
      changeset={
        '[{"key":"languageID","value":"{{ uuid.v4() }}"},{"key":"name","value":"{{ textInput40.value }}"},{"key":"code","value":"{{ textInput41.value }}"},{"key":"isActive","value":"true"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"languageID","value":"{{ table30.selectedRow.languageID }}","operation":"="}]'
      }
      query={include("../lib/delLanguage.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="language"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getLanguage"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="insLanguage"
      actionType="INSERT"
      changeset={
        '[{"key":"languageID","value":"{{ uuid.v4() }}"},{"key":"name","value":"{{ textInput40.value }}"},{"key":"code","value":"{{ textInput41.value }}"},{"key":"isActive","value":"1"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insLanguage.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="language"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getLanguage"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_language"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getLanguage"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getLanguage.sql", "string")}
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
  </Folder>
  <Folder id="user_project_role">
    <SqlQueryUnified
      id="insUser_project_role"
      actionType="BULK_INSERT"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      records="{{ getUser_project_role_delta.data.map(v => ({...v,user_project_roleID: uuid.v4() })) }}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="user_project_role"
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
        pluginId="getUser_project_role"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updUser_project_role"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="user_project_roleID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      records="{{table_user_permission.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="user_project_role"
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
        pluginId="getUser_project_role"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getUserCrossProjectRole"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUserCrossProjectRole.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUser_project_role_delta"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlTransformQuery
      id="getUser_project_role_delta"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_project_role_delta.sql", "string")}
      resourceName="SQL Transforms"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
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
        pluginId="insUser_project_role"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlTransformQuery>
    <SqlQueryUnified
      id="getUser_project_role"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getUser_project_role.sql", "string")}
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
  </Folder>
  <Folder id="user">
    <SqlQueryUnified
      id="getUser14"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getUser14.sql", "string")}
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
    <SqlQueryUnified
      id="updUser"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="userID"
      changeset={
        '[{"key":"email","value":"{{tableUser.selectedRow.email}}"},{"key":"firstName","value":"{{tableUser.selectedRow.firstName}}"},{"key":"lastName","value":"{{tableUser.selectedRow.lastName}}"},{"key":"isActive","value":"{{tableUser.selectedRow.isActive}}"},{"key":"clientAdmin","value":"{{tableUser.selectedRow.clientAdmin}}"},{"key":"sysAdmin","value":"{{tableUser.selectedRow.sysAdmin}}"},{"key":"languageID","value":"{{tableUser.selectedRow.languageID}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"userID","value":"{{tableUser.selectedRow.userID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      records="{{tableUser.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
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
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUser14"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "info" },
                  { description: "an error with query" },
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
    <SqlQueryUnified
      id="delUser"
      actionType="DELETE_BY"
      confirmationMessage="Are you sure you wish to delete the security reach of this user? Please note they will still have access to the Pathfinder web application.  To disable or completely remove the user please contact your Pathfinder administrator. https://docs.retool.com/org-users/guides/disable-users"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"userId","value":"{{tableUser.selectedRow.userID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      requireConfirmation={true}
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
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUser14"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <JavascriptQuery
      id="getUser_avatarUpload"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getUser_avatarUpload.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insUser2"
      actionType="INSERT"
      changeset={
        '[{"key":"userId","value":"{{uuid.v4()}}"},{"key":"email","value":"{{textInput4.value}}"},{"key":"firstName","value":"{{textInput32.value}}"},{"key":"lastName","value":"{{textInput6.value}}"},{"key":"isActive","value":"{{checkbox2.value}}"},{"key":"addedBy","value":"{{current_user.email}}"},{"key":"addedOn","value":"{{moment()}}"},{"key":"clientAdmin","value":"{{checkbox5.value}}"},{"key":"sysAdmin","value":"{{checkbox6.value}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
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
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getUser14"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="field_relationship">
    <SqlQueryUnified
      id="query74"
      actionType="DELETE_BY"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"field_relationshipID","value":"ebfae164-66ac-4d7d-aa6a-841b0175fe0e","operation":"="}]'
      }
      isMultiplayerEdited={false}
      notificationDuration={null}
      query={include("../lib/query74.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      showUpdateSetValueDynamicallyToggle={false}
      tableName="field_relationship"
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="getField_relationship8"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getField_relationship8.sql", "string")}
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
    <SqlQueryUnified
      id="updField_relationship"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="field_relationshipID"
      changeset={
        '[{"key":"field_relationshipID","value":"{{ uuid.v4() }}"},{"key":"value_from","value":"{{ select1.value }}"},{"key":"value_to","value":"{{ select2.value }}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/updField_relationship.sql", "string")}
      records="{{table_field_relationship.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="field_relationship"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getField_relationship8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getField_relationship9"
      actionType="DELETE_BY"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"value_from","value":"fa292cdd-c39a-44b0-9563-bcd81b1a0200","operation":"="},{"key":"value_to","value":"0faf6fe4-eff2-4088-8a65-f56b7a1a071b","operation":"="}]'
      }
      isMultiplayerEdited={false}
      query={include("../lib/getField_relationship9.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="field_relationship"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insField_relationship"
      actionType="INSERT"
      changeset={
        '[{"key":"field_relationshipID","value":"{{ uuid.v4() }}"},{"key":"value_from","value":"{{ select1.value }}"},{"key":"value_to","value":"{{ select2.value }}"},{"key":"transition_name","value":"{{ textInput39.value }}"},{"key":"validation_fields","value":"{{ textArea25.value }}"},{"key":"permissions","value":"{{ textArea26.value }}"},{"key":"automated_actions","value":"{{ textArea27.value }}"}]'
      }
      changesetObject="{{ form9.data }}"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/insField_relationship.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="field_relationship"
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getField_relationship8"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_fieldValueCascade2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="select2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="project_field">
    <SqlQueryUnified
      id="insProject_field"
      actionType="INSERT"
      changeset={
        '[{"key":"project_fieldID","value":"{{uuid.v4()}}"},{"key":"projectID","value":"{{table_project.selectedRow.projectID}}"},{"key":"isActive","value":"1"},{"key":"cascade","value":"1"},{"key":"project_field","value":"{{textInput33.value}}"},{"key":"data_type","value":"{{selectDataType.value}}"}]'
      }
      confirmationMessage="Are you sure you wish to add this new project field?  It's advised that translations are refreshed and updated with english field values or translated."
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"projectID","value":"{{table_project.selectedRow.projectID}}","operation":"="},{"key":"project_fieldID","value":"{{uuid.v4()}}","operation":"="},{"key":"isActive","value":"1","operation":"="},{"key":"cascade","value":"1","operation":"="},{"key":"project_field","value":"TEST","operation":"="}]'
      }
      isMultiplayerEdited={false}
      requireConfirmation={true}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field"
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
        pluginId="getProject_field"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_CROSS_project_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updProject_field"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="project_fieldID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      records="{{table_projectFields.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_field"
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
        pluginId="getProject_field"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProject_field_withCascade"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field_withCascade.sql", "string")}
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
    <SqlQueryUnified
      id="getProject_field"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProject_field.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="project">
    <SqlQueryUnified
      id="getProject15"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      query={include("../lib/getProject15.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insProject"
      actionType="INSERT"
      changeset={
        '[{"key":"projectID","value":"{{uuid.v4()}}"},{"key":"project","value":"{{textInput1.value}}"},{"key":"isActive","value":"{{numberInput1.value}}"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project"
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
        pluginId="getProject15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delProject"
      actionType="DELETE_BY"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"projectID","value":"{{tableProject8.selectedRow.projectID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project"
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
        pluginId="getProject15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="updProject"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="projectID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      records="{{tableProject8.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project"
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
        pluginId="getProject15"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
  </Folder>
  <Folder id="project_type">
    <SqlQueryUnified
      id="updProjectType"
      actionType="BULK_UPDATE_BY_KEY"
      bulkUpdatePrimaryKey="project_typeID"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      records="{{table26.changesetArray}}"
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_type"
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
        pluginId="getProjectType"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="delProject_type"
      actionType="DELETE_BY"
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      filterBy={
        '[{"key":"project_typeID","value":"{{table26.selectedRow.project_typeID}}","operation":"="}]'
      }
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_type"
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
        pluginId="getProjectType"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProjectType_withCascade"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProjectType_withCascade.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SqlQueryUnified
      id="insProject_type"
      actionType="INSERT"
      changeset={
        '[{"key":"project_typeID","value":"{{uuid.v4()}}"},{"key":"projectID","value":"{{tableProject8.selectedRow.projectID}}"},{"key":"project_type","value":"{{textInput2.value}}"},{"key":"isActive","value":"1"}]'
      }
      editorMode="gui"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      tableName="project_type"
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
        pluginId="getProjectType"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_project_type"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProject_field_CROSS_project_type"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProjectType"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getProjectType_withCascade"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SqlQueryUnified>
    <SqlQueryUnified
      id="getProjectType"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      query={include("../lib/getProjectType.sql", "string")}
      resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <JavascriptQuery
    id="avatarUploader1refreshTrigger"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/avatarUploader1refreshTrigger.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
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
      pluginId="getUser14"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <Frame
    id="$main18"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Include src="./tabbedContainer46.rsx" />
    <Modal
      id="modal_projectFieldTranslations"
      buttonText="Open Modal"
      hidden="true"
      modalHeightType="auto"
      modalWidth="60%"
    >
      <Form
        id="form31"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        marginType="normal"
        padding="12px"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle12"
            heightType="fixed"
            marginType="normal"
            value="#### '{{ table_projectFields.selectedRow.project_field }}' <br>  Translations"
            verticalAlign="center"
          />
          <Button
            id="button4"
            iconBefore="bold/interface-edit-copy"
            marginType="normal"
            text="UUID"
          >
            <Event
              event="click"
              method="copyToClipboard"
              params={{
                ordered: [
                  {
                    value:
                      "{{table_projectFields.selectedRow.project_fieldID}}",
                  },
                ],
              }}
              pluginId=""
              type="util"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Text
            id="text87"
            marginType="normal"
            value="**UUID: {{ table_projectFields.selectedRow.project_fieldID }}**"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Table
            id="table_project_field_translations"
            actionsOverflowPosition={1}
            cellSelection="none"
            clearChangesetOnSave={true}
            data="{{ getProject_field_translation_filtered.data }}"
            defaultSelectedRow={{
              mode: "index",
              indexType: "display",
              index: 0,
            }}
            emptyMessage="No rows found"
            enableSaveActions={true}
            primaryKeyColumnId="71fb1"
            showBorder={true}
            showFooter={true}
            showHeader={true}
            toolbarPosition="bottom"
          >
            <Column
              id="71fb1"
              alignment="left"
              editable={false}
              format="string"
              groupAggregationMode="none"
              hidden="true"
              key="project_field_translationID"
              label="Project field translation id"
              placeholder="Enter value"
              position="center"
              size={264.375}
              summaryAggregationMode="none"
            />
            <Column
              id="fc56a"
              alignment="left"
              format="string"
              groupAggregationMode="none"
              hidden="true"
              key="languageID"
              label="Language id"
              placeholder="Enter value"
              position="center"
              size={277.859375}
              summaryAggregationMode="none"
            />
            <Column
              id="bfd5e"
              alignment="left"
              format="string"
              groupAggregationMode="none"
              hidden="true"
              key="project_fieldID"
              label="Project field id"
              placeholder="Enter value"
              position="center"
              size={271.640625}
              summaryAggregationMode="none"
            />
            <Column
              id="71640"
              alignment="left"
              format="string"
              groupAggregationMode="none"
              key="name"
              label="Language"
              placeholder="Enter value"
              position="center"
              size={208.9375}
              summaryAggregationMode="none"
            />
            <Column
              id="7231d"
              alignment="left"
              editable="true"
              format="string"
              groupAggregationMode="none"
              key="field_value"
              label="Field value"
              placeholder="Enter value"
              position="center"
              size={100}
              summaryAggregationMode="none"
            />
            <Action
              id="e89bb"
              disabled="{{ !['malkhafaji@exelcis.com','zach+exelcis@teamrappid.com','lee+exelcis@teamrappid.com'].includes(current_user.email) }}"
              icon="bold/interface-delete-bin-2"
              label="Delete"
            >
              <Event
                event="clickAction"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="delProject_field_translation"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Action>
            <ToolbarButton
              id="1a"
              icon="bold/interface-text-formatting-filter-2"
              label="Filter"
              type="filter"
            />
            <ToolbarButton
              id="3c"
              icon="bold/interface-download-button-2"
              label="Download"
              type="custom"
            >
              <Event
                event="clickToolbar"
                method="exportData"
                pluginId="table_project_field_translations"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </ToolbarButton>
            <ToolbarButton
              id="4d"
              icon="bold/interface-arrows-round-left"
              label="Refresh"
              type="custom"
            >
              <Event
                event="clickToolbar"
                method="refresh"
                pluginId="table_project_field_translations"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </ToolbarButton>
            <Event
              event="save"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updProject_field_translation"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Table>
          <Modal
            id="modal_addProjectFieldTranslation"
            buttonText="Add Translation"
            hidden=""
            modalHeightType="auto"
          >
            <Form
              id="form32"
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
                  id="formTitle30"
                  horizontalAlign="center"
                  marginType="normal"
                  value="#### Add Translation for <br> '{{ table_projectFields.selectedRow.project_field }}'"
                  verticalAlign="center"
                />
              </Header>
              <Body>
                <Select
                  id="select3"
                  data="{{ getLanguage.data }}"
                  emptyMessage="No options"
                  label="Language"
                  labelPosition="top"
                  labels="{{ item.name }}"
                  marginType="normal"
                  overlayMaxHeight={375}
                  required={true}
                  showSelectionIndicator={true}
                  values="{{ item.languageID }}"
                />
                <TextInput
                  id="textInput42"
                  label="Translation"
                  labelPosition="top"
                  marginType="normal"
                  required={true}
                />
              </Body>
              <Footer>
                <Button
                  id="formButton13"
                  marginType="normal"
                  submit={true}
                  submitTargetId="form32"
                  text="Submit"
                />
              </Footer>
              <Event
                event="submit"
                method="trigger"
                params={{ ordered: [] }}
                pluginId="insProject_field_translation"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Form>
          </Modal>
          <Button
            id="button3"
            marginType="normal"
            style={{ ordered: [] }}
            styleVariant="outline"
            text="Close"
          >
            <Event
              event="click"
              method="close"
              params={{ ordered: [] }}
              pluginId="modal_projectFieldTranslations"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Body>
        <Footer>
          <Button
            id="formButton12"
            marginType="normal"
            submit={true}
            submitTargetId="form31"
            text="Submit"
          />
        </Footer>
      </Form>
    </Modal>
    <Modal
      id="modal_addAvatar"
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      events={[]}
      hidden="true"
      modalHeightType="auto"
    >
      <Form
        id="form8"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ tableUser.selectedRow }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle8"
            marginType="normal"
            value="#### Add / Edit Avatar"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Module
            id="avatarUploader1"
            margin="0"
            name="Avatar Uploader"
            pageUuid="24723d29-e6b7-4218-a3bc-0b5e0e559944"
            refresh="avatarUploader1refreshTrigger"
            userID="{{ tableUser.selectedRow.userID }}"
          />
        </Body>
        <Footer>
          <Button
            id="formButton8"
            marginType="normal"
            submit={true}
            submitTargetId="form8"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insUser2"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
  </Frame>
</Screen>
