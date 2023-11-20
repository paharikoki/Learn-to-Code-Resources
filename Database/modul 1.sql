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