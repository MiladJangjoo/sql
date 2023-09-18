SELECT * 
FROM actor;

SELECT first_name, last_name FROM actor;

SELECT concat(first_name,' ',last_name) AS full_name
FROM actor;

SELECT *
FROM actor 
WHERE first_name = 'Nick';

SELECT *
FROM actor 
WHERE first_name LIKE 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N%';

SELECT first_name 
FROM actor 
WHERE first_name LIKE 'K__';

SELECT first_name
FROM actor 
WHERE first_name LIKE 'K__%th';

SELECT *
FROM payment;

SELECT customer_id, amount 
FROM payment;

SELECT customer_id, amount 
FROM payment
WHERE amount > 2;

SELECT customer_id, amount 
FROM payment
WHERE amount < 7.99
ORDER BY amount desc;

SELECT customer_id, amount 
FROM payment
WHERE amount < 7.99
ORDER BY amount asc;

SELECT customer_id, amount 
FROM payment
WHERE amount <= 7.99
ORDER BY amount desc;

SELECT amount,customer_id
FROM payment
WHERE amount >= 2.99
ORDER BY amount ASC;

SELECT amount, customer_id
FROM payment 
WHERE amount BETWEEN 2.00 AND 7.99;

SELECT amount, customer_id
FROM payment 
WHERE amount != 0;

SELECT *
FROM LANGUAGE;

SELECT * FROM film;

SELECT language_id, title
FROM film
WHERE language_id = 1;

-- aggregators
SELECT count(film_id)
FROM film
WHERE language_id = 1;

SELECT count(film_id), language_id 
FROM film
GROUP BY language_id;

SELECT * FROM inventory; 

SELECT count(inventory_id), store_id
FROM inventory
GROUP BY store_id;

SELECT * 
FROM payment;

SELECT sum(amount), customer_id
FROM payment
GROUP BY customer_id
ORDER BY sum(amount) desc;

SELECT avg(amount)
FROM payment; 

SELECT DISTINCT amount , count(amount) AS times
FROM payment
GROUP by DISTINCT amount ;

SELECT min(amount) AS "mallest_amount_above_7.99"
FROM payment
WHERE amount > 7.99;

SELECT max(amount) AS "max amount"
FROM payment;

SELECT max(amount) AS "max amount", customer_id
FROM payment
GROUP BY customer_id;

SELECT customer_id, count(payment_id)
FROM payment
GROUP BY customer_id
having count(customer_id)>20;





















