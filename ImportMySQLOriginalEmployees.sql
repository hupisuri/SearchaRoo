-- The original data is stored in the database called employees
-- Spring created the new schema called spring_employees
USE `spring_employees`;

-- Departments

INSERT INTO `spring_employees`.`departments`
(`dept_no`,
`dept_name`)
SELECT `departments`.`dept_no`,
    `departments`.`dept_name`
FROM `employees`.`departments`;

-- Employees

INSERT INTO `spring_employees`.`employees`
(`emp_no`,
`birth_date`,
`first_name`,
`gender`,
`hire_date`,
`last_name`)
SELECT `employees`.`emp_no`,
    `employees`.`birth_date`,
    `employees`.`first_name`,
    `employees`.`gender`,
    `employees`.`hire_date`,
    `employees`.`last_name`
FROM `employees`.`employees`;

-- Join table 
INSERT INTO `spring_employees`.`dept_emp`
(`emp_no`,
`dept_no`,
`from_date`,
`to_date`)
SELECT 
`dept_emp`.`emp_no`,
    `dept_emp`.`dept_no`,
    `dept_emp`.`from_date`,
    `dept_emp`.`to_date`
FROM `employees`.`dept_emp`;

-- Join table 

INSERT INTO `spring_employees`.`dept_manager`
(
`emp_no`,
`dept_no`,
`from_date`,
`to_date`)
SELECT `dept_manager`.`emp_no`,
    `dept_manager`.`dept_no`,
    `dept_manager`.`from_date`,
    `dept_manager`.`to_date`
FROM `employees`.`dept_manager`;

-- Titles

INSERT INTO `spring_employees`.`titles`
(`emp_no`,
`title`,
`from_date`,
`to_date`)
SELECT `titles`.`emp_no`,
    `titles`.`title`,
    `titles`.`from_date`,
    `titles`.`to_date`
FROM `employees`.`titles`;

-- Salaries

INSERT INTO `spring_employees`.`salaries`
(`emp_no`,
`salary`,
`from_date`,
`to_date`)
SELECT `salaries`.`emp_no`,
    `salaries`.`salary`,
    `salaries`.`from_date`,
    `salaries`.`to_date`
FROM `employees`.`salaries`;


