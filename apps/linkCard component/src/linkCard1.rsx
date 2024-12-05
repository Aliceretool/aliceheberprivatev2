<Container
  id="linkCard1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <View id="f4ca5" viewKey="View 1">
    <Icon
      id="icon1"
      icon="bold/shopping-store-factory-building"
      style={{ ordered: [{ background: "primary" }] }}
      styleVariant="background"
    />
    <Spacer id="spacer1" />
    <Text
      id="containerTitle1"
      style={{
        ordered: [{ color: "{{ linkCard1.hovered ? theme.primary : '' }}" }],
      }}
      value="**Link Card**"
      verticalAlign="center"
    />
    <Text
      id="containerTitle2"
      value="A link card is useful for providing a text and a link in the same component."
      verticalAlign="center"
    />
    <Link id="link1" text="Link">
      <Event
        event="click"
        method="confetti"
        params={{ ordered: [] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Link id="link2" text="Link">
      <Event
        event="click"
        method="confetti"
        params={{ ordered: [] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Spacer id="spacer2" />
    <Text
      id="containerFooter1"
      style={{
        ordered: [{ color: "{{ linkCard1.hovered ? theme.primary : '' }}" }],
      }}
      value="**Open**"
      verticalAlign="center"
    />
    <Link id="link3" text="Link">
      <Event
        event="click"
        method="confetti"
        params={{ ordered: [] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
  </View>
  <Event
    event="click"
    method="confetti"
    pluginId=""
    type="util"
    waitType="debounce"
  />
</Container>
