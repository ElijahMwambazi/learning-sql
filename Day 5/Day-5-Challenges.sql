-- DAY 5
-- Challlenge Mathematical Functions
-- select * from film

/*
select
film_id,
round(((rental_rate / replacement_cost) * 100), 2) as percentage
from film
where round((rental_rate / (replacement_cost * 100)), 2) < 4
order by 2 desc
*/

-- Challenge CASE WHEN
-- select * from bookings

/*
select
count(*),
case
when total_amount < 20000 then 'Low Price ticket'
when total_amount between 20000 and 150000 then 'Mid Price ticket'
when total_amount >= 150000 then 'High Price ticket'
end as ticket_price
from bookings
group by ticket_price
order by ticket_price desc
*/

-- select * from film

/*
select
title,
case
when rating in ('PG', 'PG-13') or length > 210 then 'Great rating or very long'
when description like '%Drama%' and length > 90 then 'Long drama'
when description like '%Drama%' then 'Short drama'
when rental_rate < 1 then 'Very cheap (5)'
end as rating
from film
where
case
when rating in ('PG', 'PG-13') or length > 210 then 'Great rating or very long'
when description like '%Drama%' and length > 90 then 'Long drama'
when description like '%Drama%' then 'Short drama'
when rental_rate < 1 then 'Very cheap (5)'
end is not null
*/

-- Challenge COALESCE and CAST
-- select * from rental

/*
select
rental_date,
coalesce(cast(return_date as varchar), 'Not returned')
from rental
*/

-- select * from flights

/*
select
flight_no,
cast(replace(flight_no, 'PG', '') as int) as flight_no_without_pg
from flights
*/