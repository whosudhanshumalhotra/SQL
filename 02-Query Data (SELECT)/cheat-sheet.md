# Module 02: Quick Revision Cheat Sheet

## Basic SELECT

```sql
SELECT column1, column2
FROM table_name;
```

All columns:

```sql
SELECT * FROM table_name;
```

Alias:

```sql
SELECT salary * 12 AS annual_salary
FROM employees;
```

## WHERE operators

| Operator | Meaning |
|---|---|
| `=` | Equal |
| `<>` | Not equal |
| `>` / `<` | Greater / less |
| `>=` / `<=` | Greater/less than or equal |
| `AND` | Both conditions true |
| `OR` | At least one true |
| `NOT` | Reverse condition |
| `BETWEEN` | Inclusive range |
| `IN` | Match any listed value |
| `LIKE` | Pattern matching |
| `IS NULL` | Missing value |

## LIKE patterns

| Pattern | Meaning |
|---|---|
| `'A%'` | Starts with A |
| `'%A'` | Ends with A |
| `'%A%'` | Contains A |
| `'_A%'` | Second character is A |

## ORDER BY

```sql
ORDER BY salary ASC;  -- low to high
ORDER BY salary DESC; -- high to low
```

## Aggregate functions

| Function | Meaning |
|---|---|
| `COUNT(*)` | Count rows |
| `SUM(salary)` | Total |
| `AVG(salary)` | Average |
| `MIN(salary)` | Minimum |
| `MAX(salary)` | Maximum |

## GROUP BY and HAVING

```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

Remember: WHERE filters rows; HAVING filters groups.

## DISTINCT and LIMIT (MySQL)

```sql
SELECT DISTINCT department FROM employees;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;

SELECT *
FROM employees
ORDER BY employee_id
LIMIT 5 OFFSET 10;
```

MySQL uses `LIMIT`, not SQL Server's `TOP`.

## Query order

**Written syntax order:**

`SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY → LIMIT`

**Simplified logical processing order:**

`FROM → WHERE → GROUP BY → HAVING → SELECT → DISTINCT → ORDER BY → LIMIT`

## Common mistakes

1. Using `= NULL` instead of `IS NULL`.
2. Using aggregate conditions in `WHERE` instead of `HAVING`.
3. Forgetting `ORDER BY` when selecting top-N rows.
4. Selecting non-aggregated columns that are not valid under the query's `GROUP BY` rules.
5. Writing SQL Server `TOP` syntax in MySQL.
