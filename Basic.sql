## Basic Sql

SELECT population FROM world
  WHERE name ='Germany'
  
  SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');
  
  SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
  
  ## SQL  quiz world

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

## SQL Quiz Nobel

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

SELECT * FROM nobel WHERE winner = 'EUGENE O''NEILL'

SELECT winner, yr, subject from nobel where LEFT(winner, 3) = 'Sir' ORDER BY yr DESC, winner

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject,winner
 
 SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

SELECT name
FROM world 
WHERE continent = 'Europe' 
          AND 
(gdp/population) > (SELECT ROUND((gdp/population),-1) FROM world WHERE name = 'United Kingdom')

SELECT name, continent 
from world 
where 
continent IN (SELECT continent FROM world WHERE name = 'Argentina' OR name = 'Australia')

SELECT name, population FROM world WHERE population > (SELECT population FROM world WHERE name = 'Canada') AND population < (SELECT population FROM world WHERE name ='Poland') 

SELECT name, CONCAT(ROUND((100*population/(SELECT population FROM world WHERE name = 'Germany')),0), '%') FROM world WHERE continent = 'EUROPE'

SELECT name FROM world WHERE gdp > (SELECT MAX(gdp) FROM world WHERE continent = 'Europe')

SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT MAX(area) FROM world y
        WHERE y.continent=x.continent)
        
        SELECT name, continent, population FROM world WHERE continent NOT IN(SELECT distinct continent FROM world where population > 25000000)
        
SELECT SUM(population)
FROM world

SELECT DISTINCT continent FROM WORLD

SELECT SUM(gdp) from world WHERE continent = 'Africa'

SELECT Count(name) FROM world WHERE area >= 1000000

SELECT SUM(population) FROM world WHERE name IN('Estonia', 'Latvia', 'Lithuania')

SELECT continent, Count(name) FROM world GROUP BY continent

SELECT continent, Count(name) FROM world WHERE population >= 10000000 GROUP BY continent

SELECT continent FROM world GROUP BY continent HAVING SUM(population) >= 100000000 

SELECT matchid, player FROM goal 
  WHERE teamid LIKE '%GER'
  
  SELECT id,stadium,team1,team2
  FROM game WHERE id LIKE '1012%'

SELECT player,teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid) WHERE teamid = 'GER'
  
  SELECT team1, team2, player 
  FROM game JOIN goal ON (id=matchid) WHERE player LIKE 'Mario%'
  
  SELECT player,teamid, coach, gtime
  FROM goal JOIN eteam ON(teamid=id)
 WHERE gtime<=10
 
 SELECT mdate, teamname FROM game JOIN eteam ON (team1=eteam.id) WHERE coach = 'Fernando Santos'
 
 SELECT player
  FROM game JOIN goal ON(id=matchid)
WHERE stadium = 'National Stadium, Warsaw'

SELECT DISTINCT player
  FROM game JOIN goal ON matchid = id 
    WHERE teamid!='GER' AND (team1='GER' OR team2='GER')
    
    SELECT teamname, Count(gtime)
  FROM eteam JOIN goal ON id=teamid
  GROUP BY teamname
