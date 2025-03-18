// set ids for attachments with no invalidatedAt fields populated
const processAttachment = (accumulator, attachment) => {
  if (!attachment?.invalidatedAt) {
    return {...accumulator, [attachment.type]: attachment.id};
  }
  return accumulator;
}

const attachmentData = GetAttachments.data;
const attachmentIds = attachmentData.reduce(processAttachment, {});

// update the kickBackAttachmentIds with the new values to reference for kick backs
kickBackAttachmentIds.setValue({...kickBackAttachmentIds.value, ...attachmentIds});