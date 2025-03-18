<Modal
  id="saveReminderModalDeprecated"
  buttonText="Save Reminder"
  events={[]}
  hidden="true"
  modalHeight="500px"
  modalOverflowType="hidden"
>
  <Text
    id="text14"
    horizontalAlign="center"
    marginType="normal"
    value="#### Did you want to save progress?"
    verticalAlign="center"
  />
  <Button
    id="confirmChangesButton"
    disabled=""
    loading="{{ formatStateLicenseUpdatesAsArray.isFetching || UpdateInstallerApplication.isFetching || UpdateApplicationCompany.isFetching || formatCafBackgroundUpdatesAsArray.isFetching || formatInsuranceUpdatesAsArray.isFetching || formatPersonalCreditCheckUpdatesAsArray.isFetching || newApprovedContactList.isFetching || UpdateAccount.isFetching }}"
    marginType="normal"
    text="Yes"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="onSave"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Button
    id="discardChangesButton"
    loading="{{ resetStates.isFetching || handleNavigation.isFetching }}"
    marginType="normal"
    style={{ ordered: [] }}
    styleVariant="outline"
    text="No"
  >
    <Event
      event="click"
      method="run"
      params={{
        ordered: [
          {
            src: "resetStates.trigger({\n  onSuccess: function () {\n    handleNavigation.trigger();\n  }\n})",
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
