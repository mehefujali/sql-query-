-- Active: 1747802603055@@127.0.0.1@5432@test_db


 SELECT * FROM student

 
ALTER TABLE student
  ADD COLUMN email VARCHAR(25) DEFAULT 'example@gmail.com' NOT NULL ;

  ALTER Table student 
  ADD COLUMN is_active BOOLEAN DEFAULT true NOT NULL
