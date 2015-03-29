# Sql Tutorial for SQL PQL

#
# The Select Command
#

# Question 1:
SELECT name,area FROM world

# Question 2:
SELECT name, gdp/population FROM world
WHERE area > 5000000

# Question 3:
SELECT name, region FROM world
WHERE area < 2000 AND gdp > 5000000000

# Question 4:
SELECT name, population FROM world
WHERE name IN ('China', 'Vietnam', 'Japan')

# Question 5A:
SELECT name FROM world
WHERE name LIKE 'S%'

# Question 5B:
SELECT name, region FROM world
WHERE name LIKE 'T%n'

# Question 6A:
SELECT name, population FROM world
WHERE area BETWEEN 10000 AND 50000

# Question 6B:
SELECT name, population FROM world
WHERE population BETWEEN 35000000 AND 75000000

# Question 7:
SELECT name AS country, population AS "Number of people" FROM world


#
# SUM, COUNT, MAX and more
#

# Question 1A:
SELECT SUM(gdp) FROM world

# Question 1B:
SELECT SUM(area) FROM world
WHERE region = 'Asia-Pacific'

# Question 2A:
SELECT COUNT(name) FROM world
WHERE region LIKE '%America%'

# Question 2B:
SELECT COUNT(name) FROM world
WHERE area >= 1000000

# Question 3:
SELECT MAX(area) FROM world
WHERE region = 'Europe'

# Question 4:
"No question provided"

# Question 5A:
SELECT region, SUM(population) FROM world
GROUP BY region

# Question 5B:
SELECT region, COUNT(name) FROM world
WHERE population > 100000000
GROUP BY region

# Question 6A:
SELECT region, COUNT(name) FROM world
GROUP BY region
HAVING COUNT(name) >= 30



#
# Subqueries, Select inception
#

# Question 1A:
SELECT region, name, area FROM world
WHERE area > (SELECT area FROM world WHERE name = 'Brazil')

# Question 1B:
SELECT name, gdp FROM world
WHERE population < (SELECT population FROM world WHERE name = 'Samoa')

# Question 2:
SELECT region, name
FROM world
WHERE region IN (
  SELECT region
  FROM world
  WHERE name IN ('Taiwan', 'Egypt'))

# Question 2A:
SELECT name FROM world
WHERE region = 'North America' AND gdp > (SELECT gdp FROM world WHERE name = 'South Korea')


