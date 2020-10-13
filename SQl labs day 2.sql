--                          SQL Queries lab 3

USE sakila;

-- different actors' last names 
SELECT count(distinct(last_name)) as 'sum_last_names' from sakila.actor;

-- different languages originally produced 
select distinct(name) from sakila.language;

-- not originally in english
select original_language_id <> 'English' AS not_english from sakila.film;

-- 10 longest movies from 2006
select*from sakila.film where release_year = 2006 
order by length 
limit 10;

-- days has been the company operating use datefiff () function


-- show rental info with additional columns month and weekday. Get 20. 
select date_format(convert(rental_date, date), '%M') as 'month' from sakila.rental
limit 20;

select date_format(convert(rental_date, date), '%D') as 'weekday' from sakila.rental
limit 20; 

--  Add day_type column with values 'weekday' and 'workday'

select *,
case
     when date_format(rental_date, '%w') between 1 and 5 then 'weekday' 
     Else 'week-end'
     end as 'day_type'
     from rental;

-- how many rentals in the last month of activity 
select*from sakila.rental 
order by return_date;

select*from sakila.rental;
select date_format(return_date, '%m-%d') > 01-15 as 'last_month_rentals' from sakila.rental;



--                            SQL Queries  Lab 4

use sakila;

-- film ratings 
select*from sakila.film 
order by rating; 

-- get release years
select*from sakila.film
order by release_year;

-- Get all films with ARMAGEDDON in the title 
select*from sakila.film where title like '%ARMAGEDDON';

-- get all films with APOLLO in title
select*from sakila.film where title like '%APOLLO';

-- get all films which ends with APOLLO
select*from sakila.film where title regexp 'APOLLO$'; 

-- get all films with word DATE in the title 
select*from sakila.film where title regexp 'DATE';

-- Get 10 films with longest title 
select*, length(title) as 'title_length' from sakila.film
order by title_length DESC
limit 10; 

-- Get 10 longest films

select*from sakila.film  
order by length DESC
limit 10;

-- How many films include 'Behind the Scenes' content
select*from sakila.film where special_features regexp 'Behind the Scenes';

 
-- list film ordered by release year and title in alphabetical order
select*from sakila.film order by release_year, title;






