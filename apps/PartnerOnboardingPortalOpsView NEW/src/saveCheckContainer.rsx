<Container
  id="saveCheckContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  hidden="true"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  style={{ ordered: [{ border: "warning" }] }}
>
  <Header>
    <Text
      id="containerTitle10"
      marginType="normal"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="cb91d" viewKey="View 1">
    <Spacer id="spacer23" marginType="normal" />
    <Text
      id="text15"
      marginType="normal"
      value="##### Are you sure you want to close the notes?"
      verticalAlign="center"
    />
    <Icon
      id="icon1"
      horizontalAlign="center"
      icon="bold/interface-alert-warning-triangle"
      marginType="normal"
      style={{ ordered: [{ color: "warning" }] }}
    />
    <Spacer id="spacer25" marginType="normal" />
    <Text
      id="text16"
      marginType="normal"
      value="Unsaved notes will be lost."
      verticalAlign="center"
    />
    <Spacer id="spacer24" marginType="normal" />
    <Button id="noStayButton" marginType="normal" text="No, keep me here">
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="saveCheckContainer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="closeNotesButton" marginType="normal" text="Yes, close notes">
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="messagingAppDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="saveCheckContainer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
