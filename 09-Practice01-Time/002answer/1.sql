-- Kasus : Saya mau menampilkan seluruh data karywan dari table employees yang di urutkan berdasarkan email paling akhir.

-- Query :
select
  first_name as nama_depan,
  email as email
from
  employees
order by 
  email desc;