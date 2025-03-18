<Container
  id="insuranceVerificationContainer"
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
      id="containerTitle6"
      marginType="normal"
      value="#### Insurance Verification"
      verticalAlign="center"
    />
    <Modal
      id="insuranceVerificationKickBackModalDeprecated"
      buttonText="Kick Back Section"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.insurancesReview === "Rejected" }}'
      }
      events={[
        {
          ordered: [
            { event: "open" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "applicationSectionStatusUpdates" },
            { targetId: null },
            {
              params: {
                ordered: [{ value: '{"insurancesReview": "Rejected" }' }],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
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
            {
              pluginId: "insuranceVerificationKickBackRejectionReasonTextArea",
            },
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
            { pluginId: "insuranceDocumentsToInvalidateMultiselect_Dep" },
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
            { params: { ordered: [{ value: "insurances" }] } },
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
      modalHeightType="auto"
      style={{ ordered: [{ "primary-surface": "" }] }}
    >
      <Form
        id="insuranceVerificationKickBackForm"
        disableSubmit="{{ UpdateKickbackRelatedAttachmentsForInsurances.isFetching || UpdateApplicationSectionStatus.isFetching}}"
        footerPaddingType="normal"
        headerPaddingType="normal"
        loading="{{ UpdateKickbackRelatedAttachmentsForInsurances.isFetching || UpdateApplicationSectionStatus.isFetching}}"
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
            id="insuranceVerificationKickBackFormTitle"
            marginType="normal"
            value="#### Kick Back Details"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <TextArea
            id="insuranceVerificationKickBackRejectionReasonTextArea"
            autoResize={true}
            label="Rejection Notes"
            labelPosition="top"
            marginType="normal"
            minLines="3"
            placeholder="Please enter the reason for rejecting this section..."
            required={true}
          >
            <Event
              event="change"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      '{{{...applicationSectionStatusUpdates.value, "insurancesKickbackNotes": self.value}}}',
                  },
                ],
              }}
              pluginId="applicationSectionStatusUpdates"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
          </TextArea>
          <Spacer id="spacer19" marginType="normal" />
          <Multiselect
            id="insuranceDocumentsToInvalidateMultiselect_Dep"
            emptyMessage="No options"
            itemMode="static"
            label="Documents to invalidate:"
            labelPosition="top"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select options"
            required={true}
            showSelectionIndicator={true}
            wrapTags={true}
          >
            <Option
              id="32441"
              label="General Liability"
              value="General_Liability"
            />
            <Option id="47d86" label="Worker’s Comp" value="Workers_Comp" />
            <Option
              id="2284c"
              label="Workers Comp exemption"
              value="Workers_Comp_Exemption"
            />
          </Multiselect>
        </Body>
        <Footer>
          <Button
            id="insuranceVerificationKickBackSubmitButton"
            marginType="normal"
            submit={true}
            submitTargetId="insuranceVerificationKickBackForm"
            text="Submit kickback"
          />
        </Footer>
        <Event
          enabled=""
          event="submit"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="formatKickBackInvalidationsAsArray"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Form>
    </Modal>
    <Container
      id="insurancesKickBackNotesCollapsibleContainer"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hidden={
        '{{ GetAccountHome.data?.applicationSectionStatus?.insurancesReview !== "Rejected" }}'
      }
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(246, 229, 196)" }] }}
    >
      <Header>
        <Text
          id="installerAgreementKickBackNotesHeaderText2"
          marginType="normal"
          value="###### Kick Back Notes"
          verticalAlign="center"
        />
        <ToggleButton
          id="collapsibleToggle4"
          horizontalAlign="right"
          iconForFalse="bold/interface-arrows-button-down"
          iconForTrue="bold/interface-arrows-button-up"
          iconPosition="replace"
          marginType="normal"
          styleVariant="outline"
          text="{{ self.value ? 'Hide' : 'Show' }}"
          value="{{ insurancesKickBackNotesCollapsibleContainer.showBody }}"
        >
          <Event
            event="change"
            method="setShowBody"
            params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
            pluginId="insurancesKickBackNotesCollapsibleContainer"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </ToggleButton>
      </Header>
      <View id="a8035" viewKey="View 1">
        <Text
          id="insurancesKickBackNotesText"
          marginType="normal"
          value="{{ GetAccountHome.data?.applicationSectionStatus?.insurancesKickbackNotes }} "
          verticalAlign="center"
        />
      </View>
    </Container>
    <Button
      id="insuranceVerificationKickBackModalButton"
      disabled={
        '{{ isLendingPartnerVettingUser.value || GetAccountHome.data?.applicationSectionStatus?.insurancesReview === "Rejected" }}'
      }
      text="Kick Back Section"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="insuranceVerificationKickBackModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="f8495" viewKey="View 1">
    <Spacer id="insuranceSpacer1" marginType="normal" />
    <RadioGroup
      id="workersCompRequiredRadio"
      disabled="true"
      groupLayout="wrap"
      itemMode="static"
      label="Is worker's compensation required for this installer?"
      labelWidth="62"
      labelWrap={true}
      marginType="normal"
      value="{{ GetInsurances.data?.isWorkersCompRequired || null }}"
    >
      <Option id="82c4a" label="Yes" value="Yes" />
      <Option id="49656" label="No" value="No" />
    </RadioGroup>
    <Spacer id="insuranceSpacer2" marginType="normal" />
    <Link
      id="generalLiabilityDocLink"
      iconBefore="bold/interface-download-button-2"
      marginType="normal"
      text="Download General Liability Document"
      textSize="default"
    >
      <Event
        enabled="{{ GetAttachments.data !== null && GetAttachments.data.filter((attachment) => attachment.type === 'General_Liability_Insurance').length > 0}}"
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "{{GetAttachments.data === null || GetAttachments.data?.filter((attachment) => attachment.type === 'General_Liability_Insurance').length === 0 ? '#' : GetAttachments.data?.filter((attachment) => attachment.type === 'General_Liability_Insurance' && !attachment.invalidatedAt).sort((a, b) => new Date(b.createdAt) - new Date(a.createdAt))[0]?.file?.url }}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ GetAttachments.data === null || GetAttachments.data.filter((attachment) => attachment.type=== 'General_Liability_Insurance').length === 0}}"
        event="click"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "warning" },
                  { title: "Sorry!" },
                  {
                    description:
                      "General Liability document not yet uploaded by applicant. Please reach out to the account.",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Link
      id="workersCompDocLink"
      hidden=""
      iconBefore="bold/interface-download-button-2"
      marginType="normal"
      text="{{GetInsurances.data?.insurances?.filter((insurance) => insurance.insuranceType === 'workers_comp_exemption' && !insurance.invalidatedAt).length > 0 ? 'Download Worker\'s Compensation Exemption Document' : 'Download Worker\'s Compensation Document'}}
"
      textSize="default"
    >
      <Event
        enabled=""
        event="click"
        method="openUrl"
        params={{
          ordered: [
            {
              url: "{{GetAttachments.data === null || GetInsurances.data === null ? '#' : GetInsurances.data.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt).length > 0 ? GetAttachments.data.filter((attachment) => attachment.type === 'Workers_Comp_Insurance' && !attachment.invalidatedAt)[0]?.file?.url : GetInsurances.data.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)?.length > 0 ? GetInsurances.data.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0]?.signingDocument?.documentPdf.file.url : '#'}}",
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Spacer id="insuranceSpacer3" marginType="normal" />
    <TextInput
      id="policyNumberTextInput"
      disabled="{{ GetAttachments?.data === null || GetAttachments?.data?.filter((attachment) => attachment.type === 'General_Liability_Insurance').length === 0}}"
      label="Policy Number"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{\n    GetInsurances?.data?.insurances.filter(insurance => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt).length === 0 \n    ? '#c4c4c4' \n    : policyNumberTextInput.value !== GetInsurances?.data?.insurances.filter(insurance => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.policyNumber\n    ? 'warning' \n    : '#c4c4c4'\n}}\n",
          },
        ],
      }}
      value="{{ 
    GetInsurances?.data?.insurances?.filter(insurance => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.policyNumber || null
}}
"
    >
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? false : !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id}}, \"data\", \"policyNumber\"]",
            },
            { value: "{{self.value === null ? null : self.value}}" },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0}}"
        event="focus"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "No General Liability policy associated with this application. Please contact the application requestor.",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Date
      id="genLIabilityExpirationDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value || GetAttachments?.data === null || GetAttachments?.data.filter((attachment) => attachment.type === 'General_Liability_Insurance').length === 0}}"
      iconBefore="bold/interface-calendar"
      label="Expiration Date"
      labelPosition="top"
      marginType="normal"
      minDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{GetInsurances?.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liabilityiability' && !insurance.invalidatedAt).length === 0 ? '#c4c4c4' : self.value.slice(0,10) !== GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.expirationDate ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetInsurances?.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt).length === 0 ? null : moment(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.expirationDate)}}"
    >
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? false : !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'general_liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'general_liability' && !insurance.invalidatedAt)[0]?.id}}, \"data\", \"expirationDate\"]",
            },
            { value: "{{self.value === '' ? null : self.value }}" },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'general_liability').length === 0}}"
        event="focus"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "No General Liability policy associated with this application. Please contact the application requestor.",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Date
      id="genLIabilityVerifiedDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value || GetAttachments?.data === null || GetAttachments?.data.filter((attachment) => attachment.type === 'General_Liability_Insurance').length === 0 }}"
      iconBefore="bold/interface-calendar"
      label="General Liability Verified"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt).length === 0 ? '#c4c4c4' : moment(self.value).format('YYYY-MM-DD') !== moment(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.verified).format('YYYY-MM-DD') ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetInsurances?.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.verified}}
