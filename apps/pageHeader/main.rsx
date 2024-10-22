<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="otherActionsDefs"
    value={
      '[{\n  id: "DELETE",\n  label: "削除"\n}, {\n  id: "COMPLETE",\n  label: "契約完了"\n}, {\n  id: "DOWNLOAD",\n  label: "注文書兼出荷指図書のダウンロード"\n}]'
    }
  />
  <GlobalWidgetProp id="primaryButtonLabel" value="Primary" />
  <GlobalWidgetProp id="secondaryButtonLabel" value="Secondary" />
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
        '[{\n    label: "運賃マスタ",\n    link: "/master/shippingCosts",\n}, {\n    label: "運賃マスタ詳細",\n}]'
      }
      button=""
      buttonLabel="更新"
      isGlobalWidgetContainer={true}
      otherActionsDefs={
        '[{\n  id: "DELETE",\n  label: "削除"\n}, {\n  id: "COMPLETE",\n  label: "契約完了"\n}, {\n  id: "DOWNLOAD",\n  label: "注文書兼出荷指図書のダウンロード"\n}]'
      }
      prinaryButtonLabel="Primary"
      secondaryButtonLabel="Secondary"
      title="運賃マスタ"
    >
      <Container
        id="container"
        _align="center"
        _gap="16px"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="0"
        heightType="fixed"
        margin="0"
        overflowType="hidden"
        padding="0"
        showBody={true}
        showBorder={false}
        showHeader="false"
        showHeaderBorder={false}
        style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      >
        <View id="e67e9" viewKey="View 1">
          <Text
            id="headerTitle"
            margin="0"
            overflowType="hidden"
            style={{
              ordered: [{ links: "rgb(0, 113, 193)" }, { fontSize: "24px" }],
            }}
            value="**{{ title.value }}**"
            verticalAlign="center"
          />
          <Container
            id="buttons"
            _gap="8px"
            _justify="end"
            _type="stack"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            margin="0"
            padding="0"
            showBody={true}
            showBorder={false}
            style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
          >
            <View id="04e9b" viewKey="View 1">
              <Button
                id="primaryAction"
                heightType="auto"
                hidden="{{ !primaryButtonLabel.value }}"
                margin="4px 0"
                style={{
                  ordered: [
                    { border: "rgb(206, 207, 208)" },
                    { background: "rgb(255, 255, 255)" },
                  ],
                }}
                text="{{ primaryButtonLabel.value }}"
              >
                <Event
                  event="click"
                  method="trigger"
                  params={{ ordered: [] }}
                  pluginId="primaryButtonQuery"
                  type="datasource"
                  waitMs="0"
                  waitType="debounce"
                />
              </Button>
              <Button
                id="secondaryAction"
                heightType="auto"
                hidden="{{ !secondaryButtonLabel.value }}"
                margin="4px 0"
                style={{
                  ordered: [
                    { border: "rgb(206, 207, 208)" },
                    { background: "rgb(255, 255, 255)" },
                  ],
                }}
                text="{{ secondaryButtonLabel.value }}"
              >
                <Event
                  event="click"
                  method="trigger"
                  params={{ ordered: [] }}
                  pluginId="secondaryButtonQuery"
                  type="datasource"
                  waitMs="0"
                  waitType="debounce"
                />
              </Button>
              <DropdownButton
                id="otherActions"
                _colorByIndex={[]}
                _fallbackTextByIndex={[]}
                _imageByIndex={[]}
                _values={[]}
                ariaLabel="その他の操作"
                captionByIndex=""
                data="{{ otherActionsDefs.value }}"
                hidden="{{ !otherActionsDefs.value }}"
                labels="{{ item.label }}"
                margin="4px 0"
                overlayMaxHeight={375}
                style={{
                  ordered: [
                    { background: "rgb(255, 255, 255)" },
                    { border: "rgb(206, 207, 208)" },
                  ],
                }}
                text="その他の操作"
                tooltipByIndex="{{ item.label }}"
              >
                <Event
                  event="click"
                  method="run"
                  params={{
                    ordered: [
                      {
                        src: "otherActionsQuery.trigger({\n  additionalScope: { item }\n});",
                      },
                    ],
                  }}
                  pluginId=""
                  type="script"
                  waitMs="0"
                  waitType="debounce"
                />
              </DropdownButton>
            </View>
          </Container>
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
