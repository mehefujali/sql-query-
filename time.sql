
SHOW TIMEZONE

SELECT now()


CREATE Table time_zone (ts TIMESTAMP WITHOUT TIME ZONE , tzs TIMESTAMP WITH TIME ZONE)


INSERT INTO time_zone VALUES('2025-05-23 11:36:00','2025-05-23 11:36:00')

SELECT * FROM time_zone


SELECT now()::time

SELECT now()::date

SELECT to_char(now(),'dd Month yyyy')

SELECT to_char(now(),'dd/mm/yyyy')

SELECT to_char(now(),'Day dd Month ')

SELECT to_char(now(),'DDD')


SELECT CURRENT_DATE - INTERVAL '1 year'



SELECT * FROM student


SELECT age (CURRENT_DATE , '2004-11-17')

SELECT * , age(CURRENT_DATE , dob)as current_age FROM student 
  

ALTER TABLE student
drop COLUMN age




SELECT extract(YEAR FROM '2025-05-23'::date)



SELECT country , count(*) FROM student 
GROUP BY country

SELECT country , count(*), avg(age) FROM student 
GROUP BY country
HAVING avg(age) >= 22



SELECT extract(YEAR FROM dob) as birth_year , count(*)
FROM student
GROUP BY birth_year


