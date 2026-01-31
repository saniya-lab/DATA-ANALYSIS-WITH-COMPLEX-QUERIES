# DATA-ANALYSIS-WITH-COMPLEX-QUERIES

*Company*: CODTECH IT SOLUTIONS

*Name*: Shaik Saniya Sulthan

*Intern ID*: CTIS3401

*Domain*: SQL

*Duration*: 4 Weeks

*Mentor*: Neela Santosh

*INTERNSHIP TASK – 2 DESCRIPTION*
Data Analysis with Complex Queries
Detailed Task Description and Applications

During Internship Task-2, advanced SQL techniques were applied to perform in-depth data analysis on a relational dataset. The primary objective of this task was to move beyond basic SQL queries and demonstrate the practical use of Common Table Expressions (CTEs), Subqueries, and Window Functions for extracting meaningful insights from structured data. These techniques are widely used in industry-level data analytics, reporting, and decision-making systems.

Tasks Performed

The following tasks were performed as part of this assignment:

1. Database and Dataset Creation

A relational database was created using SQLite, and an employees table was designed to represent a real-world organizational dataset. The table included attributes such as employee ID, employee name, department, salary, and joining date. Sample data was inserted to simulate multiple departments with different salary structures. This step helped in understanding how raw organizational data is stored and structured in relational databases.

2. Use of Common Table Expressions (CTEs)

CTEs were implemented using the WITH clause to perform department-wise salary analysis. Instead of writing long and complex nested queries, CTEs were used to calculate the average salary for each department in a clean and readable manner.

By using CTEs, the logic of the query became more modular and easier to maintain. This approach is especially useful when the same intermediate result needs to be reused multiple times in complex analytical queries.

3. Implementation of Subqueries

Subqueries were used to perform conditional filtering based on calculated values. Specifically, subqueries were applied to identify employees who earn more than the average salary of their respective department.

This task demonstrated how subqueries allow comparisons between individual records and aggregated results. It also highlighted how SQL can dynamically compute values during query execution without requiring temporary tables or manual calculations.

4. Application of Window Functions

Window functions were a major focus of this task. Unlike aggregate functions, window functions allow calculations across a set of rows without collapsing the result set.

Two important window functions were implemented:

RANK(): Used to rank employees within each department based on salary. This helped in identifying top-paid employees and understanding salary hierarchy within departments.

SUM() OVER(): Used to calculate the running total of salaries for each department. This provided insight into cumulative salary expenditure and department-wise cost growth.

These operations demonstrated advanced analytical capabilities that are commonly required in reporting and financial analysis.

5. Result Analysis and Interpretation

The output of each query was carefully analyzed to derive insights such as:

Which department has the highest average salary

Which employees earn above departmental averages

Salary ranking within departments

Total and cumulative salary costs
