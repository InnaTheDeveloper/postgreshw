SELECT m.id, m.title, m.release_date, m.duration, m.description, json_build_object(
        'id', f.id,
        'file_name', f.file_name,
        'mime_type', f.mime_type,
        'file_key', f.file_key,
        'file_url', f.file_url
    ) AS poster_info, m.director_name, COALESCE(json_agg(json_build_object(
        'id', p.id,
        'first_name', p.first_name,
        'last_name', p.last_name,
        'photo', json_build_object(
            'id', f.id,
            'file_name', f.file_name,
            'mime_type', f.mime_type,
            'file_key', f.file_key,
            'file_url', f.file_url
            )
    )), '[]') AS movie_actors, COALESCE(json_agg(g.name), '[]') AS movie_genres
FROM public."movie" m
LEFT JOIN public."file" f ON f.id = m.poster_id
LEFT JOIN public."character_movie" chm ON chm.movie_id = m.id
LEFT JOIN public."character" ch ON ch.id = chm.character_id
LEFT JOIN public."person" p ON ch.person_id = p.id
LEFT JOIN public."movie_genre" mg ON mg.movie_id = m.id
LEFT JOIN public."genre" g ON g.id = mg.genre_id
WHERE m.id = 'bc07d7f1-92f1-49fa-8e85-21e9c1d8c1f5'
GROUP BY m.id, f.id, f.file_name, f.mime_type, f.file_key, f.file_url;