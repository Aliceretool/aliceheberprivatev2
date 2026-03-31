// CONFIGURATION: Define your custom text mappings here.
// Key = The exact string from "sidekick__apprenticeship.risk_prediction_feature_name"
// Value = The text you want to show in the UI
const RISK_TEXT_MAP = {
  "Last 15 days OTJ Logs": "Low OTJ logs in past 15 days",
  "Last 30 days OTJ Logs": "Low OTJ logs in past 30 days",
  "Last 30 days OTJ % Logged": "OTJ % progress is behind for the month",
  "OTJ %": "Overall OTJ percentage is behind target",
  "Delivery Attendance %": "Low attendance in delivery sessions",
  "Coach Engagement": "Low engagement with Coach",
  "Last 30 Days Coach Engagement": "No recent coaching sessions detected",
  "Platform Sessions": "Low platform login frequency",
  "Knowledge Check Completion": "Knowledge checks missing or incomplete",
  "Project Completion": "Behind on project submission schedule",
  "Module Completion": "Module progress is slower than average",
  "Engagement Days": "Fewer active learning days than average",
  "Avg. OTJ Minutes Per Log": "OTJ log entries are shorter than expected"
};

// 1. Get the data
const data = {{ individual_learners_query_risk2.data }};

// SAFETY: Return empty if no data
if (!data || !Array.isArray(data)) {
  return [];
}

// 2. Map the data and inject the new "ui_text" field
const allFactors = data.map(row => {
  const featureName = row['sidekick__apprenticeship.risk_prediction_feature_name'];
  const originalDesc = row['sidekick__apprenticeship.risk_prediction_feature_description'];
  
  // DYNAMIC LOOKUP:
  // Try to find the name in our map. If not found, fall back to the original description.
  // We use .trim() to handle any accidental database whitespace.
  const customText = RISK_TEXT_MAP[featureName?.trim()] || originalDesc;

  return {
    feature_name: featureName,
    description: originalDesc, // Keep the original just in case
    
    // THIS IS YOUR NEW FIELD
    display_text: customText,
    
    // Parse the number
    shapley_val: parseFloat(row['sidekick__apprenticeship.risk_prediction_feature_shapley_value'] || 0),
    
    updated_at: row['sidekick__apprenticeship.apprenticeship_latest_risk_prediction_timestamp']
  };
});

// 3. Sort by Risk Score (Highest to Lowest)
const sortedFactors = allFactors.sort((a, b) => b.shapley_val - a.shapley_val);

// 4. Return Top 3 with Rank
return sortedFactors.slice(0, 3).map((item, index) => ({
  rank: index + 1,
  ...item
}));