<ModalFrame
  id="modalSendForReview"
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
      id="modalTitle15"
      value="### Send for Review"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton16"
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
        pluginId="modalSendForReview"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Select
      id="select38"
      automaticItemColors={true}
      captionByIndex="{{ item.email }}"
      data="{{ getUsers_qc_supervisors.data }}"
      emptyMessage="No options"
      label=""
      labelPosition="top"
      labels="{{ `${item.firstName} ${item.lastName}` }}"
      overlayMaxHeight={375}
      placeholder="{{ i18n.t('Select Reviewer') }}"
      showSelectionIndicator={true}
      values="{{ item.userID }}"
    />
    <TextArea
      id="textArea14"
      autoResize={true}
      label=""
      labelPosition="top"
      minLines="4"
      placeholder="{{ i18n.t('Comments') }}"
    />
  </Body>
  <Footer>
    <Button id="button113" text="{{ i18n.t('Send for Review') }}">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_pending_testing"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="upd_assignto_supervisor"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_sendforreview"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalSendForReview"
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
    pluginId="select38"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
