// 1. FORCE RETOOL TO WATCH THE VARIABLE (Removed typeof trickery)
const context = {{cohort_currentSortContext4.value}};

// 2. GET RAW DATA
const rows = {{data_ops_api_query_dd3.data}} ?? [];
if (rows.length === 0) return [];

// Clone the array so we can sort safely
let sortedRows = [...rows];

// BULLETPROOF RISK EXTRACTOR
const riskScore = { "Very High": 6, "Red": 5, "High": 4, "Amber": 3, "Medium": 2, "Low": 1, "Green": 0 };
const getRisk = (row) => {
  const riskVal = row.withdrawal_risk?.risk_bucket_name || row.latest_risk_bucket_name || row.apprenticeship_latest_risk_bucket_name;
  return riskScore[riskVal] || -1;
};

// SAFE DATE MATH (Protects against invalid dates returning NaN)
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

// 3. APPLY SORTING (With bulletproof fallback paths)
if (context) {
  sortedRows.sort((a, b) => {
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
      const valA = a.status?.booked_gateway_start_time || a.booked_gateway_start_time || a["gh_apprenticeship.apprenticeship_booked_gateway_start_time"]; 
      const valB = b.status?.booked_gateway_start_time || b.booked_gateway_start_time || b["gh_apprenticeship.apprenticeship_booked_gateway_start_time"];
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

return sortedRows;