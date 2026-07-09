<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="aac7f0ac-df7d-4c60-87e6-f39c91b1181c"
>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Button id="button1" text="Button">
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="query1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <JSONEditor id="jsonEditor1" value="{{ query1.data }}" />
  </Frame>
</Screen>
