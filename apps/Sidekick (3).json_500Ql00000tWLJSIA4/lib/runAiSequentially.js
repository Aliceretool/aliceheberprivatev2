// 1. Clear old data to start fresh
await aiDiscussionPoints.setValue({});

const learners = filteredLearnerList.data;

for (let i = 0; i < learners.length; i++) {
  try {
    // Wait for UI/Sidebar to settle
    await new Promise(resolve => setTimeout(resolve, 600)); 

    // Trigger the AI
    const result = await generateDiscussionPoints.trigger({
      additionalScope: { "targetIndex": i }
    });
    
    // Save successfully
    await aiDiscussionPoints.setIn([learners[i].id], result);

  } catch (error) {
    // If one fails, log it and set a fallback message so the UI isn't stuck
    console.error(`AI failed for learner ${learners[i].id}:`, error);
    
    await aiDiscussionPoints.setIn(
      [learners[i].id], 
      "Unable to generate insights for this learner. Please try refreshing."
    );
    
    // The loop continues to the next learner instead of dying!
  }
}