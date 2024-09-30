<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" padding="8px 12px" paddingType="normal" type="main">
    <Button id="button1" marginType="normal" text="global notification">
      <Event
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "warning" },
                  {
                    title:
                      "New Version available. Please 1) Save your app and 2) Refresh this page",
                  },
                  { duration: "20" },
                  { description: "" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text1"
      marginType="normal"
      value="{{ retoolContext.configVars.secret}}"
      verticalAlign="center"
    />
  </Frame>
</App>
