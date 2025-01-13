\c mtnnigeria_db;

create table employees(
  id int primary key not null,
  name text not null,
  department_no int not null,
  salary real not null,
  age int not null,
  phone char(14)
);

create table departments(
  department_no int primary key not null,
  manager_id int not null,
  name text not null,
  location char(50) not null,
  project_no int not null
);

create table projects(
  project_no int primary key not null,
  name char(5) not null,
  duration int,
  manager_id int not null
);

insert into employees 
values
  (101, 'Alade Joy', 2, 250_000, 33, '08012345670'),
  (100, 'Mustapha Ali', 3, 175_000, 32, '08012345671'),
  (107, 'Alokwe Martin', 7, 380_000, 48, '08012345672'),
  (97,  'Dankade Aminat', 5, 550_000, 40, '08012345673'),
  (108, 'Josiah Joshua', 1, 120_000, 30, '08012345674'),
  (102, 'Mankinde Mary', 2, 450_000, 55, '08012345675'),
  (120, 'Adeleke Jane', 4, 200_000, 38, '08012345676'),
  (122, 'Osahon Mark', 6, 320_000, 44, '08012345677'),
  (117, 'Suleman Ajayi', 3, 800_000, 50, '08012345678'),
  (104, 'Kuti Lawal', 1, 750_000, 35, '08012345679');

insert into departments  
values 
  (1, 108, 'Administration', 'Ikeja', 44),
  (2, 101, 'Account', 'Egbeda', 11),
  (3, 100, 'Packaging', 'Ajah', 44),
  (4, 120, 'Research', 'V.I', 33),
  (5, 97, 'Account', 'Magodo', 22),
  (6, 122, 'Operations', 'Mile 2', 44),
  (7, 107, 'Packaging', 'Ketu', 55);

insert into projects
values 
  (11, 'A', 9, 102),
  (22, 'B', 14, 97),
  (33, 'C', 16, 120),
  (44, 'D', 25, 108),
  (55, 'E', 9, 107);
