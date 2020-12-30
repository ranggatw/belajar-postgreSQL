SELECT
  concat(first_name, ' ', last_name) AS nama_lengkap,
  job_id                             AS kode_jabatan,
  salary * 12                        AS gaji_setahun
FROM employees
WHERE manager_id = 100