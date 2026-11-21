-- Null Handling Basics (Easy) · SQL
-- https://leetdata.ai/problems/null-handling-basics
-- Accepted on leetdata.ai · 2026-10-21

-- The 'contacts' table is pre-loaded.

SELECT
  name,
  COALESCE(email,'no-email@placeholder.com') AS email,
  phone
FROM contacts
WHERE phone is not null;
