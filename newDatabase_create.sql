
CREATE DATABASE CS3700_demo2;
use CS3700_demo2;

CREATE TABLE manufacturer(
    manufacturer_id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(20) UNIQUE 
);

CREATE TABLE product(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(20) NOT NULL, 
    rate INT NOT NULL, 
    manufacturer_id_fk INT NOT NULL, 
    FOREIGN KEY(manufacturer_id_fk) REFERENCES manufacturer(manufacturer_id)
);

CREATE TABLE customer(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(200),
    street_address VARCHAR(200), 
    phone VARCHAR(20)
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id_fk INT NOT NULL, 
    customer_id_fk INT NOT NULL, 
    FOREIGN KEY(product_id_fk) REFERENCES product(product_id),
    FOREIGN KEY(customer_id_fk) REFERENCES customer(customer_id)
);

