const isValidContractFrom = await CaseDetails_Case_Contract_Form.validate();

const isValidBeneficiaryForm = await CaseDetails_Case_Beneficiary_Form.validate();

const isValidTravelForm = await CaseDetails_Case_TravelInfo_Form.validate();

const isValidInitialSituationForm = !InitialSituation_Form_Event_Date.invalid &&
!InitialSituation_Form_CaseNature_Select.invalid

if(isValidContractFrom && isValidBeneficiaryForm && isValidTravelForm && isValidInitialSituationForm) {
  await UpdateCase.trigger();
  await createUpdateLocationCDTHandler.trigger()
}