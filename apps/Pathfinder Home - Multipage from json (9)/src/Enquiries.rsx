<Screen
  id="Enquiries"
  _hashParams={[]}
  _searchParams={[]}
  title="Enquiries"
  urlSlug=""
>
  <SqlQueryUnified
    id="getclients2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getclients2.sql", "string")}
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
    id="get_Emails"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/get_Emails.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="const mappedEmails = get_Emails.data.email_subject.map((subject, i) => {
  const userID = get_Emails.data.userID[i];

  const date = new Date(get_Emails.data.sent_date_time[i]).toDateString();
  
  return `${date}: ${subject} ${userID}`;
});
// Query results are available as the `data` variable"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Function
    id="transformer9"
    funcBody={include("../lib/transformer9.js", "string")}
  />
  <Function
    id="filteredTableData"
    funcBody={include("../lib/filteredTableData.js", "string")}
  />
  <JavascriptQuery
    id="openModal"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/openModal.js", "string")}
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
  <SqlQueryUnified
    id="addNewEnquiry"
    actionType="INSERT"
    changeset={
      '[{"key":"client_id","value":"{{select50.value }}"},{"key":"user_id","value":"{{select51.value}}"},{"key":"status","value":"1"},{"key":"enquiry_created_date","value":"{{ moment () }}"},{"key":"notes","value":"{{textArea36.value}}"},{"key":"enquiry_expiry_date","value":"{{date4.value}}"}]'
    }
    changesetObject="{{ {...form1.data, id: Math.max(...getRows.data.id.map(id => parseInt(id))) + 1 } }}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="client_enquiries"
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
      params={{ ordered: [{ value: "{{addNewEnquiry.data.result}}" }] }}
      pluginId="enquiry_ID"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getProductName"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getProductName.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <PDFExporter
    id="pdfexported"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    markdownTemplate={
      "# Title                               \n\n// Create an image element\nvar imgElement = document.createElement('img');\n\n// Set the image's attributes\nimgElement.src = {{table36.selectedRow.logoURL}};\nimgElement.alt = \"Malta Image\";\n\n// Append the image element to the document body\ndocument.body.appendChild(imgElement);\n\n\n\n{{table36.selectedRow.ent_company_name}}                                    \n{{table36.selectedRow.ent_address}}\n{{table36.selectedRow.ent_country}}\n\n## Subheader\n\n{{table36.selectedRow.company_name}}\n{{table36.selectedRow.company_address}}\n\nDear {{table36.selectedRow.name}}\n\n{{table36.selectedRow.ProductDisplayText}}\nThank you\n{{current_user.firstName}} {{current_user.lastName}}"
    }
    resourceName="PDFExporter"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getcurrencylist"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getcurrencylist.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getusers9"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getusers9.sql", "string")}
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
    id="addNewEnquiryProducts"
    actionType="INSERT"
    changeset={
      '[{"key":"client_id","value":"{{select50.value }}"},{"key":"user_id","value":"{{select51.value}}"},{"key":"status","value":"1"},{"key":"enquiry_created_date","value":"{{ moment () }}"},{"key":"notes","value":"{{textArea36.value}}"},{"key":"enquiry_expiry_date","value":"{{date4.value}}"}]'
    }
    changesetObject="{{ {...form1.data, id: Math.max(...getRows.data.id.map(id => parseInt(id))) + 1 } }}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="client_enquiries"
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
      params={{ ordered: [{ value: "{{addNewEnquiry.data.result}}" }] }}
      pluginId="enquiry_ID"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <OpenAPIQuery
    id="query14"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    resourceName="fd9afa9b-3bf3-4ba1-98c5-391de8f658a7"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getenquiries"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getenquiries.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getlistofentities"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getlistofentities.sql", "string")}
    resourceName="d680b606-de7e-4f88-bc94-791c5cc17e60"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getmanufacturers"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("../lib/getmanufacturers.sql", "string")}
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
    id="getusersv2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getusersv2.sql", "string")}
    resourceName="d680b606-de7e-4f88-bc94-791c5cc17e60"
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
  <RESTQuery
    id="getlogo2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query="https://logo.clearbit.com/{{table36.selectedRow.company_website}}?size=400"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    version={1}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="chat1_query3"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    imageModel="dall-e-2"
    model="gpt-4"
    multimodalModel="gpt-4-visual"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="enquiry_count"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/enquiry_count.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getInternalUsers"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("../lib/getInternalUsers.sql", "string")}
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
    id="getPaymentTerms"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getPaymentTerms.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="update_enquiry_price"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"quantity","value":"{{ form44.data.quantity }}"},{"key":"unit_price","value":"{{ form44.data.unit_price}}"},{"key":"quoted_price","value":"{{ form44.data.quoted_price}}"},{"key":"entity","value":"{{ select7.value}}"},{"key":"quoted_currency","value":"{{ select6.value}}"},{"key":"status","value":"2"}]'
    }
    changesetObject="{{ form.data }}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"enquiry_id","value":"{{ table36.selectedRow.enquiry_id }}","operation":"="}]'
    }
    resourceName="d680b606-de7e-4f88-bc94-791c5cc17e60"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="enquiries"
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
      method="refresh"
      params={{ ordered: [] }}
      pluginId="table36"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "key" },
                { indexType: "display" },
                { index: null },
                { key: "{{ table36.selectedRow.id }}" },
              ],
            },
          },
        ],
      }}
      pluginId="table36"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <State
    id="enquiry_ID"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value=""
  />
  <SqlQueryUnified
    id="getUnits"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getUnits.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getproducts"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("../lib/getproducts.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="getlogistics"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("../lib/getlogistics.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="cancel_enquiry"
    actionType="UPDATE_BY"
    changeset={'[{"key":"cancelled","value":"true"}]'}
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"enquiry_id","value":"{{ table36.selectedRow.enquiry_id }}","operation":"="}]'
    }
    resourceName="d680b606-de7e-4f88-bc94-791c5cc17e60"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="enquiries"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <Frame
    id="$main20"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Text
      id="title"
      _disclosedFields={[]}
      marginType="normal"
      value="### Enquiries"
    />
    <TextInput
      id="table1SearchFilter2"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="Search in table"
    />
    <ButtonGroup
      id="buttonGroup1"
      label=""
      labels="['New Enquiry','In Progress', 'Order Confirmed','Archived','Cancelled']"
      style={{ ordered: [{ text: "primary" }] }}
      value="1"
      values="[1,2,3,4,5]"
    />
    <Modal
      id="formModal"
      _disclosedFields={{ array: [] }}
      buttonText="+ Add New Enquiry"
      closeOnOutsideClick={true}
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "getusers9" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "open" },
            { type: "widget" },
            { method: "clear" },
            { pluginId: "form43" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "open" },
            { type: "widget" },
            { method: "focus" },
            { pluginId: "select50" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden=""
      modalHeightType="auto"
      modalWidth="45%"
      style={{ ordered: [{ "border-color": "hsl(208, 70%, 55%)" }] }}
    >
      <Form
        id="form43"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ table36.selectedRow }}"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
        style={{
          ordered: [
            { border: "surfacePrimary" },
            { background: "rgb(230, 235, 239)" },
          ],
        }}
      >
        <Header>
          <Text
            id="formTitle41"
            marginType="normal"
            value="#### New Enquiry"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Select
            id="select51"
            automaticItemColors={true}
            captionByIndex=""
            colorByIndex=""
            data="{{ getusers9.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="name"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Contact name"
            labelPosition="top"
            labels="{{ item.name }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.userID }}"
          />
          <Select
            id="select50"
            automaticItemColors={true}
            captionByIndex="{{ item.type}}"
            data="{{ getclients2.data }}"
            emptyMessage="No options"
            fallbackTextByIndex="{{ item.type}}"
            formDataKey="company_name"
            label="Company name"
            labelPosition="top"
            labels="{{ item.company_name }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            tooltipByIndex=" "
            values="{{ item.id }}"
          />
          <Date
            id="date4"
            dateFormat="d MMM yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            firstDayOfWeek={1}
            formDataKey=""
            iconBefore="bold/interface-calendar"
            label="Enquiry expiry date"
            labelPosition="top"
            marginType="normal"
            required={true}
            value="{{ moment().add(7, 'days').format('DD-MMM-YYYY') }}"
          />
          <Select
            id="multiselect19"
            automaticItemColors={true}
            data="{{ getlogistics.data }}"
            emptyMessage="No options"
            formDataKey=""
            label="Shipping terms"
            labelPosition="top"
            labels="{{item.delivery_display_text}}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select options"
            required={true}
            showSelectionIndicator={true}
            values="{{ item.id }}"
          />
          <Multiselect
            id="multi_select3"
            automaticItemColors={true}
            data="{{ getproducts.data }}"
            emptyMessage="No options"
            fallbackTextByIndex="{{item.category_name}}"
            formDataKey="ProductDisplayText"
            label="Product"
            labels="{{ item.ProductDisplayText }} - CAS No. {{ item.CAS}} "
            overlayMaxHeight={375}
            placeholder="Start typing"
            required={true}
            showSelectionIndicator={true}
            tooltipByIndex="{{item.category_name}}"
            values="{{ item.id }}"
            wrapTags={true}
          />
          <TextArea
            id="textArea36"
            autoResize={true}
            formDataKey=""
            label="Notes"
            marginType="normal"
            minLines="4"
            placeholder="Enter value"
          />
          <Spacer id="spacer31" />
          <Tabs
            id="tabs3"
            data="{{multi_select3.value}}"
            labels="{{multi_select3.selectedItems[i].ProductDisplayText}}"
            style={{ ordered: [] }}
            targetContainerId=""
            value="{{ self.values[0] }}"
            values=""
          />
          <TextInput
            id="textInput72"
            labelPosition="top"
            placeholder="Enter value"
          />
          <ListViewBeta
            id="listView2"
            _primaryKeys=""
            data="{{ multi_select3.value }}"
            itemWidth="200px"
            margin="0"
            marginType="none"
            numColumns={3}
            padding="0"
          >
            <Include src="./container29.rsx" />
          </ListViewBeta>
        </Body>
        <Footer>
          <Button
            id="formButton31"
            marginType="normal"
            submit={true}
            submitTargetId="form43"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="addNewEnquiry"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="confetti"
          params={{ ordered: [] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Table
      id="table36"
      actionsOverflowPosition={3}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getenquiries.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      dynamicColumnsEnabled={true}
      groupByColumns={[{ ordered: [{ columnId: "ec402" }] }]}
      groupedColumnConfig={{ size: 171, expandByDefault: true }}
      primaryKeyColumnId="c2671"
      searchTerm="{{ table1SearchFilter2.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c2671"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="false"
        key="enquiry_id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={41}
        summaryAggregationMode="none"
      />
      <Column
        id="2e668"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={53.671875}
        summaryAggregationMode="none"
      />
      <Column
        id="ec402"
        alignment="left"
        editable="false"
        format="avatar"
        groupAggregationMode="none"
        hidden="true"
        key="company_name"
        label="Company name"
        placeholder="No user"
        position="center"
        size={106.4375}
        summaryAggregationMode="none"
      />
      <Column
        id="ebdb8"
        alignment="left"
        format="avatar"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="No user"
        position="center"
        size={78.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="0067a"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="client_id"
        label="Client ID"
        placeholder="Enter value"
        position="center"
        size={65.125}
        summaryAggregationMode="none"
      />
      <Column
        id="a709a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="user_id"
        label="User ID"
        placeholder="Enter value"
        position="center"
        size={58.21875}
        summaryAggregationMode="none"
      />
      <Column
        id="5b56a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="ProductDisplayText"
        label="Product "
        placeholder="Enter value"
        position="center"
        size={203.859375}
        summaryAggregationMode="none"
      />
      <Column
        id="386d7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="CAS"
        label="CAS No."
        placeholder="Enter value"
        position="center"
        size={89.203125}
        summaryAggregationMode="none"
      />
      <Column
        id="830ae"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="category_name"
        label="Category"
        placeholder="Select option"
        position="center"
        size={81.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="0c662"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="CategoryID"
        label="Category id"
        placeholder="Enter value"
        position="center"
        size={83.75}
        summaryAggregationMode="none"
      />
      <Column
        id="4781c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="product_id"
        label="Product ID"
        placeholder="Enter value"
        position="center"
        size={76.8125}
        summaryAggregationMode="none"
      />
      <Column
        id="55280"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="quantity"
        label="Quantity"
        placeholder="Enter value"
        position="center"
        size={65.953125}
        summaryAggregationMode="none"
      />
      <Column
        id="d184a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="dosage_unit"
        label="Dosage unit"
        placeholder="Enter value"
        position="center"
        size={85.34375}
        summaryAggregationMode="none"
      />
      <Column
        id="1d4aa"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="qty_units"
        label="Qty units"
        placeholder="Enter value"
        position="center"
        size={68.53125}
        summaryAggregationMode="none"
      />
      <Column
        id="7eb3d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="shipping_terms"
        label="Shipping terms"
        placeholder="Enter value"
        position="center"
        size={103.890625}
        summaryAggregationMode="none"
      />
      <Column
        id="dc882"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="notes"
        label="Notes"
        placeholder="Enter value"
        position="center"
        size={58.390625}
        summaryAggregationMode="none"
      />
      <Column
        id="dc2c4"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={27.96875}
        summaryAggregationMode="none"
      />
      <Column
        id="84bb2"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={79.265625}
        summaryAggregationMode="none"
      />
      <Column
        id="29594"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="company_address"
        label="Company address"
        placeholder="Enter value"
        position="center"
        size={407.796875}
        summaryAggregationMode="none"
      />
      <Column
        id="76cdf"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="company_contact"
        label="Company contact"
        placeholder="Enter value"
        position="center"
        size={118.8125}
        summaryAggregationMode="none"
      />
      <Column
        id="1ae3f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="company_phone"
        label="Company phone"
        placeholder="Enter value"
        position="center"
        size={110.921875}
        summaryAggregationMode="none"
      />
      <Column
        id="7bfad"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="company_email"
        label="Company email"
        placeholder="Enter value"
        position="center"
        size={150.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="686a7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="company_website"
        label="Company website"
        placeholder="Enter value"
        position="center"
        size={156.078125}
        summaryAggregationMode="none"
      />
      <Column
        id="21855"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="vip"
        label="Vip"
        placeholder="Enter value"
        position="center"
        size={35.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="3c7b6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="userID"
        label="User id"
        placeholder="Enter value"
        position="center"
        size={56.90625}
        summaryAggregationMode="none"
      />
      <Column
        id="90442"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="email_address"
        label="Email address"
        position="center"
        size={150.734375}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="9a25a"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="additional_info"
        label="Additional info"
        placeholder="Enter value"
        position="center"
        size={100.03125}
        summaryAggregationMode="none"
      />
      <Column
        id="b0bff"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="newsletter"
        label="Newsletter"
        placeholder="Enter value"
        position="center"
        size={79.75}
        summaryAggregationMode="none"
      />
      <Column
        id="17a7c"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="date_created"
        label="Date created"
        placeholder="Enter value"
        position="center"
        size={90.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="66734"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="phone_no"
        label="Phone no"
        placeholder="Enter value"
        position="center"
        size={103.625}
        summaryAggregationMode="none"
      />
      <Column
        id="a555f"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        hidden="true"
        key="date_amended"
        label="Date amended"
        placeholder="Enter value"
        position="center"
        size={146.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="6063c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="Theraputics"
        label="Theraputics"
        placeholder="Enter value"
        position="center"
        size={146.03125}
        summaryAggregationMode="none"
      />
      <Column
        id="a3895"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="category_id"
        label="Category ID"
        placeholder="Enter value"
        position="center"
        size={85.046875}
        summaryAggregationMode="none"
      />
      <Column
        id="4e9db"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="active"
        label="Active"
        placeholder="Enter value"
        position="center"
        size={52.875}
        summaryAggregationMode="none"
      />
      <Column
        id="f33d8"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "2",
          padDecimal: true,
        }}
        groupAggregationMode="sum"
        key="unit_price"
        label="Unit price"
        placeholder="Enter value"
        position="center"
        size={72.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="26fdd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          decimalPlaces: "2",
          padDecimal: true,
        }}
        groupAggregationMode="sum"
        key="quoted_price"
        label="Quoted price"
        placeholder="Enter value"
        position="center"
        size={91.453125}
        summaryAggregationMode="none"
      />
      <Column
        id="991b0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="entity"
        label="Entity"
        placeholder="Enter value"
        position="center"
        size={49.75}
        summaryAggregationMode="none"
      />
      <Column
        id="ec76c"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="quoted_currency"
        label="Quoted currency"
        placeholder="Enter value"
        position="center"
        size={113.765625}
        summaryAggregationMode="none"
      />
      <Column
        id="55685"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="UnitDisplayText"
        label="Dosage Unit"
        placeholder="Enter value"
        position="center"
        size={110}
        summaryAggregationMode="none"
      />
      <Column
        id="3f0df"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="delivery_display_text"
        label="Delivery terms"
        placeholder="Enter value"
        position="center"
        size={208.453125}
        summaryAggregationMode="none"
      />
      <Column
        id="150f1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="currency_code"
        label="Currency code"
        placeholder="Enter value"
        position="center"
        size={101.59375}
        summaryAggregationMode="none"
      />
      <Column
        id="450b8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="currency_display"
        label="Currency display"
        placeholder="Enter value"
        position="center"
        size={114.171875}
        summaryAggregationMode="none"
      />
      <Column
        id="c6729"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="ent_company_name"
        label="Ent company name"
        placeholder="Enter value"
        position="center"
        size={126.578125}
        summaryAggregationMode="none"
      />
      <Column
        id="67be0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="ent_address"
        label="Ent address"
        placeholder="Enter value"
        position="center"
        size={84.9375}
        summaryAggregationMode="none"
      />
      <Column
        id="076b5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="ent_phone_no"
        label="Ent phone no"
        placeholder="Enter value"
        position="center"
        size={92.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="c417a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="ent_email"
        label="Ent email"
        placeholder="Enter value"
        position="center"
        size={69.15625}
        summaryAggregationMode="none"
      />
      <Column
        id="98eb2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="ent_vat"
        label="Ent vat"
        placeholder="Enter value"
        position="center"
        size={56.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="83c0d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="ent_country"
        label="Entity"
        placeholder="Enter value"
        position="center"
        size={83.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="904c8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="logoURL"
        label="Logo url"
        placeholder="Enter value"
        position="center"
        size={63.046875}
        summaryAggregationMode="none"
      />
      <Column
        id="25d14"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        hidden="true"
        key="cancelled"
        label="Cancelled"
        placeholder="Enter value"
        position="center"
        size={74.078125}
        summaryAggregationMode="none"
      />
      <Column
        id="380ee"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="user_notes"
        label="User notes"
        placeholder="Enter value"
        position="center"
        size={717.09375}
        summaryAggregationMode="none"
      />
      <Column
        id="5c8f0"
        alignment="left"
        cellTooltip="{{ item }}"
        cellTooltipMode="custom"
        editable="true"
        format="date"
        formatOptions={{
          min: 0,
          max: 100,
          positiveTrend: 100,
          negativeTrend: 10,
        }}
        groupAggregationMode="average"
        key="enquiry_expiry_date"
        label="Expiry date"
        placeholder="Enter value"
        position="center"
        size={95.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="050b0"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="enquiry_created_date"
        label="Created date"
        placeholder="Enter value"
        position="center"
        size={94.640625}
        summaryAggregationMode="none"
      />
      <Action
        id="05cf9"
        icon="bold/interface-arrows-bend-up-left-3"
        label="Respond"
      >
        <Event
          event="clickAction"
          method="open"
          params={{ ordered: [] }}
          pluginId="RespondModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action id="c6e6f" icon="bold/mail-inbox-envelope-reply" label="Email" />
      <Action
        id="292a7"
        disabled="{{ table36.selectedRow.cancelled }} "
        icon="bold/interface-delete-1"
        label="Cancel"
      >
        <Event
          enabled=""
          event="clickAction"
          method="open"
          params={{ ordered: [] }}
          pluginId="CancelModal"
          type="widget"
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
          pluginId="table36"
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
          pluginId="table36"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Container
      id="container27"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      heightType="fixed"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle71"
          marginType="normal"
          value="#### Enquiry Email History"
          verticalAlign="center"
        />
      </Header>
      <View id="af39d" viewKey="View 1">
        <Timeline
          id="timeline11"
          items="  {{
  get_Emails.data.email_subject.map((subject,i) => new 
  Date(get_Emails.data.sent_date_time[i]).toDateString() + ': ' + subject)
}}"
          timestamps="[{{get_Emails.data.sent_date_time}}]"
        />
      </View>
    </Container>
    <Include src="./container25.rsx" />
    <Container
      id="container26"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      heightType="fixed"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle70"
          marginType="normal"
          value="#### Client Data"
          verticalAlign="center"
        />
      </Header>
      <View id="af39d" viewKey="View 1">
        <PlotlyChart
          id="chart4"
          chartType="pie"
          dataseries={{
            ordered: [
              {
                11: {
                  ordered: [
                    { label: "unit_price" },
                    { datasource: "{{enquiry_count.data['unit_price']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                12: {
                  ordered: [
                    { label: "entity" },
                    { datasource: "{{enquiry_count.data['entity']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                13: {
                  ordered: [
                    { label: "id" },
                    { datasource: "{{enquiry_count.data['id']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                14: {
                  ordered: [
                    { label: "company_phone" },
                    { datasource: "{{enquiry_count.data['company_phone']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                15: {
                  ordered: [
                    { label: "CategoryID" },
                    { datasource: "{{enquiry_count.data['CategoryID']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                16: {
                  ordered: [
                    { label: "category_id" },
                    { datasource: "{{enquiry_count.data['category_id']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                0: {
                  ordered: [
                    { label: "enquiry_id" },
                    { datasource: "{{enquiry_count.data['enquiry_id']}}" },
                    { chartType: "pie" },
                    { aggregationType: "count" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                1: {
                  ordered: [
                    { label: "client_id" },
                    { datasource: "{{enquiry_count.data['client_id']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                2: {
                  ordered: [
                    { label: "user_id" },
                    { datasource: "{{enquiry_count.data['user_id']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                3: {
                  ordered: [
                    { label: "status" },
                    { datasource: "{{enquiry_count.data['status']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                4: {
                  ordered: [
                    { label: "product_id" },
                    { datasource: "{{enquiry_count.data['product_id']}}" },
                    { chartType: "pie" },
                    { aggregationType: "none" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: true },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                5: {
                  ordered: [
                    { label: "quantity" },
                    { datasource: "{{enquiry_count.data['quantity']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                6: {
                  ordered: [
                    { label: "shipping_terms" },
                    { datasource: "{{enquiry_count.data['shipping_terms']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                7: {
                  ordered: [
                    { label: "qty_units" },
                    { datasource: "{{enquiry_count.data['qty_units']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                8: {
                  ordered: [
                    { label: "dosage_unit" },
                    { datasource: "{{enquiry_count.data['dosage_unit']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                9: {
                  ordered: [
                    { label: "quoted_price" },
                    { datasource: "{{enquiry_count.data['quoted_price']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                10: {
                  ordered: [
                    { label: "quoted_currency" },
                    { datasource: "{{enquiry_count.data['quoted_currency']}}" },
                    { chartType: "pie" },
                    { aggregationType: "sum" },
                    { color: null },
                    { colors: { ordered: [{ 0: "#033663" }] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
            ],
          }}
          datasourceDataType="object"
          datasourceInputMode="javascript"
          datasourceJS="{{enquiry_count.data}}"
          isDataTemplateDirty={true}
          shouldShowLegend={false}
          skipDatasourceUpdate={true}
          xAxis="{{enquiry_count.data['ProductDisplayText']}}"
          xAxisDropdown="ProductDisplayText"
        />
      </View>
    </Container>
    <Modal
      id="testModal"
      buttonText="Open Modal"
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "addNewEnquiry" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      modalHeightType="auto"
      modalWidth="80%"
    >
      <TextInput
        id="textInput69"
        marginType="normal"
        placeholder="Enter value"
      />
      <Table
        id="table37"
        actionsOverflowPosition={1}
        cellSelection="none"
        clearChangesetOnSave={true}
        data="{{ getenquiries.data }}"
        defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
        enableSaveActions={true}
        groupByColumns={[
          { ordered: [{ columnId: "0c708" }] },
          { ordered: [{ columnId: "1a4d3" }] },
        ]}
        groupedColumnConfig={{ size: 15.96875 }}
        primaryKeyColumnId="5f24a"
        showBorder={true}
        showFooter={true}
        showHeader={true}
        toolbarPosition="bottom"
      >
        <Column
          id="40721"
          alignment="right"
          editable={false}
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="enquiry_id"
          label="Enquiry ID"
          placeholder="Enter value"
          position="center"
          size={75.359375}
          summaryAggregationMode="none"
        />
        <Column
          id="1a4d3"
          alignment="right"
          editable={false}
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="client_id"
          label="Client ID"
          placeholder="Enter value"
          position="center"
          size={65.125}
          summaryAggregationMode="none"
        />
        <Column
          id="21529"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="user_id"
          label="User ID"
          placeholder="Enter value"
          position="center"
          size={58.21875}
          summaryAggregationMode="none"
        />
        <Column
          id="8009b"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="status"
          label="Status"
          placeholder="Enter value"
          position="center"
          size={53.671875}
          summaryAggregationMode="none"
        />
        <Column
          id="62d5f"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="product_id"
          label="Product ID"
          placeholder="Enter value"
          position="center"
          size={76.8125}
          summaryAggregationMode="none"
        />
        <Column
          id="d05d3"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="quantity"
          label="Quantity"
          placeholder="Enter value"
          position="center"
          size={65.953125}
          summaryAggregationMode="none"
        />
        <Column
          id="61c79"
          alignment="left"
          format="date"
          groupAggregationMode="none"
          key="enquiry_expiry_date"
          label="Enquiry expiry date"
          placeholder="Enter value"
          position="center"
          size={128.640625}
          summaryAggregationMode="none"
        />
        <Column
          id="819f7"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="shipping_terms"
          label="Shipping terms"
          placeholder="Enter value"
          position="center"
          size={103.890625}
          summaryAggregationMode="none"
        />
        <Column
          id="a0dd4"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="notes"
          label="Notes"
          placeholder="Enter value"
          position="center"
          size={58.390625}
          summaryAggregationMode="none"
        />
        <Column
          id="5e7d4"
          alignment="left"
          format="datetime"
          groupAggregationMode="none"
          key="enquiry_created_date"
          label="Enquiry created date"
          placeholder="Enter value"
          position="center"
          size={154.5625}
          summaryAggregationMode="none"
        />
        <Column
          id="21134"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="qty_units"
          label="Qty units"
          placeholder="Enter value"
          position="center"
          size={68.53125}
          summaryAggregationMode="none"
        />
        <Column
          id="cde70"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="dosage_unit"
          label="Dosage unit"
          placeholder="Enter value"
          position="center"
          size={85.34375}
          summaryAggregationMode="none"
        />
        <Column
          id="89580"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="quoted_price"
          label="Quoted price"
          placeholder="Enter value"
          position="center"
          size={91.453125}
          summaryAggregationMode="none"
        />
        <Column
          id="a97de"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="quoted_currency"
          label="Quoted currency"
          placeholder="Enter value"
          position="center"
          size={113.765625}
          summaryAggregationMode="none"
        />
        <Column
          id="68a86"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="unit_price"
          label="Unit price"
          placeholder="Enter value"
          position="center"
          size={72.1875}
          summaryAggregationMode="none"
        />
        <Column
          id="ad514"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="entity"
          label="Entity"
          placeholder="Enter value"
          position="center"
          size={49.75}
          summaryAggregationMode="none"
        />
        <Column
          id="10936"
          alignment="left"
          format="boolean"
          groupAggregationMode="none"
          key="cancelled"
          label="Cancelled"
          placeholder="Enter value"
          position="center"
          size={74.078125}
          summaryAggregationMode="none"
        />
        <Column
          id="5f24a"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="id"
          label="ID"
          placeholder="Enter value"
          position="center"
          size={27.96875}
          summaryAggregationMode="none"
        />
        <Column
          id="a799d"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="company_name"
          label="Company name"
          placeholder="Select option"
          position="center"
          size={206.421875}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
        />
        <Column
          id="bae30"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="type"
          label="Type"
          placeholder="Select option"
          position="center"
          size={79.265625}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
        />
        <Column
          id="eeac9"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="company_address"
          label="Company address"
          placeholder="Enter value"
          position="center"
          size={260.09375}
          summaryAggregationMode="none"
        />
        <Column
          id="b740f"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="company_contact"
          label="Company contact"
          placeholder="Select option"
          position="center"
          size={135.625}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
        />
        <Column
          id="c1152"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="company_phone"
          label="Company phone"
          placeholder="Enter value"
          position="center"
          size={130.265625}
          summaryAggregationMode="none"
        />
        <Column
          id="36a44"
          alignment="left"
          format="link"
          formatOptions={{ showUnderline: "hover" }}
          groupAggregationMode="none"
          key="company_email"
          label="Company email"
          position="center"
          size={260.09375}
          summaryAggregationMode="none"
        >
          <Event
            event="clickCell"
            method="openUrl"
            params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Column>
        <Column
          id="e83c3"
          alignment="left"
          format="link"
          formatOptions={{ showUnderline: "hover" }}
          groupAggregationMode="none"
          key="company_website"
          label="Company website"
          position="center"
          size={205.921875}
          summaryAggregationMode="none"
        >
          <Event
            event="clickCell"
            method="openUrl"
            params={{ ordered: [{ url: "{{ item }}" }] }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Column>
        <Column
          id="e322e"
          alignment="left"
          format="boolean"
          groupAggregationMode="none"
          key="vip"
          label="Vip"
          placeholder="Enter value"
          position="center"
          size={35.296875}
          summaryAggregationMode="none"
        />
        <Column
          id="15da5"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="userID"
          label="User id"
          placeholder="Enter value"
          position="center"
          size={56.90625}
          summaryAggregationMode="none"
        />
        <Column
          id="6e6f3"
          alignment="left"
          format="link"
          formatOptions={{ showUnderline: "hover" }}
          groupAggregationMode="none"
          key="email_address"
          label="Email address"
          position="center"
          size={150.734375}
          summaryAggregationMode="none"
        >
          <Event
            event="clickCell"
            method="openUrl"
            params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Column>
        <Column
          id="d4f57"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="name"
          label="Name"
          placeholder="Enter value"
          position="center"
          size={54.34375}
          summaryAggregationMode="none"
        />
        <Column
          id="cf3e8"
          alignment="left"
          format="boolean"
          groupAggregationMode="none"
          key="additional_info"
          label="Additional info"
          placeholder="Enter value"
          position="center"
          size={100.03125}
          summaryAggregationMode="none"
        />
        <Column
          id="55a0b"
          alignment="left"
          format="boolean"
          groupAggregationMode="none"
          key="newsletter"
          label="Newsletter"
          placeholder="Enter value"
          position="center"
          size={79.75}
          summaryAggregationMode="none"
        />
        <Column
          id="852f0"
          alignment="left"
          format="date"
          groupAggregationMode="none"
          key="date_created"
          label="Date created"
          placeholder="Enter value"
          position="center"
          size={90.734375}
          summaryAggregationMode="none"
        />
        <Column
          id="549cd"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="user_notes"
          label="User notes"
          placeholder="Enter value"
          position="center"
          size={260.09375}
          summaryAggregationMode="none"
        />
        <Column
          id="c3a87"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="phone_no"
          label="Phone no"
          placeholder="Enter value"
          position="center"
          size={103.625}
          summaryAggregationMode="none"
        />
        <Column
          id="723c2"
          alignment="left"
          format="datetime"
          groupAggregationMode="none"
          key="date_amended"
          label="Date amended"
          placeholder="Enter value"
          position="center"
          size={146.734375}
          summaryAggregationMode="none"
        />
        <Column
          id="199d1"
          alignment="left"
          format="boolean"
          groupAggregationMode="none"
          key="active"
          label="Active"
          placeholder="Enter value"
          position="center"
          size={52.875}
          summaryAggregationMode="none"
        />
        <Column
          id="00184"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="ProductDisplayText"
          label="Product display text"
          placeholder="Enter value"
          position="center"
          size={260.09375}
          summaryAggregationMode="none"
        />
        <Column
          id="b3158"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="CAS"
          label="Cas"
          placeholder="Enter value"
          position="center"
          size={89.203125}
          summaryAggregationMode="none"
        />
        <Column
          id="c9849"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="CategoryID"
          label="Category id"
          placeholder="Enter value"
          position="center"
          size={83.75}
          summaryAggregationMode="none"
        />
        <Column
          id="f4b60"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="Theraputics"
          label="Theraputics"
          placeholder="Enter value"
          position="center"
          size={146.03125}
          summaryAggregationMode="none"
        />
        <Column
          id="fcc52"
          alignment="right"
          editableOptions={{ showStepper: true }}
          format="decimal"
          formatOptions={{ showSeparators: true, notation: "standard" }}
          groupAggregationMode="sum"
          key="category_id"
          label="Category ID"
          placeholder="Enter value"
          position="center"
          size={85.046875}
          summaryAggregationMode="none"
        />
        <Column
          id="7fd20"
          alignment="left"
          format="tag"
          formatOptions={{ automaticColors: true }}
          groupAggregationMode="none"
          key="category_name"
          label="Category name"
          placeholder="Select option"
          position="center"
          size={111.265625}
          summaryAggregationMode="none"
          valueOverride="{{ _.startCase(item) }}"
        />
        <Column
          id="d4316"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="UnitDisplayText"
          label="Unit display text"
          placeholder="Enter value"
          position="center"
          size={110}
          summaryAggregationMode="none"
        />
        <Column
          id="aaed2"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="delivery_display_text"
          label="Delivery display text"
          placeholder="Enter value"
          position="center"
          size={208.453125}
          summaryAggregationMode="none"
        />
        <Column
          id="2bd34"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="currency_code"
          label="Currency code"
          placeholder="Enter value"
          position="center"
          size={101.59375}
          summaryAggregationMode="none"
        />
        <Column
          id="09b84"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="currency_display"
          label="Currency display"
          placeholder="Enter value"
          position="center"
          size={114.171875}
          summaryAggregationMode="none"
        />
        <Column
          id="2e480"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="ent_company_name"
          label="Ent company name"
          placeholder="Enter value"
          position="center"
          size={126.578125}
          summaryAggregationMode="none"
        />
        <Column
          id="e93bd"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="ent_address"
          label="Ent address"
          placeholder="Enter value"
          position="center"
          size={84.9375}
          summaryAggregationMode="none"
        />
        <Column
          id="f1f5d"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="ent_phone_no"
          label="Ent phone no"
          placeholder="Enter value"
          position="center"
          size={92.296875}
          summaryAggregationMode="none"
        />
        <Column
          id="56422"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="ent_email"
          label="Ent email"
          placeholder="Enter value"
          position="center"
          size={69.15625}
          summaryAggregationMode="none"
        />
        <Column
          id="74978"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="ent_vat"
          label="Ent vat"
          placeholder="Enter value"
          position="center"
          size={56.296875}
          summaryAggregationMode="none"
        />
        <Column
          id="c60c7"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="ent_country"
          label="Ent country"
          placeholder="Enter value"
          position="center"
          size={83.40625}
          summaryAggregationMode="none"
        />
        <Column
          id="7c41f"
          alignment="left"
          format="string"
          groupAggregationMode="none"
          key="logoURL"
          label="Logo url"
          placeholder="Enter value"
          position="center"
          size={63.046875}
          summaryAggregationMode="none"
        />
        <Action
          id="e32bc"
          icon="bold/interface-add-square-alternate"
          label="+"
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
        />
        <ToolbarButton
          id="4d"
          icon="bold/interface-arrows-round-left"
          label="Refresh"
          type="custom"
        />
        <ToolbarButton
          id="38dd7"
          icon="bold/shopping-gift"
          label="Custom"
          type="custom"
        />
        <Event
          event="selectRow"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="addNewEnquiry"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Table>
    </Modal>
    <Modal
      id="modal12"
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      modalHeight="112px"
      modalHeightType="auto"
      modalWidth="60%"
    >
      <Tabs
        id="tabs41"
        itemMode="static"
        marginType="normal"
        navigateContainer={true}
        style={{ ordered: [{ unselectedText: "rgba(36, 47, 61, 0.71)" }] }}
        targetContainerId="container25"
        value="{{ self.values[0] }}"
      >
        <Option id="6bd7c" value="Intractive AI Chat" />
        <Option id="36c3b" value="Trained AI" />
      </Tabs>
    </Modal>
    <Modal
      id="CancelModal"
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "getenquiries" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="true"
      modalHeight="480px"
      modalOverflowType="hidden"
      style={{ ordered: [{ "border-color": "rgb(60, 146, 221)" }] }}
    >
      <Form
        id="form45"
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
            id="formTitle43"
            marginType="normal"
            value="#### Cancel enquiry"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextEditor id="richTextEditor14" />
        </Body>
        <Footer>
          <Button
            id="formButton33"
            marginType="normal"
            submit={true}
            submitTargetId="form45"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="cancel_enquiry"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="CancelModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Modal
      id="RespondModal"
      buttonText="Open Modal"
      closeOnOutsideClick={true}
      events={[]}
      hidden="true"
      modalHeightType="auto"
      modalOverflowType="hidden"
      style={{ ordered: [{ "border-color": "rgb(60, 146, 221)" }] }}
    >
      <Form
        id="form44"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ table36.selectedRow }}"
        marginType="normal"
        overflowType="hidden"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="formTitle42"
            marginType="normal"
            value="#### Respond"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Text
            id="text107"
            marginType="normal"
            value="{{table36.selectedRow.ProductDisplayText}}"
            verticalAlign="center"
          />
          <Text
            id="text105"
            marginType="normal"
            value="Product: "
            verticalAlign="center"
          />
          <Text
            id="text104"
            marginType="normal"
            value="CAS No.: "
            verticalAlign="center"
          />
          <Text
            id="text108"
            marginType="normal"
            value="{{table36.selectedRow.CAS}}"
            verticalAlign="center"
          />
          <Text
            id="text109"
            imageWidth="fill"
            marginType="normal"
            value="{{table36.selectedRow.delivery_display_text}}"
            verticalAlign="center"
          />
          <Text
            id="text106"
            marginType="normal"
            value="Delivery terms: "
            verticalAlign="center"
          />
          <Select
            id="select5"
            captionByIndex="{{ item.ent_email }}
{{item.ent_country}}"
            data="{{ getlistofentities.data }}"
            emptyMessage="No options"
            formDataKey="entity"
            label="Entity"
            labels="{{ item.ent_company_name }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            value="{{table36.selectedRow.ent_company_name}}"
            values="{{ item.id }}"
          />
          <Select
            id="select6"
            colorByIndex=""
            data="{{ getcurrencylist.data }}"
            emptyMessage="No options"
            label="Currency"
            labels="{{item.currency_code}} {{item.currency_display}}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            value="{{table36.selectedRow.quoted_currency}}"
            values="{{ item.id }}"
          />
          <Select
            id="select52"
            data="{{ getlogistics.data }}"
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="dosage_unit"
            label="Delivery terms"
            labels="{{ item.delivery_display_text }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            value=""
            values="{{ item.id }}"
          />
          <NumberInput
            id="numberInput8"
            currency="USD"
            formDataKey="quantity"
            inputValue={0}
            label="Quantity"
            marginType="normal"
            placeholder="Enter value"
            required={true}
            showSeparators={true}
            showStepper={true}
            value="{{table36.selectedRow.quantity}}"
          />
          <Select
            id="select7"
            data="{{ getUnits.data }}"
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="dosage_unit"
            label="Dosage Unit"
            labels="{{ item.UnitDisplayText }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            value=""
            values="{{ item.id }}"
          />
          <NumberInput
            id="numberInput6"
            currency="{{ select6.selectedItem.currency_code }}"
            decimalPlaces="2"
            format="currency"
            formDataKey="unit_price"
            inputValue={0}
            label="Unit price "
            marginType="normal"
            placeholder="Enter value"
            required={true}
            showSeparators={true}
            showStepper={true}
            textAlign="right"
            value={0}
          />
          <NumberInput
            id="numberInput7"
            currency="{{ select6.selectedItem.currency_code }}"
            format="currency"
            formDataKey="quoted_price"
            inputValue={0}
            label="Total price"
            marginType="normal"
            placeholder="Enter value"
            required={true}
            showSeparators={true}
            showStepper={true}
            textAlign="right"
            value="{{ transformer9.value }}"
          >
            <Event
              event="focus"
              method="run"
              params={{ ordered: [{ src: "transformer9.value" }] }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </NumberInput>
        </Body>
        <Footer>
          <Button
            id="formButton32"
            marginType="normal"
            submit={true}
            submitTargetId="form44"
            text="Submit"
          />
          <Switch id="switch5" label="Generate proposal" marginType="normal">
            <Event
              event="true"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="pdfexported"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Switch>
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="update_enquiry_price"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="submit"
          method="close"
          params={{ ordered: [] }}
          pluginId="RespondModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
  </Frame>
  <Include src="./modalFrame7.rsx" />
</Screen>
