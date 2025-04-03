<MobileApp>
  <TabScreen
    id="tabscreen"
    items={[
      {
        ordered: [
          { screen: "screen1" },
          { icon: "bold/interface-text-formatting-list-bullets" },
        ],
      },
      {
        ordered: [
          { screen: "screen2" },
          { icon: "bold/interface-user-single" },
        ],
      },
    ]}
  />
  <Include src="./src/screen1.rsx" />
  <Include src="./src/screen2.rsx" />
  <Include src="./src/detailsScreen.rsx" />
</MobileApp>
