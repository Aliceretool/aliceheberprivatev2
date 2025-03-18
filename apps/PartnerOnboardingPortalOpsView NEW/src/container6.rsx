<Container
  id="container6"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle17"
      value="#### {{ item }}"
      verticalAlign="center"
    />
  </Header>
  <View id="10110" viewKey="View 1">
    <Include src="./container7.rsx" />
    <EditableText
      id="firstNameText2"
      editIcon="line/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="First Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      textSize="default"
      value="{{ GetInstallerAppUsers.data.principalList?.[i]?.firstName }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.ownerList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.ownerList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.ownerList[i].id}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "data", "user", "firstName"]',
            },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <EditableText
      id="middleInitialEditableText2"
      editIcon="line/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Middle Initial"
      labelPosition="top"
      marginType="normal"
      placeholder="None entered"
      readOnly="true"
      textSize="default"
      value="{{ GetInstallerAppUsers.data.principalList?.[i]?.middleInitial }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.ownerList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.ownerList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.ownerList[i].id}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.installerApplicationUsers.length === 0 ? null : GetInstallerAppUsers.data.installerApplicationUsers[i].id}}, "data", "user", "firstName"]',
            },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <EditableText
      id="lastNameText2"
      editIcon="line/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Last Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      textSize="default"
      value="{{ GetInstallerAppUsers.data.principalList?.[i]?.lastName }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.ownerList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.ownerList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.ownerList[i].id}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "data", "user" , "lastName"]',
            },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <Date
      id="dobDate2"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="DOB"
      labelPosition="top"
      marginType="normal"
      readOnly="true"
      value="{{ GetInstallerAppUsers.data?.principalList?.[i]?.creditAuthorizationForms?.[0]?.dob }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.ownerList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.ownerList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.ownerList[i].id}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "data", "creditAuthorizationForms" ,"dob"]',
            },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="ownershipSpacer8" marginType="normal" />
    <EditableTextArea
      id="titleTextArea2"
      inputTooltip="`Shift+Enter` to save, `Esc` to cancel"
      label="Title(s)"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      value="{{ GetInstallerAppUsers.data?.principalList?.[i]?.title }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.ownerList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.ownerList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.ownerList[i].id}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </EditableTextArea>
    <EditableText
      id="phoneNumberEditableText2"
      editIcon="line/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Phone Number"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      textSize="default"
      value="{{ GetInstallerAppUsers.data?.principalList?.[i]?.phone?.replace(/^(\d{3})(\d{3})(\d{4})/, '$1-$2-$3')}}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: "phoneNumberEditableText2[i].setValue(phoneNumberEditableText2[i].value.replace(/^(\\d{3})(\\d{3})(\\d{4})/, '$1-$2-$3'))",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{GetInstallerAppUsers.data.ownerList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.ownerList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.ownerList[i].id}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "data", "phone"]',
            },
            { value: '{{self.value.replaceAll("-","")}}' },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <NumberInput
      id="percentageOwnedEditableNumber2"
      currency="USD"
      format="percent"
      inputValue={0}
      label="Percentage Owned"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      showSeparators={true}
      showStepper={true}
      value="{{ (GetInstallerAppUsers.data?.principalList?.[i]?.percentageOwned)/100 }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.ownerList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.ownerList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.ownerList[i].id}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "data", "percentageOwned"]',
            },
            { value: "{{self.value * 100}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </NumberInput>
    <Spacer id="ownershipSpacer9" marginType="normal" />
    <EditableTextArea
      id="emailEditableText2"
      editIcon="line/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Email"
      labelPosition="top"
      placeholder="Enter value"
      readOnly="true"
      value="{{ GetInstallerAppUsers.data.principalList?.[i]?.authUser?.email }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.ownerList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.ownerList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.ownerList[i].id}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "data", "user", "email"]',
            },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </EditableTextArea>
    <RadioGroup
      id="preferredContactRadio2"
      disabled="true"
      groupLayout="wrap"
      itemMode="static"
      label="Preferred Contact Method"
      labelPosition="top"
      marginType="normal"
      value="{{ GetInstallerAppUsers.data?.principalList?.[i]?.preferredContactMethod }}"
    >
      <Option id="d6005" label="Email" value="Email" />
      <Option id="2d68f" label="Phone" value="Phone" />
      <Event
        enabled="{{GetInstallerAppUsers.data.ownerList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.ownerList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.ownerList[i].id}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.ownerList.length === 0 ? null : GetInstallerAppUsers.data.ownerList[i].id}}, "data", "preferredContactMethod"]',
            },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <Select
      id="fileTypePersonalCreditSelect2"
      emptyMessage="No options"
      itemMode="static"
      label="What type of file is this?"
      labelPosition="top"
      labelWrap={true}
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      showSelectionIndicator={true}
    >
      <Option
        id="2f07b"
        label="Personal Credit Check"
        value="Personal_Credit_Checks"
      />
      <Option
        id="79c47"
        label="Personal Background Check"
        value="Personal_Background_Check"
      />
      <Event
        event="change"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["attachmentType"]' },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Spacer id="spacer48" marginType="normal" />
    <FileButton
      id="personalCreditBackgroundFileUpload2"
      _isUpgraded={true}
      disabled="{{ isLendingPartnerVettingUser.value || fileTypePersonalCreditSelect2[i].value === null || CreateAttachmentFileUpload.isFetching}}"
      files={[]}
      iconBefore="bold/programming-browser-search"
      loading="{{CreateAttachmentFileUpload.isFetching}}"
      marginType="normal"
      styleVariant="outline"
      text="Upload File"
      tooltipText="{{fileTypePersonalCreditSelect2[i].value === null ? 'File Type is required' : ''}}"
      value={[]}
    >
      <Event
        enabled="{{fileTypePersonalCreditSelect2[i].value !== null }}"
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["fileUpload"]' },
            { value: "{{self?.value?.[0]?.base64Data }}" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{fileTypePersonalCreditSelect2[i].value !== null }}"
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["component"]' },
            { value: "{{ self?.files?.[0] }}" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["connection"]' },
            { value: "personalCreditChecks" },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { keyPath: '["id"]' },
            {
              value:
                "{{GetInstallerAppUsers.data?.principalList?.[i].personalCreditChecks?.[0]?.id}}",
            },
          ],
        }}
        pluginId="createAttachmentVariables"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="parse"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createOperationsBody"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileButton>
    <Spacer id="ownershipSpacer10" marginType="normal" />
    <Button
      id="sendSignUpEmailButton2"
      disabled="{{ isLendingPartnerVettingUser.value || SendSignUpEmail.isFetching }}"
      loading="{{ SendSignUpEmail.isFetching }}"
      marginType="normal"
      text="Send Sign Up Email"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="SendSignUpEmail"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="sendReminderEmailButton2"
      disabled="{{ isLendingPartnerVettingUser.value || SendReminderEmail.isFetching }}"
      loading="{{ SendReminderEmail.isFetching }}"
      marginType="normal"
      text="Send Reminder Email"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="SendReminderEmail"
        type="datasource"
        waitMs="200"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
