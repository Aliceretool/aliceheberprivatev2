<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="projectID" />
  <GlobalWidgetProp id="referenceIssueID" />
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
        hidden=""
        initialData=""
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        scroll={true}
        showBody={true}
        showBorder={false}
        showHeaderBorder={false}
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
            hidden="true"
            label="Project"
            labelPosition="top"
            labels="{{ item.project }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            readOnly="true"
            required={true}
            showSelectionIndicator={true}
            value="cb96a209-1aa7-49"
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
            hidden="true"
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
      <Include src="./src/deviation_container.rsx" />
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
        id="button_createDeviation"
        disabled="{{ !(date_due.value && textInput_issue.value && richTextEditor_description.value && selectResponsibleDepartment.value && selectResponsiblePerson.value && multiselect_concernedUsers.value && (switchProductsAffected.value ? textArea_productEffectedComment.value : true) && (switchEquipmentAffected.value ? textArea_equipmentEffectedComment.value : true)) }}"
        hidden=""
        marginType="normal"
        style={{ ordered: [{ background: "secondary" }] }}
        text="{{ i18n.t('Create Deviation')}}"
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
    </ModuleContainerWidget>
  </Frame>
</App>
