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
        screenPluginId: "peopleDetailsScreen",
        detailSplitView: "true",
        splitViewRatio: 0.5,
      }}
      type="navigator"
    />
  </CollectionView>
</Screen>
