<ModalFrame
  id="updateCompletionModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="true"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle2"
      value={
        '### 契約を{{ purchaseOrder2.data.completionFlag ? "未完了" : "完了" }}にしますか？'
      }
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton2"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="updateCompletionModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text4"
      value={
        '契約を{{ purchaseOrder2.data.completionFlag ? "未完了" : "完了" }}にします。よろしいですか？'
      }
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <ButtonGroup2 id="buttonGroup5" alignment="right" overflowPosition={2}>
      <ButtonGroup2-Button
        id="d32c4"
        disabled="{{ updateCompletionFlag.isFetching }}"
        styleVariant="outline"
        text="キャンセル
"
      >
        <Event
          event="click"
          method="run"
          params={{
            ordered: [{ src: "updateCompletionModal.setHidden(true)" }],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="fb026"
        disabled="{{ updateCompletionFlag.isFetching }}"
        styleVariant="solid"
        text="更新"
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
          pluginId="updateCompletionFlag"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Footer>
</ModalFrame>
