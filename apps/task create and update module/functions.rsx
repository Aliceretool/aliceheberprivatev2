<GlobalFunctions>
  <Folder id="resources">
    <RESTQuery
      id="GetCurrentTask"
      isHidden={false}
      query="/task/{{task_id.value}}"
      queryDisabled="{{ !isUpdateMode.value }}"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      resourceTypeOverride=""
      showFailureToaster={false}
    />
    <RESTQuery
      id="CountOfTasksByCaseKey"
      body="{
  case_id: {{case_id.value}}
}"
      bodyType="raw"
      cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
      enableTransformer={true}
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      query="/count_by_case"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      resourceTypeOverride=""
      showFailureToaster={false}
      transformer="return {count: data.message}"
      type="POST"
    />
    <RESTQuery
      id="GetCurrentCase"
      isHidden={false}
      notificationDuration={4.5}
      query="/cases/{{case_id.value}}"
      resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
      showFailureToaster={false}
      showSuccessToaster={false}
    />
    <RESTQuery
      id="CreateTask"
      body="{{ createTask.value }}"
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      query="/tasks"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      runWhenModelUpdates={false}
      successMessage="Task has been created successfully"
      type="POST"
    >
      <Event
        event="success"
        method="setValue"
        params={{
          ordered: [{ value: "{{ DEFAULT_DELIVERABLES_VALUE.value }}" }],
        }}
        pluginId="addedDeliverables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="UpdateTask"
      body="{{ updateTask.value }}"
      bodyType="raw"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/tasks/{{ task_id.value }}"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      successMessage="Task has been updated successfully"
      type="PATCH"
    >
      <Event
        event="success"
        method="setValue"
        params={{
          ordered: [{ value: "{{ DEFAULT_DELIVERABLES_VALUE.value }}" }],
        }}
        pluginId="addedDeliverables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="GetTemplateTasks"
      isHidden={false}
      query="template_global_entity_task"
      resourceName="6b1ed70e-836d-4f38-85b6-68c90f1090ec"
      resourceTypeOverride=""
    />
    <RESTQuery
      id="GetDeliverablesByTemplateTask"
      isHidden={false}
      notificationDuration={4.5}
      query="/deliverables/template/{{form.data.templateSelect  }}"
      resourceName="fd2e3533-7a29-4b09-8b71-82dd1b1c5109"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="constants">
    <State
      id="DEFAULT_DELIVERABLES_VALUE"
      value="[
{
  id: 1,
  category_id: null,
  comment: null,
  deleting_comment: null,
  is_removed: false,
  is_finished: false
}
]"
    />
  </Folder>
  <Folder id="transformers">
    <Function
      id="categorySelectDefaultValue"
      funcBody={include("./lib/categorySelectDefaultValue.js", "string")}
    />
    <Function
      id="dateValidationAndTransform"
      funcBody={include("./lib/dateValidationAndTransform.js", "string")}
    />
    <Function
      id="statusSelectDefaultValue"
      funcBody={include("./lib/statusSelectDefaultValue.js", "string")}
    />
    <Function
      id="prioritySelectDefaultValue"
      funcBody={include("./lib/prioritySelectDefaultValue.js", "string")}
    />
    <Function
      id="taskTitleKey"
      funcBody={include("./lib/taskTitleKey.js", "string")}
    />
    <Function
      id="transformTimestampIntoDate"
      funcBody={include("./lib/transformTimestampIntoDate.js", "string")}
    />
    <Function
      id="isUpdateMode"
      funcBody={include("./lib/isUpdateMode.js", "string")}
    />
    <Function
      id="updateTask"
      funcBody={include("./lib/updateTask.js", "string")}
    />
    <Function
      id="createTask"
      funcBody={include("./lib/createTask.js", "string")}
    />
    <Function
      id="createTimestamp"
      funcBody={include("./lib/createTimestamp.js", "string")}
    />
  </Folder>
  <Folder id="selector_resources">
    <RESTQuery
      id="GetTaskPriorities"
      isHidden={false}
      query="/tasks/priorities"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
    />
    <RESTQuery
      id="GetTaskCategories"
      isHidden={false}
      notificationDuration={4.5}
      query="/tasks/categories"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GetDeliverablesCategories"
      isHidden={false}
      notificationDuration={4.5}
      query="/deliverable-categories"
      resourceName="094e89ea-45fd-422c-9ae6-83f995912864"
      resourceTypeOverride=""
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GetTaskStatuses"
      isHidden={false}
      query="/tasks/statuses"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
    />
    <RESTQuery
      id="GetAllTeams"
      isHidden={false}
      resourceName="0c99e16c-0235-4f9a-9f6f-3e81c04267fe"
    />
  </Folder>
  <Folder id="functions">
    <GlobalWidgetQuery
      id="onSubmit"
      defaultValue=""
      isHidden={false}
      resourceName="GlobalWidgetQuery"
      showFailureToaster={false}
      showSuccessToaster={false}
      value=""
    />
    <JavascriptQuery
      id="addNewDeliverable"
      isHidden={false}
      notificationDuration={4.5}
      query={include("./lib/addNewDeliverable.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="handleCreateUpdateClick"
      isHidden={false}
      notificationDuration={4.5}
      query={include("./lib/handleCreateUpdateClick.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="prefillFormBySelectedTemplate"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/prefillFormBySelectedTemplate.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="prefillDeliverablesByTemplate"
      _additionalScope={["selectedTemplate"]}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/prefillDeliverablesByTemplate.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="prefillDateByTemplate"
      _additionalScope={["date_range"]}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/prefillDateByTemplate.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="vars">
    <State id="currentTask" value="{{ GetCurrentTask.data }}" />
    <State
      id="addedDeliverables"
      value="{{DEFAULT_DELIVERABLES_VALUE.value}}"
    />
    <State
      id="deliverables"
      value="{{ currentTask.value.deliverables || [] }}"
    />
  </Folder>
</GlobalFunctions>
