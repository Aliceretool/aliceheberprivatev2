<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="98297bed-897a-4e9d-b469-afff6020f0dd"
>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Include src="./steppedContainer1.rsx" />
    <Icon id="icon4" horizontalAlign="center" icon="bold/shopping-gift" />
    <ListViewBeta
      id="listView1"
      data={
        '["Fluffy", "Whiskers", "Fido", "Mittens", "Rex", "Snowball", "Spot", "Lucky", "Princess", "Buddy", "Milo", "Cleo", "Lola", "Simba", "Rocky", "Ginger", "Spike", "Max", "Cupcake", "Oreo"]'
      }
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="container2"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="containerTitle2"
            value="#### {{ item }}"
            verticalAlign="center"
          />
          <Icon id="icon1" horizontalAlign="center" icon="bold/shopping-gift" />
        </Header>
        <View id="00030" viewKey="View 1" />
      </Container>
    </ListViewBeta>
  </Frame>
</Screen>
