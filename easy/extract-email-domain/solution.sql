-- Extract Email Domain (Easy) · SQL
-- https://leetdata.ai/problems/extract-email-domain
-- Accepted on leetdata.ai · 2026-10-22

-- The 'users' table is pre-loaded.
-- Tip: split_part(email, '@', 2) returns everything after the '@'.

SELECT
  split_part(email, '@',2) AS domain,
  COUNT(*) AS user_count
FROM users
GROUP BY domain
ORDER BY user_count DESC, domain;
