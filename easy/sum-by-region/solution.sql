-- Sum by Region (Easy) · SQL
-- https://leetdata.ai/problems/sum-by-region
-- Accepted on leetdata.ai · 2026-10-22

-- Calculate total sales for each region

SELECT
  region,
  SUM(amount) AS total_sales
FROM sales
GROUP BY region
ORDER BY region;
