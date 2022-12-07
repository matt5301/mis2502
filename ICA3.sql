-- SELECT DISTINCT rating FROM moviedb.film;
-- SELECT rating FROM moviedb.film GROUP BY rating; Same result

-- SELECT count(*) FROM moviedb.customer WHERE last_name LIKE 'SH%' OR last_name LIKE 'TH%'

-- SELECT rating, AVG(length) FROM moviedb.film WHERE rating = 'PG' OR rating = 'R' GROUP BY rating;

-- SELECT title, length FROM moviedb.film ORDER BY length DESC LIMIT 1;

-- try number 5

-- SELECT count(*) FROM moviedb.film JOIN moviedb.language ON film.language_id = language.language_id WHERE name = 'French'

-- SELECT postal_code FROM moviedb.customer JOIN moviedb.address ON customer.address_id = address.address_id WHERE last_name = 'Martinez' AND first_name = 'Ruth'

-- SELECT film.film_id, COUNT(inventory.film_id) FROM moviedb.film LEFT JOIN moviedb.inventory ON film.film_id = inventory.film_id GROUP BY film.film_id