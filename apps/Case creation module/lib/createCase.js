const form = CallerInformation_Form;

const isValid = await form.validate();
form.scrollIntoView({ block: "start", behavior: "smooth" });

const formData = form.data;

if (!formData || !isValid) return;


const payload = {
  interaction_id: selectedInteractionCall?.value?.interaction?.id || null,
  interactionCall_id: selectedInteractionCall?.value?.id || null,
  case_nature_id: formData.caseNatureId,
  contact_motive_id: formData.contactMotiveId,
  beneficiary: {
    firstName: formData.beneficiaryFirstName,
    lastName: formData.beneficiaryLastName,
    phoneNumber: formData.beneficiaryPhoneNumber,
    policyNumber: formData.policyNumber,
  },
  requester: {
    contactRole_id: formData.contactRoleId,
    firstName: formData.requesterFirstName,
    lastName: formData.requesterLastName,
    phoneNumber: formData.requesterPhoneNumber,
    email: formData.email,
    isRequester: !formData.sameAsRequester,
  },
  hasGDPRConsent: formData.gdpr,
  beneficiary_location_id: formData.beneficiaryLocation,
  context: formData.context?.trim()?.length ? formData.context : null,
  created_by: current_user.sid,
};

if (policyExtId.value) {
  payload.policy = contracts.value.find(
    ({ extId }) => extId === policyExtId.value
  );
} else {
  payload.policy = {
    policyNumber: formData.policyNumber,
    validity: {},
    forcedEligibility: true
  };
}

CallerInformation_Form.reset();
await onSubmit.trigger()

const handleFailure = () => {
  const errorMessage = CreateCase.error;
  utils.showNotification({
    title: "Failed to create a case",
    description: errorMessage,
    notificationType: "error",
  });
  CallerInformation_Form.setData(formData);
};

const newCase = await CreateCase.trigger({
  additionalScope: { payload },
  onFailure: handleFailure,
});

utils.openPage("Case", {
  passDataWith: "urlParams",
  queryParams: { id: newCase.id },
});

