<Container
  id="linkCard4"
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
      id="containerTitle5"
      marginType="normal"
      value="{{i18n.t('Deviations')}}"
      verticalAlign="center"
    />
    <Icon
      id="icon4"
      icon="bold/interface-edit-write-2"
      marginType="normal"
      style={{ ordered: [{ background: "primary" }] }}
      styleVariant="background"
    />
    <Text
      id="text6"
      marginType="normal"
      value="## {{getOpenDVR.data.NumberofDVR[0]}}"
      verticalAlign="center"
    />
    <Spacer id="spacer5" marginType="normal" />
    <Text
      id="containerFooter4"
      marginType="normal"
      style={{
        ordered: [{ color: "{{ linkCard4.hovered ? theme.primary : '' }}" }],
      }}
      value="**{{i18n.t('Open')}}**"
      verticalAlign="center"
    />
  </View>
</Container>
