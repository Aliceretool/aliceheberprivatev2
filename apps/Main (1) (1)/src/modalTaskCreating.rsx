<ModalFrame
  id="modalTaskCreating"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  padding="0"
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
  size="large"
>
  <Header>
    <Icon
      id="icon2"
      horizontalAlign="right"
      icon="bold/interface-delete-1"
      margin="0"
      style={{ ordered: [] }}
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="hideTaskCreateModal"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Icon>
  </Header>
  <Body>
    <Module
      id="taskCreateAndUpdateModule"
      case_id="{{ caseId.value }}"
      margin="0"
      mode="create"
      name="task create and update module"
      onSubmit="onSubmitTaskCreateModal"
      pageUuid="dfaa61bd-1006-471f-9ebe-256c054a501a"
      task_id=""
    />
  </Body>
</ModalFrame>
