/* natural join */
use hr_schema;
select employee_id,first_name,last_name,department_id,department_name
from employees
natural join
departments;

select employee_id,last_name,location_id,department_id
from employees join departments
using(department_id);

select employee_id,last_name,e.department_id,department_name
from employees e
inner join departments d
on e.department_id=d.department_id;


select employee_id,city,department_name
from employees e
join departments d
on e.department_id=d.department_id
join locations l
on d.location_id=l.location_id;


select employee_id,department_name
from employees e
join departments d
on (e.department_id=d.department_id)
and e.manager_id=149;

select e.last_name,e.department_id,d.department_name
from employees e
left outer join
departments d
on(e.department_id=d.department_id);


select e.last_name,d.department_id,d.department_name
from employees e
right outer join
departments d
on(e.department_id=d.department_id);



select e.last_name,e.department_id,d.department_name
from employees e
left outer join
departments d
on(e.department_id=d.department_id)
union
select e.last_name,d.department_id,d.department_name
from employees e
right outer join
departments d
on(e.department_id=d.department_id);


select worker.last_name as "Worker'sLastName",manager.last_name as "Manager'sLastName"
from employees worker
join
employees manager
on(worker.manager_id=manager.employee_id);


select last_name,department_name
from employees
cross join departments;


select e.last_name,e.hire_date,j.job_id
from employees e
join job_history j
on e.hire_date
between j.start_date and j.end_date;


