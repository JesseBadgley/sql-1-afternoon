CREATE TABLE person (
	person_id SERIAL PRIMARY KEY,
    name VARCHAR(300),
    age INT,
    height INT,
    city VARCHAR(100),
    favorite_color VARCHAR(50)
)

INSERT INTO person (name, favorite_color, city, height, age)
VALUES 
('Sally Smith', 'Pink', 'Dallas', 155, 21) , 
('John Smith', 'Blue', 'New York', 170, 32),
('Mr Hey', 'Yellow', 'Your moms house', 199, 69),
('Jane Doe', 'Green', 'Denver', 165, 25),
('The Jesse', 'Orange','Plano', 555, 35);

SELECT * FROM person ORDER BY height DESC;

SELECT * FROM person ORDER BY height ASC;

SELECT * FROM person ORDER BY age DESC;

SELECT * FROM person WHERE age > 20;

SELECT * FROM person WHERE age = 18;

SELECT * From person WHERE age < 20 or age > 30;

SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'Red';

SELECT * FROM person WHERE favorite_color != 'Red' and favorite_color != 'Blue';

SELECT * FROM person WHERE favorite_color = 'Orange' or favorite_color = 'Green';

SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple');




CREATE TABLE orders 
(
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(300),
    product_price NUMERIC,
    quantity INT
);

INSERT INTO orders ( person_id, product_name, product_price, quantity)
VALUES 
(0, 'Pizza Oven', 69.99, 4),
(1, 'LEGO Star Wars Death Star', 499.99, 1),
(2, 'Cat Play House', 48.88, 6),
(3, 'Brownie Mix', 1.99, 15),
(4, 'Chuck Taylor Sneakers', 39.99, 1);
 
 SELECT * FROM orders;

 SELECT SUM(quantity) FROM orders;

 SELECT SUM(product_price * quantity) FROM orders;

 SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 3;

 

INSERT INTO artist (name)
VALUES
    ('The Smashing Pumpkins'),
    ('Radiohead'),
    ('Strfkr');

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name like '%Black%';



SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

SELECT MAX(birth_date) from employee;

SELECT MIN(birth_date) from employee;

SELECT * FROM employee WHERE reports_to = 2;

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';



SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice WHERE total > 5;

SELECT COUNT(*) FROM invoice WHERE total < 5; 

SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice ;

SELECT SUM(total) FROM invoice ;





