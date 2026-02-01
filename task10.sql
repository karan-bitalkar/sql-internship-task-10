USE intern_training_db;

SELECT 
    e.emp_id,
    e.name AS employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;


CREATE OR REPLACE VIEW employee_department_view AS
SELECT 
    e.emp_id,
    e.name AS employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;


SELECT * FROM employee_department_view;


-- Employees from IT department
SELECT * FROM employee_department_view
WHERE department_name = 'IT';


-- Sort employees by salary
SELECT * FROM employee_department_view
ORDER BY salary DESC;


INSERT INTO employee_department_view (employee_name, salary)
VALUES ('TestUser', 40000);

DROP VIEW IF EXISTS employee_department_view;

