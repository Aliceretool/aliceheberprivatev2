<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={false}
    type="main"
  >
    <Text
      id="titleText"
      _disclosedFields={{ array: ["color"] }}
      marginType="normal"
      style={{ ordered: [{ color: "rgb(56, 73, 136)" }] }}
      value="### main DB spaces balloon instance"
    />
    <Button
      id="addButton"
      _disclosedFields={{ array: ["background", "borderRadius"] }}
      marginType="normal"
      style={{
        ordered: [
          { background: "rgb(120, 131, 232)" },
          { borderRadius: "8px\n" },
        ],
      }}
      text="Add new record"
    >
      <Event
        event="click"
        method="selectRow"
        params={{ ordered: [{ rowIndex: "null" }] }}
        pluginId="table1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TextInput
      id="searchBar"
      _disclosedFields={{ array: [] }}
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search by memberType"
      labelAlign="right"
      labelPosition="top"
      marginType="normal"
      placeholder="Search in table"
      style={{ ordered: [{ borderRadius: "8px" }] }}
    />
    <TableLegacy
      id="table1"
      _columns={[
        "id",
        "product name",
        "type",
        "price",
        "Date",
        "NAV / 1-Day Return",
        "TTM Yield",
        "Risk",
        "Open",
      ]}
      _columnSummaryTypes={{
        ordered: [
          { "Custom Column 1": "" },
          { type: "uniqueCount" },
          { price: "sum" },
          { "NAV / 1-Day Return": "average" },
          { status: "" },
        ],
      }}
      _columnSummaryValues={{
        ordered: [
          { "Custom Column 1": "" },
          { type: "" },
          { price: "" },
          { "NAV / 1-Day Return": "" },
          { status: "" },
        ],
      }}
      _columnVisibility={{
        ordered: [
          { pRODname: true },
          { sdas: true },
          { untitled: true },
          { "[name": true },
          { price: true },
          { Open: true },
          { name: true },
          { sales: true },
          { "Account ID": true },
          { "Account Id": true },
          { Date: true },
          { Risk: true },
          { "Account IID": true },
          { photo: false },
          { pi: true },
          { type: true },
          { "TTM Yield": true },
          { id: false },
          { "product name": true },
          { "Product name": true },
          { email: true },
          { "NAV / 1-Day Return": true },
        ],
      }}
      _compatibilityMode={false}
      _disclosedFields={{ array: ["border", "headerBackground"] }}
      columnAlignment={{
        ordered: [
          { id: "left" },
          { type: "left" },
          { price: "right" },
          { "Custom Column 1": "left" },
          { "product name": "left" },
          { Date: "left" },
          { "NAV / 1-Day Return": "right" },
          { status: "left" },
        ],
      }}
      columnColors={{
        ordered: [
          { addedByUser: "" },
          { pRODname: "" },
          { sdas: "" },
          { untitled: "" },
          { aclId: "" },
          { license_growth: "" },
          { "[name": "" },
          { price: "" },
          { created_at: "" },
          { Open: "" },
          { active_licenses: "" },
          { name: "" },
          { sales: "" },
          { next_renewal: "" },
          { "Account ID": "" },
          { "Account Id": "" },
          { phone: "" },
          { updatedAt: "" },
          { Date: "" },
          { Risk: "" },
          { "Account IID": "" },
          { licenses: "" },
          { platform: "" },
          { reasonMetadata: "" },
          { memberType: "" },
          { address: "" },
          { memberId: "" },
          { pi: "" },
          { type: "" },
          { "TTM Yield": "" },
          { id: "" },
          { createdAt: "" },
          { revenue: "" },
          { "product name": "" },
          { "Product name": "" },
          { email: "" },
          { active_license_growth: "" },
          { industry: "" },
          { "NAV / 1-Day Return": "{{self > 0 ? '6ecaa2' : 'ffcccb'}}" },
          { age: "" },
        ],
      }}
      columnEditable={{
        ordered: [
          { id: false },
          { first_name: false },
          { last_name: false },
          { email: false },
          { customer_since: false },
          { is_verified: false },
        ],
      }}
      columnFormats={{
        ordered: [
          { id: "HtmlDataCell" },
          { type: "SingleTagDataCell" },
          { price: "CurrencyDataCell" },
          { "Custom Column 1": "button" },
          { "product name": "HtmlDataCell" },
          { Date: "DateDataCell" },
          { "NAV / 1-Day Return": "PercentDataCell" },
          { status: "SingleTagDataCell" },
        ],
      }}
      columnHeaderNames={{
        ordered: [
          { price: "Purchase" },
          { type: "Type" },
          { "product name": "Products name" },
          { id: "ID" },
        ],
      }}
      columnMappers={{
        ordered: [
          { type: "" },
          { "Custom Column 1": "View details" },
          { "product name": "" },
          { id: "<b>{{self}}</b>" },
          { status: "" },
        ],
      }}
      columns={[
        "id",
        "product name",
        "type",
        "price",
        "Date",
        "NAV / 1-Day Return",
        "TTM Yield",
        "Risk",
        "Open",
      ]}
      columnTypeProperties={{
        ordered: [
          { id: { ordered: [] } },
          {
            type: {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "mapped" },
                { allowCustomValue: true },
                { optionLabels: null },
                {
                  optionColors:
                    '{{item ==="Investment"? "#CCEBDE":item ==="Brokerage"? "#E9AB1150":"#d2eaf6"}}',
                },
                { optionValues: null },
              ],
            },
          },
          {
            price: {
              ordered: [
                { showSeparators: true },
                { currency: "USD" },
                { padDecimal: true },
              ],
            },
          },
          { "Custom Column 1": { ordered: [] } },
          { "product name": { ordered: [] } },
          { Date: { ordered: [{ dateFormat: "MMM d, yyyy" }] } },
          {
            "NAV / 1-Day Return": {
              ordered: [{ showSeparators: true }, { padDecimal: true }],
            },
          },
          {
            status: {
              ordered: [
                { optionData: "{{ currentColumn }}" },
                { colorMode: "auto" },
                { allowCustomValue: true },
                { optionLabels: { array: [] } },
                { optionColors: { array: [] } },
                { optionValues: { array: [] } },
              ],
            },
          },
        ],
      }}
      columnVisibility={{
        ordered: [
          { pRODname: true },
          { sdas: true },
          { untitled: true },
          { "[name": true },
          { price: true },
          { Open: true },
          { name: true },
          { sales: true },
          { "Account ID": true },
          { "Account Id": true },
          { Date: true },
          { Risk: true },
          { "Account IID": true },
          { pi: true },
          { type: true },
          { "TTM Yield": true },
          { id: true },
          { "product name": true },
          { "Product name": true },
          { email: true },
          { "NAV / 1-Day Return": true },
        ],
      }}
      columnWidths={[
        { object: { id: "email", value: 90 } },
        { object: { id: "id", value: 74 } },
        { object: { id: "price", value: 99 } },
        { object: { id: "Date", value: 112.1484375 } },
        { object: { id: "product name", value: 172.9921875 } },
      ]}
      customButtonName=""
      data="{{ getData.data }}"
      doubleClickToEdit={true}
      overflowType="scroll"
      pageSize="10"
      rowHeight="compact"
      showSummaryFooter={true}
      style={{
        ordered: [
          { toolbarAccent: "" },
          { toolbarText: "" },
          { toolbarBackground: "" },
          { border: "rgba(204, 204, 204, 0.61)" },
          { cellAccent: "" },
          { hoverRowBackground: "" },
          { selectedRowBackground: "" },
          { alternateRowBackground: "" },
          { background: "" },
          { summaryLabel: "" },
          { cellText: "" },
          { summaryAccent: "" },
          { summaryText: "" },
          { editedAccent: "" },
          { summaryBackground: "" },
          { headerAccent: "" },
          { headerText: "" },
          { headerBackground: "rgba(255, 255, 255, 1)" },
          { borderRadius: "" },
        ],
      }}
    />
    <Container
      id="updateFormContainer"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hidden="false"
      hoistFetching={true}
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      style={{
        ordered: [
          { background: "rgba(156, 167, 255, .16)" },
          { border: "{{ theme.canvas }}" },
          { borderRadius: "16px" },
        ],
      }}
    >
      <Header>
        <Text
          id="updateFormContainerTitle"
          _disclosedFields={{ array: [] }}
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="a83fc" viewKey="View 1">
        <Form
          id="updateDataForm"
          disableSubmit="{{ self.invalid }}"
          footerPadding="4px 12px"
          footerPaddingType="normal"
          headerPadding="4px 12px"
          headerPaddingType="normal"
          hidden=""
          hoistFetching={true}
          initialData="{{ table1.selectedRow.data }}"
          marginType="normal"
          padding="12px"
          paddingType="normal"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showFooter={true}
          showHeader={true}
          style={{
            ordered: [
              { border: "rgba(209, 209, 209, 0.39)" },
              { borderRadius: "8px" },
            ],
          }}
          styleContext={{ ordered: [{ borderRadius: "8px" }] }}
        >
          <Header>
            <Text
              id="formTitle1"
              _disclosedFields={{ array: ["color"] }}
              marginType="normal"
              style={{ ordered: [{ color: "rgb(56, 73, 136)" }] }}
              value={
                '#### {{ table1.selectedRow.data ? table1.selectedRow.data.memberType: "Adding a new record" }}'
              }
              verticalAlign="center"
            />
          </Header>
          <Body>
            <DateTime
              id="form_dateTime1"
              dateFormat="MMM d, yyyy"
              datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
              formDataKey="createdAt"
              iconBefore="bold/interface-calendar"
              label="Created at"
              labelPosition="top"
              marginType="normal"
              minuteStep={15}
              required={true}
              value="{{ new Date() }}"
            />
            <DateTime
              id="form_dateTime2"
              dateFormat="MMM d, yyyy"
              datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
              formDataKey="updatedAt"
              iconBefore="bold/interface-calendar"
              label="Updated at"
              labelPosition="top"
              marginType="normal"
              minuteStep={15}
              required={true}
              value="{{ new Date() }}"
            />
            <TextInput
              id="form_textInput3"
              formDataKey="aclId"
              label="Acl ID"
              labelPosition="top"
              marginType="normal"
              placeholder="Enter value"
              required={true}
            />
            <TextInput
              id="form_textInput4"
              formDataKey="memberType"
              label="Member type"
              labelPosition="top"
              marginType="normal"
              placeholder="Enter value"
              required={true}
            />
            <TextInput
              id="form_textInput5"
              formDataKey="memberId"
              label="Member ID"
              labelPosition="top"
              marginType="normal"
              placeholder="Enter value"
              required={true}
            />
            <NumberInput
              id="form_numberInput6"
              currency="USD"
              formDataKey="addedByUser"
              inputValue={0}
              label="Added by user"
              labelPosition="top"
              marginType="normal"
              placeholder="Enter value"
              required={true}
              showSeparators={true}
              showStepper={true}
              value={0}
            />
            <TextInput
              id="form_textInput7"
              formDataKey="reasonMetadata"
              label="Reason metadata"
              labelPosition="top"
              marginType="normal"
              placeholder="Enter value"
              required={true}
            />
            <TextInput
              id="form_textInput8"
              formDataKey="id"
              label="ID"
              labelPosition="top"
              marginType="normal"
              placeholder="Enter value"
              required={true}
            />
          </Body>
          <Footer>
            <Button
              id="SubmitFormButton1"
              _disclosedFields={{ array: ["background", "borderRadius"] }}
              marginType="normal"
              style={{
                ordered: [
                  { background: "rgb(156, 167, 255)" },
                  { borderRadius: "8px" },
                ],
              }}
              submit={true}
              submitTargetId="updateDataForm"
              text="Save Changes"
            />
          </Footer>
          <Event
            enabled="{{table1.selectedIndex == null}}"
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="addRow"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{table1.selectedIndex != null}}"
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="updateRow"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
      </View>
    </Container>
    <Text
      id="text1"
      marginType="normal"
      value="### organizations"
      verticalAlign="center"
    />
    <Table
      id="table2"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAllSpacesOrgs.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="993c5"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="993c5"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f6bb0"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="enabled"
        label="Enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bb8d5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="domain"
        label="Domain"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b6b18"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3b942"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="hostname"
        label="Hostname"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d1155"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d61f4"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ebdb6"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="subdomain"
        label="Subdomain"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d6522"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="trialExpiryDate"
        label="Trial expiry date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3ab10"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="preloadedJavaScript"
        label="Preloaded java script"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="110aa"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="javaScriptLinks"
        label="Java script links"
        placeholder="Select options"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8d164"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="gitUrl"
        label="Git URL"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9530c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="planId"
        label="Plan ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="26160"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="stripeCustomerId"
        label="Stripe customer ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4c606"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="billingCardholderName"
        label="Billing cardholder name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="19cf8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="billingCardLastFour"
        label="Billing card last four"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="241e0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="billingCardExpirationDate"
        label="Billing card expiration date"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="272ff"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="stripeSubscriptionId"
        label="Stripe subscription ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6b18e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="billingCardBrand"
        label="Billing card brand"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1213f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="billingCardholderEmail"
        label="Billing cardholder email"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2aff3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="preloadedCSS"
        label="Preloaded css"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3223e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="sid"
        label="Sid"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="85223"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="isCompanyAccount"
        label="Is company account"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8b017"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="companyName"
        label="Company name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bb4c2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="contactNumber"
        label="Contact number"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="93dde"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="gitBranch"
        label="Git branch"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c09e1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="twoFactorAuthRequired"
        label="Two factor auth required"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="26204"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="applyPreloadedCSSToHomepage"
        label="Apply preloaded css to homepage"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="212e8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="onboardingChecklist"
        label="Onboarding checklist"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8e33e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="idpMetadataXML"
        label="Idp metadata xml"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e97fc"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="jitEnabled"
        label="Jit enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4b044"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="onboardingStagesCompleted"
        label="Onboarding stages completed"
        placeholder="Select options"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ff446"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="themeId"
        label="Theme ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="dba39"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="licenseVerification"
        label="License verification"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="429a2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="platformLevelAuthSteps"
        label="Platform level auth steps"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2b5af"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="defaultAppThemeId"
        label="Default app theme ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7a6ab"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="protectedGitHubOrg"
        label="Protected git hub org"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e1360"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="protectedGitHubRepo"
        label="Protected git hub repo"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e3b0b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="protectedGitBranch"
        label="Protected git branch"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2586f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="protectedGitCommit"
        label="Protected git commit"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a3ddb"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="cacheQueriesPerUser"
        label="Cache queries per user"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ad7bd"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="protectedGitHubBaseUrl"
        label="Protected git hub base URL"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a26de"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="protectedGitHubEnterpriseUrl"
        label="Protected git hub enterprise URL"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e5f00"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="onpremStripeSubscriptionId"
        label="Onprem stripe subscription ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="40256"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="onpremStripePlanId"
        label="Onprem stripe plan ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8fbfd"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="inCanaryGroup"
        label="In canary group"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5da0f"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="protectedAppsSyncEnabled"
        label="Protected apps sync enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="88091"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="releaseManagementEnabled"
        label="Release management enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="326d3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="stripeCurrentPeriodStart"
        label="Stripe current period start"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="33fd1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="stripeCurrentPeriodEnd"
        label="Stripe current period end"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="03154"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="retoolDBStorageLimitBytes"
        label="Retool db storage limit bytes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0f164"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="retoolDBRowLimit"
        label="Retool db row limit"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8924a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="retoolDBQueryRateLimitRequestsPerMinute"
        label="Retool db query rate limit requests per minute"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e7e11"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="sourceControlEmailAlertingEnabled"
        label="Source control email alerting enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5afa9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="billingType"
        label="Billing type"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b35d1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="annualSubscriptionDetails"
        label="Annual subscription details"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="01192"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="workflowRunRetentionPeriodMins"
        label="Workflow run retention period mins"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="56351"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="customSSOType"
        label="Custom sso type"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a736c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="customSSOSettings"
        label="Custom sso settings"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6b4a5"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="localPermissionsManagementEnabled"
        label="Local permissions management enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a6afa"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="aiSupportBotDisabled"
        label="Ai support bot disabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3ceab"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="defaultOutboundRegion"
        label="Default outbound region"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6d870"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="trialPlanId"
        label="Trial plan ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5159f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="trialAdditionalFeatures"
        label="Trial additional features"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1b95b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="requestAccessEnabled"
        label="Request access enabled"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="86081"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="parentOrgId"
        label="Parent org ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="44798"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="isReferral"
        label="Is referral"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="feb21"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="securityContact"
        label="Security contact"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cdc3c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="twoFactorAuthSettings"
        label="Two factor auth settings"
        placeholder="Enter value"
        position="center"
        size={100}
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
          pluginId="table2"
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
          pluginId="table2"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="table3"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAllSCMrepoVersionMigration.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      primaryKeyColumnId="95429"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="95429"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="33881"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="provider"
        label="Provider"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="54446"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="organizationId"
        label="Organization ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ed295"
        alignment="left"
        cellTooltipMode="overflow"
        format="json"
        groupAggregationMode="none"
        key="config"
        label="Config"
        placeholder="Enter value"
        position="center"
        size={100}
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
          pluginId="table3"
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
          pluginId="table3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Table
      id="table4"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getAllFolders.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="d91ba"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="d91ba"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9adc3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="43b15"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="d48a7"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="host"
        label="Host"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="3f60b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="port"
        label="Port"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="58a7a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="databaseName"
        label="Database name"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="36617"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="databaseUsername"
        label="Database username"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="abe6f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="databasePassword"
        label="Database password"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="54fe3"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="22707"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="aecdf"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="organizationId"
        label="Organization ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="277ff"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="ssl"
        label="Ssl"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="06e85"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="editPrivilege"
        label="Edit privilege"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ed5c2"
        alignment="left"
        cellTooltipMode="overflow"
        format="json"
        groupAggregationMode="none"
        key="options"
        label="Options"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getAllFolders"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="c300b"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="environment"
        label="Environment"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="cf9e8"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="dynamicallyQueryable"
        label="Dynamically queryable"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="691ee"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="displayName"
        label="Display name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="dc26b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="environmentId"
        label="Environment ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="bbbe4"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="resourceFolderId"
        label="Resource folder ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="e17d3"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="protected"
        label="Protected"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2d39e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="authorId"
        label="Author ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="2c599"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="lastSyncedChecksum"
        label="Last synced checksum"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="c8127"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="uuid"
        label="UUID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0949d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d342f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="outboundRegion"
        label="Outbound region"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6fdc7"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="whitelabeled"
        label="Whitelabeled"
        placeholder="Enter value"
        position="center"
        size={100}
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
          pluginId="table4"
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
          pluginId="table4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </Frame>
</App>
