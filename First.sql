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


-- String functions

-- length
select first_name, length(first_name) as len
from customer;

-- upper and lower
select first_name,upper(first_name) as uppercase
from customer;
select first_name,lower(first_name) as lowercase
from customer;

-- TRim
 select first_name, rtrim(first_name) as trimmed
 from customer;
 SELECT TRIM('   SQL is fun   ') AS trimmed;
 
 -- left,right
 select first_name, left(first_name,3) as top3
 from customer;
 
-- Substring
select first_name,substring(first_name,2,3) as ss
from customer;

-- Replace
select first_name,replace(first_name,'A','z')
from customer;

-- locate
select locate( 'R',BINARY 'SherrrRrr');

-- case statement
SELECT *, 
  CASE 
    WHEN amount > 5 THEN 'expensive'
    WHEN amount <= 5 THEN 'cheap'
  END AS sher
FROM payment;


-- Subqueries





  

