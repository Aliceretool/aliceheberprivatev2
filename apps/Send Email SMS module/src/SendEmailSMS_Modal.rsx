<ModalFrame
  id="SendEmailSMS_Modal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="{{ !open.value }}"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="0"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="SendInteractionTitle"
      hidden=""
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "h4Font" },
          { fontFamily: "h4Font" },
        ],
      }}
      value={'Send new {{ type.value === "email" ? "email" : "SMS" }}'}
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
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
        pluginId="SendEmailSMS_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="stack1"
      _align="center"
      _flexWrap={true}
      _gap="0px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="4px 12px 4px 12px"
      showBody={true}
      showBorder={false}
    >
      <View id="5fe7f" viewKey="View 1">
        <Link
          id="AddTemplate_Link"
          hidden="{{ selectedTemplate.value }}"
          text={
            'Add {{ type.value === "email" ? "email" : "SMS" }} template / custom'
          }
        >
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: "true" }] }}
            pluginId="isOpen"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
        <Module
          id="searchTemplateModule1"
          heightType="fixed"
          name="Search template module"
          onConfirm="onTemplateAddConfirm"
          onModalHide=""
          open="{{ isOpen.value }}"
          pageUuid="07f65782-00f6-4f1f-b256-306812042a44"
          type="{{ type.value }}"
        />
        <IconText
          id="SelectedTemplate_IconText"
          hidden="{{ !selectedTemplate.value }}"
          icon="bold/interface-delete-bin-5-alternate"
          style={{
            ordered: [
              { fontSize: "labelEmphasizedFont" },
              { fontWeight: "labelEmphasizedFont" },
              { fontFamily: "labelEmphasizedFont" },
            ],
          }}
          text="{{ selectedTemplate.value?.title }}"
          tooltipText="Remove template"
        >
          <Event
            event="click"
            method="trigger"
            params={{
              ordered: [
                {
                  options: {
                    object: {
                      onSuccess: null,
                      onFailure: null,
                      additionalScope: null,
                    },
                  },
                },
              ],
            }}
            pluginId="onTemplateRemove"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </IconText>
      </View>
    </Container>
    <Container
      id="stack2"
      _align="center"
      _flexWrap={true}
      _gap="20px"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0px 12px"
      padding="0"
      showBody={true}
      showBorder={false}
    >
      <View id="6b967" viewKey="View 1">
        <Text
          id="ToLabel"
          heightType="fill"
          style={{
            ordered: [
              { fontSize: "labelEmphasizedFont" },
              { fontWeight: "labelEmphasizedFont" },
              { fontFamily: "labelEmphasizedFont" },
            ],
          }}
          value="To"
          verticalAlign="center"
        />
        <Select
          id="AddCaseContact_Select"
          captionByIndex="{{ item.email }}"
          data="{{ inputCase.value.contacts }}"
          emptyMessage="No options"
          label=""
          labelPosition="top"
          labels="{{ `${item.firstName} ${item.lastName}` }}"
          overlayMaxHeight={375}
          placeholder="Add case contact"
          showSelectionIndicator={true}
          style={{ ordered: [] }}
          values="{{ item.id }}"
        />
      </View>
    </Container>
    <TextInput
      id="ToInput"
      hidden="{{ SendEmailSMS_Container.currentViewKey === 'sms' }}"
      label=""
      labelPosition="top"
      margin="4px 20px 0 20px"
      patternType="email"
      placeholder="Enter value"
    />
    <PhoneNumberInput
      id="ToInput_PhoneNumber"
      hidden="{{ SendEmailSMS_Container.currentViewKey === 'email' }}"
      label=""
      labelPosition="top"
      lockedCountryCode="US"
      margin="4px 20px 0 20px"
    />
    <Include src="./SendEmailSMS_Container.rsx" />
  </Body>
  <Footer>
    <Button
      id="button2"
      disabled="{{ !(AddCaseContact_Select.selectedItem || (SendEmailSMS_Container.currentViewKey === 'email' && !ToInput.invalid && ToInput.value) || (SendEmailSMS_Container.currentViewKey === 'sms' && /\s/g.test(ToInput_PhoneNumber?.formattedValue)))  }}"
      text="Send"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="smsInteractionHandler"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    event="hide"
    method="trigger"
    params={{
      ordered: [
        { options: { ordered: [{ additionalScope: { ordered: [] } }] } },
      ],
    }}
    pluginId="handleModalHide"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
