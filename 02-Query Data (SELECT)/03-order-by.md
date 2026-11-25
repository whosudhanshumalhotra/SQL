# Lesson 03: ORDER BY

## 1. What is ORDER BY?

`ORDER BY` sorts the rows returned by a query.

## 2. Syntax

```sql
SELECT column1, column2
FROM table_name
ORDER BY column_name [ASC | DESC];
```

- `ASC`: ascending order; this is the default.
- `DESC`: descending order.

## 3. Ascending order

```sql
SELECT first_name, salary
FROM employees
ORDER BY salary ASC;
```

For numbers, ascending means smallest to largest. For text, ordering follows the applicable collation.

## 4. Descending order

```sql
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;
```

## 5. Sort by multiple columns

```sql
SELECT first_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;
```

Rows are first sorted by department. Within each department, salary is sorted from highest to lowest.

## 6. Sort using a selected-column alias

```sql
SELECT first_name, salary * 12 AS annual_salary
FROM employees
ORDER BY annual_salary DESC;
```

## Key takeaways

- `ORDER BY` sorts the final result.
- `ASC` is the default direction.
- `DESC` sorts in descending order.
- Multiple sort keys are evaluated from left to right.
- Without `ORDER BY`, row order is not guaranteed.

## Practice

1. Display employees from lowest to highest salary.
2. Display employees from newest to oldest joining date.
3. Sort by department alphabetically and salary descending within each department.
