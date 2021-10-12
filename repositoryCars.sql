create table body
(
    id serial primary key,
    name text
);

create table engine
(
    id serial primary key,
    name text
);

create table transmission
(
    id serial primary key,
    name text
);

create table car(
	id serial primary key,
	name text,
	body_id int references body(id) not null,
	engine_id int references engine(id) not null,
	trans_id int references transmission(id) not null
);

insert into body(name) values('sedan'),('picap');
insert into body(name) values('hatchback');
insert into transmission(name) values('auto'),('manual');
insert into engine(name) values('dizel'),('patrol');
insert into car(name, body_id, engine_id, trans_id) values('chr', 1, 2, 2), ('rav',2,2,2), ('tundra',2,1,2);

select car.name as название, body.name as кузов, engine.name as двигатель, transmission.name as трансмиссия from car
join body on car.body_id = body.id
join engine on car.engine_id = engine.id
join transmission on car.trans_id = transmission.id;

select * from body
left join car on body.id = car.body_id where car.id is null;

select * from engine
left join car on engine.id = car.engine_id where car.id is null;

select * from transmission
left join car on transmission.id = car.trans_id where car.id is null;
