## Basic Sql

SELECT population FROM world
  WHERE name ='Germany'
  
  SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');
  
  SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

SELECT name, continent, population FROM world

SELECT name
  FROM world
 WHERE population > 200000000
 
 SELECT name, gdp/population from world where population > 200000000
 
 SELECT name, population/1000000 from world where continent = 'South America'
 
 SELECT name, population from world where name IN ('France', 'Germany','Italy')
 
 SELECT name from world WHERE name LIKE '%United%'
 
 SELECT name, population, area from world where population > 250000000 OR area > 3000000
 
 SELECT name, population, area from world where area > 3000000 AND population <250000000 OR population >250000000 AND area < 3000000
 
 SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) from world where continent = 'South America'
 
 SELECT name, ROUND(gdp/population, -3) from world where gdp >1000000000000
