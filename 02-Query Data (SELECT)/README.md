# Module 02: Query Data (SELECT)

**Track:** SQL From Zero to Advanced  
**Database:** MySQL 8.0+  
**Level:** Beginner → Intermediate

Learn how to retrieve, filter, sort, group, and summarize records using SQL.

## Learning objectives

By the end of this module, you should be able to:

- Retrieve selected columns and all columns using `SELECT`.
- Identify the source table using `FROM`.
- Filter rows with `WHERE` and comparison/logical operators.
- Sort results with `ORDER BY`.
- Aggregate rows with `GROUP BY`.
- Filter aggregated groups with `HAVING`.
- Remove duplicate results with `DISTINCT`.
- Limit the number of returned rows with MySQL `LIMIT`.
- Explain SQL's written clause order and logical processing order.

## Lessons

| # | Lesson | File |
|---|---|---|
| 01 | SELECT and FROM | [01-select-and-from.md](01-select-and-from.md) |
| 02 | WHERE and filtering | [02-where-and-filtering.md](02-where-and-filtering.md) |
| 03 | ORDER BY | [03-order-by.md](03-order-by.md) |
| 04 | GROUP BY and aggregate functions | [04-group-by-and-aggregates.md](04-group-by-and-aggregates.md) |
| 05 | HAVING | [05-having.md](05-having.md) |
| 06 | DISTINCT and LIMIT | [06-distinct-and-limit.md](06-distinct-and-limit.md) |
| 07 | Query order and execution | [07-query-order-and-execution.md](07-query-order-and-execution.md) |

## Practice resources

- [Runnable MySQL practice script](practice.sql)
- [Hands-on exercises](exercises.md)
- [Interview questions and answers](interview-questions.md)
- [Quick revision cheat sheet](cheat-sheet.md)

## Setup

Run `practice.sql` in MySQL Workbench or another MySQL client. The script creates a small sample database named `sql_module_02` and its `employees` table.

```sql
SOURCE /path/to/practice.sql;
```

Alternatively, open the file in MySQL Workbench and execute it.

## Sample table

The practice dataset contains employee details such as department, city, salary, and joining date. Use it throughout the lessons.

## Important: MySQL syntax

This module targets **MySQL 8.0+**. SQL Server's `TOP` clause is not used here.

```sql
-- MySQL
SELECT *
FROM employees
LIMIT 5;
```

## Recommended learning workflow

1. Read one lesson.
2. Type every query yourself instead of copying blindly.
3. Run the matching examples in MySQL.
4. Predict the output before executing each query.
5. Complete the exercises without looking at the answers.
6. Explain the concept aloud as if answering an interview question.

## Completion checklist

- [ ] I can select specific columns and all columns.
- [ ] I can filter rows using `WHERE`.
- [ ] I can sort using one or more columns.
- [ ] I understand aggregate functions and `GROUP BY`.
- [ ] I can filter groups using `HAVING`.
- [ ] I understand `DISTINCT` and `LIMIT`.
- [ ] I can explain SQL query processing order.
- [ ] I have completed the practice exercises.
