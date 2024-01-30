--1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
--A) after running the code and searching data, there are only 2 actors with the last_name of 'Wahlgerb'

--2. How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--A) There are 5,602 payments that were made between $3.99 and $5.99

--3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(*) AS film_count
FROM inventory
GROUP BY film_id
ORDER BY film_count DESC
LIMIT 1;
--A) the film with the film id of 350 the store has the most of which is 8.
--4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'Williams';
--A) There are only one customer with the last name of 'Williams'.
--5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(*) AS rental_count
FROM rental 
GROUP BY staff_id
ORDER BY rental_count DESC
LIMIT 1;
--A) staff_id number 1 sold the most rentals with a count of 8040.
--6. How many different district names are there?
SELECT count(DISTINCT district) AS district_count
FROM address;
--A) there are are number 378 different districts.

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id 
COUNT film_actor as actor_id
FROM film_actor
GROUP BY film_id
ORDER BY actor_id DESC
LIMIT 1;
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*) AS customer_id
FROM customer
WHERE last_name LIKE '%es';
--A) there are 21 customers that have a last name ending in 'es'.
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430 AND (SELECT COUNT(*) FROM rental WHERE customer_id = customer_id) > 250;
--A) I think I got it with an asnwer of 1257 payment amount that had a number of rentals above 250 for customers with ids between 380 and 430.
--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT COUNT(DISTINCT rating) AS district_rating_count
FROM film;
--A) there are a number of rating categories of 5.
SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC
LIMIT 1;
--A) PG-13 has the moct ratings and has a movie count of 223.