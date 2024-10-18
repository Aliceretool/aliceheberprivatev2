<ModalFrame
  id="modal_AddCommentNew2"
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
      id="modalTitle40"
      value="#### {{ i18n.t(transitionNameTemp8.value) }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton42"
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
        pluginId="modal_AddCommentNew2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form49"
      footerPaddingType="normal"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
    >
      <TextInput
        id="textInput_closureRe2"
        label="{{ i18n.t('Closure REF') }}"
        labelPosition="top"
        marginType="normal"
        required={true}
        value="{{ getIssue16.data.closure_ref[0] }}"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_done7"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="button153"
      marginType="normal"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="{{ i18n.t('Cancel') }}"
    >
      <Event
        event="click"
        method="close"
        params={{ ordered: [] }}
        pluginId="modal_addCommentTransition3"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button152"
      disabled={
        '{{ has_rejection_comment.value && textArea_rejectionComment.value == "" }}'
      }
      hidden=""
      marginType="normal"
      submit={true}
      submitTargetId="form49"
      text="{{ i18n.t(transitionNameTemp8.value) }}"
    />
  </Footer>
</ModalFrame>
