-- Inner Join 



-- Menggunakan klausa 'ON'
SELECT
    emp.employee_id as id,
    dep.department_id as id_dep,
    dep.department_name as nama_department,
    concat(emp.first_name,' ', emp.last_name) as fullname
FROM
    employees emp
    JOIN
    departments dep
    ON
    (emp.employee_id = dep.department_id)
LIMIT
    10;


-- Menggunakan klausa 'WHERE'
SELECT
    emp.employee_id as id,
    dep.department_id as id_dep,
    dep.department_name as nama_department,
    concat(emp.first_name,' ',emp.last_name) as fullname
FROM
    employees emp,
    departments dep
    WHERE
    emp.employee_id = dep.department_id
;

-- =============================

SELECT
FROM
