-- Soal : Buatlah query untuk menampilkan data karyawan yang memiliki huruf A diawal nama depannya.

-- Jawaban :

SELECT
  *
FROM 
  employees
WHERE
  first_name LIKE 'A%';