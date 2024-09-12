CREATE DATABASE Organisation;
USE Organisation;

#creating a table
CREATE TABLE employee(
	employee_id INT PRIMARY KEY,
    employee_name VARCHAR (100),
    employee_age INT,
    employee_department VARCHAR (100),
    employee_salary NUMERIC,
    date_employed DATE
);

#inserting data into table employee
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (1, 'Tull Ivan', 36, 'Sales', 82525, '2023-07-24');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (2, 'Allina Gadman', 21, 'Engineering', 38015, '2012-04-06');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (3, 'Ava Reinbech', 44, 'Marketing', 41062, '2019-05-29');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (4, 'Gayle Redmile', 29, 'Services', 34402, '2013-12-14');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (5, 'Nickolas MacLennan', 59, 'Legal', 95297, '2012-03-18');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (6, 'Carole Lehrer', 69, 'Research and Development', 94283, '2013-03-29');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (7, 'Eileen Neely', 67, 'Legal', 46030, '2012-11-26');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (8, 'Lynna Binch', 24, 'Business Development', 62567, '2013-10-03');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (9, 'Pincus Gianninotti', 28, 'Support', 82202, '2015-11-16');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (10, 'Louisette Phonix', 39, 'Business Development', 59345, '2021-11-28');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (11, 'Stuart Bridgement', 27, 'Training', 31118, '2014-05-24');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (12, 'Piggy Carme', 52, 'Human Resources', 68765, '2022-03-24');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (13, 'Laurie Menpes', 40, 'Legal', 79480, '2016-08-06');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (14, 'Sylvia Fauning', 66, 'Human Resources', 90304, '2022-03-19');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (15, 'Margalit Pachmann', 32, 'Support', 45479, '2022-04-15');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (16, 'Pattin Midghall', 35, 'Services', 97343, '2017-02-06');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (17, 'Joyann Pindred', 70, 'Business Development', 31059, '2011-12-13');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (18, 'Clea Tock', 28, 'Sales', 46301, '2013-12-25');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (19, 'Cindie Bonnor', 42, 'Product Management', 42537, '2012-10-09');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (20, 'Sharl Banting', 67, 'Legal', 78046, '2016-03-20');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (21, 'Geneva Knapton', 34, 'Legal', 77736, '2021-04-17');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (22, 'Emiline Tapper', 44, 'Support', 39675, '2022-03-17');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (23, 'Kordula Warhurst', 27, 'Engineering', 71264, '2019-02-01');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (24, 'Ethelind Ivett', 41, 'Legal', 99141, '2012-09-09');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (25, 'Rowan McLaughlan', 52, 'Product Management', 50097, '2013-03-28');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (26, 'Dalt Costelow', 21, 'Sales', 89952, '2015-04-27');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (27, 'Nadine Daine', 29, 'Business Development', 71386, '2011-08-10');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (28, 'Alberik Allenson', 26, 'Sales', 19707, '2015-09-25');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (29, 'Eddy Gorgen', 61, 'Business Development', 42848, '2012-08-03');
insert into employee (employee_id, employee_name, employee_age, employee_department, employee_salary, date_employed) values (30, 'Harland Readshall', 41, 'Support', 21916, '2022-02-02');

# Select spcific columns
SELECT employee_name, employee_age, employee_salary 
FROM employee;

# Filter the records: name and salary of employees working in a department
SELECT employee_name, employee_salary 
FROM employee
WHERE employee_department = 'Legal';

# Sort the data: sort the data by salary
SELECT * FROM employee 
WHERE date_employed > '2018-01-01'
ORDER BY employee_salary DESC;

# Find the top 3 highest paid employees
SELECT employee_name, employee_salary 
FROM employee
ORDER BY employee_salary DESC
LIMIT 3;

# Find all unique department you have
SELECT DISTINCT employee_department
FROM employee;

# Query data so that you have employee who are either in the X department or have a salary greater than y
SELECT * FROM employee
WHERE employee_department = 'Business Development' OR employee_salary > 40000
ORDER BY employee_department ASC, employee_salary DESC;

# Select the 2 youngest employees show name and date when they were hired
SELECT employee_name, date_employed,employee_age
FROM employee
ORDER BY employee_age
LIMIT 3;

# Find the distint departments and sort them in alphabetic order
SELECT DISTINCT employee_department
FROM employee
ORDER BY employee_department;