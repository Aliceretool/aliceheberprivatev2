<ModalFrame
  id="CreateService_ModalFrame"
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
  style={{ ordered: [{ border: "tokens/635de113" }] }}
>
  <Header>
    <Text
      id="CreateService_ModalTitle"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "h4Font" },
          { fontFamily: "h4Font" },
        ],
      }}
      value="Create service"
      verticalAlign="center"
    />
    <Button
      id="CreateService_ModalCloseButton"
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
        pluginId="CreateService_ModalFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="BenefitsServices_Group"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="59ea6" viewKey="View 1">
        <Container
          id="VerticalLine_Container"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          heightType="fill"
          margin="4px 6px"
          padding="0"
          showBody={true}
        >
          <View id="6a7b6" viewKey="View 1" />
        </Container>
        <Listbox
          id="Benefits_Listbox"
          data="{{ GetBenefits.data }}"
          emptyMessage="No options"
          label="Benefits"
          labelPosition="top"
          labels="{{ item.title }}"
          margin="4px 16px 4px 8px"
          showSelectionIndicator={true}
          style={{
            ordered: [
              { border: "tokens/635de113" },
              { sharedLabelFontSize: "h5Font" },
              { sharedLabelFontWeight: "h5Font" },
              { sharedLabelFontFamily: "h5Font" },
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          tooltipByIndex="{{ item.title }}"
          value="{{ self.values[0] }}"
          values="{{ item.id }}"
        />
        <RadioGroup
          id="Services_RadioGroup"
          data="{{ serviceOptions.value }}"
          heightType="fixed"
          label="Services"
          labelPosition="top"
          labels="{{ item.title }}"
          margin="4px 8px 4px 16px"
          minColumnWidth=""
          style={{
            ordered: [
              { sharedLabelFontSize: "h5Font" },
              { sharedLabelFontWeight: "h5Font" },
              { sharedLabelFontFamily: "h5Font" },
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
              { border: "rgb(72, 92, 199)" },
            ],
          }}
          tooltipByIndex=""
          value="{{ self.values[0] }}"
          values="{{ item.id }}"
        />
      </View>
    </Container>
  </Body>
  <Footer>
    <Button id="CreateService_SubmitButton" text="Create service">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createServiceHandler"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
