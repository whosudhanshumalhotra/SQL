# Module 01 — Exercises

Try these without looking at the lesson notes first. Write your answers in your own words.

## Part A — Fundamentals

1. Expand SQL and explain its purpose in one or two sentences.
2. Explain the difference between a database, DBMS, and RDBMS.
3. Explain the difference between a row and a column.
4. What is a primary key? What is a foreign key?
5. Name four relational database systems.

## Part B — Database concepts

6. Give two differences between relational and NoSQL approaches.
7. Name three NoSQL data models.
8. Give one example of a situation in which an application might store customers and orders in separate related tables.

## Part C — SQL command categories

Classify each command as DDL, DML, DQL, DCL, or TCL using this module's classification:

9. `CREATE`
10. `UPDATE`
11. `SELECT`
12. `GRANT`
13. `ROLLBACK`
14. `TRUNCATE`
15. `DELETE`

## Part D — Query components

For the query below, identify the `SELECT`, `FROM`, `WHERE`, and `ORDER BY` clauses. Also identify one keyword, one identifier, one literal, and one operator.

```sql
SELECT customer_name
FROM customers
WHERE country = 'India'
ORDER BY customer_name;
```

## Part E — Practical safety and style

16. Rewrite this query using readable formatting and uppercase keywords:

```sql
select customer_id,customer_name from customers where country='India' order by customer_name;
```

17. Why should you preview rows before an `UPDATE` or `DELETE`?
18. Write a `SELECT` statement that previews the customer with `customer_id = 10`.
19. Explain why selecting only required columns is often preferable to `SELECT *`.

## Self-review

- [ ] I can explain every answer without memorizing wording.
- [ ] I can identify the five command categories.
- [ ] I can read the sample query and identify its components.
- [ ] I can format a simple query clearly.
- [ ] I understand why data-changing statements require care.
