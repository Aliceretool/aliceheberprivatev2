<ModalFrame
  id="modal_addtask"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  style={{ ordered: [{ borderRadius: "8px" }] }}
  styleContext={{ ordered: [] }}
>
  <Header>
    <Text id="modalTitle26" value="### Add Tasks" verticalAlign="center" />
    <Button
      id="modalCloseButton27"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modal_addtask"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="ins_TestTask"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="createTestTask1"
      close="close8"
      creationStatus="'Pending' "
      margin="0"
      name="Create Test Task"
      pageUuid="b7ad1be8-686f-4df8-8e73-09afabf0c3da"
      referenceIssueID="{{ getIssue15.data.issueID[0] }}"
      refresh="refresh8"
      task_type="'ac347935-ad6f-4413-939f-aaad8a99c6db'"
      test_description="{{editableText7.value}}"
      test_summary="{{editableText7.value}}"
    />
  </Body>
  <Event
    event="hide"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="getRalatedTests"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
