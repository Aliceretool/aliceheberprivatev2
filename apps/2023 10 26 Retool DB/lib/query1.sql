SELECT *
FROM audit_trail_events
WHERE "userId" = 1
  AND "updatedAt" >= '2025-01-01 00:00:00'
  AND "updatedAt" < '2026-01-01 00:00:00'
limit 50
