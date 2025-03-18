<Container
  id="ownershipContainer"
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
      id="ownershipContainerTitle"
      marginType="normal"
      value="#### Principals"
      verticalAlign="center"
    />
    <Button
      id="viewReportsButton"
      hidden="{{ !GetInstallerAppUsers.data?.installerApplicationUsers || !GetChannelManager.data?.[0]?.Most_Recent_Installer_Application__r?.Experian_Business_Response__c }}"
      marginType="normal"
      text="View Credit Reports"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "{{viewCreditReportState.value.urlPrefix + viewCreditReportState.value.responseId}}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="getCreditReportsButton"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      hidden="{{GetInstallerAppUsers.data.installerApplicationUsers.data === null || GetInstallerAppUsers.data.installerApplicationUsers.length === 0 }}"
      loading="{{GetAuthorizedCreditReports.isFetching}}"
      marginType="normal"
      text="Get Authorized Credit Reports"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="GetAuthorizedCreditReports"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="experianButton"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      marginType="normal"
      text="Experian Access"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [{ url: "https://www.experian.com/access/login.html" }],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="clearButton"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      marginType="normal"
      text="CLEAR Login"
    >
      <Event
        event="click"
        method="openUrl"
        params={{
          ordered: [{ url: "https://clear.thomsonreuters.com/login" }],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="iownershipKickBackNotesCollapsibleContainer"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hidden={
        '{{ \n    !(GetAccountHome.data.applicationSectionStatus?.creditAuthorizationReview === "Rejected" || \n      GetAccountHome.data.applicationSectionStatus?.principalsReview === "Rejected")\n}}'
      }
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(246, 229, 196)" }] }}
    >
      <Header>
        <Text
          id="ownershipKickBackNotesHeaderText"
          marginType="normal"
          value="###### Kick Back Notes"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle5"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          marginType="normal"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ iownershipKickBackNotesCollapsibleContainer.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="iownershipKickBackNotesCollapsibleContainer"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="a8035" viewKey="View 1">
        <Text
          id="ownershipKickBackNotesText"
          marginType="normal"
          value="{{ GetAccountHome.data.applicationSectionStatus?.creditAuthorizationKickbackNotes || GetAccountHome.data.applicationSectionStatus?.principalsKickbackNotes  }} "
          verticalAlign="center"
        />
      </View>
    </Container>
    <Button
      id="sendEmailToRequestorButton"
      disabled="{{ isLendingPartnerVettingUser.value || SendEmailToRequestor.isFetching }}"
      loading="{{ SendEmailToRequestor.isFetching }}"
      marginType="normal"
      text="Send Email to Requestor"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="SendEmailToRequestor"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Modal
      id="principalsKickBackModalDeprecated"
      buttonText="Kick Back Section"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.creditAuthorizationReview === "Rejected" || GetAccountHome.data?.applicationSectionStatus?.principalsReview === "Rejected" }}'
      }
      events={[
        {
          ordered: [
            { event: "close" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "applicationSectionStatusUpdates" },
            { targetId: null },
            { params: { ordered: [{ value: "{}" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "widget" },
            { method: "clearValue" },
            { pluginId: "principalsRejectionReasonTextAreaDep" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "widget" },
            { method: "clearValue" },
            { pluginId: "principalSelectionMultiSelectDep" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "widget" },
            { method: "clearValue" },
            { pluginId: "principalsKickBackSelectionRadioGroupDep" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "open" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "kickBackSection" },
            { targetId: null },
            { params: { ordered: [{ value: "principals" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "close" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "kickBackSection" },
            { targetId: null },
            { params: { ordered: [{ value: "null" }] } },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="true"
      margin="4px 8px"
      marginType="normal"
      modalHeight="392px"
      modalHeightType="auto"
      modalOverflowType="hidden"
      style={{ ordered: [{ "primary-surface": "" }] }}
    >
      <Form
        id="principalsKickBackForm"
        disableSubmit="{{ formatKickBackInvalidationsAsArray.isFetching || UpdateApplicationSectionStatus.isFetching || UpdateCreditAuthorizationForm.isFetching || FullPrincipalsKickBack.isFetching }}"
        footerPaddingType="normal"
        headerPaddingType="normal"
        loading=""
        marginType="normal"
        padding="12px"
        paddingType="normal"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showFooter={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="ownershipKickBackFormTitle"
            marginType="normal"
            value="#### Kick Back Details"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <RadioGroup
            id="principalsKickBackSelectionRadioGroupDep"
            itemMode="static"
            label="Choose Kick Back Option"
            labelPosition="top"
            labelWrap={true}
            marginType="normal"
            required={true}
            value=""
          >
            <Option
              id="28667"
              label="Kick Back CAF Only"
              value="kickBackCafOnly"
            />
            <Option
              id="c144f"
              label="Kick Back Principals (full)"
              value="kickBackOwnership"
            />
            <Event
              enabled={
                '{{ principalsKickBackSelectionRadioGroupDep.value=== "kickBackCafOnly" }}'
              }
              event="change"
              method="setValue"
              params={{
                ordered: [
                  { value: '{ "creditAuthorizationReview": "Rejected" }' },
                ],
              }}
              pluginId="applicationSectionStatusUpdates"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled={
                '{{ principalsKickBackSelectionRadioGroupDep.value=== "kickBackOwnership" }}'
              }
              event="change"
              method="setValue"
              params={{
                ordered: [{ value: '{ "principalsReview": "Rejected" }' }],
              }}
              pluginId="applicationSectionStatusUpdates"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </RadioGroup>
          <Spacer
            id="spacer21"
            hidden={
              '{{ principalsKickBackSelectionRadioGroupDep.value !== "kickBackCafOnly" }}'
            }
            marginType="normal"
          />
          <Multiselect
            id="principalSelectionMultiSelectDep"
            captionByIndex=""
            colorByIndex=""
            data="{{ GetInstallerAppUsers.data.principalList }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            hidden={
              '{{ principalsKickBackSelectionRadioGroupDep.value !== "kickBackCafOnly" }}'
            }
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Select Owners for CAF Kickback:"
            labelPosition="top"
            labels="{{ item.fullName }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Choose one or more owners"
            required={
              '{{ principalsKickBackSelectionRadioGroupDep.value === "kickBackCafOnly"  }}'
            }
            showSelectionIndicator={true}
            tooltipByIndex=""
            value=""
            values="{{ item.id }}"
            wrapTags={true}
          >
            <Option id="9db9e" value="Option 1" />
            <Option id="a9b68" value="Option 2" />
            <Option id="e17e3" value="Option 3" />
          </Multiselect>
          <Spacer id="spacer22" marginType="normal" />
          <TextArea
            id="principalsRejectionReasonTextAreaDep"
            autoResize={true}
            hidden=""
            label="Rejection Notes"
            labelPosition="top"
            marginType="normal"
            minLines="3"
            placeholder="Please enter the reason for rejecting this section..."
            required={true}
          />
          <Spacer id="spacer20" marginType="normal" />
        </Body>
        <Footer>
          <Button
            id="principalsKickBackSubmitButton"
            marginType="normal"
            submit={true}
            submitTargetId="principalsKickBackForm"
            text="Submit kickback"
          />
        </Footer>
        <Event
          enabled={
            '{{ principalsKickBackSelectionRadioGroupDep.value === "kickBackCafOnly" }}'
          }
          event="submit"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  '{{{...applicationSectionStatusUpdates.value, "creditAuthorizationKickbackNotes": principalsRejectionReasonTextAreaDep.value }}}',
              },
            ],
          }}
          pluginId="applicationSectionStatusUpdates"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled={
            '{{ principalsKickBackSelectionRadioGroupDep.value === "kickBackOwnership" }}'
          }
          event="submit"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  '{{{...applicationSectionStatusUpdates.value, "principalsKickbackNotes": principalsRejectionReasonTextAreaDep.value }}}',
              },
            ],
          }}
          pluginId="applicationSectionStatusUpdates"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled={
            '{{ principalsKickBackSelectionRadioGroupDep.value === "kickBackCafOnly"  }}'
          }
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="formatKickBackInvalidationsAsArray"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled={
            '{{ principalsKickBackSelectionRadioGroupDep.value === "kickBackOwnership" }}'
          }
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="UpdateApplicationSectionStatus"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Button
      id="principalsKickBackModalButton"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.creditAuthorizationReview === "Rejected" || GetAccountHome.data?.applicationSectionStatus?.principalsReview === "Rejected" }}'
      }
      text="Kick Back Section"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="principalsKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="bde3c" viewKey="View 1">
    <ListView
      id="listView2"
      hidden="true
