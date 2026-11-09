SELECT c.course_name, s.first_name, s.last_name, e.score FROM courses c JOIN enrollment e 
ON c.course_id  = e.course_id_fk
JOIN student s
ON s.student_id = e.student_id_fk 
WHERE e.course_id_fk = 4;



SELECT c.*, s.first_name, s.last_name, e.score FROM courses c JOIN enrollment e 
ON c.course_id  = e.course_id_fk
JOIN student s
ON s.student_id = e.student_id_fk 
WHERE e.course_id_fk = 4;


SELECT c.course_name, s.first_name, s.last_name, e.score FROM courses c JOIN enrollment e 
ON c.course_id  = e.course_id_fk
JOIN student s
ON s.student_id = e.student_id_fk 
WHERE e.course_id_fk NOT IS 4;

 SELECT student_id_fk FROM enrollment WHERE course_id_fk = 4;


SELECT s.first_name, s.last_name FROM student s WHERE 
s.student_id NOT IN  ( SELECT student_id_fk FROM enrollment WHERE course_id_fk = 4);


SELECT first_name, last_name, email FROM student WHERE student_id = (SELECT student_id_fk FROM enrollment WHERE score = (SELECT MAX(score) FROM enrollment WHERE course_id_fk = 1));


SELECT s.first_name, s.last_name, e.score FROM courses c JOIN enrollment e 
ON c.course_id  = e.course_id_fk
JOIN student s
ON s.student_id = e.student_id_fk 
WHERE e.score = (SELECT MAX(score) FROM enrollment WHERE course_id_fk= 1);