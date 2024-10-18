<Container
  id="linkCard2"
  _gap={0}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="true"
  marginType="normal"
  padding="12px"
  showBody={true}
>
  <View id="06410" viewKey="View 1">
    <Text
      id="containerTitle3"
      marginType="normal"
      value=" {{i18n.t('CAPA')}}"
      verticalAlign="center"
    />
    <Icon
      id="icon2"
      altText="CAPA"
      icon="bold/interface-validation-check-circle-alternate"
      marginType="normal"
      style={{ ordered: [{ background: "primary" }] }}
      styleVariant="background"
    />
    <Text
      id="text4"
      marginType="normal"
      value="## {{getOpenCAPA.data.NumberofCAPA[0]}}"
      verticalAlign="center"
    />
    <Spacer id="spacer3" marginType="normal" />
    <Text
      id="containerFooter2"
      marginType="normal"
      style={{
        ordered: [{ color: "{{ linkCard2.hovered ? theme.primary : '' }}" }],
      }}
      value="**{{i18n.t('Open')}}**"
      verticalAlign="center"
    />
  </View>
</Container>
