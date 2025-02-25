<Container
  id="Documentation_Container"
  _direction="vertical"
  _gap="0px"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  overflowType="hidden"
  padding="0"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="DocumentsList_Title"
      style={{
        ordered: [
          { fontSize: "h5Font" },
          { fontWeight: "h5Font" },
          { fontFamily: "h5Font" },
        ],
      }}
      value="List of documents"
      verticalAlign="center"
    />
    <Select
      id="DocumentType_Select"
      data="{{ GetDocumentTypes.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{ item.title }}"
      loading="{{ CreateDocument.isFetching }}"
      margin="8px"
      overlayMaxHeight={375}
      placeholder="Select type"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    />
    <Select
      id="DocumentSubtype_Select"
      data="{{ documentSubtypesTn.value }}"
      disabled="{{ !getSubtypesTn.value }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{ item.title }}"
      loading="{{ CreateDocument.isFetching }}"
      margin="8px"
      overlayMaxHeight={375}
      placeholder="Select subtype"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    />
    <FileButton
      id="UploadDocument_Button"
      _isUpgraded={true}
      accept={
        '[".pdf",\n".heic",\n".jpeg", \n".jpg",\n".png",\n".tiff",\n".doc", \n".docx",\n".xls", \n".xlsx",\n".txt",\n".csv"]'
      }
      disabled="{{ !DocumentType_Select.selectedItem || !DocumentSubtype_Select.selectedItem }}"
      iconBefore="bold/interface-add-1"
      loading="{{ CreateDocument.isFetching }}"
      margin="8px"
      maxCount={20}
      maxSize="250mb"
      selectionType="multiple"
      style={{ ordered: [{ borderRadius: "8px" }] }}
      text="Upload document"
    >
      <Event
        event="parse"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="UploadFilesHandler"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileButton>
  </Header>
  <View id="cbe0e" viewKey="View 1">
    <Table
      id="Documents_Table"
      actionsOverflowPosition={4}
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ GetDocumentsByCaseId.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "12e58", direction: "desc" } }]}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="fill"
      margin="0"
      primaryKeyColumnId="407a9"
      rowHeight="medium"
      rowSelection="none"
      showHeader={true}
      style={{ background: "canvas" }}
      toolbarPosition="bottom"
    >
      <Column
        id="407a9"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={282.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="5c6fb"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="filename"
        label="File"
        position="center"
        size={139.609375}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ currentSourceRow.url }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="41dfb"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="origin"
        label="Origin"
        placeholder="Enter value"
        position="center"
        referenceId="origin"
        size={97.96875}
        summaryAggregationMode="none"
      />
      <Column
        id="44e63"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="subtype"
        label="Label"
        placeholder="Enter value"
        position="center"
        size={167.171875}
        summaryAggregationMode="none"
        valueOverride="{{ item.title }}"
      />
      <Column
        id="b0ae0"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Enter value"
        position="center"
        size={142.171875}
        summaryAggregationMode="none"
        valueOverride="{{ item.title }}"
      />
      <Column
        id="25657"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="uploaded_by"
        label="Uploaded by"
        placeholder="Enter value"
        position="center"
        size={138.171875}
        summaryAggregationMode="none"
        valueOverride="{{ item.role.role }}"
      />
      <Column
        id="1dfd8"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            "{{ item === 'Approved' ? 'green' : item === 'Rejected' ? 'red' : 'orange' }}",
        }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={203.171875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="2aea1"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="url"
        label="URL"
        position="center"
        size={926.984375}
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
        id="12e58"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="created_at"
        label="Created at"
        placeholder="Enter value"
        position="center"
        referenceId="created_at"
        size={130.203125}
        summaryAggregationMode="none"
      />
      <Action id="3d2ff" icon="bold/interface-validation-check" label="Approve">
        <Event
          event="clickAction"
          method="run"
          params={{
            ordered: [
              {
                src: 'await ChangeStatusActionHandler.trigger({\n  additionalScope: {\n    status: "Approved",\n    document_id: currentSourceRow.id\n  }\n})',
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action id="f8855" icon="bold/interface-delete-1" label="Reject">
        <Event
          event="clickAction"
          method="run"
          params={{
            ordered: [
              {
                src: 'await ChangeStatusActionHandler.trigger({\n  additionalScope: {\n    status: "Rejected",\n    document_id: currentSourceRow.id\n  }\n})',
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
      <Action id="74c07" icon="bold/interface-share" label="Share" />
      <Action id="3fa7f" icon="bold/interface-delete-bin-2" label="Delete">
        <Event
          event="clickAction"
          method="run"
          params={{
            ordered: [
              {
                src: "await DeleteDocumentActionHandler.trigger({\n  additionalScope: {\n    document_id: currentSourceRow.id\n  }\n})",
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </Action>
    </Table>
  </View>
</Container>
