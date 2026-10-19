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


