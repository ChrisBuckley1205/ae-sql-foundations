--For each order, show the order_id, order_date, and customer_name who placed it
-- Sort by order_date
-- The grain here is an order ( one row represents an order ( one row per order ))
SELECT
	o.order_id,
	o.order_date,
	c.customer_name
FROM orders AS o
	JOIN customers AS c
	ON o.customer_id = c.customer_id 
ORDER BY o.order_date;