<Screen
  id="peopleDetailsScreen"
  events={[
    {
      ordered: [
        { event: "visible" },
        { type: "widget" },
        { method: null },
        { pluginId: "" },
        { targetId: null },
        { params: { ordered: [] } },
        { waitType: "debounce" },
        { waitMs: "0" },
      ],
    },
  ]}
  padding={{
    ordered: [{ top: 0 }, { bottom: 0 }, { left: 12 }, { right: 12 }],
  }}
  title="Details"
>
  <Image
    id="image1"
    cornerType="square"
    ratio={1}
    src="{{collectionView1.selectedItem.image}}"
    style={{ ordered: [] }}
  />
  <KeyValue
    id="keyValue1"
    _rowKeysFormatted={{ ordered: [{ email: "Email:" }, { sales: "Sales:" }] }}
    allowTextWrapping="true"
    data="{{ collectionView1.selectedItem }}"
    header="{{ collectionView1.selectedItem.name }}"
    rows={["id", "name", "email", "sales", "image"]}
    rowVisibility={{
      ordered: [
        { id: false },
        { name: false },
        { email: true },
        { sales: true },
        { image: false },
      ],
    }}
    showSeparator="true"
    style={{ ordered: [] }}
    valueWidth="75%"
  />
  <ZebraDataWedgeReader
    id="zebraDataWedgeReader1"
    buttonSize="large"
    buttonText="Toggle scan"
  />
</Screen>
