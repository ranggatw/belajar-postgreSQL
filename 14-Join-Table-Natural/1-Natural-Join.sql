-- Natural Join

-- Terdapat dua syarat untuk menerapkan natural join :
-- 1. Diantara tabel yang berelasi, column name harus sama.
-- 2. Harus memilki constarit foreign key

-- Contoh implementasinya : Tampilkan seluruh data location dari : location_id, city, state_povince, country_name yang diambil dari table countries.



SELECT 
    l.location_id,
    c.country_id,
    c.country_name,
    l.city,
    l.state_province
FROM 
    locations l
    NATURAL JOIN countries c;

    
-- *HINT* : Jika ingin menggunkanan Natural JOIN Pastikan Dulu di dalam Table ada Column yang sama. (Jika tidak akan terjadi Redundasi)

-- 

SELECT
    l.location_id,
    emp.employee_id,
    emp.last_name,
    l.city,
    l.state_province
FROM
    locations l NATURAL JOIN employees emp;

