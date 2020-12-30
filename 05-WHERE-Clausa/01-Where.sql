-- Filtering data dengan where klausa di SQL

-- Kegunaannya untuk melakukan filter berdasarkan kolom dan operator tertentu.
-- Ada banyak operator yang ada pada WHERE :
-- https://www.dimas-maryanto.com/bootcamp/rdbms/postgresql/011-where-operator




-- Operator equals :
select * 
from countries 
where region_id = 1;

-- varchar
select * 
from countries 
where country_id = 'DE';

-- not equals
select *
from countries 
where region_id != 1;

-- Lebih besar lebih kecil
select *

from countries
where country_id <> 'DE';

-- where upper value
select 
  employee_id,
  last_name,
  first_name,
  salary,
  commission_pct
from employees
where  commission_pct > 0.10;


-- operator LIKE
-- menggukanan '_' garis bawah => digunakan untuk mewakili expression satu character
-- menggunakan '%' persent => digunakan untuk mewakili expression beberapa character

-- underscore
select 
  employee_id,
  first_name,
  last_name,
  salary,
  commission_pct
from employees
where last_name like '_arvins';

-- persent
select 
  employee_id,
  first_name,
  last_name,
  salary,
  commission_pct
from employees
where last_name like '_a%';
-- menghasilkan nama terakhir yang huruf keduanya ada character 'a' dan belakannya bebas.

-- Operator IN
-- bisa mengambil banyak nilai di dalam sebuah column.

select *
from employees
where department_id in (10, 90, 20);



-- Operator Between
-- digunakan untuk memfilter dengan interval/rentang tertentu diantara nilai terkecil dan terbesar.

select 
  employee_id, 
  last_name,
  department_id,
  salary
from employees
where salary between 8000 and 20000;


-- Operator NULL

select 
  employee_id,
  last_name,
  salary,
  commission _pct
from employees
where commission_pct is null;