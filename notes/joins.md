# JOIN

## Purpose

Combine rows from two or more tables using a common column.

## Types

### INNER JOIN

Returns only matching rows from both tables.

```sql
SELECT *
FROM A
JOIN B
ON A.id = B.id;
```

### LEFT JOIN

Returns all rows from the left table.

If no matching row exists in the right table,
the right table columns become NULL.

```sql
SELECT *
FROM A
LEFT JOIN B
ON A.id = B.id;
```

## Problems

- Product Sales Analysis I (INNER JOIN)
- Replace Employee ID With The Unique Identifier (LEFT JOIN)