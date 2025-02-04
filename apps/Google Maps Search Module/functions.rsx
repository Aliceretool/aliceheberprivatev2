<GlobalFunctions>
  <OpenAPIQuery
    id="SearchByInputText"
    isMultiplayerEdited={false}
    method="get"
    operationId="autocomplete"
    parameterDynamicStates={
      '{"input":false,"sessiontoken":false,"components":false,"strictbounds":false,"offset":false,"origin":false,"location":false,"locationbias":false,"locationrestriction":false,"radius":false,"types":false,"language":false,"region":false}'
    }
    parameterMetadata=""
    parameters={
      '{"input":"{{ AddressSelect.inputValue || defaultAddress.value }}"}'
    }
    path="/maps/api/place/autocomplete/json"
    requestBodyMetadata=""
    resourceName="b1e33f4b-2789-46cd-8028-c2a6ed11763d"
    runWhenModelUpdates={true}
    runWhenPageLoads={true}
    showFailureToaster={false}
    showSuccessToaster={false}
  />
  <OpenAPIQuery
    id="GetPlaceDetailsById"
    enableTransformer={true}
    isMultiplayerEdited={false}
    method="get"
    notificationDuration={4.5}
    operationId="placeDetails"
    parameterDynamicStates={
      '{"place_id":false,"fields":false,"sessiontoken":false,"language":false,"region":false,"reviews_sort":false,"reviews_no_translations":false}'
    }
    parameterMetadata=""
    parameters={
      '{"place_id":"{{ AddressSelect?.selectedItem?.place_id }}","language":"en","fields":"address_component,formatted_address,geometry,name,utc_offset"}'
    }
    path="/maps/api/place/details/json"
    queryDisabled="{{ !(!!AddressSelect?.selectedItem?.place_id) }}"
    requestBodyMetadata=""
    resourceName="b1e33f4b-2789-46cd-8028-c2a6ed11763d"
    runWhenModelUpdates={true}
    showFailureToaster={false}
    showSuccessToaster={false}
    transformer="return data;"
  />
  <Function id="addresses" funcBody={include("./lib/addresses.js", "string")} />
  <Function
    id="responseAddress"
    funcBody={include("./lib/responseAddress.js", "string")}
  />
</GlobalFunctions>
