const changes = cohort_dd_table5.changesetArray || [];

if (!Array.isArray(changes) || changes.length === 0) {
  return { success: true, message: 'No changes to save', results: [] };
}

const mergedRows = merged_data_state.value || [];
const results = [];

for (const change of changes) {
  try {
    // Get learner_id from changeset
    const learnerId = change.learner_id;
    if (!learnerId) {
      results.push({ status: 'error', error: 'No learner_id found in changeset', change });
      continue;
    }

    // Find the row using learner_id
    const row = mergedRows.find((r) => r.learner_id === learnerId);
    if (!row || !row.id) {
      results.push({ status: 'error', learnerId, error: 'Could not find apprenticeship record', change });
      continue;
    }

    // Extract from changeset or fall back to current row data
    let finalTagsArray = [];
    if (change.coach_tag !== undefined) {
      finalTagsArray = Array.isArray(change.coach_tag) ? change.coach_tag : [];
    } else {
      finalTagsArray = row.coach_tag || [];
    }

    let finalComment = "";
    if (change.latest_comment !== undefined) {
      finalComment = change.latest_comment;
    } else {
      finalComment = row.latest_comment || "";
    }

    const item = {
      apprenticeship_uuid: row.id,  // Use the apprenticeship ID from the found row
      comment: finalComment,
      tags: finalTagsArray
    };

    const res = await saveCoachTagToDataOps_mlv.trigger({ additionalScope: { item } });
    results.push({ 
      learnerId, 
      apprenticeshipId: row.id, 
      status: 'ok', 
      sentTags: finalTagsArray, 
      sentComment: finalComment, 
      response: res 
    });
  } catch (err) {
    results.push({ status: 'error', error: String(err), errorDetails: err });
  }
}

return {
  success: true,
  count: results.length,
  successCount: results.filter(r => r.status === 'ok').length,
  errorCount: results.filter(r => r.status === 'error').length,
  results
};