<Container
  id="keyPersonnelContainer"
  footerPaddingType="normal"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="keyPersonnelContainerTitle"
      marginType="normal"
      value="#### Key Personnel"
      verticalAlign="center"
    />
  </Header>
  <View id="bde3c" viewKey="View 1">
    <ListView
      id="keyPersonnelParentListView"
      hidden="true"
      instances="{{ Object.keys(formatKeyPersonnelList?.data ?? {}).length }}"
      marginType="normal"
      paddingType="normal"
    >
      <Spacer id="spacer5" marginType="normal" />
      <Text
        id="keyPersonnelTitleText"
        marginType="normal"
        value="#### {{Object.keys(formatKeyPersonnelList?.data)?.[i]}}"
        verticalAlign="center"
      />
      <Spacer id="spacer7" marginType="normal" />
      <EditableText
        id="keyPersonnelPhone"
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
                src: "keyPersonnelPhone[i].setValue(keyPersonnelPhone[i].value.replace(/^(\\d{3})(\\d{3})(\\d{4})/, '$1-$2-$3'))",
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
      <EditableText
        id="keyPersonnelLastName"
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
        id="keyPersonnelEmail"
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
      <Date
        id="keyPersonnelBackgroundCheckComplete"
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
      <EditableText
        id="keyPersonnelFirstName"
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
      <Spacer id="spacer8" marginType="normal" />
      <Switch
        id="isLegalSignerSwitch"
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
        id="checkNotCompleted"
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
      <FileButton
        id="kpBackgroundFileUpload"
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
      <Spacer id="spacer6" marginType="normal" />
      <Divider id="divider4" marginType="normal" textSize="default" />
    </ListView>
    <ListViewBeta
      id="listView3"
      _primaryKeys="{{ item.id }}"
      data="{{ Object.keys(formatKeyPersonnelList?.data ?? {}) }}"
      enableInstanceValues={true}
      heightType="auto"
      itemWidth="200px"
      maxHeight="300vh"
      numColumns={3}
      padding="12px"
    >
      <Include src="./container5.rsx" />
    </ListViewBeta>
    <Spacer id="keyPersonnelSpacer1" marginType="normal" />
    <TextInput
      id="legalEntityTextInput2"
      label="Legal Name of Entity"
      labelPosition="top"
      marginType="normal"
      placeholder="None entered"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{ applicationCompanyUpdates.value?.hasOwnProperty(\"legalName\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetLicenseSosFraud.data?.applicationCompany?.legalName }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(applicationCompanyUpdates, "legalName", GetLicenseSosFraud.data?.applicationCompany?.legalName, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="dbaTextInput2"
      label="DBA Name"
      labelPosition="top"
      marginType="normal"
      placeholder="None entered"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{ applicationCompanyUpdates.value?.hasOwnProperty(\"dbaName\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetLicenseSosFraud.data?.applicationCompany?.dbaName }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(applicationCompanyUpdates, "dbaName", GetLicenseSosFraud.data?.applicationCompany?.dbaName, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Spacer id="keyPersonnelSpacer2" marginType="normal" />
    <TextInput
      id="businessPhoneNumberText2"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Business Phone Number"
      labelPosition="top"
      marginType="normal"
      placeholder="None entered"
      style={{
        ordered: [
          {
            border:
              "{{ self.value !== '' && self.value !== GetLicenseSosFraud.data.applicationCompany.businessPhoneNumber.replace(/(\\d{3})(\\d{3})(\\d{4})/, \"($1) $2-$3\") ? 'warning' : '#C4C4C4'}}",
          },
        ],
      }}
      value={
        '{{ GetLicenseSosFraud.data?.applicationCompany?.businessPhoneNumber?.replace(/(\\d{3})(\\d{3})(\\d{4})/, "($1) $2-$3") }}'
      }
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'console.log("self: ", self.value)\nsetStateForUpdate(applicationCompanyUpdates, "businessPhoneNumber", GetLicenseSosFraud.data?.applicationCompany?.businessPhoneNumber?.replace(/(\\d{3})(\\d{3})(\\d{4})/, "($1) $2-$3"), self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Date
      id="phoneValidationCompleteDate2"
      dateFormat="MM/dd/yyyy"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Phone Number Verification Completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.hasOwnProperty(\"phoneVerificationNumberCompleted\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetLicenseSosFraud.data === null? null : GetLicenseSosFraud.data.phoneVerificationNumberCompleted}}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "phoneVerificationNumberCompleted", GetLicenseSosFraud.data?.phoneVerificationNumberCompleted, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="keyPersonnelSpacer3" marginType="normal" />
    <TextInput
      id="websiteTextInput2"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      label="Website"
      labelPosition="top"
      marginType="normal"
      placeholder="None entered"
      style={{
        ordered: [
          {
            border:
              "{{ applicationCompanyUpdates.value?.hasOwnProperty(\"website\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{ GetLicenseSosFraud.data?.applicationCompany?.website }}"
    >
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(applicationCompanyUpdates, "website", GetLicenseSosFraud.data?.applicationCompany?.website, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Select
      id="functioningWebsiteSelect2"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      emptyMessage="No options"
      itemMode="static"
      label="Functioning Website?"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.hasOwnProperty(\"functioningWebsite\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetLicenseSosFraud.data === null? null : GetLicenseSosFraud.data.functioningWebsite}}"
    >
      <Option id="77239" label="Yes" value="Yes" />
      <Option id="e336a" label="No" value="No" />
      <Event
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "functioningWebsite", GetLicenseSosFraud.data?.functioningWebsite, self.value);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="websiteChecksComplete2"
      dateFormat="MM/dd/yyyy"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Website / Domain Checks Completed"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.hasOwnProperty(\"websiteDomainChecksCompleted\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetLicenseSosFraud.data === null? null : GetLicenseSosFraud.data.websiteDomainChecksCompleted}}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "websiteDomainChecksCompleted", GetLicenseSosFraud.data?.websiteDomainChecksCompleted, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="keyPersonnelSpacer4" marginType="normal" />
    <Date
      id="legalActionSearchCompleteDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="Legal Action Search Complete"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{ installerApplicationUpdates.value?.hasOwnProperty(\"legalActionSearchComplete\") ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetInstallerAppCaf.data === null ? null:GetInstallerAppCaf.data.legalActionSearchComplete}}"
    >
      <Event
        enabled=""
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'setStateForUpdate(installerApplicationUpdates, "legalActionSearchComplete", GetInstallerAppCaf.data?.legalActionSearchComplete, self.value, true);',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Spacer id="spacer13" marginType="normal" />
    <FileButton
      id="busBackgroundFileUpload"
      _isUpgraded={true}
      disabled="{{ isLendingPartnerVettingUser.value }}"
      files={[]}
      iconBefore="bold/programming-browser-search"
      loading="{{CreateAttachmentFileUpload.isFetching}}"
      marginType="normal"
      styleVariant="outline"
      text="Business Background Check File Upload"
      value={[]}
    >
      <Event
        event="parse"
        method="setIn"
        params={{
          ordered: [
            { value: "Business_Background_Check" },
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
            { value: "installerApplication" },
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
        method="trigger"
        params={{ ordered: [] }}
        pluginId="createOperationsBody"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </FileButton>
  </View>
</Container>
