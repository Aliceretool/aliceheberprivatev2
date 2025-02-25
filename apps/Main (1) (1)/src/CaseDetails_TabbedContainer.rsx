<Container
  id="CaseDetails_TabbedContainer"
  _align="center"
  _direction="vertical"
  _gap="0px"
  _type="stack"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="20px 24px 0 16px"
  padding="12px 24px 20px 16px"
  showBody={true}
  showHeader={true}
  showHeaderBorder={false}
>
  <Header>
    <Container
      id="stack26"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="5ff39" viewKey="View 1">
        <Tabs
          id="CaseDetails_Tabs"
          itemMode="static"
          navigateContainer={true}
          style={{
            ordered: [
              { fontSize: "tokens/63ad6cd6" },
              { fontWeight: "tokens/63ad6cd6" },
              { fontFamily: "tokens/63ad6cd6" },
            ],
          }}
          styleVariant="lineBottom"
          targetContainerId="CaseDetails_TabbedContainer"
          value="{{ self.values[0] }}"
        >
          <Option id="99c20" value="Tab 1" />
          <Option id="ff5f5" value="Tab 2" />
          <Option id="17168" value="Tab 3" />
        </Tabs>
        <Module
          id="sendEmailSmsModule1"
          heightType="fixed"
          inputCase="{{ sendInteractionState.value.case }}"
          name="Send Email SMS module"
          open="{{ sendInteractionState.value.open }}"
          pageUuid="26c28cd0-28b6-4c0b-94f6-f17557ccf094"
          type="{{ sendInteractionState.value.type }}"
        />
      </View>
    </Container>
  </Header>
  <View id="961c9" label="Case Details">
    <Include src="./CaseDetails_Case_Container.rsx" />
  </View>
  <View
    id="e197e"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Location"
  >
    <Container
      id="CaseDetails_Location_Container"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="e85a2" viewKey="View 1">
        <Container
          id="LocationHistory_Stack"
          _direction="vertical"
          _gap="10px"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          overflowType="hidden"
          padding="0"
          showBody={true}
          showBorder={false}
        >
          <View id="9ec3a" viewKey="View 1">
            <Button
              id="LocationHistory_AddLocation_Button"
              heightType="auto"
              iconBefore="bold/interface-add-1"
              text="Add location"
            >
              <Event
                event="click"
                method="setCurrentView"
                params={{ ordered: [{ viewKey: "1" }] }}
                pluginId="BeneficiaryLocation_TabbedContainer"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="click"
                method="setValue"
                params={{ ordered: [{ value: "null" }] }}
                pluginId="selectedLocation"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <ListViewBeta
              id="Locations_List"
              _primaryKeys=""
              data="{{ locationsListTransformer.value }}"
              heightType="auto"
              itemWidth="200px"
              margin="0"
              maxHeight="100vh"
              numColumns={3}
              padding="0"
            >
              <Container
                id="Location_Container"
                footerPadding="4px 12px"
                headerPadding="4px 12px"
                margin="10px 0px"
                padding="0"
                showBorder={false}
                showHeader={true}
                showHeaderBorder={false}
                style={{ ordered: [{ background: "canvas" }] }}
              >
                <Header>
                  <Text
                    id="Location_Container_Title"
                    style={{ ordered: [{ background: "canvas" }] }}
                    value="{{ item.isInitialSituation ? `#### ${item.locationHeader}
###### ${item.locationSubHeader}
 ${item.createdBy}
${ item.location}`: `#### ${item.startDate}
#### ${item.endDate}
###### ${item.city} ` }}

