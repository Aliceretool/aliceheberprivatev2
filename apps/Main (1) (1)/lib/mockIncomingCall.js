const testIncomingCall = {
  receivedAt: new Date().toISOString(),
  status: "New",
  phoneNumber: generateRandomPhoneNumber(),
  product: "Dummy product",
  businessPartner: "Dummy Generali",
  waitingTime: 1410,
  ivrChoice: "Dummy Travel medical assistance",
};
await incomingPhoneNumber.setValue(testIncomingCall.phoneNumber);
await CreateInteractionCall.trigger({
  additionalScope: {
    payload: testIncomingCall
  }
});
utils.openPage("Interaction");

function generateRandomPhoneNumber() {
  const randomDigits = Math.floor(100000000 + Math.random() * 900000000);
  return `+43${randomDigits}`;
}
