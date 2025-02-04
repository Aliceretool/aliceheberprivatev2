const currentCase = {{ GetCase.data }};

if(!currentCase) return {};

return {
  context: currentCase?.context,
  eligibility_id: currentCase?.eligibility_id,
  // Contract - [Validity]
  policyNumber: currentCase?.policy?.policy_number,
  policyStartDate: currentCase?.policy?.validity?.start_date,
  policyEndDate: currentCase?.policy?.validity?.end_date,
  regularPayment: currentCase?.policy?.validity?.regular_payment,
  business_partner: currentCase?.business_partner,
  product: currentCase?.product,
  region_id: currentCase?.entity?.region_id,
  entity_id: currentCase?.entity?.id,
  countryOfOccurence: currentCase?.countryOfOccurence,
  // Beneficiary
  firstName: currentCase?.beneficiary?.firstName,
  lastName: currentCase?.beneficiary?.lastName,
  birthday: currentCase?.beneficiary?.birthday,
  beneficiary_nationality_id: currentCase?.beneficiary?.beneficiary_nationality_id,
  phoneNumber: currentCase?.beneficiary?.phoneNumber,
  email: currentCase?.beneficiary?.email,
  address: currentCase?.beneficiary?.address,
  hasGDPRConsent: currentCase?.hasGDPRConsent || 
     currentCase?.beneficiary?.hasGDPRConsent,
  requesterRole: currentCase?.requester?.contactRole_id,
  contact_motive_id: currentCase?.contact_motive_id,
  // Travel information
  travelStartDate: currentCase?.travelStartDate,
  travelEndDate: currentCase?.travelEndDate,
  travelType: currentCase?.travelType,
  transportationType: currentCase?.transportationType,
  travelCompanionNumber: currentCase?.travelCompanionNumber,
  travelCompany: currentCase?.travelCompany,
  travelMultipleCountry: currentCase?.travelMultipleCountry,
  travelWithPet: currentCase?.travelWithPet,
  travelNote: currentCase?.travelNote,
  // Initial Event
  eventDate: currentCase?.eventDate,
  case_nature_id: currentCase?.case_nature_id,
  event_id: currentCase?.event_id,
  isCrisis: currentCase?.isCrisis,
  crisis_id: currentCase?.crisis?.id,
  crisis_type_id: currentCase?.crisis?.crisis_type_id,
  eventDescription: currentCase?.eventDescription,
}