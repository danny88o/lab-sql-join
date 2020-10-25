-- Lab 1
use sakila;

-- Task 1
select  fcat.category_id, count(i.film_id)
from inventory i
join film_category fcat on fcat.film_id = i.film_id
group by fcat.category_id;

-- Task 2
select concat(s.first_name, " ", s.last_name) as "Name", a.address as "Address"
from staff s
join address a on a.address_id = s.address_id;

-- Task 3
select concat(s.first_name, " ", s.last_name) as Name, sum(p.amount) as "Total rung up"
from rental r
join payment p on p.staff_id = r.staff_id
right join staff s on s.staff_id = r.staff_id
group by Name;

-- Task 4
select title, count(fa.actor_id) as "Number of actors"
from film f
right join film_actor fa on fa.film_id = f.film_id 
group by f.film_id;

-- Task 5

select c.customer_id 
from customer
join 