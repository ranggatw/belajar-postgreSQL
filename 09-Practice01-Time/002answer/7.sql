-- Soal : Buatlah query untuk menampilkan nama lengkap karyawan, kode jabatan, gaji setahun dari table employees yang kode manager sama dengan 100.

-- Jawaban :

SELECT 
  first_name || ' ' || last_name as nama_lengkap,
  job_id as kode_jabatan,
  salary as gaji
FROM
  employees
WHERE
  manager_id = 100;

-- Jawaban saya kurang tepat. karena belum memenuhi spesifikasi query yang di inginkan.

-- Jawaban Benar :
SELECT 
  concat(first_name, ' ', last_name) AS nama_lengkap,
  job_id                             AS kode_jabatan,
  salary * 12                        AS gaji_setahun
FROM
  employees
WHERE
  manager_id = 100;

