DROP SCHEMA public CASCADE;
CREATE SCHEMA public;



CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name TEXT,
  state TEXT
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  order_date DATE
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name TEXT,
  price NUMERIC(10,2)
);

CREATE TABLE order_items (
  order_id INT REFERENCES orders(order_id),
  product_id INT REFERENCES products(product_id),
  quantity INT,
  PRIMARY KEY (order_id, product_id)
);

INSERT INTO customers VALUES
(1,'Chris','PA'),
(2,'Marcia','PA'),
(3,'Izzy','PA'),
(4,'Taylor','NJ');

INSERT INTO orders VALUES
(101,1,'2026-02-01'),
(102,1,'2026-02-03'),
(103,2,'2026-02-03'),
(104,4,'2026-02-05');

INSERT INTO products VALUES
(10,'Keyboard',129.99),
(11,'Mouse',59.99),
(12,'Headset',149.99),
(13,'Monitor',299.99);

INSERT INTO order_items VALUES
(101,10,1),
(101,11,1),
(102,13,1),
(103,11,2),
(103,12,1),
(104,10,1),
(104,12,1);