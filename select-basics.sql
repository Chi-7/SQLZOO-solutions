/*
SECTION - SELECT basics
*/

-----#1
/*
The example shows the population of 'France'. The string shoukd be in 'single quotes'.
Show the population of Germany.
*/

SELECT population 
FROM world
WHERE name = 'Germany'

-----#2
/*
The example shows name and population of more than one country by using IN clause.
Show the name and population for 'Sweden', 'Norway' and 'Denmark'.
*/

SELECT name, population 
FROM world
WHERE name IN ('Sweden', 'Norway' , 'Denmark')

-----#3
/*
The query shows name and area size between 250000 and 300000sq.km by using BETWEEN clause.
show the name and are area size between 200000 and 250000
*/

SELECT name, area 
FROM world
WHERE area BETWEEN 200000 AND 250000
