<Screen
  id="AllCases"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <RESTQuery
    id="FetchCases"
    isHidden={false}
    notificationDuration={4.5}
    query="cases"
    resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
    showSuccessToaster={false}
  />
  <Function
    id="casesList"
    funcBody={include("../lib/casesList.js", "string")}
  />
  <Frame
    id="$main6"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="16px {{ widthLimiter.value }}px"
    sticky={null}
    style={{ ordered: [{ canvas: "tokens/f5b822b2" }] }}
    type="main"
  >
    <Breadcrumbs
      id="AllCases_Breadcrumbs"
      itemMode="static"
      margin="0 0 4px 0"
      style={{ ordered: [{ currentPageText: "tokens/37f43149" }] }}
      value="{{ retoolContext.currentPage }}"
    >
      <Option id="794c4" disabled="true" itemType="custom" label="All cases" />
      <Option id="7492a" itemType="custom" label="Cases list" />
    </Breadcrumbs>
    <Container
      id="container8"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle6"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="14bd3" viewKey="View 1">
        <Form
          id="CaseFilter_Form"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="24px"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showBorder={false}
        >
          <Header>
            <Text
              id="formTitle8"
              value="#### Form title"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <Container
              id="FilterCasesHeader"
              _align="center"
              _gap="0px"
              _justify="space-between"
              _type="stack"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
            >
              <View id="89817" viewKey="View 1">
                <Text
                  id="FilterAllCases_Title"
                  style={{
                    ordered: [
                      { fontSize: "h5Font" },
                      { fontWeight: "h5Font" },
                      { fontFamily: "h5Font" },
                      { color: "tokens/b03b43ea" },
                    ],
                  }}
                  value="Filter all cases"
                  verticalAlign="center"
                />
                <Link
                  id="link1"
                  iconBefore="bold/interface-arrows-round-left"
                  showUnderline="never"
                  style={{
                    ordered: [
                      { fontSize: "tokens/63ad6cd6" },
                      { fontWeight: "tokens/63ad6cd6" },
                      { fontFamily: "tokens/63ad6cd6" },
                    ],
                  }}
                  text="Clear filter"
                >
                  <Event
                    event="click"
                    method="clear"
                    params={{ ordered: [] }}
                    pluginId="CaseFilter_Form"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Link>
              </View>
            </Container>
            <Select
              id="CasePriority_Select"
              emptyMessage="No options"
              formDataKey="priority"
              itemMode="static"
              label="Priority"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
            >
              <Option id="739d2" value="Option 1" />
              <Option id="c5436" value="Option 2" />
              <Option id="1d2c4" value="Option 3" />
            </Select>
            <Select
              id="CaseType_Select"
              emptyMessage="No options"
              formDataKey="priority"
              itemMode="static"
              label="Case type"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
            >
              <Option id="739d2" value="Option 1" />
              <Option id="c5436" value="Option 2" />
              <Option id="1d2c4" value="Option 3" />
            </Select>
            <Select
              id="CasePhase_Select"
              emptyMessage="No options"
              formDataKey="priority"
              itemMode="static"
              label="Case phase"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
            >
              <Option id="739d2" value="Option 1" />
              <Option id="c5436" value="Option 2" />
              <Option id="1d2c4" value="Option 3" />
            </Select>
            <Select
              id="PatientLocation_Select"
              emptyMessage="No options"
              formDataKey="priority"
              itemMode="static"
              label="Patient location"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
            >
              <Option id="739d2" value="Option 1" />
              <Option id="c5436" value="Option 2" />
              <Option id="1d2c4" value="Option 3" />
            </Select>
            <Select
              id="CaseBusinessPartner_Select"
              emptyMessage="No options"
              formDataKey="priority"
              itemMode="static"
              label="Business partner"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
            >
              <Option id="739d2" value="Option 1" />
              <Option id="c5436" value="Option 2" />
              <Option id="1d2c4" value="Option 3" />
            </Select>
            <Select
              id="CaseFlag_Select"
              emptyMessage="No options"
              formDataKey="priority"
              itemMode="static"
              label="Case flag"
              labelPosition="top"
              overlayMaxHeight={375}
              placeholder="Select an option"
              showSelectionIndicator={true}
            >
              <Option id="739d2" value="Option 1" />
              <Option id="c5436" value="Option 2" />
              <Option id="1d2c4" value="Option 3" />
            </Select>
          </Body>
        </Form>
      </View>
    </Container>
    <Spacer id="spacer5" />
    <Module
      id="AllCasesList"
      cases="{{ casesList.value }}"
      margin="0"
      name="Cases list module"
      pageUuid="c6533101-839d-41f7-b053-0bdedec425cc"
    />
  </Frame>
</Screen>
