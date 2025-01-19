SELECT
  DIRECTOR.name AS director_name,
  count(MOVIE_DIRECTOR.movie_id) AS no_of_movies
FROM
  DIRECTOR
  LEFT JOIN MOVIE_DIRECTOR ON DIRECTOR.id = MOVIE_DIRECTOR.director_id
GROUP BY
  DIRECTOR.id
ORDER BY
  no_of_movies DESC,
  DIRECTOR.name ASC;
