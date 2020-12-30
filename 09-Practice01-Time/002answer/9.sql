--SOal : Buatlah query untuk menampilkan data karyawan yang bukan dari jabatan IT_PROG dan SH_CLERK.

-- Jawaban :

SELECT
  *
FROM 
  employees
WHERE 
  NOT (job_id LIKE 'IT_PORG' AND 'SH_CLERK'); 

-- Jawaban saya salah di bagian : where.

-- Jawaban benar :
SELECT 
  *
FROM 
  employees
WHERE
  job_id NOT IN ('IT_PROG', 'SH_CLERK'); 