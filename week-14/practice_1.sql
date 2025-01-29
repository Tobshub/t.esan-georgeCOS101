alter database mtnnigeria_db rename to globacom_dbase;

\c globacom_dbase;

alter table employees rename to staff;

alter table staff rename column phone to mobile;

alter table staff rename column id to staff_id;

alter table staff rename column name to staff_name;

alter table staff rename column salary to staff_sal;

alter table staff alter column mobile type varchar(15);

alter table staff add column gender varchar(1);

alter table staff alter column mobile drop not null;

alter table staff alter column mobile set not null;

alter table staff drop column gender;

select staff_id, staff_name, staff_sal from staff;

select * from staff where staff_sal = 120_000;

select * from staff where age > 40;

select * from staff where age > 40 and staff_sal > 400_000;

select * from staff where age > 40 or staff_sal > 400_000;

select * from staff where age is not null;

select * from staff where staff_name like 'Al%';

select * from staff where age in (30, 35, 40);

select * from staff where age not in (30, 35);

select * from staff where age between 33 and 44;

select * from staff;

update staff set mobile = '07030089981' where staff_id = 117;

select s.staff_id, s.staff_name, d.department_no, d.name from staff s, departments d;

select s.staff_id, s.staff_name, d.department_no, d.name from staff s, departments d where d.name = 'Operations';

select s.staff_id, s.staff_name, d.location, p.project_no, p.name from departments d, projects p, staff s where p.name = 'C' and d.department_no = '1';

delete from staff where staff_name = 'Alade Joy';
