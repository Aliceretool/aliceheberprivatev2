const location = {
  admission_date: {{ Admission_Date.value }},
  discharge_date: {{ Discharge_Date.value }},
  doctor_name: {{ PatientDoctorName_Input.value }},
  doctor_function: {{ DoctorFunction_Select.value }},
  hospital_department: {{HospitalDepartment_Select.value}},
  surgery_type: {{SurgeryType_Input.value}},
  doctor_phone: {{Doctor_PhoneNumber.parsedValue.internationalNumber}},
  room_phone: {{Room_PhoneNumber.parsedValue.internationalNumber}},
  people_affected: {{OtherPeopleAffected_NumberInput.value}},
  exact_patient_location: {{JSON.parse(ExactPatientLocation_Module?.address) || {}}},
  travel_companion_location: {{JSON.parse(TravelCompanionLocation_Module?.address) || {}}},
  is_patient_hospitalized: {{IsPatientHospitalized_RadioButton.value}},
  is_patient_oriented_by_ea: {{IsPatientOrientedByEa_RadioButton.value}},
  exact_patient_location_in_hospital: {{ExactPatientLocationInHospital_TextArea.value}},
  patient_health_evolution: {{PatientHealthEvolution_TextArea.value}},
  mna_hospital: {{ HospitalInfo_Container.currentViewKey === 'mna' ? selectedMnaHospital.value : null }},
  manual_hospital: {{ HospitalInfo_Container.currentViewKey === 'manual' ? { name: HospitalName_Input.value, phone: Hospital_PhoneNumber.parsedValue.internationalNumber, address: JSON.parse(HospitalLocation_Module?.address) || {} } : null }},
};

return JSON.stringify(location)
//return location