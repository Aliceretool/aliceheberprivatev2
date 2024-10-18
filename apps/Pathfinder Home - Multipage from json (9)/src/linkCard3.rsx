<Container
  id="linkCard3"
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
      id="icon3"
      icon="bold/interface-setting-slider-horizontal"
      marginType="normal"
      style={{ ordered: [{ background: "primary" }] }}
      styleVariant="background"
    />
    <Text
      id="containerTitle4"
      marginType="normal"
      value="{{i18n.t('Change Requests')}}"
      verticalAlign="center"
    />
    <Text
      id="text5"
      marginType="normal"
      value="## {{getOpenCRF.data.NumberofCRF[0]}}"
      verticalAlign="center"
    />
    <Spacer id="spacer4" marginType="normal" />
    <Text
      id="containerFooter3"
      marginType="normal"
      style={{
        ordered: [{ color: "{{ linkCard3.hovered ? theme.primary : '' }}" }],
      }}
      value="**{{i18n.t('Open')}}**"
      verticalAlign="center"
    />
  </View>
</Container>
