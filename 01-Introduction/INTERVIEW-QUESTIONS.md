# Module 01 — SQL Interview Questions

Use these questions to practise concise, clear explanations. Try answering aloud before reading the suggested points.

## 1. What is SQL?

**Suggested answer:** SQL stands for Structured Query Language. It is used to communicate with relational database systems to define structures, retrieve and modify data, and manage permissions and transactions.

## 2. What is the difference between DBMS and RDBMS?

**Suggested answer:** DBMS is software for managing databases. An RDBMS is a type of DBMS that organizes data into related tables and commonly supports keys and relational constraints.

## 3. What is a table?

**Suggested answer:** A table is a database structure that organizes data into rows and columns. Each row represents a record, and each column represents an attribute.

## 4. What is a primary key?

**Suggested answer:** A primary key uniquely identifies each row in a table. A primary key cannot contain duplicate values, and it cannot be NULL.

## 5. What is a foreign key?

**Suggested answer:** A foreign key is a column or set of columns that references a key in another table (or, in some designs, the same table). It is used to represent relationships and enforce referential integrity.

## 6. What is the difference between SQL and NoSQL?

**Suggested answer:** Relational SQL databases commonly organize data in tables with defined relationships. NoSQL is a broad family of non-relational models such as document, key-value, column-family, and graph databases. The appropriate choice depends on the use case.

## 7. What are the five common categories of SQL commands?

**Suggested answer:** DDL defines structures, DML modifies data, DQL retrieves data, DCL manages privileges, and TCL controls transactions. Classification conventions can vary.

## 8. What is the difference between DELETE, TRUNCATE, and DROP?

**Suggested answer:** `DELETE` removes rows and can filter them with `WHERE`; `TRUNCATE` removes all rows while retaining the table; `DROP` removes the table object itself. Details can vary by database.

## 9. What is the difference between WHERE and HAVING?

**Suggested answer:** `WHERE` filters rows before grouping; `HAVING` filters groups after grouping. This is a preview of a topic covered in a later module.

## 10. Why should we avoid SELECT * in production queries?

**Suggested answer:** It may retrieve unnecessary columns, make dependencies on table structure less explicit, and transfer more data than needed. Selecting the required columns makes the query clearer.

## 11. What is a SQL alias?

**Suggested answer:** An alias is a temporary name assigned to a table or output expression in a query. It can improve readability and simplify references.

## 12. Why is SQL formatting important?

**Suggested answer:** Consistent formatting makes queries easier to read, review, debug, and maintain, especially when they become longer or are shared across a team.

## Interview tip

Answer in this order: **definition → purpose → short example**. Keep the explanation accurate and avoid claiming that one database approach is always best.
