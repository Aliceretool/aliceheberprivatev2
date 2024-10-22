switch (item.id) {
  case "DELETE":
    lineItemCancelModal.setHidden(false);
    break;
  case "COMPLETE":
  case "INCOMPLETE":
    updateCompletionModal.setHidden(false);
    break;
  case "DOWNLOAD":
    parent.postMessage(
      {
        custom: true,
        payload: { id: item.type },
      },
      urlparams.href
    );
}
