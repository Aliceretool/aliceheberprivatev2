<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text id="title" value="#### Add compound" verticalAlign="center" />
  </Header>
  <View id="00030" viewKey="View 1">
    <TextInput
      id="compound_name_txt"
      label="Compound name"
      labelPosition="top"
      placeholder="AKB Kitzingen"
      required={true}
    />
    <TextInput
      id="compound_id_txt"
      label="Compound ID"
      labelPosition="top"
      placeholder="akb_kitzingen"
      required={true}
      textBefore="ext_"
    />
    <Time
      id="opening_time"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label="Opening Time"
      labelPosition="top"
      minuteStep={15}
      required={true}
      value="10:00"
    />
    <Time
      id="closing_time"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label="Closing Time"
      labelPosition="top"
      minuteStep={15}
      value="18:00"
    />
    <TextInput
      id="street_line_txt"
      label="Street, House Number"
      labelPosition="top"
      placeholder="Prinzregentenplatz 9"
      required={true}
    />
    <TextInput
      id="postcode_txt"
      label="Postcode"
      labelPosition="top"
      placeholder="81675"
      required={true}
    />
    <TextInput
      id="city_txt"
      label="City"
      labelPosition="top"
      placeholder="Munich"
      required={true}
    />
    <Select
      id="state_selector"
      emptyMessage="No options"
      itemMode="static"
      label="State"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
    >
      <Option id="00030" value="BW" />
      <Option id="00031" value="BY" />
      <Option id="00032" value="BE" />
      <Option id="e0876" disabled={false} hidden={false} value="BB" />
      <Option id="86856" disabled={false} hidden={false} value="HB" />
      <Option id="16f00" disabled={false} hidden={false} value="HH" />
      <Option id="955f1" disabled={false} hidden={false} value="HE" />
      <Option id="c6d9d" disabled={false} hidden={false} value="MV" />
      <Option id="902ea" disabled={false} hidden={false} value="NI" />
      <Option id="c0fc1" disabled={false} hidden={false} value="NW" />
      <Option id="a0e20" disabled={false} hidden={false} value="RP" />
      <Option id="de625" disabled={false} hidden={false} value="SL" />
      <Option id="46abe" disabled={false} hidden={false} value="SN" />
      <Option id="b7ab1" disabled={false} hidden={false} value="ST" />
      <Option id="fc848" disabled={false} hidden={false} value="SH" />
      <Option id="2eb51" disabled={false} hidden={false} value="TH" />
    </Select>
    <Divider id="divider1" />
    <TextInput
      id="contact_name_txt"
      iconBefore="bold/interface-user-single"
      label="Contact Name"
      labelPosition="top"
      placeholder="Ana Costa"
      required={true}
    />
    <TextInput
      id="email1"
      iconBefore="bold/mail-send-envelope"
      label="Email"
      labelPosition="top"
      patternType="email"
      placeholder="you@example.com"
      required={true}
    />
    <PhoneNumberInput
      id="phoneNumber1"
      label="Phone"
      labelPosition="top"
      lockedCountryCode="US"
      required={true}
    />
    <Button
      id="create_location_btn"
      disabled="{{ !compound_id_txt.value || !compound_name_txt.value || !opening_time.value || !closing_time.value || !street_line_txt.value || !postcode_txt.value || !city_txt.value || !state_selector.value }}"
      loading="{{ create_compound.isFetching }}"
      text="Create Location"
    >
      <Event
        id="2d7ceb3b"
        event="click"
        method="trigger"
        params={{}}
        pluginId="create_compound"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer1" />
  </View>
</Container>
