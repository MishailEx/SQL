select * from product where type_id = 1;

select * from product where name like '%мороженное%';

select * from product where expired_date < current_date;

select * from product order by price desc limit 1;

select type.name, count(type.id) from product inner join type on product.type_id = type.id
group by type.name;

select * from product where type_id = 1 or type_id = 3;

select type.name, count(type.id)
from product
inner join type on product.type_id = type.id
group by type.name
having count(type.id) < 10;

select product.name, type.name from product inner join type on product.type_id = type.id;



