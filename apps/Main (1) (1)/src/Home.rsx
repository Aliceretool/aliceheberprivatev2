<Screen
  id="Home"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <Folder id="Search">
    <Function
      id="searchedCases"
      funcBody={include("../lib/searchedCases.js", "string")}
    />
    <RESTQuery
      id="SearchCases"
      isMultiplayerEdited={false}
      query="cases/filter/query?query={{ Search_Input.value }}"
      resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="searchCases"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("../lib/searchCases.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Function
    id="statistics"
    funcBody={include("../lib/statistics.js", "string")}
  />
  <Include src="./CreateCase_ModalFrame_DEPRECATED.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="16px {{ widthLimiter.value }}px"
    style={{ ordered: [{ canvas: "tokens/f5b822b2" }] }}
    type="main"
  >
    <Container
      id="HomeContainer"
      _direction="vertical"
      _gap="32px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="0"
      margin="0"
      padding="32px"
      showBody={true}
      style={{
        ordered: [
          { background: "canvas" },
          { headerBackground: "surfacePrimary" },
        ],
      }}
    >
      <View id="07184" viewKey="View 1">
        <Container
          id="StatisticsStack"
          _gap="16px"
          _justify="center"
          _type="stack"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
        >
          <Header>
            <Text
              id="containerTitle22"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="e6330" viewKey="View 1">
            <Container
              id="AllCases_Statistic"
              _align="center"
              _gap="20px"
              _justify="space-between"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="8px 32px 8px 20px"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "tokens/f5b822b2" }] }}
              styleContext={{
                ordered: [{ surfacePrimary: "tokens/f5b822b2" }],
              }}
            >
              <Header>
                <Text
                  id="containerTitle23"
                  value="#### Container title"
                  verticalAlign="center"
                />
              </Header>
              <View id="e6330" viewKey="View 1">
                <Button
                  id="AllCases_Redirect"
                  ariaLabel="Close"
                  horizontalAlign="center"
                  iconBefore="line/interface-arrows-right"
                  margin="0"
                  style={{
                    ordered: [
                      { fontSize: "defaultFont" },
                      { fontWeight: "defaultFont" },
                      { fontFamily: "defaultFont" },
                      { borderRadius: "tokens/6de19d3c" },
                      { icon: "tokens/6d3a94b8" },
                      { border: "tokens/6d3a94b8" },
                    ],
                  }}
                  styleVariant="outline"
                >
                  <Event
                    event="click"
                    method="openPage"
                    params={{ ordered: [{ pageName: "AllCases" }] }}
                    pluginId=""
                    type="util"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Button>
                <Container
                  id="AllCases_Info"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="4px"
                  showBody={true}
                  showBorder={false}
                >
                  <Header>
                    <Text
                      id="containerTitle24"
                      value="#### Container title"
                      verticalAlign="center"
                    />
                  </Header>
                  <View id="f67a1" viewKey="View 1">
                    <Text
                      id="AllCases_Title"
                      margin="0"
                      style={{
                        ordered: [
                          { fontSize: "labelFont" },
                          { fontWeight: "labelFont" },
                          { fontFamily: "labelFont" },
                        ],
                      }}
                      value="All cases"
                      verticalAlign="center"
                    />
                    <Text
                      id="AllCases_Value"
                      heightType="fixed"
                      margin="0"
                      style={{
                        ordered: [
                          { fontSize: "h3Font" },
                          { fontWeight: "h3Font" },
                          { fontFamily: "h3Font" },
                          { color: "tokens/b03b43ea" },
                        ],
                      }}
                      value="65"
                      verticalAlign="bottom"
                    />
                    <Text
                      id="AllCases_Caption"
                      margin="4px 0"
                      style={{
                        ordered: [
                          { fontSize: "tokens/9d79a723" },
                          { fontWeight: "tokens/9d79a723" },
                          { fontFamily: "tokens/9d79a723" },
                          { color: "rgba(0, 0, 0, 0.45)" },
                        ],
                      }}
                      value="+3 this week"
                      verticalAlign="center"
                    />
                  </View>
                </Container>
              </View>
            </Container>
            <Container
              id="MyCases_Statistic"
              _align="center"
              _gap="20px"
              _justify="space-between"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="8px 32px 8px 20px"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "tokens/f5b822b2" }] }}
              styleContext={{
                ordered: [{ surfacePrimary: "tokens/f5b822b2" }],
              }}
            >
              <Header>
                <Text
                  id="containerTitle25"
                  value="#### Container title"
                  verticalAlign="center"
                />
              </Header>
              <View id="e6330" viewKey="View 1">
                <Button
                  id="MyCases_Redirect"
                  ariaLabel="Close"
                  horizontalAlign="center"
                  iconBefore="line/interface-arrows-right"
                  margin="0"
                  style={{
                    ordered: [
                      { fontSize: "defaultFont" },
                      { fontWeight: "defaultFont" },
                      { fontFamily: "defaultFont" },
                      { borderRadius: "tokens/6de19d3c" },
                      { icon: "tokens/6d3a94b8" },
                      { border: "tokens/6d3a94b8" },
                    ],
                  }}
                  styleVariant="outline"
                />
                <Container
                  id="MyCases_Info"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="4px"
                  showBody={true}
                  showBorder={false}
                >
                  <Header>
                    <Text
                      id="containerTitle26"
                      value="#### Container title"
                      verticalAlign="center"
                    />
                  </Header>
                  <View id="f67a1" viewKey="View 1">
                    <Text
                      id="MyCases_Title"
                      margin="0"
                      style={{
                        ordered: [
                          { fontSize: "labelFont" },
                          { fontWeight: "labelFont" },
                          { fontFamily: "labelFont" },
                        ],
                      }}
                      value="My cases"
                      verticalAlign="center"
                    />
                    <Text
                      id="MyCases_Value"
                      heightType="fixed"
                      margin="0"
                      style={{
                        ordered: [
                          { fontSize: "h3Font" },
                          { fontWeight: "h3Font" },
                          { fontFamily: "h3Font" },
                          { color: "tokens/b03b43ea" },
                        ],
                      }}
                      value="32"
                      verticalAlign="bottom"
                    />
                    <Text
                      id="MyCases_Caption"
                      margin="4px 0px"
                      style={{
                        ordered: [
                          { fontSize: "tokens/9d79a723" },
                          { fontWeight: "tokens/9d79a723" },
                          { fontFamily: "tokens/9d79a723" },
                          { color: "rgba(0, 0, 0, 0.45)" },
                        ],
                      }}
                      value="+3 this week"
                      verticalAlign="center"
                    />
                  </View>
                </Container>
              </View>
            </Container>
            <Container
              id="MyTasks_Statistic"
              _align="center"
              _gap="20px"
              _justify="space-between"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="8px 32px 8px 20px"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "tokens/f5b822b2" }] }}
              styleContext={{
                ordered: [{ surfacePrimary: "tokens/f5b822b2" }],
              }}
            >
              <Header>
                <Text
                  id="containerTitle27"
                  value="#### Container title"
                  verticalAlign="center"
                />
              </Header>
              <View id="e6330" viewKey="View 1">
                <Button
                  id="MyTasks_Redirect"
                  ariaLabel="Close"
                  horizontalAlign="center"
                  iconBefore="line/interface-arrows-right"
                  margin="0"
                  style={{
                    ordered: [
                      { fontSize: "defaultFont" },
                      { fontWeight: "defaultFont" },
                      { fontFamily: "defaultFont" },
                      { borderRadius: "tokens/6de19d3c" },
                      { icon: "tokens/6d3a94b8" },
                      { border: "tokens/6d3a94b8" },
                    ],
                  }}
                  styleVariant="outline"
                />
                <Container
                  id="MyTasks_Info"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  margin="0"
                  padding="4px"
                  showBody={true}
                  showBorder={false}
                >
                  <Header>
                    <Text
                      id="containerTitle28"
                      value="#### Container title"
                      verticalAlign="center"
                    />
                  </Header>
                  <View id="f67a1" viewKey="View 1">
                    <Text
                      id="MyTasks_Title"
                      margin="0"
                      style={{
                        ordered: [
                          { fontSize: "labelFont" },
                          { fontWeight: "labelFont" },
                          { fontFamily: "labelFont" },
                        ],
                      }}
                      value="My tasks"
                      verticalAlign="center"
                    />
                    <Text
                      id="MyTasks_Value"
                      heightType="fixed"
                      margin="0"
                      style={{
                        ordered: [
                          { fontSize: "h3Font" },
                          { fontWeight: "h3Font" },
                          { fontFamily: "h3Font" },
                          { color: "tokens/b03b43ea" },
                        ],
                      }}
                      value="43"
                      verticalAlign="bottom"
                    />
                    <Text
                      id="MyTasks_Caption"
                      margin="4px 0px"
                      style={{
                        ordered: [
                          { fontSize: "tokens/9d79a723" },
                          { fontWeight: "tokens/9d79a723" },
                          { fontFamily: "tokens/9d79a723" },
                          { color: "rgba(0, 0, 0, 0.45)" },
                        ],
                      }}
                      value="+3 this week"
                      verticalAlign="center"
                    />
                  </View>
                </Container>
              </View>
            </Container>
          </View>
        </Container>
        <Form
          id="Search_Form"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <Header>
            <Text
              id="formTitle9"
              value="#### Form title"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Text
              id="Search_Header"
              horizontalAlign="center"
              margin="0"
              style={{
                ordered: [
                  { fontSize: "h4Font" },
                  { fontWeight: "h4Font" },
                  { fontFamily: "h4Font" },
                ],
              }}
              value="Search contract, case, interaction"
              verticalAlign="center"
            />
            <Container
              id="container12"
              _align="end"
              _gap="0px"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "canvas" }] }}
            >
              <View id="6be42" viewKey="View 1">
                <TextInput
                  id="Search_Input"
                  label=""
                  labelPosition="top"
                  placeholder="Contract / Case number , Patient name, phone number"
                >
                  <Event
                    event="submit"
                    method="trigger"
                    params={{ ordered: [] }}
                    pluginId="searchCases"
                    type="datasource"
                    waitMs="0"
                    waitType="debounce"
                  />
                </TextInput>
                <Button
                  id="Search_Button"
                  heightType="auto"
                  submit={true}
                  submitTargetId="Search_Form"
                  text="Search"
                />
              </View>
            </Container>
            <Container
              id="container21"
              _align="center"
              _gap="0px"
              _justify="center"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
            >
              <Header>
                <Text
                  id="containerTitle21"
                  value="#### Container title"
                  verticalAlign="center"
                />
              </Header>
              <View id="f67a1" viewKey="View 1">
                <Text
                  id="AdvancedSearch_Label"
                  heightType="fixed"
                  margin="0"
                  style={{
                    ordered: [
                      { fontSize: "tokens/63ad6cd6" },
                      { fontWeight: "tokens/63ad6cd6" },
                      { fontFamily: "tokens/63ad6cd6" },
                    ],
                  }}
                  value="Need to search more results?"
                  verticalAlign="center"
                />
                <Button
                  id="AdvancedSearch_Button"
                  heightType="fill"
                  style={{
                    ordered: [
                      { border: "tokens/6d3a94b8" },
                      { label: "tokens/6d3a94b8" },
                      { borderRadius: "tokens/6de19d3c" },
                    ],
                  }}
                  styleVariant="outline"
                  text="Advanced search"
                />
              </View>
            </Container>
          </Body>
          <Footer>
            <Button id="formButton1" submitTargetId="Search_Form" text="Submit">
              <Event
                event="click"
                method="submit"
                params={{ ordered: [] }}
                pluginId="Search_Form"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="searchCases"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
        <Container
          id="Search_Results_Container"
          _align="center"
          _gap="0px"
          _justify="center"
          _type="stack"
          currentViewKey="loading"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden={
            '{{ SearchResults_Tabs.value === "loading" && !SearchCases.isFetching }}'
          }
          margin="0"
          overflowType="hidden"
          padding="0"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <Header>
            <Tabs
              id="SearchResults_Tabs"
              alignment="justify"
              itemMode="static"
              navigateContainer={true}
              targetContainerId="Search_Results_Container"
              value="{{ self.values[0] }}"
            >
              <Option id="02541" value="Tab 1" />
              <Option id="5b5b1" value="Tab 2" />
              <Option id="f8f9e" value="Tab 3" />
            </Tabs>
          </Header>
          <View id="24452" viewKey="results">
            <Module
              id="SearchedCasesList"
              cases="{{ searchedCases.value }}"
              name="Cases list module"
              pageUuid="c6533101-839d-41f7-b053-0bdedec425cc"
            />
          </View>
          <View id="39b23" viewKey="empty">
            <Container
              id="NoResults_Container"
              _align="center"
              _direction="vertical"
              _gap="10px"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              hidden=""
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
              style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
            >
              <View id="1ea65" viewKey="View 1">
                <Text
                  id="NoResults_Title"
                  style={{ ordered: [{ fontSize: "h5Font" }] }}
                  value="**No results**"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </View>
          <View
            id="c17dd"
            disabled={false}
            hidden={false}
            iconPosition="left"
            viewKey="loading"
          >
            <ProgressCircle
              id="InitialFetch_Loader"
              hidden=""
              hideOutput={true}
              horizontalAlign="center"
              indeterminate={true}
              style={{ ordered: [{ fill: "tokens/6d3a94b8" }] }}
              value={60}
            />
          </View>
        </Container>
      </View>
    </Container>
  </Frame>
</Screen>
