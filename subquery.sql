UPDATE customer SET is_organization = 0 where customer_id = 3;
UPDATE customer SET is_organization = 0 where customer_id = 4;

UPDATE customer SET is_organization= 0 where is_organization IS NULL;


-- avoid these type of statement
UPDATE customer SET is_organization = 0;
UPDATE customer SET is_organization = TRUE WHERE customer_id IN(1,2);

-- good statements from below

ALTER TABLE enrollment 
ADD score DECIMAL(5,2);

UPDATE enrollment 
SET is_complete = TRUE, 
score = 91.02
where en_id = 1;

UPDATE enrollment 
SET is_complete = TRUE, 
score = 80.00
where en_id = 2;

UPDATE enrollment
SET is_complete= TRUE,
score = 95.00
where en_id = 3;

INSERT INTO student(first_name, last_name, email, major_id_fk) VALUES
("Marc", "Allen", "allen.12@wright.edu", 1),
("Mason", "Moore", "moore.34@wright.edu", 8),
("Angela", "Yates", "yates.15@wright.edu", 2),
("Gary", "Maltby", "maltby.67@wright.edu", 6),
("Caden", "Tisler", "tisler.12@wright.edu", 7),
("Caleb", "Tisler", "tisler.13@wright.edu", 7);



INSERT INTO enrollment
    (course_id_fk, student_id_fk, is_complete, score)
VALUES
    -- Database Modelling (Course 1)
    (1, 3, 1, 88.50),
    (1, 4, 1, 72.00),
    (1, 5, 1, 96.00),
    (1, 6, 0, NULL),
    (1, 7, 1, 65.00),

    -- Operating Systems (Course 2)
    (2, 2, 1, 78.00),
    (2, 3, 1, 92.00),
    (2, 4, 0, NULL),
    (2, 5, 1, 85.00),
    (2, 6, 1, 91.00),

    -- Operating Systems Section 2 (Course 3)
    (3, 1, 1, 87.00),
    (3, 2, 1, 94.00),
    (3, 3, 0, NULL),
    (3, 7, 1, 89.00),
    (3, 8, 1, 76.00),

    -- Senior Design II (Course 4)
    (4, 1, 1, 98.00),
    (4, 3, 1, 93.00),
    (4, 5, 0, NULL),
    (4, 6, 1, 82.00),
    (4, 8, 1, 90.00);