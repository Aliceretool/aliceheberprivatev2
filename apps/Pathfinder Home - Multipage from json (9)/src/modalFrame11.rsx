<ModalFrame
  id="modalFrame11"
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
  size="medium"
>
  <Header>
    <Text
      id="modalTitle46"
      value="### Container title"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton48"
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
        pluginId="modalFrame11"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form51"
      footerPaddingType="normal"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="formTitle48"
          marginType="normal"
          value="#### Watchers ({{ formatDataAsArray(getWatchers9.data).length }})"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Text
          id="text27"
          hidden="{{ formatDataAsArray(getWatchers9.data).length != 0 }}"
          horizontalAlign="center"
          marginType="normal"
          value="**No watchers at this time.**"
          verticalAlign="center"
        />
        <ListViewBeta
          id="listView_watchers"
          _primaryKeys=""
          data="{{ getWatchers9.data }}"
          direction="horizontal"
          heightType="auto"
          hidden="{{ formatDataAsArray(getWatchers9.data).length == 0 }}"
          itemWidth="200px"
          layoutType="grid"
          margin="0"
          marginType="none"
          numColumns="2"
          padding="0"
        >
          <Avatar
            id="avatar4"
            fallback="{{ formatDataAsArray(getUser_FilteredProject9.data).filter(x => x.userID == getWatchers9.data.userID[i])[0].firstName }}"
            imageSize={24}
            label="{{ formatDataAsArray(getUser_FilteredProject9.data).filter(x => x.userID == getWatchers9.data.userID[i])[0].firstName + ' ' + formatDataAsArray(getUser_FilteredProject9.data).filter(x => x.userID == getWatchers9.data.userID[i])[0].lastName }}"
            marginType="normal"
            src="{{ formatDataAsArray(getUser_FilteredProject9.data).filter(x => x.userID == getWatchers9.data.userID[i])[0].avatarURL }}"
            style={{ ordered: [{ background: "automatic" }] }}
          />
        </ListViewBeta>
      </Body>
      <Footer>
        <Button
          id="button159"
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
</ModalFrame>
