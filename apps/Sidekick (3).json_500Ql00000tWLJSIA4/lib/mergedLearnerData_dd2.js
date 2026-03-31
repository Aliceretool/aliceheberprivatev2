// 1. Safely extract the array from your API query
const rawApi = {{data_ops_API_query_dd.data}};
const dbData = {{getCoachTags_dd2.data }};

const getRows = (v) => {
  if (Array.isArray(v)) return v;
  if (!v || typeof v !== "object") return [];
  if (Array.isArray(v.items)) return v.items;
  if (Array.isArray(v.data)) return v.data;
  if (v.data && Array.isArray(v.data.items)) return v.data.items;
  if (Array.isArray(v.rows)) return v.rows;
  return [];
};
const apiRows = getRows(rawApi);

// 2. Get the Retool DB data
const dbRows = formatDataAsArray(dbData) || [];

// 3. Create a lightning-fast lookup map from the Retool DB data
const notesMap = {};
for (const row of dbRows) {
  notesMap[row.learner_id] = row; 
}

// 4. Stitch them together based on learner_id
const mergedRows = apiRows.map(row => {
  // Safely extract the learner ID (using our bulletproof fallbacks!)
  const learnerId = row.learner?.id || row.learner_id || row["gh_apprenticeship.learner_id"];
  
  // Look up if this learner already has notes in the Retool DB
  const existingNote = notesMap[learnerId];

  // Return the combined row
  return {
    ...row, // Keep all the existing API data
    _matched_learner_id: learnerId, // Save this cleanly so we can use it to write back later!
    latest_comment: existingNote ? existingNote.latest_comment : "",
    coach_tag: existingNote ? existingNote.coach_tag : []
  };
});

return mergedRows;