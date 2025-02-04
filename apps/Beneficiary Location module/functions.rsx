<GlobalFunctions>
  <JavascriptQuery
    id="selectHospitalHandler"
    notificationDuration={4.5}
    query={include("./lib/selectHospitalHandler.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Function
    id="selectedMnaHospital"
    funcBody={include("./lib/selectedMnaHospital.js", "string")}
  />
  <State
    id="isHospitalInfoTriggered"
    value="{{  !!JSON.parse(locationInput.value)?.mna_hospital || !!JSON.parse(locationInput.value).manual_hospital }}"
  />
  <Function
    id="locationOutputTransformer"
    funcBody={include("./lib/locationOutputTransformer.js", "string")}
  />
  <Function
    id="locationInputTransformer"
    funcBody={include("./lib/locationInputTransformer.js", "string")}
  />
  <JavascriptQuery
    id="checkIfLocationPassed"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/checkIfLocationPassed.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    runWhenPageLoadsDelay="3000"
    showSuccessToaster={false}
    updateSetValueDynamically={true}
  />
  <Function
    id="exactPatientLocationTransformer"
    funcBody={include("./lib/exactPatientLocationTransformer.js", "string")}
  />
</GlobalFunctions>
