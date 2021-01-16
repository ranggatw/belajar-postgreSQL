-- Tampilkan jumlah karyawan yang memiliki gaji perbulan lebih dari sebesar 5000 kemudian kategorikan berdasarkan manager_id.

SELECT
    manager_id,
    count(*) as jumlah_karyawan
FROM
    employees
    WHERE
        salary >= 5000
GROUP BY
    manager_id
ORDER BY
    manager_id;


-- Menggunakan having
-- Menampilkan jumlah karyawan yang lebih dari 8


SELECT
    manager_id,
    count(employee_id) as jumlah_karyawan
FROM
    employees
GROUP BY
    manager_id
    HAVING count(employee_id) >= 8
ORDER BY manager_id;


-- Menggabungkan 
-- Menampilkan
SELECT
    manager_id,
    count(employee_id) as jumlah_karyawan
FROM
    employees
    WHERE salary >= 5000
GROUP BY
    manager_id
    HAVING count(employee_id) >= 8
ORDER BY manager_id;

-- Urutan : akan di filter yang salarynya lebih dari 5000, lalu di grup dan filter lagi yang jumlah employee nya lebih dari 8.

