use hr;
delete from employees
where employee_id=1001;

select * from employees where employee_id=1001;

select * from employees;

delete from employees
where employee_id>201
order by employee_id desc
limit 5;

delete  from departments
where department_id=10;
