use belajar;

show tables;

create table karyawan(
    id_karyawan int auto_increment primary key,
    nama varchar(255),
    id_dept int
);

create table departement(
    id_dept int auto_increment primary key,
    nama_dept varchar(255)
);

INSERT INTO departement (nama_dept) VALUES
('Human Resources'),
('Finance'),
('Marketing'),
('Sales'),
('Research and Development'),
('Customer Service'),
('IT'),
('Operations'),
('Administration'),
('Quality Assurance');

INSERT INTO karyawan (nama, id_dept) VALUES
('Bambang Surya', 1),
('Dewi Anggraini', 2),
('Rudi Setiawan', 3),
('Lina Susanto', 4),
('Eko Prasetyo', 5),
('Siti Rahayu', 6),
('Hendro Wijaya', 7),
('Yuni Hartati', 8),
('Adi Nugroho', 9),
('Rina Marwah', 10),
('Bayu Kusuma', 1),
('Dina Utami', 2),
('Joko Santoso', 3),
('Sari Indah', 4),
('Rizky Permana', 5),
('Linda Setiawan', 6),
('Andy Pratama', 7),
('Fitriani Dewi', 8),
('Agus Wibowo', 9),
('Rita Permata', 10),
('Budi Santoso', 1),
('Sinta Purnama', 2),
('Hariyanto Gunawan', 3),
('Dewi Cahaya', 4),
('Roni Setiawan', 5),
('Ani Pratiwi', 6),
('Bambang Hermawan', 7),
('Dina Fitriani', 8),
('Eka Putri', 9),
('Yudi Saputra', 10);

# Inner Join

SELECT k.id_karyawan, k.nama AS nama_karyawan, d.nama_dept as nama_departement
FROM karyawan k
INNER JOIN departement d ON k.id_dept = d.id_dept order by d.nama_dept;

# Left Outer Join (or Left Join):

SELECT k.nama, d.nama_dept
FROM karyawan k
LEFT JOIN departement d ON k.id_dept = d.id_dept;

# Right Outer Join (or Right Join):

SELECT k.nama, d.nama_dept
FROM karyawan k
RIGHT JOIN departement d ON k.id_dept = d.id_dept;

# Full Outer Join


/* Using UNION for databases without FULL OUTER JOIN support */
SELECT k.nama, d.nama_dept
FROM karyawan k
LEFT JOIN departement d ON k.id_dept = d.id_dept
UNION
SELECT k.nama, d.nama_dept
FROM karyawan k
RIGHT JOIN departement d ON k.id_dept = d.id_dept
WHERE k.id_dept IS NULL;
