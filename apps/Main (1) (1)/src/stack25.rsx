<Container
  id="stack25"
  _gap="8px"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  padding="12px"
  showBody="{{ isFlagsVisible.value }}"
  style={{ ordered: [] }}
>
  <View id="c7eb7" viewKey="View 1">
    <Container
      id="FraudSuspicios_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.fraudSuspicious ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsBaseBlue1 }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon3"
          horizontalAlign="center"
          icon="bold/interface-user-single"
        />
        <Text
          id="text37"
          margin="0 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Fraud 
suspicious"
          verticalAlign="center"
        />
      </View>
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  {
                    additionalScope: {
                      ordered: [{ flagName: "fraudSuspicious" }],
                    },
                  },
                ],
              },
            },
          ],
        }}
        pluginId="handleFlagClick"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Container
      id="SensitiveCase_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.sensitiveCase ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsBaseBlue1 }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon4"
          horizontalAlign="center"
          icon="bold/interface-alert-warning-triangle-alternate"
        />
        <Text
          id="text38"
          margin="0 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Sensitive
case"
          verticalAlign="center"
        />
      </View>
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  {
                    additionalScope: {
                      ordered: [{ flagName: "sensitiveCase" }],
                    },
                  },
                ],
              },
            },
          ],
        }}
        pluginId="handleFlagClick"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Container
      id="VIP_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.vip ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsBaseBlue1 }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon5"
          horizontalAlign="center"
          icon="bold/interface-favorite-star-alternate"
        />
        <Text
          id="text39"
          margin="2px 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="VIP"
          verticalAlign="center"
        />
      </View>
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { additionalScope: { ordered: [{ flagName: "vip" }] } },
                ],
              },
            },
          ],
        }}
        pluginId="handleFlagClick"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Container
      id="InternationalSanctions_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.internationalSanctioncs ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsNeutralFillColorFilledHandleBg }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon6"
          horizontalAlign="center"
          icon="bold/travel-map-flag-alternate"
        />
        <Text
          id="text40"
          margin="0 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="International
sanctions"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="CountryCategory_Flag"
      _direction="vertical"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.countryCategory ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsBaseBlue1 }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Text
          id="text42"
          heightType="fixed"
          margin="0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Country category"
          verticalAlign="center"
        />
        <TagsWidget2
          id="tags1"
          _colorByIndex={["rgba(0, 0, 0, 1)"]}
          _hiddenByIndex={[false]}
          _iconByIndex={[""]}
          _ids={["9f254"]}
          _imageByIndex={[""]}
          _labels={["Burkina Faso"]}
          _textColorByIndex={[""]}
          _tooltipByIndex={[""]}
          _values={["category"]}
          colorByIndex=""
          data=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          labels=""
          margin="0"
          textColorByIndex=""
          tooltipByIndex=""
          values=""
        />
      </View>
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  {
                    additionalScope: {
                      ordered: [{ flagName: "countryCategory" }],
                    },
                  },
                ],
              },
            },
          ],
        }}
        pluginId="handleFlagClick"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Container
      id="EEC_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.eec ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsNeutralFillColorFilledHandleBg }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon7"
          horizontalAlign="center"
          icon="bold/money-currency-euro-circle-alternate"
        />
        <Text
          id="text43"
          margin="2px 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="EEC"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="EligibleAlert_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.eligibleAlert ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsNeutralFillColorFilledHandleBg }}",
          },
        ],
      }}
      styleContext={{ ordered: [] }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon8"
          horizontalAlign="center"
          icon="bold/computer-desktop-warning-alternate"
        />
        <Text
          id="text44"
          margin="2px 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Eligible
ALERT"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="Crisis_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.crisis ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsNeutralFillColorFilledHandleBg }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon9"
          horizontalAlign="center"
          icon="bold/image-flash-1-alternate"
        />
        <Text
          id="text45"
          margin="2px 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Crisis"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="Collaboration_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.collaboration ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsNeutralFillColorFilledHandleBg }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon10"
          horizontalAlign="center"
          icon="line/interface-user-multiple"
        />
        <Text
          id="text46"
          margin="2px 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Collaboration"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="MassNonMass_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.massNonMass ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsNeutralFillColorFilledHandleBg }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon id="icon11" horizontalAlign="center" icon="bold/money-graph" />
        <Text
          id="text47"
          margin="2px 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Mass
Non-Mass"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="EligibleSafety_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.eligibleSafety ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsNeutralFillColorFilledHandleBg }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon12"
          horizontalAlign="center"
          icon="bold/interface-security-shield-1"
        />
        <Text
          id="text48"
          margin="2px 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Eligible
SAFETY"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="PossibleRecovery_Flag"
      _align="center"
      _gap="0px"
      _justify="center"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fill"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{
        ordered: [
          {
            background:
              "{{ flags.value.possibleRecovery ? theme.tokens.colorsBaseRed5 : theme.tokens.colorsBaseBlue1 }}",
          },
        ],
      }}
    >
      <View id="c7eb7" viewKey="View 1">
        <Icon
          id="icon13"
          horizontalAlign="center"
          icon="bold/interface-search"
        />
        <Text
          id="text49"
          margin="2px 8px 0 0"
          style={{
            ordered: [
              { fontSize: "labelFont" },
              { fontWeight: "labelFont" },
              { fontFamily: "labelFont" },
            ],
          }}
          value="Possible
recovery"
          verticalAlign="center"
        />
      </View>
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  {
                    additionalScope: {
                      ordered: [{ flagName: "possibleRecovery" }],
                    },
                  },
                ],
              },
            },
          ],
        }}
        pluginId="handleFlagClick"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
  </View>
</Container>
