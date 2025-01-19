SELECT
  DIRECTOR.id AS director_id,
  count(MOVIE_DIRECTOR.movie_id) AS no_of_movies,
  AVG(MOVIE.rating) AS avg_rating
FROM
  DIRECTOR
  INNER JOIN MOVIE_DIRECTOR ON MOVIE_DIRECTOR.director_id = DIRECTOR.id
  INNER JOIN MOVIE ON MOVIE.id = MOVIE_DIRECTOR.movie_id
GROUP BY
  DIRECTOR.id
HAVING
  no_of_movies >= 2
  AND avg_rating > 8
ORDER BY
  no_of_movies DESC,
  DIRECTOR.id ASC;
