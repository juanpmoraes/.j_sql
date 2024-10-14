UPDATE hr.employees
SET salary = 5500.00
WHERE employee_id = 101;



----------|

INSERT INTO hr.employees (
    employee_id, first_name, last_name, email, phone_number, hire_date, 
    job_id, salary, commission_pct, manager_id, department_id
) VALUES (
    202, 'Juan', 'Pablo', 'jpablo@example.com', '555-1234', 
    TO_DATE('2024-08-30', 'YYYY-MM-DD'), 'IT_PROG', 6500.00, 
    0.10, 100, 60
);


----------|


DELETE FROM hr.employees
WHERE employee_id = 202;
