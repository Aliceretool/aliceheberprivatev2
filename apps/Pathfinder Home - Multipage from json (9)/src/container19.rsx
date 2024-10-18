<Container
  id="container19"
  _gap={0}
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  hidden="true"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle62"
      marginType="normal"
      value="#### System Files"
      verticalAlign="center"
    />
    <FileButton
      id="fileButton1"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      marginType="normal"
      styleVariant="outline"
      text="Upload File Button"
      tooltipText="This is the simple way to upload a file to retool storage"
      uploadToRetoolStorage={true}
    >
      <Event
        event="uploadedToStorage"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getFiles"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileButton>
    <Modal
      id="modal3"
      buttonText="Upload to Dropzone"
      tooltipText="This is the more complicated way because you have to use a resource to insert but this give you more control"
    >
      <Form
        id="form7"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData="{{ table29.selectedRow }}"
        marginType="normal"
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
            id="formTitle7"
            marginType="normal"
            value="#### Upload File (Dropzone)"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput34"
            formDataKey="id"
            hidden="true"
            label="ID"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="textInput35"
            formDataKey="name"
            label="Name"
            labelPosition="top"
            marginType="normal"
            patternType="url"
            placeholder="retool.com"
            required={true}
          />
          <TextInput
            id="textInput36"
            formDataKey="type"
            hidden="true"
            label="Type"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <NumberInput
            id="numberInput4"
            currency="USD"
            formDataKey="sizeBytes"
            hidden="true"
            inputValue={0}
            label="Size bytes"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
            showSeparators={true}
            showStepper={true}
            value={0}
          />
          <TextInput
            id="textInput37"
            formDataKey="createdAt"
            hidden="true"
            label="Created at"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <TextInput
            id="textInput38"
            formDataKey="updatedAt"
            hidden="true"
            label="Updated at"
            labelPosition="top"
            marginType="normal"
            placeholder="Enter value"
            required={true}
          />
          <FileDropzone
            id="fileDropzone1"
            _isUpgraded={true}
            appendNewSelection={true}
            iconBefore="bold/programming-browser-search"
            label=""
            labelPosition="top"
            marginType="normal"
            placeholder="Select or drag and drop"
          />
        </Body>
        <Footer>
          <Button
            id="formButton7"
            marginType="normal"
            submit={true}
            submitTargetId="form7"
            text="Submit"
          />
        </Footer>
      </Form>
    </Modal>
    <FileButton
      id="fileButton2"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      marginType="normal"
      styleVariant="outline"
      text="Upload File Button"
      tooltipText="This is the simple way to upload a file to retool storage"
    >
      <Event
        event="uploadedToStorage"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getFiles"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileButton>
  </Header>
  <View id="2963c" viewKey="View 1">
    <Table
      id="table29"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getFiles.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="6ab7c"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="6ab7c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={187}
        summaryAggregationMode="none"
      />
      <Column
        id="65951"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="name"
        label="Name"
        position="center"
        size={255}
        summaryAggregationMode="none"
      />
      <Column
        id="69742"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Enter value"
        position="center"
        size={165}
        summaryAggregationMode="none"
      />
      <Column
        id="c7706"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="folderName"
        label="Folder name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="f473e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="sizeBytes"
        label="Size bytes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="07909"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="createdAt"
        label="Created at"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a6472"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="updatedAt"
        label="Updated at"
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
          pluginId="table29"
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
          pluginId="table29"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
</Container>
