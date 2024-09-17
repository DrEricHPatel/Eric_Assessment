-- First Part

CREATE DATABASE Assessment;
USE Assessment;


/* Q 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME 
Ascending and DEPARTMENT Descending. */

-- A1. 

SELECT * FROM `eric_assessment_mysql_worker_table` 
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

/* Q 2 Write an SQL query to print details for 
Workers with the first names “Vipul” and “Satish”      
from the Worker table. */

-- A 2. 

SELECT * FROM  `eric_assessment_mysql_worker_table`
WHERE FIRST_NAME IN ('Vipul', 'Satish');

/* 3. Write an SQL query to print details of 
the Workers whose FIRST_NAME ends with ‘h’ and 
contains six alphabets.*/

-- A 3. 

SELECT * FROM  `eric_assessment_mysql_worker_table`
WHERE FIRST_NAME LIKE '_____h';

/* Q 4. Write an SQL query to print details of the 
Workers whose SALARY lies between 1 TO 10000
Note: (assuming it's missing in the instruction as 
it can be between just 1 as end limit should be there 
but in assessment question the end range is missing 
so I have assumed as 10000 as its end range  ):*/

-- A 4.

SELECT * FROM `eric_assessment_mysql_worker_table`
WHERE SALARY BETWEEN 1 AND 10000;

/* Q 5. Write an SQL query to fetch duplicate 
records having matching data in some fields of 
a table.  
NOTE:(assuming duplicates in FIRST_NAME and LAST_NAME):
 */

-- A 5.

SELECT FIRST_NAME, LAST_NAME, COUNT(*) 
FROM `eric_assessment_mysql_worker_table`
GROUP BY FIRST_NAME, LAST_NAME 
HAVING COUNT(*) > 1;

/* Q 6. Write an SQL query to show the top 6 
records of a table.
*/

-- A 6.

SELECT * FROM `eric_assessment_mysql_worker_table`
LIMIT 6;

/* Q 7. Write an SQL query to fetch the departments 
that have less than five people in them. */

-- A 7. 

SELECT DEPARTMENT, COUNT(*) AS num_workers
FROM `eric_assessment_mysql_worker_table`
GROUP BY DEPARTMENT 
HAVING COUNT(*) < 5;

/* Q 8. Write an SQL query to show all departments 
along with the number of people in there. */

-- A 8.

SELECT DEPARTMENT, COUNT(*) AS num_workers
FROM `eric_assessment_mysql_worker_table`
GROUP BY DEPARTMENT;

/* Q 9. Write an SQL query to print the name of 
employees having the highest salary in each department.
*/

-- A 9. 

SELECT DEPARTMENT, FIRST_NAME, LAST_NAME, SALARY
FROM `eric_assessment_mysql_worker_table` AS w1
WHERE SALARY = (
    SELECT MAX(SALARY)
    FROM `eric_assessment_mysql_worker_table` AS w2
    WHERE w1.DEPARTMENT = w2.DEPARTMENT
);


-- Second Part
CREATE DATABASE School;
USE School;

/* Q 1. To display all the records form STUDENT table. 
SELECT * FROM student ;  */

-- A 1 

SELECT * FROM `eric_assessment_studenttable_mysql`;

/* Q 2. To display any name and date of birth 
from the table STUDENT. SELECT StdName, 
DOB FROM student ; 
*/

-- A 2.

SELECT StdName, DOB 
FROM `eric_assessment_studenttable_mysql`;

/* Q 3. To display all students record where percentage is greater of equal to 80 FROM student table. 
SELECT * FROM student WHERE percentage >= 80;  */

-- A 3.

SELECT * FROM `eric_assessment_studenttable_mysql`  
WHERE percentage >= 80;

/* Q 4. To display student name, stream and percentage 
where percentage of student is more than 80 
SELECT StdName, Stream, Percentage 
WHERE percentage > 80;  */

-- A 4.

SELECT StdName, Stream, Percentage 
FROM `eric_assessment_studenttable_mysql` 
WHERE percentage > 80;

/* 5. To display all records of science students 
whose percentage is more than 75 form student table. 
SELECT * FORM student WHERE stream = ‘Science’ 
AND percentage > 75; */

-- A 5.

SELECT * FROM `eric_assessment_studenttable_mysql` 
WHERE stream = 'Science' AND percentage > 75;











