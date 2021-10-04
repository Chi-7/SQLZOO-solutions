/*
SECTION - SELECT basics
*/

--#1
/*The Example shows the population of 'France'. The string shoukd be in 'single quotes'.
Show the population of Germany.
*/

SELECT population 
FROM world
WHERE name = 'Germany'
