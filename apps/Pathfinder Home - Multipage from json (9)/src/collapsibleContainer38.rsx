<Container
  id="collapsibleContainer38"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="collapsibleTitle42"
      value="#### Item Details"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle1"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer38.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer38"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="89d7d" viewKey="View 1">
    <SegmentedControl
      id="segmentedControl12"
      itemMode="static"
      label="Questionnaire Evaluation Risk Assessment  "
      labelPosition="top"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="d6b83" value="Low" />
      <Option id="a93ae" value="Medium" />
      <Option id="c9409" disabled={false} iconPosition="left" value="High" />
    </SegmentedControl>
    <SegmentedControl
      id="segmentedControl13"
      itemMode="static"
      label="Compliance of documentation required "
      labelPosition="top"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="d6b83" value="Satisfied" />
      <Option id="a93ae" value="Not Satisfied" />
    </SegmentedControl>
    <SegmentedControl
      id="segmentedControl6"
      itemMode="static"
      label="Supplier Specification conform to PCM requirements "
      labelPosition="top"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="d6b83" value="Yes" />
      <Option id="a93ae" value="No" />
    </SegmentedControl>
    <TextArea
      id="textArea34"
      autoResize={true}
      label="What tests need to be added/ modified on the manufacturers COA?"
      labelPosition="top"
      minLines={2}
    />
    <TextArea
      id="textArea35"
      autoResize={true}
      label="Did the supplier updated the specs?"
      labelPosition="top"
      minLines={2}
    />
    <SegmentedControl
      id="segmentedControl7"
      itemMode="static"
      label="Is the material from human or animal origin? "
      labelPosition="top"
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="d6b83" value="Yes" />
      <Option id="a93ae" value="No" />
    </SegmentedControl>
    <SegmentedControl
      id="segmentedControl8"
      itemMode="static"
      label="Is the material in compliance with Product Registration Details (PRD)? "
      labelPosition="top"
      labelWrap={true}
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="d6b83" value="Yes" />
      <Option id="a93ae" value="No" />
    </SegmentedControl>
    <SegmentedControl
      id="segmentedControl9"
      itemMode="static"
      label="Is the material in compliance with Pharmacopoeia and/or Certificate of Suitability (CEP) and/or Drug Master File? "
      labelPosition="top"
      labelWrap={true}
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="d6b83" value="Yes" />
      <Option id="a93ae" value="No" />
      <Option
        id="fa96b"
        disabled={false}
        iconPosition="left"
        label="N/A"
        value="NA"
      />
    </SegmentedControl>
    <SegmentedControl
      id="segmentedControl10"
      itemMode="static"
      label="Specific storage or handling conditions not currently available at PCM? "
      labelPosition="top"
      labelWrap={true}
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="d6b83" value="Yes" />
      <Option id="a93ae" value="No" />
    </SegmentedControl>
    <SegmentedControl
      id="segmentedControl11"
      itemMode="static"
      label="Synthetic Root Provided(for API only) "
      labelPosition="top"
      labelWrap={true}
      paddingType="spacious"
      style={{ ordered: [{ indicatorBackground: "primary" }] }}
      value="{{ self.values[0] }}"
    >
      <Option id="d6b83" value="Yes" />
      <Option id="a93ae" value="No" />
    </SegmentedControl>
  </View>
</Container>
