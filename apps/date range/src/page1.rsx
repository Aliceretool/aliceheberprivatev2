<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="f7ad29ee-d355-4045-9000-065e98226856"
>
  <SqlQueryUnified
    id="query1"
    query={include("../lib/query1.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <Include src="./drawerFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Button id="button1" text="open sidebar">
      <Event
        event="click"
        method="show"
        params={{}}
        pluginId="drawerFrame1"
        type="widget"
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
      maxCount={20}
      maxSize="250mb"
      placeholder="Select or drag and drop"
      selectionType="multiple"
    />
    <Text id="text1" value="testing" verticalAlign="center" />
  </Frame>
</Screen>
