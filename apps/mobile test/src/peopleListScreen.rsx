<Screen id="peopleListScreen" title="People List">
  <CollectionView
    id="collectionView1"
    bodyByIndex="{{item.sales}}"
    data="{{getRows.data}}"
    prefixIconByIndex="bold/interface-user-single"
    prefixIconColorByIndex=""
    prefixImageFitByIndex="cover"
    prefixImageShapeByIndex="square"
    prefixImageSizeByIndex="1 to 1"
    prefixImageSourceByIndex="{{item.image}}"
    prefixTypeByIndex="image"
    showSeparator={true}
    subtitleByIndex="{{item.email}}"
    subtitleLengthByIndex={2}
    suffixIconByIndex="bold/interface-arrows-button-right"
    suffixTextByIndex="text"
    suffixTypeByIndex="none"
    suffixValueByIndex="false"
    titleByIndex="{{item.name}}"
  >
    <Event
      event="press"
      method="navigateTo"
      params={{
        ordered: [
          { screenPluginId: "peopleDetailsScreen" },
          { detailSplitView: "true" },
          { splitViewRatio: 0.5 },
        ],
      }}
      type="navigator"
    />
  </CollectionView>
  <Container
    id="card1"
    align="flex-start"
    cornerType="square"
    gap={12}
    justify="flex-start"
    layout="column"
    padding={{
      ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
    }}
    widthGrowFactor={1}
  >
    <Container
      id="container4"
      align="center"
      cornerType="square"
      justify="flex-start"
      layout="column"
      padding={{
        ordered: [{ left: 0 }, { right: 0 }, { top: 0 }, { bottom: 0 }],
      }}
      widthGrowFactor={1}
    >
      <Text id="body1" size="medium" value="fred@rogers.com" weight="normal" />
      <Text
        id="caption1"
        size="small"
        style={{ ordered: [{ text: "#555555" }] }}
        value="412"
        weight="normal"
      />
      <Heading id="title1" size="h4" value="Fred Rogers" />
    </Container>
    <Image
      id="image3"
      ratio={1.3333333333333333}
      src="https://picsum.photos/id/513/800/600"
    />
  </Container>
</Screen>
