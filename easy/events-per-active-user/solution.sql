-- Events per Active User (Easy) · SQL
-- https://leetdata.ai/problems/events-per-active-user
-- Accepted on leetdata.ai · 2026-10-22

-- The 'events' table is pre-loaded.
-- One GROUP BY, two different counts, one division.

SELECT
  DATE_TRUNC('day', event_time) AS day,
  COUNT(DISTINCT user_id) AS active_users,
  COUNT(*)AS total_events,
  ROUND(COUNT(*) * 1.0 / COUNT(DISTINCT user_id), 2) AS events_per_user
FROM events
GROUP BY DATE_TRUNC('day', event_time)
ORDER BY day;
