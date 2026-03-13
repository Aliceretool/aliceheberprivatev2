<App>
  <Include src="./functions.rsx" />
  <UrlFragments id="$urlFragments" value={{ ordered: [{ filter: "" }] }} />
  <Frame
    id="$main"
    addingNewFieldForMigration={true}
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={null}
    type="main"
  >
    <Text
      id="text1"
      addingNewFieldForMigration={true}
      marginType="normal"
      value="component in /Users/aliceheber/local-retool/customComponentReact/new-custom-component"
      verticalAlign="center"
    />
    <Text
      id="text3"
      addingNewFieldForMigration={true}
      marginType="normal"
      value="update code from vscode to app via terminal command: 'npx retool-ccl dev '"
      verticalAlign="center"
    />
    <Text
      id="text4"
      addingNewFieldForMigration={true}
      marginType="normal"
      value="needs v3.41 or higher"
      verticalAlign="center"
    />
    <DynamicWidget_CustomComponent_ButtonComponent
      id="buttonComponent2"
      collectionUuid="2b175c4e-a0d2-44b6-96d2-68d883216b41"
      disabled="false"
      heightType="fixed"
    />
    <DynamicWidget_CustomComponent_ButtonComponent
      id="buttonComponent3"
      collectionUuid="2b175c4e-a0d2-44b6-96d2-68d883216b41"
      disabled="false"
      heightType="fixed"
    />
    <DynamicWidget_CustomComponent_HelloWorld
      id="helloWorld4"
      collectionUuid="2b175c4e-a0d2-44b6-96d2-68d883216b41"
      disabled="false"
      heightType="fixed"
      names={null}
    />
    <DynamicWidget_CustomComponent_HelloWorld
      id="helloWorld5"
      collectionUuid="2b175c4e-a0d2-44b6-96d2-68d883216b41"
      disabled="false"
      heightType="fixed"
      names={null}
    />
    <Text id="text5" value="https://www.google.com/" verticalAlign="center" />
    <DynamicWidget_CustomComponent_QRCodeComponent
      id="qrCodeComponent1"
      collectionUuid="2b175c4e-a0d2-44b6-96d2-68d883216b41"
      heightType="fixed"
      value="{{text5.value}}"
    />
    <Text
      id="text2"
      addingNewFieldForMigration={true}
      marginType="normal"
      value="alice_users"
      verticalAlign="center"
    />
    <JSONEditor id="jsonEditor1" addingNewFieldForMigration={true} value="" />
    <TextInput
      id="textInput1"
      addingNewFieldForMigration={true}
      label="Disabled"
      labelPosition="top"
      placeholder="Enter value"
    />
  </Frame>
</App>
