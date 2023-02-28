-- DAY 6
-- Challenge INNER JOIN
/*
select
fare_conditions,
count(*)
from boarding_passes as b
inner join seats as s
on b.seat_no = s.seat_no
group by fare_conditions
*/

-- Challenge FULL OUTER JOIN
/*
select
*
from boarding_passes as b
full outer join tickets as t
on b.ticket_no = t.ticket_no
where b.ticket_no is not null and t.ticket_no is not null
*/

-- Challenge LEFT OUTER JOIN
/*
select
*
from aircrafts_data as a
left join flights as f
on f.aircraft_code = a.aircraft_code
where f.flight_id is null
*/

/*
select
right(s.seat_no,1),
count(*)
from boarding_passes as b
left join seats as s
on b.seat_no = s.seat_no
group by right(s.seat_no,1)
order by count(*) desc
*/

-- Challenge Joins
-- select * from customer
-- select * from address

/*
select
first_name,
last_name,
phone,
district
from customer as c
left join address as a
on c.address = a.address
where district = 'Texas'
*/

/*
select
*
from customer as c
right join address as a
on c.address_id = a.address_id
where c.customer_id is null
*/

-- Challenge Multiple Joins (columns)
-- select * from boarding_passes
-- select * from ticket_flights

/*
select
seat_no,
round(avg(amount),2)
from boarding_passes as b
left join ticket_flights as t
on b.ticket_no = t.ticket_no
and b.flight_id = t.flight_id
order by 2
*/

-- Challenge Multiple Joins (tables)
-- select * from ticket_flights
-- select * from flights
-- select * from tickets
/*
select
*
from ticket_flights as tf
inner join flights as f
on tf.flight_id = f.flight_id
inner join tickets as t
on tf.ticket_no = t.ticket_no
*/

-- select * from customer
-- select * from address
-- select * from city

/*
select
first_name,
last_name,
email,
co.country
from customer as cu
left join address as ad
on cu.address_id = ad.address_id
left join city as ci
on ad.city_id = ci.city_id
left join country as co
on ci.country_id = co.country_id
where co.country = 'Brazil'
*/