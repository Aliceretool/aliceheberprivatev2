const input = {{ JSON.parse(locationInput.value) }};

return {
  patient_location: {
    defauldAddress: input?.exact_patient_location.fullAddress,
    placeId: input?.exact_patient_location.placeId,
  },
  travel_companion_location: {
    defauldAddress: input?.travel_companion_location?.fullAddress,
    placeId: input?.travel_companion_location?.placeId,
  },
  is_patient_hospitalized: input?.is_patient_hospitalized || false,
  is_patient_oriented_by_ea: input?.is_patient_oriented_by_ea || false,
  admission_date: input?.admission_date || new Date(),
  discharge_date: input?.discharge_date || new Date(),
  doctor_name: input?.doctor_name,
  doctor_function: input?.doctor_function,
  hospital_department: input?.hospital_department,
  surgery_type: input?.surgery_type,
  doctor_phone: input?.doctor_phone,
  room_phone: input?.room_phone,
  people_affected: input?.people_affected,
  exact_patient_location_in_hospital: input?.exact_patient_location_in_hospital,
  patient_health_evolution: input?.patient_health_evolution,
  mna_hospital: input?.mna_hospital,
  manual_hospital: {
    hospital_name: input?.manual_hospital?.name,
    hospital_phone: input?.manual_hospital?.phone,
    hospital_address: {
      defauldAddress: input?.manual_hospital?.address?.fullAddress,
      placeId: input?.manual_hospital?.address?.placeId,
    },
  },
};