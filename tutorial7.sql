# Tutorial 7 for SQL Zoo


# Question 1:
SELECT id, title
FROM movie
WHERE yr=1962

# Question 2:
SELECT yr
FROM movie
WHERE title = 'Citizen Kane'

# Question 3:
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%'
ORDER BY yr

# Question 4:
SELECT title
FROM movie
WHERE id IN ('11768', '11955', '21191')

# Question 5:
SELECT id
FROM actor
WHERE name = 'Glenn Close'

# Question 6:
SELECT id
FROM movie
WHERE title = 'Casablanca'

# Question 7:
SELECT name
FROM actor JOIN casting on id = actorid
WHERE movieid IN (SELECT id FROM movie WHERE title = 'Casablanca')

#Question 8:
SELECT name
FROM actor JOIN casting ON id = actorid
WHERE movieid IN (SELECT id FROM movie WHERE title = 'Alien')

# Question 9:
SELECT title
FROM movie JOIN casting ON id = movieid
WHERE actorid IN (SELECT id FROM actor WHERE name = 'Harrison Ford')

# Question 10:
SELECT title
FROM movie JOIN casting ON id = movieid
WHERE actorid IN (SELECT id FROM actor WHERE name = 'Harrison Ford' AND ord <> 1)

# Question 11:
SELECT movie.title, actor.name
FROM movie JOIN casting ON (movie.id = casting.movieid) JOIN actor ON actor.id = casting.actorid
WHERE movie.yr = 1962 AND casting.ord = 1

# Question 12:
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
WHERE name='John Travolta'
GROUP BY yr
HAVING COUNT(title)=(SELECT MAX(c) FROM
(SELECT yr,COUNT(title) AS c FROM
   movie JOIN casting ON movie.id=movieid
         JOIN actor   ON actorid=actor.id
 WHERE name='John Travolta'
 GROUP BY yr) AS t
)

# Question 13:
SELECT movie.title, actor.name 
FROM casting JOIN movie ON movie.id = casting.movieid JOIN actor ON casting.actorid = actor.id
WHERE ord = 1 AND casting.movieid IN
(SELECT movieid FROM casting
WHERE actorid IN(SELECT id FROM actor
WHERE name = 'Julie Andrews'))

# Question 14:
SELECT actor.name
FROM actor JOIN casting ON actor.id = casting.actorid
WHERE casting.ord = 1
GROUP BY name
HAVING COUNT(*) >= 30

# Question 15:
SELECT movie.title, COUNT(actorid)
FROM movie JOIN casting ON(movie.id = casting.movieid)
WHERE movie.yr = 1978
GROUP BY movie.title
ORDER BY COUNT(actorid) DESC, movie.title

# Question 16:
SELECT actor.name  FROM casting
JOIN movie ON movie.id=casting.movieid
JOIN actor ON  actor.id=casting.actorid
WHERE
actor.name <> 'Art Garfunkel'
AND
movie.id IN(SELECT movie.id FROM casting
JOIN movie ON movie.id=casting.movieid
JOIN actor ON  actor.id=casting.actorid
WHERE actor.name='Art Garfunkel') 







