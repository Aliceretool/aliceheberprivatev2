<Container
  id="Main_Container"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Container
      id="Filter_Stack"
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="3c9cf" viewKey="View 1">
        <Module
          id="GoogleMapsSearch_Module"
          defaultAddress="{{ default_address.value }}"
          label="WHERE"
          margin="0"
          name="Google Maps Search Module"
          pageUuid="e9b5e83c-2bb0-4e37-bbc3-30e22404c26d"
          placeId="{{ place_Id.value }}"
          required="true"
        />
        <Select
          id="What_Select"
          emptyMessage="No options"
          itemMode="static"
          label="WHAT"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Healthcare facility"
          showClear={true}
          showSelectionIndicator={true}
          value="HCF"
        >
          <Option id="716b1" label="Hospital" value="HCF" />
          <Option id="47a68" label="Local agent" value="AGT" />
        </Select>
        <Select
          id="Keywords_Select"
          disabled="true"
          emptyMessage="No options"
          itemMode="static"
          label="KEYWORDS"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="51d4e" value="Option 1" />
          <Option id="a88e7" value="Option 2" />
          <Option id="72f1b" value="Option 3" />
        </Select>
        <Select
          id="Speciality_Select"
          disabled="true"
          emptyMessage="No options"
          itemMode="static"
          label="SPECIALITY"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Choose a speciality"
          showSelectionIndicator={true}
        >
          <Option id="fb233" value="Option 1" />
          <Option id="80604" value="Option 2" />
          <Option id="5d250" value="Option 3" />
        </Select>
      </View>
    </Container>
    <Button id="FindHospitals_Button" text="Find">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetMNAHospitals"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer1" />
  </Header>
  <View id="cf576" viewKey="View 1">
    <ListViewBeta
      id="Hospital_ListView"
      _primaryKeys=""
      data="{{ hospitals.value }}"
      hidden="{{ !hospitals?.value?.length }}"
      itemWidth="200px"
      margin="0px 0px 70px 0px"
      numColumns={3}
      padding="0"
    >
      <Container
        id="Hospital_Container"
        _gap="0px"
        _type="stack"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        overflowType="hidden"
        padding="0"
        showBorder={false}
        showHeader={true}
        style={{ ordered: [] }}
        styleContext={{ ordered: [] }}
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
                        _colorByIndex={[
                          "{{ theme.info }}",
                          "{{ theme.primary }}",
                        ]}
                        _hiddenByIndex={[
                          "{{ !item.isDirectPayment }}",
                          "{{ !item.level }}",
                        ]}
                        _iconByIndex={[
                          "bold/interface-validation-check-circle",
                          "",
                        ]}
                        _ids={["70c7d", "4f1cd"]}
                        _imageByIndex={["", ""]}
                        _labels={[
                          "Direct network",
                          "Level {{ item.hospitalLevel }}",
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
                    value="**{{ item.name }}**
{{ item.address }}

📞 {{ item.phones[0].number }}"
                    verticalAlign="center"
                  />
                  <Container
                    id="Hospital_Tags2"
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
                        id="Hospital_Is_Audited_Tag2"
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
                        hidden="{{ !item.isAudited }}"
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
                        id="Hospital_Rating_Text2"
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
                        id="Hospital_Rating2"
                        allowHalf={true}
                        disabled="true"
                        label=""
                        labelAlign="right"
                        max={5}
                        style={{
                          ordered: [{ uncheckedBackground: "primary" }],
                        }}
                        value="{{ item?.stars || 0 }}"
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
                    text="{{ item.distance.toFixed(2) }} km"
                  />
                </View>
              </Container>
              <Container
                id="stack1"
                _gap="0px"
                _justify="end"
                _type="stack"
                footerPadding="4px 12px"
                headerPadding="4px 12px"
                margin="0px 5px 0px 5px"
                padding="0px 12px 0px 5px"
                showBody={true}
                showBorder={false}
                style={{ ordered: [{ background: "canvas" }] }}
              >
                <View id="fe589" viewKey="View 1">
                  <Button
                    id="button1"
                    iconAfter={
                      "{{ item.isDirectPayment ? '' : \"/icon:bold/interface-alert-warning-triangle-alternate\"  }}"
                    }
                    style={{
                      ordered: [
                        {
                          background:
                            "{{ item.isDirectPayment ? theme.primary : theme.danger }}",
                        },
                      ],
                    }}
                    text="Select"
                    tooltipText="{{  item.isDirectPayment ? '' : 'Not direct network!' }}"
                  >
                    <Event
                      event="click"
                      method="setValue"
                      params={{ ordered: [{ value: "{{ item }}" }] }}
                      pluginId="selectedHospital"
                      type="state"
                      waitMs="0"
                      waitType="debounce"
                    />
                    <Event
                      event="click"
                      method="trigger"
                      params={{ ordered: [] }}
                      pluginId="SelectHandler"
                      type="datasource"
                      waitMs="0"
                      waitType="debounce"
                    />
                  </Button>
                </View>
              </Container>
            </View>
          </Container>
        </Header>
        <View id="ca682" viewKey="View 1" />
      </Container>
    </ListViewBeta>
    <Text
      id="HospitalsNotFound_Text"
      hidden="{{ !GetMNAHospitals.data || hospitals?.value?.length || GetMNAHospitals?.error }}"
      horizontalAlign="center"
      value="**Hospitals not found!**"
      verticalAlign="center"
    />
  </View>
</Container>
