<ModalFrame
  id="lineItemCancelModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
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
      id="modalTitle3"
      value={'### 削除{{ isApprovalNeeded ? "申請" : "" }}しますか？'}
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton3"
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
        pluginId="lineItemCancelModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text3"
      value={
        '{{ isApprovalNeeded \n  ? `\n伝票タイプ：${purchaseOrder2.data.purchaseSlipTypeName}の削除は上長の承認が必要です。\n承認が完了した後に処理が完了します。\n承認申請しますか？\n`.trim() : "発注伝票を削除しますか？" }}'
      }
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <ButtonGroup2 id="buttonGroup4" alignment="right" overflowPosition={2}>
      <ButtonGroup2-Button
        id="0e3e2"
        disabled="{{ deleteSaleOrder.isFetching }}"
        styleVariant="outline"
        text="キャンセル"
      >
        <Event
          event="click"
          method="run"
          params={{ ordered: [{ src: "lineItemCancelModal.setHidden(true)" }] }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="fdc29"
        disabled="{{ deleteSaleOrder.isFetching }}"
        styleVariant="danger"
        text={'{{ isApprovalNeeded ? "申請" : "削除" }}'}
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="deleteSaleOrder"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Footer>
</ModalFrame>
