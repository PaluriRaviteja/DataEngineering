-- Date Extraction (Easy) · SQL
-- https://leetdata.ai/problems/date-extraction
-- Accepted on leetdata.ai · 2026-10-21

-- The 'events' table is pre-loaded.

SELECT
  event_name,
  EXTRACT(YEAR FROM event_date) AS event_year,
  EXTRACT(MONTH FROM event_date) AS event_month
FROM events;
