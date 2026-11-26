# 06 – LIKE Operator

## 1. What is LIKE?

`LIKE` searches character data using a pattern. It is commonly used to find names, email addresses, cities, or other text values that follow a particular pattern.

## 2. Wildcards

| Wildcard | Meaning |
|---|---|
| `%` | Zero or more characters |
| `_` | Exactly one character |

## 3. Examples using `%`

```sql
-- Names starting with A.
SELECT *
FROM employees
WHERE employee_name LIKE 'A%';

-- Names ending with a.
SELECT *
FROM employees
WHERE employee_name LIKE '%a';

-- Names containing 'an'.
SELECT *
FROM employees
WHERE employee_name LIKE '%an%';
```

## 4. Examples using `_`

```sql
-- Names with exactly four characters.
SELECT *
FROM employees
WHERE employee_name LIKE '____';

-- Names whose second character is 'a'.
SELECT *
FROM employees
WHERE employee_name LIKE '_a%';
```

## 5. NOT LIKE

```sql
-- Names that do not start with A.
SELECT *
FROM employees
WHERE employee_name NOT LIKE 'A%';
```

## 6. LIKE patterns at a glance

| Pattern | Matches |
|---|---|
| `'A%'` | Starts with A |
| `'%a'` | Ends with a |
| `'%an%'` | Contains an |
| `'A_'` | Two characters, starting with A |
| `'__a%'` | Third character is a |
| `'____'` | Exactly four characters |

## Important points

- `%` can represent no characters or many characters.
- `_` represents exactly one character.
- `LIKE` is for pattern matching; `=` is for exact equality.
- Case sensitivity depends on the character set and collation. With common MySQL case-insensitive collations, matching is case-insensitive. A case-sensitive collation changes that behavior.
- If `%` or `_` must be matched as literal characters, use an escape character.

## Quick revision

```sql
WHERE employee_name LIKE 'A%';
WHERE employee_name LIKE '%a';
WHERE employee_name LIKE '%an%';
WHERE employee_name LIKE '_a%';
WHERE employee_name NOT LIKE 'A%';
```
