<ModalFrame
  id="modalTaskUpdating"
  footerPadding="8px 12px"
  headerPadding="0"
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
    <Button
      id="modalCloseButton5"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="hideTaskUpdateModal"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="taskUpdateModule"
      case_id="{{ caseId.value }}"
      margin="0"
      mode="update"
      name="task create and update module"
      onSubmit="onSubmitTaskUpdateModal"
      pageUuid="dfaa61bd-1006-471f-9ebe-256c054a501a"
      task_id="{{ taskId.value }}"
    />
  </Body>
</ModalFrame>