"
    >
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? false : !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_iability' && !insurance.invalidatedAt)[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances.data.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id}}, \"data\", \"verified\"]",
            },
            {
              value:
                "{{self.value === '' ? null : self.value+moment().format().slice(10)}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0}}"
        event="focus"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "No General Liability policy associated with this application. Please contact the application requestor.",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <TextArea
      id="genLiabilityNotesTextArea"
      autoResize={true}
      disabled="{{ GetAttachments?.data === null || GetAttachments?.data?.filter((attachment) => attachment.type === 'General_Liability_Insurance').length === 0}}"
      label="General Liability Verification Notes"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Notes go here"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? '#c4c4c4' : self.value !== GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.notes && self.value !== '' ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetInsurances?.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.notes}}"
    >
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? false : !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id}}, \"data\", \"notes\"]",
            },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0}}"
        event="focus"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "No General Liability policy associated with this application. Please contact the application requestor.",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <Select
      id="documentStatusSelectGeneralLiability"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabled="{{ GetAttachments?.data === null || GetAttachments?.data?.filter((attachment) => attachment.type === 'General_Liability_Insurance').length === 0}}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Document Status"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{GetInsurances?.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.documentStatus}}"
      values=""
    >
      <Option id="a3ed4" disabled={false} hidden={false} value="Expired" />
      <Option id="401f0" disabled={false} hidden={false} value="Inactive" />
      <Option id="7ec4b" disabled={false} hidden={false} value="Unverified" />
      <Option id="2fe95" disabled={false} hidden={false} value="Verified" />
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? false : !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'General_Liability' && !insurance.invalidatedAt)[0]?.id}}, \"data\", \"documentStatus\"]",
            },
            { value: "{{self.value === null ? null : self.value}}" },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Spacer id="insuranceSpacer4" marginType="normal" />
    <Date
      id="workersCompExpirationDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value || GetAttachments?.data === null || GetAttachments?.data?.filter((attachment) => attachment.type === 'Workers_Comp_Insurance').length === 0}}"
      hidden="{{GetInsurances?.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt).length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt).length > 0}}"
      iconBefore="bold/interface-calendar"
      label="Expiration Date"
      labelPosition="top"
      marginType="normal"
      minDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{GetInsurances?.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt).length === 0 ? '#c4c4c4' : moment(workersCompExpirationDate.value).format('YYYY-MM-DD') !== moment(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.expirationDate).format('YYYY-MM-DD') ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetInsurances.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt).length === 0 ? null : moment(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.expirationDate)}}"
    >
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? false : !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id}}, \"data\", \"expirationDate\"]",
            },
            { value: "{{self.value === '' ? null : self.value }}" },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0}}"
        event="focus"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "No Worker's Comp policy associated with this application. \n{{GetInsurances?.data?.isWorkersCompRequired === 'no' ? 'Worker\\'s Comp exempt applications are currently not available to be processed through this application.': 'Please reach out to the application requestor'}} ",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <Date
      id="workersCompVerifiedDate"
      dateFormat="MM/dd/yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="{{ isLendingPartnerVettingUser.value }}"
      iconBefore="bold/interface-calendar"
      label="{{GetInsurances.data.insurances.filter((insurance) => insurance.insuranceType === 'workers_comp_exemption').length > 0 ? 'Worker\'s Comp Exemption Verified' : 'Worker\'s Compensation Verified'}}
