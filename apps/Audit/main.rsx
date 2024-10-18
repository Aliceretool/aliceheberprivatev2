<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="issueID"
    defaultValue="a765aebc-669b-419e-b038-4722ba086178"
  />
  <GlobalWidgetProp id="current_project_id" defaultValue="cb96a209-1aa7-49" />
  <GlobalWidgetProp
    id="userID"
    defaultValue="68329f9f-9846-49ac-8a2e-636d997c1be0"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Include src="./src/tabbedContainer5.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>
