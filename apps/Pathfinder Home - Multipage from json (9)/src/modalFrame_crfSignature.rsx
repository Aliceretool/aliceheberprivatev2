<ModalFrame
  id="modalFrame_crfSignature"
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
      id="modalTitle9"
      marginType="normal"
      value="#### Signature"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton9"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame_crfSignature"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <SegmentedControl
      id="segmentedControl2"
      disabled="true"
      hidden="{{ !is_current_user_CRFAdmin.value }}"
      itemMode="static"
      label="{{ i18n.t('CRF - Administrator approving for Selected Approver') }}"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[is_current_user_the_approver.value === true?'0':'1' ] }}"
    >
      <Option id="a6a63" value="No" />
      <Option id="ec471" value="Yes" />
    </SegmentedControl>
    <SignaturePad2
      id="signature1"
      disabled=""
      emptyMessage="Sign here to approve"
      hidden=""
      label=""
      labelPosition="top"
      marginType="normal"
      showRedrawIcon={true}
    />
    <TextArea
      id="textArea11"
      autoResize={true}
      label="{{ i18n.t('Comment') }}"
      labelPosition="top"
      marginType="normal"
      minLines={2}
    />
  </Body>
  <Footer>
    <Avatar
      id="avatar7"
      imageSize={32}
      label="{{ `${table_crfApprovers.selectedRow.firstName} ${table_crfApprovers.selectedRow.lastName}` }}"
      labelCaption="{{ table_crfApprovers.selectedRow.email }}"
      marginType="normal"
      src="{{ table_crfApprovers.selectedRow.avatarURL }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
    <Button
      id="button90"
      marginType="normal"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="{{ i18n.t('Cancel') }}"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalFrame_crfSignature"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="run"
        params={{
          ordered: [{ src: "signature1.clearValue()\ncheckbox1.resetValue()" }],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="formButton16"
      disabled="{{ !signature1.value }}"
      marginType="normal"
      submitTargetId=""
      text="{{ _.startCase(approval_transition.value) }}"
    >
      <Event
        enabled={'{{ textArea11.value != "" }}'}
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insComments_committeeApproval"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="uploadS3Signature"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    event="show"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="get_ip_address4"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
