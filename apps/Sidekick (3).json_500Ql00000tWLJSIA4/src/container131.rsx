<Container
  id="container131"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle160"
      value="#### {{ item }}"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <TagsWidget2
      id="mainTag_nba"
      allowWrap={true}
      colorByIndex=""
      data="{{ [item.content_type] }}"
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      labels="{{ item == 'support_factor' ? 'Support Factor' : item == 'intervention' ? 'Intervention' : 'Note'}}"
      textColorByIndex=""
      tooltipByIndex=""
      value=""
      values="{{item}}"
    />
    <TagsWidget2
      id="secondaryTag_nba"
      allowWrap={true}
      colorByIndex=""
      data="{{ item.content_type === 'support_factor' ? (item.support_factors || []) : item.content_type === 'intervention' ? [item.intervention_action, item.intervention_type].filter(x => x) : [] }}"
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      labels="{{ item }}"
      textColorByIndex=""
      tooltipByIndex=""
      value=""
      values=""
    />
    <Text
      id="text567"
      heightType="fixed"
      value="{{ item.content }}"
      verticalAlign="center"
    />
    <Text
      id="text566"
      style={{
        fontSize: "10px",
        fontWeight: "400",
        fontFamily: "Saans, Inter, sans-serif",
      }}
      value="**{{ moment(item.created_at).format('MMM DD, YYYY') }}** - {{ item.author.first_name }} {{ item.author.last_name }}"
      verticalAlign="center"
    />
  </View>
</Container>
