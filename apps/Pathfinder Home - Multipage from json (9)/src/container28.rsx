<Container
  id="container28"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle72"
      marginType="normal"
      value="#### Details"
      verticalAlign="center"
    />
  </Header>
  <View id="ef729" viewKey="View 1">
    <Select
      id="select54"
      data="{{ getclients2.data }}"
      emptyMessage="No options"
      label="Client"
      labelPosition="top"
      labels="{{ item.company_name }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    />
    <Select
      id="select53"
      captionByIndex="{{ item.email_address }}"
      colorByIndex=""
      data="{{ getusersv2.data }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Contact"
      labelPosition="top"
      labels="{{ item.name }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      values="{{ item.userID }}"
    />
    <Select
      id="select55"
      data="{{ getPaymentTerms.data }}"
      emptyMessage="No options"
      fallbackTextByIndex=""
      label="Payment terms"
      labelPosition="top"
      labels="{{ item.payment_display_text }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    />
    <Select
      id="select56"
      captionByIndex="{{ item.email }}"
      data="{{ getInternalUsers.data }}"
      emptyMessage="No options"
      label="Asignee"
      labelPosition="top"
      labels="{{ `${item.firstname} ${item.lastname}` }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{ item.id }}"
    >
      <Option id="17b19" value="Option 1" />
      <Option id="b49a6" value="Option 2" />
      <Option id="905c7" value="Option 3" />
    </Select>
  </View>
</Container>
