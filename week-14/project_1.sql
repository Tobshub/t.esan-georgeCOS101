\c globacom_dbase;

create table customers(
  customer_id int primary key not null,
  name text not null,
  age int not null,
  email text not null,
  mobile char(15) not null,
  employee_id int not null,
  data_id int not null
);

insert into customers
values
(110, 'Musta Karim', 35, 'm_karim@gmail.com', '08055089112', 102, 5),
(111, 'Lilian Jaiya', 43, 'l_jaiye@gmail.com', '08055185341', 100, 3),
(112, 'Arthur Musa', 50, 'a_musa@gmail.com', '07055282813', 107, 10),
(113, 'Philip Akonjo', 41, 'p_akonjo@gmail.com', '08055282813', 100, 2),
(114, 'Marylene Mapa', 33, 'm_mapa@gmail.com', '08053333551', 120, 5),
(115, 'Oghenero Agor', 50, 'o_agor@gmail.com', '07055566774', 117, 11),
(116, 'Adams Bree', 33, 'a_bree@gmail.com', '08055282813', 102, 1),
(117, 'Okafor Mathias', 45, 'o_mathias@gmail.com', '08055282814', 120, 10),
(118, 'Adams Bree', 33, 'a_bree@gmail.com', '08055282815', 117, 11),
(119, 'Adams Bree', 33, 'a_bree@gmail.com', '08055282816', 107, 5),
(120, 'Adams Bree', 33, 'a_bree@gmail.com', '08055282818', 100, 8),
(121, 'Adams Bree', 33, 'a_bree@gmail.com', '08055282819', 120, 2),
(122, 'Adams Bree', 33, 'a_bree@gmail.com', '08055282820', 107, 5);

create table data_plan(
  data_id int primary key not null,
  data_size text not null,
  duration int not null,
  price real not null
);

insert into data_plan
values
(1, '350MB', 2, 200),
(2, '1.8GB', 14, 500),
(3, '3.9GB', 30, 1000),
(4, '7.5GB', 30, 1500),
(5, '9.2GB', 30, 2000),
(6, '10.8GB', 30, 2500),
(7, '14GB', 30, 3000),
(8, '18GB', 30, 4000),
(9, '24GB', 30, 5000),
(10, '29.9GB', 30, 8000),
(11, '50GB', 30, 10_000);
