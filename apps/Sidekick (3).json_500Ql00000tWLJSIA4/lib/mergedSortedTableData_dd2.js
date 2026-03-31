// 1. DATA SOURCES
const rawApi = {{data_ops_api_query_dd3.data}};
const dbData = {{getCoachTags_dd2.data}};
const context = {{cohort_currentSortContext4.value}};

// 2. EXTRACT API ROWS
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

// 3. GET DB DATA & CREATE LOOKUP MAP
const dbRows = formatDataAsArray(dbData) || [];
const notesMap = {};
for (const row of dbRows) {
  notesMap[row.learner_id] = row; 
}

// 4. STITCH TOGETHER
const mergedRows = apiRows.map(row => {
  const learnerId = row.learner?.id || row.learner_id || row["gh_apprenticeship.learner_id"];
  const existingNote = notesMap[learnerId];

  return {
    ...row, 
    _matched_learner_id: learnerId, 
    learner_id: learnerId,          
    latest_comment: existingNote ? existingNote.latest_comment : "",
    coach_tag: existingNote ? existingNote.coach_tag : [] // Reverted to [] for component safety
  };
});

// Fast-fail if there's no data to sort
if (mergedRows.length === 0) return [];

// 5. APPLY SORTING
let finalData = [...mergedRows];

const riskScore = { "Very High": 6, "Red": 5, "High": 4, "Amber": 3, "Medium": 2, "Low": 1, "Green": 0 };
const getRisk = (row) => {
  const riskVal = row.withdrawal_risk?.risk_bucket_name || row.latest_risk_bucket_name || row.apprenticeship_latest_risk_bucket_name;
  return riskScore[riskVal] || -1;
};

const compareDates = (dateA, dateB, direction = 'asc', nullsPosition = 'first') => {
  if (!dateA && !dateB) return 0; 
  if (!dateA) return nullsPosition === 'first' ? -1 : 1;
  if (!dateB) return nullsPosition === 'first' ? 1 : -1;
  const tA = new Date(dateA).getTime();
  const tB = new Date(dateB).getTime();
  if (isNaN(tA) && isNaN(tB)) return 0;
  if (isNaN(tA)) return nullsPosition === 'first' ? -1 : 1;
  if (isNaN(tB)) return nullsPosition === 'first' ? 1 : -1;
  return direction === 'asc' ? tA - tB : tB - tA;
};

if (context) {
  finalData.sort((a, b) => {
    let primaryDiff = 0;
    if (context === 'eol_priority') {
      const aEol = a.status?.latest_evidence_of_learning_date || a.latest_evidence_of_learning_date || a["gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at"];
      const bEol = b.status?.latest_evidence_of_learning_date || b.latest_evidence_of_learning_date || b["gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at"];
      primaryDiff = compareDates(aEol, bEol, 'asc', 'first');
    } 
    else if (context === 'prw_priority') {
      const aPrw = a.progress_review_summary?.previous_progress_review?.completed_at || a.progress_review_summary?.previous_progress_review?.review_date || a.latest_progress_review_completed_date;
      const bPrw = b.progress_review_summary?.previous_progress_review?.completed_at || b.progress_review_summary?.previous_progress_review?.review_date || b.latest_progress_review_completed_date;
      primaryDiff = compareDates(aPrw, bPrw, 'asc', 'first');
    } 
    else if (context === 'gb_priority') {
      const valA = a.status?.booked_gateway_date || a.booked_gateway_date || a["gh_apprenticeship.apprenticeship_booked_gateway_date"]; 
      const valB = b.status?.booked_gateway_date || b.booked_gateway_date || b["gh_apprenticeship.apprenticeship_booked_gateway_date"];
      if (!valA && valB) return -1; if (valA && !valB) return 1; if (!valA && !valB) primaryDiff = 0; 
      else primaryDiff = new Date(valB).getTime() - new Date(valA).getTime();
    } 
    else if (context === 'attendance_priority') {
      const aMissed = a.status?.delivery_sessions_missed || a.delivery_sessions_missed || a["gh_apprenticeship.apprenticeship_total_delivery_sessions_missed"] || 0;
      const bMissed = b.status?.delivery_sessions_missed || b.delivery_sessions_missed || b["gh_apprenticeship.apprenticeship_total_delivery_sessions_missed"] || 0;
      primaryDiff = bMissed - aMissed;
    }
    return primaryDiff !== 0 ? primaryDiff : getRisk(b) - getRisk(a);
  });
}

return finalData;