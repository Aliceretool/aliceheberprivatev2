// 1. DATA SOURCES
const rawApi = data_ops_API_query_mlv.data.data || data_ops_API_query_mlv.data;
const context = sorting_context.value; 

// 2. EXTRACT API ROWS
const getRows = (v) => {
  if (Array.isArray(v)) return v;
  if (!v || typeof v !== "object") return [];
  return v.items || v.data || v.rows || (v.data && v.data.items) || [];
};
const apiRows = getRows(rawApi);

// 3. BUILD MERGED ROWS
// Extract tags and comments from the API's sidekick object
const mergedRows = apiRows.map(row => {
  const learnerId = row.learner?.id || row.learner_id || row["gh_apprenticeship.learner_id"];

  return {
    ...row, 
    _matched_learner_id: learnerId, 
    learner_id: learnerId,
    
    latest_comment: row.sidekick?.comment || "",
    coach_tag: row.sidekick?.tags || []
  };
});

// Early return if no data
if (mergedRows.length === 0) {
  merged_data_state.setValue([]);
  return;
}

// 4. SORTING LOGIC
const riskScore = { 
  "very_high": 6, 
  "red": 5, 
  "high": 4, 
  "amber": 3, 
  "medium": 2, 
  "low": 1, 
  "green": 0 
};

const getRisk = (row) => {
  const riskVal = row.withdrawal_risk?.risk_bucket_name || 
                  row.latest_risk_bucket_name || 
                  row.apprenticeship_latest_risk_bucket_name;
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

let finalData = [...mergedRows];

// Apply contextual sorting if context is set
if (context) {
  finalData.sort((a, b) => {
    let primaryDiff = 0;
    
    // PRIORITY 1: Context-based sorting
    if (context === 'eol_priority') {
      const aEol = a.status?.latest_evidence_of_learning_date || 
                   a.latest_evidence_of_learning_date || 
                   a["gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at"];
      const bEol = b.status?.latest_evidence_of_learning_date || 
                   b.latest_evidence_of_learning_date || 
                   b["gh_apprenticeship.apprenticeship_latest_evidence_of_learning_at"];
      primaryDiff = compareDates(aEol, bEol, 'asc', 'first');
    } 
    else if (context === 'prw_priority') {
      const aPrw = a.progress_review_summary?.previous_progress_review?.completed_at || 
                   a.progress_review_summary?.previous_progress_review?.review_date || 
                   a.latest_progress_review_completed_date;
      const bPrw = b.progress_review_summary?.previous_progress_review?.completed_at || 
                   b.progress_review_summary?.previous_progress_review?.review_date || 
                   b.latest_progress_review_completed_date;
      primaryDiff = compareDates(aPrw, bPrw, 'asc', 'first');
    } 
    else if (context === 'gb_priority') {
      const valA = a.status?.booked_gateway_date || 
                   a.booked_gateway_date || 
                   a["gh_apprenticeship.apprenticeship_booked_gateway_date"]; 
      const valB = b.status?.booked_gateway_date || 
                   b.booked_gateway_date || 
                   b["gh_apprenticeship.apprenticeship_booked_gateway_date"];
      
      if (!valA && valB) return -1;
      if (valA && !valB) return 1;
      if (!valA && !valB) primaryDiff = 0; 
      else primaryDiff = new Date(valB).getTime() - new Date(valA).getTime();
    } 
    else if (context === 'attendance_priority') {
      const aMissed = a.status?.delivery_sessions_missed || 
                      a.delivery_sessions_missed || 
                      a["gh_apprenticeship.apprenticeship_total_delivery_sessions_missed"] || 0;
      const bMissed = b.status?.delivery_sessions_missed || 
                      b.delivery_sessions_missed || 
                      b["gh_apprenticeship.apprenticeship_total_delivery_sessions_missed"] || 0;
      primaryDiff = bMissed - aMissed;
    }
    
    // PRIORITY 2: Risk score as tie-breaker
    return primaryDiff !== 0 ? primaryDiff : getRisk(b) - getRisk(a);
  });
}

// 5. UPDATE STATE
merged_data_state.setValue(finalData);