<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _order={0}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
  uuid="cf228398-7f43-4fc1-a36d-1cd375ebd387"
>
  <AzureBlobQuery
    id="query1"
    actionType="getSignedUrl"
    blobName="CleanShot 2026-07-16 at 10.06.10.jpg"
    resourceDisplayName="Azure Blob Storage test"
    resourceName="d10b8e98-a7a4-4120-aaaf-583687bf6afb"
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    signedOperationName="read"
  />
  <RESTQuery
    id="query2"
    query="equity/account/cash"
    resourceDisplayName="Trading 212 Account"
    resourceName="3342a122-d45b-4600-98dc-df0d834b25dc"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Image
      id="image1"
      heightType="fixed"
      horizontalAlign="center"
      src="{{query1.data.signedUrl }}"
    />
  </Frame>
</Screen>
