# AE SQL Foundations

This repository contains foundational SQL practice as part of my Analytics Engineer preparation.

## Topics Covered
- Table creation
- Primary and foreign keys
- INNER JOINs
- Aggregations (SUM, GROUP BY)
- Multi-table joins

## Database
PostgreSQL (local via DBeaver)

## Goal
Build strong SQL fundamentals before moving into dbt and data modeling.



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
