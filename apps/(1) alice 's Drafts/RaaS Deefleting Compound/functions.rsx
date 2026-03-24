<GlobalFunctions>
  <RESTQuery
    id="list_compounds"
    enableTransformer={true}
    query="locations"
    resourceName="c121acac-f129-4218-b443-57befda429e2"
    resourceTypeOverride=""
    transformer="return data.data"
  />
  <RESTQuery
    id="create_compound"
    body={
      '[{"key":"id","value":"{{ `ext_${compound_id_txt.value}` }}"},{"key":"name","value":"{{ compound_name_txt.value }}"},{"key":"opening_time","value":"{{ opening_time.value }}"},{"key":"closing_time","value":"{{ closing_time.value }}"},{"key":"postcode","value":"{{ postcode_txt.value }}"},{"key":"address","value":"{{ street_line_txt.value }}"},{"key":"city","value":"{{ city_txt.value }}"},{"key":"state","value":"{{ state_selector.value }}"},{"key":"type","value":"compound"},{"key":"requires_sa_number","value":"false"}]'
    }
    bodyType="json"
    cookies="[]"
    isMultiplayerEdited={false}
    query="locations"
    resourceName="c121acac-f129-4218-b443-57befda429e2"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    type="POST"
  >
    <Event
      id="f4cec9ea"
      event="success"
      method="showNotification"
      params={{
        map: {
          options: {
            notificationType: "success",
            title: "Compound created successfully!",
          },
        },
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="b91dddad"
      event="success"
      method="trigger"
      params={{
        map: {
          options: { onSuccess: null, onFailure: null, additionalScope: null },
        },
      }}
      pluginId="list_compounds"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="7093f8e9"
      event="success"
      method="setCurrentView"
      params={{ map: { viewKey: "list" } }}
      pluginId="container1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="6751a0d3"
      event="success"
      method="run"
      params={{
        map: {
          src: "compound_id_txt.resetValue();\ncompound_name_txt.resetValue();\nopening_time.resetValue();\nclosing_time.resetValue();\npostcode_txt.resetValue();\nstreet_line_txt.resetValue();\ncity_txt.resetValue();\nstate_selector.resetValue();",
        },
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
</GlobalFunctions>
