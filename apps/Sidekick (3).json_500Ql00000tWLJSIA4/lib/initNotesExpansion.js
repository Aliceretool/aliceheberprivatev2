setTimeout(() => {
  const rows = viewNotesList3.data || []; // <-- the list’s rendered data (sorted/filtered)
  if (!rows.length) {
    expandedNoteIds.setValue([]);
    return;
  }

  const lastIndex = rows.length - 1;
  const lastId = rows[lastIndex].id;

  // Only latest open by default
  expandedNoteIds.setValue([lastId]);

  // Nice UX: jump to the latest
  viewNotesList3.scrollToIndex(lastIndex);
}, 0);