"
      instances="{{ GetInstallerAppUsers.data?.principalList?.length || 1 }}"
      marginType="normal"
      paddingType="normal"
    >
      <EditableText
        id="firstNameText"
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
        id="middleInitialEditableText"
        editIcon="line/interface-edit-write-1"
        inputTooltip="`Enter` to save, `Esc` to cancel"
        label="MIddle Initial"
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
        id="lastNameText"
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
        id="dobDate"
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
      <Include src="./container1.rsx" />
      <Spacer id="ownershipSpacer2" marginType="normal" />
      <EditableText
        id="phoneNumberEditableText"
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
                src: "phoneNumberEditableText[i].setValue(phoneNumberEditableText[i].value.replace(/^(\\d{3})(\\d{3})(\\d{4})/, '$1-$2-$3'))",
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
      <EditableTextArea
        id="titleTextArea"
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
      <NumberInput
        id="percentageOwnedEditableNumber"
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
      <Spacer id="ownershipSpacer3" marginType="normal" />
      <Spacer id="spacer14" marginType="normal" />
      <EditableTextArea
        id="emailEditableText"
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
      <Select
        id="fileTypePersonalCreditSelect"
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
      <RadioGroup
        id="preferredContactRadio"
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
      <FileButton
        id="personalCreditBackgroundFileUpload"
        _isUpgraded={true}
        disabled="{{ isLendingPartnerVettingUser.value || fileTypePersonalCreditSelect[i].value === null || CreateAttachmentFileUpload.isFetching}}"
        files={[]}
        iconBefore="bold/programming-browser-search"
        loading="{{CreateAttachmentFileUpload.isFetching}}"
        marginType="normal"
        styleVariant="outline"
        text="Upload File"
        tooltipText="{{fileTypePersonalCreditSelect[i].value === null ? 'File Type is required' : ''}}"
        value={[]}
      >
        <Event
          enabled="{{fileTypePersonalCreditSelect[i].value !== null }}"
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
          enabled="{{fileTypePersonalCreditSelect[i].value !== null }}"
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
      <Spacer id="ownershipSpacer5" marginType="normal" />
      <Button
        id="sendSignUpEmailButton"
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
        id="sendReminderEmailButton"
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
      <Divider id="divider3" marginType="normal" textSize="default" />
      <Spacer id="ownershipSpacer7" marginType="normal" />
    </ListView>
    <Spacer id="ownershipSpacer6" hidden="true" marginType="normal" />
    <TextInput
      id="weightedFicoCAFTextInput"
      hidden="true"
      label="Weighted FICO"
      marginType="normal"
      placeholder="Not Calculated Yet"
      readOnly="true"
      value="{{ calculateWeightedFICO?.data }}"
    />
    <ListViewBeta
      id="listView4"
      data="{{ GetInstallerAppUsers.data?.principalList }}"
      heightType="auto"
      itemWidth="200px"
      maxHeight="300vh"
      numColumns={3}
      padding="12px"
    >
      <Include src="./container6.rsx" />
    </ListViewBeta>
    <TextInput
      id="weightedFicoCAFTextInput2"
      label="Weighted FICO"
      marginType="normal"
      placeholder="Not Calculated Yet"
      readOnly="true"
      value="{{ calculateWeightedFICO?.data }}"
    />
  </View>
</Container>
