<DrawerFrame
  id="messagingAppDrawer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  hidden={true}
  isHiddenOnMobile={true}
  padding="8px 12px"
  paddingType="normal"
  showHeader={true}
  showOverlay={true}
  width="large"
>
  <Header>
    <Text
      id="appNotesTitle"
      marginType="normal"
      value="### Application Notes"
      verticalAlign="center"
    />
    <Button
      id="drawerCloseButton"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        enabled="false"
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="saveCheckContainer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="messagingAppDrawer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./saveCheckContainer.rsx" />
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle11"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="f3e6b" viewKey="View 1">
        <TextArea
          id="internalVettingNotesTextArea"
          autoResize={true}
          label="	Internal Vetting Notes"
          labelPosition="top"
          minLines="10"
          placeholder="Enter notes"
          readOnly="{{ isLendingPartnerVettingUser.value }}"
          value="{{ GetSFInstallerApplication.data?.Internal_Vetting_Notes__c }}"
        />
        <Button
          id="cancelNotesButton"
          disabled={
            '{{ isLendingPartnerVettingUser.value || GetSFInstallerApplication.data?.Internal_Vetting_Notes__c === null && internalVettingNotesTextArea.value === "" || internalVettingNotesTextArea.value === GetSFInstallerApplication.data?.Internal_Vetting_Notes__c || UpdateInstallerApplicationVettingNotes.isFetching }}'
          }
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="resetValue"
            params={{ ordered: [] }}
            pluginId="internalVettingNotesTextArea"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="saveNotesButton"
          disabled={
            '{{ isLendingPartnerVettingUser.value || GetSFInstallerApplication.data?.Internal_Vetting_Notes__c === null && internalVettingNotesTextArea.value === "" || internalVettingNotesTextArea.value === GetSFInstallerApplication.data?.Internal_Vetting_Notes__c || UpdateInstallerApplicationVettingNotes.isFetching }}'
          }
          loading="{{ UpdateInstallerApplicationVettingNotes.isFetching
}}"
          text="Save Notes"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="UpdateInstallerApplicationVettingNotes"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
  </Body>
</DrawerFrame>
