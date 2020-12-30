-- --- LIMIT --- --

-- => Limit data yang akan kita ambil di batasi sesuia dengan yang kita butuhkan

----------------------------------------------

-- --- OFFSET --- --
-- => Digunakan untuk melewati data yang ingin kita ambil.

-- Example :

select
  employee_id as kode,
  first_name as nama_depan
from 
  employees
limit 5 
offset 5;