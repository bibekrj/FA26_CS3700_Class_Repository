SELECT count(*) AS TOTAL_RECORDS FROM customer;

SELECT count(*) AS TOTAL_RECORDS FROM manufacturer;

SELECT count(*) AS TOTAL_RECORDS_ORGS FROM customer WHERE point_of_contact IS NULL;

SELECT count(*) AS TOTAL_RECORDS_INDIVD FROM customer WHERE point_of_contact IS NOT NULL;

SELECT manufacturer_id_fk, count(*) FROM product GROUP BY manufacturer_id_fk;

SELECT manufacturer_id_fk AS manufacturer, count(*) as Product_Count FROM product GROUP BY manufacturer_id_fk;



-- valid BUT DEFINITELY DONT DO IT
-- will deduct points if I see this
SELECT name AS manufacturer, count(*) as Product_Count 
FROM product
JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id
GROUP BY manufacturer_id_fk; 

SELECT manufacturer.name AS manufacturer, count(*) as Product_Count 
FROM product
JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id
GROUP BY product.manufacturer_id_fk; 


SELECT * FROM customer WHERE street_address LIKE '%dr.';

SELECT * FROM customer WHERE street_address LIKE "%dr.";

SELECT * FROM customer WHERE street_address LIKE "1%" AND street_address LIKE "%dr.";

SELECT * FROM customer WHERE street_address LIKE "%dr." AND street_address LIKE "1%" ;

SELECT DISTINCT manufacturer_id_fk FROM product;

SELECT * FROM product WHERE rate BETWEEN 800 AND 2000;


INSERT INTO product(product_name, rate, manufacturer_id_fk)
VALUE ("Pixel 6a", 300, 2);

SELECT * FROM product WHERE rate in (300,800,1200);

