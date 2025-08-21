<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <RESTQuery
    id="get200"
    body={'{"test": "event"}'}
    bodyType="raw"
    headers="[]"
    resourceDisplayName="custom auth 200"
    resourceName="d029e243-fe00-42ab-b3bf-980587851bb8"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    runWhenPageLoadsDelay="5000"
    type="POST"
  />
  <RESTQuery
    id="get400"
    bodyType="json"
    headers={
      '[{"key":"Content-Type","value":"application/json"},{"key":"Authorization","value":"Bearer custom_token"}]'
    }
    isMultiplayerEdited={false}
    resourceDisplayName="custom auth return 400 test"
    resourceName="40c30b29-01a1-48e4-bc1b-97ecdcbdb0f5"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    runWhenPageLoadsDelay="3000"
    type="POST"
  />
  <RESTQuery
    id="query1"
    query="https://eojfv4p3kzkp0zq.m.pipedream.net"
    resourceDisplayName="blank rest api - naming conflict at Aug 14, 2025 1:22 PM"
    resourceName="e4fe7db9-f97e-4031-aa5b-929fec8863e6"
    runWhenModelUpdates={false}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Button id="button1" text="query 200">
      <Event
        event="click"
        method="trigger"
        params={{}}
        pluginId="get200"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <AuthLogin
      id="authLogin1"
      authResourceDisplayName="custom auth 200"
      authResourceName="d029e243-fe00-42ab-b3bf-980587851bb8"
      authType="custom"
    />
    <JSONEditor id="jsonEditor1" value="{{ get200.data }}" />
  </Frame>
</Screen>
