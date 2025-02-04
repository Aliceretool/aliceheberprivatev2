const caseInfo = {{ caseInfoTransformer.value }};
const contractFormData = {{ CaseDetails_Case_Contract_Form.data }};
const beneficiaryFormData = {{ CaseDetails_Case_Beneficiary_Form.data }};
const travelInfoFormData = {{ CaseDetails_Case_TravelInfo_Form.data }};
const initialSituationFormData = {{ CaseDetails_Case_InitialSituation_Form.data }};

const travelStartDate = travelInfoFormData.travelPeriod.start;
const travelEndDate = travelInfoFormData.travelPeriod.end;

delete travelInfoFormData.travelPeriod;

const existingPolicy = {{ GetCasePolicy.data }}; 
const policy = {
  id: existingPolicy.id,
  policyNumber: contractFormData.policyNumber,
  validity: {
    regularPayment: contractFormData.regularPayment,
    startDate: contractFormData.policyStartDate,
    endDate: contractFormData.policyEndDate,
    id: existingPolicy.validity.id
  }  
}

return {
  ...caseInfo,
  ...contractFormData,
  ...beneficiaryFormData,
  beneficiary: beneficiaryFormData,
  ...travelInfoFormData,
  ...initialSituationFormData,
  policy,
  travelStartDate,
  travelEndDate
}