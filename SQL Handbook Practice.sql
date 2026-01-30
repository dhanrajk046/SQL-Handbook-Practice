CREATE DATABASE IF NOT EXISTS startersql;
USE startersql;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);


SELECT * FROM users;
SELECT name, email FROM users;
-- RENAME TABLE users TO customers;
-- RENAME TABLE customers TO users;
-- ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
-- ALTER TABLE users DROP COLUMN is_active;
-- ALTER TABLE users MODIFY COLUMN name VARCHAR(150);
-- ALTER TABLE users MODIFY COLUMN email VARCHAR(100) FIRST;
-- ALTER TABLE users MODIFY COLUMN gender ENUM('Male', 'Female', 'Other') AFTER name;


-- INSERT INTO users VALUES
-- (1, 'Alice', 'alice@example.com', 'Female', '1995-05-14', DEFAULT);
-- INSERT INTO users (name, email, gender, date_of_birth) VALUES
-- ('Bob', 'bob@example.com', 'Male', '1990-11-23');


-- INSERT INTO users (name, email, gender, date_of_birth) VALUES
-- ('Bob', 'bob@example.com', 'Male', '1990-11-23'),
-- ('Charlie', 'charlie@example.com', 'Other', '1988-02-17');

-- INSERT INTO users (name, email, gender, date_of_birth) VALUES
-- ('Charlie', 'charlie@example.com', 'Other', '1988-02-17'),
-- ('David', 'david@example.com', 'Male', '2000-08-09'),
-- ('Eva', 'eva@example.com', 'Female', '1993-12-30');


-- SELECT column1, column2 FROM table_name;
-- SELECT * FROM users;


-- SELECT * FROM users WHERE gender = 'Male';  

-- SELECT * FROM users WHERE gender != 'Female';
-- -- or
-- SELECT * FROM users WHERE gender <> 'Female';

-- SELECT * FROM users WHERE date_of_birth < '1995-01-01';
-- SELECT * FROM users WHERE id > 10;

-- SELECT * FROM users WHERE id >= 5;
-- SELECT * FROM users WHERE id <= 20;

-- SELECT * FROM users WHERE date_of_birth IS NULL; 

-- SELECT * FROM users WHERE date_of_birth IS NOT NULL;

-- SELECT * FROM users WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';

-- SELECT * FROM users WHERE gender IN ('Male', 'Other');

-- SELECT * FROM users WHERE name LIKE 'A%'; -- Starts with A
-- SELECT * FROM users WHERE name LIKE '%a'; -- Ends with a
-- SELECT * FROM users WHERE name LIKE '%li%'; -- Contains 'li'

-- SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
-- SELECT * FROM users WHERE gender = 'Male' OR gender = 'Other';

-- SELECT * FROM users ORDER BY date_of_birth ASC;
-- SELECT * FROM users ORDER BY name DESC;

