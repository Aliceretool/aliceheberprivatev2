<App>
  <Include src="./functions.rsx" />
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
  <GlobalWidgetProp id="referenceIssueID" />
  <GlobalWidgetProp id="referenceReadOnly" />
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
            value="#### Create {{ formatDataAsArray(getProjects.data).filter(x => x.projectID == selectProject.value)[0].project}} Issue"
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
            label="{{ i18n.t(' Project') }}"
            labelPosition="top"
            labels="{{ item.project }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="{{ i18n.t('Select an option') }}"
            readOnly="true"
            required={true}
            showSelectionIndicator={true}
            value="'ba8cd1b9-bee0-40f7-beb3-379cb8e43f61'"
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
            label="{{ i18n.t('Type') }}"
            labelPosition="top"
            labels="{{ item.project_type }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="{{ i18n.t('Select an option') }}"
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
            text="{{ i18n.t('Submit') }}"
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
            label="{{ i18n.t('Summary') }}"
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
            id="selectResponsibleDepartment"
            automaticItemColors={true}
            captionByIndex=""
            colorByIndex=""
            data="{{ getProject_field_responsibleDepartment_values.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="responsible_department_value"
            hidden="{{!selectProjectType.value}}"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="{{ i18n.t('Responsible Section') }}"
            labelPosition="top"
            labels="{{ i18n.t(item.field_value )}}"
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
            label="{{ i18n.t('Person Responsible') }}"
            labelPosition="top"
            labels="{{ `${item.firstName} ${item.lastName}` }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="{{ i18n.t('Select an option') }}"
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            values="{{ item.userID }}"
          />
          <Select
            id="select_source"
            automaticItemColors={true}
            captionByIndex=""
            colorByIndex=""
            data="{{ getProject_field_source.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="responsible_department_value"
            hidden=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="{{ i18n.t('Source') }}"
            labelPosition="top"
            labels="{{ item.field_value }}"
            marginType="normal"
            overlayMaxHeight={375}
            readOnly="{{ referenceReadOnly.value }}"
            required={true}
            showClear={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ referenceIssueID.value ? '8e968369-fa0d-48ae-a914-c6df33ecac16' : ''}}"
            values="{{ item.project_field_type_valueID }}"
          >
            <Event
              event="change"
              method="resetValue"
              params={{ ordered: [] }}
              pluginId="select_reference"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
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
            label="{{ i18n.t('Reference') }}"
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
            label="{{ i18n.t('Assignee') }}"
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
            formDataKey="due_date"
            iconBefore="bold/interface-calendar"
            label="{{ i18n.t('Due Date') }}"
            labelPosition="top"
            marginType="normal"
            required={true}
            value="{{moment().add(1,'M')}}"
          />
          <TextInput
            id="textInput_specificReference"
            label="{{ i18n.t('Specific Reference') }}"
            labelPosition="top"
            marginType="normal"
            showClear={true}
          />
        </Body>
        <Footer>
          <Button
            id="button4"
            marginType="normal"
            style={{ ordered: [{ background: "surfacePrimary" }] }}
            text="{{ i18n.t('Cancel') }}"
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
            id="button5"
            disabled={
              '{{ !(textInput_issue.value && richTextEditor_description.value && selectResponsibleDepartment.value && selectResponsiblePerson.value && date_due.value && select_source.value && (select_source.selectedLabel == "DVR (Deviation Report)" ?select_reference.value : true)) }}'
            }
            marginType="normal"
            submitTargetId="form1"
            text="{{ i18n.t('Add Another') }}"
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
          <Button
            id="formButton3"
            disabled={
              '{{ !(textInput_issue.value && richTextEditor_description.value && selectResponsibleDepartment.value && selectResponsiblePerson.value && date_due.value && select_source.value && (select_source.selectedLabel == "DVR (Deviation Report)" ?select_reference.value : true)) }}'
            }
            marginType="normal"
            style={{ ordered: [{ background: "secondary" }] }}
            submitTargetId="form1"
            text="{{ i18n.t('Create') }}"
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
