
-- Saya mau mencari jumlah setiap karyawan dan total salary setahun per deparment_id : 
SELECT 
    department_id as kode,
    count(*) as jumlah_karyawan,
    (sum(salary) * 12) as total_salary
FROM 
    employees
GROUP BY
    kode
ORDER BY
    kode;


-- One grouping
-- Mau tau jumlah karyawan di setiap department :
SELECT
    department_id as dep_id,
    count(employee_id) as employee_rows
FROM 
    employees
GROUP BY
    department_id
ORDER BY
    dep_id;

-- Multiple Grouping
SELECT
    department_id as dep_id,
    salary as group_salary,
    count(employee_id) as employee_rows
FROM
    employees
GROUP BY
    employee_id,
    salary
ORDER BY
    dep_id;
    