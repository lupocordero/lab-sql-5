select *
from sakila.customer;

select * from staff;

select * from customer
where last_name = 'sanders';

insert into sakila.staff(first_name,last_name,address_id, store_id, username)
values ('Tammy', 'Sanders', 79, 2, 'Tammy');


select * from sakila.rental;

insert into sakila.rental(rental_date, inventory_id, customer_id, staff_id)
values (curdate(),2,130,1);  

select * from rental
where customer_id = 130;


select inventory_id from sakila.inventory
where film_id = 1;

select distinct inventory_id from inventory;

SELECT *
FROM sakila.inventory
WHERE film_id = 1 and store_id = 1;
select * from staff;

select * from customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

drop table if exists deleted_users;

select * from customer
where active = 0;

drop table if exists deleted_users;
CREATE TABLE deleted_users (
  `customer_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `email` text NOT NULL,
  `date` date NOT NULL,
  CONSTRAINT PRIMARY KEY (customer_id)
);

insert into sakila.deleted_users(customer_id, email, date)
	SELECT customer_id, email, curdate()
    FROM sakila.customer
    WHERE active = 0;
    
select * from deleted_users;

SET FOREIGN_KEY_CHECKS=0;

DELETE FROM sakila.customer WHERE customer.active = 0;

SET FOREIGN_KEY_CHECKS=1;

SELECT *
FROM sakila.customer
WHERE active = 0;







