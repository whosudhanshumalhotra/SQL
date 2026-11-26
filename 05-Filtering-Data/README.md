# Module 05 – Filtering Data (MySQL)

Learn how to retrieve only the rows that match specific conditions using MySQL's `WHERE` clause and filtering operators.

## Learning objectives

By the end of this module, you will be able to:

- Filter rows with `WHERE`.
- Compare values using comparison operators.
- Combine conditions with `AND`, `OR`, and `NOT`.
- Filter inclusive ranges with `BETWEEN`.
- Match a value against a list with `IN`.
- Search text patterns with `LIKE`, `%`, and `_`.
- Combine filtering techniques in practical queries.

## Module roadmap

| # | Topic | Notes |
|---|---|---|
| 01 | WHERE Clause | [01-where-clause.md](01-where-clause.md) |
| 02 | Comparison Operators | [02-comparison-operators.md](02-comparison-operators.md) |
| 03 | Logical Operators | [03-logical-operators.md](03-logical-operators.md) |
| 04 | BETWEEN Operator | [04-between-operator.md](04-between-operator.md) |
| 05 | IN Operator | [05-in-operator.md](05-in-operator.md) |
| 06 | LIKE Operator | [06-like-operator.md](06-like-operator.md) |

## Practice files

- [Practice script](practice/01-filtering-data-practice.sql) – creates a sample table and demonstrates every topic.
- [Exercises](exercises.md) – solve practical filtering problems.
- [Solutions](solutions/exercises-solutions.sql) – check your answers after attempting the exercises.
- [Interview questions](interview-questions.md) – revise common interview questions.
- [Revision cheat sheet](revision-cheat-sheet.md) – quick syntax reference.

## How to run

1. Open MySQL Workbench or your preferred MySQL client.
2. Open `practice/01-filtering-data-practice.sql`.
3. Execute the script from top to bottom.
4. Try the exercises in `exercises.md` using the sample `employees` table.
5. Check `solutions/exercises-solutions.sql` only after attempting the questions.

> The practice script creates and uses a database named `sql_learning` and recreates the sample `employees` table. Do not run it in a database containing important data.

## Sample table

The practice dataset contains employee details such as name, department, city, salary, age, and joining date. All examples and exercises use this table.

## Key takeaway

Filtering narrows a result set. `WHERE` defines the condition, while operators such as `=`, `AND`, `BETWEEN`, `IN`, and `LIKE` define how rows are matched.

---

**Previous module:** Module 04 – DML  
**Next module:** Module 06 – To be added
