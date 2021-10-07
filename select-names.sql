--SECTION - SELECT names

--#1 Show the countreis that start with Y

SELECT name 
FROM world
WHERE name LIKE 'Y%'

--#2 Show the countreis that end with Y

SELECT name 
FROM world
WHERE name LIKE '%Y'

--#3 Show the countreis that contain the letter x

SELECT name 
FROM world
WHERE name LIKE '%x%'

--#4 Show the countreis that end with land

SELECT name 
FROM world
WHERE name LIKE '%land'

--#5 Show the countreis that start with C and end with ia

SELECT name 
FROM world
WHERE name LIKE 'C%ia'

--#6 Show the countries contain oo in the name

SELECT name 
FROM world
WHERE name LIKE '%oo%'

--#7 Show the countries contain three or more a in the name

SELECT name 
FROM world
WHERE name LIKE '%a%a%a%'

/*
#8 Show the countries that have 't' as the second character
Use '_' whitch means one letter
*/

SELECT name 
FROM world
WHERE name LIKE '_t%'

--#9 Show countries with two 'o' characters seperated by two others

SELECT name 
FROM world
WHERE name LIKE '%o__o%'

--#10 Show countries that have exactly four charaters

SELECT name 
FROM world
WHERE name LIKE '____'

--#11 Show the countries that name are as same as the capital city

SELECT name
FROM world
WHERE name = capital

--#12 Show the countries that the capital is the country plus 'City'

SELECT name
FROM world
WHERE capital LIKE '%City'

/*
#13 Show the capital and name that capital name including country name
    
    Use concat function
    contact(a,b,c) -> 'abc'
*/

SELECT capital, name
FROM world
WHERE capital LIKE concat('%',name,'%')

--#14 Show the capital and the name that capital name is and extension of name

SELECT capital, name
FROM world
WHERE capital LIKE concat('%',name,'%')
 AND capital <> name
 
/*
#15 For Monaco-Ville the name is Monaco and the extension is -Ville.
    Show the name and the extension where the capital is an extension of name of the country.
 
    Use REPLACE function
    REPLACE('vessel','e','a') -> 'vassal'
*/
SELECT name, REPLACE(capital,name,'') AS ext
FROM world
WHERE capital LIKE concat('%',name,'%')
 AND capital <> name
