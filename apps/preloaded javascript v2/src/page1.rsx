<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="17d8d2b0-c3b9-4b44-b690-d30b6d25271f"
>
  <JavascriptQuery
    id="query1"
    notificationDuration={4.5}
    query={include("../lib/query1.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="query2"
    query={include("../lib/query2.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3c301c6a-d252-439c-b49a-40ff9c939fcf"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="query1"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <RESTQuery
    id="query3"
    notificationDuration={4.5}
    resourceDisplayName="Spotify working"
    resourceName="7eb3d4de-b99b-47bf-a231-24189eb310a4"
    showSuccessToaster={false}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Text
      id="text1"
      value="👋 **Hello {{ current_user.firstName || 'friend' }}!**"
      verticalAlign="center"
    />
    <JSONEditor id="jsonEditor1" value="{{ query1.data }}" />
  </Frame>
</Screen>
