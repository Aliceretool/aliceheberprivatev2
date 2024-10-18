<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="referenceIssueID" />
  <GlobalWidgetProp id="referenceReadOnly" />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#e6ebef"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary="#3b9900"
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      referenceIssueID=""
    >
      <Form
        id="form_createIssue"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        initialData=""
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showHeader={true}
        style={{ ordered: [{ background: "rgb(230, 235, 239)" }] }}
      >
        <Header>
          <Text
            id="formTitle2"
            marginType="normal"
            value="#### Create {{ formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].project}}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Select
            id="selectProjectType"
            captionByIndex=""
            colorByIndex=""
            data="{{ getProjectType_filtered.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="project_typeID"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Type"
            labelPosition="top"
            labels="{{ item.project_type }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ getProjectType_filtered.data.project_typeID[0] }}"
            values="{{ item.project_typeID }}"
          />
          <Select
            id="selectProject"
            captionByIndex="{{item.projectCode}}"
            data="{{ getProjects.data }}"
            disabled="false"
            emptyMessage="No options"
            formDataKey="projectID"
            label=" Project"
            labelPosition="top"
            labels="{{ item.project }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            readOnly="true"
            required={true}
            showSelectionIndicator={true}
            value="'5f31a592-ee6c-49f8-a372-568252ae0c8c'
