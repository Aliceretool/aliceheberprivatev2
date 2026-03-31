<App>
  <Include src="./functions.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      overflowType="hidden"
    >
      <Button
        id="feedbackPopupButton"
        iconBefore="bold/interface-help-question-message"
        style={{
          border: "rgba(0, 0, 0, 0)",
          borderRadius: "5px",
          fontSize: "10px",
          fontWeight: "600",
          fontFamily: "Inter",
        }}
        submitTargetId=""
        text="Get in Touch"
      >
        <Event
          id="82c7e7bc"
          event="click"
          method="show"
          params={{}}
          pluginId="modalFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </ModuleContainerWidget>
  </Frame>
</App>
