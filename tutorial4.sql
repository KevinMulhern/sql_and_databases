# Tutorial 4 from SQL Zoo


#Question 1:
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');

# Question 2:
SELECT name FROM world
WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population FROM world
WHERE name = 'United Kingdom');

# Question 3:
SELECT name, continent FROM world
WHERE continent IN (SELECT continent FROM world
WHERE name IN ('Belize', 'Belgium'));

# Question 4:
SELECT name, population FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada') AND population < (SELECT population FROM world WHERE name = 'Poland');

# Question 5:
SELECT name FROM world
WHERE gdp > ALL (SELECT gdp FROM world
WHERE continent = 'Europe' AND gdp IS NOT NULL);

# Question 6:
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0);

# Question 7:
SELECT name, continent, population FROM world
WHERE continent IN (SELECT continent FROM world
GROUP BY continent
HAVING MAX(population) <= 25000000);

# Question 8:
SELECT name, continent FROM world AS x
WHERE x.population > ALL
(SELECT population * 3 FROM world AS y
WHERE y.continent=x.continent
AND y.name <> x.name);