"
            values="{{ item.projectID }}"
          />
        </Body>
        <Footer>
          <Button
            id="formButton2"
            marginType="normal"
            submit={true}
            submitTargetId="form_createIssue"
            text="Submit"
          />
        </Footer>
        <Event
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insIssue"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
      <Form
        id="form1"
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
        style={{ ordered: [{ background: "rgb(230, 235, 239)" }] }}
      >
        <Header>
          <Text
            id="formTitle3"
            marginType="normal"
            value="#### Form title"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput_issue"
            formDataKey="issue"
            label="Summary"
            labelPosition="top"
            labelWidth="16"
            marginType="normal"
            required={true}
          />
          <TextEditor
            id="richTextEditor_description"
            formDataKey="description"
            value=""
          />
          <TextInput
            id="textInput_BatchNos"
            label="Batch No's"
            labelPosition="top"
            marginType="normal"
            showClear={true}
          />
          <Select
            id="selectTypeofBatch"
            automaticItemColors={true}
            captionByIndex=""
            colorByIndex=""
            data="{{ getProject_field_typeofbatch_values.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="type_of_batch_value"
            hidden="{{!selectProjectType.value}}"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Type of Batch"
            labelPosition="top"
            labels="{{ item.field_value }}"
            marginType="normal"
            overlayMaxHeight={375}
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.project_field_type_valueID }}"
          >
            <Event
              event="change"
              method="trigger"
              params={{
                ordered: [
                  {
                    options: {
                      object: {
                        onSuccess: null,
                        onFailure: null,
                        additionalScope: null,
                      },
                    },
                  },
                ],
              }}
              pluginId="getProject_field_typeofbatch_values"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <TextInput
            id="textInput_ItemNo"
            label="Item No"
            labelPosition="top"
            marginType="normal"
            showClear={true}
          />
          <Select
            id="selectTypeofCertification"
            automaticItemColors={true}
            captionByIndex=""
            colorByIndex=""
            data="{{ getProject_field_type_of_certification.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="type_of_certification_value"
            hidden="{{!selectProjectType.value}}"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Type of Certification"
            labelPosition="top"
            labels="{{ item.field_value }}"
            marginType="normal"
            overlayMaxHeight={375}
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.project_field_type_valueID }}"
          >
            <Event
              event="change"
              method="trigger"
              params={{
                ordered: [
                  {
                    options: {
                      object: {
                        onSuccess: null,
                        onFailure: null,
                        additionalScope: null,
                      },
                    },
                  },
                ],
              }}
              pluginId="getProject_field_type_of_certification"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled={
                '{{selectTypeofCertification.selectedItem.field_value === "Other"}}'
              }
              event="change"
              method="setHidden"
              params={{ ordered: [{ hidden: false }] }}
              pluginId="textInput_certification_other"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled={
                '{{selectTypeofCertification.selectedItem.field_value === "Other"}}'
              }
              event="change"
              method="focus"
              params={{ ordered: [] }}
              pluginId="textInput_certification_other"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled={
                '{{selectTypeofCertification.selectedItem.field_value !== "Other"}}'
              }
              event="change"
              method="setHidden"
              params={{ ordered: [] }}
              pluginId="textInput_certification_other"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <TextInput
            id="textInput_certification_other"
            hidden="true"
            label=""
            labelPosition="top"
            marginType="normal"
            placeholder="Enter type of certification"
            showClear={true}
          />
          <TextInput
            id="textInput_Parent_Batch_No"
            label="Parent batch No."
            labelPosition="top"
            marginType="normal"
            showClear={true}
          />
          <TextInput
            id="textInput_Pack_Type"
            label="Pack Type"
            labelPosition="top"
            marginType="normal"
            showClear={true}
          />
          <Select
            id="select_reference"
            automaticItemColors={true}
            captionByIndex="{{ item.status_value}}"
            colorByIndex=""
            data="{{ getDeviationIssues.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="project_typeID"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Reference"
            labelPosition="top"
            labels="{{ item.issue_index}}: {{ item.issue }} "
            marginType="normal"
            overlayMaxHeight={375}
            readOnly="{{ referenceReadOnly.value }}"
            required={
              '{{ select_source.selectedLabel == "DVR (Deviation Report)"\n }}'
            }
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value={
              "{{ select_source.selectedLabel == \"DVR (Deviation Report)\" ? referenceIssueID.value : '' }}"
            }
            values="{{ item.issueID }}"
          />
          <TextInput
            id="textInput_Yield"
            label="Yield"
            labelPosition="top"
            marginType="normal"
            showClear={true}
          />
          <Select
            id="select_reference2"
            automaticItemColors={true}
            captionByIndex="{{ item.type}}"
            colorByIndex=""
            data="{{ getClients.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex="{{ item.type}}"
            formDataKey="project_client"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Client"
            labelPosition="top"
            labels="{{ item.company_name }}"
            marginType="normal"
            overlayMaxHeight={375}
            readOnly="{{ referenceReadOnly.value }}"
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value=""
            values="{{ item.id }}"
          />
          <Multiselect
            id="multiselect1"
            automaticItemColors={true}
            data="{{ getProject_field_markets.data }}"
            emptyMessage="No options"
            label="Market"
            labelPosition="top"
            labels="{{ item.field_value }}"
            overlayMaxHeight={375}
            placeholder="Select options"
            showSelectionIndicator={true}
            values="{{ item.project_field_type_valueID }}"
            wrapTags={true}
          />
          <Select
            id="select_assignee"
            automaticItemColors={true}
            captionByIndex="{{ item.email }}"
            colorByIndex=""
            data="{{ getUser_filteredProjectRoleActive.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="project_typeID"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Assignee"
            labelPosition="top"
            labels="{{ `${item.firstName} ${item.lastName}` }}"
            marginType="normal"
            overlayMaxHeight={375}
            readOnly=""
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ formatDataAsArray(getUser_all.data).filter(x => x.email == current_user.email)[0].userID }}"
            values="{{ item.userID }}"
          />
          <Date
            id="date_due"
            dateFormat="dd MMM yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            firstDayOfWeek={1}
            formDataKey="due_date"
            iconBefore="bold/interface-calendar"
            label="Expiry Date"
            labelPosition="top"
            marginType="normal"
            required={true}
            value="{{moment().add(1,'M')}}"
          />
        </Body>
        <Footer>
          <Button
            id="button4"
            marginType="normal"
            style={{ ordered: [{ background: "surfacePrimary" }] }}
            text="Cancel"
          >
            <Event
              event="click"
              method="trigger"
              params={{
                ordered: [
                  {
                    options: {
                      object: {
                        onSuccess: null,
                        onFailure: null,
                        additionalScope: null,
                      },
                    },
                  },
                ],
              }}
              pluginId="close"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="formButton3"
            disabled={
              '{{ !(textInput_issue.value && richTextEditor_description.value && selectResponsibleDepartment.value && selectResponsiblePerson.value && date_due.value && select_source.value && (select_source.selectedLabel == "DVR (Deviation Report)" ?select_reference.value : true)) }}'
            }
            marginType="normal"
            style={{ ordered: [{ background: "secondary" }] }}
            submitTargetId="form1"
            text="Create"
          >
            <Event
              event="click"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="insIssue"
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
          pluginId="insIssue"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </ModuleContainerWidget>
  </Frame>
</App>
