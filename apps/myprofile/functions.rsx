<GlobalFunctions>
  <SqlQueryUnified
    id="getUserP"
    query={include("./lib/getUserP.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getLanguage"
    query={include("./lib/getLanguage.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getUserLanguage"
    query={include("./lib/getUserLanguage.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getMembership"
    notificationDuration={4.5}
    query={include("./lib/getMembership.sql", "string")}
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updUser"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"firstName","value":"{{ textInput_firstName.value }}"},{"key":"lastName","value":"{{ textInput_lastName.value }}"},{"key":"title","value":"{{ select_title.value }}"},{"key":"languageID","value":"{{ select_language.value }}"},{"key":"darkmode","value":""}]'
    }
    editorMode="gui"
    enableTransformer={true}
    filterBy={
      '[{"key":"userID","value":"{{ getUserP.data.userID[0] }}","operation":"="}]'
    }
    resourceName="21394180-c2cb-450d-abcd-1ea3a62d4220"
    runWhenModelUpdates={false}
    showFailureToaster={false}
    tableName="user"
  />
</GlobalFunctions>
