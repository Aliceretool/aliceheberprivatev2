<SplitPaneFrame
  id="splitPaneFrame3"
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
    id="container8"
    _gap={0}
    footerPadding="4px 12px"
    headerPadding="4px 12px"
    padding="12px"
    showBody={true}
    showHeader={true}
  >
    <Header>
      <Text
        id="containerTitle28"
        value="### {{tableProject3.selectedRow.issue_index }}"
        verticalAlign="center"
      />
      <Button id="button87" text="{{i18n.t('Edit')}}">
        <Event
          event="click"
          method="openPage"
          params={{
            ordered: [
              {
                options: {
                  ordered: [
                    {
                      queryParams: [
                        {
                          ordered: [
                            { key: "issueID" },
                            { value: "{{tableProject3.selectedRow.issueID}}" },
                          ],
                        },
                      ],
                    },
                    { hashParams: [] },
                  ],
                },
              },
              { pageName: "CRF_Issue" },
            ],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="button88"
        iconBefore="line/interface-delete-1"
        style={{ ordered: [{ background: "canvas" }] }}
      >
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="splitPaneFrame3"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
    </Header>
    <View id="8d62c" viewKey="View 1">
      <Include src="./tabbedContainer14.rsx" />
    </View>
  </Container>
</SplitPaneFrame>
