# Module 02: SQL Interview Questions and Answers

## 1. What is SELECT in SQL?

`SELECT` retrieves columns or expressions from a database query result.

## 2. What is the purpose of FROM?

`FROM` specifies the table or other data source from which the query reads.

## 3. What is the difference between WHERE and HAVING?

`WHERE` filters individual rows before grouping. `HAVING` filters groups, commonly using aggregate conditions, after grouping.

## 4. What is GROUP BY?

`GROUP BY` places rows with the same values in specified columns into groups, often so aggregate functions can calculate a result for each group.

## 5. Name common aggregate functions.

`COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.

## 6. What is the difference between COUNT(*) and COUNT(column)?

`COUNT(*)` counts rows. `COUNT(column)` counts non-NULL values in that column.

## 7. What is DISTINCT?

`DISTINCT` removes duplicate rows from the selected result columns.

## 8. What is the difference between ORDER BY and GROUP BY?

`ORDER BY` sorts result rows. `GROUP BY` creates groups of rows, commonly for aggregate calculations.

## 9. What is the default ORDER BY direction?

`ASC` (ascending) is the default when no direction is specified.

## 10. Does BETWEEN include its boundary values?

Yes. `BETWEEN a AND b` includes both `a` and `b`.

## 11. What is the difference between IN and OR?

`IN` is a concise way to test whether a value matches any value in a list. Equivalent OR conditions can express the same membership test.

## 12. What is the difference between LIKE wildcards % and _?

`%` matches zero or more characters. `_` matches exactly one character.

## 13. How do you find NULL values?

Use `IS NULL` or `IS NOT NULL`, not `= NULL`.

## 14. Does MySQL support TOP?

No. `TOP` is SQL Server syntax. MySQL uses `LIMIT`.

## 15. How do you find the top five salaries?

```sql
SELECT first_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;
```

## 16. What is OFFSET?

`OFFSET` skips a specified number of rows before returning the rows requested by `LIMIT`.

## 17. What is the logical processing order of a SELECT query?

A simplified order is `FROM`, `WHERE`, `GROUP BY`, `HAVING`, `SELECT`, `DISTINCT`, `ORDER BY`, and `LIMIT`.

## 18. Why can ORDER BY use a SELECT alias but WHERE generally cannot?

In the simplified logical processing model, SELECT expressions and their aliases are produced after WHERE filtering. ORDER BY is processed later and can generally refer to those aliases.

## 19. Can GROUP BY contain multiple columns?

Yes. Each unique combination of the grouping-column values forms a group.

## 20. What happens if LIMIT is used without ORDER BY?

The query returns at most the requested number of rows, but the particular rows and their order are not guaranteed.

## Interview tip

Do not only memorize definitions. Be ready to write a query, explain the expected result, and distinguish row filtering (`WHERE`) from group filtering (`HAVING`).
