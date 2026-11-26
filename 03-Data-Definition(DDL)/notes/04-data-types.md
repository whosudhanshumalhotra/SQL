# 04 – Common MySQL Data Types

A data type defines what kind of value a column can store. Choose types based on meaning, range, precision, and expected use.

## Numeric types

| Type | Typical use |
|---|---|
| `TINYINT` | Small integers, flags |
| `SMALLINT` | Small-range integers |
| `INT` | General integer identifiers and counts |
| `BIGINT` | Very large integer values |
| `DECIMAL(p,s)` | Exact decimal values such as money |
| `FLOAT` | Approximate single-precision values |
| `DOUBLE` | Approximate double-precision values |

```sql
quantity INT,
unit_price DECIMAL(10, 2),
measurement DOUBLE
```
Use `DECIMAL` for exact decimal arithmetic such as currency calculations.

## String types

| Type | Typical use |
|---|---|
| `CHAR(n)` | Fixed-length text |
| `VARCHAR(n)` | Variable-length text |
| `TEXT` | Larger text content |

```sql
country_code CHAR(2),
full_name VARCHAR(100),
description TEXT
```

## Date and time types

| Type | Typical use |
|---|---|
| `DATE` | Calendar date |
| `TIME` | Time of day or duration |
| `DATETIME` | Date and time |
| `TIMESTAMP` | Date and time with MySQL time-zone conversion behavior |

```sql
birth_date DATE,
start_time TIME,
created_at DATETIME,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
```

## Other useful types
- `BOOLEAN` is a synonym for `TINYINT(1)` in MySQL.
- `JSON` stores JSON documents and supports MySQL JSON functions.
- `BLOB` stores binary data.

## Choosing a type
- Use `INT` for ordinary whole-number IDs unless the expected range requires another type.
- Use `VARCHAR` for names, emails, and variable-length strings.
- Use `DECIMAL` for exact monetary values.
- Use `DATE` when only the date matters.
- Avoid oversized types without a reason.
