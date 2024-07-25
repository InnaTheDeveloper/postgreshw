SELECT m.id, m.title, COUNT(ch.person_id) as actors_count
FROM public."movie" m
LEFT JOIN public."character_movie" chm ON chm.movie_id = m.id
LEFT JOIN public."character" ch ON ch.id = chm.character_id
WHERE m.release_date >= CURRENT_DATE - INTERVAL '5 years'
GROUP BY m.id, m.title;


