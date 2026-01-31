/* =====================================
   CODTECH INTERNSHIP – TASK 2
   DATA ANALYSIS WITH COMPLEX QUERIES
   DATABASE: SQLite
   ===================================== */

-- Drop table if exists
DROP TABLE IF EXISTS employees;

-- Create table
CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT,
    department TEXT,
    salary INTEGER,
    joining_date TEXT
);

-- Insert sample data
INSERT INTO employees VALUES
(1, 'Amit',   'IT',      60000, '2022-01-10'),
(2, 'Riya',   'HR',      45000, '2021-03-15'),
(3, 'Karan',  'IT',      70000, '2020-07-22'),
(4, 'Sneha',  'Finance', 50000, '2022-11-01'),
(5, 'Rahul',  'IT',      55000, '2021-06-18'),
(6, 'Anjali', 'HR',      48000, '2020-09-05');

-- View all data
SELECT * FROM employees;

-------------------------------------------------
-- QUERY 1: CTE - Average salary per department
-------------------------------------------------
WITH dept_avg AS (
    SELECT department, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT * FROM dept_avg;

-------------------------------------------------
-- QUERY 2: SUBQUERY - Employees earning
-- above department average
-------------------------------------------------
SELECT emp_name, department, salary
FROM employees e
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
    WHERE department = e.department
);

-------------------------------------------------
-- QUERY 3: WINDOW FUNCTION - Salary ranking
-------------------------------------------------
SELECT emp_name, department, salary,
RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
FROM employees;

-------------------------------------------------
-- QUERY 4: WINDOW FUNCTION - Running total
-------------------------------------------------
SELECT emp_name, department, salary,
SUM(salary) OVER (PARTITION BY department ORDER BY salary) AS running_total
FROM employees;
