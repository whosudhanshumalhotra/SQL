# 03 — Database and Types

## 1. What is a database?

A **database** is an organized collection of data that can be stored, accessed, managed, and updated.

For example, an online shopping application may store customers, products, orders, and payments.

## 2. DBMS and RDBMS

| Concept | Explanation |
|---|---|
| DBMS | Software that helps users create, store, retrieve, update, and manage data. |
| RDBMS | A type of DBMS that organizes data into related tables. |

An RDBMS commonly uses relationships between tables and constraints to help maintain data integrity.

## 3. Relational database basics

A relational database stores data in tables.

Example: `customers`

| customer_id | customer_name |
|---:|---|
| 1 | Aditi |
| 2 | Neha |

Example: `orders`

| order_id | customer_id | amount |
|---:|---:|---:|
| 101 | 1 | 2500 |
| 102 | 2 | 1800 |

The `customer_id` in `orders` can refer to the matching customer in `customers`.

### Primary key

A **primary key** identifies each row uniquely in a table. In the example, `customers.customer_id` could be the primary key.

### Foreign key

A **foreign key** is a column (or group of columns) that references a key in another table. Here, `orders.customer_id` can be a foreign key referencing `customers.customer_id`.

## 4. Common database categories

These are broad ways of organizing database technologies:

| Type | High-level idea |
|---|---|
| Relational | Data is organized into tables with defined relationships. |
| Hierarchical | Data is organized in a tree-like parent-child structure. |
| Network | Records can have more complex many-to-many-style links. |
| Object-oriented | Data is represented using object-oriented concepts. |
| NoSQL | A broad family of non-relational database approaches, including document, key-value, column-family, and graph databases. |

This is an introductory classification; real database products may combine ideas or support multiple data models.

## 5. SQL and NoSQL

| SQL / relational approach | NoSQL approaches |
|---|---|
| Commonly uses tables with rows and columns. | May use documents, key-value pairs, graphs, or other structures. |
| Often uses a defined schema. | Schema flexibility varies by database and design. |
| Relationships can be represented with keys and joins. | Relationship handling depends on the data model and product. |

Neither approach is universally better. The right choice depends on the application's data, access patterns, consistency needs, and operational requirements.

## Key takeaways

- A database stores organized data.
- A DBMS is software for managing databases.
- An RDBMS stores data in related tables.
- Primary keys uniquely identify rows; foreign keys represent references between tables.
- NoSQL is a family of non-relational data models, not one single database type.

## Check your understanding

1. What is the difference between a DBMS and an RDBMS?
2. What is the purpose of a primary key?
3. What does a foreign key represent?
4. Name three NoSQL data models.
