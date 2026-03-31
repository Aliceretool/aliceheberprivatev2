INSERT INTO agent_learner_state (
  learner_id, 
  coach_id,
  ai_assigned_tier, 
  ai_reasoning, 
  reasoning_headline, 
  recommended_action, 
  draft_message_subject, 
  ai_draft_message,
  action_type
) VALUES (
  {{ test_table.selectedSourceRow["Learner ID_1"] }}, 
  {{ test_table.selectedSourceRow["Coach ID"] }},
  {{ formatter.value.ai_assigned_tier }}, 
  {{ formatter.value.ai_reasoning }}, 
  {{ formatter.value.reasoning_headline }}, 
  {{ formatter.value.recommended_action }}, 
  {{ formatter.value.draft_message_subject }}, 
  {{ formatter.value.ai_draft_message }},
  {{ formatter.value.action_type }}
);