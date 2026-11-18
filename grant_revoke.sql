CREATE USER 'bibek'@'localhost' IDENTIFIED BY 'pass123';

CREATE user 'random' IDENTIFIED BY 'pass321';

SELECT user, host FROM mysql.user; 


-- GRANT PRIVILEGE ON database.table TO 'username'@'host';

GRANT INSERT, UPDATE, DELETE, SELECT on CS3700_test.* TO 'bibek'@'localhost';


REVOKE UPDATE, DELETE on CS3700_test.* FROM 'bibek'@'localhost';



-- GRANT ALL PRIVILEGES ON CS3700_test.* TO 'random'@'localhost';

-- REVOKE All PRIVILEGES ON CS3700_test.* FROM "user"@"location";