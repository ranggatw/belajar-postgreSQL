-- Soal : Buatlah query untuk menampilkan nama belakang, gaji perbulan, kode jabatan dari table employees yang tidak memiliki komisi


-- Jawaban :

SELECT 
  last_name as nama_belakang,
  department_id as kode_jabatan,
  commission_pct as komisi
FROM 
  employees
WHERE
  NOT(commission_pct < 0.10); 

-- Jawaban saya salah. Di bagian salary nya tidak di tampilakan, kode_jabatan itu job_id. commission_pct tidak perlu di tampilkan dalam select.

-- Jawaban Benar :

SELECT 
  last_name AS nama_belakang,
  salary    AS gaji_bulanan,
  job_id    AS kode_jabatan,
  commission_pct AS komisi
FROM
  employees
WHERE
  commission_pct IS NOT NULL OR commission_pct = 0;