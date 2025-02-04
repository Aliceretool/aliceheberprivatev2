const currentStatusName = interactions.value.find(
  (interaction) => interaction.id === selectedInteraction.value.id
).status;
const selectedStatusId = InteractionStatus_Select.value;
const status = FetchInteractionStatuses.data.find(
  (status) => status.id === selectedStatusId
);

if (status.name === "attached") {
  if (currentStatusName === "completed") {
    await UpdateInteractionStatus.trigger({
      additionalScope: {
        statusName: status.name
      }
    });
    await refetchInteractions.trigger();
  } else {
    await handleAttachDetachClick.trigger({
      additionalScope: { mode: "attach" },
    });
  }
} else if (status.name === "non-attached") {
  await handleAttachDetachClick.trigger({
    additionalScope: { mode: "detach" },
  });
} else if (status.name === "closed") {
  isCloseInteractionModalOpened.setValue(true);
} else if (status.name === "completed") {
  await UpdateInteractionStatus.trigger({
    additionalScope: {
      statusName: status.name
    }
  });
  await refetchInteractions.trigger();
}
