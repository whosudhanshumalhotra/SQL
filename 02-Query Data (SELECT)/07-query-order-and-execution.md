# Lesson 07: Query Order and Execution

A key SQL skill is understanding the difference between the order in which a query is written and the logical order in which its clauses are processed.

## 1. Written syntax order in MySQL

A common SELECT query is written in this order:

```sql
SELECT [DISTINCT] columns
FROM table_name
WHERE row_condition
GROUP BY group_columns
HAVING group_condition
ORDER BY sort_columns
LIMIT row_count OFFSET offset;
```

Not every clause is required.

## 2. Simplified logical processing order

For a typical SELECT query, the conceptual processing order is:

1. `FROM` – identify the source table(s).
2. `WHERE` – filter individual rows.
3. `GROUP BY` – form groups.
4. `HAVING` – filter groups.
5. `SELECT` – calculate and choose output expressions.
6. `DISTINCT` – remove duplicate result rows.
7. `ORDER BY` – sort the result.
8. `LIMIT` / `OFFSET` – restrict the returned rows.

This is a logical model for understanding query behavior, not a promise about the database engine's physical execution plan. MySQL's optimizer may choose a different physical strategy.

## 3. Complete example

```sql
SELECT
    department,
    AVG(salary) AS average_salary
FROM employees
WHERE city <> 'Mumbai'
GROUP BY department
HAVING AVG(salary) > 50000
ORDER BY average_salary DESC
LIMIT 3;
```

Conceptually:

1. Read rows from `employees`.
2. Exclude employees from Mumbai.
3. Group remaining rows by department.
4. Keep departments whose average salary is above 50000.
5. Return department and average salary.
6. Sort by average salary, highest first.
7. Return the first three groups.

## 4. Why is this order important?

A SELECT alias is created in the SELECT stage of the logical model. Therefore, it is generally available to `ORDER BY`, but not to `WHERE`.

```sql
-- Valid in MySQL
SELECT salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;
```

```sql
-- Invalid: WHERE cannot use this SELECT alias
SELECT salary * 12 AS annual_salary
FROM employees
WHERE annual_salary > 600000;
```

Repeat the expression or use a subquery/CTE when filtering by a calculated value.

## 5. Interview-ready distinction

- Written order: `SELECT` appears before `FROM`.
- Logical processing: `FROM` is considered before `SELECT`.
- Physical execution: the optimizer chooses an efficient execution plan, which may not follow the simplified logical sequence step by step.

## Quick memory line

**FROM → WHERE → GROUP BY → HAVING → SELECT → DISTINCT → ORDER BY → LIMIT**

Remember: this is the simplified logical processing order, not the written syntax order.
