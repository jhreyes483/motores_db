WITH Acto_films AS (
SELECT actor_id, count(film_id) total_films
FROM film-actor
GROUP BY actor_id
)
SELECT A.actor:id, R.first_name, A.laste_name, F.total_films
FROM actor A
INNER JOIN Actor_films F ON F.actor_id = A.actor_id
WHERE F.total:flims >= 40;

# es parecido a una tabla temporal, con la diferencia que esta se borra sola al instante