--to set autocommit off
-- 

SET @@GLOBAL.autocommit=0
SET @@autocommit=0
commit;

START TRANSACTION;


UPDATE product 
SET rate = 500
WHERE product_id = 7;

UPDATE product
SET rate = 800
WHERE product_id = 8;

COMMIT;