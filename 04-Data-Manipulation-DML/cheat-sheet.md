# Module 04 – DML Cheat Sheet

## INSERT – Add records

```sql
-- Single row
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);

-- Multiple rows
INSERT INTO table_name (column1, column2)
VALUES
    (value1, value2),
    (value3, value4);

-- Selected columns
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);

-- Insert query results
INSERT INTO target_table (column1, column2)
SELECT column1, column2
FROM source_table
WHERE condition;
```

## UPDATE – Modify records

```sql
-- Update one row
UPDATE table_name
SET column1 = value1
WHERE condition;

-- Update multiple columns
UPDATE table_name
SET column1 = value1,
    column2 = value2
WHERE condition;

-- Update using an expression
UPDATE employees
SET salary = salary * 1.10
WHERE department_id = 1;
```

## DELETE – Remove records

```sql
-- Delete selected rows
DELETE FROM table_name
WHERE condition;

-- Delete every row (use with extreme care)
DELETE FROM table_name;
```

## Transactions

```sql
START TRANSACTION;

UPDATE employees
SET salary = salary + 1000
WHERE employee_id = 101;

COMMIT;
-- Or use ROLLBACK instead of COMMIT.
```

## Essential reminders

| Command | Purpose | WHERE supported? |
|---|---|---|
| INSERT | Add rows | No |
| UPDATE | Modify rows | Yes |
| DELETE | Remove rows | Yes |
| TRUNCATE | Remove all rows | No |

- `INSERT` adds records.
- `UPDATE` changes existing records.
- `DELETE` removes records but preserves the table.
- `COMMIT` saves transaction changes.
- `ROLLBACK` undoes uncommitted transaction changes.
- MySQL `INSERT IGNORE` can skip certain problematic rows and produce warnings.
- Use InnoDB when you need transactional behavior.

## Golden safety rule

**Before every UPDATE or DELETE, run a SELECT with the same WHERE condition and verify the affected rows.**
