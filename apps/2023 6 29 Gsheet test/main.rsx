<App>
  <Include src="./functions.rsx" />
  <Frame id="$main" padding="8px 12px" type="main">
    <TableLegacy
      id="table1"
      _columns={[
        "Title",
        "Sales",
        "Description",
        "id",
        "name",
        "email",
        "sales",
        "customer_id",
        "store_id",
        "first_name",
        "last_name",
        "address_id",
        "activebool",
        "create_date",
        "last_update",
        "active",
      ]}
      _columnVisibility={{
        ordered: [
          { address_id: true },
          { active: true },
          { name: true },
          { Sales: true },
          { sales: true },
          { activebool: true },
          { create_date: true },
          { last_update: true },
          { last_name: true },
          { Title: true },
          { store_id: true },
          { first_name: true },
          { id: true },
          { customer_id: true },
          { email: true },
          { Description: true },
        ],
      }}
      _unfilteredSelectedIndex=""
      actionButton={false}
      actionButtonDisabled=""
      actionButtonInternalUrlHashParams=""
      actionButtonInternalUrlPath=""
      actionButtonInternalUrlQuery=""
      actionButtonNewWindow={false}
      actionButtonQuery=""
      actionButtonText=""
      actionButtonType="runQuery"
      actionButtonUrl=""
      applyDynamicSettingsToColumnOrder={false}
      columnColors={{
        ordered: [
          { address_id: "" },
          { active: "" },
          { created_at: "" },
          { quantity: "" },
          { image_url: "" },
          { name: "" },
          { Sales: "orange" },
          { sales: "" },
          { postcode: "" },
          { activebool: "" },
          { create_date: "" },
          { last_update: "" },
          { last_name: "" },
          { part_number: "" },
          { updated_at: "" },
          { Title: "blue" },
          { store_id: "" },
          { first_name: "" },
          { unit_price_cents: "" },
          { id: "" },
          { customer_id: "" },
          { email: "" },
          { Description: "green" },
        ],
      }}
      columns={[
        "Title",
        "Sales",
        "Description",
        "id",
        "name",
        "email",
        "sales",
        "customer_id",
        "store_id",
        "first_name",
        "last_name",
        "address_id",
        "activebool",
        "create_date",
        "last_update",
        "active",
      ]}
      columnVisibility={{
        ordered: [
          { address_id: true },
          { active: true },
          { name: true },
          { Sales: true },
          { sales: true },
          { activebool: true },
          { create_date: true },
          { last_update: true },
          { last_name: true },
          { Title: true },
          { store_id: true },
          { first_name: true },
          { id: true },
          { customer_id: true },
          { email: true },
          { Description: true },
        ],
      }}
      columnWidths={[
        { ordered: [{ id: "Title" }, { value: 250 }] },
        { ordered: [{ id: "Sales" }, { value: 80 }] },
      ]}
      data="{{ query1.data }}"
      downloadRawData={true}
      pageSize={6}
      selectedColumn={null}
      showColumnBorders={true}
      style={{ ordered: [] }}
    />
    <Button id="button1" text="Button" />
    <Button id="button2" text="Button" />
    <Button id="button3" text="Button" />
  </Frame>
</App>
