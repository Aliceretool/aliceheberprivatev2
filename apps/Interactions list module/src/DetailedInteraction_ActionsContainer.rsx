<Container
  id="DetailedInteraction_ActionsContainer"
  _gap="5px"
  _justify="end"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0 12px"
  showBody={true}
  showBorder={false}
>
  <View id="0b67a" viewKey="View 1">
    <Button
      id="DetailedInteraction_Fullscreen"
      disabled={'{{ selectedInteraction.value.type !== "Email" }}'}
      heightType="auto"
      margin="0"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Full screen"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "true" }] }}
        pluginId="isFullScreenModalOpen"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Module
      id="attachInteractionToCaseModule1"
      action="{{ attachDetach.value }}"
      heightType="fixed"
      interactionId="{{ selectedInteraction.value.id }}"
      isOpen="{{ isAttachToCaseModalOpen.value }}"
      margin="0"
      name="Attach interaction to case module"
      onInteractionAttached="refetchInteractions"
      onModalHide="hideAttachToCaseModal"
      pageUuid="7bd9f6df-5cb2-41fa-9070-db4c5feb10ba"
    />
    <Button
      id="DetailedInteraction_Detach"
      disabled={'{{ selectedInteraction.value.status !== "attached" }}'}
      heightType="auto"
      margin="0"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Detach"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { additionalScope: { ordered: [{ mode: "detach" }] } },
                ],
              },
            },
          ],
        }}
        pluginId="handleAttachDetachClick"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="DetailedInteraction_AttachToCase"
      disabled={'{{ selectedInteraction.value.status !== "non-attached" }}'}
      heightType="auto"
      margin="0"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Attach to case"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { additionalScope: { ordered: [{ mode: "attach" }] } },
                ],
              },
            },
          ],
        }}
        pluginId="handleAttachDetachClick"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Module
      id="interactionFullscreenModule1"
      heightType="fixed"
      interactionWithEmail="{{ selectedInteraction.value }}"
      margin="0"
      name="Interaction fullscreen module"
      open="{{ isFullScreenModalOpen.value }}"
      pageUuid="7487fbcf-eeb1-4399-a6d7-2ff69ddca132"
    />
    <Button
      id="DetailedInteraction_CloseInteraction"
      disabled={'{{ selectedInteraction.value.status !== "non-attached" }}'}
      heightType="auto"
      margin="0"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Close interaction"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "true" }] }}
        pluginId="isCloseInteractionModalOpened"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="DetailedInteraction_Forward"
      heightType="auto"
      margin="0"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Forward"
    />
    <Button
      id="DetailedInteraction_Reply"
      heightType="auto"
      margin="0"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Reply"
    />
    <Module
      id="closeInteractionModule1"
      heightType="fixed"
      interactionId="{{ selectedInteraction.value.id }}"
      isOpen="{{ isCloseInteractionModalOpened.value }}"
      margin="0"
      name="Close interaction module"
      onCloseInteraction="refetchInteractions"
      onModalHide="hideCloseInteractionModal"
      pageUuid="1d35b5cf-3547-49ef-a36e-322c9be6fb41"
    />
  </View>
</Container>
