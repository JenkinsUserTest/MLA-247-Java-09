use hr;

select * from locations;

insert into departments(department_id,department_name,manager_id,location_id) 
values(1001,'Fake Department',101,2200);

select * from departments where department_id=1001;

insert into departments(department_id,department_name,manager_id,location_id)
values
(1002,'Some Department',101,2200),
(1003,'Other Department',101,2200);

select * from departments where department_id in(1002,1003);


select * from employees;

insert into employees values(999,'sabbir','poonawala','sabbirp@xyz.com','33-09-221','2019-11-21'
,'IT_PROG',34000,0.2,101,10);


insert into employees values(1002,'amit','patel','amitp@xyz.com','7889-9887',current_date()
,'IT_PROG',34000,0.2,101,10);

select * from employees where employee_id=1002;


insert into employees 
values(1003,'amit','patel','amitp@xyz.com','7889-9887',current_date()
,'IT_PROG',34000,0.2,101,10),
(1004,'chirag','desai','chiragdesai@xyz.com','7889-9887',current_date()
,'IT_PROG',34000,0.2,101,10);

select * from employees where employee_id=1003;

describe employees;

create table student(rollNo int primary key,email varchar(40) NOT NULL UNIQUE);

insert into student values(1001,'sabbirp@xyz.com');

insert ignore into student values
(1002,'sabbirp@xyz.com'),
(1003,'chiragd@xyz.com');

select * from student;

create table courses(courseId int primary key,courseName varchar(40) not null default 'No Course specified');

insert ignore into courses(courseId)
values(1);

select * from courses;


create table student_enrollment_info(roll_no int primary key,
student_name varchar(40),
enrollment_date date default '2021-10-25');


insert into student_enrollment_info(roll_no,student_name) values(1001,'sabbir');

select * from student_enrollment_info;


create table student_enrollment_info1(roll_no int primary key,
student_name varchar(40),
enrollment_date timestamp default now());


insert into student_enrollment_info1(roll_no,student_name) values(1001,'sabbir');

select * from student_enrollment_info1;

select current_date from dual;