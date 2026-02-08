\# AE SQL Foundations (Joins + Aggregation)



This mini project is a small Postgres schema used to practice:

\- INNER JOINs (2-table and multi-table)

\- Relational keys (primary + foreign keys)

\- Aggregations with GROUP BY (SUM)

\- Thinking in “grain” (what one row represents)



\## Schema

\- `customers` (customer\_id PK)

\- `orders` (order\_id PK, customer\_id FK → customers)

\- `products` (product\_id PK)

\- `order\_items` (composite PK: order\_id + product\_id, FKs → orders/products)



\## How to Run

1\. Run `schema/01\_create\_tables.sql` to create + load data

2\. Run each file in `queries/` to see results



