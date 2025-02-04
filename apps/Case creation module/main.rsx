<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="policyExtId" />
  <GlobalWidgetProp id="selectedInteractionCall" description="" />
  <GlobalWidgetProp id="trigger" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Form
        id="CallerInformation_Form"
        footerPadding="4px 12px"
        headerPadding="0"
        margin="0"
        padding="0"
        requireValidation={true}
        resetAfterSubmit={true}
        showBody={true}
        showBorder={false}
      >
        <Header>
          <Text
            id="formTitle7"
            value="#### Form title"
            verticalAlign="center"
          />
        </Header>
        <Body>
          <Text
            id="Requester_Title"
            margin="8px"
            style={{
              ordered: [
                { fontSize: "h5Font" },
                { fontWeight: "h5Font" },
                { fontFamily: "h5Font" },
              ],
            }}
            value="**Requester**"
            verticalAlign="center"
          />
          <Text
            id="Beneficiary_Title"
            margin="8px"
            style={{
              ordered: [
                { fontSize: "h5Font" },
                { fontWeight: "h5Font" },
                { fontFamily: "h5Font" },
              ],
            }}
            value="**Beneficiary**"
            verticalAlign="center"
          />
          <RadioGroup
            id="SameAsRequester_Radio"
            formDataKey="sameAsRequester"
            groupLayout="wrap"
            itemMode="static"
            label="Same as requester"
            labelWidth="50"
            margin="8px 8px"
            style={{
              ordered: [
                { sharedLabelFontSize: "defaultFont" },
                { sharedLabelFontWeight: "defaultFont" },
                { sharedLabelFontFamily: "defaultFont" },
              ],
            }}
            value="false"
          >
            <Option id="04381" label="Yes" value="true" />
            <Option id="c0456" label="No" value="false" />
            <Event
              event="change"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="handleSameAsRequester"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </RadioGroup>
          <Select
            id="RequesterRole_Select"
            data="{{ contactRoles.value }}"
            emptyMessage="No options"
            formDataKey="contactRoleId"
            label="Role"
            labelPosition="top"
            labels="{{ item.name }}"
            overlayMaxHeight={375}
            placeholder="Subscriber"
            required={true}
            showSelectionIndicator={true}
            value="{{ selectedInteractionCall?.value?.requesterData?.contactRole_id }}"
            values="{{ item.id }}"
          >
            <Event
              event="change"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="handleRequesterRole"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <TextInput
            id="BeneficiaryFirstName_Input"
            formDataKey="beneficiaryFirstName"
            label="First Name"
            labelPosition="top"
            placeholder="John"
            value="{{ selectedInteractionCall?.value?.beneficiaryData?.firstName }}"
          />
          <TextInput
            id="BeneficiaryLastName_Input"
            formDataKey="beneficiaryLastName"
            label="Last Name"
            labelPosition="top"
            placeholder="Doe"
            value="{{ selectedInteractionCall?.value?.beneficiaryData?.lastName }}"
          />
          <TextInput
            id="RequesterFirstName_Input"
            formDataKey="requesterFirstName"
            label="First Name"
            labelPosition="top"
            placeholder="John"
            required={true}
            value="{{ selectedInteractionCall?.value?.requesterData?.firstName }}"
          />
          <TextInput
            id="RequesterLastName_Input"
            formDataKey="requesterLastName"
            label="Last Name"
            labelPosition="top"
            placeholder="Doe"
            required={true}
            value="{{ selectedInteractionCall?.value?.requesterData?.lastName }}"
          />
          <PhoneNumberInput
            id="BeneficiaryPhoneNumber_Input"
            formDataKey="beneficiaryPhoneNumber"
            label="Phone Number"
            labelPosition="top"
            lockedCountryCode="US"
            value="{{ selectedInteractionCall?.value?.beneficiaryData?.phoneNumber }}"
          />
          <TextInput
            id="BeneficiaryPolicyNumber_Input"
            customValidation={
              '{{ !BeneficiaryPolicyNumber_Input.value || /^[a-zA-Z0-9-]+$/.test(BeneficiaryPolicyNumber_Input.value) ? "" : "Policy number should contain only letters, digits and hyphens" }}'
            }
            formDataKey="policyNumber"
            label="Policy Number"
            labelPosition="top"
            placeholder="XXXXXXXX"
            value="{{ selectedInteractionCall?.value?.beneficiaryData?.policyNumber }}"
          />
          <PhoneNumberInput
            id="RequesterPhoneNumber_Input"
            formDataKey="requesterPhoneNumber"
            label="Phone Number"
            labelPosition="top"
            lockedCountryCode="US"
            value="{{ selectedInteractionCall?.value?.phoneNumber }}"
          />
          <TextInput
            id="Email_Input"
            formDataKey="email"
            iconBefore="bold/mail-send-envelope"
            label="Email"
            labelPosition="top"
            patternType="email"
            placeholder="you@example.com"
            value="{{ selectedInteractionCall?.value?.requesterData?.email }}"
          />
          <Select
            id="BeneficiaryContactMotive_Select"
            captionByIndex=""
            colorByIndex=""
            data="{{ contactMotives.value }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="contactMotiveId"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Contact Motive"
            labelPosition="top"
            labels="{{ _.startCase(item.name) }}"
            overlayMaxHeight={375}
            placeholder="Motive"
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ selectedInteractionCall?.value.case?.contactMotive }}"
            values="{{ item.id }}"
          />
          <Select
            id="BeneficiaryCaseNature_Select"
            captionByIndex=""
            colorByIndex=""
            data="{{ caseNatures.value }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="caseNatureId"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Case Nature"
            labelPosition="top"
            labels="{{ _.startCase(item.name) }}"
            overlayMaxHeight={375}
            placeholder="Medical"
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ selectedInteractionCall?.value.case?.caseNature }}"
            values="{{ item.id }}"
          />
          <Select
            id="BusinessPartner_Select"
            captionByIndex=""
            colorByIndex=""
            data=""
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="businessPartner"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            itemMode="static"
            label="Business Partner"
            labelPosition="top"
            labels=""
            overlayMaxHeight={375}
            placeholder="Business Partner"
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ self.data[0].value }}"
            values=""
          >
            <Option
              id="7bc14"
              disabled={false}
              hidden={false}
              value={
                '{{ selectedInteractionCall?.value?.businessPartner || "Dummy Generali" }}'
              }
            />
          </Select>
          <Select
            id="Product_Select"
            captionByIndex=""
            colorByIndex=""
            data=""
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            formDataKey="product"
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            itemMode="static"
            label="Product"
            labelPosition="top"
            labels=""
            overlayMaxHeight={375}
            placeholder="Product Service"
            showSelectionIndicator={true}
            tooltipByIndex=""
            value="{{ self.data[0].value }}"
            values=""
          >
            <Option
              id="36ba4"
              disabled={false}
              hidden={false}
              value={
                '{{ selectedInteractionCall?.value?.product || "Dummy Product" }}'
              }
            />
          </Select>
          <Spacer id="spacer1" />
          <Select
            id="BeneficiaryLocation_Select"
            captionByIndex="SP: {{ item.countrysanctionpenalty.sanctionPenalty }}"
            colorByIndex="{{ item.countryCategory.category }}"
            data="{{ GetBeneficiaryCountries.data }}"
            emptyMessage="No options"
            formDataKey="beneficiaryLocation"
            label="Beneficiary Location"
            labelPosition="top"
            labels="{{ item.country }}"
            overlayMaxHeight={375}
            overlayMinWidth="375"
            placeholder="Select an option"
            showClear={true}
            showSelectionIndicator={true}
            values="{{ item.id }}"
          />
          <RadioGroup
            id="GDPR_Radio"
            formDataKey="gdpr"
            groupLayout="wrap"
            itemMode="static"
            label="GDPR consent"
            labelWidth="40"
            margin="12px 8px 12px 12px"
            value="false"
          >
            <Option id="20a3c" label="Yes" value="true" />
            <Option id="0f85f" label="No" value="false" />
          </RadioGroup>
          <TextArea
            id="Context_TextArea"
            autoResize={true}
            formDataKey="context"
            label="Context / Request"
            labelPosition="top"
            minLines="4"
            placeholder="Supporting line text lorem ipsum dolor sit amet, consectetur."
            style={{ ordered: [{ background: "canvas" }] }}
            value="{{ selectedInteractionCall?.value.case?.context }}"
          />
          <Button
            id="CreateCase_Button"
            loading="{{ createCase.isFetching }}"
            submitTargetId=""
            text="Force eligibility"
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
              pluginId="runTheTrigger"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Button>
        </Body>
        <Footer>
          <Button
            id="formButton7"
            submit={true}
            submitTargetId="CallerInformation_Form"
            text="Submit"
          />
        </Footer>
      </Form>
    </ModuleContainerWidget>
  </Frame>
</App>
