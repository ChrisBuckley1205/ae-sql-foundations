-- queries/03_multi_table_join.sql
-- Show each line item with customer, order, product, quantity

SELECT
  c.customer_name,
  o.order_id,
  p.product_name,
  oi.quantity
FROM order_items AS oi
JOIN orders AS o
  ON oi.order_id = o.order_id
JOIN customers AS c
  ON o.customer_id = c.customer_id
JOIN products AS p
  ON oi.product_id = p.product_id
ORDER BY o.order_id, p.product_name;
