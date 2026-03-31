const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

const currentNotesKey = String(selected_user?.value?.id ?? "");

const scrollToLatest = () => {
  const itemCount = Array.isArray(viewNotesList.data) ? viewNotesList.data.length : 0;

  if (itemCount > 0) {
    viewNotesList.scrollToIndex(itemCount - 1);
  }
};

if (!currentNotesKey) {
  return;
}

if (notesDrawerFrame.hidden) {
  notesDrawerFrame.show();
}

const cacheWarmForCurrentInputs =
  lastNotesKey.value === currentNotesKey &&
  Number.isFinite(getLearnerNotes.lastReceivedFromResourceAt) &&
  Number.isFinite(getLearnerNotes.cacheKeyTtl) &&
  (Date.now() - getLearnerNotes.lastReceivedFromResourceAt) < (getLearnerNotes.cacheKeyTtl * 1000);

if (cacheWarmForCurrentInputs) {
  // Cached / warm reopen:
  // do not rerun the query
  await sleep(500);
  scrollToLatest();

  await sleep(250);
  scrollToLatest();
} else {
  // Fresh run:
  await getLearnerNotes.trigger();
  lastNotesKey.setValue(currentNotesKey);

  await sleep(450);
  scrollToLatest();

  await sleep(250);
  scrollToLatest();
}