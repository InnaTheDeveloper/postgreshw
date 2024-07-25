SELECT u.id, u.username, COALESCE(json_agg(fm.movie_id), '[]') AS favorite_movies
FROM public."user" u
LEFT JOIN public."favorite_movie" fm ON fm.user_id = u.id
GROUP BY u.id, u.username;