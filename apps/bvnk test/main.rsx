<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <ListView id="listView2" marginType="normal" paddingType="normal">
      <Container
        id="container1"
        footerPadding="4px 12px"
        footerPaddingType="normal"
        headerPadding="4px 12px"
        headerPaddingType="normal"
        marginType="normal"
        padding="12px"
        paddingType="normal"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="containerTitle1"
            marginType="normal"
            value="{{query1.data.name[i]}}"
            verticalAlign="center"
          />
        </Header>
        <View id="1173e" viewKey="View 1">
          <Select
            id="select1"
            data="{{ query1.data }}"
            emptyMessage="No options"
            labels="{{ item.age }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            values="{{ item.id }}"
          />
          <Text
            id="text1"
            marginType="normal"
            value="textbox"
            verticalAlign="center"
          />
        </View>
      </Container>
    </ListView>
  </Frame>
</App>
