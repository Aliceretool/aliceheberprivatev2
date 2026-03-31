// Define pre-defined tags that should always be available
const predefinedTags = [
  "On Annual Leave",
  "On Sick Leave"
];

// Extract all unique coach tags from merged data
const data = {{merged_data_state.value}} || [];

// Collect all tags from all learners
const allTags = data.flatMap(row => {
  const tags = row.coach_tag || [];
  return Array.isArray(tags) ? tags : [];
});

// Combine predefined tags with unique tags from data
const allUniqueTags = [...new Set([...predefinedTags, ...allTags])].filter(tag => tag && tag.trim());

// Sort alphabetically (case-insensitive)
allUniqueTags.sort((a, b) => a.toLowerCase().localeCompare(b.toLowerCase()));

// Return array of unique tags with predefined ones always included
return allUniqueTags;