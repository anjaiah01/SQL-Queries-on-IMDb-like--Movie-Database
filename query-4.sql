SELECT
  ACTOR.name AS actor_name,
  count(MOVIE_CAST.movie_id) AS no_of_movies
FROM
  ACTOR
  INNER JOIN MOVIE_CAST ON ACTOR.id = MOVIE_CAST.actor_id
GROUP BY
  ACTOR.id
HAVING
  no_of_movies > 5
ORDER BY
  ACTOR.name ASC;
