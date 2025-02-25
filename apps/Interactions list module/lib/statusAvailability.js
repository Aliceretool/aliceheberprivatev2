const interactionStatuses = {{ FetchInteractionStatuses.data }};
const selectedInteraction = {{ selectedInteraction.value }};
const currentStatusName = selectedInteraction.status;

function isStatusAvailable(statusName, currentStatusName) {
  switch (statusName) {
    case "attached":
      return { isAvailable: true };
    case "non-attached":
      return { isAvailable: true };
    case "closed":
      return {
        isAvailable: currentStatusName === "non-attached",
        tooltip:
          "Interaction can be closed only if it is not attached to any case",
      };
    case "completed":
      return {
        isAvailable: currentStatusName === "attached",
        tooltip: "Interaction can be completed only if it attached to case",
      };
  }
}

const statusDict = Object.fromEntries(
  interactionStatuses.map((status) => {
    return [status.id, isStatusAvailable(status.name, currentStatusName)];
  })
);

return statusDict;
