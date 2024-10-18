<ModalFrame
  id="modalFrame9"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle39"
      value="### Add Time Tracking Account"
      verticalAlign="center"
    />
    <Image
      id="image19"
      hidden="{{!getlogo4.data.base64Data}}"
      horizontalAlign="center"
      src="data:image/png;base64, {{getlogo4.data.base64Data}}"
    />
    <Button
      id="modalCloseButton40"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame9"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="form47"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData="{{ table40.selectedRow }}"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      scroll={true}
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text id="formTitle45" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <NumberInput
          id="numberInput10"
          currency="USD"
          formDataKey="accountID"
          hidden="true"
          inputValue={0}
          label="Account id"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          value={0}
        />
        <TextInput
          id="textInput76"
          formDataKey="account_key"
          label="Key"
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="textInput77"
          formDataKey="account_name"
          label="Name"
          placeholder="Enter value"
          required={true}
        />
        <Select
          id="select63"
          automaticItemColors={true}
          emptyMessage="No options"
          formDataKey="status"
          itemMode="static"
          label="Status"
          labels={null}
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          values={null}
        >
          <Option id="7d3dd" value="Open" />
          <Option id="4c127" value="Closed" />
        </Select>
        <Select
          id="select64"
          automaticItemColors={true}
          captionByIndex="{{ item.type }}"
          data="{{ getclients4.data }}"
          emptyMessage="No options"
          formDataKey="company_name"
          label="Client"
          labels="{{ item.company_name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showClear={true}
          showSelectionIndicator={true}
          values="{{ item.id }}"
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getlogo4"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="multiselect23"
          automaticItemColors={true}
          data="{{ getProducts5.data }}"
          emptyMessage="No options"
          formDataKey="products"
          label="Product"
          labels="{{ item.ProductDisplayText }}"
          overlayMaxHeight={375}
          placeholder="Select options"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.id }}"
        />
      </Body>
      <Footer>
        <Button
          id="formButton35"
          submit={true}
          submitTargetId="form47"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="insAccount"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getTime_accounts2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalFrame9"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
