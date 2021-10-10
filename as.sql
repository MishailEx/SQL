create table Cat(
	id serial primary key,
	name varchar(255)
);

create table person(
	id serial primary key,
	name varchar(255),
	cat_id int references cat(id)
);

insert into cat(name) values('murka');
insert into cat(name) values('vasia');
insert into cat(name) values('lisa');
insert into person(name, cat_id) values('Oleg', 1);
insert into person(name, cat_id) values('Misha', 2);
insert into person(name) values('Pol');

select p.name, c.name from person as p join cat as c on p.cat_id = c.id;
select p.name, c.name from person as p join cat as c on p.cat_id = c.id and c.name = 'vasia';
select p.name as Имя, c.name as Кличка from person as p join cat as c on p.cat_id = c.id;