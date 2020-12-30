-- Soal : Buatlah query untuk menampilkan kode department apa saja yang ada di tabel employees secara unique


-- Jawaban :

SELECT  
  DISTINCT
  department_id as kode_department  
FROM 
  employees
WHERE 
  employees;
-- Ini jawaban pertama saya yang salah.


  -- Yang Benar :
SELECT 
  DISTINCT (department_id)
FROM 
  employees
ORDER BY 
  department_id;

