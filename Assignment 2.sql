-- SELECT address, phone FROM moviedb.address WHERE district = 'California' AND postal_code < 20000;

-- SELECT first_name, COUNT(first_name) FROM moviedb.actor GROUP BY first_name ORDER BY COUNT(first_name) DESC LIMIT 3;

-- SELECT DISTINCT rental_rate FROM moviedb.film

-- SELECT language_id, AVG(rental_rate) FROM moviedb.film GROUP BY language_id

-- SELECT COUNT(*) FROM moviedb.film WHERE rating = 'PG' AND description LIKE '% of %'

-- SELECT COUNT(*) FROM moviedb.customer WHERE store_id = 1 AND first_name = 'Kelly'

-- SELECT rating, AVG(rental_rate) FROM moviedb.film GROUP BY rating ORDER BY AVG(rental_rate) DESC LIMIT 1

-- SELECT DISTINCT first_name FROM moviedb.customer WHERE first_name LIKE 'S%' ORDER BY first_name LIMIT 5
