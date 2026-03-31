// Join Coach_Tags and learner_data on learner_id column

// Get the learner data (from REST API)
const learners = {{ learner_data.data }} || [];

// Get the coach tags data (from SQL query)
// SQL queries return data in columnar format, so convert to array of objects
const coachTagsData = {{ Coach_Tags.data }} ? formatDataAsArray({{ Coach_Tags.data }}) : [];

// Create a map of learner_id to coach tags for efficient lookup
const tagsMap = {};
coachTagsData.forEach((tag) => {
  if (tag.learner_id) {
    if (!tagsMap[tag.learner_id]) {
      tagsMap[tag.learner_id] = [];
    }
    tagsMap[tag.learner_id].push(tag);
  }
});

// Join the data by adding coach_tags to each learner record
const joinedData = learners.map((learner) => {
  const learnerId = learner.learner?.id;
  const matchingTags = tagsMap[learnerId] || [];

  return {
    ...learner,
    coach_tags: matchingTags };

});

return joinedData;