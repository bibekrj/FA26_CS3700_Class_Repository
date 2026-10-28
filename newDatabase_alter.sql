ALTER TABLE customer
ADD COLUMN customer_email VARCHAR(200) NOT NULL;

ALTER TABLE customer
ADD COLUMN is_Organization BOOLEAN;

ALTER TABLE customer
MODIFY COLUMN is_Organization BOOLEAN DEFAULT FALSE;

ALTER TABLE customer
ADD COLUMN point_of_contact VARCHAR(20);

UPDATE customer
SET point_of_contact = "DAMIAN HAVILAND"
WHERE customer_id =1;

ALTER TABLE customer
MODIFY COLUMN point_of_contact VARCHAR(10);

ALTER TABLE customer
DROP COLUMN point_of_contact;

SELECT product.product_id, product.product_name, product.rate, manufacturer.name  AS manufacturer_name FROM product JOIN
manufacturer ON product.manufacturer_id_fk  = manufacturer.manufacturer_id ORDER BY product.rate;

SELECT product.product_id, product.product_name, product.rate, manufacturer.name  AS manufacturer_name FROM product JOIN
manufacturer ON product.manufacturer_id_fk  = manufacturer.manufacturer_id ORDER BY product.rate DESC;


