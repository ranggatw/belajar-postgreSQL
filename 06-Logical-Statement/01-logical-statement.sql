-- LOGICAL STATEMENT di PostgreSQL
-- dengan menggunakan gerbang Logical dapat melakukan query dengan lebih baik
-- AND | OR | NOT

-- AND :
-- True AND True => True
-- True AND False => False
-- False AND False => False

-- OR :
-- True OR True => True
-- True OR False => True
-- False OR False => False

-- NOT 
-- NOT (false) => True
-- NOT (True) => False


-- Latihan menggunakan AND Statement

-- Kasus : Saya mau mencari data karyawan yang bekerja di department_id = 90 dan yang manager_id = 100 dan juga department_id 
select 
  employee_id as kode,
  first_name as nama_depan
from employees 
where
  department_id = 90 and
  manager_id = 100;

-- Latihan menggunakan OR Statement

-- Kasus : Saya mau mencari data karyawan yang memiliki salary >= 12000 atau karyawan yang bekerja di deparment_id = 90.

select 
  employee_id as kode,
  first_name as nama_pegawai,
  salary as gaji
from 
  employees
where 
  department_id = 90
or 
  salary >= 12000;


-- Latihan menggunakan NOT

-- Kasus : Saya mau mencari data selain department_id = 90;
select
  employee_id as kode
  first_name as nama,
  department_id as divisi,
  salary as gaji
from
  employees
where
  NOT (department_id = 90);

-- Kasus sata mau mencari data gaji yang gajinya tidak di antara 8000 dan 20000;
select
  employee_id as kode,
  first_name as nama,
  salary as gaji
from
  employees
where
  salary not between 8000 and 20000;


-- Menggunakan NOT in
-- Kasus : tampilkan data department_yang di dalam id nya bukan (90, 10, 20).
select
  employee_id,
  first_name,
  salary,
  department_id
from 
  employees
where
  department_id not in (90, 10, 20);



-- --- KOMBINASI AND OR NOT --- --
-- Kasus : Saya mau mencari data karyawan yang bekerja di department_id = 100 atau yang manager_id = 108 dan memiliki salay > 9000 dan yang first_name bukan Daniel.

select
  employee_id as kode,
  firts_name as nama_depan,
  department_id as divisi,
  salary as gaji_bulanan,
  manager_id as manager
from
  employees
where
  (department_id = 100 or manager_id = 108) 
  and
  salary > 9000 
  and
  NOT (first_name = 'Daniel');


  -- --- NOT LIKE --- --
  -- Kasus : Saya ingin menampilkan data karyawan yang last_name nya di huruf kedua nama tidak ada huruf 'a'

select
  employee_id,
  first_name,
  last_name as yang_dicari
  salary,
  commission_pct
from
  employees
where
  last_name NOT LIKE '_a%';