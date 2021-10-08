insert into role(name) values('Generals');
insert into role(name) values('Secondary');
insert into users(name, role_id) values('Gomer', 1);
insert into users(name, role_id) values('Bart', 1);
insert into rules(name) values('Full access');
insert into rules(name) values('Limited access');
insert into role_rules(role_id, rules_id) values(1, 1);
insert into role_rules(role_id, rules_id) values(2, 2);
insert into category(name) values('First');
insert into category(name) values('Second');
insert into state(name) values('During');
insert into state(name) values('Completed');
insert into item(name, user_id, category_id, state_id) values('Item One', 1, 2, 1);
insert into comments(name, item_id) values('Do quickly', 1);
insert into comments(name, item_id) values('call the user', 1);
insert into attachs(name, item_id) values('path to file', 1);
insert into attachs(name, item_id) values('one more path to file', 1);

