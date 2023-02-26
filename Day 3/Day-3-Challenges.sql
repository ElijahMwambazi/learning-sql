-- DAY 2
-- Challenge Aggregate Functions
-- select * from film
/*
select
min(replacement_cost) as minimum_replacement_cost,
max(replacement_cost) as maximum_replacement_cost,
round(avg(replacement_cost), 2) as replacement_cost_average,
sum(replacement_cost) as replacement_cost_total
from film
*/

-- Challenge GROUP BY
-- select * from payment
/*
select
staff_id,
count(staff_id) as number_of_payments
from payment
group by staff_id
*/

/*
select
staff_id,
sum(amount) as total_amount
from payment
group by staff_id
*/

/*
select
staff_id,
count(staff_id) as number_of_payments
from payment
where amount > 0
group by staff_id
*/

-- Challenge GROUP BY Multiple
-- select * from payment
/*
select
staff_id,
date(payment_date),
sum(amount) as amount
from payment
group by staff_id, date(payment_date)
order by date(payment_date), sum(amount) desc
*/

/*
select
staff_id,
date(payment_date),
count(amount) as number_of_payments
from payment
where amount > 0
group by staff_id, date(payment_date)
order by date(payment_date) desc
*/

-- Challenge HAVING
-- select * from payment

/*
select
customer_id,
date(payment_date),
round(avg(amount), 2) as avgage_amount,
count(*)
from payment
where date(payment_date) in ('2020-04-28', '2020-04-29', '2020-04-30')
group by customer_id, date(payment_date)
having count(*) > 1
order by 3 desc
*/