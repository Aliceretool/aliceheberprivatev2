<MobileApp>
  <Include src="./functions.rsx" />
  <TabScreen
    id="tabscreen"
    items={[
      {
        ordered: [
          { screen: "noNewLine" },
          { icon: "bold/interface-text-formatting-list-bullets" },
        ],
      },
    ]}
    uuid="61bc81e3-a503-446b-836a-4d04590a3d3a"
  />
  <Include src="./src/noNewLine.rsx" />
  <Include src="./src/withNewLine.rsx" />
  <Include src="./src/only3Options.rsx" />
  <Include src="./src/moreOptionsNoNewLine.rsx" />
  <Include src="./src/moreOptionsWithNewLine.rsx" />
  <Include src="./src/nine.rsx" />
  <Include src="./src/eight.rsx" />
  <Include src="./src/seven.rsx" />
  <Include src="./src/eleven.rsx" />
  <Include src="./src/ten.rsx" />
  <Include src="./src/tenNoNewLine.rsx" />
  <Include src="./src/elevenNoNewLine.rsx" />
  <Include src="./src/tenMultiselect.rsx" />
  <Include src="./src/elevenMultiselect.rsx" />
</MobileApp>
