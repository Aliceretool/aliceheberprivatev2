<MobileApp>
  <Include src="./functions.rsx" />
  <TabScreen
    id="tabscreen"
    items={[
      {
        ordered: [
          { screen: "screen1" },
          { icon: "bold/interface-text-formatting-list-bullets" },
        ],
      },
    ]}
  />
  <Include src="./src/screen1.rsx" />
  <Include src="./src/details.rsx" />
</MobileApp>
