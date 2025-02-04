<Container
  id="CaseDetails_Case_Container"
  headerPadding="4px {{ widthLimiter.value }}px 4px 12px"
  hoistFetching={true}
  margin="0"
  padding="0"
  showBody={true}
  showBorder={false}
  showHeaderBorder={false}
  style={{ ordered: [{ headerBackground: "highlight" }] }}
>
  <View id="3d992" viewKey="View 1">
    <Text
      id="text41"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "h4Font" },
          { fontFamily: "h4Font" },
        ],
      }}
      value="Case details"
      verticalAlign="center"
    />
    <Button
      id="CaseDetails_Case_Container_Save_Button"
      disabled=""
      iconBefore="bold/interface-content-save"
      loading="{{ UpdateCase.isFetching }}"
      style={{
        ordered: [
          { fontSize: "tokens/9d79a723" },
          { fontWeight: "tokens/9d79a723" },
          { fontFamily: "tokens/9d79a723" },
        ],
      }}
      text="Save Changes"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="caseEditHandler"
        type="datasource"
        waitMs="1000"
        waitType="throttle"
      />
    </Button>
    <TextArea
      id="CaseDetails_CaseContext"
      autoResize={true}
      label="Context"
      labelPosition="top"
      minLines={2}
      placeholder="Context of the case..."
      readOnly="true"
      value="{{ caseInfoTransformer.value.context }}"
    />
    <Form
      id="CaseDetails_Case_Contract_Form"
      footerPadding="4px 12px"
      headerPadding="0"
      hoistFetching={true}
      initialData="{{ caseInfoTransformer.value }}"
      margin="0"
      padding="0"
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooterBorder={false}
      showHeader={true}
      showHeaderBorder={false}
    >
      <Header>
        <Text
          id="Contract_Form_Title"
          margin="8px"
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
              { color: "tokens/b03b43ea" },
            ],
          }}
          value="##### Contract{{ eligibilityTransformer?.value && ` - ${eligibilityTransformer.value}` }}"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="Contract_Form_Eligibility"
          captionByIndex=""
          colorByIndex=""
          data="{{ GetEligibility.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          formDataKey="eligibility_id"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Eligibility"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          values="{{ item.id }}"
        >
          <Option id="268b6" disabled={false} hidden={false} value="Option 1" />
        </Select>
        <TextInput
          id="Contract_Form_PolicyNum_Input"
          formDataKey="policyNumber"
          label="Policy Number"
          labelPosition="top"
          placeholder="11255361"
        />
        <Date
          id="Contract_Form_PolicyStart_Date"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="policyStartDate"
          iconAfter="line/interface-calendar"
          label="Start Date"
          labelPosition="top"
          showClear={true}
        />
        <Date
          id="Contract_Form_PolicyEnd_Date"
          customValidation="{{ policyDatesValidationTransformer.value }}"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="policyEndDate"
          iconAfter="line/interface-calendar"
          label="End Date"
          labelPosition="top"
        />
        <Select
          id="Contract_Form_BusinessPartner_Select"
          emptyMessage="No options"
          formDataKey="business_partner"
          itemMode="static"
          label="Business Partner"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Business partner"
          showClear={true}
          showSelectionIndicator={true}
          value=""
        >
          <Option id="806c5" value="Option 1" />
          <Option id="9bee2" value="Option 2" />
          <Option id="ed693" value="Option 3" />
        </Select>
        <Select
          id="Contract_Form_Product_Select"
          emptyMessage="No options"
          formDataKey="product"
          itemMode="static"
          label="Product"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Product service"
          showSelectionIndicator={true}
          value=""
        >
          <Option id="806c5" value="Option 1" />
          <Option id="9bee2" value="Option 2" />
          <Option id="ed693" value="Option 3" />
        </Select>
        <Select
          id="Contract_Form_Region_Select"
          captionByIndex=""
          colorByIndex=""
          data="{{ GetRegions.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          formDataKey="region_id"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Region"
          labelPosition="top"
          labels="{{ item.regionName }}"
          overlayMaxHeight={375}
          placeholder="Product service"
          readOnly="true"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value=""
          values="{{ item.id }}"
        />
        <Select
          id="Contract_Form_Entity_Select"
          captionByIndex="{{ item.countryCode }}"
          data="{{ Contract_Form_Region_Select.value ?Contract_Form_Region_Select.selectedItem.entities : GetEntities.data }}"
          disabled=""
          emptyMessage="No options"
          formDataKey="entity_id"
          label="Entity"
          labelPosition="top"
          labels="{{ item.country }}"
          overlayMaxHeight={375}
          placeholder="Product service"
          readOnly="true"
          showSelectionIndicator={true}
          value=""
          values="{{ item.id }}"
        />
        <Select
          id="Contract_Form_CountryOccurence_Select"
          captionByIndex="{{ item.countrysanctionpenalty.sanctionPenalty }}"
          colorByIndex="{{ item.countryCategory.category }}"
          data="{{ GetCountries.data }}"
          emptyMessage="No options"
          formDataKey="countryOfOccurence"
          label="Country of occurence "
          labelPosition="top"
          labels="{{ item.country }}"
          overlayMaxHeight={375}
          placeholder="Select option"
          showClear={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item.id }}"
        />
        <RadioGroup
          id="Contract_Form_RegularPayment_RadioGroup"
          formDataKey="regularPayment"
          groupLayout="wrap"
          heightType="fixed"
          itemMode="static"
          label="Regular payment"
          labelWidth="50"
          value=""
        >
          <Option id="6b5c0" label="Yes" value="true" />
          <Option id="6bc87" label="No" value="false" />
        </RadioGroup>
      </Body>
    </Form>
    <Divider
      id="divider13"
      margin="32px 12px"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 0.06)" }] }}
    />
    <Form
      id="CaseDetails_Case_Beneficiary_Form"
      footerPadding="4px 12px"
      headerPadding="0"
      hoistFetching={true}
      initialData="{{ caseInfoTransformer.value }}"
      margin="0"
      padding="0"
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooterBorder={false}
      showHeader={true}
      showHeaderBorder={false}
    >
      <Header>
        <Text
          id="Beneficiary_Form_Title"
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
              { color: "tokens/b03b43ea" },
            ],
          }}
          value="Beneficiary"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="Beneficiary_Form_FirstName_Input"
          formDataKey="firstName"
          label="First Name"
          labelPosition="top"
          pattern="\d+"
          placeholder="John"
        />
        <TextInput
          id="Beneficiary_Form_LastName_Input"
          formDataKey="lastName"
          label="Last Name"
          labelPosition="top"
          pattern="\d+"
          placeholder="Doe"
        />
        <Date
          id="Beneficiary_Form_Birthdate_Date3"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="birthday"
          iconAfter="line/interface-calendar"
          label="Birthday"
          labelPosition="top"
          textAfter="Age : {{ calculateAgeTransformer.value }}"
        />
        <Select
          id="Beneficiary_Form_Nationality_Select"
          captionByIndex=""
          colorByIndex=""
          data="{{ GetNationalities.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          formDataKey="beneficiary_nationality_id"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Nationality"
          labelPosition="top"
          labels="{{ item.nationality }}"
          overlayMaxHeight={375}
          placeholder="{{ self.data[0].nationaity }}"
          showClear={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          value=""
          values="{{ item.id }}"
        />
        <Text
          id="text21"
          value="Age : {{ calculateAgeTransformer.value }}"
          verticalAlign="center"
        />
        <PhoneNumberInput
          id="Beneficiary_Form_PhoneNumber_Input"
          formDataKey="phoneNumber"
          label="Phone Number"
          labelPosition="top"
          lockedCountryCode="US"
        />
        <TextInput
          id="Beneficiary_Form_Email_Input"
          formDataKey="email"
          iconBefore="bold/mail-send-envelope"
          label="Email"
          labelPosition="top"
          patternType="email"
          placeholder="you@example.com"
        />
        <TextInput
          id="Beneficiary_Form_Address_Input"
          formDataKey="address"
          label="Address"
          labelPosition="top"
        />
        <RadioGroup
          id="Beneficiary_Form_GDPR_RadioGroup"
          formDataKey="hasGDPRConsent"
          groupLayout="wrap"
          itemMode="static"
          label="The beneficiary has given his GDPR consent :"
          labelWidth="40"
          style={{
            ordered: [
              { sharedLabelFontSize: "tokens/9d79a723" },
              { sharedLabelFontWeight: "tokens/9d79a723" },
              { sharedLabelFontFamily: "tokens/9d79a723" },
            ],
          }}
          value="false"
        >
          <Option id="6b5c0" label="Yes" value="true" />
          <Option id="6bc87" label="No" value="false" />
        </RadioGroup>
        <Select
          id="Beneficiary_Form_RequesterRole_Select"
          data="{{ GetRequesterRoles.data }}"
          emptyMessage="No options"
          formDataKey="requesterRole"
          label="Requester Role"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="{{ self?.data[0]?.name }}"
          required={true}
          showClear={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item.id }}"
        />
        <Select
          id="Beneficiary_Form_ContactMotive_Select"
          data="{{ GetContactMotives.data }}"
          emptyMessage="No options"
          formDataKey="contact_motive_id"
          label="Contact motive"
          labelPosition="top"
          labels="{{ item.name }}"
          overlayMaxHeight={375}
          placeholder="Select motive"
          showClear={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item.id }}"
        />
      </Body>
    </Form>
    <Divider
      id="divider16"
      margin="32px 12px"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 0.06)" }] }}
    />
    <Form
      id="CaseDetails_Case_TravelInfo_Form"
      footerPadding="4px 12px"
      headerPadding="0"
      hoistFetching={true}
      initialData="{{ caseInfoTransformer.value }}"
      margin="0"
      padding="0"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooterBorder={false}
      showHeader={true}
      showHeaderBorder={false}
    >
      <Header>
        <Text
          id="TravelInfo_Form_Title"
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
              { color: "tokens/b03b43ea" },
            ],
          }}
          value="Travel information"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <DateRange
          id="TravelInfo_Form_Period_DateRange"
          dateFormat="MMM d, yyyy"
          endPlaceholder="End date"
          formDataKey="travelPeriod"
          iconBefore="bold/interface-calendar-remove"
          label="Travel dates"
          labelPosition="top"
          showClear={true}
          startPlaceholder="Start date"
          textBetween="-"
          value={{
            ordered: [
              { start: "{{ caseInfoTransformer.value.travelStartDate }}" },
              { end: "{{ caseInfoTransformer.value.travelEndDate }}" },
            ],
          }}
        />
        <Select
          id="TravelInfo_Form_TravelType_Select"
          emptyMessage="No options"
          formDataKey="travelType"
          itemMode="static"
          label="Type of travel"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Leisure"
          showSelectionIndicator={true}
          value=""
        >
          <Option id="806c5" value="Leisure" />
          <Option id="9bee2" value="Business" />
        </Select>
        <Multiselect
          id="TravelInfo_Form_TranferType_Select"
          emptyMessage="No options"
          formDataKey="transportationType"
          itemMode="static"
          label="Type of transportation"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="{{ self.data[0].value }}"
          showClear={true}
          showSelectionIndicator={true}
          value=""
          wrapTags={true}
        >
          <Option id="806c5" value="Airplane" />
          <Option id="9bee2" value="Train" />
          <Option id="ed693" value="Car" />
          <Option id="0ebc8" disabled={false} hidden={false} value="Bus" />
          <Option id="930d4" disabled={false} hidden={false} value="On foot" />
        </Multiselect>
        <TextInput
          id="TravelInfo_Form_TravelCompanyNum_Input"
          formDataKey="travelCompanionNumber"
          label="Travel companion number"
          labelPosition="top"
          pattern="\d+"
          patternType="regex"
          placeholder="0"
        />
        <Text
          id="text35"
          value="Total travel duration: **{{ travelDatesCalculationTransformer.value.totalDuration }}** days"
          verticalAlign="center"
        />
        <Text
          id="text36"
          value="Has been travelling for **{{ travelDatesCalculationTransformer.value.actualDuration }}** days"
          verticalAlign="center"
        />
        <TextInput
          id="TravelInfo_Form_Company_Input"
          formDataKey="travelCompany"
          label="Company"
          labelPosition="top"
          pattern="\d+"
          placeholder="Air France"
        />
        <Select
          id="TravelInfo_Form_MultipleCounty_Select"
          emptyMessage="No options"
          formDataKey="travelMultipleCountry"
          itemMode="static"
          label="Multiple country/ city trip"
          labelPosition="top"
          overlayMaxHeight={375}
          required={true}
          showSelectionIndicator={true}
          value="false"
        >
          <Option id="806c5" label="Yes" value="true" />
          <Option id="9bee2" label="No" value="false" />
        </Select>
        <Select
          id="TravelInfo_Form_TravelWithPet_Select"
          emptyMessage="No options"
          formDataKey="travelWithPet"
          itemMode="static"
          label="Traveling with pet"
          labelPosition="top"
          overlayMaxHeight={375}
          required={true}
          showSelectionIndicator={true}
          value="false"
        >
          <Option id="806c5" label="Yes" value="true" />
          <Option id="9bee2" label="No" value="false" />
        </Select>
        <TextInput
          id="TravelInfo_Form_traveNote_Input"
          formDataKey="travelNote"
          label="Travel  note / Itinary"
          labelPosition="top"
          placeholder="Supporting line text lorem ipsum dolor sit amet, consectetur."
          style={{ ordered: [{ background: "canvas" }] }}
        />
      </Body>
    </Form>
    <Divider
      id="divider17"
      margin="32px 12px"
      style={{ ordered: [{ color: "rgba(0, 0, 0, 0.06)" }] }}
    />
    <Form
      id="CaseDetails_Case_InitialSituation_Form"
      footerPadding="4px 12px"
      headerPadding="0"
      hoistFetching={true}
      initialData="{{ caseInfoTransformer.value }}"
      margin="0"
      padding="0"
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooterBorder={false}
      showHeader={true}
      showHeaderBorder={false}
    >
      <Header>
        <Text
          id="InitialSituation_Form_Title"
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
              { color: "tokens/b03b43ea" },
            ],
          }}
          value="Initial Event"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Date
          id="InitialSituation_Form_Event_Date"
          customValidation="{{ new Date(self.value) <= new Date() ? '' : 'The date must be in the past' }}"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          formDataKey="eventDate"
          iconBefore="bold/interface-calendar"
          label="Event date"
          labelPosition="top"
          required={true}
          value="{{ new Date() }}"
        />
        <Select
          id="InitialSituation_Form_CaseNature_Select"
          customValidation="{{ self.value ? '' : 'Please choose the Case nature' }}"
          data="{{ GetCaseNatures.data }}"
          emptyMessage="No options"
          formDataKey="case_nature_id"
          label="Case nature"
          labelPosition="top"
          labels="{{ _.startCase(item.name) }}"
          overlayMaxHeight={375}
          placeholder="{{ self.data[0].name }}"
          required={true}
          showClear={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item.id }}"
        />
        <Select
          id="InitialSituation_Form_EventType_Select"
          captionByIndex=""
          colorByIndex=""
          data="{{ GetEventTypes.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          formDataKey="event_id"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Event Type"
          labelPosition="top"
          labels="{{ item.type }}"
          overlayMaxHeight={375}
          placeholder="{{ self.data[0].type }}"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value=""
          values="{{ item.id }}"
        />
        <Checkbox
          id="InitialSituation_Form_Crisis_Checkbox"
          formDataKey="isCrisis"
          label="Crisis"
          labelWidth="100"
        />
        <Select
          id="InitialSituation_Form_CrisisType_Select"
          data="{{ GetCrisisTypes.data }}"
          disabled="{{ !InitialSituation_Form_Crisis_Checkbox.value }}"
          emptyMessage="No options"
          formDataKey="crisis_type_id"
          label="Crisis Type"
          labelPosition="top"
          labels="{{ item.type }}"
          overlayMaxHeight={375}
          placeholder="{{ self.data[0].type }}"
          required="{{ InitialSituation_Form_Crisis_Checkbox.value }}"
          showClear={true}
          showSelectionIndicator={true}
          value=""
          values="{{ item.id }}"
        />
        <Select
          id="InitialSituation_Form_CrisisLabel_Select"
          data="{{ GetCrises.data }}"
          disabled="{{ !InitialSituation_Form_Crisis_Checkbox.value || !InitialSituation_Form_CrisisType_Select.value }}"
          emptyMessage="No options"
          formDataKey="crisis_id"
          label="Crisis label"
          labelPosition="top"
          labels="{{ item.label }}"
          overlayMaxHeight={375}
          placeholder="{{ self?.data[0]?.value }}"
          readOnly=""
          required="{{ InitialSituation_Form_Crisis_Checkbox.value }}"
          showSelectionIndicator={true}
          value=""
          values="{{ item.id }}"
        />
        <TextInput
          id="InitialSituation_Form_EventDescr_Input"
          formDataKey="eventDescription"
          label="Event description"
          labelPosition="top"
          placeholder="Supporting line text lorem ipsum dolor sit amet, consectetur."
          showClear={true}
          style={{ ordered: [{ background: "canvas" }] }}
        />
        <Module
          id="BeneficiaryLocationModule_CaseDetailsTab"
          locationInput="{{ JSON.stringify(currentLocation.value) }}"
          margin="0"
          name="Beneficiary Location module"
          pageUuid="f45b32e3-6c64-46d2-80b2-90dea614e9f5"
        />
      </Body>
    </Form>
  </View>
</Container>
