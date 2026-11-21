-- Department Salary Analysis (Easy) · SQL
-- https://leetdata.ai/problems/department-salary-analysis
-- Accepted on leetdata.ai · 2026-10-21

-- The 'employees' table is pre-loaded.

SELECT
  department,
  count(emp_id) AS headcount,
  round(Avg(salary),2) AS avg_salary,
  MAX(salary) AS max_salary
FROM employees
GROUP BY department
ORDER BY department;