-- SELECT * FROM users LIMIT 5; -- Top 5 rows
-- SELECT * FROM users LIMIT 10 OFFSET 5; -- Skip first 5 rows, then get next 10
-- SELECT * FROM users LIMIT 5, 10; -- Get 10 rows starting from the 6th row (Same as

-- SELECT * FROM users ORDER BY created_at DESC LIMIT 10;

-- SELECT * FROM users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5;

-- SELECT * FROM users ORDER BY salary DESC;

-- SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000;

-- UPDATE table_name
-- SET column1 = value1, column2 = value2
-- WHERE condition;

-- UPDATE users
-- SET name = 'Alicia'
-- WHERE id = 1;

-- UPDATE users
-- SET name = 'Robert', email = 'robert@example.com'
-- WHERE id = 2;

-- UPDATE users
-- SET gender = 'Other';

-- UPDATE users
-- SET salary = 70000
-- WHERE id = 5;

-- UPDATE users
-- SET name = 'Aisha Khan'
-- WHERE email = 'aisha@example.com';

-- UPDATE users
-- SET salary = salary + 10000
-- WHERE salary < 60000;

-- UPDATE users
-- SET gender = 'Other'
-- WHERE name = 'Ishaan';

SELECT * FROM USERS;

-- UPDATE users
-- SET salary = 50000;

-- CREATE TABLE CARS (
-- id INT PRIMARY KEY,
--  email VARCHAR(100) UNIQUE
-- );

-- ALTER TABLE cars
-- ADD CONSTRAINT unique_email UNIQUE (email);

-- CREATE TABLE users (
-- id INT PRIMARY KEY,
--  name VARCHAR(100) NOT NULL
-- );

-- ALTER TABLE users
-- MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- ALTER TABLE users
-- MODIFY COLUMN name VARCHAR(100) NULL;

-- ALTER TABLE users
-- ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01');

-- CREATE TABLE users (
-- id INT PRIMARY KEY,
--  is_active BOOLEAN DEFAULT TRUE
-- );

-- ALTER TABLE users
-- ALTER COLUMN is_active SET DEFAULT TRUE;

-- CREATE TABLE users (
-- id INT PRIMARY KEY,
--  name VARCHAR(100)
-- );

-- CREATE TABLE users (
-- id INT PRIMARY KEY,
--  name VARCHAR(100)
-- );

-- CREATE TABLE users (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  name VARCHAR(100)
-- );

-- SELECT COUNT(*) FROM users;

-- SELECT COUNT(*) FROM users WHERE gender = 'Female';

-- SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users; 

-- SELECT SUM(salary) AS total_payroll FROM users;

-- SELECT AVG(salary) AS avg_salary FROM users;

-- SELECT gender, AVG(salary) AS avg_salary
-- FROM users
-- GROUP BY gender;

-- SELECT name, LENGTH(name) AS name_length FROM users;

-- SELECT name, LOWER(name) AS lowercase_name FROM users;
-- SELECT name, UPPER(name) AS uppercase_name FROM users;

-- SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;

-- SELECT NOW(); 

-- SELECT name, YEAR(date_of_birth) AS birth_year FROM users; 

-- SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;

-- SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;

-- SELECT salary,
--  ROUND(salary) AS rounded,
--  FLOOR(salary) AS floored,
--  CEIL(salary) AS ceiled
-- FROM users

-- SELECT id, MOD(id, 2) AS remainder FROM users;

-- SELECT name, gender,
--  IF(gender = 'Female', 'Yes', 'No') AS is_female
-- FROM users;

-- SET autocommit = 1; 

-- COMMIT; 

-- ROLLBACK;

-- SET autocommit = 0;

-- UPDATE users SET salary = 80000 WHERE id = 5;

-- COMMIT;

-- ROLLBACK;

-- SET autocommit = 1;

-- CREATE TABLE users (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  name VARCHAR(100)
-- );

-- CREATE TABLE users (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  email VARCHAR(100) UNIQUE,
--  name VARCHAR(100)
-- );

-- ALTER TABLE users DROP PRIMARY KEY; 

-- ALTER TABLE users DROP INDEX email;

-- CREATE TABLE users (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  name VARCHAR(100)
-- );

-- ALTER TABLE users AUTO_INCREMENT = 1000;


-- CREATE TABLE addresses (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  user_id INT,
--  street VARCHAR(255),
--  city VARCHAR(100),
--  state VARCHAR(100),
--  pincode VARCHAR(10),
--  FOREIGN KEY (user_id) REFERENCES users(id)
-- );


-- CREATE TABLE addresses (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  user_id INT,
--  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)
-- );

-- ALTER TABLE addresses
-- DROP FOREIGN KEY fk_user;

-- ALTER TABLE addresses
-- ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id);

-- CREATE TABLE addresses (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  user_id INT,
--  street VARCHAR(255),
--  city VARCHAR(100),
--  state VARCHAR(100),
--  pincode VARCHAR(10),
--  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
-- );

-- ALTER TABLE addresses
-- ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE
-- CASCADE;

-- SELECT users.name, addresses.city
-- FROM users
-- INNER JOIN addresses ON users.id = addresses.user_id;

-- SELECT users.name, addresses.city
-- FROM users
-- LEFT JOIN addresses ON users.id = addresses.user_id;

-- SELECT users.name, addresses.city
-- FROM users
-- RIGHT JOIN addresses ON users.id = addresses.user_id;

-- CREATE TABLE admin_users (
-- id INT PRIMARY KEY,
--  name VARCHAR(100),
--  email VARCHAR(100),
--  gender ENUM('Male', 'Female', 'Other'),
--  date_of_birth DATE,
--  salary INT
-- );

-- INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
-- (101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
-- (102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
-- (103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
-- (104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);

-- SELECT name FROM users
-- UNION
-- SELECT name FROM admin_users;

-- SELECT name FROM users
-- UNION ALL
-- SELECT name FROM admin_users;

-- SELECT name, 'User' AS role FROM users
-- UNION
-- SELECT name, 'Admin' AS role FROM admin_users;

-- SELECT name FROM users
-- UNION
-- SELECT name FROM admin_users
-- ORDER BY name;


-- ALTER TABLE users
-- ADD COLUMN referred_by_id INT;

-- UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3); -- User 1 referred Users 2
-- and 3
-- UPDATE users SET referred_by_id = 2 WHERE id = 4; -- User 2 referred User 4

SELECT
 a.id,
 a.name AS user_name,
 b.name AS referred_by
FROM users a
INNER JOIN users b ON a.referred_by_id = b.id;


-- CREATE VIEW high_salary_users AS
-- SELECT id, name, salary
-- FROM users
-- WHERE salary > 70000;

-- CREATE VIEW high_salary_users AS
-- SELECT id, name, salary
-- FROM users
-- WHERE salary > 70000;

-- SELECT * FROM high_salary_users;

-- SELECT * FROM high_salary_users;

-- UPDATE users
-- SET salary = 72000
-- WHERE name = 'Raj';


-- SELECT * FROM high_salary_users; 

-- DROP VIEW high_salary_users; 

-- SHOW INDEXES FROM users;-- 

-- CREATE INDEX idx_email ON users(email); 

-- SELECT * FROM users WHERE email = 'example@example.com'; 

-- CREATE INDEX idx_gender_salary ON users(gender, salary); 

-- SELECT * FROM users
-- WHERE gender = 'Female' AND salary > 70000;

-- WHERE gender = 'Female' AND salary > 70000 

-- WHERE salary > 70000 

-- DROP INDEX idx_email ON users; 

-- SELECT id, name, salary
-- FROM users
-- WHERE salary > (
--  SELECT AVG(salary) FROM users
-- );

-- SELECT id, name, referred_by_id
-- FROM users
-- WHERE referred_by_id IN (
--  SELECT id FROM users WHERE salary > 75000
-- );

-- SELECT name, salary,
-- (SELECT AVG(salary) FROM users) AS average_salary
-- FROM users;

-- SELECT gender, AVG(salary) AS average_salary
-- FROM users
-- GROUP BY gender;

-- SELECT referred_by_id, COUNT(*) AS total_referred
-- FROM users
-- WHERE referred_by_id IS NOT NULL
-- GROUP BY referred_by_id;


-- SELECT gender, AVG(salary) AS avg_salary
-- FROM users
-- GROUP BY gender
-- HAVING AVG(salary) > 75000;

-- SELECT referred_by_id, COUNT(*) AS total_referred
-- FROM users
-- WHERE referred_by_id IS NOT NULL
-- GROUP BY referred_by_id
-- HAVING COUNT(*) > 1;

-- SELECT gender, COUNT(*) AS total_users
-- FROM users
-- GROUP BY gender WITH ROLLUP;

-- DELIMITER $$
-- CREATE PROCEDURE procedure_name()
-- BEGIN
-- -- SQL statements go here
-- END$$
-- DELIMITER ;


-- DELIMITER $$
-- CREATE PROCEDURE AddUser(
--  IN p_name VARCHAR(100),
--  IN p_email VARCHAR(100),
--  IN p_gender ENUM('Male', 'Female', 'Other'),
--  IN p_dob DATE,
--  IN p_salary INT
-- )
-- BEGIN
--  INSERT INTO users (name, email, gender, date_of_birth, salary)
--  VALUES (p_name, p_email, p_gender, p_dob, p_salary);
-- END$$
-- DELIMITER ;

-- CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);

-- SHOW PROCEDURE STATUS WHERE Db = 'startersql';

-- DROP PROCEDURE IF EXISTS AddUser;

-- CREATE TRIGGER trigger_name
-- AFTER INSERT ON table_name
-- FOR EACH ROW
-- BEGIN
-- -- statements to execute
-- END;

-- CREATE TABLE user_log (
-- id INT AUTO_INCREMENT PRIMARY KEY,
--  user_id INT,
--  name VARCHAR(100),
--  created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );


-- DELIMITER $$
-- CREATE TRIGGER after_user_insert
-- AFTER INSERT ON users
-- FOR EACH ROW
-- BEGIN
--  INSERT INTO user_log (user_id, name)
--  VALUES (NEW.id, NEW.name);
-- END$$
-- DELIMITER ;


-- CALL AddUser('Ritika Jain', 'ritika@example.com', 'Female', '1996-03-12', 74000);

-- SELECT * FROM user_log;

-- DROP TRIGGER IF EXISTS after_user_insert;

-- ALTER TABLE users
-- ADD COLUMN city VARCHAR(100);

-- SELECT * FROM users
-- ORDER BY id
-- LIMIT 5 OFFSET 10;

-- SELECT * FROM users
-- ORDER BY id
-- LIMIT 10, 5;

-- SELECT DISTINCT gender FROM users;

-- TRUNCATE TABLE users;

-- ALTER TABLE users
-- CHANGE COLUMN city location VARCHAR(150);

ALTER TABLE users
MODIFY COLUMN salary BIGINT;




