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
            value="#### {{ i18n.t('Create')}} {{ i18n.t(formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].project)}} {{ i18n.t('Issue')}}"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Select
            id="selectProject"
            captionByIndex="{{item.projectCode}}"
            data="{{ getProjects.data }}"
            disabled="false"
            emptyMessage="No options"
            formDataKey="projectID"
            label="{{ i18n.t('Project')}}"
            labelPosition="top"
            labels="{{ i18n.t(item.project) }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            readOnly="true"
            required={true}
            showSelectionIndicator={true}
            value="'a026255a-3934-4889-8712-63348dac8d74'"
            values="{{ item.projectID }}"
          />
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
            label="{{ i18n.t('Type')}}"
            labelPosition="top"
            labels="{{ i18n.t(item.project_type) }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            required={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ getProjectType_filtered.data.project_typeID[0] }}"
            values="{{ item.project_typeID }}"
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
            label="{{ i18n.t('Summary')}}"
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
          <Select
            id="select_assignee"
            automaticItemColors={true}
            captionByIndex="{{ item.email }}"
            colorByIndex=""
            data="{{ getUser_filteredProject.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="project_typeID"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="{{ i18n.t('Assignee')}}"
            labelPosition="top"
            labels="{{ `${item.firstName} ${item.lastName}` }}"
            marginType="normal"
            overlayMaxHeight={375}
            readOnly="{{ referenceReadOnly.value }}"
            required={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ formatDataAsArray(getUser_all.data).filter(x => x.email == current_user.email)[0].userID }}"
            values="{{ item.userID }}"
          />
          <Date
            id="date_due"
            dateFormat="dd MMM yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            formDataKey="due_date"
            iconBefore="bold/interface-calendar"
            label="{{ i18n.t('Due Date')}}"
            labelPosition="top"
            marginType="normal"
            value="{{moment().add(1,'M')}}
"
          />
          <Select
            id="selectResponsibleDepartment"
            automaticItemColors={true}
            captionByIndex=""
            colorByIndex=""
            data="{{ getProject_field_responsibleDepartment_values.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="responsible_department_value"
            hidden="{{!selectProjectType.value }}"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="{{ i18n.t('Responsible Section')}}"
            labelPosition="top"
            labels="{{ i18n.t(item.field_value) }}"
            marginType="normal"
            overlayMaxHeight={375}
            required={true}
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
              pluginId="getProject_field_responsibleDepartment_person"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Select
            id="selectResponsiblePerson"
            automaticItemColors={true}
            captionByIndex="{{ item.email }}"
            colorByIndex=""
            data="{{ getUser_filteredProjectRoleActive.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="responsible_department_value"
            hidden="{{!selectProjectType.value}}"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="{{ i18n.t('Person Responsible')}}"
            labelPosition="top"
            labels="{{ `${item.firstName} ${item.lastName}` }}"
            marginType="normal"
            overlayMaxHeight={375}
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.userID }}"
          />
          <Multiselect
            id="multiselect_sourceOfChange"
            automaticItemColors={true}
            data="{{ getProject_field_sourceOfChange_values.data }}"
            emptyMessage="No options"
            label="{{ i18n.t('Source of Change')}}"
            labelPosition="top"
            labels="{{ i18n.t(item.field_value) }}"
            marginType="normal"
            overlayMaxHeight={375}
            required={true}
            showSelectionIndicator={true}
            values="{{ item.project_field_type_valueID }}"
            wrapTags={true}
          />
          <Select
            id="select_type"
            automaticItemColors={true}
            captionByIndex=""
            colorByIndex=""
            data="{{ getProject_field_typeOfChange_values.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="source_value"
            hidden=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="{{ i18n.t('Type of Change')}}"
            labelPosition="top"
            labels="{{ i18n.t(item.field_value) }}"
            marginType="normal"
            overlayMaxHeight={375}
            required={true}
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
              pluginId="getProject_field_sourceOfChange_values"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
        </Body>
        <Footer>
          <Button
            id="button4"
            marginType="normal"
            style={{ ordered: [{ background: "surfacePrimary" }] }}
            text="{{ i18n.t('Cancel')}}"
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
            disabled="{{ !(textInput_issue.value && richTextEditor_description.value && select_assignee.value && selectResponsibleDepartment.value && multiselect_sourceOfChange.value && select_type.value) }}"
            marginType="normal"
            style={{ ordered: [{ background: "secondary" }] }}
            submitTargetId="form1"
            text="{{ i18n.t('Create')}}"
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
      <Select
        id="select_reference"
        captionByIndex="{{ item.status_value}}"
        colorByIndex=""
        data="{{ getDeviationIssues.data }}"
        disabledByIndex=""
        emptyMessage="No options"
        fallbackTextByIndex=""
        formDataKey="project_typeID"
        hidden="true"
        hiddenByIndex=""
        iconByIndex=""
        imageByIndex=""
        label="Reference"
        labelCaption="(DVR Issue)"
        labels="{{ item.issue_index}}: {{ item.issue }} "
        marginType="normal"
        overlayMaxHeight={375}
        readOnly="{{ referenceReadOnly.value }}"
        required={true}
        showSelectionIndicator={true}
        tooltipByIndex=""
        value="{{ referenceIssueID.value }}"
        values="{{ item.issueID }}"
      />
      <Button
        id="button5"
        disabled="{{ !(textInput_issue.value && richTextEditor_description.value && selectResponsibleDepartment.value && date_due.value && select_type.value && textInput_specificReference.value && select_reference.value) }}"
        hidden="true"
        marginType="normal"
        submitTargetId="form1"
        text="Add Another"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="insIssue_addAnother"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <TextInput
        id="textInput_specificReference"
        hidden="true"
        label="Specific Reference"
        marginType="normal"
        required={true}
      />
    </ModuleContainerWidget>
  </Frame>
</App>
