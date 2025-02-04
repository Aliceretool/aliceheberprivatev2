const caseId =
  action.value === "attach" ? SearchCasesResults_Listbox.value : null;

await AttachInteractionToCase.trigger({
  additionalScope: {
    caseId,
  },
});

await onInteractionAttached.trigger();

SearchCasesResults_Listbox.clearValue();
SearchCasesQuery_Input.clearValue();

AttachInteractionToCase_Modal.hide();
