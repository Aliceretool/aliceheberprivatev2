<Container
  id="container99"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <View id="00030" viewKey="View 1">
    <Text
      id="containerTitle114"
      value="##### {{ item.role === 'user' ? current_user.firstName : 'Coach & Instructor Copilot' }}"
      verticalAlign="center"
    />
    <Text
      id="containerTitle115"
      heightType="fixed"
      horizontalAlign="right"
      value="{{ moment(item.createdAt).format('MMM Do YYYY, h:mm A') }}"
      verticalAlign="center"
    />
    <Divider id="divider19" />
    <Spacer id="spacer7" />
    <Text id="text471" value="{{ item.content }}" verticalAlign="center" />
    <Divider
      id="divider20"
      hidden="{{ !(item.sources || []).some(s => !!s?.url) }}"
      text="Guru Source Links"
    />
    <ListViewBeta
      id="listView4"
      data="{{ item.sources }}"
      heightType="auto"
      hidden="{{ !(item.sources || []).some(s => !!s?.url) }}"
      itemWidth="180px"
      margin="0"
      maxHeight="100vh"
      numColumns="1"
      padding="0"
    >
      <Link id="link5" iconBefore="bold/interface-link" text="{{ item.title }}">
        <Event
          id="b49c66b9"
          event="click"
          method="openUrl"
          params={{ map: { url: "{{ item.url }}" } }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Link>
    </ListViewBeta>
  </View>
</Container>
