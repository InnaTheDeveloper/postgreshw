SELECT actor.id, actor.first_name, actor.last_name, SUM(m.budget) AS total_budget
FROM public."person" actor 
LEFT JOIN public."character" ch ON ch.person_id = actor.id
LEFT JOIN public."character_movie" chm ON chm.character_id = ch.id
LEFT JOIN public."movie" m ON m.id = chm.movie_id
GROUP BY actor.id, actor.first_name, actor.last_name;