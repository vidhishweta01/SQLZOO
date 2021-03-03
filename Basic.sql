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

SELECT name,
       capital
  FROM world where LEN(name) = LEN(capital)

SELECT name, capital
FROM world where LEFT(name,1) = LEFT(capital, 1) AND name <> capital

SELECT name
   FROM world
WHERE name LIKE '%a%' AND name LIKE '%e%'AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %'

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950
 
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'
  
   SELECT yr, subject from nobel where winner = 'Albert Einstein'
   
   SELECT winner from nobel where subject = 'Peace' AND yr >= 2000 
   
   SELECT yr, subject, winner from nobel where subject = 'Literature' AND yr >= 1980 AND yr <= 1989
   
   SELECT * FROM nobel
 WHERE
  winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter','Barack Obama')
 
 SELECT winner FROM nobel WHERE LEFT(winner, 4) = 'John'
 
 SELECT yr, subject, winner FROM nobel WHERE subject = 'Physics' AND yr = '1980' OR 
subject = 'Chemistry' AND yr = '1984'

SELECT yr, subject, winner FROM nobel WHERE yr = '1980' AND subject <> 'Chemistry' AND subject <> 'Medicine'

SELECT yr, subject, winner FROM nobel where subject = 'Medicine' AND yr < 1910 OR 
subject = 'Literature' AND yr >= 2004

SELECT * FROM nobel WHERE winner = 'PETER GRÜNBERG'
