<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Tab 1" />
      <Option id="00031" value="Tab 2" />
      <Option id="00032" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="00698"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Cars"
    viewKey="cars"
  >
    <SegmentedControl
      id="view_edit"
      itemMode="static"
      label=""
      labelPosition="top"
      paddingType="spacious"
      tooltipText="In Edit mode, editable columns will appear with a gray background"
      value="{{ self.values[0] }}"
    >
      <Option
        id="00030"
        icon="bold/interface-lock"
        iconPosition="left"
        label="View"
        value="view"
      />
      <Option
        id="00031"
        icon="bold/interface-unlock"
        iconPosition="left"
        label="Edit"
        value="edit"
      />
    </SegmentedControl>
    <SwitchGroup
      id="information_visibility"
      disabled=""
      groupLayout="wrap"
      itemMode="static"
      label=""
      labelPosition="top"
      value="{{ [self.values[0]] }}"
    >
      <Option
        id="90f81"
        disabled={false}
        hidden={false}
        label="Car Information"
        value="car_information"
      />
      <Option
        id="00030"
        label="Purchase Information"
        value="purchase_information"
      />
      <Option id="00031" label="Purchase Invoice" value="buyout" />
      <Option id="00032" label="Raas Sales" value="raas_sale" />
    </SwitchGroup>
    <Spacer id="spacer3" />
    <Divider id="divider5" />
    <Text
      id="text5"
      hidden="{{ view_edit.value !== 'edit' }}"
      value="**🗂️ BULK Update | Import values from GSheet**"
      verticalAlign="center"
    />
    <TextInput
      id="spreadsheet_url2"
      hidden="{{ view_edit.value !== 'edit' }}"
      label="Spreadsheet ID"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="vin_column2"
      hidden="{{ view_edit.value !== 'edit' }}"
      label="VIN Column"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="purchase_price_column2"
      hidden="{{ view_edit.value !== 'edit' }}"
      label="Purchase Price Column"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Button
      id="import_gsheet_btn2"
      disabled="{{ !spreadsheet_url2.value || !vin_column2.value || !purchase_price_column2.value }}"
      hidden="{{ view_edit.value !== 'edit' }}"
      loading="{{ import_gsheet.isFetching }}"
      style={{ map: { background: "rgba(0, 0, 0, 1)" } }}
      text="Import"
    >
      <Event
        id="7b5dbf44"
        event="click"
        method="trigger"
        params={{
          map: {
            options: {
              map: {
                additionalScope: {
                  sheet:
                    "{{ spreadsheet_url2.value ?  spreadsheet_url2.value.match(\"d/(.*)/edit\")['1'] : '' }}",
                  vin_column: "{{ vin_column2.value }}",
                  purchase_price_column: "{{ purchase_price_column2.value }}",
                  tab: "{{ spreadsheet_url2.value ? spreadsheet_url2.value.match(\"gid=(.*)\")['1'] : '' }}",
                },
              },
            },
          },
        }}
        pluginId="import_gsheet"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="save_changes_btn"
      disabled="{{ !spreadsheet_url2.value || !vin_column2.value || !purchase_price_column2.value }}"
      hidden="{{ view_edit.value !== 'edit' }}"
      loading="{{ import_gsheet.isFetching || handleSaveRaasCars.isFetching }}"
      style={{ map: { background: "success" } }}
      text="Save"
    >
      <Event
        id="42174d37"
        event="click"
        method="trigger"
        params={{ map: { options: { map: { additionalScope: {} } } } }}
        pluginId="handleSaveRaasCars2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Divider id="divider6" hidden="{{ (view_edit.value !== 'edit') }}" />
    <Table
      id="raas_cars"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ raasInventory.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "e7be4", direction: "desc" } }]}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount="{{ get_raas_inventory.data?.meta?.pagination.total }}"
      overflowType="pagination"
      primaryKeyColumnId="8df5e"
      rowHeight="medium"
      serverPaginated={true}
      showFooter={true}
      showHeader={true}
      templatePageSize="{{ get_raas_inventory.data?.meta?.pagination.per_page }}"
      toolbarPosition="bottom"
    >
      <Column
        id="8df5e"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="finn_car_id"
        label="Finn car ID"
        placeholder="Enter value"
        position="left"
        size={100}
      />
      <Column
        id="65249"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="raas_type"
        label="Type"
        placeholder="Select option"
        position="left"
        size={98}
      />
      <Column
        id="e7be4"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        key="vin"
        label="VIN"
        placeholder="Enter value"
        position="left"
        size={163}
      />
      <Column
        id="5168b"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd.MM.YYY" }}
        groupAggregationMode="none"
        key="purchase_transfer_of_risk_date"
        label="Supply ToR"
        placeholder="Enter value"
        position="center"
        size={107}
        summaryAggregationMode="none"
      />
      <Column
        id="1e26c"
        alignment="left"
        backgroundColor="{{ view_edit.value === 'edit' ?  'EEEEEE': '' }}"
        editable="{{ view_edit.value == 'edit' }}"
        format="date"
        groupAggregationMode="none"
        key="supply_trade"
        label="Supply ToR Override"
        placeholder="Enter value"
        position="center"
        referenceId="supply_trade_transfer_of_risk_date_override"
        size={144}
        summaryAggregationMode="none"
        valueOverride="{{ item.transfer_of_risk_date_override }}"
      />
      <Column
        id="6dffa"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd.MM.YYY" }}
        groupAggregationMode="none"
        key="final_transfer_of_risk_date"
        label="Sales ToR"
        placeholder="Enter value"
        position="center"
        size={120}
        summaryAggregationMode="none"
      />
      <Column
        id="750fa"
        alignment="left"
        backgroundColor="{{ view_edit.value === 'edit' ?  'EEEEEE': '' }}"
        editable="{{ view_edit.value == 'edit' }}"
        editableOptions={{ spellCheck: false }}
        format="date"
        formatOptions={{ dateFormat: "dd.MM.yyy" }}
        groupAggregationMode="none"
        key="trade_transfer_of_risk_date_override"
        label="Sales ToR Override"
        placeholder="Enter value"
        position="center"
        referenceId="defleeting_tor_override"
        size={135}
        summaryAggregationMode="none"
      />
      <Column
        id="9c7cb"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="raas_type"
        label="Type"
        placeholder="Select option"
        position="left"
        referenceId="Type"
        size={166}
        summaryAggregationMode="none"
      />
      <Column
        id="71645"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="brand"
        label="Brand"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="0adb8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="model"
        label="Model"
        placeholder="Enter value"
        position="center"
        size={146}
      />
      <Column
        id="44459"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="msrp"
        label="MSRP"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="6b4b1"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="model_year"
        label="Model year"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="31b3a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="mileage"
        label="Mileage"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="9c607"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="damages"
        label="Damages"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="3f127"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="car_lifecycle_status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={100}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b1635"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="car_location"
        label="Car location"
        placeholder="Enter value"
        position="center"
        size={120}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="e09df"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="last_location"
        label="Last location"
        placeholder="Enter value"
        position="center"
        referenceId="last_location"
        size={113}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b6505"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="zb1_location"
        label="ZB1 Location"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="7b67a"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="zb2_location"
        label="ZB2 Location"
        placeholder="Enter value"
        position="center"
        size={127}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f4d2f"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd.MM.YYY" }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="defleeting_compound_entry_date"
        label="DC Entry Date"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="348c3"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd.MM.YYY" }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="defleeting_compound_exit_date"
        label="DC Exit Date"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="5dbd7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="sbs_second_compound_entry_date"
        label="SBS Entry Date"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="c214d"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="sbs_second_compound_exit_date"
        label="SBS Exit Date"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="d8be8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="latest_appraisal_type"
        label="Latest Appraisal Type"
        placeholder="Select option"
        position="center"
        size={150}
        summaryAggregationMode="none"
      />
      <Column
        id="d04f3"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd.MM.YYY" }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('car_information') }}"
        key="ready_to_defleet_date"
        label="RTD Date"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="90761"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="raas_order"
        label="Raas order"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="bdf01"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="raas_partner"
        label="Raas partner"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="edf72"
        alignment="left"
        format="json"
        groupAggregationMode="none"
        hidden="true"
        key="supplier"
        label="Supplier Obj"
        placeholder="Enter value"
        position="center"
        referenceId="supplier_obj"
        size={100}
      />
      <Column
        id="1b3bb"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="trade_id"
        label="Trade ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="1a7c9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="trade_status"
        label="Trade status"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="d7e8f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="sales_amount"
        label="Sales amount"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="761ac"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="mileage_threshold"
        label="Mileage threshold"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="3286b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="mileage_flat_discount"
        label="Mileage flat discount"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="beea8"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="damage_allowance"
        label="Damage allowance"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="b849e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="raas_order"
        label="Order ID"
        placeholder="Enter value"
        position="center"
        referenceId="raas_order_id"
        size={100}
        valueOverride="{{ item.order_id }}"
      />
      <Column
        id="c6756"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="raas_partner"
        label="Partner"
        placeholder="Enter value"
        position="center"
        referenceId="raas_company_name"
        size={161}
        valueOverride="{{ item.partner_company_name }}"
      />
      <Column
        id="3f9ea"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="raas_partner"
        label="Country"
        placeholder="Enter value"
        position="center"
        referenceId="raas_partner_country"
        size={100}
        valueOverride="{{ item.partner_country }}"
      />
      <Column
        id="486eb"
        alignment="left"
        backgroundColor="rgba(255, 255, 255, 0)"
        format="tag"
        formatOptions={{ automaticColors: true, icon: "" }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="raas_order"
        label="Order Status"
        placeholder="Select option"
        position="center"
        referenceId="orderStatus"
        size={100}
        valueOverride="{{  item.status }}"
      />
      <Column
        id="bb12e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="raas_order"
        label="DRI"
        placeholder="Enter value"
        position="center"
        referenceId="raas_partner_remarketin_dri"
        size={182}
        valueOverride="{{ item.finn_remarketing_dri }}"
      />
      <Column
        id="9935e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="raas_order"
        label="Payment Terms"
        placeholder="Enter value"
        position="center"
        referenceId="paymentTerms"
        size={100}
        valueOverride="{{ item.payment_terms_days }}"
      />
      <Column
        id="d9f42"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="raas_order"
        label="Invoice Trigger"
        placeholder="Select option"
        position="center"
        referenceId="raas_order_invoice_trigger"
        size={159}
        valueOverride="{{  item.invoice_trigger  }}"
      />
      <Column
        id="e265b"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="raas_order"
        label="Signed Date"
        placeholder="Enter value"
        position="center"
        referenceId="raas_order_signed_date"
        size={100}
        valueOverride="{{  item.signed_date }}"
      />
      <Column
        id="57ac2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="raas_order"
        label="Defleeting Logistics"
        placeholder="Enter value"
        position="center"
        referenceId="raas_order_defleeting_logistics"
        size={136}
        valueOverride="{{  item.defleeting_logistics }}"
      />
      <Column
        id="098d6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="sales_amount"
        label="Sales Amount"
        placeholder="Enter value"
        position="center"
        referenceId="raas_sales_amount"
        size={100}
      />
      <Column
        id="ac6c4"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('raas_sale') }}"
        key="poa_status"
        label="POA Status"
        placeholder="Select option"
        position="center"
        referenceId="poa_status"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="456e7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('buyout') }}"
        key="supplier"
        label="Supplier"
        placeholder="Enter value"
        position="center"
        referenceId="supplier"
        size={241}
        summaryAggregationMode="none"
        valueOverride="{{ item.supplier_name }}"
      />
      <Column
        id="3eba6"
        alignment="left"
        format="date"
        formatOptions={{ dateFormat: "dd.MM.YYY" }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('buyout') }}"
        key="purchase_invoice"
        label="Invoice Date"
        placeholder="Enter value"
        position="center"
        referenceId="supply_invoice_date"
        size={100}
        valueOverride="{{  item.invoice_date }}"
      />
      <Column
        id="e6b0e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('buyout') }}"
        key="purchase_invoice"
        label="Invoice Number"
        placeholder="Enter value"
        position="center"
        referenceId="invoiceNumber"
        size={145}
        valueOverride="{{ item.invoice_number }}"
      />
      <Column
        id="2b03b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('buyout') }}"
        key="purchase_invoice"
        label="Invoice Amount (net)"
        placeholder="Enter value"
        position="center"
        referenceId="supply_invoice_amount_net"
        size={141}
        valueOverride="{{  item.invoice_total_amount_net }}"
      />
      <Column
        id="096d4"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('buyout') }}"
        key="purchase_invoice"
        label="Invoice Amount (gross)"
        placeholder="Enter value"
        position="center"
        referenceId="supply_invoice_amount_gross"
        size={162}
        valueOverride="{{  item.invoice_total_amount_net }}"
      />
      <Column
        id="06563"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('buyout') }}"
        key="purchase_invoice"
        label="Invoice Status"
        placeholder="Select option"
        position="center"
        referenceId="supply_invoice_status"
        size={100}
        valueOverride="{{ item.invoice_status }}"
      />
      <Column
        id="62a62"
        alignment="left"
        backgroundColor="{{ view_edit.value === 'edit' ?  'EEEEEE': '' }}"
        editable="{{ view_edit.value === 'edit' }}"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('purchase_information') }}"
        key="supply_trade"
        label="Pur. Status"
        optionList={{
          manualData: [
            { map: { value: "signed" } },
            { map: { value: "offerable" } },
            { map: { value: "cancelled" } },
          ],
        }}
        placeholder="Select option"
        position="center"
        referenceId="supply_trade_status"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ item.status }}"
      />
      <Column
        id="e5070"
        alignment="right"
        backgroundColor="{{ view_edit.value === 'edit' ?  'EEEEEE': '' }}"
        editable="{{ view_edit.value === 'edit' }}"
        editableOptions={{ showStepper: false }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('purchase_information') }}"
        key="supply_trade"
        label="Pur. Price"
        placeholder="Enter value"
        position="center"
        referenceId="supply_trade_purchase_price"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ item.purchase_price_net }}"
      />
      <Column
        id="b0901"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('purchase_information') }}"
        label="EXT/Ops Compund"
        placeholder="Enter value"
        position="center"
        referenceId="extOpsCompund"
        size={134}
        summaryAggregationMode="none"
        valueOverride="{{ item.ops_compound_id }}"
      />
      <Column
        id="29961"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('purchase_information') }}"
        key="supply_trade"
        label="Non Return Bonus"
        placeholder="Enter value"
        position="center"
        referenceId="nonReturnBonus"
        size={124}
        summaryAggregationMode="none"
        valueOverride="{{ item.no_return_bonus_compensation_net }}"
      />
      <Column
        id="f333e"
        alignment="left"
        backgroundColor="{{ view_edit.value === 'edit' ?  'EEEEEE': '' }}"
        editable="{{ view_edit.value == 'edit' }}"
        format="date"
        formatOptions={{ dateFormat: "dd.MM.YYY" }}
        groupAggregationMode="none"
        hidden="{{ !information_visibility.value.includes('purchase_information') }}"
        key="supply_trade"
        label="Notification Date"
        placeholder="Enter value"
        position="center"
        referenceId="supply_trade_no_return_notification_date"
        size={117}
        summaryAggregationMode="none"
        valueOverride="{{ item.no_return_notification_date }}"
      />
      <Column
        id="818ad"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('purchase_information') }}"
        key="supply_trade"
        label="Pur. Damage Allowance"
        placeholder="Enter value"
        position="center"
        referenceId="supply_trade_damage_allowance"
        size={155}
        summaryAggregationMode="none"
        valueOverride="{{ item.damage_allowance }}"
      />
      <Column
        id="e3cbd"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('purchase_information') }}"
        key="supply_trade"
        label="Pur. Mileage Allowance"
        placeholder="Enter value"
        position="center"
        referenceId="supply_trade_mileage_allowance"
        size={155}
        summaryAggregationMode="none"
        valueOverride="{{ item.mileage_allowance }}"
      />
      <Column
        id="79b3d"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        hidden="{{ !information_visibility.value.includes('purchase_information') }}"
        key="supply_trade"
        label="Pur. Mileage Fee"
        placeholder="Enter value"
        position="center"
        referenceId="supply_trade_mileage_fee"
        size={112}
        summaryAggregationMode="none"
        valueOverride="{{ item.mileage_flat_discount }}"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="57c27758"
          event="clickToolbar"
          method="exportData"
          pluginId="raas_cars"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="2309bc12"
          event="clickToolbar"
          method="refresh"
          pluginId="raas_cars"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        id="7dc16aef"
        event="save"
        method="trigger"
        params={{}}
        pluginId="handleSaveRaasCars"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="79958b7c"
        event="changePage"
        method="trigger"
        params={{}}
        pluginId="get_raas_inventory"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View id="00030" label="Orders" viewKey="list_supply_orders">
    <Table
      id="supply_trades_list"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ list_supply_orders.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "bf6bb", direction: "asc" } }]}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="bf6bb"
      rowHeight="medium"
      rowSelection="none"
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="bf6bb"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="supply_order_id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={42.65625}
        summaryAggregationMode="none"
      />
      <Column
        id="7123e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="partner_id"
        label="Partner ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d12e3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="title"
        label="Title"
        placeholder="Enter value"
        position="center"
        size={295}
        summaryAggregationMode="none"
      />
      <Column
        id="02789"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="transfer_of_risk"
        label="Transfer of risk"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3c5c9"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="price_inclusion_type"
        label="Price inclusion type"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9aa55"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="defleeting_logistics"
        label="Defleeting logistics"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="00aa5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="payment_required_for_car_handover"
        label="Payment required for car handover"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5c49e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="payment_required_for_paper_handover"
        label="Payment required for paper handover"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="205e7"
        alignment="left"
        format="button"
        formatOptions={{
          variant: "solid",
          buttonColor: "rgba(238, 224, 224, 1)",
          iconBefore: "bold/interface-link-square-alternate",
        }}
        groupAggregationMode="none"
        label=" "
        placeholder="Enter value"
        position="right"
        referenceId="action_open"
        size={48}
        summaryAggregationMode="none"
        valueOverride=" "
      >
        <Event
          id="11416815"
          event="clickCell"
          method="setValue"
          params={{ map: { value: "{{ currentSourceRow }}" } }}
          pluginId="selected_order"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="a66e6fc3"
          event="clickCell"
          method="setCurrentView"
          params={{ map: { viewKey: "get_order" } }}
          pluginId="tabbedContainer1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="6080d1bc"
          event="clickCell"
          method="trigger"
          params={{}}
          pluginId="list_supply_trades"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="11b57"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="raas_type"
        label="Raas type"
        placeholder="Select option"
        position="center"
        size={235.34375}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="2759cb7b"
          event="clickToolbar"
          method="exportData"
          pluginId="supply_trades_list"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="430cd85c"
          event="clickToolbar"
          method="refresh"
          pluginId="supply_trades_list"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
  </View>
  <View
    id="00031"
    hidden="{{ !selected_order.value }}"
    label="{{ selected_order.value?.title }}"
    viewKey="get_order"
  >
    <Select
      id="selected_order_partner"
      data="{{ get_partners.data }}"
      disabled=""
      emptyMessage="No options"
      label=""
      labels="{{ item.company_name }}"
      labelWidth="20"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{ selected_order.value?.partner_id }}"
      values="{{ item.partner_id }}"
    />
    <TagsWidget2
      id="selected_order_type"
      allowWrap={true}
      data="{{ [selected_order.value?.raas_type] }}"
      horizontalAlign="right"
      values="{{ item }}"
    />
    <Container
      id="tabbedContainer2"
      currentViewKey="{{ self.viewKeys[1] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs2"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer2"
          value="{{ self.values[0] }}"
        >
          <Option id="00030" value="Tab 1" />
          <Option id="00031" value="Tab 2" />
          <Option id="00032" value="Tab 3" />
        </Tabs>
        <ButtonGroup2 id="buttonGroup1" alignment="right">
          <ButtonGroup2-Button
            id="e8e6a"
            styleVariant="outline"
            text="Set Car Location"
          >
            <Event
              id="cf84ec1e"
              event="click"
              method="show"
              params={{}}
              pluginId="opsCompounds"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ButtonGroup2-Button>
        </ButtonGroup2>
      </Header>
      <View
        id="00031"
        disabled="tru"
        tooltip="Cooming soon!"
        viewKey="Initial Sale"
      />
      <View id="00030" viewKey="Purchase">
        <Table
          id="trades_in_order"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ list_supply_trades.data?.inventory }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          defaultSort={[{ object: { columnId: "06a66", direction: "asc" } }]}
          emptyMessage="No rows found"
          enableSaveActions={true}
          groupByColumns={{}}
          limitOffsetRowCount="{{ list_supply_trades.data?.pagination.total }}"
          margin="0"
          overflowType="pagination"
          primaryKeyColumnId="41664"
          rowSelection="multiple"
          serverPaginated={true}
          showFooter={true}
          showHeader={true}
          templatePageSize="100"
          toolbarPosition="bottom"
        >
          <Column
            id="41664"
            alignment="center"
            editable="false"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="supply_trade_id"
            label="ID"
            placeholder="Enter value"
            position="left"
            size={57}
          />
          <Column
            id="06a66"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="finn_car_id"
            label="FINN car ID"
            placeholder="Enter value"
            position="left"
            referenceId="finn_car_id"
            size={94}
          />
          <Column
            id="ab71c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="vin"
            label="VIN"
            placeholder="Enter value"
            position="left"
            referenceId="vin"
            size={154}
          />
          <Column
            id="a9e37"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="brand"
            label="Brand"
            placeholder="Select option"
            position="center"
            referenceId="brand"
            size={100}
          />
          <Column
            id="25861"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="model"
            label="Model"
            placeholder="Enter value"
            position="center"
            referenceId="model"
            size={100}
          />
          <Column
            id="9a7ce"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="supply_order_id"
            label="Supply order ID"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="57469"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="mileage_allowance"
            label="Mileage allowance"
            placeholder="Enter value"
            position="center"
            size={127}
          />
          <Column
            id="7983e"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="currency"
            formatOptions={{
              currency: "EUR",
              currencySign: "standard",
              notation: "standard",
              showSeparators: true,
              currencyDisplay: "symbol",
            }}
            groupAggregationMode="sum"
            key="mileage_flat_discount"
            label="Mileage Fee"
            placeholder="Enter value"
            position="center"
            size={97}
          />
          <Column
            id="8a86d"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="currency"
            formatOptions={{
              currency: "EUR",
              currencySign: "standard",
              notation: "standard",
              showSeparators: true,
              currencyDisplay: "symbol",
            }}
            groupAggregationMode="sum"
            key="damage_allowance"
            label="Damage Allowance"
            placeholder="Enter value"
            position="center"
            size={147}
          />
          <Column
            id="984db"
            alignment="left"
            editable="true"
            format="date"
            groupAggregationMode="none"
            key="transfer_of_risk_date_override"
            label="Transfer of Risk"
            placeholder="Enter value"
            position="center"
            size={113}
          />
          <Column
            id="3003d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            hidden="true"
            key="delivery_cost"
            label="Delivery cost"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Column
            id="b969e"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="ops_compound_id"
            label="Compound"
            placeholder="Enter value"
            position="center"
            referenceId="ops_compound_id"
            size={100}
            valueOverride="{{ item ? item : ( trades_in_order.selectedDataIndexes.find(idx => idx === i) ? raaSDeefletingCompound.selected_compound.id : null) }}"
          />
          <Column
            id="a3f52"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="currency"
            formatOptions={{
              currency: "EUR",
              currencySign: "standard",
              notation: "standard",
              showSeparators: true,
              currencyDisplay: "symbol",
            }}
            groupAggregationMode="sum"
            hidden="{{ selected_order_type.data[0] !== 'buyback_no_return' }}"
            key="no_return_bonus_compensation_net"
            label="No Return Bonus"
            placeholder="Enter value"
            position="right"
            referenceId="no_return_bonus_compensation_net"
            size={118}
          />
          <Column
            id="c693a"
            alignment="left"
            editable={true}
            format="date"
            formatOptions={{ dateFormat: "dd.MM.YYY" }}
            groupAggregationMode="none"
            hidden="{{ selected_order_type.data[0] !== 'buyback_no_return' }}"
            key="no_return_notification_date"
            label="Notification Date"
            placeholder="Enter value"
            position="right"
            referenceId="no_return_notification_date"
            size={100}
          />
          <Column
            id="68242"
            alignment="left"
            editable="true"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="status"
            label="Status"
            optionList={{
              manualData: [
                { map: { value: "offerable" } },
                { map: { value: "cancelled" } },
                { map: { value: "signed" } },
              ],
            }}
            placeholder="Select option"
            position="right"
            referenceId="status"
            size={81}
          />
          <Column
            id="3f913"
            alignment="right"
            editable="true"
            editableOptions={{ showStepper: true }}
            format="currency"
            formatOptions={{
              currency: "EUR",
              currencySign: "standard",
              notation: "standard",
              showSeparators: true,
              currencyDisplay: "symbol",
            }}
            groupAggregationMode="sum"
            key="purchase_price_net"
            label="Purchase Price"
            placeholder="Enter value"
            position="right"
            referenceId="purchase_price"
            size={114}
          />
          <Event
            id="bfd19bb5"
            event="save"
            method="trigger"
            params={{}}
            pluginId="update_supply_trades"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
      <View
        id="00032"
        disabled="true"
        tooltip="Coming soon!"
        viewKey="Final Sale"
      />
      <View
        id="4c562"
        disabled="true"
        iconPosition="left"
        tooltip="Coming soon!"
        viewKey="Contract"
      />
    </Container>
    <NumberInput
      id="selected_order_delivery_charge"
      allowNull={true}
      currency="EUR"
      format="currency"
      inputValue={0}
      label="Delivery Charge"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{ selected_order.value?.delivery_charge }}"
    />
    <NumberInput
      id="selected_order_additional_provision"
      allowNull={true}
      currency="EUR"
      format="currency"
      inputValue={0}
      label="Additional Provision"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value="{{ selected_order.value?.additional_provision }}"
    />
    <NumberInput
      id="selected_order_remarketing_window"
      allowNull={true}
      currency="EUR"
      hidden=""
      inputValue={0}
      label="Remarketing Window"
      labelPosition="top"
      placeholder="Enter value"
      showClear={true}
      showSeparators={true}
      showStepper={true}
      textAfter="days"
      value="{{ selected_order.value?.remarketing_window_days_after_defleeting }}"
    />
    <NumberInput
      id="selected_order_delivery_charges"
      allowNull={true}
      currency="EUR"
      hidden=""
      inputValue={0}
      label="Other Deductibles"
      labelPosition="top"
      placeholder="Enter value"
      showClear={true}
      showSeparators={true}
      showStepper={true}
      textAfter="days"
      value="{{ selected_order.value?.other_deductibles[0].value }}"
    />
    <Select
      id="selected_order_remarketing_end_trigger"
      data="{{ remarketing_end_triggers.value }}"
      emptyMessage="No options"
      hidden=""
      label="Remarketing End Trigger"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ selected_order.value?.remarketing_end_trigger }}"
      values="{{ item.value }}"
    />
    <Select
      id="selected_order_remarketing_end_trigger_latest"
      data="{{ remarketing_end_triggers.value }}"
      emptyMessage="No options"
      hidden=""
      label="Remarketing End Trigger Latest"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ selected_order.value?.remarketing_end_trigger_latest }}"
      values="{{ item.value }}"
    />
    <Select
      id="selected_order_transfer_of_risk"
      data="{{ transfer_of_risk_options.value }}"
      emptyMessage="No options"
      label="Transfer of Risk"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ selected_order.value?.transfer_of_risk }}"
      values="{{ item.value }}"
    />
    <Select
      id="selected_order_defleeting_logistics"
      data="{{ defleeting_logistics_options.value }}"
      emptyMessage="No options"
      label="Defleeting Logistics"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ selected_order.value?.defleeting_logistics }}"
      values="{{ item }}"
    />
    <Select
      id="selected_order_price_inclusion_type"
      data="{{ price_inclusion_types.value }}"
      emptyMessage="No options"
      label="Price Incl. Type"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      value="{{ selected_order.value?.price_inclusion_type }}"
      values="{{ item }}"
    />
    <Switch
      id="selected_order_payment_required_for_car_handover"
      label="Payment Required For Car Handover"
      value="{{ selected_order.value?.payment_required_for_car_handover }}"
    />
    <Switch
      id="selected_order_payment_required_for_paper_handover"
      label="Payment Required For Paper Handover"
      value="{{ selected_order.value?.payment_required_for_paper_handover }}"
    />
    <Divider id="divider4" />
    <Button id="update_supply_order_btn" text="Update">
      <Event
        id="535f3c83"
        enabled="{{ trades_in_order.selectedRows.length > 0 }}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="update_ops_compound_id"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="0ff82e69"
        event="click"
        method="trigger"
        params={{}}
        pluginId="update_supply_order"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="00032" hidden="true" label="+" viewKey="create">
    <Table
      id="missing_supply_trades_list"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ cars_missing_supply_trade.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      disableSave="true"
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={[{ map: { columnId: "fa66f" } }]}
      primaryKeyColumnId="b3373"
      rowSelection="multiple"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="ca366"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="vin"
        label="VIN"
        placeholder="Enter value"
        position="left"
        size={152}
        summaryAggregationMode="none"
      />
      <Column
        id="b3373"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="finn_car_id"
        label="Car ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="0c154"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="trade_id"
        label="Trade ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8ce4f"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="brand_name"
        label="Brand"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="763c9"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="config_model_name"
        label="Config"
        placeholder="Enter value"
        position="center"
        size={133}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="fa66f"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="partner_name"
        label="Partner"
        placeholder="Enter value"
        position="center"
        size={220}
        summaryAggregationMode="none"
      />
      <Column
        id="1e4ed"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="partner_id"
        label="Partner ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a7778"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="raas_type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={130}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="daa7b"
        alignment="right"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="currency"
        formatOptions={{
          currency: "EUR",
          currencySign: "standard",
          notation: "standard",
          showSeparators: true,
          currencyDisplay: "symbol",
        }}
        groupAggregationMode="sum"
        label="Purchase Price"
        placeholder="Enter value"
        position="center"
        referenceId="purchase_price"
        size={109}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          id="8831b974"
          event="clickToolbar"
          method="exportData"
          pluginId="missing_supply_trades_list"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          id="96c0079f"
          event="clickToolbar"
          method="refresh"
          pluginId="missing_supply_trades_list"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="true"
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic1"
          currency="USD"
          label="RaaS Cars"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          value="{{ count.data?.length}}"
        />
      </View>
    </Container>
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="true"
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic2"
          currency="USD"
          label="Internal Cars"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          value="{{ count.data?.filter(c => c.raas_type == 'internal_cars').length}}"
        />
      </View>
    </Container>
    <Container
      id="container3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="true"
      overflowType="hidden"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle3"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="00030" viewKey="View 1">
        <Statistic
          id="statistic3"
          currency="USD"
          label="External Cars"
          positiveTrend="{{ self.value >= 0 }}"
          secondaryCurrency="USD"
          secondaryEnableTrend={true}
          secondaryFormattingStyle="percent"
          secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
          secondaryShowSeparators={true}
          secondarySignDisplay="trendArrows"
          secondaryValue=""
          showSeparators={true}
          value="{{ count.data?.filter(c => c.raas_type == 'external_cars').length}}"
        />
      </View>
    </Container>
  </View>
</Container>
