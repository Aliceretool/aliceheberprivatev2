const interactions = {{ inputInteractions.value }};
const INTERACTION_TYPE = {{ INTERACTION_TYPE.value }};

return interactions.map(parseInteraction);

function parseInteraction(interaction) {
  const result = {
    id: interaction.id,
    statusId: interaction.interactionStatus_id,
    contact: interaction.contact,
    case: interaction.case ?? null,
    status: interaction.status,
    type: getInteractionType(interaction),
    isAutomatic: interaction.status === "attached" && interaction.is_automatic,
    isIncoming: true,
    icon: null,
    from: null,
    to: null,
    subject: null,
    waitingTime: 1920,
    timestamp: interaction.created_at,
    detailedTimestamp: interaction.created_at,
  };

  const date = moment(result.timestamp).format("DD/MM/yyyy");
  const time = moment(result.timestamp).format("HH|mm").split("|").join("h");
  result.timestamp = `${date} ${time}`;

  const detailedDate = moment(result.detailedTimestamp).format(
    "dd, MMM DD, yyyy"
  );
  const detailedTime = moment(result.detailedTimestamp).format("h:mm A");
  result.detailedTimestamp = `${detailedDate} at ${detailedTime}`;

  switch (result.type) {
    case INTERACTION_TYPE.CALL: {
      result.icon = "/icon:line/phone-telephone";
      result.from = interaction.call.phoneNumber;
      result.to = "operator1";
      result.ivrChoice = "IVR CHOICE";
      result.businessPartner = "Dummy Generali";
      result.dedicatedLine = "Line 1";
      result.content = interaction.case?.context;
      result.waitingTime = formatSecondsToHMS(result.waitingTime);
      break;
    }
    case INTERACTION_TYPE.EMAIL: {
      result.icon = "/icon:bold/mail-send-envelope-alternate";

      const { email } = interaction;
      result.from = email.senderEmail;
      result.to = email.receiverEmails[0];
      result.subject = email.subject;
      result.isImportant = email.isImportant;
      result.content = email.body;

      break;
    }
    case INTERACTION_TYPE.SMS: {
      result.icon = "/icon:bold/phone-telephone-message";
      break;
    }
  }

  return result;
}

function getInteractionType(interaction) {
  if (interaction.call) {
    return INTERACTION_TYPE.CALL;
  } else if (interaction.email) {
    return INTERACTION_TYPE.EMAIL;
  } else {
    return INTERACTION_TYPE.SMS;
  }
}

function formatSecondsToHMS(seconds) {
  const hours = String(Math.floor(seconds / 3600)).padStart(2, "0");
  const minutes = String(Math.floor((seconds % 3600) / 60)).padStart(2, "0");
  const remainingSeconds = String(seconds % 60).padStart(2, "0");

  return `${hours}H${minutes}M${remainingSeconds}S`;
}
