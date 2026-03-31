// Filter merged learner data according to the retention agent's pre-processing rules
const joinedData = {{ test.data }};

// Define stop signal keywords (matching the diverse tags we generated)
const stopSignalTags = ['#AL', 'ANNUAL LEAVE', 'VACATION', '#BEREAVEMENT', 'OOO', 'OUT OF OFFICE'];

// Helper function to check if the "Coach tags" string contains a stop signal
const hasStopSignal = (tagsString) => {
  if (!tagsString || tagsString === "[]") return false;
  
  // Convert string list "['#AL', '#Workload']" to uppercase for comparison
  const upperTags = tagsString.toUpperCase();
  return stopSignalTags.some((stopSignal) => upperTags.includes(stopSignal));
};

// Filter the data
const filteredData = joinedData.filter((learner) => {
  
  // Rule 1: Only active learners
  // In our dataset, we set all learners to 'completed_on_time' to simulate active programme status
  const isActive = learner.Status === 'on_programme';
  if (!isActive) return false;

  // Rule 2: Rule 3: Last intervention/communication is NOT in the last 5 days
  // Using 'Latest EOL' as the proxy for the last recorded engagement
  const lastEolDate = learner['Latest EOL'];
  let lastInterventionOlderThan5Days = true;

  if (lastEolDate) {
    // moment is a global available in Retool
    const daysSinceLastEol = moment().diff(moment(lastEolDate), 'days');
    lastInterventionOlderThan5Days = daysSinceLastEol > 5;
  }

  if (!lastInterventionOlderThan5Days) return false;

  // Rule 3: Coach tag does not indicate stop signal (Annual Leave, Bereavement, etc.)
  // This maps to the 'Coach tags' column in your new CSV
  const hasStopSignalTag = hasStopSignal(learner['Coach tags']);
  if (hasStopSignalTag) return false;

  // Optional Rule 4: Risk Filter
  // If you only want to process High/Medium risk in the AI step, uncomment the line below:
  // if (learner.Risk === 'Low') return false;

  return true;
});

return filteredData;