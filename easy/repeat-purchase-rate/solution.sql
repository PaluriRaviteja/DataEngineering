-- Repeat Purchase Rate (Easy) · SQL
-- https://leetdata.ai/problems/repeat-purchase-rate
-- Accepted on leetdata.ai · 2026-10-21

-- The 'orders' table is pre-loaded.
-- Step 1: orders per customer. Step 2: aggregate the aggregate.

WITH per_customer AS (
  SELECT customer_id, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id
)
SELECT
  COUNT(*) FILTER (WHERE order_count >=2) AS repeat_customers,
  COUNT(*) AS total_customers,
  ROUND(COUNT(*) FILTER (WHERE order_count>=2) * 100.0 / COUNT(*),2) AS repeat_rate_pct
FROM per_customer;
