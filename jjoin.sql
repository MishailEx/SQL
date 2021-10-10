select d.name, e.name from departments as d left join emploers as e on e.dep_id = d.id where e.id is null;

select * from emploers e left join departments d on e.dep_id = d.id;
select * from departments d right join emploers e on e.dep_id = d.id;

select * from emploers e full join departments d on e.dep_id = d.id;

select * from emploers e cross join departments d;


