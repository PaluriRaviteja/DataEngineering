-- Count by Category (Easy) · SQL
-- https://leetdata.ai/problems/count-by-category
-- Accepted on leetdata.ai · 2026-10-21

-- Count the number of products in each category

SELECT
  category,
  count(product_id) AS product_count
FROM products
GROUP BY category
ORDER BY category;
