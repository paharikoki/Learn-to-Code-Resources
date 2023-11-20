show databases;

create database belajar;

use belajar;

show tables;

CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `jk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

show create table  mahasiswa;

select *
from mahasiswa;

INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('1012345678','Ahmad Firdaus','Jl. Semeru No. 11','Manokwari','082012345678','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('1123456789','Maya Sari','Jl. Gajah Mada No. 90','Balikpapan','081112345678','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('1123456790','Mega Pratiwi','Jl. Srikandi No. 33','Ternate','082112345679','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('1234567890','Ahmad Sutomo','Jl. Pemuda No. 123','Jakarta','081234567890','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('2234567890','Faisal Hakim','Jl. Jenderal Sudirman No. 73','Samarinda','082234567890','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('2234567901','Yusuf Hadi','Jl. Pahlawan No. 78','Sorong','083234567901','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('2345678901','Rina Wijaya','Jl. Merdeka No. 45','Surabaya','081345678901','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('3345678901','Indah Wulandari','Jl. Pahlawan No. 56','Bandar Lampung','082345678901','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('3345679012','Anita Susanti','Jl. Jendral Sudirman No. 65','Batam','083345679012','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('3456789012','Budi Pratama','Jl. Cendrawasih No. 67','Bandung','081456789012','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('4456789012','Dian Kusuma','Jl. Nusantara No. 15','Palembang','082456789012','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('4456790123','Ari Wibowo','Jl. Raya No. 17','Tanjung Pinang','083456790123','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('4567890123','Siti Rahayu','Jl. Kenanga No. 32','Semarang','081567890123','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('5567890123','Sinta Pratiwi','Jl. Sisingamangaraja No. 28','Padang','082567890123','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('5567901234','Lia Sari','Jl. Kusuma No. 23','Bukittinggi','083567901234','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('5678901234','Andi Susilo','Jl. Diponegoro No. 88','Medan','081678901234','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('6678901234','Ari Nugraha','Jl. Merapi No. 3','Palu','082678901234','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('6679012345','Andi Nugraha','Jl. Pandawa No. 99','Pekanbaru','083678901234','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('6789012345','Lisa Dewi','Jl. Raya No. 12','Yogyakarta','081789012345','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('7789012345','Dewi Lestari','Jl. Dipenogoro No. 42','Jayapura','082789012345','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('7789012346','Sari Indah','Jl. Laksamana No. 8','Palangkaraya','083789012346','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('7890123456','Agus Santoso','Jl. Pahlawan No. 56','Denpasar','081890123456','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('8890123456','Rudi Santoso','Jl. Semangat No. 69','Ambon','082890123456','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('8890123457','Joko Prasetyo','Jl. Pemuda No. 52','Balikpapan','083890123457','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('8901234567','Putri Permata','Jl. Kusuma No. 21','Makassar','081901234567','Perempuan');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('9012345678','Rizal Setiawan','Jl. Airlangga No. 37','Manado','081012345678','Laki-laki');
INSERT INTO mahasiswa(nim,nama,alamat,kota,hp,jk) VALUES ('9901234567','Lina Susanti','Jl. Melati No. 5','Kupang','082901234567','Perempuan');

select *
from mahasiswa;


show tables;

select *
from mahasiswa where jk= 'Perempuan';

select *
from mahasiswa where jk='Laki-laki';

CREATE TABLE `barang` (
  `KodeBarang` varchar(15) NOT NULL,
  `NamaBarang` varchar(255) NOT NULL,
  `Harga` int NOT NULL,
  `Stok` int NOT NULL,
  PRIMARY KEY (`KodeBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

show create table barang;

INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('ATK001','Pensil',1500,500);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('ATK002','Buku Tulis',27500,300);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('ATK003','Stapler',5000,100);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('AUT001','Mobil',990000000,10);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('AUT002','Sepeda Motor',13500000,50);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('AUT003','Oli Mobil',45000,200);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('AUT004','Ban Mobil',300000,100);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BAG001','Tas Punggung',252000,150);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BAG002','Tas Kecil',120000,200);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BAG003','Koper',4500000,50);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BAG004','Tas Wanita',200000,100);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BEV001','Kopi',1500,200);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BEV002','Teh',20000,300);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BEV003','Air Mineral',3000,600);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BEV004','Soda',5000,100);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BOK001','Bola Sepak',28000,50);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BOK002','Raket Tenis',25000,30);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BOK003','Lapangan Futsal',50000000,5);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('BOK004','Buku Novel',50000,200);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('CLT001','Celana Panjang',300000,200);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('CLT002','Kaos',100000,500);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('CLT003','Jaket',150000,100);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('CLT004','Topi',50000,150);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('CLT005','Kemeja',30000,150);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('ELE001','Kulkas',530000,30);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('ELE002','Mesin Cuci',350000,40);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('ELE003','Blender',200000,100);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('ELE004','TV LED',400000,20);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('ELE005','Setrika',150000,50);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('FOD001','Nasi',1000,1000);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('FOD002','Ayam',3000,300);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('FOD003','Gula',5500,200);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('FOD004','Sosis',2000,200);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('FOO001','Roti',1050,500);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('FOO002','Susu',2000,300);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('FOO003','Mie Instan',2500,400);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('FOO005','Kacang',1000,300);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('GDT001','Laptop',8000000,50);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('GDT002','Smartphone',3000000,150);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('GDT003','Mouse',15000,200);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('HOM001','Sofa',2500000,20);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('HOM002','Meja Makan',1200000,40);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('HOM003','Kursi Kantor',350000,100);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('HOM004','Lampu Tidur',80000,150);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('MED001','Obat Pusing',5000,100);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('MED002','Vitamin C',800,50);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('MED003','Plaster',500,300);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('MED004','Paracetamol',500,100);
INSERT INTO barang(KodeBarang,NamaBarang,Harga,Stok) VALUES ('MED005','Alkohol 70%',6000,80);

