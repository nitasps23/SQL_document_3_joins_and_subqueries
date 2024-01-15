
-- Week 5 - Wednesday Questions

-- 1. List all customers who live in Texas (use JOINs)
select *
from customer c
	inner join address a 
	on c.address_id = a.address_id
where a.district  = 'Texas';


-- 2. Get all payments above $6.99 with the Customer's Full Name
select concat(c.last_name, ', ', c.first_name) as cust_full_name, p.amount
from payment p 
	left outer join customer c 
	on p.customer_id = c.customer_id 
where p.amount > 6.99;


-- 3. Show all customers names who have made payments over $175(use subqueries)
select c.first_name, c.last_name, sum(p.amount)
from customer as c
	inner join payment p
	on c.customer_id = p.customer_id
group by c.first_name, c.last_name
having sum(p.amount) > 175;

-- use subqueries
select c.first_name, c.last_name, sum(p.amount)
from customer as c
	inner join payment as p
    on c.customer_id = p.customer_id
where 175 <
	(select sum(amount) 
	from payment p
	where p.customer_id = c.customer_id)
group by c.first_name, c.last_name;

-- 4. List all customers that live in Nepal (use the city table)
select *
from customer c
	inner join address a 
	on c.address_id = a.address_id 
	inner join city ct
	on a.city_id = ct.city_id 
	inner join country cnt
	on ct.country_id = cnt.country_id 
where cnt.country = 'Nepal';


-- 5. Which staff member had the most transactions? 
select staff_id, count(*)
from payment p 
group by staff_id
order by count(*) desc;

-- using joins
select s.staff_id, s.first_name, s.last_name, count(*) total_transactions
from payment p 
	inner join staff s 
	on p.staff_id = s.staff_id 
group by s.staff_id, s.first_name, s.last_name
order by count(*) desc;
	

-- 6. How many movies of each rating are there?
select rating, count(*) as num_of_movies
from film f 
group by rating 
order by count(*) desc;


-- 7. Show all customers who have made a single payment above $6.99 (Use Subqueries)
select *
from customer
where customer_id in 
	(select distinct(customer_id)
	from payment
    where amount > 6.99);

-- 8. How many free rentals did our stores give away?
select count(*) as num_free_rental
from customer
where customer_id in
	(select customer_id
    from payment
    where amount = 0);