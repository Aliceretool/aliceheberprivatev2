SELECT *
FROM learner_messages
WHERE learner_id = {{ table2.selectedRow.id }}
ORDER BY created_at ASC