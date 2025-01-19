SELECT
  DIRECTOR.id AS director_id,
  COUNT(MOVIE_DIRECTOR.movie_id) AS no_of_movies,
  AVG(MOVIE.collection_in_cr - MOVIE.budget_in_cr) AS avg_profit
FROM
  DIRECTOR
  INNER JOIN MOVIE_DIRECTOR ON DIRECTOR.id = MOVIE_DIRECTOR.director_id
  INNER JOIN MOVIE ON MOVIE.id = MOVIE_DIRECTOR.movie_id
GROUP BY
  DIRECTOR.id
HAVING
  no_of_movies >= 2
  AND avg_profit > 50
ORDER BY
  no_of_movies DESC,
  DIRECTOR.id ASC;
