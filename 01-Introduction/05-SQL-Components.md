# 05 — SQL Components

A SQL statement is made up of parts that work together. Understanding these components makes queries easier to read and write.

Consider:

```sql
SELECT customer_name, city
FROM customers
WHERE country = 'India'
ORDER BY customer_name;
```

## 1. Keywords

Keywords have a defined meaning in SQL.

Examples: `SELECT`, `FROM`, `WHERE`, `ORDER BY`, `CREATE`, `INSERT`.

SQL keywords are commonly written in uppercase for readability. MySQL keywords are generally case-insensitive.

## 2. Identifiers

Identifiers are names of database objects or their parts.

Examples:

- `customers` — table name
- `customer_name` — column name
- `customer_id` — column name

Use clear, consistent names. This repository uses `snake_case` for identifiers.

## 3. Clauses

A clause is a part of a SQL statement that performs a particular role.

| Clause | Role |
|---|---|
| `SELECT` | Specifies the output expressions or columns. |
| `FROM` | Specifies the source table or query. |
| `WHERE` | Filters rows. |
| `GROUP BY` | Groups rows for aggregation. |
| `HAVING` | Filters groups. |
| `ORDER BY` | Sorts the result. |
| `LIMIT` | Restricts the number of returned rows in MySQL. |

## 4. Operators

Operators perform comparisons or calculations.

| Category | Examples |
|---|---|
| Comparison | `=`, `<>`, `!=`, `>`, `<`, `>=`, `<=` |
| Logical | `AND`, `OR`, `NOT` |
| Arithmetic | `+`, `-`, `*`, `/`, `%` |
| Pattern matching | `LIKE` (MySQL; case sensitivity depends on collation) |

The exact operators available can vary by SQL dialect.

## 5. Expressions

An expression combines values, columns, operators, and/or functions to produce a value.

Examples:

```sql
price * quantity
CONCAT(first_name, ' ', last_name)
salary * 0.10
```

`CONCAT()` is used here for MySQL-compatible string concatenation.

## 6. Functions

Functions perform operations and return a value.

Examples:

```sql
COUNT(*)
SUM(amount)
AVG(amount)
MAX(amount)
MIN(amount)
UPPER(customer_name)
LOWER(customer_name)
LENGTH(customer_name)
```

Aggregate functions such as `SUM()` summarize multiple rows. Scalar functions such as `UPPER()` operate on a value for each row.

## 7. Literals

Literals are values written directly in a statement.

Examples:

```sql
'India'       -- text literal
100           -- numeric literal
TRUE          -- Boolean literal
'2026-01-15' (date value when compared with a DATE column)
```

## 8. Comments

Comments explain SQL code and are ignored by the SQL parser.

```sql
-- Single-line comment

/*
   Multi-line comment
*/
```

## Important note

These categories can overlap. For example, a clause contains keywords and may also contain identifiers, literals, operators, and expressions.

## Check your understanding

1. In the sample query, identify one keyword and one identifier.
2. Which clause filters rows?
3. Is `price * quantity` an expression?
4. Give one aggregate function and one scalar function.
5. What is the purpose of a SQL comment?
