use hr_schema;

select max(salary) from employees;

select avg(salary),max(salary),min(salary),sum(salary)
from employees
where job_id like '%REP%';

select min(hire_date),max(hire_Date)
from employees;

select count(*) 
from employees;

select count(*)
from employees
where department_id=10;


select avg(ifnull(commission_pct,0))
from employees;


select department_id,avg(salary)
from employees
group by department_id;


select department_id,job_id,sum(salary)
from employees
group by department_id,job_id;



select department_id,job_id,sum(salary)
from employees
where department_id >40
group by department_id,job_id
order by department_id;


select department_id,job_id,sum(salary)
from employees
group by department_id,job_id with rollup;


select department_id,max(salary)
from employees
group by department_id
having max(salary)>10000;


/*select max(avg(salary))
from employees;*/
