<Container
  id="container25"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  heightType="fixed"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle69"
      marginType="normal"
      value="#### Client Details"
      verticalAlign="center"
    />
  </Header>
  <View id="e0727" viewKey="Interactive AI Chat">
    <Text
      id="text100"
      marginType="normal"
      value="**{{table36.selectedRow.company_name}}**"
      verticalAlign="center"
    />
    <Image
      id="image17"
      altText="{{table36.selectedRow.company_website}}"
      horizontalAlign="center"
      marginType="normal"
      src="data:image/png;base64, {{getlogo2.data.base64Binary}}"
    />
    <Text
      id="text101"
      marginType="normal"
      value="**Address**
{{table36.selectedRow.company_address }}
{{table36.selectedRow.company_email}}
{{table36.selectedRow.company_phone}}

"
      verticalAlign="center"
    />
    <Divider
      id="divider3"
      marginType="normal"
      style={{ ordered: [{ fontSize: "h4Font" }, { fontWeight: "700" }] }}
      textSize="h4"
    />
    <Text
      id="text102"
      marginType="normal"
      value="**Reporter**
{{table36.selectedRow.name}}
{{table36.selectedRow.phone_no}}
{{table36.selectedRow.email_address}}
"
      verticalAlign="center"
    />
    <Text
      id="text103"
      marginType="normal"
      value="{{table36.selectedRow.user_notes}}"
      verticalAlign="center"
    />
  </View>
  <View
    id="7d487"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Trained AI"
  />
</Container>
