<Container
  id="tabbedContainer20"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  transition="slide"
>
  <Header>
    <Tabs
      id="tabs18"
      hidden=""
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer20"
      value="{{ self.values[0] }}"
    >
      <Option id="8c4bb" value="Tab 1" />
      <Option id="796d2" value="Tab 2" />
      <Option id="78ed4" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="99918" label="{{ i18n.t('General') }}" viewKey="General">
    <KeyValue
      id="keyValue4"
      data="{{tableProject4.selectedRow}}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="Reporter"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{ i18n.t('Reporter') }}"
      />
      <Property
        id="issueID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Issue id"
      />
      <Property
        id="projectID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Project id"
      />
      <Property
        id="issue_index"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Issue index"
      />
      <Property
        id="project_typeID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Project type id"
      />
      <Property
        id="issue"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Summary')}}"
      />
      <Property
        id="statusID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Status id"
      />
      <Property
        id="currentUserFirstNa"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Current user first na"
      />
      <Property
        id="deviation_index"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Deviation index"
      />
      <Property
        id="created_by"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        hidden="true"
        label="Created by"
      />
      <Property
        id="field_value"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Type of Batch')}}"
      />
      <Property
        id="created_at"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="true"
        label="Created at"
      />
      <Property
        id="batchNos"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{ i18n.t('Batch No\'s') }}"
      />
      <Property
        id="parentBatchNo"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{ i18n.t('Parent batch No.') }}"
      />
      <Property
        id="packType"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{ i18n.t('Pack Type') }}"
      />
      <Property
        id="itemNos"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{ i18n.t('Item No\'s') }}"
      />
      <Property
        id="yield"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{ i18n.t('Yield') }}"
      />
      <Property
        id="reference_issueID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Reference issue id"
      />
      <Property
        id="reporter_avatarURL"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        hidden="true"
        label="Reporter avatar url"
      />
      <Property
        id="reporter_lastName"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Reporter last name"
      />
      <Property
        id="reporter_firstname"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Reporter firstname"
      />
      <Property
        id="firstName"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="First name"
      />
      <Property
        id="lastName"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Last name"
      />
      <Property
        id="deviation_summary"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Deviation summary"
      />
      <Property
        id="assigned_to"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        hidden="true"
        label="Assigned to"
      />
      <Property
        id="typeofCertification"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{ i18n.t('Type of Certification') }}"
      />
      <Property
        id="company_name"
        editable="false"
        editableOptions={{}}
        format="tag"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Company name"
      />
      <Property
        id="clientID"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Client id"
      />
      <Property
        id="markets"
        editable="false"
        editableOptions={{}}
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Markets"
        valueOverride="{{ JSON.parse(getIssue8.data.markets[0]) }}"
      />
    </KeyValue>
    <Text
      id="text53"
      hidden="{{ tableProject4.selectedRow.description == null}}"
      value="###### {{ i18n.t('Description') }}"
      verticalAlign="center"
    />
    <Text
      id="text52"
      heightType="fixed"
      margin="5px 8px"
      value="###### {{ tableProject4.selectedRow.description}}"
    />
  </View>
  <View
    id="e0c1c"
    label="{{ i18n.t('Comments') }}  ({{ getComments7.data.length }})"
    viewKey="View 2"
  >
    <Include src="./collapsibleComments3.rsx" />
  </View>
  <View
    id="4dd2b"
    disabled={false}
    hidden=" {{ formatDataAsArray(get_attachments4.data).length == 0}} "
    iconPosition="left"
    label="{{ i18n.t('Attachments') }} ({{  formatDataAsArray(get_attachments4.data).length }})"
    viewKey="attachments"
  >
    <Text
      id="text54"
      hidden="{{  formatDataAsArray(get_attachments4.data).length != 0 }} "
      horizontalAlign="center"
      value="No attachments to display"
      verticalAlign="center"
    />
    <Container
      id="container11"
      _gap={0}
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle36"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="4fa5e" viewKey="View 1">
        <Container
          id="collapsibleAttachments4"
          _gap={0}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showBorder={false}
          style={{ ordered: [] }}
        >
          <Header>
            <Text
              id="collapsibleTitle23"
              value="#### Attachments ({{  formatDataAsArray(get_attachments4.data).length }})"
              verticalAlign="center"
            />
            <ToggleButton
              id="collapsibleToggle6"
              disabled="{{  formatDataAsArray(get_attachments4.data).length === 0 }} "
              horizontalAlign="right"
              iconForFalse="bold/interface-arrows-button-down"
              iconForTrue="bold/interface-arrows-button-up"
              iconPosition="replace"
              styleVariant="outline"
              text="{{ self.value ? 'Hide' : 'Show' }}"
              value="{{ collapsibleAttachments4.showBody }}"
            >
              <Event
                event="change"
                method="setShowBody"
                params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
                pluginId="collapsibleAttachments4"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </ToggleButton>
          </Header>
          <View id="8d38d" viewKey="View 1">
            <Table
              id="table14"
              cellSelection="none"
              clearChangesetOnSave={true}
              data="{{ get_attachments4.data.Contents }}"
              defaultSelectedRow={{
                mode: "index",
                indexType: "display",
                index: 0,
              }}
              emptyMessage="No rows found"
              enableSaveActions={true}
              heightType="auto"
              hidden="{{  formatDataAsArray(get_attachments4.data).length === 0 }} "
              showFooter={true}
              showHeader={true}
              toolbarPosition="bottom"
            >
              <Column
                id="450d9"
                alignment="left"
                cellTooltipMode="overflow"
                format="string"
                groupAggregationMode="none"
                hidden="true"
                key="Key"
                label="Key"
                placeholder="Enter value"
                position="center"
                size={171}
                summaryAggregationMode="none"
              />
              <Column
                id="e058f"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                key="Key"
                label="Name"
                placeholder="Enter value"
                position="center"
                referenceId="Name"
                size={259}
                summaryAggregationMode="none"
                valueOverride="{{ item.replace(('deviation/' + tableProject4.selectedRow.issueID) + '/','').substring(36) }}"
              />
              <Column
                id="7c863"
                alignment="right"
                format="date"
                groupAggregationMode="none"
                key="LastModified"
                label="Last modified"
                placeholder="Enter value"
                position="center"
                size={100}
                summaryAggregationMode="none"
              />
              <Column
                id="4b031"
                alignment="left"
                format="json"
                groupAggregationMode="none"
                hidden="true"
                key="ETag"
                label="E tag"
                placeholder="Enter value"
                position="center"
                size={100}
                summaryAggregationMode="none"
              />
              <Column
                id="33ede"
                alignment="left"
                cellTooltipMode="overflow"
                format="tags"
                formatOptions={{ automaticColors: true }}
                groupAggregationMode="none"
                hidden="true"
                key="ChecksumAlgorithm"
                label="Checksum algorithm"
                placeholder="Select options"
                position="center"
                size={100}
                summaryAggregationMode="none"
              />
              <Column
                id="5e577"
                alignment="left"
                format="string"
                groupAggregationMode="none"
                hidden="true"
                key="StorageClass"
                label="Storage class"
                placeholder="Enter value"
                position="center"
                size={100}
                summaryAggregationMode="none"
              />
              <Event
                event="selectRow"
                method="setHidden"
                params={{ ordered: [{ hidden: false }] }}
                pluginId="tabbedContainer21"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Table>
            <Container
              id="tabbedContainer21"
              _gap={0}
              currentViewKey="{{table14.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
              enableFullBleed={true}
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              heightType="fixed"
              hidden="{{  formatDataAsArray(get_attachments4.data).length === 0 }} "
              overflowType="hidden"
              padding="12px"
              showBody={true}
              showBorder={false}
              showHeader={true}
            >
              <Header>
                <Tabs
                  id="tabs19"
                  hidden="true"
                  itemMode="static"
                  navigateContainer={true}
                  targetContainerId="tabbedContainer21"
                  value="{{ self.values[0] }}"
                >
                  <Option id="f6da4" value="Tab 1" />
                  <Option id="6de08" value="Tab 2" />
                  <Option id="50e9b" value="Tab 3" />
                </Tabs>
              </Header>
              <View id="a4848" viewKey="image">
                <Image
                  id="image9"
                  fit="contain"
                  heightType="fixed"
                  horizontalAlign="center"
                  src="{{readFile7.data.Body}}"
                />
              </View>
              <View id="95ad1" viewKey="pdf">
                <PDFViewer
                  id="pdf7"
                  showTopBar={true}
                  src="{{readFile7.data.Body}}"
                />
              </View>
            </Container>
          </View>
        </Container>
      </View>
    </Container>
  </View>
</Container>
