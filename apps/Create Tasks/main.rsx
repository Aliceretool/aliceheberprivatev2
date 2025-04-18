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
  <GlobalWidgetProp id="creationStatus" />
  <GlobalWidgetProp
    id="referenceIssueID"
    defaultValue={'"1b50895f-e53e-4e87-8b5e-aac207c3b251"'}
  />
  <GlobalWidgetProp id="task_type" />
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
      creationStatus=""
      isGlobalWidgetContainer={true}
      referenceIssueID=""
      task_type=""
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
        style={{ ordered: [{ background: "canvas" }] }}
      >
        <Header>
          <Text
            id="formTitle3"
            marginType="normal"
            value="#### {{ i18n.t('Create Task')}}"
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
            labels="{{ i18n.t(item.project) }}"
            marginType="normal"
            overlayMaxHeight={375}
            readOnly="true"
            required={true}
            showSelectionIndicator={true}
            value="{{projectID.value}}"
            values="{{ item.projectID }}"
          />
          <Select
            id="selectProjectType"
            captionByIndex=""
            colorByIndex=""
            data="{{ getProjectType.data }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="project_typeID"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="{{ i18n.t('Type') }}"
            labels="{{ i18n.t(item.project_type) }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="{{ i18n.t('Select an option') }}"
            readOnly="true"
            required={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="0e19cf5d-e23e-4fde-8624-852a9867ccb4
"
            values="{{ item.project_typeID }}"
          />
        </Body>
        <Footer>
          <Button
            id="formButton4"
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
        style={{ ordered: [{ background: "canvas" }] }}
      >
        <Header>
          <Text
            id="formTitle2"
            marginType="normal"
            value="#### Create Task"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextInput
            id="textInput_summary"
            formDataKey="issue"
            label="{{ i18n.t('Action Summary') }}"
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
            imageByIndex="{{item.avatarURL}}"
            label="{{ i18n.t('Assignee') }}"
            labels="{{ `${item.firstName} ${item.lastName}` }}"
            marginType="normal"
            overlayMaxHeight={375}
            readOnly=""
            required={true}
            showSelectionIndicator={true}
            tooltipByIndex=""
            value=""
            values="{{ item.userID }}"
          />
          <Date
            id="date_due"
            dateFormat="dd MMM yyyy"
            datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
            formDataKey="due_date"
            iconBefore="bold/interface-calendar"
            label="{{ i18n.t('Due Date') }}"
            marginType="normal"
            maxDate="{{ getReferenceIssue.data.due_date[0] }}"
            required={true}
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
            disabled="{{ !(textInput_summary.value && richTextEditor_description.value && date_due.value && select_assignee.value) }}"
            hidden=""
            marginType="normal"
            submitTargetId="form1"
            text="{{ i18n.t('Add Another') }}"
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
              pluginId="insIssueTask_addAnother"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
          <Button
            id="formButton3"
            disabled="{{ !(textInput_summary.value && richTextEditor_description.value && date_due.value && select_assignee.value) }}"
            marginType="normal"
            style={{ ordered: [{ background: "secondary" }] }}
            submitTargetId="form1"
            text="{{ i18n.t('Create') }}"
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
              pluginId="insIssueTask"
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
