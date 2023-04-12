USE sakila;
#1Select all the actors with the first name ‘Scarlett’.
SELECT * FROM sakila.actor;
SELECT first_name FROM sakila.actor
WHERE first_name = "Scarlett";

#2.How many films (movies) are available for rent and how many films have been rented?
SELECT * FROM sakila.film;
SELECT count(title) FROM sakila.film; ##or
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM rental;

#3What are the shortest and longest movie duration?
# Name the values as max_duration and min_duration.
SELECT MAX(length) AS max_duration FROM sakila.film;
SELECT MIN(length) AS min_duration FROM sakila.film;
## alternatively
SELECT MAX(length) AS 'max_duration', MIN(length) AS 'min_duration'
FROM film;

#4 What's the average movie duration expressed in format (hours, minutes)?
SELECT * FROM sakila.film;
SELECT date_format (AVG(length), "%h:%m") FROM sakila.film;

####5.How many distinct (different) actors' last names are there?##
SELECT * FROM sakila.actor;
SELECT COUNT(DISTINCT last_name) FROM sakila.actor;

##.6Since how many days has the company been operating (check DATEDIFF() function)?#
SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) AS 'days_operating' 
FROM rental;

##7.Show rental info with additional columns month and weekday. Get 20 results.#
SELECT * FROM sakila.rental;
SELECT DATE_FORMAT(rental_date,'%M') AS 'month', DATE_FORMAT(rental_date,'%a') AS 'day'
FROM rental
LIMIT 20;
SELECT rental_date,

##8.Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
CASE
WHEN DATE_FORMAT(rental_date,'%a') = 'Sat' then 'weekend'
WHEN DATE_FORMAT(rental_date,'%a') = 'Sun' then 'weekend'
ELSE 'weekday'
END AS column_day_type
FROM rental;

##9.Get release years.
SELECT title, release_year
FROM film;

##.10.Get all films with ARMAGEDDON in the title.#
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%';

#.11.Get all films which title ends with APOLLO.#
SELECT *
FROM film
WHERE title LIKE '%APOLLO';

#.12.Get 10 the longest films.#
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#13.How many films include Behind the Scenes content?
SELECT COUNT(special_features) as 'Behind_the_Scenes_content'
FROM film
WHERE special_features LIKE '%Behind the Scenes%';