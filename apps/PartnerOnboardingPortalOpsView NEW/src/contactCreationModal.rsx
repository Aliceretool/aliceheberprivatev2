<ModalFrame
  id="contactCreationModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
>
  <Header>
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
        pluginId="contactCreationModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="createContactsInProgress2"
      hidden="{{newApprovedContactList.isFetching === false && CreateContactsForApprovedApp.isFetching === false}}"
      marginType="normal"
      value="#### Creating Contacts in Salesforce..."
      verticalAlign="center"
    />
    <Text
      id="contactCreationSuccessText2"
      hidden="{{newApprovedContactList.isFetching === true || CreateContactsForApprovedApp.isFetching === true}}"
      horizontalAlign="center"
      marginType="normal"
      value="#### 🎉 Success!"
      verticalAlign="center"
    />
    <ProgressBar
      id="createContactsLoadingBar2"
      hidden="{{newApprovedContactList.isFetching === false && CreateContactsForApprovedApp.isFetching === false}}"
      indeterminate={true}
      label=""
      marginType="normal"
      value={60}
    />
    <Text
      id="aMomentText2"
      hidden="{{newApprovedContactList.isFetching === false && CreateContactsForApprovedApp.isFetching === false}}"
      horizontalAlign="center"
      marginType="normal"
      value="This may take a moment"
      verticalAlign="center"
    />
    <Text
      id="createContactQuerySuccessMsg2"
      hidden="{{newApprovedContactList.isFetching === true || CreateContactsForApprovedApp.isFetching === true}}"
      horizontalAlign="center"
      marginType="normal"
      value="**{{CreateContactsForApprovedApp.data.msg}}**"
      verticalAlign="center"
    />
  </Body>
</ModalFrame>
