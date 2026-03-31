// Get the notes from the API response
const notes = {{getLearnerNotes_nba.data?.items}} || [];

// Sort by created_at date (most recent first)
const sortedNotes = notes.sort((a, b) => 
  new Date(b.created_at) - new Date(a.created_at)
);

// Get the last 3 notes
const lastThree = sortedNotes.slice(0, 3);

// Format the data with relevant tags
return lastThree.map(note => ({
  id: note.id,
  content: note.content,
  contentType: note.content_type,
  supportFactors: note.support_factors || [],
  interventionType: note.intervention_type || 'N/A',
  interventionAction: note.intervention_action || 'N/A',
  author: `${note.author.first_name} ${note.author.last_name}`,
  createdAt: note.created_at,
  formattedDate: moment(note.created_at).format('MMM DD, YYYY h:mm A')
}));