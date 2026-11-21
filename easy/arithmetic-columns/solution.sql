-- Arithmetic Columns (Easy) · SQL
-- https://leetdata.ai/problems/arithmetic-columns
-- Accepted on leetdata.ai · 2026-10-21

-- The 'sales' table is pre-loaded.

SELECT
  product_name,
  revenue,
  cost,
  (revenue-cost) AS profit,
  ((revenue-cost) / revenue * 100) AS margin_pct
FROM sales;
