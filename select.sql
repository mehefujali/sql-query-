-- Active: 1747802603055@@127.0.0.1@5432@test_db


CREATE TABLE student (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  email VARCHAR(50) NOT NULL,
  dob DATE NOT NULL,
  is_active BOOLEAN DEFAULT true NOT NULL,
  country TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO student (name, age, email, dob, is_active,country)
VALUES 
('Rafiul Islam', 21, 'rafiul@gmail.com', '2002-03-10', true, 'Bangladesh'),
('Sneha Das', 22, 'sneha@gmail.com', '2001-11-23', true, 'India'),
('Thomas Lee', 24, 'thomas@gmail.com', '1999-08-19', false, 'USA'),
('Min-Ji Park', 20, 'minji@gmail.com', '2003-04-07', true, 'South Korea'),
('Ahmed Nasser', 23, 'ahmed@gmail.com', '2000-12-30', false, 'Egypt'),
('Isabella Rossi', 21, 'isabella@gmail.com', '2002-06-14', true, 'Italy'),
('Lucas Silva', 22, 'lucas@gmail.com', '2001-09-03', true, 'Brazil'),
('Chloe Martin', 19, 'chloe@gmail.com', '2004-01-25', true, 'France'),
('Hiro Tanaka', 23, 'hiro@gmail.com', '2000-05-11', false, 'Japan'),
('Amina Yusuf', 20, 'amina@gmail.com', '2003-07-29', true, 'Nigeria');


ALTER TABLE student 
ADD COLUMN country VARCHAR(50) DEFAULT 'USA' NOT NULL;

SELECT * FROM student

SELECT * FROM student 
 WHERE age != '24' and country != 'USA' ORDER BY NAME 


 SELECT upper(name) , age , country FROM student 


 SELECT min(age) as min_age FROM student

 SELECT max(age) as max_age FROM student

 SELECT avg(age) as avg_age FROM student

 SELECT count(*) as total_students FROM student

 SELECT length(name) as name_length FROM student


 SELECT max(length(name)) as max_length FROM student

 SELECT name as longest_name FROM student
 ORDER BY length(name) DESC LIMIT 1


