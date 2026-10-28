INSERT INTO orders(product_id_fk, customer_id_fk) VALUE
(7, 1),
(7, 1),
(7, 1),
(7, 1),
(7, 1),
(7, 1),
(7, 1),
(7, 1),
(7, 1),
(7, 1),
(1,1),
(1,1),
(1,1),
(1,1);


SELECT order.order_id

SELECT o.order_id AS "TransactionID", p.product_name AS "Product Name", c.customer_name as "Customer Name",  c.phone AS "PhoneNumber" FROM orders o 
JOIN customer c ON o.customer_id_fk = c.customer_id
JOIN product p on o.product_id_fk = p.product_id;


SELECT o.order_id AS "TransactionID", p.product_name AS "ProductName", c.customer_name as "Customer Name",  c.phone AS "PhoneNumber" FROM orders o 
JOIN customer c ON o.customer_id_fk = c.customer_id
JOIN product p on o.product_id_fk = p.product_id;


SELECT count(c.customer_name) as Product_Count, c.customer_name FROM orders o 
JOIN customer c ON o.customer_id_fk = c.customer_id
JOIN product p on o.product_id_fk = p.product_id GROUP BY c.customer_name;


INSERT INTO orders(product_id_fk, customer_id_fk) VALUE
(7, 2),
(7, 2),
(7, 2),
(7, 2);

SELECT count(p.product_name) as Product_Count, p.product_name FROM orders o 
JOIN customer c ON o.customer_id_fk = c.customer_id
JOIN product p on o.product_id_fk = p.product_id GROUP BY p.product_name;


SELECT count(p.product_name) as Product_Count, p.product_name FROM orders o 
JOIN customer c ON o.customer_id_fk = c.customer_id
JOIN product p on o.product_id_fk = p.product_id
WHERE c.customer_name = "Wright State University" GROUP BY p.product_name;