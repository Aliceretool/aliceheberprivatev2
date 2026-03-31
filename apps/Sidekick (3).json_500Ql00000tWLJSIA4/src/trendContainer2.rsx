<Container
  id="trendContainer2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Text
      id="containerTitle85"
      value="#### Success Metrics"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Include src="./EolTrendContainer2.rsx" />
    <Container
      id="LsatTrendContainer7"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="text113"
          heightType="fixed"
          margin="0"
          style={{
            fontSize: "h6Font",
            fontWeight: "h6Font",
            fontFamily: "h6Font",
          }}
          value="**LSAT - {{ LsatTrendContainer7.currentViewKey }} Trend**"
          verticalAlign="center"
        />
        <Tabs
          id="tabs10"
          alignment="right"
          hidden="true"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="LsatTrendContainer7"
          value="{{ self.values[0] }}"
        >
          <Option id="00030" value="Tab 1" />
          <Option id="00031" value="Tab 2" />
          <Option id="00032" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="00032" viewKey="Monthly">
        <Chart
          id="lsat_monthly"
          barGap={0.4}
          barMode="group"
          legendPosition="bottom"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisScale="category"
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="inside"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Your Performance"
            showMarkers={false}
            textTemplate="%{y}"
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).lsat_me }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="inside"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="#cd6f00"
            lineDash="dot"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.highlight }}"
            markerSize={6}
            markerSymbol="circle"
            name="Average"
            showMarkers={true}
            textTemplate="%{y}"
            textTemplateMode="source"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).lsat_avg }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.success }}"
            lineDash="dot"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.success }}"
            markerSize={6}
            markerSymbol="circle"
            name="Best"
            showMarkers={true}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).lsat_best }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View id="00031" viewKey="Weekly">
        <Chart
          id="lsat_weekly"
          barMode="group"
          barOrientation=""
          chartType="line"
          legendPosition="bottom"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax="1"
          yAxisRangeMin="0"
          yAxisRangeMode="manual"
          yAxisShowTickLabels={true}
          yAxisTickFormat=".0%"
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="manual"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.success }}"
            lineDash="dash"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Best Performance"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1, 2, 3, 4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.9, 0.91, 0.91, 0.92, 0.92, 0.87, 0.89, 0.91, 0.90, 0.93, 0.91, 0.90]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="rgba(0, 0, 0, 1)"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Average"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1,2,3,4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.82, 0.82, 0.83, 0.82, 0.83, 0.84, 0.83, 0.83, 0.84, 0.84, 0.85, 0.85]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ coach_learners_query.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Your Performance"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1,2,3,4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.85, 0.84, 0.84, 0.81, 0.83, 0.84, 0.86, 0.85, 0.86, 0.86, 0.85, 0.85]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
    </Container>
    <Container
      id="LsatTrendContainer8"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="text115"
          heightType="fixed"
          margin="0"
          style={{
            fontSize: "h6Font",
            fontWeight: "h6Font",
            fontFamily: "h6Font",
          }}
          value="**Attendance - {{ LsatTrendContainer8.currentViewKey }} Trend**"
          verticalAlign="center"
        />
        <Tabs
          id="tabs11"
          alignment="right"
          disabled="true"
          hidden="true"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="LsatTrendContainer8"
          value="{{ self.values[0] }}"
        >
          <Option id="00030" value="Tab 1" />
          <Option id="00031" value="Tab 2" />
          <Option id="00032" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="00032" viewKey="Monthly">
        <Chart
          id="attendance_monthly"
          barGap={0.4}
          barMode="group"
          legendPosition="bottom"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisScale="category"
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormat=".0%"
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="inside"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Your Performance"
            showMarkers={false}
            textTemplate="%{y}"
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).att_me }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="inside"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="#cd6f00"
            lineDash="dot"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.highlight }}"
            markerSize={6}
            markerSymbol="circle"
            name="Average"
            showMarkers={true}
            textTemplate="%{y}"
            textTemplateMode="source"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).att_avg }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.success }}"
            lineDash="dot"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.success }}"
            markerSize={6}
            markerSymbol="circle"
            name="Best"
            showMarkers={true}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).att_best }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View id="00031" viewKey="Weekly">
        <Chart
          id="attendance_weekly"
          barMode="group"
          barOrientation=""
          chartType="line"
          legendPosition="bottom"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax="1"
          yAxisRangeMin="0"
          yAxisRangeMode="manual"
          yAxisShowTickLabels={true}
          yAxisTickFormat=".0%"
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="manual"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.success }}"
            lineDash="dash"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Best Performance"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1, 2, 3, 4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.9, 0.91, 0.91, 0.92, 0.92, 0.87, 0.89, 0.91, 0.90, 0.93, 0.91, 0.90]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="rgba(0, 0, 0, 1)"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Average"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1,2,3,4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.82, 0.82, 0.83, 0.82, 0.83, 0.84, 0.83, 0.83, 0.84, 0.84, 0.85, 0.85]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ coach_learners_query.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Your Performance"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1,2,3,4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.85, 0.84, 0.84, 0.81, 0.83, 0.84, 0.86, 0.85, 0.86, 0.86, 0.85, 0.85]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
    </Container>
    <Container
      id="LsatTrendContainer9"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="text116"
          heightType="fixed"
          margin="0"
          style={{
            fontSize: "h6Font",
            fontWeight: "h6Font",
            fontFamily: "h6Font",
          }}
          value="**Progress Review Completion - {{ LsatTrendContainer9.currentViewKey }} Trend**"
          verticalAlign="center"
        />
        <Tabs
          id="tabs12"
          alignment="right"
          hidden="true"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="LsatTrendContainer9"
          value="{{ self.values[0] }}"
        >
          <Option id="00030" value="Tab 1" />
          <Option id="00031" value="Tab 2" />
          <Option id="00032" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="00032" viewKey="Monthly">
        <Chart
          id="pr_monthly"
          barGap={0.4}
          barMode="group"
          legendPosition="bottom"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisScale="category"
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormat=".0%"
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="inside"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Your Performance"
            showMarkers={false}
            textTemplate="%{y}"
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).monthly_pr_me }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="inside"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="#cd6f00"
            lineDash="dot"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.highlight }}"
            markerSize={6}
            markerSymbol="circle"
            name="Average"
            showMarkers={true}
            textTemplate="%{y}"
            textTemplateMode="source"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).monthly_pr_avg }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.success }}"
            lineDash="dot"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.success }}"
            markerSize={6}
            markerSymbol="circle"
            name="Best"
            showMarkers={true}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).monthly_pr_best }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View id="00031" viewKey="Weekly">
        <Chart
          id="pr_weekly"
          barMode="group"
          barOrientation=""
          chartType="line"
          legendPosition="bottom"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax="1"
          yAxisRangeMin="0"
          yAxisRangeMode="manual"
          yAxisShowTickLabels={true}
          yAxisTickFormat=".0%"
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="manual"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.success }}"
            lineDash="dash"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Best Performance"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1, 2, 3, 4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.9, 0.91, 0.91, 0.92, 0.92, 0.87, 0.89, 0.91, 0.90, 0.93, 0.91, 0.90]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="rgba(0, 0, 0, 1)"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Average"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1,2,3,4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.82, 0.82, 0.83, 0.82, 0.83, 0.84, 0.83, 0.83, 0.84, 0.84, 0.85, 0.85]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ coach_learners_query.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Your Performance"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1,2,3,4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.85, 0.84, 0.84, 0.81, 0.83, 0.84, 0.86, 0.85, 0.86, 0.86, 0.85, 0.85]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
    </Container>
    <Container
      id="LsatTrendContainer10"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="true"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="text117"
          heightType="fixed"
          margin="0"
          style={{
            fontSize: "h6Font",
            fontWeight: "h6Font",
            fontFamily: "h6Font",
          }}
          value="**Gateway Bookings - {{ LsatTrendContainer10.currentViewKey }} Trend**"
          verticalAlign="center"
        />
        <Tabs
          id="tabs13"
          alignment="right"
          hidden="true"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="LsatTrendContainer10"
          value="{{ self.values[0] }}"
        >
          <Option id="00030" value="Tab 1" />
          <Option id="00031" value="Tab 2" />
          <Option id="00032" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="00032" viewKey="Monthly">
        <Chart
          id="gwb_monthly"
          barGap={0.4}
          barMode="group"
          legendPosition="bottom"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisScale="category"
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormat=".0%"
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="inside"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Your Performance"
            showMarkers={false}
            textTemplate="%{y}"
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).gw_me }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="inside"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="#cd6f00"
            lineDash="dot"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.highlight }}"
            markerSize={6}
            markerSymbol="circle"
            name="Average"
            showMarkers={true}
            textTemplate="%{y}"
            textTemplateMode="source"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).gw_avg }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ best_average_historic_data.value }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.success }}"
            lineDash="dot"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.success }}"
            markerSize={6}
            markerSymbol="circle"
            name="Best"
            showMarkers={true}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ formatDataAsObject(best_average_historic_data.value).month }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ formatDataAsObject(best_average_historic_data.value).gw_best }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View id="00031" viewKey="Weekly">
        <Chart
          id="gwb_weekly"
          barMode="group"
          barOrientation=""
          chartType="line"
          legendPosition="bottom"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax="1"
          yAxisRangeMin="0"
          yAxisRangeMode="manual"
          yAxisShowTickLabels={true}
          yAxisTickFormat=".0%"
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="manual"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.success }}"
            lineDash="dash"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Best Performance"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1, 2, 3, 4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.9, 0.91, 0.91, 0.92, 0.92, 0.87, 0.89, 0.91, 0.90, 0.93, 0.91, 0.90]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="rgba(0, 0, 0, 1)"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Average"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1,2,3,4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.82, 0.82, 0.83, 0.82, 0.83, 0.84, 0.83, 0.83, 0.84, 0.84, 0.85, 0.85]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="2"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ coach_learners_query.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Your Performance"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="[1,2,3,4,5,6,7,8,9,10,11,12]"
            xDataMode="manual"
            yAxis="y"
            yData="[0.85, 0.84, 0.84, 0.81, 0.83, 0.84, 0.86, 0.85, 0.86, 0.86, 0.85, 0.85]"
            yDataMode="manual"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
    </Container>
  </View>
</Container>
