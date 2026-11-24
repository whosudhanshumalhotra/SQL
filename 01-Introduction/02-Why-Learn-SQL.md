# 02 — Why Learn SQL?

SQL is useful because organizations collect data from customers, products, orders, payments, employees, applications, and many other sources. SQL helps people retrieve and work with that data.

## 1. Common use cases

### Data analysis

Analysts use SQL to filter, group, summarize, and investigate business data.

Example: calculate total sales from an `orders` table.

```sql
SELECT SUM(amount) AS total_sales
FROM orders;
```

This assumes the table has a numeric column named `amount`.

### Business analysis

Business analysts use data to answer questions such as:

- Which products generate the most revenue?
- How many customers placed orders this month?
- Which region has the highest sales?
- Where are customers dropping out of a process?

### Backend development

Backend developers use SQL to interact with application databases. For example, an e-commerce application may retrieve a customer's orders or save a new payment record.

### Reporting and decision-making

SQL can prepare datasets for dashboards, recurring reports, and business reviews.

## 2. Where SQL is used

SQL is used across many domains, including:

- E-commerce and retail
- Banking and financial services
- Healthcare administration
- Telecommunications
- Education
- Logistics and supply chains
- Software and technology

## 3. Why it is a valuable skill

- It helps answer questions directly from structured data.
- It is useful in data analyst, business analyst, and software development roles.
- It supports reporting and operational decision-making.
- It is widely used with relational database systems.

## 4. Example business question

**Question:** What is the total value of all orders?

```sql
SELECT SUM(amount) AS total_order_value
FROM orders;
```

`SUM()` is an aggregate function. You will study functions and aggregation in later modules.

## Key takeaways

SQL is not limited to one job title. It is a practical skill for anyone who needs to work with data stored in relational databases.

## Check your understanding

1. Give two examples of business questions SQL can help answer.
2. How might a backend developer use SQL?
3. Why might an analyst use `SUM()`?
