SELECT movie.name,MIN(movie.earnings_rank)
FROM movie, oscar
WHERE movie.id = oscar.movie_id AND oscar.type = "Best-Picture";
