if (_.isEmpty(GenesysPlugin.lastCallEvent)) return;

const call = GenesysPlugin.lastCallEvent.data;

console.log("call", call);

const callerParticipant = call.participants.find((p) => p.purpose === "customer");

if (!callerParticipant) {
  console.log("Caller participant not found inside Call event");
  return;
}

const queueParticipant = call.participants.find(
  (p) => p.name === callerParticipant.attributes.TargetRoutingQueue
);

if (!queueParticipant?.endTime) {
  console.log("Call has not been answered yet!");
  return;
}

const isIncomingCall = callerParticipant.direction === "inbound";

const queueConnectedTime = moment(queueParticipant.connectedTime);
const queueEndTime = moment(queueParticipant.endTime);
const callerPhoneNumber = callerParticipant.address.split(":")[1];

const receivedAt = queueConnectedTime.toISOString();
const waitingTime = Math.abs(queueConnectedTime.diff(queueEndTime, "seconds"));

const payload = {
  phoneNumber: callerPhoneNumber,
  ivrChoice: "Dummy Travel medical assistance",
  product: "Dummy product",
  businessPartner: "Dummy Generali",
  receivedAt,
  waitingTime,
  genesysMetadata: {
    id: call.id,
    caller: callerParticipant,
    queue: queueParticipant,
  },
  createdBy: current_user?.fullName
};

console.log("========= PAYLOAD =========", payload);

const newInteractionCall = await CreateInteractionCall.trigger({
  additionalScope: {
    payload
  }
});

console.log("========= NEW INTERACTION CALL =========", newInteractionCall);

if (newInteractionCall?.id) {
  await incomingPhoneNumber.setValue(payload.phoneNumber);
  await utils.openPage("Interaction");
}
