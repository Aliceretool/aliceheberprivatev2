<Container
  id="container5"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle16"
      value="#### {{ item }}"
      verticalAlign="center"
    />
  </Header>
  <View id="b79ea" viewKey="View 1">
    <Spacer id="spacer44" marginType="normal" />
    <Text
      id="keyPersonnelTitleText2"
      marginType="normal"
      value="#### {{Object.keys(formatKeyPersonnelList?.data)?.[i]}}"
      verticalAlign="center"
    />
    <Spacer id="spacer45" marginType="normal" />
    <EditableText
      id="keyPersonnelFirstName2"
      editIcon="line/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="First Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      textSize="default"
      value="{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.firstName }}"
    >
      <Event
        enabled="{{formatKeyPersonnelList.data === null ? false : !Object.keys(cafBackgroundUpdates.value).includes(formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{formatKeyPersonnelList.data === null ? null : formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}, "where", "id"]',
            },
            {
              value:
                "{{formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}",
            },
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
                '[{{formatKeyPersonnelList.data === null ? null : formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}, "data", "user", "firstName"]',
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
      id="keyPersonnelLastName2"
      editIcon="line/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Last Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      textSize="default"
      value="{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.lastName }}"
    >
      <Event
        enabled="{{formatKeyPersonnelList.data === null ? false : !Object.keys(cafBackgroundUpdates.value).includes(formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{formatKeyPersonnelList.data === null ? null : formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}, "where", "id"]',
            },
            {
              value:
                "{{formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}",
            },
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
                '[{{formatKeyPersonnelList.data === null ? null : formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}, "data", "user", "lastName"]',
            },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </EditableText>
    <EditableTextArea
      id="keyPersonnelEmail2"
      editIcon="line/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Email"
      labelPosition="top"
      placeholder="Enter value"
      readOnly="true"
      value="{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.authUser?.email }}"
    >
      <Event
        enabled="{{formatKeyPersonnelList.data === null ? false : !Object.keys(cafBackgroundUpdates.value).includes(formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{formatKeyPersonnelList.data === null ? null : formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}, "where", "id"]',
            },
            {
              value:
                "{{formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}",
            },
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
                '[{{formatKeyPersonnelList.data === null ? null : formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}, "data", "user", "email"]',
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
    <EditableText
      id="keyPersonnelPhone2"
      editIcon="line/interface-edit-write-1"
      inputTooltip="`Enter` to save, `Esc` to cancel"
      label="Phone"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="true"
      textSize="default"
      value="{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.phone?.replace(/^(\d{3})(\d{3})(\d{4})/, '$1-$2-$3') }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: "keyPersonnelPhone2[i].setValue(keyPersonnelPhone2[i].value.replace(/^(\\d{3})(\\d{3})(\\d{4})/, '$1-$2-$3'))",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{formatKeyPersonnelList.data === null ? false : !Object.keys(cafBackgroundUpdates.value).includes(formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{formatKeyPersonnelList.data === null ? null : formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}, "where", "id"]',
            },
            {
              value:
                "{{formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}",
            },
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
                '[{{formatKeyPersonnelList.data === null ? null : formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}, "data", "phone"]',
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
    <Spacer id="spacer46" marginType="normal" />
    <Switch
      id="isLegalSignerSwitch2"
      disabled="true"
      label="Is Legal Signer?"
      marginType="normal"
      value="{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.isLegalSigner }}"
    >
      <Event
        enabled="{{GetInstallerAppUsers.data.keyPersonnelList.length === 0 ? false : !Object.keys(cafBackgroundUpdates.value).includes(GetInstallerAppUsers.data.keyPersonnelList[i].id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{GetInstallerAppUsers.data.keyPersonnelList.length === 0 ? null : GetInstallerAppUsers.data.keyPersonnelList[i].id}}, "where", "id"]',
            },
            { value: "{{GetInstallerAppUsers.data.keyPersonnelList[i].id}}" },
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
                '[{{GetInstallerAppUsers.data.keyPersonnelList.length === 0 ? null : GetInstallerAppUsers.data.keyPersonnelList[i].id}}, "data", "isLegalSigner"]',
            },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Switch>
    <Date
      id="checkNotCompleted2"
      dateFormat="MM/dd/yyyy"
      disabled="{{ isLendingPartnerVettingUser.value || formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].isPrincipal === true || (formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].isPrincipal === false) && !checkDuplicateKP.data.includes(Object.keys(formatKeyPersonnelList.data)[i])}}"
      iconBefore="bold/interface-calendar"
      label="Background check not able to be completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value  }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ \n    !formatKeyPersonnelList.data || \n    moment(self.value).format('YYYY-MM-DD') !== moment(formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]]?.backgroundCheckNotPossible).format('YYYY-MM-DD')  \n        ? 'warning' \n        : '#c4c4c4' \n}}\n",
          },
        ],
      }}
      tooltipText="{{ self.disabled === true && (formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].isOwner === false) && !checkDuplicateKP.data.includes(Object.keys(formatKeyPersonnelList.data)[i]) ? 'This user has multiple titles. Please enter background information in the first title listed in this section' : null}}"
      value="{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.backgroundCheckNotPossible }}"
    >
      <Event
        enabled="{{formatKeyPersonnelList.data === null ? false : !Object.keys(cafBackgroundUpdates.value).includes(formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id)}}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{formatKeyPersonnelList.data === null ? null : formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}, "where", "id"]',
            },
            {
              value:
                "{{formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}",
            },
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
                '[{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.id }}, "data","backgroundCheckNotPossible"]',
            },
            {
              value:
                "{{self.value === '' ? null : self.value+moment().format('THH:mm:ssZ')}}",
            },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{self.value !== ''}}"
        event="change"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="keyPersonnelBackgroundCheckComplete"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{self.value === '' && keyPersonnelBackgroundCheckComplete[i].value === ''}}"
        event="change"
        method="setDisabled"
        params={{ ordered: [{ disabled: false }] }}
        pluginId="keyPersonnelBackgroundCheckComplete"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Date
      id="keyPersonnelBackgroundCheckComplete2"
      dateFormat="MM/dd/yyyy"
      disabled="{{
  isLendingPartnerVettingUser.value || formatKeyPersonnelList.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.isPrincipal || 
  (!formatKeyPersonnelList.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.isPrincipal && !checkDuplicateKP.data?.includes(Object.keys(formatKeyPersonnelList.data)[i]))
}}"
      iconBefore="bold/interface-calendar"
      label="Background Check Completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value  }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ \n    !formatKeyPersonnelList.data || \n    moment(self.value).format('YYYY-MM-DD') !== moment(formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]]?.backgroundCheckComplete).format('YYYY-MM-DD')  \n        ? 'warning' \n        : '#c4c4c4' \n}}\n",
          },
        ],
      }}
      tooltipText="{{ self.disabled === true && (formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].isOwner === false) && !checkDuplicateKP.data.includes(Object.keys(formatKeyPersonnelList.data)[i]) ? 'This user has multiple titles. Please enter background information in the first title in this section this user\'s name appears' : (self.disabled === true && formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].isOwner === true) ? 'This Key Personnel is also an owner. Please complete background info in the ownership section above' : null}}"
      value="{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.backgroundCheckComplete }}"
    >
      <Event
        enabled="{{ formatKeyPersonnelList.data && 
    !Object.keys(cafBackgroundUpdates.value).includes(formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id)
}}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                '[{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.id}}, "where", "id"]',
            },
            {
              value:
                "{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.id }}",
            },
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
                '[{{ formatKeyPersonnelList?.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.id }}, "data","backgroundCheckComplete"]',
            },
            {
              value:
                "{{self.value === '' ? null : self.value+moment().format('THH:mm:ssZ')}}",
            },
          ],
        }}
        pluginId="cafBackgroundUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{self.value === ''}}"
        event="change"
        method="setDisabled"
        params={{ ordered: [{ disabled: "" }] }}
        pluginId="checkNotCompleted"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{self.value !== ''}}"
        event="change"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="checkNotCompleted"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="spacer47" marginType="normal" />
    <FileButton
      id="kpBackgroundFileUpload2"
      _isUpgraded={true}
      disabled="{{ isLendingPartnerVettingUser.value || formatKeyPersonnelList.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.isPrincipal === true}}"
      files={[]}
      hidden="{{ 
    formatKeyPersonnelList.data?.[Object.keys(formatKeyPersonnelList.data)[i]]?.isPrincipal || 
    (!formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].isPrincipal) && !checkDuplicateKP.data.includes(Object.keys(formatKeyPersonnelList.data)[i])
}}
"
      iconBefore="bold/programming-browser-search"
      loading="{{CreateAttachmentFileUpload.isFetching}}"
      marginType="normal"
      styleVariant="outline"
      text="Background Check File Upload"
      tooltipText={
        '{{formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].isOwner === true ? "Please upload background check files in the ownership section" : null }}'
      }
      value={[]}
    >
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { value: "Personal_Background_Check" },
            { keyPath: '["attachmentType"]' },
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
            { value: "installerApplicationUser" },
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
            { value: "{{self?.value?.[0]?.base64Data }}" },
            { keyPath: '["fileUpload"]' },
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
            { keyPath: '["component"]' },
            { value: "{{self?.files?.[0]}}" },
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
                "{{formatKeyPersonnelList.data[Object.keys(formatKeyPersonnelList.data)[i]].id}}",
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
    <Divider id="divider5" marginType="normal" textSize="default" />
    <Spacer id="spacer43" marginType="normal" />
  </View>
</Container>
