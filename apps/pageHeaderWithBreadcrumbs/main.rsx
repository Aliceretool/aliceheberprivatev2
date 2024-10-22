<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="breadcrumbs"
    value={
      '[{\n    label: "運賃マスタ",\n    path: "/master/shippingCosts",\n}, {\n    label: "運賃マスタ詳細",\n}]'
    }
  />
  <GlobalWidgetProp
    id="otherActionsDefs"
    value={
      '[{\n  id: "DELETE",\n  label: "削除"\n}, {\n  id: "COMPLETE",\n  label: "契約完了"\n}, {\n  id: "INCOMPLETE",\n  label: "契約未完了"\n}]'
    }
  />
  <GlobalWidgetProp id="primaryButtonLabel" value="primary" />
  <GlobalWidgetProp id="secondaryButtonLabel" value="secondary" />
  <GlobalWidgetProp id="title" value="運賃マスタ" />
  <Frame
    id="$main"
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      breadcrumbs={
        '[{\n    label: "運賃マスタ",\n    path: "/master/shippingCosts",\n}, {\n    label: "運賃マスタ詳細",\n}]'
      }
      buttonLabel="AA"
      isGlobalWidgetContainer={true}
      otherActionsDefs={
        '[{\n  id: "DELETE",\n  label: "削除"\n}, {\n  id: "COMPLETE",\n  label: "契約完了"\n}, {\n  id: "INCOMPLETE",\n  label: "契約未完了"\n}]'
      }
      primaryButtonLabel="primary"
      secondaryButtonLabel="secondary"
      title="運賃マスタ"
    >
      <Container
        id="container"
        _direction="vertical"
        _gap="2px"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        padding="0"
        showBody={true}
        style={{ ordered: [{ background: "rgba(0, 0, 0, 0)" }] }}
      >
        <View id="413a5" viewKey="View 1">
          <Breadcrumbs
            id="headerBreadcrumbs"
            data="{{ breadcrumbs.value }}"
            disabledByIndex=""
            hidden=""
            labels="{{ item.label }}"
            margin="0"
            style={{
              ordered: [
                { hoverText: "rgb(0, 113, 193)" },
                { text: "rgb(0, 113, 193)" },
                { currentPageText: "rgb(17, 50, 59)" },
                { fontSize: "14px" },
                { currentPageFontSize: "14px" },
              ],
            }}
            tooltipByIndex=""
          >
            <Option id="0000">
              <Event
                event="click"
                method="run"
                params={{
                  ordered: [
                    {
                      src: 'parent.postMessage(\n  {\n    type: "link",\n    payload: { path: item.link }\n  },\n  urlparams.href\n)',
                    },
                  ],
                }}
                pluginId=""
                type="script"
                waitMs="0"
                waitType="debounce"
              />
            </Option>
            <Option id="0001" />
            <Option id="0002" />
            <Event
              enabled="{{ !!item.path }}"
              event="click"
              method="run"
              params={{
                ordered: [
                  {
                    src: 'parent.postMessage(\n  { type: "link", payload: item },\n  urlparams.href\n)',
                  },
                ],
              }}
              pluginId=""
              type="script"
              waitMs="0"
              waitType="debounce"
            />
          </Breadcrumbs>
          <Module
            id="pageHeader"
            breadcrumbs=""
            margin="0"
            name="header"
            otherActionsDefs="{{ otherActionsDefs.value }}"
            otherActionsQuery="otherActionsQuery"
            pageUuid="74aa064e-1683-4899-84d3-117602d3dee9"
            primaryButtonLabel="{{ primaryButtonLabel.value }}"
            primaryButtonQuery="primaryButtonQuery"
            secondaryButtonLabel="{{ secondaryButtonLabel.value }}"
            secondaryButtonQuery="secondaryButtonQuery"
            title="{{ title.value }}"
          />
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
