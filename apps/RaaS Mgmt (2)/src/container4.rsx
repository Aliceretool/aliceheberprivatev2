<Container
  id="container4"
  enableFullBleed={true}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  overflowType="hidden"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Spacer id="spacer2" />
    <Multiselect
      id="brandNames_filter"
      data="{{ get_brands.data }}"
      disabled=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hidden=""
      hiddenByIndex=""
      iconBefore="bold/shipping-box-2-alternate"
      iconByIndex=""
      label=""
      labels="{{ _.startCase(item.brand_name) }}"
      loading="{{get_brands.isFetching}}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Brands"
      showSelectionIndicator={true}
      style={{ ordered: [{ borderRadius: "0px" }] }}
      values="{{ item.brand_name }}"
      wrapTags={true}
    />
    <Multiselect
      id="modelNames_filter"
      data="{{ get_models.data }}"
      disabled=""
      emptyMessage="No options"
      hidden=""
      iconBefore="bold/programming-module-three-alternate"
      label=""
      labels="{{ item.config_model_name) }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Models"
      showSelectionIndicator={true}
      style={{ ordered: [{ borderRadius: "0px" }] }}
      values="{{ item.config_model_name }}"
      wrapTags={true}
    />
    <Select
      id="supplyOrder_filter"
      data="{{ list_supply_orders.data }}"
      emptyMessage="No options"
      iconBefore="bold/interface-folder"
      iconByIndex=""
      label=""
      labelPosition="top"
      labels="{{ item.title }}"
      overlayMaxHeight={375}
      placeholder="Supply Order"
      showClear={true}
      showSelectionIndicator={true}
      value="{{ selected_order.value?.supply_order_id }}"
      values="{{ item.supply_order_id }}"
    >
      <Option id="00030" value="Option 1" />
      <Option id="00031" value="Option 2" />
      <Option id="00032" value="Option 3" />
    </Select>
    <Select
      id="supplyPartner_filter"
      data="{{ get_supply_partners.data }}"
      disabled=""
      emptyMessage="No options"
      iconBefore="bold/interface-user-single"
      label=""
      labelPosition="top"
      labels="{{ item.supplier_name }}"
      overlayMaxHeight={375}
      placeholder="Supply Partner"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.partner_id }}"
    />
    <TextInput
      id="vins_filter"
      iconBefore="bold/interface-id-face-scan-2"
      label=""
      labelPosition="top"
      placeholder="VINs"
      showClear={true}
      value="{{ defaultVinsFilter.value }}"
    />
    <Button
      id="search_raas_inventory_btn"
      iconBefore="bold/interface-search"
      loading="{{ get_raas_inventory.isFetching }}"
      style={{ map: { background: "success" } }}
      text="Search"
    >
      <Event
        id="2df08bc7"
        event="click"
        method="trigger"
        params={{}}
        pluginId="get_raas_inventory"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button2"
      iconBefore="bold/interface-text-formatting-filter-2-alternate"
      style={{
        background: "rgba(185, 199, 229, 0)",
        border: "rgba(0, 0, 0, 1)",
      }}
      text="Clear Filters"
    >
      <Event
        id="74330748"
        event="click"
        method="trigger"
        params={{}}
        pluginId="resetFilters"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Multiselect
      id="supplyType_filter"
      _defaultValue={{ array: [] }}
      captionByIndex=""
      colorByIndex=""
      data="{{ supply_order_types.value }}"
      disabled=""
      disabledByIndex=""
      fallbackTextByIndex=""
      hidden="false"
      hiddenByIndex=""
      iconBefore="bold/interface-arrows-synchronize"
      iconByIndex=""
      imageByIndex=""
      label=""
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      marginType="normal"
      maxCount=""
      maxLines="2"
      overlayMaxHeight="375"
      placeholder="Supply Type"
      showClear={true}
      showSelectionIndicator={true}
      style={{ ordered: [{ borderRadius: "0px" }] }}
      tooltipByIndex=""
      tooltipText="Select one or multiple RaaS Supply Types to filter by."
      value="[]"
      values="{{ item }}"
      wrapTags={true}
    />
    <Multiselect
      id="carStatus_filter"
      data="{{ car_lifecycle_status.value }}"
      emptyMessage="No options"
      iconBefore="bold/money-cashier-tag-alternate"
      label=""
      labelPosition="top"
      labels="{{ _.startCase(item) }}"
      overlayMaxHeight={375}
      placeholder="Car Status"
      showSelectionIndicator={true}
      values="{{ item }}"
      wrapTags={true}
    />
    <Select
      id="availability_filter"
      disabled=""
      emptyMessage="No options"
      iconBefore="bold/money-cash-bag-dollar"
      itemMode="static"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Sold/Unsold"
      showClear={true}
      showSelectionIndicator={true}
      value="signed"
    >
      <Option id="00031" color="green" label="Available" value="available" />
      <Option id="00030" color="orange" label="Sold" value="sold" />
    </Select>
    <Select
      id="remarketingPartner_filter"
      data="{{ run_get_partners.data }}"
      disabled=""
      emptyMessage="No options"
      iconBefore="bold/interface-user-single"
      label=""
      labelPosition="top"
      labels="{{ item.company_name }}"
      overlayMaxHeight={375}
      placeholder="Rem. Partner"
      showClear={true}
      showSelectionIndicator={true}
      values="{{ item.partner_id }}"
    />
    <TextInput
      id="finnCarIds_filter"
      iconBefore="bold/interface-id-iris-scan-alternate"
      label=""
      labelPosition="top"
      placeholder="FINN Car IDs"
      showClear={true}
    />
    <Button
      id="addRaasSupply"
      style={{ map: { background: "rgba(0, 0, 0, 1)" } }}
      text="Add Raas Supply"
    >
      <Event
        id="cfaa08fc"
        event="click"
        method="show"
        params={{}}
        pluginId="addRaasSupplyModalFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Spacer id="spacer1" />
  </Header>
  <View id="00030" viewKey="View 1">
    <Include src="./tabbedContainer1.rsx" />
  </View>
</Container>
