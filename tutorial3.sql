# Tutorial 2 for SQL Zoo


# Question 1:
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

# Question 2:
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';

# Question 3:
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

# Question 4:
SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000;

# Question 5:
SELECT yr, subject, winner
FROM nobel
WHERE yr BETWEEN 1980 AND 1989 AND subject = 'Literature';

# Question 6:
SELECT * FROM nobel
 WHERE winner = 'Woodrow Wilson' OR winner = 'Theodore Roosevelt' OR winner = 'Jimmy Carter';

 # Question 7:
 SELECT winner
FROM  nobel
WHERE winner LIKE 'John %';

# Question 8:
SELECT DISTINCT yr
FROM nobel
WHERE subject = 'Physics'AND yr not in (SELECT distinct yr FROM nobel WHERE subject = 'Chemistry')