select *
from barang;

select (kodeBarang,NamaBarang,Stok)
from barang
order by kodeBarang;

select (kodeBarang,NamaBarang,Stok)
from barang
order by NamaBarang;

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(15) NOT NULL,
  `nama_mk` varchar(255) DEFAULT NULL,
  `sks` int DEFAULT NULL,
  `semester` int DEFAULT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

show create table matakuliah;

INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('CHEM101','Kimia Dasar',2,2);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('COMP101','Pemrograman Dasar',3,1);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('COMP201','Algoritma dan Struktur Data',3,3);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('CS101','Computer Science Fundamentals',3,2);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('CS201','Data Structures and Algorithms',3,3);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('ECON101','Ekonomi Mikro',2,2);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('ECON201','Ekonomi Makro',2,3);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('ENG101','English Composition',3,1);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('ENGL101','Bahasa Inggris',2,1);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('MAT101','Calculus',3,3);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('MATH101','Matematika Dasar',3,1);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('MATH201','Matematika Lanjut',3,3);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('PHY101','General Physics',3,2);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('PHYS101','Fisika Dasar',3,2);
INSERT INTO matakuliah(kode_mk,nama_mk,sks,semester) VALUES ('PHYS201','Fisika Lanjut',3,4);

show tables;

CREATE TABLE `ambil_mk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) NOT NULL,
  `kode_mk` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nim` (`nim`),
  KEY `kode_mk` (`kode_mk`),
  CONSTRAINT `ambil_mk_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  CONSTRAINT `ambil_mk_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

show create table ambil_mk;

INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (1,1234567890,'MATH101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (2,1234567890,'COMP101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (3,1234567890,'ENGL101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (4,1234567890,'PHYS101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (5,1234567890,'CHEM101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (6,2345678901,'COMP101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (7,2345678901,'ECON101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (8,2345678901,'ENG101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (9,2345678901,'PHY101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (10,3456789012,'COMP101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (11,3456789012,'MATH101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (12,3456789012,'PHYS101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (13,4567890123,'ENGL101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (14,4567890123,'ECON101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (15,4567890123,'PHY101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (16,5678901234,'ENGL101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (17,5678901234,'CS101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (18,5678901234,'CS201');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (19,6789012345,'MAT101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (20,6789012345,'ENG101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (21,7890123456,'PHY101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (22,7890123456,'ECON201');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (23,8901234567,'MATH201');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (24,8901234567,'PHYS201');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (25,9012345678,'MATH101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (26,9012345678,'ENG101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (27,9012345678,'ENGL101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (28,9012345678,'PHY101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (29,1123456789,'COMP101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (30,1123456789,'CS101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (31,1123456789,'ENG101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (32,1123456789,'ENGL101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (33,2234567890,'ENGL101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (34,2234567890,'CS101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (35,3345678901,'MATH101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (36,3345678901,'ENG101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (37,3345678901,'CS101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (38,3345678901,'PHY101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (39,4456789012,'MATH201');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (40,4456789012,'CS201');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (41,5567890123,'CS101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (42,5567890123,'ENGL101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (43,5567890123,'ENG101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (44,6678901234,'ECON101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (45,7789012345,'ECON101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (46,8890123456,'ECON101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (47,9901234567,'MATH101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (48,1012345678,'CS101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (49,1123456790,'ENG101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (50,2234567901,'MATH101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (51,3345679012,'CS101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (52,4456790123,'MATH201');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (53,5567901234,'CS201');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (54,6679012345,'ENGL101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (55,7789012346,'ECON101');
INSERT INTO ambil_mk(id,nim,kode_mk) VALUES (56,8890123457,'MATH101');

