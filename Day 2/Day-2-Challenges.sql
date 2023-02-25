-- DAY 2
-- Challenge WHERE
-- select * from payment;
-- select count(amount) from payment where customer_id = 100;

-- select * from customer;
-- select first_name, last_name from customer where first_name = 'ERICA';

-- Challenge WHERE Operator
-- select * from rental;
-- select count(*) from rental where return_date is null;

-- select * from payment;
-- select payment_id, amount from payment where amount <= 2;

-- Challenge ANDOR
-- select * from payment;
-- select * from payment where (customer_id = 322 or customer_id = 346 or customer_id = 354) and (amount < 2 or amount > 10) order by customer_id asc
-- select * from payment where (customer_id = 322 or customer_id = 346 or customer_id = 354) and (amount < 2 or amount > 10) order by customer_id desc

-- Challenge BETWEEN
-- select * from payment
-- select count(*) from payment where (payment_date between '2020-01-26' and '2020-01-28') and (amount between 1.99 and 3.99)

-- Challenge IN
-- select * from payment
-- select * from payment where customer_id in (12,25,67,93,124,234) and amount in (4.99,7.99,9.99) and payment_date between '2020-01-01' and '2020-02-01'

-- Challenge LIKE
-- select * from film
-- select count(*) from film where description like '%Documentary%'

-- select * from customer
-- select count(*) from customer where first_name like '___' and (last_name like '%X' or last_name like '%Y')

-- End of day Challenges
-- Challenge 1
-- select * from film
-- select count(*) as no_of_movies from film where description like '%Saga%' and (title like 'A%' or title like '%R')

-- Challenge 2
-- select * from customer
-- select * from customer where first_name like '%ER%' and first_name like '_A%' order by last_name desc

-- Challenge 3
-- select * from payment
-- select count(*) from payment where (amount = 0 or (amount between 3.99 and 7.99)) and (payment_date between '2020-05-01' and '2020-05-02')