"
                    verticalAlign="center"
                  />
                  <Icon
                    id="Location_Container_Mna_Icon"
                    hidden="{{ !item.is_mna }}"
                    horizontalAlign="center"
                    icon="bold/health-medical-bag"
                  />
                  <TagsWidget2
                    id="Location_Container_Country_Tag"
                    _colorByIndex={[
                      "{{ item?.country?.countryCategory?.category }}",
                    ]}
                    _hiddenByIndex={[false]}
                    _iconByIndex={[""]}
                    _ids={["ca02b"]}
                    _imageByIndex={[""]}
                    _labels={["{{ item?.country?.country }}"]}
                    _textColorByIndex={[""]}
                    _tooltipByIndex={[""]}
                    _values={["Tag 1"]}
                    allowWrap={true}
                    colorByIndex=""
                    data=""
                    hidden="{{!item?.item?.country_id}}"
                    hiddenByIndex=""
                    iconByIndex=""
                    imageByIndex=""
                    itemMode="static"
                    labels=""
                    textColorByIndex=""
                    tooltipByIndex=""
                    value=""
                    values=""
                  />
                  <TagsWidget2
                    id="Location_Container_CountySettings_Tags"
                    _colorByIndex={["", ""]}
                    _hiddenByIndex={[
                      "{{ !item.eec }}",
                      "{{ item.sanction === 'No' || !item.sanction }}",
                    ]}
                    _iconByIndex={["", ""]}
                    _ids={["1cd8f", "2c220"]}
                    _imageByIndex={["", ""]}
                    _labels={["EEC", "Sanction"]}
                    _textColorByIndex={["", ""]}
                    _tooltipByIndex={["", ""]}
                    _values={["{{ item.eec }}", "Tag 2"]}
                    allowWrap={true}
                    colorByIndex=""
                    data=""
                    hidden="{{ item.isInitialSituation || (!item.eec && (item.sanction === 'No' || !item.sanction)) }}"
                    hiddenByIndex=""
                    iconByIndex=""
                    imageByIndex=""
                    itemMode="static"
                    labels=""
                    textColorByIndex=""
                    tooltipByIndex=""
                    values=""
                  />
                </Header>
                <View id="6ddd0" viewKey="View 1" />
                <Event
                  enabled=""
                  event="click"
                  method="setCurrentViewIndex"
                  params={{
                    ordered: [
                      { viewIndex: "{{ item.isInitialSituation ? 0 : 1}}" },
                    ],
                  }}
                  pluginId="BeneficiaryLocation_TabbedContainer"
                  type="widget"
                  waitMs="0"
                  waitType="debounce"
                />
                <Event
                  event="click"
                  method="setValue"
                  params={{ ordered: [{ value: "{{ item }}" }] }}
                  pluginId="selectedLocation"
                  type="state"
                  waitMs="0"
                  waitType="debounce"
                />
              </Container>
            </ListViewBeta>
          </View>
        </Container>
        <Container
          id="BeneficiaryLocation_TabbedContainer"
          _gap="0px"
          currentViewKey="{{ self.viewKeys[0] }}"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          overflowType="hidden"
          padding="0"
          showBody={true}
          showBorder={false}
          showFooter={true}
          showFooterBorder={false}
        >
          <Header>
            <Tabs
              id="LocationTab_LocationContainer_Tabs"
              itemMode="static"
              navigateContainer={true}
              targetContainerId="BeneficiaryLocation_TabbedContainer"
              value="{{ self.values[0] }}"
            >
              <Option id="43331" value="Tab 1" />
              <Option id="5573e" value="Tab 2" />
              <Option id="dbe11" value="Tab 3" />
            </Tabs>
          </Header>
          <View id="0a65d" label="Initial Situation">
            <Form
              id="Location_InitialSituation_Form"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              initialData="{{ caseInfoTransformer.value }}"
              margin="0"
              padding="12px"
              resetAfterSubmit={true}
              showBody={true}
              showBorder={false}
              showFooterBorder={false}
              showHeader={true}
              showHeaderBorder={false}
            >
              <Header>
                <Text
                  id="InitialSituation_Form_Title4"
                  style={{
                    ordered: [
                      { fontSize: "labelFont" },
                      { fontWeight: "labelFont" },
                      { fontFamily: "labelFont" },
                    ],
                  }}
                  value="##### Initial Event"
                  verticalAlign="center"
                />
              </Header>
              <Body>
                <Date
                  id="InitialSituation_Form_Event_Date4"
                  customValidation="{{ new Date(self.value) <= new Date() ? '' : 'The date must be in the past' }}"
                  dateFormat="MMM d, yyyy"
                  datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
                  formDataKey="eventDate"
                  iconBefore="bold/interface-calendar"
                  label="Event date"
                  labelPosition="top"
                  required={true}
                  value="{{ GetCase.data?.eventDate || new Date() }}"
                />
                <Select
                  id="InitialSituation_Form_CaseNature_Select4"
                  customValidation="{{ self.value ? '' : 'Please choose the Case nature' }}"
                  data="{{ GetCaseNaturesCasePage.data }}"
                  emptyMessage="No options"
                  formDataKey="case_nature_id"
                  label="Case nature"
                  labelPosition="top"
                  labels="{{ _.startCase(item.name) }}"
                  overlayMaxHeight={375}
                  placeholder="{{ self?.data?.[0]?.name }}"
                  required={true}
                  showClear={true}
                  showSelectionIndicator={true}
                  value="{{ GetCase.data?.case_nature_id }}"
                  values="{{ item.id }}"
                />
                <Select
                  id="InitialSituation_Form_EventType_Select4"
                  data="{{ GetEventTypes.data }}"
                  emptyMessage="No options"
                  formDataKey="event_id"
                  label="Event Type"
                  labelPosition="top"
                  labels="{{ item.type }}"
                  overlayMaxHeight={375}
                  placeholder="{{ self?.data?.[0]?.type }}"
                  showSelectionIndicator={true}
                  value=""
                  values="{{ item.id }}"
                />
                <TextInput
                  id="InitialSituation_Form_EventDescr_Input4"
                  formDataKey="eventDescription"
                  label="Event description"
                  labelPosition="top"
                  placeholder="Supporting line text lorem ipsum dolor sit amet, consectetur."
                  showClear={true}
                  style={{ ordered: [{ background: "canvas" }] }}
                  value="{{ GetCase.data?.eventDescription }}"
                />
                <Checkbox
                  id="InitialSituation_Form_Crisis_Checkbox4"
                  formDataKey="isCrisis"
                  label="Crisis"
                  labelWidth="100"
                  value="{{ GetCase?.data?.isCrisis }}"
                />
                <Select
                  id="InitialSituation_Form_CrisisType_Select4"
                  data="{{ GetCrisisTypes.data }}"
                  disabled="{{ !InitialSituation_Form_Crisis_Checkbox4.value }}"
                  emptyMessage="No options"
                  formDataKey="crisis_type_id"
                  label="Crisis Type"
                  labelPosition="top"
                  labels="{{ item.type }}"
                  overlayMaxHeight={375}
                  placeholder="{{ self.data[0]?.type }}"
                  required="{{ InitialSituation_Form_Crisis_Checkbox4.value }}"
                  showClear={true}
                  showSelectionIndicator={true}
                  value="{{ GetCase?.data?.crisis_id }}"
                  values="{{ item.id }}"
                />
                <Select
                  id="InitialSituation_Form_CrisisLabel_Select4"
                  data="{{ GetCrises.data }}"
                  disabled="{{ !InitialSituation_Form_Crisis_Checkbox.value || !InitialSituation_Form_CrisisType_Select4.value }}"
                  emptyMessage="No options"
                  formDataKey="crisis_id"
                  label="Crisis label"
                  labelPosition="top"
                  labels="{{ item.label }}"
                  overlayMaxHeight={375}
                  placeholder="{{ self?.data[0]?.value }}"
                  readOnly=""
                  required="{{ InitialSituation_Form_Crisis_Checkbox4.value }}"
                  showSelectionIndicator={true}
                  value=""
                  values="{{ item.id }}"
                />
              </Body>
            </Form>
          </View>
          <View id="3cdcf" label="Patient Location" viewKey="1">
            <Form
              id="BeneficiaryLocation_Container_PatientLoc_Form"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              hoistFetching={true}
              initialData="{{ caseInfoTransformer.value }}"
              padding="12px"
              resetAfterSubmit={true}
              showBody={true}
              showBorder={false}
              showFooterBorder={false}
              showHeader={true}
              showHeaderBorder={false}
            >
              <Header>
                <Text
                  id="PatientLoc_Form_Title"
                  style={{
                    ordered: [
                      { fontSize: "labelFont" },
                      { fontWeight: "labelFont" },
                      { fontFamily: "labelFont" },
                    ],
                  }}
                  value="##### Patient Location"
                  verticalAlign="center"
                />
              </Header>
              <Body>
                <IconText
                  id="PatientLoc_Form_Country_Tag"
                  hidden="{{ !LocationTab_Location_Country_Select?.selectedItem?.eec }}"
                  icon="bold/interface-alert-warning-triangle-alternate"
                  iconPosition="right"
                  margin="0"
                  style={{
                    ordered: [
                      { fontSize: "h4Font" },
                      { fontWeight: "h4Font" },
                      { fontFamily: "h4Font" },
                      { color: "warning" },
                      { iconColor: "warning" },
                    ],
                  }}
                  text="EEC "
                />
                <Date
                  id="LocationTab_Location_End_Date"
                  dateFormat="MMM d, yyyy"
                  datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
                  formDataKey="eventDate"
                  iconBefore="bold/interface-calendar"
                  label="End date"
                  labelPosition="top"
                  value="{{ currentLocation?.value?.end_date || new Date() }}"
                />
                <Date
                  id="LocationTab_Location_Start_Date"
                  dateFormat="MMM d, yyyy"
                  datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
                  formDataKey="eventDate"
                  iconBefore="bold/interface-calendar"
                  label="Start date"
                  labelPosition="top"
                  required={true}
                  value="{{ currentLocation.value?.start_date || new Date() }}"
                />
                <Select
                  id="LocationTab_Location_Country_Select"
                  colorByIndex="{{ item.countryCategory.category }}"
                  data="{{ GetCountries.data }}"
                  emptyMessage="No options"
                  label="Country"
                  labelPosition="top"
                  labels="{{ item.country }}"
                  overlayMaxHeight={375}
                  placeholder="Select an option"
                  showSelectionIndicator={true}
                  value="{{ currentLocation?.value?.country_id }}"
                  values="{{ item.id }}"
                />
              </Body>
            </Form>
          </View>
          <Footer>
            <Module
              id="BeneficiaryLocationModule_LocationTab"
              locationInput="{{ JSON.stringify(currentLocation.value) }}"
              name="Beneficiary Location module"
              pageUuid="f45b32e3-6c64-46d2-80b2-90dea614e9f5"
            />
          </Footer>
        </Container>
        <Button id="BeneficiaryLocation_TabbedContainer_SaveButton" text="Save">
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="createUpdateLocationLTHandler"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </View>
  <View id="4fa22" label="Situation" />
  <View id="f039a" label="Medical" />
  <View
    id="fd865"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Missions summary"
  />
  <View
    id="99ea5"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Missions details"
  >
    <Container
      id="MissionDetails_Container"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="425fb" viewKey="View 1">
        <Button
          id="CreateService_Button"
          iconBefore="bold/interface-add-2"
          text="Create service"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="CreateService_ModalFrame"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </View>
  <View
    id="98c3b"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Documentation"
  >
    <Include src="./Documentation_Container.rsx" />
  </View>
  <View
    id="d2adc"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Tasks"
  >
    <Container
      id="container27"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle35"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="2e585" viewKey="View 1">
        <Select
          id="Task_Label_Select"
          emptyMessage="No options"
          itemMode="static"
          label="Task label"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showClear={true}
          showSelectionIndicator={true}
        >
          <Option id="39f52" value="Option 1" />
          <Option id="fc223" value="Option 2" />
          <Option id="22825" value="Option 3" />
        </Select>
        <Include src="./stack23.rsx" />
      </View>
    </Container>
    <Table
      id="Task_List_Table"
      actionsOverflowPosition={3}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ GetTasksListByCase.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicColumnProperties={{ formatByIndex: "auto" }}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableExpandableRows={true}
      enableSaveActions={true}
      heightType="auto"
      margin="0"
      primaryKeyColumnId="7e747"
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Include src="./Task_List_TableExpandedRow.rsx" />
      <Column
        id="7e747"
        alignment="left"
        editable="false"
        format="string"
        formatOptions={{ notation: "standard" }}
        groupAggregationMode="countDistinct"
        key="key"
        label="Task ID"
        placeholder="Enter value"
        position="center"
        size={104.359375}
        summaryAggregationMode="none"
      />
      <Column
        id="a6026"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="label_name"
        label="Label"
        placeholder="Enter value"
        position="center"
        size={69.5}
        summaryAggregationMode="none"
      />
      <Column
        id="b20d5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="category_id"
        label="Category"
        placeholder="Enter value"
        position="center"
        size={79.703125}
        summaryAggregationMode="none"
        valueOverride="{{ GetTaskCategories.data.find(category => category.id === currentSourceRow.category_id)?.name || '' }}"
      />
      <Column
        id="3b733"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="priority_id"
        label="Priority"
        placeholder="Enter value"
        position="center"
        size={84.0625}
        summaryAggregationMode="none"
        valueOverride="{{ GetTaskPriorities.data.find(priority => priority.id === currentSourceRow.priority_id)?.name || '' }}"
      />
      <Column
        id="198f0"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status_id"
        label="Status"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ GetTaskStatuses.data.find(status => status.id === currentSourceRow.status_id)?.name || '' }}"
      />
      <Column
        id="b994a"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: false, notation: "standard" }}
        groupAggregationMode="sum"
        key="date"
        label="Due date"
        placeholder="Enter value"
        position="center"
        size={86.546875}
        summaryAggregationMode="none"
        textColor={
          '{{ new Date(currentSourceRow.date) < new Date() ? "#FF0000" : null }}'
        }
        valueOverride={
          '{{ moment(currentSourceRow.date).format("MMM DD, yyyy, hh:mm A") }}'
        }
      />
      <Column
        id="720a2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Patient location"
        placeholder="Enter value"
        position="center"
        referenceId="patientLocation"
        size={120.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="63255"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="comments"
        label="Comments"
        placeholder="Enter value"
        position="center"
        size={119}
        summaryAggregationMode="none"
      />
      <Column
        id="4ada3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Assignee"
        placeholder="Enter value"
        position="center"
        referenceId="assignee"
        size={80.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="2dde7"
        alignment="left"
        format="link"
        groupAggregationMode="none"
        key="website"
        label="Mandatory"
        position="center"
        size={105.9375}
        summaryAggregationMode="none"
      />
      <Column
        id="0340d"
        alignment="left"
        caption="{{ currentSourceRow.email }}"
        format="avatar"
        groupAggregationMode="none"
        key="email"
        label="Owner"
        position="center"
        referenceId="name"
        size={74.953125}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.firstName }} {{ currentSourceRow.lastName }}"
      />
      <Action
        id="23a61"
        hidden={
          '{{ ["Completed", "Cancelled"].includes(GetTaskStatuses.data.find(status => status.id === currentSourceRow.status_id)?.name) }}'
        }
        icon="bold/interface-validation-check"
        label="Complete"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    {
                      additionalScope: {
                        ordered: [{ selectedRow: "{{ currentSourceRow }}" }],
                      },
                    },
                  ],
                },
              },
            ],
          }}
          pluginId="completeTaskHandle"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="df971"
        hidden={
          '{{ ["Completed", "Cancelled"].includes(GetTaskStatuses.data.find(status => status.id === currentSourceRow.status_id)?.name) }}'
        }
        icon="bold/interface-delete-1"
        label="Delete"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    {
                      additionalScope: {
                        ordered: [{ selectedRow: "{{ currentSourceRow }}" }],
                      },
                    },
                  ],
                },
              },
            ],
          }}
          pluginId="cancelTaskModalHandle"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action
        id="66d04"
        hidden={
          '{{ ["Opened",].includes(GetTaskStatuses.data.find(status => status.id === currentSourceRow.status_id)?.name) }}'
        }
        icon="bold/interface-edit-select-area-circle-dot"
        label="Reopen"
      >
        <Event
          event="clickAction"
          method="trigger"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    {
                      additionalScope: {
                        ordered: [{ selectedRow: "{{ currentSourceRow }}" }],
                      },
                    },
                  ],
                },
              },
            ],
          }}
          pluginId="reopenTaskHandle"
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
          pluginId="Task_List_Table"
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
          pluginId="Task_List_Table"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="doubleClickRow"
        method="run"
        params={{
          ordered: [
            {
              src: "taskId.setValue(currentSourceRow.id)\nmodalTaskUpdating.show()",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="d1220"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Interactions"
  >
    <Module
      id="interactionsListModule4"
      initialFilters=""
      inputInteractions="{{ GetInteractions.data }}"
      interactionsList="{{ GetInteractions.data }}"
      isCaseNumberHidden="true"
      name="Interactions list module"
      pageUuid="fd7a36de-b8be-49b7-b536-1441ddbc0309"
      refetchInteractions="GetInteractions"
    />
  </View>
  <View
    id="07237"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Audit Trail"
  />
  <View
    id="e5251"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Contacts"
  >
    <Container
      id="CaseContact_Container"
      _direction="vertical"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      loading=""
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showBorder={false}
      showHeader={true}
      style={{ ordered: [{ border: "surfacePrimary" }] }}
    >
      <Header>
        <Text
          id="Contact_Title"
          style={{
            ordered: [
              { fontSize: "h5Font" },
              { fontWeight: "h5Font" },
              { fontFamily: "h5Font" },
            ],
          }}
          value="Contact"
          verticalAlign="center"
        />
        <Select
          id="ContentRole_Select"
          data="{{ GetContactRoles.data }}"
          emptyMessage="No options"
          label=""
          labelPosition="top"
          labels="{{ item.name }}"
          margin="4px 1px"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.id }}"
        />
        <Button
          id="AddContact_Button"
          disabled="{{ !ContentRole_Select.selectedItem }}"
          heightType="auto"
          iconBefore="bold/interface-add-1"
          style={{ ordered: [{ borderRadius: "8px" }] }}
          text="Add Contact"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="addContactHandler"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="8c332" viewKey="View 1">
        <ListViewBeta
          id="CaseContact_ListView"
          _primaryKeys="{{ item.id }}"
          data="{{ contactList.value }}"
          enableInstanceValues={true}
          heightType="auto"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Divider
            id="divider12"
            margin="16px 8px"
            style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          />
          <Form
            id="Contact_Form"
            disabled=""
            disableSubmit="{{ Contact_Form.invalid }}"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            hoistFetching={true}
            margin="0"
            padding="0"
            requireValidation={true}
            resetAfterSubmit={true}
            showBody={true}
            showBorder={false}
            showFooter="false"
            showHeader="false"
            style={{ ordered: [{ border: "rgba(0, 0, 0, 1)" }] }}
          >
            <Container
              id="TitleAndButtons"
              _gap="0px"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="d1271" viewKey="View 1">
                <Text
                  id="ContactRole_Text"
                  margin="8px"
                  style={{
                    ordered: [
                      { fontSize: "h6Font" },
                      { fontWeight: "h6Font" },
                      { fontFamily: "h6Font" },
                    ],
                  }}
                  value="{{  item.contactRole.name }}"
                  verticalAlign="center"
                />
                <ButtonGroup2
                  id="Contact_ButtonGroup"
                  alignment="left"
                  hidden=""
                  maintainSpaceWhenHidden={true}
                  margin="0"
                  overflowPosition={3}
                >
                  <ButtonGroup2-Button
                    id="cef38"
                    backgroundColor="#ffffff"
                    hidden="{{ isCreating.value && i === currentContactIndex.value }}"
                    icon="bold/interface-delete-bin-2"
                    iconPosition="replace"
                    labelColor="#ff0000"
                    styleVariant="transparent"
                    text="Delete contact"
                    tooltip="Delete contact"
                  >
                    <Event
                      event="click"
                      method="trigger"
                      params={{
                        ordered: [
                          {
                            options: {
                              ordered: [
                                {
                                  additionalScope: {
                                    ordered: [{ contactId: "{{ item.id }}" }],
                                  },
                                },
                              ],
                            },
                          },
                        ],
                      }}
                      pluginId="deleteContactHandler"
                      type="datasource"
                      waitMs="0"
                      waitType="debounce"
                    />
                  </ButtonGroup2-Button>
                  <ButtonGroup2-Button
                    id="4895e"
                    hidden="{{ isCreating.value && i === currentContactIndex.value }}"
                    icon="bold/interface-edit-write-1"
                    iconPosition="replace"
                    styleVariant="transparent"
                    text="Edit contact"
                    tooltip="Edit contact"
                  >
                    <Event
                      event="click"
                      method="trigger"
                      params={{
                        ordered: [
                          {
                            options: {
                              ordered: [
                                {
                                  additionalScope: {
                                    ordered: [{ index: "{{ i }}" }],
                                  },
                                },
                              ],
                            },
                          },
                        ],
                      }}
                      pluginId="editContactButtonHandler"
                      type="datasource"
                      waitMs="0"
                      waitType="debounce"
                    />
                  </ButtonGroup2-Button>
                  <ButtonGroup2-Button
                    id="8f59b"
                    hidden="{{ !isCreating.value || i !== currentContactIndex.value }}"
                    icon="bold/interface-delete-2"
                    iconPosition="replace"
                    styleVariant="outline"
                    text="Cancel creating"
                    tooltip="Cancel creating"
                  >
                    <Event
                      event="click"
                      method="trigger"
                      params={{ ordered: [] }}
                      pluginId="cancelContactCreation"
                      type="datasource"
                      waitMs="0"
                      waitType="debounce"
                    />
                  </ButtonGroup2-Button>
                </ButtonGroup2>
              </View>
            </Container>
            <TextInput
              id="FirstName_TextInput"
              disabled=""
              formDataKey="firstName"
              label="First name"
              labelPosition="top"
              placeholder="Enter first name"
              readOnly="{{ i !== currentContactIndex.value }}"
              required={'{{ item.contactRole.name !== "Beneficiary" }}'}
              value="{{ item.firstName }}"
            />
            <TextInput
              id="LastName_TextInput"
              disabled=""
              formDataKey="lastName"
              label="Last name"
              labelPosition="top"
              placeholder="Enter last name"
              readOnly="{{ i !== currentContactIndex.value }}"
              required={'{{ item.contactRole.name !== "Beneficiary" }}'}
              value="{{ item.lastName }}"
            />
            <PhoneNumberInput
              id="PhoneNumber_Input"
              disabled=""
              formDataKey="phoneNumber"
              label="Phone number"
              labelPosition="top"
              lockedCountryCode="US"
              readOnly="{{ i !== currentContactIndex.value }}"
              value="{{ item.phoneNumber }}"
            />
            <TextInput
              id="Email_TextInput"
              disabled=""
              formDataKey="email"
              iconBefore="bold/mail-send-envelope"
              label="Email"
              labelPosition="top"
              patternType="email"
              placeholder="you@example.com"
              readOnly="{{ i !== currentContactIndex.value }}"
              value="{{ item.email }}"
            />
            <TextInput
              id="Address_TextInput"
              disabled=""
              formDataKey="address"
              label="Address"
              labelPosition="top"
              placeholder="Enter address"
              readOnly="{{ i !== currentContactIndex.value }}"
              value="{{ item.address }}"
            />
            <Date
              id="Beneficiary_Form_Birthdate_Date2"
              dateFormat="MMM d, yyyy"
              datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
              formDataKey="birthday"
              hidden={'{{ item.contactRole.name !== "Beneficiary" }}'}
              iconBefore="bold/interface-calendar"
              label="Birthday"
              labelPosition="top"
              readOnly="{{ i !== currentContactIndex.value }}"
              value="{{ item.birthday }}"
            />
            <Select
              id="Beneficiary_Form_Nationality_Select2"
              data="{{ GetNationalities.data }}"
              emptyMessage="No options"
              formDataKey="beneficiary_nationality_id"
              hidden={'{{ item.contactRole.name !== "Beneficiary" }}'}
              label="Nationality"
              labelPosition="top"
              labels="{{ item.nationaity }}"
              overlayMaxHeight={375}
              placeholder="{{ self.data[0].nationaity }}"
              readOnly="{{ i !== currentContactIndex.value }}"
              showClear={true}
              showSelectionIndicator={true}
              value="{{ item.beneficiary_nationality_id }}"
              values="{{ item.id }}"
            />
            <TextArea
              id="Note_TextArea"
              disabled=""
              formDataKey="note"
              label="Note"
              labelPosition="top"
              minLines={2}
              placeholder="Add some notes"
              readOnly="{{ i !== currentContactIndex.value }}"
              value="{{ item.note }}"
            />
            <Button
              id="FormSubmitButton"
              hidden="{{ i !== currentContactIndex.value }}"
              submit={true}
              submitTargetId="Contact_Form"
              text="Save"
            />
            <Event
              event="submit"
              method="trigger"
              params={{
                ordered: [
                  {
                    options: {
                      ordered: [
                        {
                          additionalScope: {
                            ordered: [{ index: "{{ i }}" }, { id: "" }],
                          },
                        },
                      ],
                    },
                  },
                ],
              }}
              pluginId="saveItemHandler"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Form>
        </ListViewBeta>
      </View>
    </Container>
  </View>
</Container>
