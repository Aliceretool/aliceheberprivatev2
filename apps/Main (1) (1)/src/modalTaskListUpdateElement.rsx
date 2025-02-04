<ModalFrame
  id="modalTaskListUpdateElement"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  padding="0"
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <Button
      id="modalCloseButton7"
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
        pluginId="hideTaskUpdateModalList"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="taskCreateAndUpdateModule2"
      case_id="{{ caseIdOfTask.value }}"
      mode="update"
      name="task create and update module"
      onSubmit="modalTaskOnSubmitHanlder"
      pageUuid="dfaa61bd-1006-471f-9ebe-256c054a501a"
      task_id="{{ taskListElementId.value }}"
    />
  </Body>
</ModalFrame>
