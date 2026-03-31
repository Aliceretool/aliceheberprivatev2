WITH moved_row AS (
  DELETE FROM agent_learner_state
  WHERE id = {{ currentLearner.value.id }}
  RETURNING *
)
INSERT INTO agent_output_history (
  ai_assigned_tier,
  ai_draft_message,
  ai_reasoning,
  coach_decision,
  coach_feedback,
  coach_id,
  copied_message,
  created_at,
  draft_message_subject,
  learner_id,
  log_id,
  reasoning_headline,
  recommended_action,
  snooze_until_date
)
SELECT 
  ai_assigned_tier,
  ai_draft_message,
  ai_reasoning,
  {{ actionType }}, 
  coach_feedback,
  coach_id,
  {{ draftMessageTextArea.value }},
  created_at,
  draft_message_subject,
  CAST(learner_id AS text),
  NULL, 
  reasoning_headline,
  recommended_action,
  {{ snoozeDate.value || null }}
FROM moved_row;