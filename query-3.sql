SELECT
  ACTOR.name AS actor_name,
  count(MOVIE_CAST.movie_id) AS no_of_movies
FROM
  ACTOR
  INNER JOIN MOVIE_CAST ON ACTOR.id = MOVIE_CAST.actor_id
GROUP BY
  ACTOR.id
ORDER BY
  ACTOR.name ASC;
