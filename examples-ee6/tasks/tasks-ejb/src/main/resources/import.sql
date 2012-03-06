insert into User (username, password, admin) values ('demo', 'demo', false)
insert into User (username, password, admin) values ('admin', 'password', true)

insert into Category (id, name, owner_username) values (1, 'School', 'demo')
insert into Task (id, name, resolved, created, updated, category_id) values (2, 'Build the Turing machine', false, '2009-04-19 16:11:05', null, 1)
insert into Task (id, name, resolved, created, updated, category_id) values (3, 'Finish the RESTEasy-Seam integration example', false, '2009-04-19 16:11:05', null, 1)
insert into Task (id, name, resolved, created, updated, category_id) values (4, 'Learn new vocab for English conversations', false, '2009-04-19 16:11:05', null, 1)
insert into Task (id, name, resolved, created, updated, category_id) values (5, 'Prepare a presentation for webdesign seminar', false, '2009-04-19 16:11:05', null, 1)

insert into Category (id, name, owner_username) values (2, 'Work', 'demo')
insert into Task (id, name, resolved, created, updated, category_id) values (6, 'Pick up meal tickets', false, '2009-04-19 16:11:05', null, 2)

insert into Category (id, name, owner_username) values (3, 'Buy', 'demo')
insert into Task (id, name, resolved, created, updated, category_id) values (7, 'Buy milk', false, '2009-04-19 16:11:05', null, 3)
insert into Task (id, name, resolved, created, updated, category_id) values (8, 'Buy an infinite tape', false, '2009-04-19 16:11:05', null, 3)
insert into Task (id, name, resolved, created, updated, category_id) values (9, 'Order books', false, '2009-04-19 16:11:05', null, 3)
insert into Task (id, name, resolved, created, updated, category_id) values (10, 'Buy a turtle', true, '2009-04-19 16:11:05', '2009-04-22 13:15:33', 3)

insert into Category (id, name, owner_username) values (4, 'Other stuff', 'demo')
insert into Task (id, name, resolved, created, updated, category_id) values (11, 'Learn to fly', false, '2009-04-19 16:11:05', null, 4)
insert into Task (id, name, resolved, created, updated, category_id) values (12, 'Visit grandma', false, '2009-04-19 16:11:05', null, 4)
insert into Task (id, name, resolved, created, updated, category_id) values (13, 'Extend passport', false, '2009-04-19 16:11:05', null, 4)
insert into Task (id, name, resolved, created, updated, category_id) values (14, 'Get a haircut', false, '2009-04-19 16:11:05', null, 4)

insert into Category (id, name, owner_username) values (5, 'Administration', 'admin')
insert into Task (id, name, resolved, created, updated, category_id) values (15, 'Ban demo user :-)', false, '2009-05-04 12:35:13', null, 5)
