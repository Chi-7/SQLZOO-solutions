--SECTION - SELECT from WORLD Tutoraial

--#1 Show name, continent and population of all countries.

SELECT name, continent, population 
FROM world

--#2 Show the name for the contries that have a population of at least 200 million. 1 million = 1000000

SELECT name 
FROM world
WHERE population > 200000000

--#3 Show the name and per capita GDP for those countries with a population of at least 200 milion. Per capita GDP = gdp / population

SELECT name, gdp/population
FROM world
WHERE population > 200000000

--#4 Show the name and population in millions for the countries of the continent 'South America'/

SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

--#5 Show the name and population for France, Germany and Italy.

SELECT name, population
FROM world
WHERE name IN ('France','Germany','Italy')

--#6 Show the countries which have a name that including 'United'.

SELECT name
FROM world
WHERE name LIKE '%United%'

--#7 Show name, population and area if the country is big country. Big country: area of more than 3 million sq lkm, or it has a population of more than 250 million.

SELECT name, population, area
FROM world
WHERE area >= 3000000 OR population >=250000000

--#8 Show the countries that are big by area or big by population but not both. Big country: area of more than 3 million sq lkm, or it has a population of more than 250 million.

SELECT name, population, area
FROM world
WHERE (area >= 3000000 AND population <= 250000000) 
 OR (area <= 3000000 AND population >= 250000000)
 
/*
#9 Show the name, population in millions and the GDP in billions for the countries of the continent 'South America'. 
   And using the ROUND function to show the values to two decimal places.

ROUND function:

ROUND(7253.86, 0)    ->  7254
ROUND(7253.86, 1)    ->  7253.9
ROUND(7253.86,-3)    ->  7000
*/

SELECT 
 name,
 ROUND(population/1000000,2),
 ROUND(gdp/1000000000,2)
FROM world
WHERE continent = 'South America'

--#10 Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1 and 12 zeros). Round this value to the nearest 1000.

SELECT
 name, 
 ROUND(gdp/population,-3)
FROM world
WHERE gdp >= 1000000000000

/*
#11 Show the name and capital where the name and the capital have the same number of charactors.
    Use the LENGTH function.

LENGTH function:

LENGTH('Hello') -> 5 
*/

SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)

/*
#12 Show the name and the capital where the first letters of each match. 
    Not including countries where the name and the capital are the same.
    Use the LEFT function.
    
    Not equals : <>

    LEFT(Hello,1) -> H
*/

SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1)
 AND name <> capital
 
/*
#13 Show the name where the name including all of the vowels (a e i o u) without any space.
    Use LIKE and NOT LIKE
*/

SELECT name
FROM world
WHERE name LIKE '%a%'
 AND name LIKE '%e%'
 AND name LIKE '%i%'
 AND name LIKE '%o%'
 AND name LIKE '%u%'
 AND name NOT LIKE '% %'
