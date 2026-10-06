CREATE DATABASE COLLEGE2;
USE COLLEGE2;

CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);

INSERT INTO student (name, age, course)
VALUES
('GIREESH', 18, 'AIML'),
('JUNNU', 19, 'AIML'),
('RAHUL', 20, 'CSE'),
('PRIYA', 19, 'ECE'),
('ARJUN', 21, 'CSE'),
('SNEHA', 18, 'AIML'),
('KIRAN', 20, 'EEE'),
('ANU', 19, 'CSE'),
('ROHIT', 21, 'AIML'),
('DIVYA', 18, 'ECE'),
('VIVEK', 20, 'CSE'),
('POOJA', 19, 'AIML');

SELECT * FROM student;

ALTER TABLE student
ADD email VARCHAR(100);

ALTER TABLE student
MODIFY age SMALLINT;

ALTER TABLE student
ADD dob DATE;

INSERT INTO student (name, age, course, email, dob)
VALUES
('MANOJ', 20, 'CSE', 'manoj@gmail.com', '2006-04-15'),
('KAVYA', 19, 'AIML', 'kavya@gmail.com', '2007-08-20'),
('NAVEEN', 21, 'ECE', 'naveen@gmail.com', '2005-02-10');

UPDATE student
SET email = 'gireesh@gmail.com',
    dob = '2008-05-12'
WHERE id = 1;

UPDATE student
SET email = 'junnu@gmail.com',
    dob = '2007-06-18'
WHERE id = 2;

UPDATE student
SET email = 'rahul@gmail.com',
    dob = '2006-03-25'
WHERE id = 3;

UPDATE student
SET email = 'priya@gmail.com',
    dob = '2007-09-14'
WHERE id = 4;

UPDATE student
SET email = 'arjun@gmail.com',
    dob = '2005-11-05'
WHERE id = 5;

UPDATE student
SET email = 'sneha@gmail.com',
    dob = '2008-01-22'
WHERE id = 6;

UPDATE student
SET email = 'kiran@gmail.com',
    dob = '2006-07-30'
WHERE id = 7;

UPDATE student
SET email = 'anu@gmail.com',
    dob = '2007-10-11'
WHERE id = 8;

UPDATE student
SET email = 'rohit@gmail.com',
    dob = '2005-12-19'
WHERE id = 9;

UPDATE student
SET email = 'divya@gmail.com',
    dob = '2008-02-28'
WHERE id = 10;

UPDATE student
SET email = 'vivek@gmail.com',
    dob = '2006-06-16'
WHERE id = 11;

UPDATE student
SET email = 'pooja@gmail.com',
    dob = '2007-04-09'
WHERE id = 12;

SELECT * FROM student;