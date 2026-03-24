<Container
  id="steppedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Steps
      id="addRaasSupplySteps"
      horizontalAlign="center"
      itemMode="static"
      navigateContainer={true}
      showStepNumbers={true}
      targetContainerId="steppedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" value="Step 1" />
      <Option id="00031" value="Step 2" />
      <Option id="00032" value="Step 3" />
    </Steps>
  </Header>
  <View id="00030" viewKey="Step 1">
    <Text
      id="text2"
      value="##### Car Selection

Choose your preferred selection method: (1) filter Inventory or (2) import cars via gsheet.
Here you can determine the purchase price of each car individually, but in the next step you have the option to set it based on the model."
      verticalAlign="center"
    />
    <SegmentedControl
      id="selection_method_selector"
      itemMode="static"
      label=""
      labelPosition="top"
      paddingType="spacious"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" label="Inventory" value="inventory_selection" />
      <Option id="00031" label="GSheet Import" value="gsheet_import" />
    </SegmentedControl>
    <Divider id="divider2" />
    <Table
      id="carsToMarkAsRaasSelection_step1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ newRaasSupply.value.inventory }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "3b8e7", direction: "asc" } }]}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount="{{ get_inventory.data.pagination.total }}"
      overflowType="pagination"
      primaryKeyColumnId="6db98"
      rowHeight="40px"
      rowSelection="none"
      serverPaginated={true}
      showFooter={true}
      showHeader={true}
      templatePageSize="{{ get_inventory.data.pagination.per_page }}"
      toolbarPosition="bottom"
    >
      <Column
        id="6db98"
        alignment="left"
        editable="false"
        format="string"
        groupAggregationMode="none"
        key="vin"
        label="VIN"
        placeholder="Enter value"
        position="left"
        size={160}
      />
      <Column
        id="4c017"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="finn_car_id"
        label="Car ID"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="240fa"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Car"
        placeholder="Enter value"
        position="center"
        referenceId="car_description"
        size={179}
        valueOverride="{{ currentSourceRow.brand_name }} {{ currentSourceRow.model_name }} {{ currentSourceRow.model_year }}"
      />
      <Column
        id="3b8e7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="signed_by"
        label="Signed by"
        placeholder="Enter value"
        position="center"
        size={247}
      />
      <Column
        id="ddef4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="trim"
        label="Trim"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="a1f16"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="engine"
        label="Engine"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="e6167"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="car_lifecycle_status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={132}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="c5573"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="date_first_registration"
        label="Date first registration"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="b6d68"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="latest_mileage"
        label="Latest mileage"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="6436b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="msrp_incl_options_net"
        label="MSRP"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="a5055"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="holding_period_month"
        label="Holding period month"
        placeholder="Enter value"
        position="center"
        size={100}
      />
      <Column
        id="30822"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="purchasing_deal_type"
        label="Deal Type"
        placeholder="Select option"
        position="center"
        size={80}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="585ae"
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
        key="purchase_price"
        label="Purchase Price"
        placeholder="Enter value"
        position="center"
        referenceId="purchase_price"
        size={109}
      />
      <Event
        id="cd3ad06b"
        event="save"
        method="trigger"
        params={{}}
        pluginId="mapPricingToInventory"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <TextInput
      id="spreadsheet_url"
      hidden="{{ !(selection_method_selector.value === 'gsheet_import') }}"
      label="Spreadsheet ID"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="add_supply_vins_filter"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      label="VINs"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="add_supply_finnCarIds_filter"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      label="FINN Car IDs"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Select
      id="add_supply_order_type_selector"
      disabled="true"
      emptyMessage="No options"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      itemMode="static"
      label="Order Type"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
    >
      <Option id="00030" label="Buyback" value="buyback" />
      <Option id="00031" label="Leasing" value="leasing" />
      <Option id="00032" label="Prod. Pre-Sale" value="prod_pre_sale" />
      <Option
        id="f55ef"
        disabled={false}
        hidden={false}
        label="Pre-Sale"
        value="pre_sale"
      />
      <Option
        id="5b684"
        disabled={false}
        hidden={false}
        label="Stock"
        value="stock"
      />
    </Select>
    <TextInput
      id="vin_column"
      hidden="{{ !(selection_method_selector.value === 'gsheet_import') }}"
      label="VIN Column"
      labelPosition="top"
      placeholder="Enter value"
    />
    <TextInput
      id="purchase_price_column"
      hidden="{{ !(selection_method_selector.value === 'gsheet_import') }}"
      label="Purchase Price Column"
      labelPosition="top"
      placeholder="Enter value"
    />
    <Button
      id="import_gsheet_btn"
      disabled="{{ !spreadsheet_url.value || !vin_column.value || !purchase_price_column.value }}"
      hidden="{{ !(selection_method_selector.value === 'gsheet_import') }}"
      loading="{{ import_gsheet.isFetching }}"
      style={{ map: { background: "rgba(0, 0, 0, 1)" } }}
      text="Import"
    >
      <Event
        id="be7160ea"
        event="click"
        method="trigger"
        params={{
          map: {
            options: {
              map: {
                additionalScope: {
                  sheet:
                    "{{ spreadsheet_url.value.match(\"d/(.*)/edit\")['1'] }}",
                  vin_column: "{{ vin_column.value }}",
                  purchase_price_column: "{{ purchase_price_column.value }}",
                  tab: "{{ spreadsheet_url.value.match(\"gid=(.*)\")['1'] }}",
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
    <Multiselect
      id="add_supply_car_status_selector"
      automaticItemColors={true}
      disabled=""
      emptyMessage="No options"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      itemMode="static"
      label="Car Status"
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select options"
      showClear={true}
      showSelectionIndicator={true}
      wrapTags={true}
    >
      <Option id="00030" value="ordered" />
      <Option id="00031" value="produced" />
      <Option id="00032" value="arrived_from_supplier" />
      <Option
        id="0f36b"
        disabled={false}
        hidden={false}
        value="in_technical_preparations"
      />
      <Option
        id="9eac7"
        disabled={false}
        hidden={false}
        value="technical_preparations_done"
      />
      <Option
        id="91393"
        disabled={false}
        hidden={false}
        value="ready_to_deliver"
      />
      <Option
        id="d6c5e"
        disabled={false}
        hidden={false}
        value="in_subscription"
      />
      <Option id="8b42d" disabled={false} hidden={false} value="returned" />
      <Option
        id="54c7b"
        disabled={false}
        hidden={false}
        value="arrived_at_stepover_compound"
      />
      <Option
        id="f8693"
        disabled={false}
        hidden={false}
        value="in_repossession_process"
      />
      <Option
        id="6583f"
        disabled={false}
        hidden={false}
        value="in_defleeting_preparations"
      />
      <Option
        id="d6415"
        disabled={false}
        hidden={false}
        value="ready_to_defleet"
      />
      <Option id="fe897" disabled={false} hidden={false} value="defleeted" />
      <Option id="eb54c" disabled={false} hidden={false} value="cancelled" />
    </Multiselect>
    <Select
      id="add_supply_partner_selector"
      data="{{ run_get_partners.data }}"
      emptyMessage="No options"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      label="Partner"
      labelPosition="top"
      labels="{{ item.company_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.partner_id }}"
    />
    <Select
      id="add_supply_order_filter"
      data=""
      disabled="{{ !add_supply_order_type_selector.value || !add_supply_partner_selector.value }}"
      emptyMessage="No options"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      label="Order"
      labelPosition="top"
      labels="{{ item.company_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      tooltipText="Please select a Order Type OR a Partner"
      values="{{ item.partner_id }}"
    />
    <Multiselect
      id="add_supply_brands_selector"
      data="{{ get_brands.data }}"
      emptyMessage="No options"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      label="Brand(s)"
      labelPosition="top"
      labels="{{ item.brand_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.brand_name }}"
      wrapTags={true}
    />
    <Select
      id="add_supply_models_selector"
      data="{{ get_models.data }}"
      emptyMessage="No options"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      label="Model(s)"
      labelPosition="top"
      labels="{{ item.config_model_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.config_model_name }}"
    />
    <Checkbox
      id="add_supply_filter_external_raas_supply"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      label="Filter for External RAAS supply"
      labelPosition="left"
      labelWidth="100"
      value="true"
    />
    <Button
      id="search_inventory_btn"
      hidden="{{ !(selection_method_selector.value === 'inventory_selection') }}"
      iconBefore="bold/interface-search"
      loading="{{ get_inventory.isFetching }}"
      style={{ map: { background: "rgba(0, 0, 0, 1)" } }}
      text="Search"
    >
      <Event
        id="0ad6bbb7"
        event="click"
        method="trigger"
        params={{}}
        pluginId="get_inventory"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View
    id="c9da0"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Step 2"
  >
    <Text
      id="text4"
      value="##### Pricing Definition

"
      verticalAlign="center"
    />
    <Table
      id="carsToMarkAsRaasAggregated"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ newRaasSupplyPricing.value }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      includeRowInChangesetArray={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="a9651"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="brand_name"
        label="Brand name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7fbad"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{  !aggregate_on_multi_switch.selectedItems.find(item => item.value === 'model_name') }}"
        key="model_name"
        label="Model name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8dae6"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{  !aggregate_on_multi_switch.selectedItems.find(item => item.value === 'trim') }}"
        key="trim"
        label="Trim"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="62493"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="{{  !aggregate_on_multi_switch.selectedItems.find(item => item.value === 'engine') }}"
        key="engine"
        label="Engine"
        placeholder="Enter value"
        position="center"
        size={202}
        summaryAggregationMode="none"
      />
      <Column
        id="f690f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: false, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="{{  !aggregate_on_multi_switch.selectedItems.find(item => item.value === 'model_year') }}"
        key="model_year"
        label="Model year"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5e85e"
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
        hidden="{{  !aggregate_on_multi_switch.selectedItems.find(item => item.value === 'msrp_incl_options_net') }}"
        key="msrp_incl_options_net"
        label="MSRP"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="58e50"
        alignment="right"
        editable="{{ !rv_setting.value }}"
        editableOptions={{ showStepper: true }}
        format="percent"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="average"
        hidden="{{ pricing_format.value !== 'rv_percentage' }}"
        key="rv"
        label="RV"
        placeholder="Enter value"
        position="right"
        referenceId="rv"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5d3a4"
        alignment="right"
        editable="{{ pricing_format.value === 'fixed_price' }}"
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
        key="purchase_price"
        label="Price"
        placeholder="Enter value"
        position="right"
        referenceId="purchase_price"
        size={100}
        summaryAggregationMode="none"
      />
      <Event
        id="d3ee1eff"
        event="save"
        method="trigger"
        params={{
          map: {
            options: {
              object: {
                onSuccess: null,
                onFailure: null,
                additionalScope: null,
              },
            },
          },
        }}
        pluginId="handleSavePricingChanges"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <SwitchGroup
      id="aggregate_on_multi_switch"
      itemMode="static"
      label="Aggregate On:"
      labelPosition="top"
      value="{{ [
  self.values[0],
  self.values[1],
  self.values[2],
  self.values[3],
  self.values[4],
  self.values[5]
] }}"
    >
      <Option id="00030" label="Brand" value="brand_name" />
      <Option id="00031" label="Model" value="model_name" />
      <Option id="00032" label="Line" value="trim" />
      <Option
        id="e5fa2"
        disabled={false}
        hidden={false}
        label="Engine"
        value="engine"
      />
      <Option
        id="a5cf0"
        disabled="true"
        hidden={false}
        label="MSRP"
        value="msrp_incl_options_net"
      />
      <Option
        id="68e61"
        disabled={false}
        hidden={false}
        label="Registration Year"
        value="model_year"
      />
    </SwitchGroup>
    <RadioGroup
      id="pricing_format"
      itemMode="static"
      label="Pricing As:"
      labelPosition="top"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" label="RV %" value="rv_percentage" />
      <Option id="00031" label="Fixed Price" value="fixed_price" />
    </RadioGroup>
    <NumberInput
      id="rv_setting"
      allowNull={true}
      currency="USD"
      format="percent"
      hidden="{{ pricing_format.value == 'fixed_price' }}"
      inputValue={0}
      label="RV (Apply for All)"
      labelPosition="top"
      max={1}
      min={0}
      placeholder="Enter value"
      showClear={true}
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <Button
      id="button3"
      hidden="{{ pricing_format.value == 'fixed_price' }}"
      text="Calculate"
    >
      <Event
        id="942b577a"
        event="click"
        method="trigger"
        params={{}}
        pluginId="handleSavePricingChanges"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
  <View id="00031" viewKey="Step 3">
    <Text
      id="text3"
      value="##### Add Order Information

"
      verticalAlign="center"
    />
    <SegmentedControl
      id="add_to_order"
      itemMode="static"
      label=""
      labelPosition="top"
      paddingType="spacious"
      value="{{ self.values[0] }}"
    >
      <Option id="00030" label="Existing Order" value="existing" />
      <Option id="00031" label="New Order" value="new" />
    </SegmentedControl>
    <Select
      id="post_order_partner"
      data="{{ run_get_partners.data }}"
      emptyMessage="No options"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Partner"
      labelPosition="top"
      labels="{{ item.company_name }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showClear={true}
      showSelectionIndicator={true}
      value="{{ missing_supply_trades_list.selectedRows[0]?.partner_id }}"
      values="{{ item.partner_id }}"
    />
    <Table
      id="carsToMarkAsRaasSelection_step3"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ newRaasSupply.value.inventory }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="6db98"
      rowHeight="40px"
      rowSelection="none"
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="6db98"
        alignment="left"
        editable={false}
        format="string"
        groupAggregationMode="none"
        key="vin"
        label="VIN"
        placeholder="Enter value"
        position="left"
        size={143.53125}
        summaryAggregationMode="none"
      />
      <Column
        id="4c017"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="finn_car_id"
        label="Car ID"
        placeholder="Enter value"
        position="center"
        size={68.421875}
        summaryAggregationMode="none"
      />
      <Column
        id="240fa"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        label="Car"
        placeholder="Enter value"
        position="center"
        referenceId="car_description"
        size={119.296875}
        summaryAggregationMode="none"
        valueOverride="{{ currentSourceRow.brand_name }} {{ currentSourceRow.model_name }} {{ currentSourceRow.model_year }}"
      />
      <Column
        id="3b8e7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="signed_by"
        label="Signed by"
        placeholder="Enter value"
        position="center"
        size={87.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="ddef4"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="trim"
        label="Trim"
        placeholder="Enter value"
        position="center"
        size={223.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="a1f16"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="engine"
        label="Engine"
        placeholder="Enter value"
        position="center"
        size={58.625}
        summaryAggregationMode="none"
      />
      <Column
        id="e6167"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="car_lifecycle_status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={163.28125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="c5573"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="date_first_registration"
        label="Date first registration"
        placeholder="Enter value"
        position="center"
        size={136.375}
        summaryAggregationMode="none"
      />
      <Column
        id="b6d68"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="latest_mileage"
        label="Latest mileage"
        placeholder="Enter value"
        position="center"
        size={99}
        summaryAggregationMode="none"
      />
      <Column
        id="6436b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="msrp_incl_options_net"
        label="MSRP"
        placeholder="Enter value"
        position="center"
        size={54.5625}
        summaryAggregationMode="none"
      />
      <Column
        id="cf20b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="car_in_bundle_id"
        label="Car in bundle ID"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="15c4d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="brand_name"
        label="Brand name"
        placeholder="Select option"
        position="center"
        size={0}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="fa809"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="order_id"
        label="Order ID"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="8cc8f"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="trade_id"
        label="Trade ID"
        placeholder="Enter value"
        position="center"
        size={0}
        summaryAggregationMode="none"
      />
      <Column
        id="61f29"
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
        key="purchase_price"
        label="Purchase Price"
        placeholder="Enter value"
        position="center"
        referenceId="purchase_price"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4df77"
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
        hidden="{{ post_order_type.value !== 'buyback_no_return' }}"
        key="no_return_bonus_compesation_net"
        label="No Return Bonus"
        placeholder="Enter value"
        position="right"
        referenceId="no_return_bonus_compesation_net"
        size={120}
        summaryAggregationMode="none"
      />
      <Column
        id="9ba33"
        alignment="left"
        editable="true"
        editableOptions={{ showStepper: true }}
        format="date"
        formatOptions={{
          showSeparators: true,
          notation: "standard",
          dateFormat: "dd.MM.YYY",
        }}
        groupAggregationMode="sum"
        hidden="{{ post_order_type.value !== 'buyback_no_return' }}"
        key="no_return_notification_date"
        label="Notification Date"
        placeholder="Enter value"
        position="right"
        size={100}
        summaryAggregationMode="none"
      />
      <Event
        id="483156ea"
        event="save"
        method="trigger"
        params={{}}
        pluginId="handleSaveNoReturnData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <TextInput
      id="post_order_title_txt"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Title"
      labelPosition="top"
      placeholder="Enter value"
      required={true}
    />
    <Select
      id="post_order_type"
      data="{{ supply_order_types.value }}"
      emptyMessage="No options"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Type"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      required={true}
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <NumberInput
      id="post_order_commision_fee"
      allowNull={true}
      currency="EUR"
      format="currency"
      hidden="true"
      inputValue={0}
      label="Commission Fee"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <NumberInput
      id="post_order_remarketing_window"
      allowNull={true}
      currency="EUR"
      hidden="{{ !(add_to_order.value === 'new') }}"
      inputValue={0}
      label="Remarketing Window"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      textAfter="days"
      value=""
    />
    <Select
      id="post_order_remarketing_end_trigger"
      data="{{ remarketing_end_triggers.value }}"
      emptyMessage="No options"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Remarketing End Trigger"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.value }}"
    />
    <Select
      id="post_order_remarketing_end_trigger_latest"
      data="{{ remarketing_end_triggers.value }}"
      emptyMessage="No options"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Remarketing End Trigger Latest"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.value }}"
    />
    <Select
      id="post_order_transfer_of_risk"
      data="{{ transfer_of_risk_options.value }}"
      emptyMessage="No options"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Transfer of Risk"
      labelPosition="top"
      labels="{{ _.startCase(item.label) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.value }}"
    />
    <Select
      id="post_order_defleeting_logistics"
      data="{{ defleeting_logistics_options.value }}"
      emptyMessage="No options"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Defleeting Logistics"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="post_order_price_inclusion_type"
      data="{{ price_inclusion_types.value }}"
      emptyMessage="No options"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Price Incl. Type"
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item }}"
    />
    <Select
      id="order_selector"
      data="{{ list_supply_orders.data }}"
      emptyMessage="No options"
      hidden="{{ !(add_to_order.value === 'existing') }}"
      label="Select Supply Order:"
      labelPosition="top"
      labels="{{ item.title }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.supply_order_id }}"
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <Switch
      id="post_order_payment_required_for_paper_handover"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Payment Required For Paper Handover"
    />
    <Switch
      id="post_order_payment_required_for_car_handover"
      hidden="{{ !(add_to_order.value === 'new') }}"
      label="Payment Required For Car Handover"
    />
    <Divider id="divider3" hidden="{{ !(add_to_order.value === 'new') }}" />
    <NumberInput
      id="post_order_mileage_allowance"
      allowNull={true}
      currency="EUR"
      hidden="{{ !(add_to_order.value === 'new') }}"
      inputValue={0}
      label="Mileage Allowance"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      textAfter="km"
      value=""
    />
    <NumberInput
      id="post_order_mileage_fee"
      allowNull={true}
      currency="EUR"
      format="currency"
      hidden="{{ !(add_to_order.value === 'new') }}"
      inputValue={0}
      label="Mileage Fee"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <NumberInput
      id="post_order_damage_allowance"
      allowNull={true}
      currency="EUR"
      format="currency"
      hidden="{{ !(add_to_order.value === 'new') }}"
      inputValue={0}
      label="Damage Allowance"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value=""
    />
    <NumberInput
      id="post_order_delivery_charges"
      allowNull={true}
      currency="EUR"
      format="currency"
      hidden="{{ !(add_to_order.value === 'new') }}"
      inputValue={0}
      label="Delivery Charge"
      labelPosition="top"
      placeholder="Enter value"
      showSeparators={true}
      showStepper={true}
      value=""
    />
  </View>
  <Footer>
    <Button
      id="prevButton1"
      disabled="{{ steppedContainer1.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        id="d863a2a0"
        event="click"
        method="showPreviousVisibleView"
        params={{ map: { wrap: false } }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton1"
      disabled="{{ (steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length) || carsToMarkAsRaasSelection_step1.data?.length === 0 }}"
      hidden="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length }}"
      iconAfter="bold/interface-arrows-right-alternate"
      text="Next"
    >
      <Event
        id="c1c4cba7"
        event="click"
        method="showNextVisibleView"
        params={{ map: { wrap: false } }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="e6f973f4"
        enabled="{{ steppedContainer1.currentViewIndex === 1 }}"
        event="click"
        method="trigger"
        params={{}}
        pluginId="handleSavePricing"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="create_supply_order_btn"
      disabled="{{ !post_order_partner.selectedItem || post_order_title_txt.value === '' || !post_order_type.selectedItem || carsToMarkAsRaasSelection_step3.data?.some(car => !car.purchase_price) }}"
      hidden="{{ !(steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length) || !(add_to_order.value === 'new')  }}"
      iconAfter="bold/interface-validation-check-circle"
      loading="{{ create_supply_order.isFetching }}"
      style={{ map: { background: "success" } }}
      text="Create Supply Order"
      tooltipText="{{ self.disabled ? 'Verify all required fields are filled and all cars have a purchase price' : '' }}"
    >
      <Event
        id="d1f7abb5"
        event="click"
        method="trigger"
        params={{}}
        pluginId="create_supply_order"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="create_supply_trades_btn"
      disabled="{{ !order_selector.value }}"
      hidden="{{ !(steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length) || !(add_to_order.value === 'existing') }}"
      iconAfter="bold/interface-validation-check-circle"
      loading="{{ create_supply_trades.isFetching }}"
      style={{ map: { background: "success" } }}
      text="Create Supply Trades"
    >
      <Event
        id="0d4d007a"
        event="click"
        method="trigger"
        params={{
          map: {
            options: {
              map: {
                additionalScope: {
                  map: { supply_order_id: "{{ order_selector.value }}" },
                },
              },
            },
          },
        }}
        pluginId="create_supply_trades"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
