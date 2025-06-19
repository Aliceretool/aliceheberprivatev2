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
    <DynamicWidget_CustomComponentLibrary_HelloWorld
      id="helloWorld1"
      addingNewFieldForMigration={true}
      collectionUuid=""
      heightType="fixed"
      name="jkjhkjh"
      names="alice"
      showInEditor={true}
    />
    <DynamicWidget_CustomComponentLibrary_HelloWorld
      id="helloWorld2"
      collectionUuid="be8f2400-93e3-491b-a62d-f17c7c188295"
      heightType="fixed"
      names={null}
    />
    <JSONEditor
      id="jsonEditor2"
      addingNewFieldForMigration={true}
      value="{{helloWorld1}}"
    />
    <DynamicWidget_CustomComponentLibrary_HelloWorld
      id="helloWorld3"
      collectionUuid="be8f2400-93e3-491b-a62d-f17c7c188295"
      heightType="fixed"
      names={null}
    />
    <DynamicWidget_CustomComponentLibrary_ButtonComponent
      id="buttonComponent1"
      addingNewFieldForMigration={true}
      collectionUuid=""
      events={[
        {
          ordered: [
            { event: "click" },
            { type: "script" },
            { method: "run" },
            { pluginId: "" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    src: "query1.trigger ({\n  additionalScope:{\n    tableName: text2.value}\n});",
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      heightType="fixed"
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
