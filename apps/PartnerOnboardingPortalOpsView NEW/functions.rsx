<GlobalFunctions>
  <Folder id="Home">
    <GraphQLQuery
      id="GetApplicationSectionStatuses"
      body={include("./lib/GetApplicationSectionStatuses.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{ urlparams?.id }}"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      queryDisabled="{{ !urlparams?.id }}"
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
      transformer={
        '// Define a mapping from the data keys to the desired navigation keys.\n// This is done to ensure so that the data can be used directly as captions in the navigation menu items.\n\n// todo - add financials tab once implemented\nconst sectionStatusMapping = {\n  "licensesSOSFraudChecksReviewStatus": "License, SOS, Fraud Checks",\n  "principalsBgChecksAssocSearchReviewStatus": "CAF, Background Checks, Sungage Association Search",\n  "financialsReviewStatus": "Financials",\n  "commercialCreditReviewStatus":  "Commercial Credit + Online Reviews",\n  "insurancesContrCheckInstallerAgrReviewStatus": "Insurance, Contract Check + Installer Agreement",\n}\n\nconst returnedData = data.installerApplication;\nlet result = {};\n\nfor (let [key, value] of Object.entries(returnedData)) {\n  if (sectionStatusMapping[key]) {\n    result[sectionStatusMapping[key]] = _.capitalize(value);\n  }\n}\n\n// [INT-3010] additional status for Ops review\nconst provisionalScoreCardCompleted = returnedData.minimumBusinessAgeMet != null && returnedData.dateScorecardCompleted != null;\nresult["Provisional Scorecard + High Risk Designation"] = provisionalScoreCardCompleted ? "Complete" : "Outstanding";\n\nreturn [result];'
      }
      workflowActionType={null}
      workflowBlockPluginId={null}
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
                  { title: "ERROR:" },
                  {
                    description:
                      "{{GetApplicationSectionStatuses.errors?.[0]?.extensions?.statusCode + ' ' + GetApplicationSectionStatuses.errors?.[0]?.message}} while fetching application section statutes",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="GetAccountHome"
      body={include("./lib/GetAccountHome.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{ urlparams.id }}"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      queryDisabled="{{ !urlparams?.id }}"
      queryDisabledMessage="No ID value of application."
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
      transformer="data.installerApplication.currentOperatingStates.sort()
return data.installerApplication"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{ UpdateAccount.data === null }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="statesDoingBusinessInString"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ UpdateAccount.data === null }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetChannelManager"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{UpdateAccount.data === null}}"
        event="success"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["urlPrefix"]' },
            {
              value:
                "{{retoolContext.environment.includes('staging') ? window.stagingUrlPrefix : window.productionUrlPrefix }}",
            },
          ],
        }}
        pluginId="viewCreditReportState"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{GetAccountHome.data === null }}"
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{GetAccountHome.errors[0].extensions.statusCode + ' ' + GetAccountHome.errors[0].message}} while fetching Account information",
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
    </GraphQLQuery>
    <SalesforceQuery
      id="GetChannelManager"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      resourceName="a4f5d6ba-b6cf-4ce3-9dd1-c2956329a072"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      SOQLQuery={include("./lib/GetChannelManager.soql", "string")}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{ !!GetChannelManager.data?.length }}"
        event="success"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["responseId"]' },
            {
              value:
                "{{ GetChannelManager.data?.[0]?.Most_Recent_Installer_Application__r?.Experian_Business_Response__c || '' }}",
            },
          ],
        }}
        pluginId="viewCreditReportState"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </SalesforceQuery>
    <JavascriptQuery
      id="statesDoingBusinessInString"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      query={include("./lib/statesDoingBusinessInString.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <GraphQLQuery
      id="CreateApplicationProcesssor"
      body={include("./lib/CreateApplicationProcesssor.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{ urlparams.id }}"},{"key":"data","value":"{\\"applicationProcessorId\\": {{ GetCurrentUserId.data?.sungageUserId }}, \\"applicationProcessorClaimed\\": {{ moment() }} }"}]'
      }
      isHidden={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAccountHome"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{CreateApplicationProcesssor.errors?.[0]?.extensions?.statusCode + ' ' + CreateApplicationProcesssor.errors?.[0]?.message}} while setting the application processor",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="CreateApplicationReviewer"
      body={include("./lib/CreateApplicationReviewer.gql", "string")}
      graphQLVariables={
        '[{"key":"appId","value":"{{ urlparams.id }}"},{"key":"data","value":"{\\"applicationReviewerId\\": {{ GetCurrentUserId.data?.sungageUserId }}, \\"applicationReviewerClaimed\\": {{ moment() }} }"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInstallerAppScorecard"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAccountHome"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{CreateApplicationReviewer.errors[0].extensions.statusCode + ' ' + CreateApplicationReviewer.errors[0].message}} while setting the application reviewer",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="UpdateAccount"
      body={include("./lib/UpdateAccount.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{ GetAccountHome.data.account.id }}"},{"key":"data","value":"{\\"accountManagerEmail\\": {{GetChannelManager.data === null ? null : GetChannelManager.data[0]?.Sungage_Channel_Manager__r?.Email}}, \\"accountManagerName\\": {{GetChannelManager.data === null ? null : GetChannelManager.data[0]?.Sungage_Channel_Manager__r?.Name}}  }"}]'
      }
      isHidden={false}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
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
        pluginId="GetAccountHome"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetCurrentUserId"
      body={include("./lib/GetCurrentUserId.gql", "string")}
      enableTransformer={true}
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ GetCurrentUserId.error !== null }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
      transformer="return data?.currentSungageUser;"
      workflowActionType={null}
      workflowBlockPluginId={null}
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
                  { title: "ERROR:" },
                  {
                    description:
                      "{{GetCurrentUserId.errors?.[0]?.extensions?.statusCode + ' ' + GetCurrentUserId.errors?.[0]?.message}} while fetching the current user's Id",
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
    </GraphQLQuery>
    <JavascriptQuery
      id="validateApplicationDecisionUpdate"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/validateApplicationDecisionUpdate.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="LicenseSOSFraud">
    <GraphQLQuery
      id="UpdateApplicationCompany"
      body={include("./lib/UpdateApplicationCompany.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{GetLicenseSosFraud?.data?.applicationCompany.id}}"},{"key":"data","value":"{{applicationCompanyUpdates.value}}"}]'
      }
      isHidden={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled=""
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "null" }] }}
        pluginId="applicationCompanyUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Changes saved" },
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
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{UpdateApplicationCompany.errors[0].extensions.statusCode + ' ' + UpdateApplicationCompany.errors[0].message}} while updating the application company record",
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
    </GraphQLQuery>
    <State
      id="applicationCompanyUpdates"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
    />
    <State
      id="stateLicensesUpdates"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <JavascriptQuery
      id="formatStateLicenseUpdatesAsArray"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      query={include("./lib/formatStateLicenseUpdatesAsArray.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{formatStateLicenseUpdatesAsArray.data !== null && formatStateLicenseUpdatesAsArray.data.length > 0}}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateStateLicenses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <GraphQLQuery
      id="UpdateStateLicenses"
      body={include("./lib/UpdateStateLicenses.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{formatStateLicenseUpdatesAsArray.data}}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""},{"condition":"","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{}" }] }}
        pluginId="stateLicensesUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetStateLicenses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetLicenseSosFraud"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Changes saved" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetApplicationSectionStatuses"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{UpdateStateLicenses.data.statusCode + ' ' + UpdateStateLicenses.data.error}} while updating State Licenses",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="GetLicenseSosFraud"
      body={include("./lib/GetLicenseSosFraud.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{urlparams.id}}"}]'}
      isHidden={false}
      queryDisabled="{{ !urlparams.id }}"
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="return data.installerApplication"
      workflowActionType={null}
      workflowBlockPluginId={null}
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
                  { title: "ERROR:" },
                  {
                    description:
                      "{{GetLicenseSosFraud?.errors?.[0]?.extensions?.statusCode + ' ' + GetLicenseSosFraud?.errors?.[0]?.message}} while fetching SOS + fraud fields",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="CreateStateLicenses"
      body={include("./lib/CreateStateLicenses.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{formatStateLicenseListAsArray.data}}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{}" }] }}
        pluginId="newStateLicenseList"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetStateLicenses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <JavascriptQuery
      id="newStateLicenseRecords"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      query={include("./lib/newStateLicenseRecords.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{Object.keys(newStateLicenseList.value).length > 0}}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatStateLicenseListAsArray"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <State
      id="newStateLicenseList"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <JavascriptQuery
      id="formatStateLicenseListAsArray"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/formatStateLicenseListAsArray.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CreateStateLicenses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <GraphQLQuery
      id="GetStateLicenses"
      body={include("./lib/GetStateLicenses.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"installerApplicationId","value":"{{ urlparams.id }}"},{"key":"usedFor","value":"\'Onboarding\'"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="return data.stateLicenses.sort((a, b) => a.state.localeCompare(b.state));"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetStateLicenseConfig"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{GetStateLicenses.errors[0].extensions.statusCode + ' ' + GetStateLicenses.errors[0].message}} while fetching state licenses",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="GetStateLicenseConfig"
      body={include("./lib/GetStateLicenseConfig.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"states","value":"{{ GetAccountHome.data.currentOperatingStates}}"}]'
      }
      isHidden={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="return data.configStateLicenses"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatStateLicenses"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{GetStateLicenses.errors[0].extensions.statusCode + ' ' + GetStateLicenses.errors[0].message}} while fetching state licenses",
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
    </GraphQLQuery>
    <JavascriptQuery
      id="formatStateLicenses"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/formatStateLicenses.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{CreateStateLicenses.data === null }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="newStateLicenseRecords"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
  </Folder>
  <Folder id="CAFBackgroundChecks">
    <GraphQLQuery
      id="UpdateCreditAuthorizationForm"
      body={include("./lib/UpdateCreditAuthorizationForm.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{ formatKickBackInvalidationsAsArray.data }}"}]'
      }
      headers="[]"
      isHidden={false}
      isMultiplayerEdited={false}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled=""
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateApplicationSectionStatus"
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
                  { notificationType: "error" },
                  { title: "ERROR: " },
                  {
                    description:
                      "{{UpdateCreditAuthorizationForm.errors[0].extensions.statusCode + ' ' + UpdateCreditAuthorizationForm.errors[0].message}} while updating the credit authorization form",
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
    </GraphQLQuery>
    <State
      id="viewCreditReportState"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <GraphQLQuery
      id="GetInstallerAppCaf"
      body={include("./lib/GetInstallerAppCaf.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{urlparams.id}}"}]'}
      isHidden={false}
      queryDisabled="{{ !urlparams?.id }}"
      queryDisabledMessage="No ID value of application."
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="return data.installerApplication"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="failure"
        method="showNotification"
        params={{
          map: {
            options: {
              notificationType: "error",
              title: "ERROR:",
              description:
                "{{GetInstallerAppCaf?.errors?.[0]?.extensions?.statusCode + ' ' + GetInstallerAppCaf?.errors?.[0]?.message}} while fetching installer app caf fields",
            },
          },
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="GetInstallerAppUsers"
      _additionalScope={[]}
      body={include("./lib/GetInstallerAppUsers.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{ urlparams.id }}"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      queryDisabled="{{ !urlparams?.id }}"
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
      transformer="data.installerApplicationUsers = data?.installerApplicationUsers;

data.principalList = data?.installerApplicationUsers?.filter(user => user.isPrincipal);

return data;"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{ !GetInstallerAppUsers.data 
    ? false 
    : GetInstallerAppUsers.data?.principalList?.some(principal => principal.personalCreditChecks?.length === 0) || CreatePersonalCreditCheck.data === null
}}
"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatNewPersonalCreditCheckAsArray"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ createAuthorizedCreditReportList.data === null }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createAuthorizedCreditReportList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatKeyPersonnelList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="calculateWeightedFICO"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ GetInstallerAppUsers.data?.principalList?.every(principal => {
      return principal?.personalCreditChecks?.[0]?.ficoScore !== '' && principal?.personalCreditChecks?.[0]?.ficoScore !== null;
    }) 
}}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="calculateLowestFICO"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ GetInstallerAppUsers.data?.principalList?.every(principal => {
      return principal?.personalCreditChecks?.[0]?.bankruptcyPlusScore !== '' && principal?.personalCreditChecks?.[0]?.bankruptcyPlusScore !== null;
    }) 
}}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="calculateHighestBKPlusScore"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{GetInstallerAppUsers.errors[0].extensions.statusCode + ' ' + GetInstallerAppUsers.errors[0].message}} while fetching owners and key personnel",
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
    </GraphQLQuery>
    <JavascriptQuery
      id="formatCafBackgroundUpdatesAsArray"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/formatCafBackgroundUpdatesAsArray.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{ formatCafBackgroundUpdatesAsArray.data !== null && formatCafBackgroundUpdatesAsArray.data.length > 0}}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateInsallerAppUsers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <State
      id="cafBackgroundUpdates"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <GraphQLQuery
      id="UpdateInsallerAppUsers"
      body={include("./lib/UpdateInsallerAppUsers.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{ formatCafBackgroundUpdatesAsArray.data }}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{}" }] }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInstallerAppUsers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Changes saved" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetApplicationSectionStatuses"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{UpdateInsallerAppUsers.errors[0].extensions.statusCode + ' ' + UpdateInsallerAppUsers.errors[0].message}} while updating installer application users",
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
    </GraphQLQuery>
    <JavascriptQuery
      id="createAuthorizedCreditReportList"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      query={include("./lib/createAuthorizedCreditReportList.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SalesforceQuery
      id="GetAuthorizedCreditReports"
      apexBody={
        '{\n  "installerApplicationExternalId": {{GetAccountHome.data?.externalId}},\n  "installerAuthorization": {{ createAuthorizedCreditReportList?.data }}\n}'
      }
      apexMethod="post"
      apexPath="/UtilApi/v01/getAuthorizedCreditReports"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{data === null ? false : data.status === \\"error\\"}}","message":"{{data === null ? false : data.msg}}"}]'
      }
      queryType="apex"
      resourceName="a4f5d6ba-b6cf-4ce3-9dd1-c2956329a072"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="viewReportsButton"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ GetAuthorizedCreditReports.data != null }}"
        event="success"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["responseId"]' },
            {
              value:
                '{{ GetAuthorizedCreditReports.data?.msg?.slice(-19, -1) || "" }}',
            },
          ],
        }}
        pluginId="viewCreditReportState"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="formatPersonalCreditCheckUpdatesAsArray"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SalesforceQuery>
    <JavascriptQuery
      id="formatKeyPersonnelList"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/formatKeyPersonnelList.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
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
        pluginId="checkDuplicateKP"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <State
      id="keyPersonnelTitles"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="['President / CEO','CFO / Accounting', 'Chief Operations Officer','Sales Manager', 'Operations Manager']"
    />
    <JavascriptQuery
      id="checkDuplicateKP"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/checkDuplicateKP.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <GraphQLQuery
      id="SendEmailToRequestor"
      body={include("./lib/SendEmailToRequestor.gql", "string")}
      graphQLVariables={
        '[{"key":"installerApplicationUserId","value":"{{ GetAccountHome.data?.requestor?.id }}"},{"key":"emailType","value":"APPLICATION_SENT"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ SendEmailToRequestor.error || SendEmailToRequestor.data?.sendEmail === false || errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{ SendEmailToRequestor.data.sendInstallerApplicationUserEmail == true}}"
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Email was sent successfully!!" },
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
        enabled="{{ SendEmailToRequestor.data.sendInstallerApplicationUserEmail == false}}"
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "Error" },
                  {
                    description:
                      "Email not sent: The requestor listed is tied to a different application company than this one",
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
        enabled="{{ !SendEmailToRequestor.data?.sendEmail }}"
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  { description: "Email could not be sent! Please try again" },
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
      id="SendSignUpEmail"
      body={include("./lib/SendSignUpEmail.gql", "string")}
      graphQLVariables={
        '[{"key":"installerApplicationUserId","value":"{{ GetInstallerAppUsers.data.principalList?.[i]?.id }}"},{"key":"emailType","value":"SIGN_UP_PRINCIPAL_USER"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ SendSignUpEmail.error || SendSignUpEmail.data?.sendEmail === false || errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled=""
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Email was sent successfully!!" },
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
        enabled=""
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  { description: "Email could not be sent! Please try again" },
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
      id="SendReminderEmail"
      body={include("./lib/SendReminderEmail.gql", "string")}
      graphQLVariables={
        '[{"key":"name","value":"{{ GetInstallerAppUsers.data?.principalList[i]?.fullName }}"},{"key":"accountName","value":"{{ GetAccountHome.data?.account?.name }}"},{"key":"email","value":"{{ GetInstallerAppUsers.data?.principalList[i]?.authUser?.email }}"},{"key":"portalKey","value":"{{ GetAccountHome.data?.portalKey }}"},{"key":"cafId","value":"{{ GetInstallerAppUsers.data?.principalList[i]?.creditAuthorizationForms[0]?.id }}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ SendReminderEmail.errors && SendReminderEmail.errors.length > 0 || SendReminderEmail.data?.sendReminderEmail === null || errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled=""
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  {
                    description:
                      "A reminder email was successfully sent to\n{{ SendReminderEmail.data?.sendReminderEmail?.owner?.email }}",
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
        enabled=""
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "Reminder email could not be sent! Please try again",
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
    </GraphQLQuery>
    <State id="recheckReviewUpdates" value="{}" />
    <GraphQLQuery
      id="GetRecheckReviews"
      body={include("./lib/GetRecheckReviews.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{ urlparams?.id }}"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={null}
      queryDisabled="{{ !urlparams?.id }}"
      queryDisabledMessage="No ID value of application from URL found. Please close and reopen the Ops view application for this account."
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data.recheckReviews;"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <GraphQLQuery
      id="CreateRecheckReview"
      body={include("./lib/CreateRecheckReview.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{ { ...recheckReviewUpdates.value, \\"installerApplicationId\\": urlparams?.id } }}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={null}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
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
        pluginId="GetRecheckReviews"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetApplicationSectionStatuses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { description: "Changes saved" },
                  { title: "Success!" },
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
      id="UpdateRecheckReview"
      body={include("./lib/UpdateRecheckReview.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"id","value":"{{ GetRecheckReviews.data && GetRecheckReviews.data[0]?.id }}"},{"key":"data","value":"{{ recheckReviewUpdates.value }}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
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
        pluginId="GetRecheckReviews"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetApplicationSectionStatuses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { description: "Changes saved" },
                  { title: "Success!" },
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
  </Folder>
  <Folder id="PersonalCreditCheck">
    <GraphQLQuery
      id="UpdatePersonalCreditChecks"
      body={include("./lib/UpdatePersonalCreditChecks.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{formatPersonalCreditCheckUpdatesAsArray.data}}"}]'
      }
      isHidden={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInstallerAppUsers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{}" }] }}
        pluginId="personalCreditCheckUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Changes saved" },
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
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  {
                    description:
                      "{{UpdatePersonalCreditChecks.errors[0].extensions.statusCode + ' ' + UpdatePersonalCreditChecks.errors[0].message}} while updating the personal credit check records",
                  },
                  { title: "ERROR:" },
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
    <State
      id="personalCreditCheckUpdates"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <JavascriptQuery
      id="formatPersonalCreditCheckUpdatesAsArray"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include(
        "./lib/formatPersonalCreditCheckUpdatesAsArray.js",
        "string"
      )}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled=""
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdatePersonalCreditChecks"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <GraphQLQuery
      id="CreatePersonalCreditCheck"
      body={include("./lib/CreatePersonalCreditCheck.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{formatNewPersonalCreditCheckAsArray.data}}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled=""
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInstallerAppUsers"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{CreatePersonalCreditCheck.errors[0].extensions.statusCode + ' ' + CreatePersonalCreditCheck.errors[0].message}} while creating the personal credit check records",
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
    </GraphQLQuery>
    <State
      id="newPersonalCreditCheckModelsNeeded"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <JavascriptQuery
      id="formatNewPersonalCreditCheckAsArray"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/formatNewPersonalCreditCheckAsArray.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{ formatNewPersonalCreditCheckAsArray?.data?.length > 0 }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CreatePersonalCreditCheck"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
  </Folder>
  <Folder id="FinancialsCheck">
    <State
      id="financialsUpdates"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <GraphQLQuery
      id="GetFinancialStatements"
      body={include("./lib/GetFinancialStatements.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{ urlparams?.id }}"}]'}
      headers="[]"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={null}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="return data.financialStatements;"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAttachments"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
    <GraphQLQuery
      id="UpdateFinancialStatement"
      body={include("./lib/UpdateFinancialStatement.gql", "string")}
      enableTransformer={true}
      graphQLVariables={
        '[{"key":"id","value":"{{ GetFinancialStatements.data?.filter((statement) => statement.statementType === \'Bank_Statement\' && !statement.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt))[0]?.id }}"},{"key":"data","value":"{{ financialsUpdates.value }}"}]'
      }
      headers="[]"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={null}
      queryDisabled="{{ !(GetFinancialStatements.data?.filter((statement) => statement.statementType === 'Bank_Statement' && !statement.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt))[0]?.id) }}"
      queryDisabledMessage="The request can't be sent; missing ID value of Installer Application"
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
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
        pluginId="GetFinancialStatements"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetApplicationSectionStatuses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Changes saved" },
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
      id="UpdateFinancialStatements"
      body={include("./lib/UpdateFinancialStatements.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{ formatKickBackInvalidationsAsArray.data }}"}]'
      }
      headers="[]"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={null}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{ attachmentsToInvalidateFromInsurance !== null && attachmentsToInvalidateFromInsurance.value !== null ? true : false }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateKickbackRelatedAttachmentsForInsurances"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="InsuranceContractCheck">
    <JavascriptQuery
      id="formatInsuranceUpdatesAsArray"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      query={include("./lib/formatInsuranceUpdatesAsArray.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{formatInsuranceUpdatesAsArray.data !== null && formatInsuranceUpdatesAsArray.data.length > 0}}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateInsurances"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <State
      id="insuranceUpdates"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <GraphQLQuery
      id="UpdateInsurances"
      body={include("./lib/UpdateInsurances.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{ kickBackSection.value === \\"insurances\\" ? formatKickBackInvalidationsAsArray.data : formatInsuranceUpdatesAsArray.data}}"}]'
      }
      isHidden={false}
      queryDisabled={
        '{{ (kickBackSection.value === "insurances" && !formatKickBackInvalidationsAsArray.data) || (kickBackSection.value !== "insurances" && !formatInsuranceUpdatesAsArray.data)}}'
      }
      queryDisabledMessage="cannot run UpdateInsurance mutation without InsurancesUpdateInput data"
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{}" }] }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Changes saved" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInsurances"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{ kickBackSection.value === "insurances" }}'}
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateApplicationSectionStatus"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{UpdateInsurances.data.statusCode + ' ' + UpdateInsurances.data.error}} while updating insurance information",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="GetInsurances"
      body={include("./lib/GetInsurances.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{ urlparams.id }}"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="const { installerApplication } = data;
data.installerApplication.insuranceAttachments = []


if(installerApplication.agreement !== null){
  const { signingDocument } = installerApplication.agreement;
  installerApplication.insuranceAttachments[0] = 
  {
      'type': signingDocument?.documentType,
      'createdAt': signingDocument?.createdAt, 
      'createdBy': signingDocument?.createdBy,
      'file': signingDocument?.documentPdf?.file,
      'id': signingDocument?.id,
      'updatedAt': signingDocument?.updatedAt,
      'updatedBy': signingDocument?.updatedBy,
  }
}

data.installerApplication.insurances.map((insurance) => {
  const { signingDocument } = insurance;
  if(signingDocument !== null){    
    installerApplication.insuranceAttachments[installerApplication.insuranceAttachments.length] = {
      'type': signingDocument?.documentType,
      'createdAt': signingDocument?.createdAt, 
      'createdBy': signingDocument?.createdBy,
      'file': signingDocument?.documentPdf?.file,
      'id': signingDocument?.id,
      'updatedAt': signingDocument?.updatedAt,
      'updatedBy': signingDocument?.updatedBy,
    }
  }
})

return data.installerApplication"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAttachments"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: "const getInsurancesData = self.data?.insurances;\nconst insurancesIds =  getInsurancesData.reduce((next, data) => {\n  if (!data?.invalidatedAt) {\n    return {...next, [data.insuranceType]: data.id}; \n  }\n}, {})\nkickBackAttachmentIds.setValue({...kickBackAttachmentIds.value, ...insurancesIds});",
            },
          ],
        }}
        pluginId=""
        type="script"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{GetInsurances.errors[0].extensions.statusCode + ' ' + GetInsurances.errors[0].message}} while fetching insurance information",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="UpdateInstallerAgreement"
      body={include("./lib/UpdateInstallerAgreement.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{ GetAccountHome.data.agreement?.id }}"},{"key":"data","value":"{ \\"invalidatedAt\\": {{ moment().format() }} } "}]'
      }
      headers="[]"
      isHidden={false}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
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
        pluginId="UpdateApplicationSectionStatus"
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
                  { notificationType: "error" },
                  { title: "ERROR: " },
                  {
                    description:
                      "{{UpdateInstallerAgreement.errors[0].extensions.statusCode + ' ' + UpdateInstallerAgreement.errors[0].message}} while updating the installer agreement",
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
        event="failure"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="onCancel"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </GraphQLQuery>
  </Folder>
  <Folder id="ProvisionalScorecard">
    <GraphQLQuery
      id="UpdateTotalProvisionalScore"
      body={include("./lib/UpdateTotalProvisionalScore.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{urlparams.id}}"},{"key":"data","value":"{ \\"totalProvisionalScore\\": {{totalProvisionalScore.data}} }"}]'
      }
      isHidden={false}
      queryDisabled="{{ isLendingPartnerVettingUser.value === true }}"
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
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
        pluginId="GetInstallerAppScorecard"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{UpdateInstallerApplication.errors[0].extensions.statusCode + ' ' + UpdateInstallerApplication.errors[0].message}} while updating the installer application",
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
    </GraphQLQuery>
    <JavascriptQuery
      id="calculateWeightedFICO"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/calculateWeightedFICO.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <GraphQLQuery
      id="GetInstallerAppScorecard"
      body={include("./lib/GetInstallerAppScorecard.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{urlparams.id}}"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      queryDisabled="{{ !urlparams?.id }}"
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
      transformer="return data.installerApplication"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="false"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="totalProvisionalScore"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{GetInstallerAppScorecard.errors[0].extensions.statusCode + ' ' + GetInstallerAppScorecard.errors[0].message}} while fetching the installer application scorecard fields",
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
    </GraphQLQuery>
    <JavascriptQuery
      id="totalProvisionalScore"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/totalProvisionalScore.js", "string")}
      resourceName="JavascriptQuery"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{ (scorecardScore.labelCaption !== 'scorecard not complete' && scorecardScore.labelCaption !== 'save to complete scorecard') && (GetInstallerAppScorecard.data.totalProvisionalScore !== null && totalProvisionalScore.data !== null && GetInstallerAppScorecard.data.totalProvisionalScore !== totalProvisionalScore.data) || (GetInstallerAppScorecard.data?.totalProvisionalScore === null && totalProvisionalScore.data !== null) }}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateTotalProvisionalScore"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <JavascriptQuery
      id="calculateLowestFICO"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      query={include("./lib/calculateLowestFICO.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="calculateHighestBKPlusScore"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      query={include("./lib/calculateHighestBKPlusScore.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="Attachments">
    <RESTQuery
      id="CreateAttachmentFileUpload"
      body={
        '[{"key":"operations","value":"{{createOperationsBody.data}}"},{"key":"map","value":"{\\"file1\\":[\\"variables.data.file\\"]}"},{"key":"file1","value":"{{ createAttachmentVariables.value === undefined ? null : {...createAttachmentVariables.value.component, \\"data\\": createAttachmentVariables.value.fileUpload } }}","operation":"binary"}]'
      }
      bodyType="form-data"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={
        '[{"key":"","value":""},{"key":"","value":""},{"key":"","value":""}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{data.errors !== null && data.errors.length > 0 }}","message":""}]'
      }
      resourceName="4ecc9687-06f2-4c46-b480-a368eadc9f06"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      type="POST"
      version={1}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{}" }] }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "File Uploaded" },
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
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="fileTypeAllSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="fileTypePersonalCreditSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInsurances"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{CreateAttachmentFileUpload.errors[0].extensions.statusCode + ' ' + CreateAttachmentFileUpload.errors[0].message}} while uploading file",
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
    </RESTQuery>
    <JavascriptQuery
      id="compileAttachmentTableList"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/compileAttachmentTableList.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="createOperationsBody"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/createOperationsBody.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled=""
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CreateAttachmentFileUpload"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <State
      id="createAttachmentVariables"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <GraphQLQuery
      id="DeleteAttachment"
      body={include("./lib/DeleteAttachment.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{ attachmentsTable?.selectedRow?.id }}"}]'
      }
      isHidden={false}
      queryFailureConditions={'[{"condition":"","message":""}]'}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInsurances"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Attachment deleted" },
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
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{DeleteAttachment.errors[0].extensions.statusCode + ' ' + DeleteAttachment.errors[0].message}} while deleting attachment",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="GetAttachments"
      body={include("./lib/GetAttachments.gql", "string")}
      enableTransformer={true}
      graphQLVariables={'[{"key":"id","value":"{{ urlparams.id }}"}]'}
      headers="[]"
      isHidden={false}
      isMultiplayerEdited={false}
      queryDisabled="{{ !urlparams?.id }}"
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      runWhenPageLoads={true}
      showSuccessToaster={false}
      transformer="let attachmentsArr = data.attachments;
// helper function to process attachments for each section in attachmentsArr
const processAndAddAttachments = (section) => {
  section.map(item => {
    if (item.attachments && item.attachments?.length) {
      item.attachments.map(attachment => {
        // for financial statements, update the attachment type if necessary.
        if (item?.statementType) {
          attachment.type = item.statementType;
        }
        attachmentsArr.push(attachment);
      });
    }
  });
}

processAndAddAttachments(data.stateLicenses);
processAndAddAttachments(data.installerApplicationUsers);
processAndAddAttachments(data.personalCreditChecks);
processAndAddAttachments(data.financialStatements);

return attachmentsArr;"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="{{GetInsurances.data !== null}}"
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="compileAttachmentTableList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateKickBackAttachmentIds"
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
                  { notificationType: "error" },
                  {
                    description:
                      "{{GetAttachments.errors[0].extensions.statusCode + ' ' + GetAttachments.errors[0].message}} while fetching attachments",
                  },
                  { title: "ERROR:" },
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
    <JavascriptQuery
      id="updateKickBackAttachmentIds"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/updateKickBackAttachmentIds.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="Decisioning_CreateContacts">
    <JavascriptQuery
      id="newApprovedContactList"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/newApprovedContactList.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled=""
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="CreateContactsForApprovedApp"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </JavascriptQuery>
    <SalesforceQuery
      id="CreateContactsForApprovedApp"
      apexBody={
        '{\n  "installerApplicationUsers": {{newApprovedContactList.data}},\n  "accountExternalId": {{GetAccountHome.data?.account?.externalId}}\n}'
      }
      apexMethod="post"
      apexPath="/UtilApi/v01/createContactsForApprovedPopApp"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      queryFailureConditions={
        '[{"condition":"{{data.status === \'error\' || data.error === true}}","message":""}]'
      }
      queryType="apex"
      resourceName="a4f5d6ba-b6cf-4ce3-9dd1-c2956329a072"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
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
                  { title: "ERROR!" },
                  {
                    description:
                      '{{ CreateContactsForApprovedApp.data?.message?.split("\\"")[7] }}',
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
        event="failure"
        method="hide"
        params={{ ordered: [] }}
        pluginId="contactCreationModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </SalesforceQuery>
  </Folder>
  <Folder id="Navigation">
    <State
      id="navigationMenuItems"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '["Home", "License, SOS, Fraud Checks", "CAF, Background Checks, Sungage Association Search", "Financials", "Commercial Credit + Online Reviews", "Insurance, Contract Check + Installer Agreement", "Provisional Scorecard + High Risk Designation", "Reviewing + Decisioning", "Attachments"]'
      }
    />
    <JavascriptQuery
      id="resetStates"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/resetStates.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="handleNavigation"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/handleNavigation.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <State
      id="nextTabSelection"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="null"
    />
    <JavascriptQuery
      id="onSave"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/onSave.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      successMessage="Save Changes"
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="onCancel"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/onCancel.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="closeKickBackModals"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      notificationDuration={null}
      query={include("./lib/closeKickBackModals.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="Kickback">
    <GraphQLQuery
      id="UpdateKickbackAttachments"
      body={include("./lib/UpdateKickbackAttachments.gql", "string")}
      graphQLVariables={
        '[{"key":"data","value":"{{formatKickBackInvalidationsAsArray.data}}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""},{"condition":"","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateApplicationSectionStatus"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{UpdateKickbackAttachments.errors[0].extensions.statusCode + ' ' + UpdateKickbackAttachments.errors[0].message}} while updating State Licenses",
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
    </GraphQLQuery>
    <State
      id="kickBackAttachmentIds"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <State
      id="applicationSectionStatusUpdates"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="{}"
    />
    <GraphQLQuery
      id="UpdateApplicationSectionStatus"
      body={include("./lib/UpdateApplicationSectionStatus.gql", "string")}
      graphQLVariables={
        '[{"key":"id","value":"{{ GetAccountHome?.data?.applicationSectionStatus?.id }}"},{"key":"data","value":"{{ applicationSectionStatusUpdates?.value }}"}]'
      }
      headers="[]"
      isHidden={false}
      isMultiplayerEdited={false}
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
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
        pluginId="GetAccountHome"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ opsViewTabbedContainer.currentViewKey === "Insurance, Contract Check + Installer Agreement" }}'
        }
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInsurances"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Changes saved" },
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
        enabled={
          '{{ opsViewTabbedContainer.currentViewKey === "Insurance, Contract Check + Installer Agreement" }}'
        }
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="installerAgreementKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ opsViewTabbedContainer.currentViewKey === \n"License, SOS, Fraud Checks" }}'
        }
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetStateLicenses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ opsViewTabbedContainer.currentViewKey === \n"License, SOS, Fraud Checks" }}'
        }
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetLicenseSosFraud"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ opsViewTabbedContainer.currentViewKey === \n"Insurance, Contract Check + Installer Agreement" }}'
        }
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="companyInfoKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ opsViewTabbedContainer.currentViewKey === \n"License, SOS, Fraud Checks" }}'
        }
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="statesAndLicensesKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ opsViewTabbedContainer.currentViewKey === \n"Insurance, Contract Check + Installer Agreement" }}'
        }
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="insuranceVerificationKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ opsViewTabbedContainer.currentViewKey === "CAF, Background Checks, Sungage Association Search" }}'
        }
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetInstallerAppUsers"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ opsViewTabbedContainer.currentViewKey === "CAF, Background Checks, Sungage Association Search" }}'
        }
        event="success"
        method="run"
        params={{
          ordered: [
            {
              src: 'const principalsKickBackSelection = principalsKickBackSelectionRadioGroup.value;\nconst KICK_BACK_OWNERSHIP = "kickBackOwnership";\n\nif (KICK_BACK_OWNERSHIP === principalsKickBackSelection) {\n  FullPrincipalsKickBack.trigger({\n    onSuccess: () => {\n      principalsKickBackModal.hide();     \n    }\n  })\n} else {\n  principalsKickBackModal.hide();\n}',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetApplicationSectionStatuses"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{ opsViewTabbedContainer.currentViewKey === "Financials" }}'}
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetFinancialStatements"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{ opsViewTabbedContainer.currentViewKey === "Financials" }}'}
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="financialsKickBackModal"
        type="widget"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{UpdateApplicationSectionStatus.errors[0].extensions.statusCode + ' ' + UpdateApplicationSectionStatus.errors[0].message}} while updating the application section status",
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
    </GraphQLQuery>
    <State
      id="kickBackSection"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="null"
    />
    <JavascriptQuery
      id="formatKickBackInvalidationsAsArray"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include("./lib/formatKickBackInvalidationsAsArray.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled={
          '{{ kickBackSection.value !== "insurances" && kickBackSection.value !== "principals" && kickBackSection.value !== "financials" }}'
        }
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateKickbackAttachments"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{ kickBackSection.value === "insurances" }}'}
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateInsurances"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{ kickBackSection.value === "principals" }}'}
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateCreditAuthorizationForm"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={
          '{{ attachmentsToInvalidateFromInsurance !== null && attachmentsToInvalidateFromInsurance.value !== null && kickBackSection.value !== "financials" ? true : false }}'
        }
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateKickbackRelatedAttachmentsForInsurances"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled={'{{ kickBackSection.value === "financials" }} '}
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateFinancialStatements"
        type="datasource"
        waitMs=""
        waitType="debounce"
      />
    </JavascriptQuery>
    <GraphQLQuery
      id="FullPrincipalsKickBack"
      body={include("./lib/FullPrincipalsKickBack.gql", "string")}
      graphQLVariables={
        '[{"key":"portalKey","value":"{{ GetAccountHome.data.portalKey }}"}]'
      }
      isHidden={false}
      isMultiplayerEdited={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""},{"condition":"","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
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
                  { title: "ERROR:" },
                  {
                    description:
                      "{{FullPrincipalsKickBack?.errors?.[0]?.extensions?.statusCode + ' ' + FullPrincipalsKickBack.errors?.[0]?.message}} while kicking back principals section",
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
    </GraphQLQuery>
    <GraphQLQuery
      id="UpdateKickbackRelatedAttachmentsForInsurances"
      body={include(
        "./lib/UpdateKickbackRelatedAttachmentsForInsurances.gql",
        "string"
      )}
      graphQLVariables={
        '[{"key":"data","value":"{{ attachmentsToInvalidateFromInsurance.value }}"}]'
      }
      isHidden={false}
      queryFailureConditions={
        '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""},{"condition":"","message":""}]'
      }
      resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UpdateApplicationSectionStatus"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "null" }] }}
        pluginId="attachmentsToInvalidateFromInsurance"
        type="state"
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
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "{{UpdateKickbackAttachments.errors[0].extensions.statusCode + ' ' + UpdateKickbackAttachments.errors[0].message}} while updating State Licenses",
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
    </GraphQLQuery>
    <State
      id="attachmentsToInvalidateFromInsurance"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
    />
    <JavascriptQuery
      id="formatKickBackInvalidationsAsArrayTest"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include(
        "./lib/formatKickBackInvalidationsAsArrayTest.js",
        "string"
      )}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="formatKickBackInvalidationsAsArray2Test"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      query={include(
        "./lib/formatKickBackInvalidationsAsArray2Test.js",
        "string"
      )}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      updateSetValueDynamically={true}
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="Messaging">
    <SalesforceQuery
      id="GetSFInstallerApplication"
      enableTransformer={true}
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      resourceName="a4f5d6ba-b6cf-4ce3-9dd1-c2956329a072"
      resourceTypeOverride=""
      showSuccessToaster={false}
      SOQLQuery={include("./lib/GetSFInstallerApplication.soql", "string")}
      SOQLQueryAutoFlatten={true}
      transformer="return data[0];"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <SalesforceQuery
      id="UpdateInstallerApplicationVettingNotes"
      crudAction="update"
      crudResouceID=""
      crudResourceBody={
        '{ "Id": {{GetSFInstallerApplication.data?.Id }}, "Internal_Vetting_Notes__c": {{internalVettingNotesTextArea.value}}  }'
      }
      crudResourceType="Installer_Application__c"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isHidden={false}
      isMultiplayerEdited={false}
      queryType="crud"
      resourceName="a4f5d6ba-b6cf-4ce3-9dd1-c2956329a072"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showFailureToaster={false}
      showSuccessToaster={false}
      SOQLQueryAutoFlatten={true}
      transformer="return data[0];"
      workflowActionType={null}
      workflowBlockPluginId={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        enabled="false"
        event="success"
        method="resetValue"
        params={{ ordered: [] }}
        pluginId="internalVettingNotesTextArea"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
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
        pluginId="GetSFInstallerApplication"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "Success!" },
                  { description: "Notes have been saved successfully." },
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
        event="failure"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  {
                    description:
                      "{{ UpdateInstallerApplicationVettingNotes.data?.message || UpdateInstallerApplication?.error }}",
                  },
                  { title: "ERROR!" },
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
    </SalesforceQuery>
  </Folder>
  <State
    id="installerApplicationUpdates"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value=""
  />
  <GraphQLQuery
    id="UpdateInstallerApplication"
    body={include("./lib/UpdateInstallerApplication.gql", "string")}
    graphQLVariables={
      '[{"key":"id","value":"{{urlparams.id}}"},{"key":"data","value":"{{installerApplicationUpdates.value }}"}]'
    }
    isHidden={false}
    isMultiplayerEdited={true}
    queryFailureConditions={
      '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
    }
    resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      enabled=""
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Success!" },
                { description: "Changes saved" },
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
      pluginId="GetApplicationSectionStatuses"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="GetInsurances"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="GetInstallerAppCaf"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="GetLicenseSosFraud"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="GetInstallerAppCommCredit"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="GetAccountHome"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="GetInstallerAppScorecard"
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
                { notificationType: "error" },
                { title: "ERROR:" },
                {
                  description:
                    "{{UpdateInstallerApplication.errors?.[0]?.extensions?.statusCode + ' ' + UpdateInstallerApplication.errors?.[0]?.message}} while updating the installer application",
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
  </GraphQLQuery>
  <GraphQLQuery
    id="GetInstallerAppCommCredit"
    body={include("./lib/GetInstallerAppCommCredit.gql", "string")}
    enableTransformer={true}
    graphQLVariables={'[{"key":"id","value":"{{urlparams.id}}"}]'}
    isHidden={false}
    queryFailureConditions={
      '[{"condition":"{{ errors !== undefined && errors !== null && errors.length > 0 }}","message":""}]'
    }
    resourceName="64f59f78-e0a2-4d66-a4e7-8df4bcc1ace4"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="return data.installerApplication"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      enabled="{{ GetInstallerAppScorecard.data !== null }}"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="totalProvisionalScore"
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
                { notificationType: "error" },
                { title: "ERROR:" },
                {
                  description:
                    "{{GetInstallerAppCommCredit.errors[0].extensions.statusCode + ' ' + GetInstallerAppCommCredit.errors[0].message}} while fetching installer app commercial credit fields",
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
  </GraphQLQuery>
  <State
    id="isLendingPartnerVettingUser"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value={
      '{{ current_user.groups.some((group) => group.name === "Lending Partner Vetting") }}'
    }
  />
  <State
    id="variable21"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value=""
  />
</GlobalFunctions>
