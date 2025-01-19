SELECT
  DIRECTOR.id AS director_id,
  COUNT(MOVIE_DIRECTOR.movie_id) AS no_of_movies_with_atleast_profit_50_cr
FROM
  DIRECTOR
  INNER JOIN MOVIE_DIRECTOR ON DIRECTOR.id = MOVIE_DIRECTOR.director_id
  INNER JOIN MOVIE ON MOVIE.id = MOVIE_DIRECTOR.movie_id
WHERE
  (MOVIE.collection_in_cr - MOVIE.budget_in_cr) >= 50
GROUP BY
  DIRECTOR.id
HAVING
  COUNT(MOVIE_DIRECTOR.movie_id) >= 2
ORDER BY
  no_of_movies_with_atleast_profit_50_cr DESC,
  DIRECTOR.id ASC;
