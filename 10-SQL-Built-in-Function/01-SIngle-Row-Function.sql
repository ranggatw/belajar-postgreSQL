-- Text Format : 

-- Kasus : saya mau memformat data karyawan first_name di jadikan huruf kapital, sedangkan untuk last_name saya mau menghitung jumlah berapa, gabungkan column first_name dan last_name.

-- Query :
SELECT 
  employee_id       AS kode,
  upper(first_name) AS nama_depan_kapital,
  last_name         AS nama_belakang,
  length(last_name) AS jumlah,
  concat(first_name,  ' ', last_name) AS nama_lengkap
FROM 
  employees
LIMIT
  10;


--  ========================================================


-- Number Format :

-- Contoh penerapan pada number format :

SELECT 
  coalesce(commission_pct, 0) AS commission_pct,
  salary AS gaji,
  mod(2, 4) AS sisa_bagi,
  power( (salary / 100), 2 ) AS pangkat,
  sqrt(50) AS akar
FROM employees
LIMIT 10;

SELECT 
  employee_id AS kode,
  initcap(first_name) AS nama_lengkap_initcap,
  upper(last_name) AS nama_belakang_capital,
  length(last_name) AS jumlah_huruf_nama_belakang,
  concat(first_name, ' ', last_name) AS nama_lengkap,
  to_char(salary, 'FM999,999') AS gaji_bulanan
FROM
  employees
LIMIT 10;
