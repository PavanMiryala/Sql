-- use company_practices;
-- show tables;
 -- select * from employees;
 -- select * from departments;

-- (COMPARISION AND LOGICAL OPERATORS PRACTICE)
-- select * from employees where department_id='1';
-- select * from employees where salary>100000;
-- select * from employees where salary<60000;
-- select * from employees where salary>=90000;
-- elect * from employees where department_id <> 2;
-- select * from employees where job_title='QA Engineer';
-- select * from employees where job_title !='Account Manager';
-- select * from employees where salary > 80000 and department_id='1';

-- -----------------  IS NULL, IS NOT NULL -----------------
-- select * from employees;
-- select * from employees where department_id is null; 
-- select * from employees where department_id is not null;
-- select * from employees where email is null;
-- select * from employees where salary is null;
-- select * from employees where department_id is null and salary > 30000;
-- select * from employees where department_id is not null and salary > 70000;
-- select * from employees where department_id is null or salary < 50000;
-- select * from employees where department_id is not null and first_name like 'A%';
-- select * from employees where department_id is null and salary > 25000  and salary <50000;
--  select * from employees where department_id is not null and salary > 80000 and job_title is not null;
--  select * from employees where (department_id is null or email is null) and salary > 30000;
-- select * from employees where department_id is not null and salary > 70000 and(first_name like 'R%' or first_name like 'K%');  




-- -----------AGGREGATE FUCNTIONS -------------
-- select count(*) from employees;
-- select sum(salary) from employees;
-- select avg(salary) from employees;
-- select min(salary) from employees;
-- select max(salary) from employees;

-- select count(*) from employees where department_id is not null;
-- select sum(salary) from employees where salary > 70000;
-- select avg(salary) from employees where department_id ='1';
 -- select min(salary) from employees where department_id ='2';
-- select max(salary) from employees where job_title like'%Manager%';
-- select sum(salary) from employees where department_id in (1,2,5);
-- select avg(salary) from employees where first_name like 'A%' or first_name like 'R%';


-- -------------GROUP BY ------------------------
-- select department_id, count(*) as employee_count from employees group by department_id;
-- select department_id, sum(salary) from employees group by department_id;
-- select department_id, avg(salary) from employees group by department_id;
-- select department_id, max(salary) from employees group by department_id;
-- select department_id, min(salary) from employees group by department_id;

-- select department_id, count(*) as emp_count from employees group by department_id  having count(*) > 3 ;
-- select department_id, avg(salary) from employees group by department_id having avg(salary) > 70000;
-- select department_id, sum(salary) from employees group by department_id having sum(salary) > 5000000;
-- select department_id, count(*) from employees where salary >60000 group by deparment_id; 

-- ------------HAVING -------------------
-- select department_id from employees group by department_id having count(*) > 3;
-- select deartment_id from employees group by deartment_id having count(*) >=5;
-- select deartment_id from employees group by deartment_id having avg(salary) > 70000;

-- select department_id, sum(salary) from employees group by department_id having sum(salary) > 500000;
-- select department_id, count(*) from employees group by department_id having count(*) > 5;
-- select  department_id, avg(salary) from employees group by department_id having avg(salary) between 60000 and 90000

-- CLAUSES------(LIMIT,ORDERBY, DISTINCT,OFFSET)-------------
-- select * from employees order by first_name asc ;
-- select distinct job_title from employees order by job_title asc;
-- select * from employees limit 10 offset 10;
-- select * from  employees where department_id in (1,2) order by salary desc limit 5;
-- select distinct job_titles from employees order by job_title desc limit 5;
-- select * from employees order by salary desc limit 10 offset 10;

-- ------------JOINS--------------------
 -- select * from customers;
 select * from orders;
-- select customers.customer_name,orders.order_id from customers inner join orders on customers.customer_id=orders.customer_id;
-- select c.customer_name, o.order_id from customers as c inner join orders as o on c.customer_id=o.customer_id;
