<Container
  id="container5"
  _gap={0}
  enableFullBleed={true}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden=""
  overflowType="hidden"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle10"
      value="### {{tableProject.selectedRow.issue_index }}"
      verticalAlign="center"
    />
    <Button
      id="button65"
      hidden="true"
      iconBefore="line/interface-delete-1"
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="splitPane"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="button64" text="{{ i18n.t('Edit')}}">
      <Event
        enabled=""
        event="click"
        method="openUrl"
        params={{
          ordered: [{ url: "{{ tableProject.selectedRow.app_path}}" }],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="05835" viewKey="View 1">
    <Include src="./tabbedContainer6.rsx" />
  </View>
</Container>
