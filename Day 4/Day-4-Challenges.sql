-- DAY 2
-- Challenge LENGTH, UPPER and LOWER
-- select * from customer

/*
select
lower(first_name) as first_name,
lower(last_name) as last_name,
email
from customer
where length(first_name) > 10 or length(last_name) > 10
*/

-- Challenge LEFT and Right
-- select * from customer

/*
select
right(email, 5) as last_five,
left(right(email, 4),1) as dot,
email
from customer
*/

-- Challenge Concatenate
-- select * from customer

/*
select
email,
left(email, 1)
|| '***' ||
right(email, 19)
from customer
*/

-- Challenge POSITION
-- select * from customer

/*
select
email,
left(email, position(last_name in email) -2)
||', '||
last_name
from customer
*/

-- Challenge SUBSTRING
-- select * from customer

/*
select
email,
left(email, 1)||
'***' ||
substring(email from position('.' in email) for 2)||
'***' ||
substring(email from position('@' in email)) as encoded_email_1,
'***' ||
substring(email from position('.' in email)-1 for 2) ||
substring(email from position('.' in email)+1 for 1)||
'***' ||
substring(email from position('@' in email)) as encoded_email_2
from customer
*/

-- Challenge EXTRACT
-- select * from payment

/*
select
extract(month from payment_date) as month,
sum(amount) as amount
from payment
group by extract(month from payment_date)
order by sum(amount) desc
*/

/*
select
extract(day from payment_date) as day,
sum(amount) as amount
from payment
group by extract(day from payment_date)
order by sum(amount) desc
*/

/*
select
customer_id,
extract(week from payment_date) as week,
sum(amount) as amount
from payment
group by extract(week from payment_date), customer_id
order by sum(amount) desc
*/

-- Challenge TO_CHAR
-- select * from payment

/*
select
sum(amount),
to_char(payment_date, 'Dy, dd/mm/yyyy') as day
from payment
group by to_char(payment_date, 'Dy, dd/mm/yyyy')
*/

/*
select
sum(amount),
to_char(payment_date, 'Mon, yyyy') as day
from payment
group by to_char(payment_date, 'Mon, yyyy')
*/

/*
select
sum(amount),
to_char(payment_date, 'Dy, hh:mm') as day
from payment
group by to_char(payment_date, 'Dy, hh:mm')
*/

-- Challenge Interval and Timestamps
-- select * from rental

/*
select
customer_id,
(return_date - rental_date) as rental_duration
from rental
where customer_id = 35
*/

/*
select
customer_id,
avg(return_date - rental_date) as average_rental_duration
from rental
group by customer_id
order by avg(return_date - rental_date) desc
*/
