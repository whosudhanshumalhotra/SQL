# Module 04: Data Manipulation Language (DML)

> **Database:** MySQL 8.0+  
> **Repository:** `sql-from-zero-to-advanced`

DML commands are used to add, modify, and remove records stored in database tables.

## Learning objectives

By the end of this module, you should be able to:

- Insert one or multiple rows using `INSERT`.
- Insert data into selected columns and use `INSERT ... SELECT`.
- Modify one or more rows using `UPDATE`.
- Delete selected rows using `DELETE`.
- Use `WHERE` conditions safely with `UPDATE` and `DELETE`.
- Use transactions with `START TRANSACTION`, `COMMIT`, and `ROLLBACK`.
- Recognize common DML mistakes and avoid accidental data changes.

## Topics covered

| Topic | What you will learn |
|---|---|
| INSERT | Single-row, multi-row, column-specific, `INSERT IGNORE`, `INSERT ... SELECT` |
| UPDATE | Updating one column, multiple columns, conditional updates |
| DELETE | Deleting selected rows, deleting all rows, safe deletion |
| Transactions | `COMMIT`, `ROLLBACK`, and transactional DML |
| Best practices | Preview affected rows, use precise conditions, verify results |

## Repository structure

```text
04-Data-Manipulation-DML/
├── README.md
├── 01-setup-and-sample-data.sql
├── 02-insert.sql
├── 03-update.sql
├── 04-delete.sql
├── 05-transactions.sql
├── 06-practice.sql
├── exercises.md
├── solutions.sql
├── interview-questions.md
└── cheat-sheet.md
```

## Prerequisites

- MySQL 8.0 or later
- Basic understanding of databases, tables, columns, data types, and constraints
- Completion of the earlier modules covering database creation and querying

## How to run

1. Open MySQL Workbench or your preferred MySQL client.
2. Run `01-setup-and-sample-data.sql` first.
3. Run the remaining SQL files in numerical order when studying each topic.
4. Read `exercises.md` and attempt the questions before checking `solutions.sql`.

The scripts use the database `sql_learning` and tables created by the setup script.

## Important safety rules

- Always preview the target rows with `SELECT` before an `UPDATE` or `DELETE`.
- Never omit `WHERE` unintentionally. Without it, every row in the table can be affected.
- Check the affected-row count after executing a statement.
- Use a transaction when a group of changes should be treated as one unit of work.
- `ROLLBACK` can undo uncommitted changes in transactional tables such as InnoDB. It cannot reverse a transaction after it has been committed.

## Quick command overview

```sql
-- Add a row
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary)
VALUES (106, 'Aarav', 'Sharma', 1, 55000.00);

-- Modify a row
UPDATE employees
SET salary = 60000.00
WHERE employee_id = 106;

-- Remove a row
DELETE FROM employees
WHERE employee_id = 106;
```

## Completion checklist

- [ ] Understand the purpose of DML.
- [ ] Practice all important `INSERT` variations.
- [ ] Update records using accurate conditions.
- [ ] Delete selected records safely.
- [ ] Understand `COMMIT` and `ROLLBACK`.
- [ ] Complete the practice exercises.
- [ ] Revise the interview questions and cheat sheet.

---
**Next module:** Continue with the next topic in your SQL learning roadmap.
