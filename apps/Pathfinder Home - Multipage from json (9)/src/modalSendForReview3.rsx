<ModalFrame
  id="modalSendForReview3"
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
  style={{ ordered: [{ background: "canvas" }] }}
>
  <Header>
    <Text
      id="modalTitle27"
      value="### {{  i18n.t('Send for Review')}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton28"
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
        pluginId="modalSendForReview3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Select
      id="select46"
      automaticItemColors={true}
      captionByIndex="{{ item.email }}"
      data="{{ getUsers_qc_supervisors3.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select Reviewer') }}"
      required={true}
      showSelectionIndicator={true}
      values="{{ item.userID }}"
    />
    <TextArea
      id="textArea21"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="4"
      placeholder="{{ i18n.t('Comments') }}"
      required={true}
    />
  </Body>
  <Footer>
    <Button
      id="button134"
      disabled="{{select46.selectedItem === true }}"
      text="{{ i18n.t('Send for Review') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_under_review2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="upd_assignto_supervisor3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_sendforreview3"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalSendForReview3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    event="show"
    method="focus"
    params={{ ordered: [] }}
    pluginId="select46"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
