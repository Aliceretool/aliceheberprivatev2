const value = SameAsRequester_Radio.value;

let beneficiaryFirstName = "";
let beneficiaryLastName = "";
let beneficiaryPhoneNumber = "";

if (value) {
  beneficiaryFirstName = RequesterFirstName_Input.value;
  beneficiaryLastName = RequesterLastName_Input.value;
  beneficiaryPhoneNumber = RequesterPhoneNumber_Input.value;
}

BeneficiaryFirstName_Input.setValue(beneficiaryFirstName);
BeneficiaryLastName_Input.setValue(beneficiaryLastName);
BeneficiaryPhoneNumber_Input.setValue(beneficiaryPhoneNumber)