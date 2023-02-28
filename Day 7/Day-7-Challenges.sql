-- DAY 7
-- Challenge UNION
/*
select first_name from customer
union
select first_name from actor
*/

-- Challenge Subqueries in WHERE
-- select * from film

/*
select
*
from film
where length > (select avg(length) from film)
*/

-- select * from inventory

/*
select
*
from film
where film_id
in (select
	film_id
	from inventory
	where store_id=2
   group by film_id
   having count(*) > 3)
*/

-- select * from payment
-- select * from customer

/*
select
first_name,
last_name
from customer
where customer_id in (select
					 customer_id
					 from payment
					 where date(payment_date) = '2020-01-25')
*/

/*
select
first_name,
email
from customer
where customer_id in (select
					 customer_id
					 from payment
					 group by customer_id
					 having sum(amount) > 30)
*/

-- select * from address
/*
select
first_name,
email
from customer
where customer_id in (select
					 customer_id
					 from payment
					 group by customer_id
					 having sum(amount) > 100)
and
customer_id
in (select
   customer_id
   from customer
   inner join address
   on customer.address_id = address.address_id
   where district = 'California')
*/

-- Challenge Subqueries in From
-- select * from payment

/*
select
round(avg(daily_amount),2)
from
(select
sum(amount) as daily_amount,
date(payment_date)
from payment
group by date(payment_date)) as subquery
*/


-- Challenge Subqueries in SELECT
/*
select
*,
(select max(amount) from payment) - amount as difference
from payment
*/

-- Challenge Correlated Subqueries in WHERE
-- select * from film
/*
select
title,
film_id,
replacement_cost,
rating
from film f1
where replacement_cost
=
(select
min(replacement_cost)
from film f2
where f1.rating = f2.rating)
*/
/*
select
title,
film_id,
length,
rating
from film f1
where length
=
(select
max(length)
from film f2
where f1.rating = f2.rating)
*/

-- Challenge Correlated Subqueries in SELECT
/*
select
payment_id,
customer_id,
staff_id,
amount,
(select sum(amount) from payment as p2
where p1.customer_id = p2.customer_id),
(select count(amount) as payments_count
from payment as p3
where p1.customer_id = p3.customer_id)
from payment as p1
*/