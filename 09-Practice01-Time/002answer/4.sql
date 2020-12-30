-- Soal : Buatlah query untuk menampilkan data karyawan yang memiliki kode karyawan diantaranya 103, 115, 196, 187, 102 dan 100

-- Jawaban :

SELECT 
  *
FROM 
  employees
WHERE 
  employee_id in (103, 115, 196, 187, 102, 100);