<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text id="Title" value="### Your apps" verticalAlign="center" />
    <TextInput
      id="AppSearch"
      iconBefore="bold/interface-search"
      label=""
      labelPosition="top"
      placeholder="Search your apps"
    />
    <ListViewBeta
      id="Grid"
      _primaryKeys=""
      data="{{ filteredApps.value }}"
      heightType="auto"
      itemWidth="200px"
      layoutType="grid"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="Container"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="8px 8px"
        padding="12px"
        showBody={true}
        showBorder={false}
      >
        <View id="7af7d" viewKey="View 1">
          <Text
            id="ContainerTitle"
            value="**{{ item.name }}**

{{ item.description}}"
            verticalAlign="center"
          />
          <Link
            id="AppLink"
            showUnderline="never"
            text="View"
            textSize="default"
          />
        </View>
      </Container>
    </ListViewBeta>
  </Frame>
</App>
