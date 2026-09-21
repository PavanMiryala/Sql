-- create database practice;
-- use  practice;
-- create table employee (emp_id int primary key ,emp_name varchar(50),dept varchar(50),salary int);
-- insert into employee values (1,"pavan","cse",50000),(2,"vijay","cse_ai",60000),(3,"mani","IT",60000),(4,"akhil","Ece",70000);
-- select * from employee;
-- CREATE TABLE Student (
--     StudentID INT PRIMARY KEY,
--     FirstName VARCHAR(50) ,
--     LastName VARCHAR(50) ,
--     Gender CHAR(1),
--     DateOfBirth DATE,
--     Email VARCHAR(100) ,
--     Phone VARCHAR(15),
--     Address VARCHAR(255),
--     Course VARCHAR(100),
--     AdmissionDate DATE
-- );
-- desc student;
-- select * from student;
-- alter table student add column gender char(1);
-- alter table student modify gender varchar(50); 
-- alter table student add column city varchar(50) after course;
-- alter table student drop column city ;
-- alter table student rename column address to city ;
-- rename table student to student_details;
-- rename table student_details to student;
-- alter table student drop primary key; 
-- alter table student add primary key(studentID);
-- alter table student add unique(Email);
-- alter table student add column name varchar(50) not null;
-- alter table student add check(


-- Day 2 DML

-- use practice;
-- select * from employee;
-- insert into employee values(6,"chethan","HR",400000),(7,"anil","Finanace",55000);
-- update employee set salary=55000 where emp_id=1;
-- update employee set dept = "CSE" where emp_id=4;
-- update employee set dept="AI",salary=65000 where emp_id=3;
-- update employee set salary= salary + 5000;
-- SET SQL_SAFE_UPDATES = 0;
-- update employee set salary = salary - 5000;
-- update employee set salary = salary + 300 where salary <60000;
-- update employee set salary = salary - 20000  where emp_id = 1;
-- update employee set salary = salary + 300 where emp_id = 1;
-- update employee set dept = "artificialintelligence " where dept="cse_ai";
-- delete from employee where emp_id= 7;
-- delete from employee where salary < 50000;
 -- select * from employee;
-- update employee set salary =salary + 3000 where salary < 60000;
-- insert into employee values (7,"pavan","IT",50000);
-- select * from employee;

-- day 3 DCl commands 
-- use practice;
-- create table engineer (id int primary key, name varchar(50) ,dept varchar(50), salary int);
-- desc engineer;
 -- select * from engineer;
-- create user 'pavankumar'@'localhost' identified by 'pavankumar123';
-- grant select on practice.engineer to 'pavankumar'@'localhost';
-- select current_user()
-- SELECT user, host FROM mysql.user;
-- grant insert,update on engineer to  'pavankumar' @'localhost';
-- insert into engineer values (6,"ravi","eee",250000);
-- select * from engineer;

-- day 4 constraints
-- use practice ;
-- show tables;
-- select * from student1;
-- create table student1 (id int primary key,name varchar(100) not null, age int);
--  insert into student1 (id ,name) values (4,'yasin');

-- not null
-- alter table student1 modify age int ;
 -- insert into student1 (id ,name) values (4,'yasin');
-- select * from student1;
-- alter table student1 modify name varchar(100) not null;
-- insert into student1 values (5,null,20);   here we get error because we addeed not null to the columnn name so must nd should add names other wise it gets error;
-- insert into student1 values (5,'ram',22);

-- uniquee 
-- alter table student1 add constraint unique(name);

-- check 
-- alter table student1 add constraint chk_age check(age>18);
-- update student1 set age=18 where id =3;
-- SHOW CREATE TABLE student1;


-- aggregate functions 
-- select * from student;
-- alter table student add column salary int;

-- select count(*) from student;
-- select count(salary) from student;

-- select sum(salary) from student;
-- select avg(salary) from student;
-- select max(salary) from student;
-- select * from student;
-- select max(StudentID)from student;
-- select sum(StudentID)from student;

-- select count(salary) from student where salary > 40000;

--  JOINS 
-- show tables;
-- CREATE TABLE Employee1 (EmpID INT PRIMARY KEY,Name VARCHAR(50),DeptID INT,Salary DECIMAL(10,2),City VARCHAR(50));
-- CREATE TABLE Department1 (DeptID INT PRIMARY KEY,DeptName VARCHAR(50),Location VARCHAR(50));
-- desc Employee1;
-- select * from Employee1;
-- select * from Department1;
-- select e.Name,d.DeptName from Employee1 e join Department1 d  on e.DeptID = d.DeptID;
-- select e.Name,e.Salary,d.Location from Employee1 e join Department1 d on e.DeptID = d.DeptID;
-- select e.Name from Employee1 e join Department1 d on e.DeptId = d.DeptID where d.DeptName = 'ai';
-- select e.Name,d.DeptName from Employee1 e inner join Department1 d on e.DeptID = d. DeptID;
-- select e.Name,e.city,d.Location from Employee1 e join Department1 d on e.DeptID=d.DeptID;
-- select * from Employee1 left join Department1 on Employee1.DeptID = Department1.DeptID;
 -- select * from Employee1 right join Department1 on Employee1.DeptID = Department1.DeptID;
 -- select e.Name,d.DeptName from Employee1 e join Department1 d on e.DeptID = d.DeptID where e.Salary > 50000;
 
 
 
 -- subqueries
 
 -- select * from student;
  
 
 -- select avg(salary) from student;
-- select * from student where salary > (select avg(salary) from student);
-- select * from student where salary < (select avg (salary) from student);
-- select * from student where salary = (select max(salary) from student);
-- select * from student where salary = (select min(salary) from student);
-- select * from student where salary > (select salary from student where FirstName='vijay');
-- select * from student where salary < (select salary from student where FirstName='anil');
--  select * from employee where dept in (select dept from employee where emp_name = 'pavan');
--  select * from employee;
 -- select * from employee where dept in (select dept from employee where emp_name='chethan');
 -- select * from employee where salary = (select max(salary) from employee);
 
 -- SELECT MAX(salary)  FROM employee WHERE salary < (SELECT MAX(salary)FROM employee);
 -- select min(salary) from employee where salary > (select min(salary) from employee);
 -- select * from employee where salary > (select max(salary) from employee where salary < (select max(salary) from employee));
 -- select * from employee where salary = (select min(salary) from employee where salary > (select min(salary) from employee));
-- select * from employee where dept = (select dept from employee where emp_id=4);
-- select * from employee where salary > (select avg(salary) from employee where dept!='HR');
-- select * from employee where salary between (select avg(salary) from employee ) and (select max(salary) from employee);
-- select * from employee where salary != (select max(salary) from employee);
-- select * from employee where salary != (select min(salary) from employee);
-- show tables;
-- select * from employee;

-- views
-- A View is a virtual table created from one or more SQL queries.

-- create view IT_employees as select * from employee where dept ='IT';
-- select * from IT_employees;
 -- create view high_paid as select * from employee where salary > 60000;
-- select * from high_paid;
-- CREATE VIEW Employee_Public AS SELECT emp_id, emp_name, dept FROM employee;
-- select * from Employee_Public;

-- select * from employee;
-- show tables;
-- select * from department;

-- VIEWS WITH JOINS 

-- create view employee_department as select e.emp_name,d.deptid,d.dept from employee e join department d  on e.dept =d.dept;
-- select * from employee_department;

-- create view it_hr_employees as select e.emp_id,e.emp_name,d.dept_id from employee e join department d on e.dept=d.dept where e.department in('IT','HR'); 
-- select * from it_hr_employees;
-- desc employee;
-- desc department;

-- 							indexing concept
-- use practice;
-- desc employee;
-- select * from employee;
-- create index index_name on employee(emp_name);
-- select  * from employee where emp_name='Pavan';
-- desc employee;

-- create table movies(movies_id int primary key,title varchar(100),genre varchar(100),language varchar(100),release_year int,collection varchar(100);
-- select * from movies;

-- 			STORED PROCEDURES ----
--  select * from movies;
-- delimiter // 
-- create procedure getalltitles() begin  select * from movies; end // delimiter ;
-- call getalltitle;