"
      labelPosition="top"
      marginType="normal"
      maxDate="{{moment()}}"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      showClear={true}
      style={{
        ordered: [
          {
            border:
              "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt).length === 0 ? '#c4c4c4' : moment(workersCompVerifiedDate.value).format('YYYY-MM-DD') !== moment(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.verified).format('YYYY-MM-DD') && moment(workersCompVerifiedDate.value).format('YYYY-MM-DD') !== moment(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0]?.verified).format('YYYY-MM-DD') ? 'warning' : '#c4c4c4' }}",
          },
        ],
      }}
      value="{{GetInsurances?.data === null ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length > 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.verified : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption').length > 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0]?.verified : null}}"
    >
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length > 0 && !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id) ? true : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption').length > 0 && !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0]?.id)? true : false}}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0].id : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0].id :GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0].id : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id }}, \"data\", \"verified\"]",
            },
            {
              value:
                "{{self.value === '' ? null : self.value+moment().format().slice(10)}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <TextInput
      id="policyNumberTextInput2"
      disabled="{{ GetAttachments?.data === null || GetAttachments?.data?.filter((attachment) => attachment.type === 'Workers_Comp_Insurance').length === 0}}"
      hidden="{{GetInsurances?.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt).length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt).length > 0}}"
      label="Policy Number"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{\n    GetInsurances?.data?.insurances.filter(insurance => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt).length === 0 \n    ? '#c4c4c4' \n    : policyNumberTextInput2.value !== GetInsurances?.data?.insurances.filter(insurance => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.policyNumber\n    ? 'warning' \n    : '#c4c4c4'\n}}\n",
          },
        ],
      }}
      value="{{ 
    GetInsurances?.data?.insurances?.filter(insurance => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.policyNumber || null
}}
"
    >
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? false : !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp')[0].id}}, \"data\", \"policyNumber\"]",
            },
            { value: "{{self.value === null ? null : self.value}}" },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0}}"
        event="focus"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "ERROR:" },
                  {
                    description:
                      "No Worker's Comp policy associated with this application. \n{{GetInsurances?.data?.isWorkersCompRequired === 'no' ? 'Worker\\'s Comp exempt applications are currently not available to be processed through this application.': 'Please reach out to the application requestor'}} ",
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextArea
      id="workersCompVerificationNotesTextArea"
      autoResize={true}
      disabled=""
      label="{{GetInsurances.data.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption').length > 0 ? 'Worker\'s Comp Exemption Verification Notes' : 'Worker\'s Compensation Verification Notes'}}
"
      labelPosition="top"
      labelWrap={true}
      marginType="normal"
      minLines={2}
      placeholder="Notes go here"
      readOnly="{{ isLendingPartnerVettingUser.value }}"
      style={{
        ordered: [
          {
            border:
              "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length > 0 && workersCompVerificationNotesTextArea.value !== GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp')[0].notes && workersCompVerificationNotesTextArea.value !== '' ? 'warning' : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption').length > 0 && workersCompVerificationNotesTextArea.value !== GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption')[0].notes && workersCompVerificationNotesTextArea.value !== '' ? 'warning' : '#c4c4c4'}}",
          },
        ],
      }}
      value="{{GetInsurances?.data === null ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length > 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.notes : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption').length > 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0]?.notes : null}}"
    >
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length > 0 && !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id) ? true : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption').length > 0 && !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0]?.id)? true : false}}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0].id : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt)[0]?.id :GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption')[0].id : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp')[0].id }}, \"data\", \"notes\"]",
            },
            { value: "{{self.value}}" },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
    <Select
      id="documentStatusSelectWorkersComp"
      captionByIndex=""
      colorByIndex=""
      data=""
      disabled="{{ GetAttachments?.data === null || GetAttachments?.data?.filter((attachment) => attachment.type === 'Workers_Comp_Insurance').length === 0}}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hidden="{{GetInsurances?.data === null || GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt).length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp_Exemption' && !insurance.invalidatedAt).length > 0}}"
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      itemMode="static"
      label="Document Status"
      labelPosition="top"
      labels=""
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      tooltipByIndex=""
      value="{{ 
    GetInsurances?.data?.insurances?.filter(insurance => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.documentStatus || null
}}
"
      values=""
    >
      <Option id="a3ed4" disabled={false} hidden={false} value="Expired" />
      <Option id="401f0" disabled={false} hidden={false} value="Inactive" />
      <Option id="7ec4b" disabled={false} hidden={false} value="Unverified" />
      <Option id="2fe95" disabled={false} hidden={false} value="Verified" />
      <Event
        enabled="{{GetInsurances?.data?.insurances.length === 0 ? false : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? false : !Object.keys(insuranceUpdates.value).includes(GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id) }}"
        event="change"
        method="setIn"
        params={{
          ordered: [
            {
              keyPath:
                "[{{GetInsurances?.data?.insurances.length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id }}, \"where\", \"id\"]",
            },
            {
              value:
                "{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp' && !insurance.invalidatedAt)[0]?.id}}",
            },
          ],
        }}
        pluginId="insuranceUpdates"
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
                "[{{GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp').length === 0 ? null : GetInsurances?.data?.insurances.filter((insurance) => insurance.insuranceType === 'Workers_Comp')[0].id}}, \"data\", \"documentStatus\"]",
            },
            { value: "{{self.value === null ? null : self.value}}" },
          ],
        }}
        pluginId="insuranceUpdates"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Spacer id="insuranceSpacer5" marginType="normal" />
  </View>
</Container>
