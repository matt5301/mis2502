-- SELECT title, length FROM moviedb.film WHERE length = (SELECT max(length) FROM moviedb.film)

-- SELECT title FROM moviedb.film JOIN moviedb.film_actor ON film.film_id = film_actor.film_id JOIN moviedb.actor ON film_actor.actor_id = actor.actor_id WHERE first_name = 'Sandra' AND last_name = 'Peck' LIMIT 5;

-- SELECT count(*) FROM moviedb.rental JOIN moviedb.customer ON rental.customer_id = customer.customer_id WHERE first_name = 'Adam' AND last_name = 'Gooch';

-- SELECT first_name, count(*) FROM moviedb.customer JOIN moviedb.address ON customer.address_id = address.address_id WHERE postal_code > 40000 GROUP BY first_name ORDER BY count(*) DESC LIMIT 2

-- SELECT COUNT(*) FROM (SELECT distinct rating FROM moviedb.film) as temp1;

-- What’s the longest film among inventories in store 2?

-- SELECT DISTINCT title FROM moviedb.film JOIN moviedb.inventory ON film.film_id = inventory.film_id WHERE store_id = 2 AND length = (SELECT max(length) FROM moviedb.film JOIN moviedb.inventory ON film.film_id = inventory.film_id WHERE store_id = 2);

SELECT title, rental_rate
FROM moviedb.actor
JOIN moviedb.film_actor ON actor.actor_id = film_actor.actor_id
JOIN moviedb.film ON film.film_id = film_actor.film_id
WHERE actor.first_name = 'Penelope'
AND actor.last_name = 'Guiness'
AND rental_rate = (SELECT max(rental_rate)
FROM moviedb.actor
JOIN moviedb.film_actor ON actor.actor_id = film_actor.actor_id
JOIN moviedb.film ON film.film_id = film_actor.film_id
WHERE actor.first_name = 'Penelope'
AND actor.last_name = 'Guiness');