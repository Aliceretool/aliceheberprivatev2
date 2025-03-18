<ModalFrame
  id="saveReminderModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
>
  <Header>
    <Button
      id="modalCloseButton9"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="saveReminderModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text17"
      horizontalAlign="center"
      marginType="normal"
      value="#### Did you want to save progress?"
      verticalAlign="center"
    />
    <Button
      id="confirmChangesButton2"
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
      id="discardChangesButton2"
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
  </Body>
</ModalFrame>
