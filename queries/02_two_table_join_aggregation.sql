-- Show each product that has been ordered, and how many total units were sold of that product.
	-- REQ : product_name, total_quantity_sold, Sort by total_quantity_sold descending

SELECT 
	p.product_name,
	p.product_id,
	SUM(oi.quantity) AS total_quantity_sold
FROM products AS p
	JOIN order_items AS oi
	ON p.product_id = oi.product_id 
GROUP BY p.product_id 
ORDER BY total_quantity_sold DESC;
