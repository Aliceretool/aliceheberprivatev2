SELECT * FROM agent_learner_state 
WHERE coach_id = {{ impersonate_user.value?.coach?.id || current_api_user.data.id }}