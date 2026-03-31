// Safe clear helper
const safeClear = (cmp, fallback) => {
  if (!cmp) return;
  if (typeof cmp.clearValue === "function") return cmp.clearValue();
  if (typeof cmp.setValue === "function") return cmp.setValue(fallback);
};

// Clear top-level type filter (empty = show all)
safeClear(noteFilterMultiselect2, []);

// Reset date period to "all"
if (typeof noteDatePeriodRadio?.setValue === "function") {
  noteDatePeriodRadio.setValue("all");
} else {
  safeClear(noteDatePeriodRadio, "all");
}

// Clear sub-filters
safeClear(interventionActionFilterSelect, []);
safeClear(supportFactorFilterMultiselect, []);

// Reset list instance/expanded state
viewNotesList3.clearInstanceValues?.();

// Optional toast (remove if you don’t want noise)
// utils.showNotification({ title: "Filters cleared", notificationType: "success" });

return true;