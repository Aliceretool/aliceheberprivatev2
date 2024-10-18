<Modal
  id="modal5"
  buttonText="Bulk Translations"
  events={[
    {
      ordered: [
        { event: "open" },
        { type: "datasource" },
        { method: "trigger" },
        { pluginId: "getProject_field_translation3" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  modalHeightType="auto"
  tooltipText="Update translations in bulk"
>
  <Button id="button5" text="Refresh Project Field Translations">
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getProject_field_translation_with_values"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button id="button6" text="Default English">
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getProject_field_translation_update_with_english_blank"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Table
    id="table31"
    cellSelection="none"
    changesetArray={[]}
    clearChangesetOnSave={true}
    cursorCache={{}}
    data="{{ getProject_field_translation3.data }}"
    defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
    dynamicColumnSource={[]}
    emptyMessage="No rows found"
    enableSaveActions={true}
    expandedRowDataIndexes={[]}
    primaryKeyColumnId="22645"
    rowBackgroundColor={[]}
    selectedDataIndexes={[]}
    selectedRowKeys={[]}
    selectedRows={[]}
    selectedSourceRows={[]}
    showBorder={true}
    showFooter={true}
    showHeader={true}
    sortArray={[]}
    toolbarPosition="bottom"
  >
    <Column
      id="81fbf"
      alignment="left"
      editable="false"
      format="tag"
      formatOptions={{ automaticColors: false }}
      groupAggregationMode="none"
      hidden="false"
      key="project_fieldID"
      label="Project field id"
      optionList={{
        mode: "mapped",
        mappedData: "{{ getProject_field.data }}",
        valueByIndex: "{{ item.project_fieldID }}",
        labelByIndex: "{{item.project_field}}",
      }}
      placeholder="Select option"
      position="center"
      size={178.109375}
      summaryAggregationMode="none"
    />
    <Column
      id="dca1d"
      alignment="left"
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      hidden="true"
      key="languageID"
      label="Language id"
      optionList={{
        mode: "mapped",
        mappedData: "{{ getLanguage.data }}",
        valueByIndex: "{{ item.languageID }}",
        labelByIndex: "{{ item.name }}",
      }}
      placeholder="Select option"
      position="center"
      size={131}
      summaryAggregationMode="none"
    />
    <Column
      id="5ef0c"
      alignment="left"
      format="tag"
      formatOptions={{ automaticColors: true }}
      groupAggregationMode="none"
      key="name"
      label="Language"
      placeholder="Select option"
      position="center"
      size={100}
      summaryAggregationMode="none"
    />
    <Column
      id="11a39"
      alignment="left"
      format="string"
      groupAggregationMode="none"
      key="field_value"
      label="Field value"
      placeholder="Enter value"
      position="center"
      size={128}
      summaryAggregationMode="none"
    />
    <Column
      id="22645"
      alignment="left"
      editable={false}
      format="string"
      groupAggregationMode="none"
      key="project_field_translationID"
      label="Project field translation id"
      placeholder="Enter value"
      position="center"
      size={307}
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
        pluginId="table31"
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
        pluginId="table31"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToolbarButton>
  </Table>
  <Form
    id="form33"
    data={{ ordered: [] }}
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    hidden="false"
    marginType="normal"
    padding="12px"
    requireValidation={true}
    resetAfterSubmit={true}
    showBody={true}
    showFooter={true}
    showHeader={true}
  >
    <Header>
      <Text
        id="formTitle31"
        horizontalAlign="center"
        marginType="normal"
        tooltipText="Download the table above and update field values.  Then reupload to see your translations."
        value="#### Upload translations from downloaded file above"
        verticalAlign="center"
      />
    </Header>
    <Body>
      <FileInput
        id="fileInput3"
        _isUpgraded={true}
        accept="['csv']"
        disabled="false"
        files={[]}
        iconBefore="bold/programming-browser-search"
        label="Choose CSV"
        labelPosition="top"
        marginType="normal"
        parsedValue={[]}
        parseFiles={true}
        textBefore="Browse"
        value={[]}
      />
    </Body>
    <Footer>
      <Button
        id="formButton15"
        disabled="{{ fileInput3.parsedValue.length == 0}}"
        marginType="normal"
        submitTargetId="form33"
        text="Upload"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getProject_field_translation_to_update"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Footer>
    <Event
      event="submit"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="insProject_field_type_value_bulk"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Form>
</Modal>
