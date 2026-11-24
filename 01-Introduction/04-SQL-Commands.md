# 04 — SQL Commands

SQL statements are commonly grouped into categories according to what they do. This repository uses the widely taught five-category classification.

> Note: Educational references do not always classify every statement identically. For example, `SELECT` is sometimes grouped under DML instead of being listed separately as DQL.

## 1. DDL — Data Definition Language

DDL commands define or change database structures.

| Command | Purpose |
|---|---|
| `CREATE` | Creates a database object, such as a table. |
| `ALTER` | Changes an existing database object. |
| `DROP` | Removes a database object. |
| `TRUNCATE` | Removes all rows from a table while retaining the table structure. |

Example:

```sql
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(100)
);

ALTER TABLE customers
ADD COLUMN email VARCHAR(150);
```

## 2. DML — Data Manipulation Language

DML commands add, change, or remove table data.

| Command | Purpose |
|---|---|
| `INSERT` | Adds rows. |
| `UPDATE` | Changes existing rows. |
| `DELETE` | Removes selected rows or all rows when no filter is used. |

Example:

```sql
INSERT INTO customers (customer_id, customer_name)
VALUES (1, 'Aditi');

UPDATE customers
SET customer_name = 'Aditi Sharma'
WHERE customer_id = 1;

DELETE FROM customers
WHERE customer_id = 1;
```

Always check the target rows before running an `UPDATE` or `DELETE` on important data.

## 3. DQL — Data Query Language

DQL is commonly used as the category for retrieving data.

| Command | Purpose |
|---|---|
| `SELECT` | Retrieves data from one or more tables or other query sources. |

Example:

```sql
SELECT customer_id, customer_name
FROM customers;
```

## 4. DCL — Data Control Language

DCL commands manage database permissions.

| Command | Purpose |
|---|---|
| `GRANT` | Gives privileges. |
| `REVOKE` | Removes privileges. |

Example (illustrative; the role must exist and permissions depend on the database):

```sql
GRANT SELECT ON customers TO analyst_role;
REVOKE SELECT ON customers FROM analyst_role;
```

## 5. TCL — Transaction Control Language

TCL commands control transactions.

| Command | Purpose |
|---|---|
| `COMMIT` | Makes the current transaction's changes permanent. |
| `ROLLBACK` | Reverts uncommitted changes in the current transaction. |
| `SAVEPOINT` | Creates a point within a transaction to which you can roll back. |

MySQL example:

```sql
BEGIN;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 1;

SAVEPOINT after_debit;

UPDATE accounts
SET balance = balance + 500
WHERE account_id = 2;

COMMIT;
```

This is a syntax illustration; use a transactional storage engine such as InnoDB, and validate accounts, balances, and affected row counts.

## 6. DELETE vs. TRUNCATE vs. DROP

| Command | What it removes | Table remains? |
|---|---|---|
| `DELETE` | Rows (optionally selected with `WHERE`) | Yes |
| `TRUNCATE` | All rows | Yes |
| `DROP` | The table object itself | No |

Exact transaction, identity-reset, trigger, and locking behavior can vary by database system.

## Quick memory guide

- DDL — structure
- DML — modify data
- DQL — query data
- DCL — permissions
- TCL — transactions

## Check your understanding

1. Which category includes `CREATE`?
2. Which category includes `INSERT` and `UPDATE`?
3. Which category includes `SELECT` in this five-category classification?
4. Are `GRANT` and `REVOKE` DCL or TCL?
5. What is the main difference between `TRUNCATE` and `DROP`?
