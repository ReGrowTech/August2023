use practice_set;
select ' Saif'; -- work like a print function.
select name from pets where name = 'bLackie';
-----------------------String functions---------------------------------------------------------
select UPPER(name) from pets; -- to make the string in uppercase letter
select LOWER(name) from pets; -- to make the string in lowercase letter
select name, SUBSTRING(name,1,3) from pets; -- to retrive only first three characters of the string.
select name , age from pets WHERE SUBSTRING(name,1,3) IN ('Pri','bla');
select CONCAT(name,kind) from pets; -- to join two or more columns or string together.
select CONCAT(name,kind,'Saif') from pets;
select LEFT(name,4) from pets;
select RIGHT(name,4) from pets;
select name , REPLACE(name,'A','AAA') from pets;
select name, LEN(name) from pets;
select * from pets WHERE pet_id % 2 <> 0;
select * from pets where pet_id % 2 = 0;
select * from pets;
   
------------DATETIME---------------------------------------

/* BETWEEN '2000-01-01 AND '2003-12-31'
YEAR(2000) AND YEAR(2003)*/


SELECT YEAR('2012-12-16');
SELECT MONTH('2012-12-16');
SELECT DAY('2012-12-16');  SELECT MONTH('16-12-2012'); -- THIS FORMAT NOT(DD-MM-YYYY) WORK BUT MM-DD-YYYY WILL WORK 
---------------------OFFSET KEYWORD--------------------

SELECT * FROM PETS ORDER BY PET_ID OFFSET 5 ROWS; -- OFFSET WILL ELIMINATE FIRST NTH ROWS BEFORE GIVING RESULT
SELECT * FROM PETS ORDER BY PET_ID OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

---------------------WINDOW FUNCTION -----------------------------------
SELECT name, age ,RANK()
OVER (ORDER BY age DESC) from pets;

SELECT name, age,kind,RANK()
OVER(PARTITION BY kind ORDER BY age DESC) AS rank
from pets;

SELECT name, age,kind,ROW_NUMBER()        
OVER(ORDER BY age DESC) AS rank
from pets;                                
										   
 SELECT name, age,kind,ROW_NUMBER()
OVER(PARTITION BY kind ORDER BY age DESC) AS rank
from pets;	
 
SELECT name, age,kind,DENSE_RANK()        
OVER(ORDER BY age DESC) AS rank
from pets;

 SELECT name, age,kind,DENSE_RANK()        
OVER( PARTITION BY kind ORDER BY age DESC) AS rank
from pets; 								   