# Tutorial 1 for SQL Zoo


# Question 1:
SELECT population FROM world
  WHERE name = 'Germany';

# Question 2:
SELECT name, gdp/population FROM world
  WHERE area > 5000000;

# Question 3:
SELECT name , continent
  FROM world
  WHERE area < 2000
    AND gdp > 5000000000;

# Question 4:
SELECT name, population FROM world
  WHERE name IN ('Denmark', 'Finland',
                 'Norway', 'Sweden');

# Question 5:
SELECT name FROM world
  WHERE name LIKE 'G%';

# Question 6:
SELECT name, area/1000 FROM world
  WHERE area BETWEEN 200000 AND 250000;



