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
    <Multiselect
      id="selectTicker"
      data="{{ query1.data.ResultSet.Result }}"
      emptyMessage="No options"
      hidden={
        '{{selectAction.selectedItem? !( selectAction.selectedItem.value == "Market cap override" || selectAction.selectedItem.value =="Profile refresh" || selectAction.selectedItem.value == "Update ticker long name"): true}}'
      }
      iconByIndex=""
      label="Select ticker"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select options"
      required={true}
      showSelectionIndicator={true}
      values={'{{ item.symbol +"(" +item.name +")"}}'}
      wrapTags={true}
    >
      <Event
        event="inputValueChange"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="query1"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Container
          id="container1"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showHeader={true}
        >
          <Header>
            <Text
              id="containerTitle1"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="d99dd" viewKey="View 1">
            <Container
              id="container2"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              padding="12px"
              showBody={true}
              showHeader={true}
            >
              <Header>
                <Text
                  id="containerTitle2"
                  value="#### Container title"
                  verticalAlign="center"
                />
              </Header>
              <View id="d99dd" viewKey="View 1" />
            </Container>
            <Container
              id="container3"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              padding="12px"
              showBody={true}
              showHeader={true}
            >
              <Header>
                <Text
                  id="containerTitle3"
                  value="#### Container title"
                  verticalAlign="center"
                />
              </Header>
              <View id="d99dd" viewKey="View 1" />
            </Container>
          </View>
        </Container>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
    </Form>
  </Frame>
</App>
