SELECT * FROM courses;
SELECT * FROM instructor;
SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM major;


-- ALL COLUMNS
-- SELECT ALL COLUMNS FROM TABLE

SELECT last_name, rank FROM instructor;

SELECT last_name, rank FROM instructor WHERE rank = "Instructor";

SELECT * FROM instructor WHERE last_name = "Bitterman";

SELECT * FROM student JOIN major ON student.major_id_fk = major.major_id;

SELECT student.student_id, student.first_name, student.last_name, major.major_name FROM student JOIN major ON student.major_id_fk = major.major_id;


SELECT student.student_id, student.first_name, student.last_name, major.major_name FROM student JOIN major ON student.major_id_fk = major.major_id WHERE student.first_name = "DAMIAN";

SELECT  student.last_name, major.major_name, student.student_id, student.first_name FROM student JOIN major ON student.major_id_fk = major.major_id WHERE student.first_name = "DAMIAN";


