-- Select clause
Select *
from customer;
Select * from sakila.actor;


-- Where clause
Select * from sakila.actor where first_name="nick";


-- Like
select * 
from sakila.film 
where title like'%a' and title like 'a%';


-- Group BY
select first_name,min(actor_id)
from actor 
group by first_name;


-- Order by
select * from customer
order by store_id asc;


-- having clause
SELECT store_id, AVG(store_id) AS avg_store
FROM customer
GROUP BY store_id
HAVING store_id > 0;


-- limit and aliasing
select * 
from actor limit 1,2;


-- JOINS

-- INNER JOIN
select * 
from address
inner join customer
on address.address_id=customer.address_id;

-- OUTER JOIN
select *
from address
left join customer
on address.address_id=customer.address_id;
 
 select *
from address
right join customer
on address.address_id=customer.address_id;

-- self join
select * 
from actor as e1
join actor as e2
on e1.actor_id=e2.actor_id ;

-- cross join
select *
from actor
cross join customer;


