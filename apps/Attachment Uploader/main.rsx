<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="project" />
  <GlobalWidgetProp
    id="issueId"
    defaultValue="bbb3bd3d-ed00-43e5-82de-3773c14be5dd"
  />
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
    canvas="#f6f6f6"
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
      <Button
        id="button1"
        disabled="{{ fileDropzone1.value.length == 0 }}"
        hidden="true"
        iconBefore="bold/interface-upload-button-2"
        marginType="normal"
        style={{ ordered: [{ background: "secondary" }] }}
        text="Upload"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="upload"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <FileDropzone
        id="fileDropzone1"
        _isUpgraded={true}
        appendNewSelection={true}
        iconBefore="bold/programming-browser-search"
        label=""
        labelPosition="top"
        loading=""
        marginType="normal"
        placeholder="{{ i18n.t('Select or drag and drop')}}"
        selectionType="multiple"
        style={{ ordered: [{ border: "secondary" }] }}
      >
        <Event
          event="change"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="upload"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </FileDropzone>
    </ModuleContainerWidget>
  </Frame>
</App>
