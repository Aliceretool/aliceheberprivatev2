// 1. Get the data from the specific query
const rawData = {{ individual_learners_query_projects4.data }};

// SAFETY: Return empty if no data or if it's not an array
if (!rawData || !Array.isArray(rawData)) {
  return [];
}

// 2. Create a map to handle deduplication
// Key = Project Title, Value = The Project Data Object
const uniqueProjectsMap = {};

rawData.forEach(row => {
  const title = row['sidekick__apprenticeship.project_title'];
  const reviewLink = row['sidekick__apprenticeship.project_review_link'];
  
  // LOGIC: Deduplicate by Title, Prioritize entries with a Review Link
  if (!uniqueProjectsMap[title]) {
    // If we haven't seen this title yet, save it.
    uniqueProjectsMap[title] = row;
  } else {
    // If we HAVE seen this title, check if we should upgrade it.
    const existingEntry = uniqueProjectsMap[title];
    const existingHasLink = existingEntry['sidekick__apprenticeship.project_review_link'] !== null;
    const newHasLink = reviewLink !== null;

    // If the one we saved has NO link, but this new duplicate DOES, swap it in.
    if (!existingHasLink && newHasLink) {
      uniqueProjectsMap[title] = row;
    }
  }
});

// 3. Convert map to clean array for the UI
const uniqueProjects = Object.values(uniqueProjectsMap).map(row => {
  return {
    project_title: row['sidekick__apprenticeship.project_title'],
    learner_name: row['sidekick__apprenticeship.learner_full_name'],
    project_link: row['sidekick__apprenticeship.project_link'],
    review_link: row['sidekick__apprenticeship.project_review_link'],
    // Boolean helper to easily disable buttons in UI if link is missing
    has_review: !!row['sidekick__apprenticeship.project_review_link']
  };
});

// 4. Sort alphabetically by title so the list looks organized
return uniqueProjects.sort((a, b) => a.project_title.localeCompare(b.project_title));