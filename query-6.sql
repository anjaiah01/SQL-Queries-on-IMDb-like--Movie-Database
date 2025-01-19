SELECT
  DIRECTOR.id AS director_id,
  count(MOVIE_DIRECTOR.movie_id) AS no_of_movies
FROM
  DIRECTOR
  INNER JOIN MOVIE_DIRECTOR ON DIRECTOR.id = MOVIE_DIRECTOR.director_id
  INNER JOIN MOVIE ON MOVIE.id = MOVIE_DIRECTOR.movie_id
WHERE
  MOVIE.rating > 6
GROUP BY
  DIRECTOR.id
HAVING
  no_of_movies >= 2
ORDER BY
  no_of_movies DESC,
  DIRECTOR.id ASC;
