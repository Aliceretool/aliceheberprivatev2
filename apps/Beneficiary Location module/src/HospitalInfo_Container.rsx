<Container
  id="HospitalInfo_Container"
  currentViewKey="{{ JSON.parse(locationInput.value)?.mna_hospital ? 'mna' : 'manual' }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{ !isHospitalInfoTriggered.value }}"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  showHeaderBorder={false}
  style={{ ordered: [{ background: "canvas" }] }}
>
  <Header>
    <Tabs
      id="HospitalInfo_Container_Tabs"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="HospitalInfo_Container"
      value="{{ self.values[0] }}"
    >
      <Option id="60811" value="Tab 1" />
      <Option id="7e268" value="Tab 2" />
      <Option id="ef74f" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="0cd16" viewKey="mna">
    <Container
      id="Hospital_Container"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !selectedMnaHospital.value }}"
      margin="0"
      overflowType="hidden"
      padding="0"
      showBorder={false}
      showHeader={true}
      style={{ ordered: [{ background: "canvas" }] }}
    >
      <Header>
        <Container
          id="Hospital_Info_Stack"
          _gap="0px"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0px"
          padding="0px"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "canvas" }] }}
        >
          <View id="4a31b" viewKey="View 1">
            <Container
              id="Hospital_Icon_Stack"
              _align="center"
              _gap="0px"
              _justify="center"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              heightType="fixed"
              margin="10px 10px 15px 10px"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "primary" }] }}
            >
              <View id="79d05" viewKey="View 1">
                <Icon
                  id="Hospital_Icon"
                  horizontalAlign="center"
                  icon="bold/interface-file-clipboard-text"
                />
              </View>
            </Container>
            <Container
              id="Hospital_Combined_Stack"
              _direction="vertical"
              _gap="3px"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="10px 10px 5px 10px"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "canvas" }] }}
            >
              <View id="4a31b" viewKey="View 1">
                <Container
                  id="Hospital_Tags_2"
                  _align="center"
                  _gap="5px"
                  _type="stack"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                  style={{ ordered: [{ background: "canvas" }] }}
                >
                  <View id="cc9ff" viewKey="View 1">
                    <TagsWidget2
                      id="Hospital_Level_Tags"
                      _colorByIndex={[
                        "{{ theme.info }}",
                        "{{ theme.primary }}",
                      ]}
                      _hiddenByIndex={[
                        "{{ !selectedMnaHospital.value.isDirectPayment }}",
                        "{{ !selectedMnaHospital.value.level }}",
                      ]}
                      _iconByIndex={[
                        "bold/interface-validation-check-circle",
                        "",
                      ]}
                      _ids={["c56a7", "4f1cd"]}
                      _imageByIndex={["", ""]}
                      _labels={[
                        "Direct network",
                        "Level {{ selectedMnaHospital.value.hospitalLevel }}",
                      ]}
                      _textColorByIndex={["", ""]}
                      _tooltipByIndex={["", ""]}
                      _values={["network", "level"]}
                      allowWrap={true}
                      colorByIndex=""
                      data=""
                      hidden=""
                      hiddenByIndex=""
                      iconByIndex=""
                      imageByIndex=""
                      itemMode="static"
                      labels=""
                      margin="4px"
                      textColorByIndex=""
                      tooltipByIndex=""
                      values=""
                    />
                  </View>
                </Container>
                <Text
                  id="Hospital_Location_Text"
                  style={{ ordered: [] }}
                  value="**{{ selectedMnaHospital.value.name }}**
{{ selectedMnaHospital.value.address }}

📞 {{ selectedMnaHospital.value.phones[0].number }}"
                  verticalAlign="center"
                />
                <Container
                  id="Hospital_Tags"
                  _align="center"
                  _gap="5px"
                  _type="stack"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="0"
                  showBody={true}
                  showBorder={false}
                  style={{ ordered: [{ background: "canvas" }] }}
                >
                  <View id="cc9ff" viewKey="View 1">
                    <TagsWidget2
                      id="Hospital_Is_Audited_Tag"
                      _colorByIndex={["{{ theme.primary }}"]}
                      _hiddenByIndex={[""]}
                      _iconByIndex={[""]}
                      _ids={["4f1cd"]}
                      _imageByIndex={[""]}
                      _labels={["Audited"]}
                      _textColorByIndex={[""]}
                      _tooltipByIndex={[""]}
                      _values={["audited"]}
                      allowWrap={true}
                      colorByIndex=""
                      data=""
                      hidden="{{ !selectedMnaHospital.value.isAudited }}"
                      hiddenByIndex=""
                      iconByIndex=""
                      imageByIndex=""
                      itemMode="static"
                      labels=""
                      margin="4px"
                      textColorByIndex=""
                      tooltipByIndex=""
                      values=""
                    />
                    <Text
                      id="Hospital_Rating_Text"
                      style={{
                        ordered: [
                          { fontSize: "h6Font" },
                          { fontWeight: "h6Font" },
                          { fontFamily: "h6Font" },
                        ],
                      }}
                      value="Overal rating"
                      verticalAlign="center"
                    />
                    <Rating
                      id="Hospital_Rating"
                      allowHalf={true}
                      disabled="true"
                      label=""
                      labelAlign="right"
                      max={5}
                      style={{ ordered: [{ uncheckedBackground: "primary" }] }}
                      value="{{ selectedMnaHospital.value?.stars || 0 }}"
                    />
                  </View>
                </Container>
              </View>
            </Container>
            <Container
              id="Hospital_Discance_Stack"
              _gap="10px"
              _justify="end"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0px 5px 0px 5px"
              padding="12px"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "canvas" }] }}
            >
              <View id="cec27" viewKey="View 1">
                <Button id="Hospital_MoreInfo_Button" text="More info" />
                <IconText
                  id="Hospital_Distance_IconText"
                  horizontalAlign="right"
                  icon="bold/travel-map-location-pin"
                  margin="8px 8px"
                  style={{
                    ordered: [
                      { fontSize: "h5Font" },
                      { fontWeight: "h5Font" },
                      { fontFamily: "h5Font" },
                    ],
                  }}
                  text="{{ selectedMnaHospital.value.distance.toFixed(2) }} km"
                />
              </View>
            </Container>
          </View>
        </Container>
      </Header>
      <View id="ca682" viewKey="View 1" />
    </Container>
  </View>
  <View id="b5027" viewKey="manual">
    <TextInput
      id="HospitalName_Input"
      label="Hospital name"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ locationInputTransformer.value.manual_hospital.hospital_name }}"
    />
    <PhoneNumberInput
      id="Hospital_PhoneNumber"
      label="Hospital phone number"
      labelPosition="top"
      lockedCountryCode="US"
      value="{{ locationInputTransformer.value.manual_hospital.hospital_phone }}"
    />
    <Spacer id="spacer42" />
    <Module
      id="HospitalLocation_Module"
      defaultAddress="{{ locationInputTransformer.value.manual_hospital.hospital_address.defauldAddress }}"
      label="Hospital address"
      margin="0px"
      name="Google Maps Search Module"
      pageUuid="e9b5e83c-2bb0-4e37-bbc3-30e22404c26d"
      placeId="{{ locationInputTransformer.value.manual_hospital.hospital_address.placeId }}"
      required=""
    />
  </View>
</Container>
