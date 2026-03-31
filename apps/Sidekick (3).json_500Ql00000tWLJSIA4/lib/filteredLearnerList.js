// 1) Filtering Logic
const attendeeEmails = (selectedEvent.value?.attendees ?? [])
  .map(a => a?.email?.toLowerCase()?.trim())
  .filter(Boolean);

const attendeeEmailSet = new Set(attendeeEmails);
const rawData = allLearnersMasterList.data ?? [];
const allLearners = Array.isArray(rawData) ? rawData : Object.values(rawData);

const filtered = allLearners.filter(row => {
  const email = row?.learner?.email?.toLowerCase()?.trim();
  return email && attendeeEmailSet.has(email);
});

// 2) The Multi-Query Logic
if (filtered && filtered.length > 0) {
  // Fix: Ensure we only process learners with valid UUIDs to prevent 400 errors
  const validLearners = filtered.filter(item => item.id && item.id !== "null" && item.id !== "");
  currentMeetingUUIDs.setValue(validLearners.map(item => item.id));

  // We use a local object to track results as they come in
  let notesCollector = {};

  // Create a list of "Promises" so we can wait for everyone to finish
  const notePromises = validLearners.map(item => {
    return getLearnerCoachNotes.trigger({
      additionalScope: { apprenticeship_id: item.id }
    }).then(data => {
      const notesArray = data?.items || [];
      
      // FIX: Save as an array of objects to preserve the 'created_at' date
      if (notesArray.length > 0) {
        notesCollector[item.id] = notesArray.map(n => ({
          content: n.content || n.note_text,
          created_at: n.created_at
        }));
      } else {
        notesCollector[item.id] = []; // Clear if no notes found
      }
    }).catch(() => {
      notesCollector[item.id] = []; // Fallback on error
    });
  });

  // 3) Update the global variable only once ALL notes are fetched
  Promise.all(notePromises).then(() => {
    allLearnerNotes.setValue(notesCollector);
  });

} else {
  // Reset if no learners are filtered
  allLearnerNotes.setValue({});
  currentMeetingUUIDs.setValue([]);
}

return filtered;