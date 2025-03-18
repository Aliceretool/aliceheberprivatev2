<Frame
  id="$header"
  isHiddenOnDesktop={false}
  isHiddenOnMobile={false}
  padding="8px 12px"
  paddingType="normal"
  sticky={true}
  type="header"
>
  <Button
    id="shareAppLinkButton"
    disabled="{{ isLendingPartnerVettingUser.value }}"
    marginType="normal"
    text="Share app link"
  >
    <Event
      event="click"
      method="copyToClipboard"
      params={{
        ordered: [
          {
            value:
              "{{'https://sungage.retool.com/apps/' + retoolContext.appName + '?id=' + urlparams.id}}",
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Link
    id="accountPageLink"
    horizontalAlign="right"
    style={{
      ordered: [
        { fontSize: "h3Font" },
        { fontWeight: "700" },
        { lineHeight: "1.17em" },
      ],
    }}
    text="{{GetAccountHome.data.account.name}}"
    textSize="h3"
  >
    <Event
      event="click"
      method="openUrl"
      params={{
        ordered: [
          {
            url: "{{'https://sungage.retool.com/apps/6e5f0322-8a10-11ee-b561-2ff8dfe33d66/LiveApplications/Account?id=' + GetChannelManager.data[0].Id }}",
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
  </Link>
  <Text
    id="accountNameText"
    marginType="normal"
    value="## – Installer Application Review"
    verticalAlign="center"
  />
  <Button id="addNotesButton" hidden="" marginType="normal" text="Add Notes">
    <Event
      event="click"
      method="show"
      params={{ ordered: [] }}
      pluginId="messagingAppDrawer"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
  <Include src="./src/saveReminderModalDeprecated.rsx" />
  <Button
    id="saveButton"
    disabled="{{
    isLendingPartnerVettingUser.value ||
    !Object.keys(applicationCompanyUpdates.value || {}).length &&
    !Object.keys(stateLicensesUpdates.value || {}).length &&
    !Object.keys(cafBackgroundUpdates.value || {}).length &&
    !Object.keys(personalCreditCheckUpdates.value || {}).length &&
    !Object.keys(insuranceUpdates.value || {}).length &&
    !Object.keys(installerApplicationUpdates.value || {}).length &&
    !Object.keys(financialsUpdates.value || {}).length &&
    !Object.keys(recheckReviewUpdates.value || {}).length
}}"
    hidden=""
    iconBefore="bold/interface-content-save"
    loading="{{ formatStateLicenseUpdatesAsArray.isFetching || UpdateInstallerApplication.isFetching || UpdateApplicationCompany.isFetching || formatCafBackgroundUpdatesAsArray.isFetching || formatInsuranceUpdatesAsArray.isFetching || formatPersonalCreditCheckUpdatesAsArray.isFetching || newApprovedContactList.isFetching || UpdateAccount.isFetching || onSave.isFetching || UpdateFinancialStatement.isFetching || UpdateRecheckReview.isFetching || CreateRecheckReview.isFetching }}"
    marginType="normal"
    text="Save Progress"
    tooltipText={
      '{{ self.disabled === true ? "Save Disabled: No changes detected" : null}}'
    }
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
</Frame>
