USE sakila;
#1Select all the actors with the first name ‘Scarlett’.
SELECT * FROM sakila.actor;
SELECT first_name FROM sakila.actor
WHERE first_name = "Scarlett";

#2.How many films (movies) are available for rent and how many films have been rented?
SELECT * FROM sakila.film;
SELECT count(title) FROM sakila.film;

#3What are the shortest and longest movie duration?
# Name the values as max_duration and min_duration.
SELECT MAX(length) AS max_duration FROM sakila.film;
SELECT MIN(length) AS min_duration FROM sakila.film;

#4 What's the average movie duration expressed in format (hours, minutes)?
SELECT * FROM sakila.film;
SELECT date_format (AVG(length), "%h:%m") FROM sakila.film;

####5.How many distinct (different) actors' last names are there?##
SELECT * FROM sakila.actor;
SELECT DISTINCT last_name FROM sakila.actor;

##.6Since how many days has the company been operating (check DATEDIFF() function)?#

##7.Show rental info with additional columns month and weekday. Get 20 results.#
SELECT * FROM sakila.rental;

##8.Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
##9.Get release years.
##.10.Get all films with ARMAGEDDON in the title.#
#.11.Get all films which title ends with APOLLO.#
#.12.Get 10 the longest films.#
#13.How many films include Behind the Scenes content?