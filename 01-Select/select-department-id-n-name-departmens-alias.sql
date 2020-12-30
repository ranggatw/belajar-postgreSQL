-- Alias For Table

select 
  department_id kode_divisi,
  department_name as nama_divisi,
  manager_id "Kode Manager"
from departments;

select 
  div.department_id kode_divisi,
  div.department_name as nama_divisi,
  div.manager_id "Kode Manager"
from departments div;