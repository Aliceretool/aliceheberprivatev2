<GlobalFunctions>
  <RESTQuery
    id="GetMNAHospitals"
    body={
      '{\n\t"bucketFilter": {\n\t\t"bucketTypeHCF": [\n\t\t\t{\n\t\t\t\t"term": "In Patient",\n\t\t\t\t"isSelected": true,\n\t\t\t\t"key": "INPATIENT"\n\t\t\t},\n\t\t\t{\n\t\t\t\t"term": "Out Patient",\n\t\t\t\t"isSelected": true,\n\t\t\t\t"key": "OUTPATIENT"\n\t\t\t},\n\t\t\t{\n\t\t\t\t"term": "Housecall",\n\t\t\t\t"isSelected": false,\n\t\t\t\t"key": "HOUSECALL"\n\t\t\t},\n\t\t\t{\n\t\t\t\t"term": "Level",\n\t\t\t\t"isSelected": true,\n\t\t\t\t"key": "LEVEL"\n\t\t\t}\n\t\t],\n\t\t"bucketAudit": {\n\t\t\t"isYesSelected": true,\n\t\t\t"isNoSelected": true\n\t\t},\n\t\t"bucketX3AtActivation": {\n\t\t\t"IsNoSelected": true,\n\t\t\t"IsYesSelected": true\n\t\t}\n\t},\n\t"typesStr": [\n\t\t{{  What_Select.value || \'HCF\' }}\n\t],\n\t"specialityWords": null,\n\t"specialityToken": null,\n\t"searchWords": "",\n\t"naturalFeature": "",\n\t"city": {{ selectedAddress?.value?.city || null }},\n\t"country": {{ selectedAddress?.value?.country || null }},\n\t"countryCode": {{ selectedAddress?.value?.code || null }},\n\t"countryTargetCode": "",\n\t"continent": "",\n\t"continentTarget": "",\n\t"subContinent": "",\n\t"subContinentTarget": "",\n\t"northWestPoint": null,\n\t"southEastPoint": null,\n\t"targetPoint": {\n\t\t"latitude": {{ selectedAddress?.value?.lat || null }},\n\t\t"longitude": {{ selectedAddress?.value?.lng || null }}\n\t},\n\t"centerPoint": null,\n\t"host": "mna.europ-assistance.com"\n}'
    }
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="api/resource/get-resources-by-filter"
    resourceName="7502af1d-20f5-43e1-bda0-e97e4b1585c1"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="POST"
  />
  <Function id="hospitals" funcBody={include("./lib/hospitals.js", "string")} />
  <Function
    id="selectedAddress"
    funcBody={include("./lib/selectedAddress.js", "string")}
  />
  <State id="selectedHospital" />
  <GlobalWidgetQuery
    id="SelectHandler"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
</GlobalFunctions>
