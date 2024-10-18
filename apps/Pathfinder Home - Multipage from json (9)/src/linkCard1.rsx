<Container
  id="linkCard1"
  _gap={0}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="true"
  marginType="normal"
  padding="12px"
  showBody={true}
>
  <View id="06410" viewKey="View 1">
    <Icon
      id="icon1"
      icon="bold/shopping-store-factory-building"
      marginType="normal"
      style={{ ordered: [{ background: "primary" }] }}
      styleVariant="background"
    />
    <Text
      id="containerTitle2"
      marginType="normal"
      value="{{i18n.t('Total Deviations')}}"
      verticalAlign="center"
    />
    <Text
      id="text3"
      marginType="normal"
      value="## {{getOpenDVR.data.NumberofDVR[0]}}"
      verticalAlign="center"
    />
    <Spacer id="spacer2" marginType="normal" />
    <Text
      id="containerFooter1"
      marginType="normal"
      style={{
        ordered: [{ color: "{{ linkCard1.hovered ? theme.primary : '' }}" }],
      }}
      value="**{{i18n.t('Open')}}**"
      verticalAlign="center"
    />
  </View>
</Container>
