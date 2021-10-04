/*
SELECT from WORLD Tutoraial
*/

-----#1
/*
Show name, continent and population of all countries.
*/
SELECT name, continent, population 
FROM world

-----#2
/*
Show the name for the contries that have a population of at least 200 milion.
1 milion = 1000000
*/
SELECT name 
FROM world
WHERE population > 200000000

-----#3
/*
Show the name and per capita GDP for those countries with a population of at least 200 milion.
Per capita GDP = gdp / population
*/
SELECT name, gdp/population
FROM world
WHERE population > 200000000

-----#4
/*
Show the name and population in milions for the countries of the continent 'South America'/
*/
SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

-----#5
/*
Show the name and population for France, Germany and Italy.
*/
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

-----#6
/*
Show the countries which have a name that including 'United'.
*/
SELECT name
FROM world
WHERE name LIKE '%United%'

-----#7


