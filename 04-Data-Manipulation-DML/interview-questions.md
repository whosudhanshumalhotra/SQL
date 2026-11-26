# Module 04 – DML Interview Questions

## 1. What is DML?

DML stands for Data Manipulation Language. It is used to add, modify, and remove records in database tables. Common commands in this module are `INSERT`, `UPDATE`, and `DELETE`.

## 2. What is the purpose of INSERT?

`INSERT` adds new records to a table.

```sql
INSERT INTO employees (employee_id, first_name, last_name, department_id, salary, hire_date)
VALUES (120, 'Aditi', 'Roy', 1, 60000.00, '2024-01-10');
```

## 3. Can we insert multiple rows with one INSERT statement?

Yes. Multiple value groups can be supplied in one `INSERT` statement.

```sql
INSERT INTO departments (department_id, department_name, location)
VALUES
    (5, 'Operations', 'Jaipur'),
    (6, 'Support', 'Chennai');
```

## 4. What happens if we omit a column in an INSERT statement?

MySQL uses the column's default value if one is defined. Otherwise, `NULL` may be inserted if the column permits it. If the column is `NOT NULL` and has no default, the insert may fail.

## 5. What is INSERT IGNORE?

`INSERT IGNORE` tells MySQL to handle certain errors as warnings and skip or adjust problematic rows instead of stopping with an error. For example, a row that duplicates a primary key can be skipped. It should be used carefully because it can hide data-quality problems.

## 6. What is the purpose of UPDATE?

`UPDATE` modifies existing records.

```sql
UPDATE employees
SET salary = 65000
WHERE employee_id = 101;
```

## 7. What happens if UPDATE is used without WHERE?

Every row in the table is updated. This is a common and potentially serious mistake.

## 8. Can UPDATE modify multiple columns?

Yes.

```sql
UPDATE employees
SET salary = 70000,
    department_id = 2
WHERE employee_id = 101;
```

## 9. What is the purpose of DELETE?

`DELETE` removes records from a table. The table structure remains.

```sql
DELETE FROM employees
WHERE employee_id = 101;
```

## 10. What happens if DELETE is used without WHERE?

All rows are deleted, but the table itself remains.

## 11. What is the difference between DELETE and TRUNCATE?

- `DELETE` is a DML statement that removes rows. It supports a `WHERE` condition.
- `TRUNCATE TABLE` is DDL in MySQL. It removes all rows and does not support `WHERE`.
- `TRUNCATE` generally resets an `AUTO_INCREMENT` counter and causes an implicit commit.

## 12. What is a transaction?

A transaction is a group of operations treated as one unit of work. With InnoDB, transaction changes can be committed or rolled back.

## 13. What is the difference between COMMIT and ROLLBACK?

- `COMMIT` makes the current transaction's changes permanent.
- `ROLLBACK` undoes changes made in the current uncommitted transaction.

## 14. Can ROLLBACK undo a committed transaction?

No. Once a transaction is committed, a normal `ROLLBACK` cannot undo it.

## 15. What is the difference between INSERT and UPDATE?

`INSERT` creates new rows. `UPDATE` changes values in existing rows.

## 16. How do you safely run an UPDATE or DELETE?

1. Write a SELECT query using the intended condition.
2. Verify that it returns only the intended rows.
3. Execute the UPDATE or DELETE with the same condition.
4. Check the affected-row count and verify the result.
5. Use a transaction when appropriate.

## 17. What is INSERT ... SELECT?

It inserts the result of a SELECT query into a target table.

```sql
INSERT INTO employee_directory (employee_id, full_name)
SELECT employee_id, CONCAT(first_name, ' ', last_name)
FROM employees;
```

## 18. Does MySQL support transactions for every storage engine?

No. Transaction support depends on the storage engine. InnoDB supports transactions; non-transactional engines such as MyISAM do not provide the same rollback behavior.
