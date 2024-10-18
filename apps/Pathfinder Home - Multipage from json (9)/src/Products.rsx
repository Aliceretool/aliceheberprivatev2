<Screen
  id="Products"
  _hashParams={[]}
  _searchParams={[]}
  title="Products & Services"
  urlSlug=""
>
  <SqlQueryUnified
    id="getclients3"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getclients3.sql", "string")}
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
    id="updateRow2"
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
      pluginId="getclients3"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getTime_accounts"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getTime_accounts.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getuserpreviousemails2"
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getuserpreviousemails2.sql", "string")}
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
    id="updTable"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="accountID"
    changesetIsObject={true}
    changesetObject="{{table38.changesetArray}}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"accountID","value":"{{table38.selectedRow.accountID}}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    records="{{table38.changesetArray}}"
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
      pluginId="getTime_accounts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getLoggedTime"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getLoggedTime.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="addNewClient2"
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
      params={{ ordered: [{ value: "{{ addNewClient2.data.result}}" }] }}
      pluginId="variable2"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RetoolAIQuery
    id="welcome_email_ai2"
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
      params={{ ordered: [{ value: "{{welcome_email_ai2.data}}" }] }}
      pluginId="richTextEditor3"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </RetoolAIQuery>
  <SqlQueryUnified
    id="query103"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/query103.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="query15"
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
    id="query104"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/query104.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getCategories"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getCategories.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RESTQuery
    id="getlogo3"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="https://logo.clearbit.com/{{select13.selectedItem.company_website}}?size=400"
    resourceName="REST-WithoutResource"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="get_emails2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/get_emails2.sql", "string")}
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
    id="insProductService"
    actionType="INSERT"
    changeset={
      '[{"key":"ProductDisplayText","value":"{{textInput73.value}}"},{"key":"CAS","value":"{{textInput74.value}}"},{"key":"CategoryID","value":"{{select61.value}}"},{"key":"Theraputics","value":"{{multiselect22.value}}"},{"key":"isActive","value":"{{switch8.value}}"},{"key":"isProduct","value":"{{switch9.value}}"}]'
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
    tableName="products"
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
  <State
    id="variable2"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <Function id="transformer10" />
  <Function
    id="transformer11"
    funcBody={include("../lib/transformer11.js", "string")}
  />
  <SqlQueryUnified
    id="getProducts4"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getProducts4.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="transformer12"
    funcBody={include("../lib/transformer12.js", "string")}
  />
  <SMTPQuery
    id="sendemail2"
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
  <Frame
    id="$main21"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Container
      id="container30"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle74"
          value="#### Products & Services"
          verticalAlign="center"
        />
      </Header>
      <View id="08d32" viewKey="View 1">
        <TextInput
          id="table6SearchFilter"
          hideLabel={true}
          iconBefore="bold/interface-search"
          label="Search"
          placeholder="Search in table"
        />
        <Button id="button146" text="New Item">
          <Event
            event="click"
            method="show"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="modalFrame8"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="clear"
            params={{ ordered: [] }}
            pluginId="form17"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="focus"
            params={{ ordered: [] }}
            pluginId="textInput45"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Table
          id="table38"
          clearChangesetOnSave={true}
          data="{{ getProducts4.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="30dde"
          searchTerm="{{ table6SearchFilter.value }}"
          showBorder={true}
          showColumnBorders={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="30dde"
            alignment="right"
            editable={false}
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={31.53125}
            summaryAggregationMode="none"
          />
          <Column
            id="21fa0"
            alignment="left"
            editable="true"
            editableOptions={{ showStepper: true, allowCustomValue: false }}
            format="string"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="sum"
            hidden="false"
            key="ProductDisplayText"
            label="Product"
            optionList={{
              mode: "mapped",
              mappedData: "{{ getProducts4.data }}",
              valueByIndex: "{{ item.id }}",
              fallbackTextByIndex: "{{ item.ProductDisplayText }}",
              labelByIndex: "{{ item.ProductDisplayText }}",
            }}
            placeholder="Enter value"
            position="center"
            referenceId="ProductDisplayText"
            size={217.171875}
            summaryAggregationMode="none"
            valueOverride="{{item}}"
          />
          <Column
            id="091d9"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="CAS"
            label="CAS No."
            placeholder="Enter value"
            position="center"
            referenceId="c"
            size={134}
            summaryAggregationMode="none"
          />
          <Column
            id="c1360"
            alignment="center"
            editable="false"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="sum"
            key="category_name"
            label="Category"
            optionList={{ mode: "manual" }}
            placeholder="Select option"
            position="center"
            referenceId="column26"
            size={209}
            summaryAggregationMode="none"
            valueOverride="{{ item }}"
          />
          <Column
            id="aaddf"
            alignment="center"
            editable={true}
            format="boolean"
            formatOptions={{
              showSeparators: true,
              notation: "standard",
              variant: "solid",
            }}
            groupAggregationMode="sum"
            key="isActive"
            label="Enabled"
            placeholder="Enter value"
            position="center"
            referenceId="isActive"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="40d3c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="Theraputics"
            label="Theraputics"
            placeholder="Enter value"
            position="center"
            referenceId="theraputics"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="3bef9"
            alignment="left"
            format="boolean"
            formatOptions={{
              icon: "",
              falseIcon: "",
              variant: "solid",
              trueIcon: "",
            }}
            groupAggregationMode="average"
            hidden="true"
            key="isProduct"
            label="Type"
            placeholder="Enter value"
            position="center"
            referenceId="isProduct"
            size={100}
            statusIndicatorOptions={{
              manualData: [
                {
                  ordered: [
                    { showWhen: "true" },
                    { label: "Product" },
                    { icon: "bold/health-medical-capsule" },
                  ],
                },
                {
                  ordered: [
                    { showWhen: "false" },
                    { label: "Service" },
                    { icon: "bold/health-medical-heart-rate" },
                  ],
                },
              ],
            }}
            summaryAggregationMode="none"
          />
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
              pluginId="table38"
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
              pluginId="table38"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <Event
            event="save"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updTable"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
  </Frame>
  <Include src="./modalFrame8.rsx" />
</Screen>
