<Container
  id="tabbedContainer4"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs12"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer4"
      value="{{ self.values[0] }}"
    >
      <Option id="8f5a9" value="Tab 1" />
      <Option id="e0c6f" value="Tab 2" />
      <Option id="fed2a" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="bd3dc" label="{{ i18n.t('General')}}" viewKey="General">
    <KeyValue
      id="keyValue2"
      data="{{tableProject.selectedRow}}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
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
        id="Reporter"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Reporter')}}"
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
        id="statusID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Status id"
      />
      <Property
        id="i18NTIssue"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Summary')}}"
      />
      <Property
        id="responsible_department"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Responsible Department')}}"
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
        id="responsible_departmentID"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Responsible department id"
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
        id="created_by"
        editable="false"
        editableOptions={{}}
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        hidden="true"
        label="Created by"
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
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        hidden="false"
        label="{{i18n.t('Deviation')}}"
        valueOverride="{{ keyValue2.data.deviation_index }} - {{ keyValue2.data.deviation_summary }}"
      >
        <Event
          event="clickValue"
          method="openApp"
          params={{
            ordered: [
              { uuid: "b8df9f38-9dde-11ee-bcb5-a7293e5d72e7" },
              {
                options: {
                  ordered: [
                    {
                      hashParams: [
                        {
                          ordered: [
                            { key: "issueID" },
                            { value: "{{ keyValue2.data.dvrRef }}" },
                          ],
                        },
                      ],
                    },
                    { newTab: true },
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
      </Property>
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
        id="reporter_lastName"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Reporter last name"
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
        id="impact_q_s_e"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Impact on Q/S/E')}}"
      />
      <Property
        id="impact_supplier"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Impact on Supplier / Content / Scheduling')}}"
      />
      <Property
        id="specific_reference"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Specific Refrerence')}}"
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
        id="closure_ref"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Closure REF')}}"
      />
      <Property
        id="proposed_mods"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{ i18n.t('Proposed Modification & Justification')}}"
      />
      <Property
        id="justification"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="{{i18n.t('Withdrawl Justification')}}"
      />
      <Property
        id="description"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Description"
      />
      <Property
        id="typeofmod"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Typeofmod"
        valueOverride="{{ formatDataAsArray(getProject_field_typeOfModification_values).filter(x => x.project_field_type_valueID == keyValue2.data.typeofmod)[0].data.field_value }}"
      />
      <Property
        id="deviation_summary"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Deviation summary"
      />
      <Property
        id="dvrRef"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Dvr ref"
      />
    </KeyValue>
    <SegmentedControl
      id="segmentedControl2"
      data="{{ getProject_field_typeOfModification_values.data }}"
      disabled="true"
      disabledByIndex=""
      hidden="{{tableProject.selectedRow.typeofmod === null}}"
      hideLabel={false}
      iconByIndex=""
      iconPositionByIndex=""
      label="{{i18n.t('Type of Modification')}}"
      labelPosition="top"
      labels="{{ item.field_value }}"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{tableProject.selectedRow.typeofmod}}"
      values="{{ item.project_field_type_valueID }}"
    />
    <Text
      id="text23"
      value="###### {{ i18n.t('Description')}}"
      verticalAlign="center"
    />
    <Text
      id="text21"
      heightType="fixed"
      margin="5px 8px"
      value="###### {{ tableProject.selectedRow.description}}"
    />
  </View>
  <View id="55be1" label="{{ i18n.t('Comments')}}" viewKey="Comments">
    <Timeline
      id="timeline4"
      dateFormat="dd MMM yyyy"
      hidden=""
      isGrouped={true}
      items="{{ formatDataAsObject(getComments.data).comment_display }}"
      maintainSpaceWhenHidden={true}
      renderAsHtml={true}
      sortedDesc={true}
      timestamps="{{ formatDataAsObject(getComments.data).created_at }}"
    />
    <TextArea
      id="textArea_commentBox5"
      hidden=""
      label="Add Comment"
      labelPosition="top"
      marginType="normal"
      minLines="6"
      placeholder="Write comment here ..."
      showInEditor={true}
      spellCheck={true}
    />
    <Button
      id="button63"
      disabled={'{{ textArea_commentBox5.value == "" }}'}
      hidden=""
      marginType="normal"
      text="Add Comment"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComment"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getComments"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="f5dbf" label="{{ i18n.t('Attachments')}}" viewKey="Attachments">
    <Text
      id="text22"
      hidden="{{  formatDataAsArray(get_attachments.data.Name).length != 0 }} "
      horizontalAlign="center"
      value="No attachments to display"
      verticalAlign="center"
    />
    <Container
      id="collapsibleAttachments3"
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
          id="collapsibleTitle6"
          value="#### Attachments ({{  formatDataAsArray(get_attachments.data).length }})"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle6"
          disabled="{{  formatDataAsArray(get_attachments.data).length === 0 }} "
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ collapsibleAttachments3.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="collapsibleAttachments3"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="8d38d" viewKey="View 1">
        <Table
          id="table4"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ get_attachments.data.Contents }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          heightType="auto"
          hidden="{{  formatDataAsArray(get_attachments.data).length === 0 }} "
          primaryKeyColumnId="450d9"
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="450d9"
            alignment="left"
            cellTooltipMode="overflow"
            editable="false"
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
            valueOverride="{{ item.replace(('deviation/' + tableProject.selectedRow.issueID) + '/','').substring(36) }}"
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
            pluginId="tabbedContainer5"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
        <Container
          id="tabbedContainer5"
          _gap={0}
          currentViewKey="{{table4.selectedRow.Key.split('.')[1] === 'pdf' ? 'pdf' : 'image'}}"
          enableFullBleed={true}
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          heightType="fixed"
          hidden="{{  formatDataAsArray(get_attachments.data).length === 0 }} "
          overflowType="hidden"
          padding="12px"
          showBody={true}
          showBorder={false}
          showHeader={true}
        >
          <Header>
            <Tabs
              id="tabs11"
              hidden="true"
              itemMode="static"
              navigateContainer={true}
              targetContainerId="tabbedContainer5"
              value="{{ self.values[0] }}"
            >
              <Option id="f6da4" value="Tab 1" />
              <Option id="6de08" value="Tab 2" />
              <Option id="50e9b" value="Tab 3" />
            </Tabs>
          </Header>
          <View id="a4848" viewKey="image">
            <Image
              id="image4"
              fit="contain"
              heightType="fixed"
              horizontalAlign="center"
              src="{{readFile.data.Body}}"
            />
          </View>
          <View id="95ad1" viewKey="pdf">
            <PDFViewer
              id="pdf3"
              showTopBar={true}
              src="{{readFile.data.Body}}"
            />
          </View>
        </Container>
      </View>
    </Container>
  </View>
</Container>
