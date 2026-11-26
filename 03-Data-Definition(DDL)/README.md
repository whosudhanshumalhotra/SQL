# Module 03: Data Definition Language (DDL)

**Database:** MySQL 8.0+ | **Level:** Beginner to Intermediate

DDL (Data Definition Language) defines and manages database objects such as databases, tables, and indexes. This module covers `CREATE`, `ALTER`, and `DROP`.

## Learning outcomes
- Create and select databases.
- Create tables using appropriate MySQL data types.
- Apply `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `NOT NULL`, `DEFAULT`, and `CHECK`.
- Modify tables and columns with `ALTER TABLE`.
- Rename and remove database objects.
- Distinguish `DROP`, `TRUNCATE`, and `DELETE`.

## Contents
| File | Topics |
|---|---|
| `notes/01-create.md` | Create databases, tables, indexes |
| `notes/02-alter.md` | Add, modify, rename, drop columns and constraints |
| `notes/03-drop.md` | Drop databases, tables, indexes |
| `notes/04-data-types.md` | Common MySQL data types |
| `notes/05-constraints.md` | Keys and integrity constraints |
| `sql/ddl-practice.sql` | Runnable practice script |
| `exercises/exercises.md` | Hands-on exercises |
| `interview/questions-and-answers.md` | 20 interview Q&As |
| `REVISION-CHEATSHEET.md` | Quick revision |

## Run the practice script
1. Connect to MySQL Server using MySQL Workbench or another MySQL client.
2. Open `sql/ddl-practice.sql`.
3. Read the comments and execute from top to bottom.
4. Inspect objects using `SHOW TABLES`, `DESCRIBE`, and `SHOW CREATE TABLE`.
5. Complete the exercises independently.

> **Warning:** The script starts by dropping `sql_ddl_module` if it already exists. Do not run it against important or production data.

## Recommended sequence
1. Read the notes in order.
2. Type and execute each SQL statement.
3. Run the practice script.
4. Complete the exercises without copying.
5. Answer the interview questions aloud.
6. Revise using the cheat sheet.

## Completion checklist
- [ ] Understand DDL.
- [ ] Create and select databases.
- [ ] Create tables with suitable data types.
- [ ] Apply common constraints.
- [ ] Alter tables and columns.
- [ ] Drop database objects safely.
- [ ] Complete exercises and interview revision.
