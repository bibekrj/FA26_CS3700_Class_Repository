SELECT product.product_name, manufacturer.name FROM product JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id;

SELECT product.product_name, manufacturer.name FROM product LEFT JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id;

SELECT product.product_name, manufacturer.name FROM product RIGHT JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id;


SELECT product.product_name, manufacturer.name FROM product JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id WHERE
manufacturer.name = "Apple";

SELECT product.product_name, manufacturer.name FROM product JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id WHERE
product.rate > 1999;

SELECT product.product_name, manufacturer.name FROM product JOIN manufacturer ON product.manufacturer_id_fk = manufacturer.manufacturer_id WHERE
product.rate > 200 AND product.rate<1000;

