<Modal
  id="contactCreationModalDeprecated"
  buttonText="creating contacts modal"
  hidden="true"
>
  <Text
    id="createContactsInProgress"
    hidden="{{newApprovedContactList.isFetching === false && CreateContactsForApprovedApp.isFetching === false}}"
    marginType="normal"
    value="#### Creating Contacts in Salesforce..."
    verticalAlign="center"
  />
  <Text
    id="contactCreationSuccessText"
    hidden="{{newApprovedContactList.isFetching === true || CreateContactsForApprovedApp.isFetching === true}}"
    horizontalAlign="center"
    marginType="normal"
    value="#### 🎉 Success!"
    verticalAlign="center"
  />
  <ProgressBar
    id="createContactsLoadingBar"
    hidden="{{newApprovedContactList.isFetching === false && CreateContactsForApprovedApp.isFetching === false}}"
    indeterminate={true}
    label=""
    marginType="normal"
    value={60}
  />
  <Text
    id="aMomentText"
    hidden="{{newApprovedContactList.isFetching === false && CreateContactsForApprovedApp.isFetching === false}}"
    horizontalAlign="center"
    marginType="normal"
    value="This may take a moment"
    verticalAlign="center"
  />
  <Text
    id="createContactQuerySuccessMsg"
    hidden="{{newApprovedContactList.isFetching === true || CreateContactsForApprovedApp.isFetching === true}}"
    horizontalAlign="center"
    marginType="normal"
    value="**{{CreateContactsForApprovedApp.data.msg}}**"
    verticalAlign="center"
  />
</Modal>
