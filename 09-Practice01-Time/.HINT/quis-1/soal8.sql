SELECT
  last_name AS nama_belakang,
  salary    AS gaji_sebulan,
  job_id    AS kode_jabatan
FROM employees
WHERE commission_pct IS NOT NULL;