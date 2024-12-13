use hr;

select * from employees;

describe employees;

select first_name,last_name from employees;

select 
    first_name as 'FirstName', last_name as 'LastName'
from
    employees;

select * from employees order by salary asc,first_name desc;

select employee_id,commission_pct from employees order by commission_pct asc;

select employee_id,commission_pct from employees order by commission_pct desc;

select distinct(department_id) from employees;

select * from employees where job_id='SA_REP';

select employee_id,last_name,job_id,department_id 
from employees
where department_id=90;

select first_name,last_name,hire_date from employees where hire_date='1991-05-21';

select last_name,salary
from employees
where salary<=10000;

select last_name,salary
from employees
where salary between 3200 and 3500;

select first_name,last_name
from employees
where department_id in (10,20,30);


select first_name,last_name
from employees
where first_name like 'S%';

select first_name,last_name
from employees
where first_name like '%n';


select first_name,last_name
from employees
where first_name like '_e%';

select first_name,last_name
from employees
where commission_pct is null;

select first_name,last_name,salary,job_id
from employees
where salary>=10000
and job_id like '%MAN%';

select first_name,last_name,salary,job_id
from employees
where salary>=10000
or job_id like '%MAN%';

select first_name,last_name,job_id
from employees
where job_id not in('IT_PROG','ST_CLERK','SA_REP');


select salary+300 as "Incremented Salary" from employees;


select first_name,last_name,job_id,salary
from employees
where job_id='SA_REP'
or job_id='AD_PRES'
and salary>15000;

select first_name,last_name,job_id,salary
from employees
where (job_id='SA_REP'
or job_id='AD_PRES')
and salary>5000;

select * from employees limit 5;

select * from employees limit 5,4;

select current_date() from dual;

select upper('sabbir') as "upper" from dual;