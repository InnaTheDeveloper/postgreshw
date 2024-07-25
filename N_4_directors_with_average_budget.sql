SELECT m.director_name, ROUND(AVG(m.budget)) AS average_budget
FROM public."movie" m
GROUP BY m.director_name;