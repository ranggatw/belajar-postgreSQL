-- Soal : Buatlah query untuk menampilkan data karyawan yang gajinya lebih besar 3200.00 sampai dengan 12000.00.

-- Jawaban : 

SELECT 
  *
FROM 
  employees
WHERE
  salary 
BETWEEN
  3200
AND 
  12000;