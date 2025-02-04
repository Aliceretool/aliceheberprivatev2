const roles = contactRoles.value;
const selectedRoleId = RequesterRole_Select.value;
const selectedRole = roles.find((role) => role.id === selectedRoleId);
const isRequesterBeneficiary = selectedRole?.name === "Beneficiary";
SameAsRequester_Radio.setValue(isRequesterBeneficiary);
if (isRequesterBeneficiary) {
  await handleSameAsRequester.trigger();
}