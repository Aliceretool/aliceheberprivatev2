<ModalFrame
  id="modal_Risk_Impact_New"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle11"
      value="### Add Risk & Impact Analysis"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton11"
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
        pluginId="modal_Risk_Impact_New"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./steppedContainer2.rsx" />
  </Body>
  <Footer>
    <Button
      id="button98"
      hidden="{{steppedContainer2.currentViewKey !== 'Impact Analysis' }}"
      iconBefore="line/interface-arrows-bend-left-1"
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      text="{{ i18n.t('Previous') }}"
    >
      <Event
        event="click"
        method="showPreviousView"
        params={{ ordered: [] }}
        pluginId="steppedContainer2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button96"
      hidden="{{steppedContainer2.currentViewKey === 'Impact Analysis' }}"
      marginType="normal"
      style={{ ordered: [] }}
      text="{{ i18n.t('Save & Continue') }}"
    >
      <Event
        event="click"
        method="setCurrentViewIndex"
        params={{ ordered: [{ viewIndex: "1" }] }}
        pluginId="steppedContainer2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="formButton18"
      hidden="{{steppedContainer2.currentViewKey === 'Impact Analysis' }}"
      marginType="normal"
      style={{ ordered: [{ background: "secondary" }] }}
      submit={true}
      submitTargetId="riskAnalysisFromTransitionForm2"
      text="{{ i18n.t('Add Risk Record') }}"
    />
    <Button
      id="button97"
      hidden="{{steppedContainer2.currentViewKey !== 'Impact Analysis' }}"
      marginType="normal"
      style={{ ordered: [{ background: "secondary" }] }}
      text="{{ i18n.t('Save Impact Analysis') }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updIssue_impactAndRiskAnalysed2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
