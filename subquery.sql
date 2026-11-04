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
