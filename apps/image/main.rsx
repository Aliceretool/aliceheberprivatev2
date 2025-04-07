<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text id="text1" value="from url" verticalAlign="center" />
    <Text id="text2" value="from storage" verticalAlign="center" />
    <Text id="text3" value="from base64" verticalAlign="center" />
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      src="https://www.bornfree.org.uk/wp-content/uploads/2024/08/Charging-Baby-Elephant-c-George-Logan.jpg"
    />
    <Image
      id="image2"
      dbBlobId="c71d82b2-5ead-479f-92e3-28d99d6cca2c"
      heightType="fixed"
      horizontalAlign="center"
      src="https://picsum.photos/id/1025/800/600"
      srcType="dbBlobId"
    />
    <Image
      id="image3"
      heightType="fixed"
      horizontalAlign="center"
      retoolFileObject="{{ fileInput1.value[0]}}"
      src="https://picsum.photos/id/1025/800/600"
      srcType="retoolFileObject"
    />
    <FileInput
      id="fileInput1"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      labelPosition="top"
      maxCount={20}
      maxSize="250mb"
      textBefore="Browse"
    >
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="uploadManager_query2"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileInput>
  </Frame>
</App>
