-- SELECT name, COUNT(film_id) FROM moviedb.language LEFT JOIN moviedb.film ON language.language_id = film.language_id GROUP BY name

-- SELECT COUNT(*) FROM moviedb.film JOIN moviedb.film_actor ON film.film_id = film_actor.film_id JOIN moviedb.actor ON actor.actor_id = film_actor.actor_id WHERE title = "BREAKING HOME"

-- SELECT DISTINCT first_name, last_name FROM moviedb.customer JOIN moviedb.rental ON customer.customer_id = rental.customer_id JOIN moviedb.inventory ON rental.inventory_id = inventory.inventory_id JOIN moviedb.film ON inventory.film_id = film.film_id JOIN moviedb.language ON film.language_id = language.language_id WHERE name = "Japanese" ORDER BY last_name LIMIT 5

-- SELECT DISTINCT COUNT(district) FROM moviedb.address

-- SELECT first_name, last_name, COUNT(*) FROM moviedb.actor JOIN moviedb.film_actor ON actor.actor_id = film_actor.actor_id JOIN moviedb.film ON film_actor.film_id = film.film_id GROUP BY title ORDER BY COUNT(*) DESC LIMIT 1

-- SELECT district, inventory.store_id, COUNT(*) FROM moviedb.address JOIN moviedb.customer ON address.address_id = customer.address_id JOIN moviedb.rental ON customer.customer_id = rental.customer_id JOIN moviedb.inventory ON rental.inventory_id = inventory.inventory_id WHERE district = "Georgia" GROUP BY store_id

-- SELECT title, replacement_cost FROM moviedb.film JOIN moviedb.inventory ON film.film_id = inventory.film_id WHERE rating = 'PG' AND store_id = 2 AND replacement_cost = (SELECT max(replacement_cost) FROM moviedb.film JOIN moviedb.inventory ON film.film_id = inventory.film_id) GROUP BY title

-- SELECT title, rental_rate FROM moviedb.film JOIN moviedb.film_actor ON film.film_id = film_actor.film_id JOIN moviedb.actor ON film_actor.actor_id = actor.actor_id WHERE first_name = 'Emily' AND last_name = 'Dee' AND rental_rate = (SELECT min(rental_rate) FROM moviedb.film JOIN moviedb.film_actor ON film.film_id = film_actor.film_id JOIN moviedb.actor ON film_actor.actor_id = actor.actor_id)

SELECT avg((SELECT avg(rental_rate)
FROM moviedb.film))
FROM moviedb.film
