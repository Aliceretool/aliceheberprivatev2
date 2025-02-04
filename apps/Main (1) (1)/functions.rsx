<GlobalFunctions>
  <Folder id="topbar">
    <JavascriptQuery
      id="mockIncomingCall"
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/mockIncomingCall.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="navigationItems"
      funcBody={include("./lib/navigationItems.js", "string")}
    />
    <Function
      id="currentTab"
      funcBody={include("./lib/currentTab.js", "string")}
    />
    <JavascriptQuery
      id="closeForceEligibilityModal"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/closeForceEligibilityModal.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
  </Folder>
  <Folder id="resources">
    <RESTQuery
      id="GetRetoolUsers"
      cookies="[]"
      headers="[]"
      isHidden={false}
      notificationDuration={4.5}
      query="users"
      resourceDisplayName="Retool API"
      resourceName="5eadd2dd-6ae3-47d3-9377-d302ed1e492d"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GetRequesterRoles"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      query="contact/roles"
      resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
    />
    <RESTQuery
      id="GetContactMotives"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="contact/motives"
      resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
      resourceTypeOverride=""
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GetCaseNatures"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      query="case/natures"
      resourceName="e7773711-8f5a-4073-8d90-369cf35b3380"
    />
    <RESTQuery
      id="GetPatientTypes"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      notificationDuration={4.5}
      resourceName="4ea5809e-4f98-433a-8664-c1390e4ed8ae"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GetCrisisTypes"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      notificationDuration={4.5}
      resourceName="7307f95f-87ef-4818-8e97-d065ef16d00b"
      resourceTypeOverride=""
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GetEventTypes"
      cookies="[]"
      headers="[]"
      isHidden={false}
      resourceName="1a7f0e73-8449-4c83-a273-df0d207154dd"
    />
    <RESTQuery
      id="GetEntities"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      notificationDuration={4.5}
      resourceName="264b83f5-7fe0-464a-a439-d3e4854110af"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GetRegions"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      resourceName="1be36f2d-9213-4aa0-9f0d-02b3b50afc37"
    />
    <RESTQuery
      id="GetNationalities"
      cookies="[]"
      headers="[]"
      isHidden={false}
      resourceName="fcb12daa-0172-4738-b55a-9d00eddfa341"
    />
    <RESTQuery
      id="GetCountries"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      query="countries"
      resourceName="0530b699-f0b3-4275-99cb-196db0543515"
    />
    <RESTQuery
      id="GetDocumentTypes"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      query="document_type"
      resourceName="8de31787-8495-43ca-b1b2-c7d21c646ad4"
    />
    <RESTQuery
      id="GetContactRoles"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      notificationDuration={4.5}
      query="/contact/roles"
      resourceName="06ae219e-9f43-4bf4-8e5f-dd6875f5a53c"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GetBenefits"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      query="benefit"
      resourceName="d4af2510-d571-4163-886f-70356c54b893"
    />
    <RESTQuery
      id="GetTaskPriorities"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      query="/tasks/priorities"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
    />
    <RESTQuery
      id="GetTaskCategories"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      query="/tasks/categories"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
    />
    <RESTQuery
      id="GetTaskStatuses"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/tasks/statuses"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
      showSuccessToaster={false}
    />
    <RESTQuery
      id="GetTaskDeletingReasons"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      query="/tasks/deleting-reasons"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
    />
    <RESTQuery
      id="GetDeliverableCategories"
      cacheKeyTtl="{{ CACHE_DURATION.value }}"
      enableCaching={true}
      isHidden={false}
      query="deliverable-categories"
      resourceName="094e89ea-45fd-422c-9ae6-83f995912864"
      resourceTypeOverride=""
    />
    <State id="CACHE_DURATION" value="{{ 60 * 60 * 3 }}" />
    <RESTQuery
      id="GetTaskTypes"
      query="/tasks/types"
      resourceName="7ba2df13-0ae0-4e24-a353-8a94f564bb87"
    />
    <RESTQuery
      id="GetEligibility"
      resourceName="7f82e685-a80d-4c9e-8b92-f7fccd9fe394"
    />
  </Folder>
  <Folder id="genesys">
    <State
      id="GENESYS_CLIENT_ID"
      value="eb528734-bdba-40cd-8fc8-a630ca632c97"
    />
    <JavascriptQuery
      id="handleTokenExpired"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/handleTokenExpired.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="handleCallEvent"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/handleCallEvent.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <State id="incomingPhoneNumber" value="null" />
    <RESTQuery
      id="CreateInteractionCall"
      _additionalScope={["payload"]}
      body="{{ payload }}"
      bodyType="raw"
      cookies="[]"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isHidden={false}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="interaction/call"
      resourceName="0fd77fe3-c3ce-49fe-98da-f6debe7f360f"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    />
  </Folder>
  <Function
    id="widthLimiter"
    funcBody={include("./lib/widthLimiter.js", "string")}
  />
  <JavascriptQuery
    id="createCase"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/createCase.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
