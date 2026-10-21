CREATE TABLE instructor(
instructor_id int PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50) NOT NULL, 
rank ENUM(
"Professor",
"Associate Professor",
"Assistant Professor",
"Senior Lecturer",
"Lecturer",
"Instructor",
"Adjunct")
);

CREATE TABLE courses(
course_id int PRIMARY KEY AUTO_INCREMENT, 
course_name VARCHAR(200), 
section VARCHAR(5), 
class_start_time VARCHAR(10),
class_end_time VARCHAR(10),
instructor_id_fk INT NOT NULL,
FOREIGN KEY(instructor_id_fk) REFERENCES instructor(instructor_id));

CREATE TABLE enrollment(
en_id INT PRIMARY KEY AUTO_INCREMENT,
course_id_fk INT NOT NULL, 
student_id_fk INT NOT NULL, 
is_complete BOOLEAN DEFAULT FALSE,
FOREIGN KEY(course_id_fk) REFERENCES courses(course_id), 
FOREIGN KEY(student_id_fk) REFERENCES 
student(student_id)
);

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

