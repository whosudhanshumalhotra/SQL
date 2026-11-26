# Module 03 – Hands-on Exercises

Complete these tasks in MySQL Workbench. Type the SQL yourself and verify each result.

## Level 1 – Beginner
1. Create a database named `college_db`.
2. Select `college_db`.
3. Display all databases.
4. Create a `students` table with:
   - `student_id` – integer primary key with auto-increment.
   - `student_name` – `VARCHAR(100)`, required.
   - `email` – `VARCHAR(150)`, unique.
   - `admission_date` – `DATE`.
5. Display all tables in the selected database.
6. Describe the `students` table.
7. Display the complete `CREATE TABLE` definition.

## Level 2 – Intermediate
8. Add a `phone_number` column to `students`.
9. Add a `city` column with a maximum length of 60 characters.
10. Modify `student_name` to `VARCHAR(150)`.
11. Rename `phone_number` to `contact_number`.
12. Create a `courses` table with a primary key and unique course name.
13. Create an `enrollments` table referencing both `students` and `courses`.
14. Add a `CHECK` constraint ensuring course duration is greater than zero.
15. Create an index on `students.city`.

## Level 3 – Challenging
16. Rename `students` to `college_students`.
17. Drop the index created in Exercise 15.
18. Drop the `city` column.
19. Remove the foreign key from `enrollments` after identifying its actual constraint name.
20. Explain what happens if you attempt to drop `students` while `enrollments` still references it.
21. Write a safe cleanup script that drops tables in dependency order and then drops `college_db`.

## Self-evaluation
- [ ] I can write `CREATE DATABASE` and `CREATE TABLE` without notes.
- [ ] I can choose appropriate data types.
- [ ] I can explain and apply the six common constraints.
- [ ] I can add, modify, rename, and drop columns.
- [ ] I can explain `DROP` vs `TRUNCATE` vs `DELETE`.
- [ ] I can inspect table definitions and constraints.
