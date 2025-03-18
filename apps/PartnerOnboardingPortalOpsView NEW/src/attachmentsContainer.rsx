<Container
  id="attachmentsContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="attachmentsContainerTitle"
      marginType="normal"
      value="#### Attachments"
      verticalAlign="center"
    />
  </Header>
  <View id="0f2f9" viewKey="View 1">
    <Select
      id="fileTypeAllSelect"
      emptyMessage="No options"
      itemMode="static"
      label="Select the file type"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showSelectionIndicator={true}
    >
      <Option
        id="29e10"
        disabled={false}
        hidden={false}
        label="SOS Registrations"
        value="Sos_Registrations"
      />
      <Option
        id="3ad6a"
        disabled={false}
        hidden={false}
        label="DBA registrations"
        value="Dba_Registrations"
      />
      <Option
        id="7bba2"
        disabled={false}
        hidden={false}
        label="BIQ Profile"
        value="Biq_Profile"
      />
      <Option
        id="50265"
        disabled={false}
        hidden={false}
        label="Business Background Check"
        value="Business_Background_Check"
      />
      <Option
        id="417c2"
        disabled={false}
        hidden={false}
        label="Signed Installer Agreement"
        value="Signed_Installer_Agreement"
      />
      <Option
        id="0ced5"
        disabled={false}
        hidden={false}
        label="Other"
        value="Other"
      />
    </Select>
    <FileButton
      id="uploadAnyFileButton"
      disabled="{{ isLendingPartnerVettingUser.value || fileTypeAllSelect.value === null }}"
      iconBefore="bold/programming-browser-search"
      loading="{{CreateAttachmentFileUpload.isFetching}}"
      marginType="normal"
      styleVariant="outline"
      text="upload file"
      tooltipText="{{fileTypeAllSelect.value === null ? 'File Type is required' : ''}}"
    >
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["attachmentType"]' },
            { value: "{{fileTypeAllSelect.value}}" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["connection"]' },
            { value: "installerApplication" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["component"]' },
            { value: "{{self.files[0]}}" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["fileUpload"]' },
            { value: "{{self.value[0]}}" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="parse"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createOperationsBody"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileButton>
    <TextInput
      id="searchTextInput"
      label="Search Attachments"
      marginType="normal"
      placeholder="Enter value"
    />
    <Table
      id="attachmentsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ compileAttachmentTableList.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "bc965", direction: "asc" } }]}
      heightType="auto"
      primaryKeyColumnId="08a96"
      rowHeight="small"
      searchTerm="{{searchTextInput.value}}"
      showBorder={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="08a96"
        alignment="left"
        editable={false}
        format="string"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={276.890625}
      />
      <Column
        id="a05de"
        alignment="center"
        format="icon"
        formatOptions={{ icon: "line/interface-link-square" }}
        groupAggregationMode="none"
        key="file"
        label="Link to File"
        placeholder="Enter value"
        position="center"
        referenceId="linkToFile"
        size={79.859375}
        summaryAggregationMode="none"
        valueOverride="{{item.urlForPreview}}"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{item}}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="bc965"
        alignment="center"
        format="icon"
        formatOptions={{
          icon: '{{ item === " " ? "/icon:bold/interface-validation-check" :  "" }}',
          color: "green",
        }}
        groupAggregationMode="none"
        key="invalidatedAt"
        label="Is Current?"
        placeholder="Enter value"
        position="center"
        size={81.21875}
        summaryAggregationMode="none"
        valueOverride={'{{ !!item ? item : " " }}'}
      />
      <Column
        id="fa36d"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            "{{item === 'Other' ? '#68dff7' : item === 'Sample Contract' ? '#facafa' : item === 'General Liability Insurance' || item === 'Workers Comp Insurance' ? '#faf7c5' : item === 'License Type Attachment' || item === 'Sos Registrations' || item === 'Dba Registrations' || item === 'Biq Profile'  ? '#8df7bb' : item === 'Signed Caf' ? '#db3e39' : item === 'Business Background Check' || item === 'Personal Credit Checks' || item === 'Personal Background Check' ? '#ffb545' : item === 'Signed Installer Agreement' ? '#be45ff' : item === 'Financial Statement' || item === 'Balance Sheet' || item === 'Profit And Loss' || item === 'Bank Statement' || item === 'Tax Return' ? '#000080' : '#000000' }}",
        }}
        groupAggregationMode="none"
        key="type"
        label="Attachment Type"
        placeholder="Select option"
        position="center"
        size={185.21875}
        summaryAggregationMode="none"
        valueOverride="{{ item.replace(/_/g, ' ') }}"
      />
      <Column
        id="18e55"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="file"
        label="File Name"
        placeholder="Enter value"
        position="center"
        size={221.984375}
        summaryAggregationMode="none"
        valueOverride="{{item.filename.slice(14)}}"
      />
      <Column
        id="594e3"
        alignment="left"
        format="datetime"
        formatOptions={{
          manageTimeZone: true,
          valueTimeZone: "00:00",
          displayTimeZone: "local",
        }}
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={151.25}
      />
      <Column
        id="23a2d"
        alignment="left"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="createdBy"
        label="Created by"
        placeholder="Enter value"
        position="center"
        size={325.859375}
        summaryAggregationMode="none"
        valueOverride="{{ item?.email }}"
      />
      <Column
        id="a9258"
        alignment="left"
        format="datetime"
        formatOptions={{
          manageTimeZone: true,
          valueTimeZone: "00:00",
          displayTimeZone: "local",
        }}
        key="updatedAt"
        label="Updated at"
        placeholder="Enter value"
        position="center"
        size={151.25}
      />
      <Column
        id="e07c8"
        alignment="left"
        cellTooltip="{{ item }}"
        cellTooltipMode="overflow"
        format="string"
        groupAggregationMode="none"
        key="updatedBy"
        label="Updated by"
        placeholder="Enter value"
        position="center"
        size={325.859375}
        summaryAggregationMode="none"
        valueOverride="{{ item?.email }}"
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
          pluginId="attachmentsTable"
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
          pluginId="attachmentsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
</Container>
