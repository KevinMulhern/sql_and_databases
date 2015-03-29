# Tutorial 2 for SQL Zoo


# Question 1:
SELECT name, continent, population FROM world;

# Question 2:
SELECT name FROM world
WHERE population>200000000;

# Question 3:
SELECT name, gdp/population
FROM world
WHERE population >= 200000000;

# Question 4:
SELECT name, population/1000000
FROM world
where continent = 'South America';

# Question 5:
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy');

# Question 6:
SELECT name
FROM world
WHERE name LIKE '%United%';