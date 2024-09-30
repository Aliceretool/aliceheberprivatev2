<GlobalFunctions>
  <GraphQLQuery
    id="addNotes"
    body={include("./lib/addNotes.gql", "string")}
    graphQLVariables={
      '[{"key":"note","value":"{{ noteText.value }}"},{"key":"notableInput","value":"{{ notableInput.value }}"}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceName="bac1861c-bf9e-4819-997b-4aecaf67baf3"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      enabled="{{ _.isNull(addNotes.data.createNote.note) }}"
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                {
                  title: "{{ addNotes.data.createNote.errors?.[0]?.message }}",
                },
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
    <Event
      enabled="{{ !_.isNull(addNotes.data.createNote.note) }}"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="stepsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{ !_.isNull(addNotes.data.createNote.note) }}"
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="addNotesModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{ _.isNull(addNotes.data.data) }}"
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                { title: "{{ addNotes.data.errors[0].message }}" },
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
  </GraphQLQuery>
  <GraphQLQuery
    id="approveScreenerStep"
    body={include("./lib/approveScreenerStep.gql", "string")}
    graphQLVariables={
      '[{"key":"input","value":"{{ screenerStepInput.value }}"}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceName="bac1861c-bf9e-4819-997b-4aecaf67baf3"
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
      enabled="{{ !_.isNull(approveScreenerStep.data.approveRecruitmentStep.errors) }}"
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                {
                  title:
                    "{{ approveScreenerStep.data.approveRecruitmentStep.errors?.[0]?.message }}",
                },
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
    <Event
      enabled="{{ _.isNull(approveScreenerStep.data.approveRecruitmentStep.errors) }}"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="stepsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{ _.isNull(approveScreenerStep.data.approveRecruitmentStep.errors) }}"
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="approveModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </GraphQLQuery>
  <Function
    id="candidateFilters"
    funcBody={include("./lib/candidateFilters.js", "string")}
  />
  <State
    id="candidateRejected"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{ false }}"
  />
  <Function
    id="notableInput"
    funcBody={include("./lib/notableInput.js", "string")}
  />
  <SqlQueryUnified
    id="query5"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/query5.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="rejectCandidateCallbacks"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/rejectCandidateCallbacks.sql", "string")}
    queryDisabled="{{ !rejectCandidate1.candidateRejected }}"
    queryRefreshTime="5000"
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      enabled="{{ rejectCandidate1.candidateRejected }}"
      event="success"
      method="trigger"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { onSuccess: null },
                { onFailure: null },
                { additionalScope: null },
              ],
            },
          },
        ],
      }}
      pluginId="stepsQuery"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{ rejectCandidate1.candidateRejected }}"
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ false }}" }] }}
      pluginId="candidateRejected"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled="{{ rejectCandidate1.candidateRejected }}"
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="rejectCandidateModal"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlTransformQuery>
  <Function
    id="screenerStepInput"
    funcBody={include("./lib/screenerStepInput.js", "string")}
  />
  <GraphQLQuery
    id="stepsQuery"
    body={include("./lib/stepsQuery.gql", "string")}
    enableTransformer={true}
    graphQLVariables={
      '[{"key":"candidateFilters","value":"{{ candidateFilters.value }}"},{"key":"afterCursor","value":"{{ screenerPendingTable.pagination.afterCursor || null }}"},{"key":"statuses","value":"{{ screenerStatusSelect.value ?[screenerStatusSelect.value] : [\'IN_PROGRESS\', \'NEEDS_REVIEW\'] }}"}]'
    }
    isMultiplayerEdited={false}
    queryDisabled="{{ !enableModule.value }}"
    resourceName="bac1861c-bf9e-4819-997b-4aecaf67baf3"
    resourceTypeOverride=""
    transformer="function build_location(candidate){
  if(candidate.locationId) return candidate.location.region;
  else return candidate.address.district;
}

data.recruitmentSteps.nodes.forEach(step => {
  step.region = build_location(step.candidate)
});

return {
  pagination: data.recruitmentSteps.pageInfo,
  recruitmentSteps: data.recruitmentSteps.nodes
}
 "
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
