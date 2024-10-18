<ModalFrame
  id="modal_assign"
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
      id="modalTitle45"
      value="### Container title"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton47"
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
        pluginId="modal_assign"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form50"
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
          id="formTitle47"
          marginType="normal"
          value="#### Assign"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="select72"
          captionByIndex="{{ item.email }}"
          data="{{ getUser_FilteredProject9.data }}"
          emptyMessage="No options"
          hiddenByIndex="{{ formatDataAsArray(getUser_FilteredProject9.data).filter(x => x.email == getIssue17.data.assigned_to[0])[0].userID == item.userID }} "
          label=""
          labelPosition="top"
          labels="{{ `${item.firstName} ${item.lastName}` }}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select a user to assign to"
          showSelectionIndicator={true}
          values="{{ item.userID }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton36"
          marginType="normal"
          submit={true}
          submitTargetId="form50"
          text="Assign"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_assign9"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
