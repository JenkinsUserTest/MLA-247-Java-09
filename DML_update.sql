use hr_schema;
select * from employees;

update employees
set email='chiragdesai@hotmail.com'
where employee_id=1004;

select email 
from employees
where employee_id=1004;

update employees
set email='chiragdesai@outlook.com',
    salary=34000
where employee_id=1004;

select email,salary
from employees
where employee_id=1004;

update employees
set email='chiragdesai@outlook.com',
    salary=89000
where employee_id=1004;


create table subject(subject_id int primary key,subject_name varchar(40) not null unique,subject_fees double);

insert into subject values(102,'Java',56000);

update ignore subject
set subject_name='C++',
    subject_fees=95000
where subject_id=102;


select * from subject; 
select * from student;


use test;
create table courses(
course_id varchar(40) primary key,
course_name varchar(40),
course_fees double
);


CREATE TABLE STUDENTS(
roll_no int primary key,
student_name varchar(40) not null,
course_id varchar(40),
fees double,
foreign key (course_id)
references courses(course_id)
on delete cascade
);

insert into courses values('C001','Java',45000);

insert into students(roll_no,student_name,course_id) values(1001,'sabbir','C001');

select * from students;

update students
set fees=(select course_fees from courses where course_id='C001')
where roll_no=1001;

select * from students;

use hr_schema;
select * from employees where department_id is not null;
update employees
inner join
departments
on employees.department_id=departments.department_id
set
salary=salary+200
where employee_id=100;

select salary from employees where employee_id=100;