-- --- ORDER BY --- -- 
-- Mengurutkan dari besar ke kecil (ascending) atau besar ke kecil (descending)

-- Example : 

-- Simple SQL
select ... from ... order by columns ... [asc|desc]

-- Complex SQL with where
select ... from ... where order by columns ... [asc | desc]

-- Contoh Kasus :
-- Saya mau menampilkan data karyawan berdasarkan gaji yang terbesar terlebih dahulu :
select 
  employee_id as kode,
  first_name as nama_depan,
  salary as gaji
from 
  employees
order by
  salary desc;

-- Lebih dari satu column :
select
  employee_id as kode,
  first_name as nama_depan,
  salary as gaji
from 
  employees
order by
  (first_name, salary) asc;