<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="locationInput"
    defaultValue={
      '{{ JSON.stringify({"id":"0932da51-2e8d-4537-87fa-3338e9f1858b","case_id":"4f529fac-4cf0-4fca-8ae8-22befae1e603","country_id":"936d3c38-35cd-487e-b0d9-10a79ff710b0","admission_date":"2025-01-21","discharge_date":"2025-01-21","doctor_name":"3","doctor_function":"Option 3","hospital_department":"Option 3","surgery_type":"geewewqew","doctor_phone":"+1","room_phone":"+1","people_affected":3,"exact_patient_location":{"lat":62.46363179999999,"lng":6.312507399999999,"zip":"6017","city":"","code":"NO","name":"Ålesund Sykehus","region":"Møre og Romsdal","street":"Åsehaugen","country":"Norway","placeId":"ChIJJ0SyuBbFFkYRQBI0YsAm3KU","fullAddress":"Ålesund sjukehus, Åsehaugen, Ålesund, Norway","streetNumber":"5"},"travel_companion_location":{"lat":21.0212566,"lng":105.7719419,"zip":"","city":"","code":"VN","name":"322 Mỹ Đình 1","region":"Hà Nội","street":"Mỹ Đình 1","country":"Vietnam","placeId":"ChIJL-7k-a5UNDER1vqRb_tzCJ4","fullAddress":"322 Mỹ Đình 1, Nhân Mỹ, Mỹ Đình 1, Nam Từ Liêm, Hanoi, Vietnam","streetNumber":"322"},"is_patient_hospitalized":true,"is_patient_oriented_by_ea":true,"exact_patient_location_in_hospital":"eqgeergqrgqr","patient_health_evolution":"hqererqher","mna_hospital":{"id":3491618,"ids":[],"lat":26.032281,"lng":-80.183557,"city":"Hollywood","name":"Doctors Now","type":"HCF","costs":"5","level":true,"range":0,"skill":{"speGal":"Outpatient facility / No inpatient services","speDetail":[],"otherSpecialties":[]},"stars":0,"audits":[],"emails":[{"type":2,"email":"assistances@doctorsnowusa.com","email2":"","comments":"","emailType":null,"displayOrder":null},{"type":9,"email":"assistances@doctorsnowusa.com","email2":null,"comments":null,"emailType":null,"displayOrder":null}],"phones":[{"fax":null,"type":1,"number":"+19544149995","comments":null,"extension":null,"phoneType":"H24","displayOrder":null},{"fax":null,"type":4,"number":"+19544149995","comments":null,"extension":null,"phoneType":"Office Hours","displayOrder":null}],"address":" 3990 Sheridan Street, Suite 212 33021 <br> Hollywood - United States","country":"United States","hcfType":"House Call Doctor services","quality":null,"tariffs":null,"benefits":"4","distance":4130.315500132825,"infogram":{"id":3494631,"name":"N-0266","active":1,"endDate":null,"startDate":"2023-06-30T00:00:00","description":"HCD only in Dade, Broward, Palm Beach, Orlando, New York, Washington DC, San Francisco and Chicago","isImportant":true},"typeEnum":3,"contracts":null,"currency1":"USD - United States Dollar","houseCall":true,"hubRegion":"AMERICAS","inpatient":false,"isAudited":false,"isPrivate":true,"outpatient":true,"physicians":null,"countryCode":"US","phnHcfRoles":null,"targetPoint":null,"hubSubRegion":"AMERICAS","idSalesForce":"0010Y00000SHJrzQAH","isContracted":false,"hospitalLevel":5,"isBlacklisted":false,"parentAccount":null,"administration":null,"providerLabels":null,"eagNetworkClass":null,"idParentAccount":null,"isDirectPayment":true,"networkPriority":1,"coveredCountries":[],"nationalCoverage":true,"outpatientRating":null,"hasCountryBoarded":true,"visibleToCustomer":false,"availableLanguages":["English","Spanish"],"departmentContacts":[],"individualContacts":[],"businessInformation":null,"priorityCalculation":14,"servicesRestrictions":null,"departmentSpecialities":["Outpatient_Clinic"],"hospitalTotalNumberOfBeds":null},"manual_hospital":"","is_initial_event":false,"start_date":"2025-01-01","end_date":"2025-01-01","created_by":null,"created_at":1737593064816})}}'
    }
  />
  <GlobalWidgetOutput
    id="locationOutput"
    value="{{ locationOutputTransformer.value }}"
  />
  <Include src="./src/HospitalSearch_Modal.rsx" />
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
      <Module
        id="ExactPatientLocation_Module"
        defaultAddress="{{ locationInputTransformer.value.patient_location.defauldAddress }}"
        label="Exact patient location"
        margin="0px"
        name="Google Maps Search Module"
        pageUuid="e9b5e83c-2bb0-4e37-bbc3-30e22404c26d"
        placeId="{{ locationInputTransformer.value.patient_location.placeId }}"
        required=""
      />
      <Module
        id="TravelCompanionLocation_Module"
        defaultAddress="{{ locationInputTransformer.value.travel_companion_location.defauldAddress }}"
        label="Travel companion location"
        margin="0px"
        name="Google Maps Search Module"
        pageUuid="e9b5e83c-2bb0-4e37-bbc3-30e22404c26d"
        placeId="{{ locationInputTransformer.value.travel_companion_location.placeId }}"
        required=""
      />
      <RadioGroup
        id="IsPatientHospitalized_RadioButton"
        formDataKey="is_patient_hospitalized"
        groupLayout="wrap"
        itemMode="static"
        label="Is patient hospitalized?"
        labelWidth="60"
        labelWrap={true}
        required={true}
        style={{ ordered: [] }}
        value="{{ locationInputTransformer.value.is_patient_hospitalized }}"
      >
        <Option id="f4724" label="Yes" value="true" />
        <Option id="5461a" label="No" value="false" />
      </RadioGroup>
      <RadioGroup
        id="IsPatientOrientedByEa_RadioButton"
        captionByIndex=""
        data=""
        disabled="{{ !IsPatientHospitalized_RadioButton.value }}"
        disabledByIndex=""
        formDataKey="is_patient_oriented_by_ea"
        groupLayout="wrap"
        hiddenByIndex=""
        itemMode="static"
        label="Was the patient oriented by EA?"
        labels=""
        labelWidth="45"
        labelWrap={true}
        required="{{ IsPatientHospitalized_RadioButton.value }}"
        tooltipByIndex=""
        value="{{ locationInputTransformer.value.is_patient_oriented_by_ea }}"
        values=""
      >
        <Option
          id="64bb3"
          disabled={false}
          hidden={false}
          label="Yes"
          value="true"
        />
        <Option
          id="49db4"
          disabled={false}
          hidden={false}
          label="No"
          value="false"
        />
      </RadioGroup>
      <Button
        id="SearchHospital_Button"
        disabled="{{ !IsPatientHospitalized_RadioButton.value }}"
        iconBefore="bold/interface-search"
        style={{ ordered: [] }}
        styleVariant="outline"
        text="Hospital"
      >
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="HospitalSearch_Modal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Button
        id="AddManually_Button"
        iconBefore="bold/interface-add-1"
        style={{ ordered: [] }}
        styleVariant="outline"
        text="Add manually"
      >
        <Event
          event="click"
          method="setCurrentViewIndex"
          params={{ ordered: [{ viewIndex: "1" }] }}
          pluginId="HospitalInfo_Container"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setValue"
          params={{ ordered: [{ value: "true" }] }}
          pluginId="isHospitalInfoTriggered"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </Button>
      <Include src="./src/HospitalInfo_Container.rsx" />
      <Spacer id="spacer44" hidden="{{ !isHospitalInfoTriggered.value }}" />
      <Date
        id="Admission_Date"
        dateFormat="MMM d, yyyy"
        datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
        hidden="{{ !isHospitalInfoTriggered.value }}"
        iconBefore="bold/interface-calendar"
        label="Admission date"
        labelPosition="top"
        required="{{ !self.hidden }}"
        value="{{  locationInputTransformer.value.admission_date }}"
      />
      <Date
        id="Discharge_Date"
        dateFormat="MMM d, yyyy"
        datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
        hidden="{{ !isHospitalInfoTriggered.value }}"
        iconBefore="bold/interface-calendar"
        label="Discharge date"
        labelPosition="top"
        value="{{  locationInputTransformer.value.discharge_date }}"
      />
      <Spacer id="spacer45" hidden="{{ !isHospitalInfoTriggered.value }}" />
      <TextInput
        id="PatientDoctorName_Input"
        hidden="{{ !isHospitalInfoTriggered.value }}"
        label="Patient Doctor`s name"
        labelPosition="top"
        placeholder="Enter value"
        value="{{  locationInputTransformer.value.doctor_name }}"
      />
      <Select
        id="DoctorFunction_Select"
        emptyMessage="No options"
        hidden="{{ !isHospitalInfoTriggered.value }}"
        itemMode="static"
        label="Doctor`s function"
        labelPosition="top"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="{{  locationInputTransformer.value.doctor_function }}"
      >
        <Option id="1323d" value="Option 1" />
        <Option id="0e660" value="Option 2" />
        <Option id="d9372" value="Option 3" />
      </Select>
      <Select
        id="HospitalDepartment_Select"
        emptyMessage="No options"
        hidden="{{ !isHospitalInfoTriggered.value }}"
        itemMode="static"
        label="Hospital’s departement"
        labelPosition="top"
        overlayMaxHeight={375}
        placeholder="Select an option"
        showSelectionIndicator={true}
        value="{{  locationInputTransformer.value.hospital_department }}"
      >
        <Option id="1323d" value="Option 1" />
        <Option id="0e660" value="Option 2" />
        <Option id="d9372" value="Option 3" />
      </Select>
      <TextInput
        id="SurgeryType_Input"
        hidden="{{ !isHospitalInfoTriggered.value }}"
        label="Surgery Type"
        labelPosition="top"
        placeholder="Enter value"
        value="{{  locationInputTransformer.value.surgery_type }}"
      />
      <Spacer id="spacer46" hidden="{{ !isHospitalInfoTriggered.value }}" />
      <PhoneNumberInput
        id="Doctor_PhoneNumber"
        hidden="{{ !isHospitalInfoTriggered.value }}"
        label="Doctor’s Phone"
        labelPosition="top"
        lockedCountryCode="US"
        value="{{  locationInputTransformer.value.doctor_phone }}"
      />
      <PhoneNumberInput
        id="Room_PhoneNumber"
        hidden="{{ !isHospitalInfoTriggered.value }}"
        label="Room’s Phone"
        labelPosition="top"
        lockedCountryCode="US"
        value="{{  locationInputTransformer.value.room_phone }}"
      />
      <NumberInput
        id="OtherPeopleAffected_NumberInput"
        currency="USD"
        hidden="{{ !isHospitalInfoTriggered.value }}"
        inputValue={0}
        label="Other people affected"
        labelPosition="top"
        min="0"
        placeholder="Enter value"
        showSeparators={true}
        showStepper={true}
        value="{{  locationInputTransformer.value.people_affected }}"
      />
      <Spacer id="spacer47" hidden="{{ !isHospitalInfoTriggered.value }}" />
      <TextArea
        id="ExactPatientLocationInHospital_TextArea"
        autoResize={true}
        hidden="{{ !isHospitalInfoTriggered.value }}"
        label="Exact patient location in the hospital"
        labelPosition="top"
        minLines="3"
        placeholder="Enter value"
        value="{{  locationInputTransformer.value.exact_patient_location_in_hospital }}"
      />
      <Spacer id="spacer43" hidden="{{ !isHospitalInfoTriggered.value }}" />
      <TextArea
        id="PatientHealthEvolution_TextArea"
        autoResize={true}
        hidden="{{ !isHospitalInfoTriggered.value }}"
        label="Patient health evolution"
        labelPosition="top"
        minLines="3"
        placeholder="Enter value"
        value="{{  locationInputTransformer.value.patient_health_evolution }}"
      />
    </ModuleContainerWidget>
  </Frame>
</App>
