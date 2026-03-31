UPDATE agent_learner_state
SET copied_message = {{ draftMessageTextArea.value }}
WHERE id = {{ currentLearner.value.id }};