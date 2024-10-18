<ModalFrame
  id="modalassign"
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
    <Text
      id="modalTitle18"
      value="### Change Assignee"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton19"
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
        pluginId="modalassign"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form26"
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
      styleContext={{ ordered: [{ borderRadius: "4px" }] }}
    >
      <Body>
        <Select
          id="select39"
          automaticItemColors={true}
          captionByIndex="{{ item.email }}"
          data="{{ getUser_FilteredProject5.data }}"
          emptyMessage="No options"
          hiddenByIndex="{{ formatDataAsArray(getUser_FilteredProject5.data).filter(x => x.email == getIssue11.data.assigned_to[0])[0].userID == item.userID }} "
          label=""
          labelPosition="top"
          labels="{{ `${item.firstName} ${item.lastName}` }}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="{{ i18n.t('Select a user to assign to') }}"
          showSelectionIndicator={true}
          values="{{ item.userID }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton20"
          marginType="normal"
          submit={true}
          submitTargetId="form26"
          text="{{ i18n.t('Assign') }}"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign5"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
