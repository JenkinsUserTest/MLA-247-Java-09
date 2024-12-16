use hr_schema;
create table if not exists tasks(
task_id int AUTO_INCREMENT primary key,
title varchar(255) NOT NULL,
start_date date,
due_date date,
status TINYINT not null,
priority TINYINT not null,
description TEXT,
created timestamp DEFAULT now()
)ENGINE=INNODB;

describe tasks;


create table IF NOT EXISTS checklists(
todo_id int auto_increment,
task_id int,
todo varchar(255) not null,
isCompleted boolean not null default false,
primary key(todo_id,task_id),
foreign key(task_id)
references tasks(task_id)
ON DELETE CASCADE
)ENGINE=INNODB;

create table sampleTable(
sr_no int AUTO_INCREMENT primary key,
first_name varchar(40)
);

select last_insert_id();


insert into sampleTable(first_name) values('sabbir');

select * from sampleTable;

insert into sampleTable(sr_no,first_name) values(5,'amit');

select * from sampleTable;

insert into sampleTable(first_name) values('rohit');

select last_insert_id();

select max(sr_no) from sampleTable;

select count(*) from sampleTable;

alter table sampleTable add last_name varchar(40);

describe sampleTable;

select * from sampleTable;

alter table sampleTable add salary double,add email varchar(40);

describe sampleTable;

alter table sampleTable modify salary int;

describe sampleTable;

alter table sampleTable change column first_name FirstName varchar(40);

describe sampleTable;

alter table sampleTable drop column email;

describe sampleTable;

alter table sampleTable rename to sample_table;

select * from sample_table;

drop table sample_table;

describe sample_table;


create temporary table temp1(
sr_no int primary key,
first_name varchar(40)
);

insert into temp1 values(1,'sabbir');

select * from temp1;

create temporary table employees_temp
select * from employees;

select * from employees_temp;


create temporary table employee_temp_no_rows
select * from employees
limit 0;


select * from employee_temp_no_rows;

create temporary table top_five_salary_earner
select * from employees
order by salary desc
limit 5;

select * from top_five_salary_earner;

drop temporary table employee_temp_no_rows;


create table student_info(
sr_no int primary key,
student_name varchar(40) not null
);

insert into student_info values(1,'sabbir');

truncate table student_info;

describe student_info;




create table student_info1(
sr_no int primary key,
student_name varchar(40) not null
);
insert into student_info1 values(1,'sabbir');

drop table student_info1;

describe student_info1;
/*
create table student_details(
roll_no int primary key,
first_name varchar(40),
last_name varchar(40),
full_name varchar(60) GENERATED ALWAYS as (CONCAT(first_name,' ',last_name))
);
*/

create table dept_info(
dept_id int primary key,
dept_name varchar(40)

);

create table emp_info(
emp_id int,
emp_name varchar(40),
emp_salary double,
emp_email varchar(40),
emp_designation varchar(40),
dept_id int
);


alter table emp_info add primary key(emp_id);


describe emp_info;

alter table emp_info add foreign key(dept_id) references dept_info(dept_id);

describe emp_info;

alter table emp_info add unique(emp_email);

alter table emp_info modify emp_name varchar(40) not null;
/*version higher than 8.0 only*/
alter table emp_info add check(emp_salary>0.0);


describe emp_info;

alter table emp_info modify emp_designation varchar(40) not null;

insert into dept_info values(10,'IT');
insert into emp_info values(109,null,4500,'a@pyz.com','Trainer',10);

insert into emp_info values(108,'sabbir',0,'a@kpz.com','Trainer',10);

select * from emp_info;

describe emp_info;

create view emp_infoview as
select
emp_id,emp_name,emp_salary,emp_email,emp_designation,dept_id
from emp_info
where
emp_salary>0
with check option;

insert into emp_infoview values(1001,'rakesh',2000,'a@j.com','trainer',10);

select * from emp_info;

create table emp_info1(
emp_id int,
emp_name varchar(40) not null,
emp_salary double,
emp_email varchar(40),
emp_designation varchar(40),
dept_id int,
constraint pk primary key(emp_id),
constraint fk foreign key(dept_id) references dept_info(dept_id),
constraint ck check(emp_salary>0),
constraint uk unique(emp_email)
);



create view salaryInfo as
select salary as "SALARY",commission_pct as "COMMISSION" from employees;

select * from salaryInfo;

select * from employees;

create view contactInfo as
select phone_number as "ph_no",email as "email" from employees;

select * from salaryInfo;

select * from contactInfo;
