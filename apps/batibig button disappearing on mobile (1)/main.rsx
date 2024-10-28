<MobileApp>
  <Include src="./functions.rsx" />
  <TabScreen
    id="tabscreen"
    items={[
      {
        ordered: [
          { screen: "collectionViewComponent" },
          { icon: "bold/interface-text-formatting-list-bullets" },
        ],
      },
    ]}
  />
  <Include src="./src/collectionViewComponent.rsx" />
</MobileApp>
