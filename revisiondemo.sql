SELECT product.product_id, product.product_name, product.rate, manufacturer.name FROM product JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id WHERE  manufacturer.name = "Samsung" ORDER BY product.rate  LIMIT 1;

 SELECT product.product_id, product.product_name, product.rate, manufacturer.name FROM product JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id WHERE  manufacturer.name = "Samsung" ORDER BY product.rate LIMIT 1;

 SELECT product.product_name,  manufacturer.name FROM product JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id WHERE  manufacturer.name = "Samsung" ORDER BY product.rate  DESC LIMIT 1;

--  order product_customer_order

SELECT p.product_name as Product_Name,  m.name as Manufacturer_name FROM product P JOIN manufacturer M ON p.manufacturer_id_fk = m.manufacturer_id WHERE  m.name = "Samsung" ORDER BY p.rate;

SELECT COUNT(*) as Product_Count, manufacturer_id_fk FROM product GROUP BY manufacturer_id_fk HAVING Product_Count >=2;