select E.first_name, E.last_name, E.department_id, D.department_name
from employees E 
INNER JOIN departments D on E.department_id = D.department_id;
select E.first_name, E.last_name, D.department_id, L.city, L.state_province
from employees E 
JOIN departments D on E.department_id = D.department_id
JOIN locations L on D.location_id = L.location_id ;
select E.first_name, E.last_name, J.job_id 
from employees E 
JOIN jobs J ON E.job_id = J.job_id;
select E.first_name, E.last_name, E.department_id, D.department_name
from employees E 
JOIN departments D ON E.department_id = D.department_id 
AND E.department_id IN (80,40) ;
select E.first_name, E.last_name, D.department_name, L.city, L.state_province
from employees E 
JOIN departments D ON E.employee_id = D.department_id
JOIN locations L on D.location_id = L.location_id
where E.first_name like '%Z%';
select E.first_name, E.last_name, D.department_name, D.department_id
from employees E 
JOIN departments D ON E.employee_id = D.department_id;
select E.first_name, E.last_name, E.employee_id, E.salary, J.job_id
from employees E 
JOIN jobs J ON E.job_id = J.job_id
WHERE E.employee_id <182;
select E.first_name, E.last_name, E.manager_id 
from employees E 
JOIN departments D ON E.manager_id = D.manager_id;
select D.department_name, L.city, L.state_province
from departments D 
JOIN locations L ON D.location_id = L.location_id ;
select E.first_name, E.last_name, D.department_name, D.department_id
from employees E 
JOIN departments D ON E.employee_id = D.department_id;
select E.first_name, E.last_name, E.manager_id 
from employees E 
JOIN departments D ON E.manager_id = D.manager_id;
select E.first_name, E.last_name, D.department_id
from employees E 
JOIN departments D ON E.department_id = D.department_id
AND E.last_name = 'Taylor';
SELECT job_title, concat(first_name,last_name) AS Employee_name, max_salary - salary AS salary_difference 
FROM employees 
JOIN jobs; 
select department_name, avg(salary),count(commission_pct)
from departments
JOIN employees using (department_id)
group by department_name;
select job_title, concat(first_name, last_name) as employee_name,max_salary - salary as salary_difference
from jobs
natural join employees 
where department_id = 80;
select country_name, department_name, city 
from countries 
join locations using (country_id)
join departments using (location_id);
select D.department_name, concat(first_name, last_name) as name_of_manager
from employees E 
JOIN departments D ON D.manager_id = E.manager_id;
select job_title, avg(salary)
from employees 
NATURAL join jobs
group by job_title; 
SELECT a.*
FROM job_history a 
JOIN employees m 
  ON (a.employee_id = m.employee_id)
WHERE salary >= 12000;
select D.department_name, concat(first_name, last_name) as manager_name, city 
from departments D
join employees E on D.department_id = E.department_id
join locations L using (location_id);
SELECT employee_id, job_title, end_date - start_date DAYS 
FROM job_history 
NATURAL JOIN jobs
WHERE department_id = 80;
select concat(first_name, last_name)as employee_name, salary 
from employees 
JOIN departments USING (department_id) 
JOIN locations USING (location_id) 
WHERE city = 'London';
select concat(first_name, last_name) as employee_name, employee_id, country_name 
FROM employees
JOIN departments USING(department_id) 
JOIN locations USING(location_id) 
JOIN countries USING(country_id);






 






