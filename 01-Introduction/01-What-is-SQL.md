# 01 — What is SQL?

## 1. Definition

**SQL (Structured Query Language)** is a language used to communicate with relational database systems. It allows us to define database structures, retrieve information, insert and modify records, and manage access and transactions.

Think of SQL as the language we use to ask a database to store, find, or change information.

## 2. A simple example

Imagine an online store has a table named `customers`.

| customer_id | customer_name | country |
|---:|---|---|
| 1 | Aditi | India |
| 2 | Ryan | USA |
| 3 | Neha | India |

The following query retrieves customers from India:

```sql
SELECT *
FROM customers
WHERE country = 'India';
```

- `SELECT` asks for data.
- `*` means all columns.
- `FROM customers` identifies the table.
- `WHERE` filters the rows.
- `'India'` is a text value.

## 3. Important terms

| Term | Meaning |
|---|---|
| Database | An organized collection of data. |
| DBMS | Database Management System; software used to create, manage, and access databases. |
| RDBMS | Relational DBMS; stores data in related tables. |
| Table | Data organized into rows and columns. |
| Row / record | One individual entry in a table. |
| Column / field | One attribute stored for each record. |
| Query | A statement sent to a database to perform an operation. |

## 4. Examples of relational database systems

- MySQL
- MySQL
- Oracle Database
- Microsoft SQL Server

SQL is the language; PostgreSQL, MySQL, Oracle Database, and SQL Server are database systems that support SQL, with their own dialect-specific features.

## 5. Key takeaways

- SQL is used to work with relational databases.
- A table contains rows and columns.
- A query is a statement sent to a database.
- SQL can retrieve and modify data, as well as define and manage database structures.

## Check your understanding

1. Expand SQL.
2. What is the difference between a row and a column?
3. What does `WHERE` do in the example query?
4. Is PostgreSQL a language or a database system?
