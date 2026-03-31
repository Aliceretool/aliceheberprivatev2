<Container
  id="container21"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden="false
"
  padding="12px"
  showBody={true}
  style={{ map: { boxShadow: "mediumElevation" } }}
>
  <Header>
    <Text
      id="containerTitle84"
      hidden="true"
      style={{
        color: "rgba(130, 126, 126, 1)",
        fontSize: "defaultFont",
        fontWeight: "defaultFont",
        fontFamily: "defaultFont",
      }}
      value="#### Compass"
      verticalAlign="center"
    />
    <Icon
      id="icon7"
      hidden="true"
      horizontalAlign="center"
      icon="line/interface-add-1"
    >
      <Event
        id="05bdf639"
        event="click"
        method="show"
        params={{}}
        pluginId="cohort_compassFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Icon>
    <Statistic
      id="statistic28"
      currency="USD"
      formattingStyle="percent"
      hidden="true"
      label=""
      labelCaption="Last Month"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="0"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Text id="text105" hidden="true" value="Best" verticalAlign="center" />
    <Text
      id="cohort_comp_best"
      hidden="true"
      value="Best"
      verticalAlign="center"
    />
    <Text id="text106" hidden="true" value="Average" verticalAlign="center" />
    <Text
      id="cohort_comp_avg"
      hidden="true"
      value="Best"
      verticalAlign="center"
    />
    <Text id="text107" hidden="true" value="vs Avg." verticalAlign="center" />
    <Text
      id="cohort_comp_vsavg"
      hidden="true"
      value="Best"
      verticalAlign="center"
    />
    <Text
      id="text398"
      horizontalAlign="center"
      style={{ fontSize: "h6Font", fontWeight: "h6Font", fontFamily: "h6Font" }}
      value="Compass score will be added soon"
      verticalAlign="center"
    />
  </View>
</Container>
