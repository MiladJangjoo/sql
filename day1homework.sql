--1. How many actors are there with the last name ‘Wahlberg’?
--answer: 2
SELECT count(last_name), last_name
FROM actor 
WHERE last_name = 'Wahlberg'
GROUP BY last_name;
--2. How many payments were made between $3.99 and $5.99?
--answer: 5607
--SELECT count(amount), amount
--FROM payment
--GROUP BY amount
--HAVING amount BETWEEN 3.99 AND 5.99;
SELECT amount
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;
--3. What film does the store have the most of? (search in inventory)
--answer: there are 72 films that have 8item inventory each
SELECT count(film_id), film_id 
FROM inventory
GROUP BY film_id
ORDER BY count desc;

--4. How many customers have the last name ‘William’?
--answer: 0
SELECT count(last_name), last_name
FROM customer 
WHERE last_name = 'William'
GROUP BY last_name;
--5. What store employee (get the id) sold the most rentals?
--answer: staff id 1, with 8040 unit rental, his name Mike hillyer
SELECT count(staff_id),staff_id
FROM rental
GROUP BY staff_id;
SELECT *FROM staff;
--6. How many different district names are there?
--answer: 378
SELECT count(DISTINCT district) 
FROM address;
--7. What film has the most actors in it? (use film_actor table and get film_id)
--answer: Lambs Cincinatti 15 actors
SELECT count(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY count DESC;
SELECT * 
FROM film 
WHERE film_id =508; 
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--answer: 13
SELECT last_name, store_id
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--answer:1257 final answer 
SELECT count(staff_id),staff_id 
FROM payment 
WHERE rental_id > 250 AND (customer_id BETWEEN 380 AND 430)
GROUP BY staff_id

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total? 
--answer: 5 diffrent rating levels, PG-13 223
SELECT  DISTINCT rating, count( rating) 
FROM film
GROUP BY DISTINCT rating;















