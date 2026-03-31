// 1. Get datasets safely
// SQL needs formatDataAsArray. API usually comes back as a native array.
const queueData = formatDataAsArray({{  get_agent_state.data}}) || []; 
const learnerData = {{  data_ops_API_query_nba.data}} || [];

// 2. Create a lookup dictionary for the Learner Data
const learnerMap = {};

learnerData.forEach(learner => {
  const actualLearnerId = learner.learner?.id || learner.learner_id || learner.id;
  if (actualLearnerId) {
    learnerMap[actualLearnerId] = learner; 
  }
});

// 3. Perform the Left Join
const joinedData = queueData.map(queueItem => {
  const matchingLearner = learnerMap[queueItem.learner_id] || {};

  return {
    ...queueItem,
    ...matchingLearner,
    id: queueItem.id, // Keeps the AI Queue ID as the primary row ID
    apprenticeship_uuid: matchingLearner.id 
  };
});

// 4. SORT BY TIER (1 -> 2 -> 3)
joinedData.sort((a, b) => {
  // Grab the tiers, defaulting to 'Tier 999' so any blanks/nulls get pushed to the bottom
  const tierA = String(a.ai_assigned_tier || 'Tier 999');
  const tierB = String(b.ai_assigned_tier || 'Tier 999');
  
  // Safely compare them natively handling numbers inside the strings
  return tierA.localeCompare(tierB, undefined, { numeric: true });
});

return joinedData;