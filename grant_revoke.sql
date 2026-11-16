CREATE USER 'bibek'@'localhost' IDENTIFIED BY 'pass123';

CREATE user 'random' IDENTIFIED BY 'pass321';

SELECT user, host FROM mysql.user; 


-- GRANT PRIVILEGE ON database.table TO 'username'@'host';

GRANT INSERT, UPDATE, DELETE, SELECT on CS3700_test.* TO 'bibek'@'localhost';


REVOKE UPDATE, DELETE on CS3700_test.* FROM 'bibek'@'localhost';