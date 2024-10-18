<SplitPaneFrame
  id="splitPaneFrame4"
  _resizeHandleEnabled={true}
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="true"
  isHiddenOnMobile={true}
  padding="8px 12px"
  position="right"
  showFooterBorder={false}
  showHeaderBorder={false}
  width="30%"
>
  <Container
    id="container10"
    _gap={0}
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    heightType="fixed"
    hidden=""
    overflowType="hidden"
    padding="12px"
    showBody={true}
    showBorder={false}
    showHeader={true}
  >
    <Header>
      <Text
        id="containerTitle35"
        value="### {{tableProject4.selectedRow.issue_index }}"
        verticalAlign="center"
      />
      <Button id="button101" disabled="" text="{{ i18n.t('Edit') }}">
        <Event
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "fae11fec-0346-11ef-be47-0ff8328004ce" },
              {
                options: {
                  ordered: [
                    {
                      queryParams: [{ ordered: [{ key: "" }, { value: "" }] }],
                    },
                    { newTab: true },
                    {
                      hashParams: [
                        {
                          ordered: [
                            { key: "issueID" },
                            { value: "{{tableProject4.selectedRow.issueID}}" },
                          ],
                        },
                      ],
                    },
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
      <Button
        id="button102"
        iconBefore="line/interface-delete-1"
        style={{ ordered: [{ background: "canvas" }] }}
      >
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="splitPaneFrame4"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Header>
    <View id="463d2" viewKey="View 1">
      <Include src="./tabbedContainer20.rsx" />
    </View>
  </Container>
</SplitPaneFrame>
