const KICK_BACK_SECTION = kickBackSection.value;
const COMPANY_INFO = "companyInfo";
const INSURANCES = "insurances";
const PRINCIPALS = "principals";
const FINANCIALS = "financials";

const createInvalidatedData = (id) => ({
  "where": { "id": id },
  "data": { "invalidatedAt": moment().format() }
});

// handle kickback for company info
const handleCompanyInfoKickback = () => {
  const sampleContractId = kickBackAttachmentIds.value.Sample_Contract;
  return sampleContractId ? [createInvalidatedData(sampleContractId)] : [];
}

// handle kickback for insurances
const handleInsurancesKickback = () => {
  const insurances = GetInsurances.data?.insurances || [];
  const insurancesToInvalidate = insuranceDocumentsToInvalidateMultiselect.value;
  const attachmentIds = kickBackAttachmentIds.value;
  const invalidatedInsurances = [];

  const invalidatedInsuranceData = insurancesToInvalidate.map((key => {
    if (attachmentIds[key]) {
      invalidatedInsurances.push(attachmentIds[key]);
      return createInvalidatedData(attachmentIds[key])
    }})).filter(x => x);

  // invalidate documents attached to insurances
  const attachmentsToInvalidate = insurances.map(insurance => {
    if (!insurance?.invalidatedAt && invalidatedInsurances.includes(insurance.id)) {
      return createInvalidatedData(insurance.attachments[0].id);
    }
  }).filter(x => x);
  
  attachmentsToInvalidateFromInsurance.setValue(attachmentsToInvalidate);
  return invalidatedInsuranceData;
}


// handle kickback for ownwership (principals)
const handlePrincipalsKickback = () => {
  const isCAFOnly = principalsKickBackSelectionRadioGroup.value === "kickBackCafOnly";
  const principals = GetInstallerAppUsers.data.principalList || [];

  return isCAFOnly 
    ? principals
      .filter(principal => principalSelectionMultiSelect.value.includes(principal.id))
      .map(principal => createInvalidatedData(principal.creditAuthorizationForms[0].id))
      .filter(x => x)
    : [];
}

// handle kickback for financials
const handleFinancialsKickback = () => {
  const financials = GetFinancialStatements.data || [];
  const financialsToInvalidate = financialsDocumentsToInvalidateMultiselect.value;
  const invalidatedFinancials = [];

  const invalidatedFinancialData = financialsToInvalidate.map((key => {
    const invalidatedFinancial = financials.find(financial => financial.statementType === key && !financial.invalidatedAt);
    
    if (invalidatedFinancial?.id) {
      invalidatedFinancials.push(invalidatedFinancial?.id);
      return createInvalidatedData(invalidatedFinancial?.id);
    }})).filter(x => x);

  // invalidate documents attached to financials
  const attachmentsToInvalidate = financials.map(financial => {
    if (!financial?.invalidatedAt && invalidatedFinancials.includes(financial.id)) {
      return financial.attachments.map(attachment => createInvalidatedData(attachment.id));
    }
  }).filter(x => x).flat();
  
  attachmentsToInvalidateFromInsurance.setValue(attachmentsToInvalidate);
  return invalidatedFinancialData;
}

switch (KICK_BACK_SECTION) {
  case COMPANY_INFO:
    return handleCompanyInfoKickback();
  case INSURANCES:
    return handleInsurancesKickback();
  case PRINCIPALS:
    return handlePrincipalsKickback();
  case FINANCIALS:
    return handleFinancialsKickback();
  default:
    return [];
}