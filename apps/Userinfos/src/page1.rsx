<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="f04bdd1b-c94f-44c2-a91b-3776f09975cf"
>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text
      id="text1"
      value="## Deine Userinformationen"
      verticalAlign="center"
    />
    <Button id="button1" text="In Zwischenablage kopieren">
      <Event
        event="click"
        method="copyToClipboard"
        params={{ map: { value: "{{ JSON.stringify(current_user) }}" } }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <JSONExplorer
      id="jsonExplorer1"
      hideRootNode={false}
      margin="0"
      value="{{current_user.email}}"
    />
    <Button id="button2" text="added button" />
  </Frame>
</Screen>
