<ModalFrame
  id="modal_Risksonly_New"
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
      id="modalTitle12"
      value="### Add Risk Record"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton12"
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
        pluginId="modal_Risksonly_New"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form24"
      footerPaddingType="normal"
      headerPaddingType="normal"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
    >
      <Header>
        <Text
          id="formTitle26"
          marginType="normal"
          value="#### Add Record"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="select35"
          automaticItemColors={true}
          data="{{ getProject_field_riskArea_values3.data }}"
          emptyMessage="No options"
          formDataKey="risk_area_value"
          label="{{ i18n.t('Risk Area') }}"
          labels="{{ item.field_value }}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="{{ i18n.t('Select an option') }}"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.project_field_type_valueID }}"
        />
        <SegmentedControl
          id="select31"
          data="{{ getProject_field_severity_values3.data }}"
          formDataKey="severity_value"
          label="{{ i18n.t('Severity / Consequences') }}"
          labels="{{ item.field_name }}"
          paddingType="spacious"
          required={true}
          style={{ ordered: [{ indicatorBackground: "primary" }] }}
          value="{{ self.values[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <SegmentedControl
          id="select32"
          data="{{ getProject_field_occuranceLikelyhood_values3.data }}"
          formDataKey="occurance_value"
          label="{{ i18n.t('Occurance / Likelyhood') }}"
          labels="{{ item.field_name }}"
          paddingType="spacious"
          required={true}
          style={{ ordered: [{ indicatorBackground: "primary" }] }}
          value="{{ self.values[0] }}"
          values="{{ item.project_field_type_valueID }}"
        >
          <Option id="0000" />
          <Option id="0001" />
        </SegmentedControl>
        <NumberInput
          id="numberInput3"
          currency="USD"
          formDataKey="intrinsic_risk"
          inputValue={0}
          label="{{ i18n.t('Intrinsic Risk') }}"
          marginType="normal"
          placeholder="{{ i18n.t('Enter value') }}"
          showSeparators={true}
          showStepper={true}
          value="{{ parseInt(formatDataAsArray(getProject_field_severity_values3.data).filter(x => x.project_field_type_valueID == select31.value)[0].field_value) * parseInt(formatDataAsArray(getProject_field_occuranceLikelyhood_values3.data).filter(x => x.project_field_type_valueID == select32.value)[0].field_value) }}"
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insRiskAnalysis"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="formButton19"
      marginType="normal"
      submit={true}
      submitTargetId="form24"
      text="{{ i18n.t('Add Record') }}"
    />
  </Footer>
</ModalFrame>
