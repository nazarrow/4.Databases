-- 1.Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

-- 2. Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values ('Alex'),
		('Alexander'),
		('Alexey'),
		('Alexius'),
		('Alexopulus'),
		('Alendr'),
		('Alker'),
		('Alexeras'),
		('Alemplo'),
		('Aleshkus'),
		('Bambino'),
		('Belko'),
		('Berlino'),
		('Benchi'),
		('Burkino`'),
		('Benjamin'),
		('Bonci'),
		('Bilkinus'),
		('Berti'),
		('Buks'),
		('Bambinio'),
		('Cerhio'),
		('Cerduchi'),
		('Citty'),
		('Celyan`'),
		('Cafi'),
		('Cachios'),
		('Ctepiko'),
		('Clano'),
		('Cert'),
		('Dima'),
		('Danil'),
		('Danko`'),
		('Danius'),
		('Den'),
		('Diskin'),
		('Iriskin'),
		('Intya'),
		('Inna'),
		('Izabella'),
		('Imp'),
		('Irra'),
		('Irga'),
		('Emp'),
		('Elena'),
		('Ench'),
		('Ella'),
		('Itra'),
		('Kamila'),
		('Konina'),
		('Konfety'),
		('Kusis'),
		('Zorina`'),
		('Svetlana'),
		('Serega'),
		('Serhio'),
		('Slych'),
		('Shima'),
		('Hero'),
		('Hanna'),
		('Helena'),
		('Mira'),
		('Miroslav'),
		('Nikita'),
		('Nik'),
		('Tolja'),
		('Temira'),
		('Tanja'),
		('Gena'),   
		('Tamara'),
		('Tihon'),
		('Kent');

select * from employees;	
	
-- 3.Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

-- 4.Наоплнить таблицу salary 15 строками:
insert into salary (monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

select * from salary;
	
-- 5.Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null 
);

select * from employee_salary;

-- 6.Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values (1, 15),
	(2, 14),
	(3, 13),
	(4, 12),
	(5, 11),
	(6, 10),
	(7, 9),
	(8, 8),
	(9, 7),
	(10, 6),
	(11, 5),
	(12, 4),
	(13, 3),
	(14, 2),
	(15, 1),
	(16, 15),
	(17, 14),
	(18, 13),
	(19, 12),
	(20, 11),
	(21, 10),
	(22, 9),
	(23, 8),
	(24, 7),
	(25, 6),
	(26, 5),
	(27, 4),
	(28, 3),
	(29, 2),
	(30, 1),
	(31, 15),
	(32, 14),
	(33, 13),
	(34, 12),
	(35, 11),
	(36, 10),
	(37, 9),
	(38, 8),
	(39, 7),
	(40, 6);
	
select * from employee_salary;

-- 7.Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
create table roles (
	id serial primary key,
	role_name int not null unique
);

select * from roles;

-- 8.Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

select * from roles;

-- 9.Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Desinger'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
select * from roles;

-- 10.Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id)
		references employees(id),
	role_id int not null,	
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

-- 11.Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (70, 1),
		(69, 2),
		(68, 3),
		(67, 4),
		(66, 5),
		(65, 6),
		(64, 7),
		(63, 8),
		(62, 9),
		(61, 10),
		(60, 11),
		(59, 12),
		(58, 13),
		(57, 14),
		(56, 15),
		(55, 16),
		(54, 17),
		(53, 18),
		(52, 19),
		(51, 20),
		(50, 1),
		(49, 2),
		(48, 3),
		(47, 4),
		(46, 5),
		(45, 6),
		(44, 7),
		(43, 8),
		(42, 9),
		(41, 10),
		(40, 11),
		(39, 12),
		(38, 13),
		(37, 14),
		(36, 15),
		(35, 16),
		(34, 17),
		(33, 18),
		(32, 19),
		(31, 20);
		
	select * from roles_employee;