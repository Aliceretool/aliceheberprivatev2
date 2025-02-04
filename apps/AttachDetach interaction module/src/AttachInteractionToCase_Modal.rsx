<ModalFrame
  id="AttachInteractionToCase_Modal"
  footerPadding="0"
  headerPadding="8px 12px"
  hidden="{{ !isOpen.value }}"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="0"
  showHeader={true}
  showOverlay={true}
>
  <Header>
    <Text
      id="AttachInteractionToCase_Title"
      style={{ ordered: [{ fontSize: "20px" }] }}
      value="{{ modalTitle.value }}"
      verticalAlign="center"
    />
    <Button
      id="AttachInteractionToCaseModal_CloseButton"
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
        pluginId="AttachInteractionToCase_Modal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ action.value }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="90d2f" viewKey="attach">
        <TextInput
          id="SearchCasesQuery_Input"
          label="Search query"
          labelPosition="top"
          placeholder="Case key, beneficiary info"
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="SearchCases"
            type="datasource"
            waitMs="500"
            waitType="debounce"
          />
        </TextInput>
        <Listbox
          id="SearchCasesResults_Listbox"
          allowDeselect={true}
          captionByIndex="{{ item.beneficiary.phoneNumber }} {{ item.beneficiary.firstName }} {{ item.beneficiary.lastName }}"
          data="{{ SearchCases.data }}"
          emptyMessage="No options"
          fallbackTextByIndex=""
          label="Results"
          labelPosition="top"
          labels={
            '{{ item.key }} - {{ moment(item.created_at).format("DD/MM/yyyy HH:mm:ss") }}'
          }
          searchTerm="{{ SearchCasesQuery_Input.value }}"
          showSelectionIndicator={true}
          value=""
          values="{{ item.id }}"
        />
      </View>
      <View id="6071e" viewKey="detach">
        <Text
          id="text1"
          style={{
            ordered: [
              { fontSize: "14px" },
              { fontWeight: "400" },
              { fontFamily: "Inter" },
            ],
          }}
          value="Are you sure you want to detach interaction?"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="AttachInteractionToCase_Actions"
      _gap="0px"
      _justify="end"
      _type="stack"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="12px"
      showBody={true}
      style={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <View id="0f2c6" viewKey="View 1">
        <Button
          id="AttachInteractionToCase_AttachButton"
          disabled={
            '{{ action.value === "attach" && !SearchCasesResults_Listbox.value }}'
          }
          heightType="auto"
          loaderPosition="left"
          loading="{{ attachInteractionToCase.isFetching }}"
          text="{{ confirmTitle.value }}"
        >
          <Event
            enabled=""
            event="click"
            method="trigger"
            params={{
              ordered: [
                {
                  options: { ordered: [{ additionalScope: { ordered: [] } }] },
                },
              ],
            }}
            pluginId="attachInteractionToCase"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="AttachInteractionToCase_Cancel"
          styleVariant="outline"
          text="Cancel"
        />
      </View>
    </Container>
  </Body>
  <Event
    event="hide"
    method="trigger"
    params={{ ordered: [] }}
    pluginId="onHide"
    type="datasource"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
