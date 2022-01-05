##--UC1--##
show databases;
create database emp_payroll_service;
use emp_payroll_service;

##--UC2--##
create table employee_payroll ();

##--UC3--##
insert into employee_payroll (name,salary,startDate) values ('Rohini',40000.0,'2021-10-10');
insert into employee_payroll (name,salary,startDate) values ('Neeta',45000.0,'2021-10-10');
insert into employee_payroll (name,salary,startDate) values ('Nitin',50000.0,'2021-01-10');

##--UC4--##
select * from employee_payroll;

##--UC5--##
select * from employee_payroll where name= 'Rohini';
select * from employee_payroll where startDate between '2021-10-10' and Date(now());

##--UC6--##
alter table employee_payroll add gender char(1);
update employee_payroll set gender = 'M' where id >2;
update employee_payroll set gender = 'F' where id <3;

##--UC7--##
select sum(salary) from employee_payroll;
select gender,sum(salary) from employee_payroll group by gender;
select gender,avg(salary) from employee_payroll group by gender;
select gender,min(salary) from employee_payroll group by gender;
select gender,max(salary) from employee_payroll group by gender;
select gender,count(salary) from employee_payroll group by gender;
