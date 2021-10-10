create table devices(
    id serial primary key,
    name varchar(255),
    price float
);

create table people(
    id serial primary key,
    name varchar(255)
);

create table devices_people(
    id serial primary key,
    device_id int references devices(id),
    people_id int references people(id)
);

insert into devices(name, price) values('phone', 850.25), ('pk', 1300.50),
('headphones', 26.30), ('watch', 50.7);
insert into people(name) values('petr'), ('oleg'), ('vlad'), ('gleb');
insert into devices_people(people_id, device_id) values(1, 1), (1, 2), (2, 1), (2, 2), (2, 4), (3, 1), (4, 3);

select avg(devices.price) from devices;

select people.name, avg(devices.price)
from devices_people 
join people on devices_people.people_id = people.id
join devices on devices_people.device_id = devices.id
group by people.name;

select people.name, avg(devices.price)
from devices_people 
join people on devices_people.people_id = people.id
join devices on devices_people.device_id = devices.id
group by people.name
having avg(devices.price) > 5000;







