USE sakila;

-- 1) You are helping the casting director create a contact list of all actors. 
-- Retrieve the first and last names of all actors.
select First_name, Last_name
from actor;


-- 2) A colleague remembers meeting an actor named “Joe” but not the last name. 
-- Find all actors with the first name “Joe”.
select first_name, last_name
from actor
where first_name like 'joe';



-- 3) The theater manager wants a list of films that run for 3 hours or more. 
-- Show relevant film details.

select title, description, rating, length
from film
where length >180;


-- 4) While verifying account details, retrieve customers whose last name starts with "S" 
-- and first name ends with "N".

select first_name, last_name
from customer
where First_name LIKE '%N'
and last_name LIKE 'S%'; 

-- 5) The accounting team needs a list of all payments made on or after May 27, 2005. 
-- Return relevant payment records.

select *
from payment
where payment_date >2005-05-27;


-- 6) Marketing is planning campaigns in Afghanistan, Bangladesh, and China. 
-- Display the country_id and country names for these.
select country_id, country
from country
where country= 'afghanistan' OR country =  'Bangladesh' OR country = 'China';



-- 7) The media team is interested in actors with "GEN" in their last names. 
-- Find such actors.

select first_name, Last_name
from actor
where last_name like '%gen%';


-- 8) You’re compiling a list of actors whose last names include "LI", 
-- ordered alphabetically by last name and first name.

select first_name, last_name
from actor 
where last_name like '%li%'
order by Last_name, First_name asc;


-- 9) The director remembers working with an actress named "Scarlett". 
-- Retrieve actors with that first name. 

select *
from actor 
where first_NAME = 'Scarlett';


-- 10) A staff member recalls an actor with the last name “Johansson”. 
-- List all actors with that surname.

select *
from actor 
where LAST_NAME = 'Johansson';


-- 11) A partner wants movies where the description ends in "Boat" and rental duration is over 6. 
-- Return title, description, and rental duration.

select title, description, rental_duration 
from film 
where DEscription LIKE '%boat'; 


-- 12) Management wants to know how many unique actor last names exist. 
-- Provide a count of distinct last names.

select count(distinct last_name)
from actor; 


-- 13) A customer wants to know when the movie “Academy Dinosaur” is due back. 
-- Find the due date from rental data.

select due_date
from film
join rental
on film.last_update= rental.last_update
where title LIKE 'Academy dinosaur';






-- 14) A distributor is reviewing average film lengths. 
-- Calculate the average running time of all films.




-- 15) HR needs a list of staff members with their addresses. 
-- Use a join to retrieve staff names and address.




-- 16) Management wants to track staff performance. 
-- Show each staff member's name and the payment amounts they processed.




-- 17) HR is auditing August 2005. 
-- List staff and payments processed during that month.




-- 18) Summarize the total payment amounts processed by each staff member in August 2005.




-- 19) A film historian wants to know how many actors are in each film. 
-- Provide film titles and the number of associated actors.




-- 20) Inventory is checking how many copies of “Hunchback Impossible” are in stock. 
-- Count the copies using film and inventory tables.




-- 21) Generate a report listing all payments by each customer, 
-- sorted alphabetically by last name.




-- 22) Provide the total amount paid by each customer, 
-- ordered alphabetically by last name.




-- 23) Find out which actor has appeared in the most films.




-- 24) Identify the most common actor last name in the database.




-- 25) List all actor last names and how many actors have each one.




-- 26) Identify which actor last names are used only once in the database.




-- 27) Find actor last names that are shared by more than one actor.



