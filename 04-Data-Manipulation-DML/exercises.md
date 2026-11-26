# Module 04 – DML Exercises

**Instructions:** Attempt these questions using the `employees` and `departments` tables created in `01-setup-and-sample-data.sql`. Do not look at `solutions.sql` until you have tried them.

## Beginner

1. Insert one new employee with all required values.
2. Insert a new employee by specifying only the required columns and allowing the default employment status.
3. Insert three employees using a single `INSERT` statement.
4. Change the salary of employee `101` to `70000`.
5. Change the department of employee `104` to department `2`.
6. Delete employee `105`.

## Intermediate

7. Increase the salary of every employee in department `1` by 8%.
8. Set the status to `On Leave` for employees in department `2`.
9. Increase salaries by `3000` for employees earning below `55000`.
10. Insert active employees into a separate directory table using `INSERT ... SELECT`.
11. Use `INSERT IGNORE` to understand how MySQL handles a duplicate primary key.
12. Delete employees who belong to department `4` and earn less than `50000`.

## Transactions and safety

13. Update an employee's salary inside a transaction and undo the change with `ROLLBACK`.
14. Update an employee's salary inside a transaction and save the change with `COMMIT`.
15. Before a DELETE, write a SELECT query that identifies exactly the rows that will be removed.
16. Explain what happens when `UPDATE` or `DELETE` is executed without a `WHERE` clause.

## Self-evaluation

- [ ] I can insert one row and multiple rows.
- [ ] I understand default values and selected-column inserts.
- [ ] I can update one row and multiple rows.
- [ ] I can delete selected rows safely.
- [ ] I understand the difference between `COMMIT` and `ROLLBACK`.
- [ ] I preview rows before destructive changes.
