-- Soal : Buatlah query untuk menampilkan data karyawan yang nama belakangnya memiliki huruf kedua u.


-- Jawaban :

SELECT 
  *
FROM 
  employees
WHERE
  last_name LIKE '_u%';