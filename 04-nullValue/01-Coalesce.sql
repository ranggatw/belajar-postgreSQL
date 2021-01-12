-- Handling Null value with Coalesce

-- Fungsinya adalah NULL value bukan berarti tanpa karakter.
-- Karena jika sebuah NULL di kalikan dengan apapun akan menghasilkan NaN / NUll. dan ini akan membuat bingun untuk membedakan nialinya. 
  

select 
  COALESCE(commission_pct, 0),
  salary,
  COALESCE(commission_pct, 0) * salary as commission_sallary
from employees;

select 
  first_name as name,
  COALESCE(commission_pct, 0) as komisi_persen,
  salary as gaji_sebulan
  salary ( salary * COALASCE(commission_pct, 0)) as gajit_net
from employees;