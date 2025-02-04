<ModalFrame
  id="modalTaskDelete"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  padding="8px 12px"
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle5"
      style={{
        ordered: [
          { fontSize: "h3Font" },
          { fontWeight: "h3Font" },
          { fontFamily: "h3Font" },
        ],
      }}
      value="Task cancellation"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton6"
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
        pluginId="modalTaskDelete"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="container10"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle8"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="83ba8" viewKey="View 1">
        <Select
          id="Reason_For_Task_Cancel_Select"
          data="{{ GetTaskDeletingReasons.data }}"
          emptyMessage="No options"
          label="Reason for cancellation"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.id }}"
        />
        <ButtonGroup2
          id="buttonGroup2"
          alignment="center"
          heightType="auto"
          overflowPosition={2}
        >
          <ButtonGroup2-Button id="2cafe" styleVariant="outline" text="Cancel">
            <Event
              event="click"
              method="hide"
              params={{ ordered: [] }}
              pluginId="modalTaskDelete"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ButtonGroup2-Button>
          <ButtonGroup2-Button
            id="2efc3"
            disabled="{{ Reason_For_Task_Cancel_Select.value ? false : true }}"
            styleVariant="solid"
            text="Delete"
          >
            <Event
              event="click"
              method="trigger"
              params={{
                ordered: [
                  {
                    options: {
                      ordered: [
                        {
                          additionalScope: {
                            ordered: [{ selectedTaskId: "{{ taskId.value }}" }],
                          },
                        },
                      ],
                    },
                  },
                ],
              }}
              pluginId="cancelTaskHandle"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </ButtonGroup2-Button>
        </ButtonGroup2>
      </View>
    </Container>
  </Body>
</ModalFrame>
