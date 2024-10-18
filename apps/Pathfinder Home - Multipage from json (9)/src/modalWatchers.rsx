<ModalFrame
  id="modalWatchers"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
>
  <Header>
    <Text id="modalTitle4" value="### Watchers" verticalAlign="center" />
    <Button
      id="modalCloseButton4"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalWatchers"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form17"
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
      showHeader={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Text
          id="formTitle18"
          marginType="normal"
          value="#### Watchers ({{ formatDataAsArray(getWatchers2.data).length }})"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Text
          id="text37"
          hidden="{{ formatDataAsArray(getWatchers2.data).length != 0 }}"
          horizontalAlign="center"
          marginType="normal"
          value="**No watchers at this time.**"
          verticalAlign="center"
        />
        <ListViewBeta
          id="listView_watchers2"
          _primaryKeys=""
          data="{{ getWatchers2.data }}"
          direction="horizontal"
          heightType="auto"
          hidden="{{ formatDataAsArray(getWatchers2.data).length == 0 }}"
          itemWidth="200px"
          layoutType="grid"
          margin="0"
          marginType="none"
          numColumns="2"
          padding="0"
        >
          <Avatar
            id="avatar5"
            fallback="{{ formatDataAsArray(getUser_FilteredProject2.data).filter(x => x.userID == getWatchers2.data.userID[i])[0].firstName }}"
            imageSize={24}
            label="{{ formatDataAsArray(getUser_FilteredProject2.data).filter(x => x.userID == getWatchers2.data.userID[i])[0].firstName + ' ' + formatDataAsArray(getUser_FilteredProject2.data).filter(x => x.userID == getWatchers2.data.userID[i])[0].lastName }}"
            marginType="normal"
            src="{{ formatDataAsArray(getUser_FilteredProject2.data).filter(x => x.userID == getWatchers2.data.userID[i])[0].avatarURL }}"
            style={{ ordered: [{ background: "automatic" }] }}
          />
        </ListViewBeta>
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insTime_planned"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="button78"
      marginType="normal"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Close"
    >
      <Event
        event="click"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_watchers"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
