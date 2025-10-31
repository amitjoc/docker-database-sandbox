-- Q Find all actors 
SELECT * FROM actor LIMIT 5;

-- Q Find all actors whose first name start from any letter like a, f etc
SELECT * FROM actor a WHERE a.first_name LIKE "__G%";

-- Q Find count of all actors by their first alphabet name 
SELECT count(a.first_name), LEFT(a.first_name,1) AS FL  
FROM actor a
GROUP BY FL ORDER BY FL;

-- Q solve Q3 using the case when we want to only certain cases and rest group in others 
SELECT 
  CASE 
    WHEN a.first_name LIKE 'A%' THEN 'A'
    WHEN a.first_name LIKE 'B%' THEN 'B'
    ELSE 'Other'
  END AS first_letter,
  COUNT(*) AS actor_count
FROM actor a
GROUP BY first_letter
ORDER BY first_letter;

-- Q show full name of actor CONCAT(str1, str2, ..., strN)
SELECT concat(a.first_name,' ' , a.last_name) AS fullName
FROM actor a 
LIMIT 5;

-- Q using concatinate with seprator CONCAT_WS(separator, str1, str2, ..., strN)
SELECT concat_ws('-', a.first_name, a.last_name) AS fullName
FROM actor a 
LIMIT 5;

-- Q Find actors added after January 1, 2006.
SELECT *
FROM actor a 
WHERE date(a.last_update) > date('2006-01-01'); 

-- Q Find the top 5 most recently added actors.
SELECT * 
FROM actor a 
ORDER BY a.last_update DESC 
LIMIT 5

-- Q List actors whose last name ends with 'son'.
SELECT a.last_name  
FROM actor a 
WHERE a.last_name LIKE '%son';

SELECT a.last_name  
FROM actor a 
WHERE RIGHT(a.last_name ,3) LIKE 'son';

SELECT DISTINCT 
	CASE 
		WHEN a.last_name LIKE '%son' THEN a.last_name 
		ELSE '--------'
	END AS last_name
FROM actor a 


-- Show actors whose first and last names are the same.
-- Find how many actors have a first name longer than 5 characters

