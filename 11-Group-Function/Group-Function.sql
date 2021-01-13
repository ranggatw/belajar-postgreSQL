-- Function Agregatation --
-- => Fungsi Pengumpulan 

SELECT 
    round(avg(salary), 2) as rata_rata_gaji,
    count(*) as jumlah_baris,
    max(salary) as max_salary,
    min(salary) as min_salary,
    sum(salary) as total_salary
from employees;


SELECT 
    sum(salary) as total_salary
FROM 
    employees
limit 10;
-- Output menghasilkan penjumlahan semua value pada column salary

SELECT
    employee_id, salary
FROM
    employees
ORDER BY 
    salary
LIMIT 
    10;
-- Output : menampilkan employee_id dan id dari table employee dengan limit 10

SELECT
    sum(salary) as total_salary,
    min(salary) as min_salary,
    max(salary) as max_salary,
    count(salary) as count_rows,
    avg(salary) as average_salary
FROM 
    employees
WHERE 
    employee_id in (132,128, 136, 127, 135, 140, 144, 119,131, 182);

-- AGGREGATION  with format value function--
SELECT
    to_char(sum(salary), 'FM999,999') as total_salary,
    to_char(min(salary) , 'FM999,999') as min_salary,
    to_char(max(salary), 'FM999,999') as max_salary,
    to_char(count(salary), 'FM999,999') as count_rows,
    to_char(avg(salary), 'FM999,999') as average_salary
FROM 
    employees
WHERE 
    employee_id in (132,128, 136, 127, 135, 140, 144, 119,131, 182);

-- Penggunaan GROUP aggregat harus semuanya merupakan fungsi aggregat kalau ada yang tidak maka akan muncul error
SELECT
    employee_id,
    to_char(sum(salary), 'FM999,999') as total_salary,
    to_char(min(salary) , 'FM999,999') as min_salary,
    to_char(max(salary), 'FM999,999') as max_salary,
    to_char(count(salary), 'FM999,999') as count_rows,
    to_char(avg(salary), 'FM999,999') as average_salary
FROM 
    employees
WHERE 
    employee_id in (132,128, 136, 127, 135, 140, 144, 119,131, 182);
