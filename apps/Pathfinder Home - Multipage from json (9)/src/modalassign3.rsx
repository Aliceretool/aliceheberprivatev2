<ModalFrame
  id="modalassign3"
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
      id="modalTitle30"
      value="### Change Assignee"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton31"
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
        pluginId="modalassign3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form30"
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
          id="select47"
          automaticItemColors={true}
          captionByIndex="{{ item.email }}"
          data="{{ getUser_FilteredProject7.data }}"
          emptyMessage="No options"
          hiddenByIndex="{{ formatDataAsArray(getUser_FilteredProject7.data).filter(x => x.email == getIssue15.data.assigned_to[0])[0].userID == item.userID }} "
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
          id="formButton22"
          marginType="normal"
          submit={true}
          submitTargetId="form30"
          text="{{ i18n.t('Assign') }}"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign7"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Event
    event="show"
    method="focus"
    params={{ ordered: [] }}
    pluginId="select47"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
