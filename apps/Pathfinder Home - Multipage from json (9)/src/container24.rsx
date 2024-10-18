<Container
  id="container24"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle68"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="400ca" viewKey="View 1">
    <Text id="text95" value="Total No. of Suppliers" verticalAlign="center" />
    <Text
      id="text96"
      value="### {{formatDataAsArray(get_Suppliers.data).length }}"
      verticalAlign="center"
    />
    <Text
      id="text97"
      style={{ ordered: [{ color: "secondary" }] }}
      value="+12%"
      verticalAlign="center"
    />
    <Text id="text98" value="last 28 days" verticalAlign="center" />
  </View>
</Container>
