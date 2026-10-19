INSERT INTO major VALUE (4, "MBA");
INSERT INTO major(major_name) VALUES ( "CEG"),
("ITC"),
("HIS"),
("EE");

INSERT INTO major VALUE (4, "ME");
INSERT INTO major VALUES 
(2, "ME"),
(3, "AERO");


INSERT INTO student(first_name, last_name, phone_number, major_id_fk) VALUE
("Damian", "Haviland","987-262-6242", 1);

INSERT INTO student(first_name, last_name, email, social_security_number, street_address, major_id_fk, phone_number) VALUES
("Grant", "Moore", "moore.1234@wright.edu", "12345689", "3640 Colonel Glenn hwy", 1, "937-627-2634");

UPDATE student SET 
email = "haviland.678@wright.edu",  
social_security_number = "123456789",
street_address = "3661 Colonel Glenn Hwy."
WHERE student_id = 1;



INSERT INTO instructor(first_name, last_name, rank)
VALUES
("Bibek", "Joshi", "Instructor"),
("Thomas", "Wischgoll", "Professor"),
("Kayleigh", "Duncan", "Lecturer"),
("Reese", "Hatfield", "Instructor"),
("Wen", "Zhang", "Assistant Professor"),
("Junjie", "Zhang", "Associate Professor");

INSERT INTO instructor(last_name, rank) VALUE
("Bitterman", "Instructor");




UPDATE instructor SET instructor_id =1 WHERE last_name ="Bitterman";

UPDATE instructor SET instructor_id =2 WHERE last_name ="Bitterman"; 
--will not work (ERROR 1062 (23000): Duplicate entry '2' for key 'PRIMARY')

UPDATE instructor SET first_name ="Thomas" WHERE instructor_id =1;
UPDATE instructor SET first_name ="Joe" WHERE instructor_id =10;



INSERT INTO courses(course_name, section, class_start_time, class_end_time, instructor_id_fk) VALUES
("Database Modelling", "1", "10:10 AM", "11:05 AM", 3), 
("Operating Systems", "1", "9:30 AM", "10:50 AM", 5),
("Operating Systems", "2", "2:00 PM", "3:20 PM", 3),
("Senior Design II", "1", "8:30 AM", "9.50 AM", 1);


INSERT INTO enrollment(course_id_fk, student_id_fk)
VALUE
(1, 1),
(1, 2);
INSERT INTO enrollment(course_id_fk, student_id_fk)
VALUE (2, 1);

