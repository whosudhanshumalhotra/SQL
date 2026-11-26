# 03 – DROP

`DROP` removes database objects such as tables, databases, and indexes.

> **Warning:** Dropping a table removes its definition and stored rows. Confirm the target before executing.

## Drop a table
```sql
DROP TABLE employees;
DROP TABLE IF EXISTS employees;
```

Drop multiple tables:
```sql
DROP TABLE IF EXISTS employee_archive, temporary_employees;
```
Foreign-key relationships can prevent a table from being dropped until dependent constraints or tables are handled.

## Drop a database
```sql
DROP DATABASE company_db;
DROP DATABASE IF EXISTS company_db;
```
This removes the database and its objects.

## Drop an index
```sql
DROP INDEX idx_employees_last_name
ON employees;
```

## DROP vs TRUNCATE vs DELETE

| Command | MySQL category | Effect |
|---|---|---|
| `DROP TABLE` | DDL | Removes table definition and data |
| `TRUNCATE TABLE` | DDL | Removes all rows, retains table structure |
| `DELETE FROM` | DML | Removes selected rows, or all rows without `WHERE` |

```sql
DROP TABLE employees;

TRUNCATE TABLE employees;

DELETE FROM employees
WHERE employee_id = 10;
```

### MySQL notes
- `TRUNCATE TABLE` does not accept `WHERE`.
- For InnoDB, truncation is implemented as DDL and causes an implicit commit.
- `TRUNCATE` commonly resets an `AUTO_INCREMENT` counter.
- `DELETE` can use `WHERE`; without it, every row is deleted.
- Do not assume DDL can be undone with `ROLLBACK`.

## Safety checklist
1. Confirm database and table names.
2. Check whether other tables reference the target.
3. Verify a backup exists if data matters.
4. Run destructive commands only in the intended environment.
