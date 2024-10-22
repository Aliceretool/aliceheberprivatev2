<Container
  id="pageContainer"
  _direction="vertical"
  _gap="24px"
  _type="stack"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="false"
  margin="0"
  padding="24px 16px"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
>
  <View id="c79f8" viewKey="View 1">
    <Text
      id="text16"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <TextInput id="textInput1" labelPosition="top" placeholder="Enter value" />
    <Include src="./tabbedContainer.rsx" />
    <Module
      id="pageHeader"
      breadcrumbs={
        '[\n  {\n    "label": "受注管理",\n    "path": "/salesOrders/textile"\n  },\n  {\n    "label": "受注詳細"\n  }\n]'
      }
      duplicateOrder="duplicateOrder"
      margin="0"
      name="pageHeaderWithBreadcrumbs"
      otherActionsDefs="{{ otherActionsDefs.value }}"
      otherActionsQuery="otherActionsQuery"
      pageUuid="b0fb7f89-2c96-4105-85af-69b946be0a07"
      primaryButtonLabel="編集"
      primaryButtonQuery="toEdit"
      secondaryButtonLabel="複製"
      secondaryButtonQuery="duplicateOrder"
      title="受注詳細"
    />
    <Module
      id="common"
      hidden="true"
      margin="0"
      name="commonVariables"
      pageUuid="e8f04913-4bdb-4cd8-8562-d23896973c85"
    />
  </View>
</Container>
