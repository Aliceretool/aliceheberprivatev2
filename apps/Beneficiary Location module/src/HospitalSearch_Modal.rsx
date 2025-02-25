<ModalFrame
  id="HospitalSearch_Modal"
  enableFullBleed={true}
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
  size="large"
>
  <Header>
    <Text
      id="HospitalSearch_Modal_Title"
      value="### Container title"
      verticalAlign="center"
    />
    <Button
      id="HospitalSearch_Modal_CloseButton"
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
        pluginId="HospitalSearch_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Module
      id="HospitalSearch_Module"
      default_address="{{ locationInputTransformer.value.patient_location.defauldAddress || exactPatientLocationTransformer?.value?.fullAddress }}"
      name="Hospital Search Module"
      pageUuid="3257f77e-3c45-448b-9240-8fe30d711964"
      place_Id="{{ locationInputTransformer.value.patient_location.placeId || exactPatientLocationTransformer?.value?.placeId }}"
      SelectHandler="selectHospitalHandler"
    />
  </Body>
</ModalFrame>
