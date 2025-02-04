const contractFormData = {{ CaseDetails_Case_Contract_Form.data }};
const beneficiaryFormData = {{ CaseDetails_Case_Beneficiary_Form.data }};
const initialSituationFormData = {{ CaseDetails_Case_InitialSituation_Form.data }};
const travelInfoFormData = {{ CaseDetails_Case_TravelInfo_Form.data }};
const keysToExclude = [
  "eligibility_id",
  "contact_motive_id",
  "address",
  "requseterRole",
  "travelNote",
  "other_people_affected",
  "doctor_phone",
  "room_phone",
  "surgery_type",
  "doctor_function",
  "hospital_department",
  "exact_location_in_hospital",
  "patient_health_evolution",
  "patient_doctor_name",
  "crisis_id",
  "crises_type_id",
  "eventDescription",
  "isCrisis",
  "is_patient_hospitalized",
  "is_patient_oriented_by_ea",
  "requesterRole",
  "contactMotive",
  "crises_id",
  "crisis_type_id",
  "Admission_Date",
  "Discharge_Date",
  "DoctorFunction_Select",
  "Doctor_PhoneNumber",
  "ExactPatientLocationInHospital_TextArea",
  "HospitalDepartment_Select",
  "HospitalName_Input",
  "Hospital_PhoneNumber",
  "Hospital_Rating",
  "Keywords_Select",
  "OtherPeopleAffected_NumberInput",
  "PatientDoctorName_Input",
  "PatientHealthEvolution_TextArea",
  "Room_PhoneNumber",
  "Speciality_Select",
  "SurgeryType_Input",
  "What_Select",
];
const formValues = {
  ...contractFormData,
  ...beneficiaryFormData,
  ...initialSituationFormData,
  ...travelInfoFormData,
};
const filteredFormValues = Object.fromEntries(
  Object.entries(formValues).filter(([key]) => !keysToExclude.includes(key))
);
const validationResults = Object.entries(filteredFormValues).reduce(
  (acc, [key, value]) => {
    if (key === "travelPeriod") {
      acc[key] = _.isEmpty(value.start) || _.isEmpty(value.end)
    } else if (key === "hasGDPRConsent") {
      acc[key] = value !== true;
    }
      else if (_.isBoolean(value)){
        acc[key]= false;
      }
    else {
      acc[key] = _.isEmpty(value);
    }
    return acc;
  },
  {}
);
const isWarningRequired = Object.values(validationResults).some(
  (val) => val === true
);
return isWarningRequired;
