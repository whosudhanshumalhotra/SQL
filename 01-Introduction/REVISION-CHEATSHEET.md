# Module 01 — Quick Revision Cheat Sheet

## SQL fundamentals

- **SQL:** Structured Query Language; used to communicate with relational database systems.
- **Database:** Organized collection of data.
- **DBMS:** Software used to manage databases.
- **RDBMS:** DBMS that organizes data into related tables.
- **Table:** Data organized into rows and columns.
- **Row:** One record.
- **Column:** One attribute.

## Relational keys

- **Primary key:** Uniquely identifies a row.
- **Foreign key:** References a key in another table to represent a relationship.

## Common database categories

- Relational
- Hierarchical
- Network
- Object-oriented
- NoSQL: document, key-value, column-family, graph, and other models

## SQL command categories

| Category | Full form | Common commands |
|---|---|---|
| DDL | Data Definition Language | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` |
| DML | Data Manipulation Language | `INSERT`, `UPDATE`, `DELETE` |
| DQL | Data Query Language | `SELECT` |
| DCL | Data Control Language | `GRANT`, `REVOKE` |
| TCL | Transaction Control Language | `COMMIT`, `ROLLBACK`, `SAVEPOINT` |

*Classification is a common teaching convention; some references classify `SELECT` under DML.*

## Query components

- **Keyword:** `SELECT`, `FROM`, `WHERE`
- **Identifier:** `customers`, `customer_id`
- **Clause:** `WHERE`, `ORDER BY`
- **Operator:** `=`, `>`, `AND`, `+`
- **Expression:** `price * quantity`
- **Function:** `COUNT()`, `SUM()`, `UPPER()`
- **Literal:** `'India'`, `100`, `TRUE`
- **Comment:** `-- explanation`

## Safe, readable SQL habits

1. Write keywords consistently in uppercase.
2. Use meaningful `snake_case` names.
3. Put major clauses on separate lines.
4. Use aliases that improve clarity.
5. Select only the columns you need in production.
6. Preview target rows before `UPDATE` or `DELETE`.
7. Use transactions when appropriate for important changes.
8. End statements with semicolons.

## DELETE vs TRUNCATE vs DROP

- `DELETE`: removes rows; can use `WHERE`.
- `TRUNCATE`: removes all rows; table remains.
- `DROP`: removes the table itself.

## Example query

```sql
SELECT
    customer_id,
    customer_name
FROM customers
WHERE country = 'India'
ORDER BY customer_name;
```

## MySQL reminder

This repository uses MySQL 8.0+ examples. Other SQL systems may differ in functions, data types, transaction behavior, and syntax.
