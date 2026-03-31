<Container
  id="emptyStateContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden="{{ !!selectedEvent.value }}"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle122"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="00030" viewKey="View 1">
    <Icon
      id="emptyStateIcon"
      horizontalAlign="center"
      icon="line/interface-user-single"
      style={{ map: { color: "#4a90e2" } }}
    />
    <Text
      id="emptyStateMainText"
      horizontalAlign="center"
      style={{ fontSize: "h4Font", fontWeight: "h4Font", fontFamily: "h4Font" }}
      value="Select a session to get started"
      verticalAlign="center"
    />
    <Text
      id="subTitleEmptyStateText"
      horizontalAlign="center"
      value="Click on any coaching session on the left to view the learner details,
progress and latest coach notes."
      verticalAlign="center"
    />
    <Link
      id="ctaEmptyStateLink"
      horizontalAlign="center"
      showUnderline="never"
      style={{ map: { text: "#4a90e2" } }}
      text="<   Choose a session from the list"
    />
  </View>
</Container>
