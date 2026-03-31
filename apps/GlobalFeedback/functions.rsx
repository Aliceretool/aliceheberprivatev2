<GlobalFunctions>
  <SqlQueryUnified
    id="feedbackFormDataUpdate"
    actionType="INSERT"
    changeset={
      '[{"key":"browser_info","value":"{{ navigator.userAgent }}"},{"key":"feedback_type","value":"{{ feedbackType.value }}"},{"key":"message","value":"{{ messageInput.value }}"},{"key":"page_url","value":"{{ urlparams.href }}"},{"key":"screenshot_data","value":"{{ fileInput1.value[0].base64Data }}"},{"key":"time","value":"{{ moment().format() }}"},{"key":"urgency","value":"{{ urgency.value }}"},{"key":"user","value":"{{ current_user.fullName }}"},{"key":"user_email","value":"{{ current_user.email }}"}]'
    }
    changesetObject="{{ form1.data }}"
    editorMode="gui"
    enableTransformer={true}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="8e7ce9ed-91a4-46f1-86c3-6c413257e353"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="feedback_database"
  />
  <RESTQuery
    id="form1SubmitHandler"
    body={
      '[{"key":"user","value":"{{ current_user.fullName }}"},{"key":"message","value":"{{ messageInput.value }}"},{"key":"urgency","value":"{{ urgency.value }}"},{"key":"feedback_type","value":"{{ feedbackType.value }}"},{"key":"time","value":"{{ moment().format(\'HH:mm, DD-MM-YYYY\') }}"},{"key":"page","value":"{{ urlparams.href }}"}]'
    }
    bodyType="json"
    notificationDuration={4.5}
    openAPIRequestBody=""
    query="https://hooks.zapier.com/hooks/catch/26140072/uem9614/"
    resourceName="REST-WithoutResource"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="POST"
  />
</GlobalFunctions>
