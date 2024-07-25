SELECT m.id, m.title, m.release_date, m.duration, m.description, m.director_name, json_build_object(
        'id', f.id,
        'file_name', f.file_name,
        'mime_type', f.mime_type,
        'file_key', f.file_key,
        'file_url', f.file_url
    ) AS poster_info
FROM public."movie" m
LEFT JOIN public."file" f ON f.id = m.poster_id
JOIN public."movie_genre" mg ON mg.movie_id = m.id
JOIN public."genre" g ON g.id = mg.genre_id
WHERE 
    m.country = 'USA'
    AND m.release_date >= '2022-01-01'
    AND m.duration > 135  -- 2 hours 15 minutes = 135 minutes
    AND g.name IN ('Action', 'Drama')
GROUP BY 
    m.id, f.id, f.file_name, f.mime_type, f.file_key, f.file_url;