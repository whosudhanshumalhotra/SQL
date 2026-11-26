# Module 05 – Interview Questions and Answers

## 1. What is the purpose of the WHERE clause?

`WHERE` filters rows based on a condition. Only rows for which the condition evaluates to true are returned by a `SELECT` query.

## 2. What is the difference between WHERE and ORDER BY?

`WHERE` filters rows. `ORDER BY` sorts the rows that remain in the result.

## 3. What is the difference between `=` and `LIKE`?

`=` checks equality against a value. `LIKE` compares text against a pattern using wildcards such as `%` and `_`.

## 4. What is the difference between `!=` and `<>` in MySQL?

Both mean not equal to in MySQL. `<>` is the standard SQL operator.

## 5. What is the difference between AND and OR?

`AND` requires all conditions to be true. `OR` requires at least one condition to be true.

## 6. Why are parentheses useful in a WHERE clause?

They explicitly group conditions and make the intended logic clear, particularly when `AND` and `OR` are combined.

## 7. Is BETWEEN inclusive or exclusive?

`BETWEEN` is inclusive. Both the lower and upper boundary values are included.

## 8. How can BETWEEN be written using comparison operators?

```sql
WHERE salary BETWEEN 40000 AND 70000
```

is equivalent to:

```sql
WHERE salary >= 40000
  AND salary <= 70000
```

## 9. What is the difference between IN and OR?

`IN` is a concise way to test whether one expression matches any value in a list. It can replace multiple equality checks joined by `OR`.

## 10. What is the difference between IN and BETWEEN?

`IN` checks membership in a list of specific values. `BETWEEN` checks whether a value falls within a range.

## 11. What do `%` and `_` mean in LIKE?

`%` matches zero or more characters. `_` matches exactly one character.

## 12. Write a query to find names starting with S.

```sql
SELECT *
FROM employees
WHERE employee_name LIKE 'S%';
```

## 13. Write a query to find salaries between 30000 and 60000.

```sql
SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 60000;
```

## 14. Can multiple operators be used in one WHERE clause?

Yes. For example:

```sql
SELECT *
FROM employees
WHERE department IN ('IT', 'HR')
  AND salary > 50000
  AND employee_name LIKE 'A%';
```

## 15. Is LIKE case-sensitive in MySQL?

It depends on the collation of the compared strings. Common MySQL collations are case-insensitive, while case-sensitive collations make matching case-sensitive.

## 16. What should you watch for when using NOT IN?

If the list or subquery contains `NULL`, `NOT IN` can evaluate to unknown rather than true for otherwise nonmatching values. Handle `NULL` deliberately.

## 17. Can WHERE be used with UPDATE and DELETE?

Yes. In `UPDATE` and `DELETE`, `WHERE` identifies which rows should be changed or removed. Omitting it can affect every row in the table.

## 18. What happens if WHERE is omitted from SELECT?

All rows from the selected table are returned, subject to any other clauses such as `LIMIT`.

---

## Interview revision tip

Be ready to explain the difference between:

- `AND` vs `OR`
- `IN` vs `BETWEEN`
- `=` vs `LIKE`
- `%` vs `_`
- `!=` vs `<>`
