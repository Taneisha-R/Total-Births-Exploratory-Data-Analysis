-- PERSONAL PROJECT TO EXPLORE BIRTH TRENDS IN THE UNITED STATES.

-- I used Excel and MySQL to process and analyze the data. 
-- I used Tableau to share insights and provide recommendations.

-- 1. Create the CDC Births database in MySQL
CREATE DATABASE cdcbirths;

-- 2. Upload necessary data files using data import wizard.

-- 3. Determine total number of births per period
SELECT SUM(births) as total_births
FROM oldstate; -- save table

SELECT SUM(births) as total_births
FROM newstate; -- save table


-- 4. Determine total number of births per year
SELECT 
	Year,
    SUM(births) as total_births
FROM oldstate
GROUP BY Year; -- save table

SELECT
	year,
    SUM(births) as total_births
FROM newstate
GROUP BY year; -- save table

-- 5. Determine total number of births per age group per period
SELECT
	`Age of Mother`,
    SUM(births) as total_births
FROM oldage
GROUP BY `age of mother`; -- save table

SELECT
	`Age of Mother 9`,
    SUM(births) as total_births
FROM newage
GROUP BY `age of mother 9`; -- save table

-- 6. Determine total number of births by race
SELECT
	`mothers race`,
    SUM(births) as total_births
FROM oldrace
GROUP BY `mothers race`; -- save table

SELECT
	`mothers single race 15`,
    SUM(births) as total_births
FROM newrace
GROUP BY `mothers single race 15`; -- save table

-- 7. Determine total number of births by education
SELECT
	`mothers education`,
    SUM(births) as total_births
FROM oldeducation
GROUP BY `mothers education`; -- save table

SELECT
	`mothers education`,
    SUM(births) as total_births
FROM neweducation
GROUP BY `mothers education`; -- save table

-- 8. Determine total number of births by state
SELECT 
	state,
    SUM(births) as total_births
FROM oldstate
GROUP BY state; -- save table

SELECT
	`state of residence`,
    SUM(births) as total_births
FROM newstate
GROUP BY `state of residence`; -- save table
