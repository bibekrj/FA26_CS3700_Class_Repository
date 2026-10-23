INSERT INTO manufacturer(name) VALUES 
("Apple"),
("Samsung"),
("Lenovo"),
("Dell"),
("OnePlus"),
("Huawei"),
("Asus"),
("RealMe"),
("CG"),
("Nothing");

INSERT INTO product(product_name, rate, manufacturer_id_fk) VALUES
("Macbook Pro", 2000, 1),
("iphone 18 Pro", 1200, 1),
("iphone Duo", 2000, 1),
("Galaxy TriFold", 3000, 2),
("Galaxy A15", 300, 2),
("Thinkpad T14", 1999, 3),
("Pro 14 Plus", 1699, 4),
("ROG Strix B650", 800, 7);


INSERT INTO customer(customer_name, street_address, phone) VALUES
("Wright State University", "3640 Colonel Glenn Hwy", "123-456-7890"),
("Ohio State University", "12 Somwhere Columbus", "098-678-3456"),
("University of Cincinnati", "67 Cinncinati Dr.", "456-274-4362"),
("University of Toledo", "1234 Toledo dr.", "145-362-8462"),
("Kent State University", "56 Uni dr.", "562-263-8926"),
("Clark State University", "123 Address boulevard", "182-746-3537");


