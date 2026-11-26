# Module 03 – DDL Revision Cheat Sheet

## DDL
**DDL = Data Definition Language** – defines or changes database structures.

## CREATE
```sql
CREATE DATABASE database_name;
CREATE DATABASE IF NOT EXISTS database_name;
USE database_name;

CREATE TABLE table_name (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE INDEX index_name ON table_name(column_name);
```

## ALTER
```sql
-- Add a column
ALTER TABLE table_name ADD COLUMN column_name VARCHAR(50);

-- Modify a column definition
ALTER TABLE table_name MODIFY COLUMN column_name VARCHAR(100);

-- Rename a column (MySQL 8.0)
ALTER TABLE table_name RENAME COLUMN old_name TO new_name;

-- Rename and redefine a column
ALTER TABLE table_name CHANGE COLUMN old_name new_name VARCHAR(100);

-- Drop a column
ALTER TABLE table_name DROP COLUMN column_name;

-- Rename a table
RENAME TABLE old_table TO new_table;
```

## DROP
```sql
DROP TABLE table_name;
DROP TABLE IF EXISTS table_name;

DROP DATABASE database_name;
DROP DATABASE IF EXISTS database_name;

DROP INDEX index_name ON table_name;
```

## Common constraints
| Constraint | Meaning |
|---|---|
| `NOT NULL` | Value is required |
| `UNIQUE` | Key values cannot be duplicated |
| `PRIMARY KEY` | Unique, non-NULL row identifier |
| `FOREIGN KEY` | Enforces a table relationship |
| `DEFAULT` | Default value when omitted |
| `CHECK` | Validates a condition |

## Useful inspection commands
```sql
SHOW DATABASES;
SHOW TABLES;
DESCRIBE table_name;
SHOW CREATE TABLE table_name;
```

## DROP vs TRUNCATE vs DELETE
| Feature | DROP | TRUNCATE | DELETE |
|---|---|---|---|
| Removes rows | Yes | Yes, all | Yes |
| Keeps table structure | No | Yes | Yes |
| Supports `WHERE` | No | No | Yes |
| MySQL category | DDL | DDL | DML |

## Interview reminders
- A table has one primary key; it can be composite.
- A table can have multiple unique constraints.
- `DECIMAL` is appropriate for exact decimal values.
- MySQL 8.0.16+ enforces `CHECK` constraints.
- MySQL DDL generally causes implicit commits.
- Check foreign-key dependencies before dropping tables or columns.
