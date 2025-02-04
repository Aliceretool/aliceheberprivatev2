const form = CloseInteraction_Form;
const isValid = await form.validate();

if (!isValid) return;

const {
  reasonId,
  customReason,
  comment
} = CloseInteraction_Form.data;

await CloseInteraction.trigger({
  additionalScope: {
    interactionCloseReasonId: reasonId,
    customCloseReason: customReason || undefined,
    closeComment: comment || undefined,
  }
});

await onCloseInteraction.trigger();

CloseInteraction_Modal.hide();
CloseInteraction_Form.clear();