MySQL -u root -ppassword
SHOW databases;
CREATE DATABASE CS3700_test;
USE CS3700_test;

CREATE TABLE major(
major_id INT PRIMARY KEY AUTO_INCREMENT,
major_name VARCHAR(100)
);

CREATE TABLE student(
student_id int PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50), 
email VARCHAR(255),
phone_number VARCHAR(20),
social_security_number VARCHAR(9),
street_address VARCHAR(100),
major_id_fk INT NOT NULL,
FOREIGN KEY (major_id_fk) REFERENCES major(major_id)
);

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
