SELECT
  count(MOVIE_CAST.id) AS no_of_movies
FROM
  actor
  INNER JOIN MOVIE_CAST ON actor.id = MOVIE_CAST.actor_id
WHERE
  actor.name = "Daniel Radcliffe"
GROUP BY
  actor.id;
