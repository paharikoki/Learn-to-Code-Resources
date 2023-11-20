create database db_ust;

use db_ust;

create table peserta (
    id_peserta int auto_increment primary key,
    nama_peserta varchar(255),
    pin_peserta varchar(15)
);

select *
from peserta;

show tables;

insert into peserta (nama_peserta, pin_peserta) values
('Budi Santoso', 826560),
('Ani Susanti', 959308),
('Joko Wijaya', 932397),
('Rini Cahyani', 218379),
('Eko Prasetyo', 532555),
('Dewi Lestari', 643719),
('Agus Setiawan', 814451),
('Rina Indah', 120552),
('Faisal Ramadhan', 059863),
('Nina Sari', 512038);

create table jadwaltes (
    id_peserta int primary key,
    hari varchar(255),
    ruang varchar(15),
    lokasi varchar(255)
);
# insert jadwaltes with 10 data
CREATE TABLE jadwaltes (
    id_peserta int primary key,
    hari varchar(255),
    ruang varchar(15),
    lokasi varchar(255)
);

select * from jadwaltes;

INSERT INTO jadwaltes (id_peserta, hari, ruang, lokasi) VALUES
(1, 'Senin', 'A101', 'Gedung A Kuliah'),
(2, 'Selasa', 'B202', 'Gedung B Kuliah'),
(3, 'Rabu', 'C303', 'Gedung C Kuliah'),
(4, 'Kamis', 'D404', 'Gedung D Kuliah'),
(5, 'Jumat', 'E505', 'Gedung A Kuliah'),
(6, 'Senin', 'F606', 'Gedung B Kuliah'),
(7, 'Selasa', 'G707', 'Gedung C Kuliah'),
(8, 'Rabu', 'H808', 'Gedung D Kuliah'),
(9, 'Kamis', 'I909', 'Gedung A Kuliah'),
(10, 'Jumat', 'J1010', 'Gedung B Kuliah');


INSERT INTO jadwaltes (id_peserta, hari, ruang, lokasi) VALUES
(11, 'Senin', 'K1111', 'Gedung C Kuliah'),
(12, 'Selasa', 'L1212', 'Gedung D Kuliah'),
(13, 'Rabu', 'M1313', 'Gedung A Kuliah'),
(14, 'Kamis', 'N1414', 'Gedung B Kuliah'),
(15, 'Jumat', 'O1515', 'Gedung C Kuliah');

select * from jadwaltes;


create table identitas (
    id_peserta int primary key,
    nama_lengkap varchar(255),
    sekolah varchar(255),
    alamat varchar(255)
);

select *
from identitas;

# insert identitas with 10 data

INSERT INTO identitas (id_peserta, nama_lengkap, sekolah, alamat) VALUES
(1, 'Budi Santoso', 'SMA Negeri 1 Jakarta', 'Jl. Merdeka No. 10, Jakarta'),
(2, 'Ani Susanti', 'SMK Teknologi Bandung', 'Jl. Raya Bandung No. 5, Bandung'),
(3, 'Joko Wijaya', 'SMA Kristen Surabaya', 'Jl. Diponegoro No. 8, Surabaya'),
(4, 'Rini Cahyani', 'SMAN 3 Yogyakarta', 'Jl. Malioboro No. 15, Yogyakarta'),
(5, 'Eko Prasetyo', 'SMA Taruna Denpasar', 'Jl. Gajah Mada No. 20, Denpasar'),
(6, 'Dewi Lestari', 'SMK Negeri Malang', 'Jl. Ijen No. 30, Malang'),
(7, 'Agus Setiawan', 'SMA Muhammadiyah Medan', 'Jl. Medan Baru No. 25, Medan'),
(8, 'Rina Indah', 'SMAN 4 Semarang', 'Jl. Pandanaran No. 35, Semarang'),
(9, 'Faisal Ramadhan', 'SMA Santa Ursula Makassar', 'Jl. Makassar Indah No. 40, Makassar'),
(10, 'Nina Sari', 'SMK Telkom Palembang', 'Jl. Palembang Jaya No. 50, Palembang');

# insert identitas & peserta with 5 data
INSERT INTO peserta (nama_peserta, pin_peserta) VALUES
('Hana Putri', '1234'),
('Bima Aditya', '5678'),
('Siska Putra', '9012'),
('Rudi Hartono', '3456'),
('Lina Wijaya', '7890');

select *
from peserta;
select *
from identitas;

INSERT INTO identitas (id_peserta, nama_lengkap, sekolah, alamat) VALUES
(11, 'Hana Putri', 'SMA Negeri 1 Jakarta', 'Jl. Merdeka No. 10, Jakarta'),
(12, 'Bima Aditya', 'SMK Teknologi Bandung', 'Jl. Raya Bandung No. 5, Bandung'),
(13, 'Siska Putra', 'SMA Kristen Surabaya', 'Jl. Diponegoro No. 8, Surabaya'),
(14, 'Rudi Hartono', 'SMAN 3 Yogyakarta', 'Jl. Malioboro No. 15, Yogyakarta'),
(15, 'Lina Wijaya', 'SMA Taruna Denpasar', 'Jl. Gajah Mada No. 20, Denpasar');

select *
from identitas;

-- Tabel Pemesanan
CREATE TABLE Pemesanan (
    NoFaktur varchar(10) primary key,
    KodePembeli varchar(10),
    Tanggal date
);

INSERT INTO Pemesanan (NoFaktur, KodePembeli, Tanggal) VALUES
('000110', 'buy1', '2020-07-01'),
('000111', 'buy2', '2020-07-02'),
('000112', 'buy3', '2020-07-05'),
('000113', 'buy4', '2020-07-05'),
('000114', 'buy5', '2020-07-05');

-- Tabel Pembayaran
CREATE TABLE Pembayaran (
    id_bayar varchar(10) primary key,
    id_pesan varchar(10),
    totalharga int,
    totalbayar int
);

INSERT INTO Pembayaran (id_bayar, id_pesan, totalharga, totalbayar) VALUES
('bayar1', '000110', 650000, 585000),
('bayar2', '000111', 250000, 250000),
('bayar3', '000112', 500000, 450000),
('bayar4', '000113', 400000, 380000),
('bayar5', '000114', 700000, 630000);

-- Tabel Pembeli
CREATE TABLE Pembeli (
    id_pembeli varchar(10) primary key,
    nama varchar(255),
    alamat varchar(255),
    norekening varchar(15)
);

INSERT INTO Pembeli (id_pembeli, nama, alamat, norekening) VALUES
('buy1', 'Suyanti', 'Jakarta', '10024358790'),
('buy2', 'Sumadi', 'Palembang', '21100345780'),
('buy3', 'Zainal', 'Surabaya', '52224300549'),
('buy4', 'Solikin', 'Manado', '76078009126'),
('buy5', 'Zainab', 'Manggarai', '98054230001');

-- Tabel Bank
CREATE TABLE Bank (
    norekening varchar(15) primary key,
    pinrekening varchar(10),
    saldo int
);

INSERT INTO Bank (norekening, pinrekening, saldo) VALUES
('10024358790', '090123', 1000000),
('21100345780', '765546', 500000),
('52224300549', '543981', 20000),
('76078009126', '006712', 350000),
('98054230001', '987667', 2000000);

select *
from pembeli;
select *
from bank;
select *
from pemesanan;
select * from Pembayaran;

# Pembeli dengan Total Belanja di Atas 500000
SELECT p.nama, SUM(pb.totalbayar) AS total_belanja
FROM Pembeli p
JOIN Pemesanan ps ON p.id_pembeli = ps.KodePembeli
JOIN Pembayaran pb ON ps.NoFaktur = pb.id_pesan
GROUP BY p.nama
HAVING SUM(pb.totalbayar) > 500000;

# Data Nama Pembeli dan Rekening Bank
SELECT p.nama, b.norekening
FROM Pembeli p
JOIN Bank b ON p.norekening = b.norekening;

# Detail Transaksi pada Tanggal Tertentu 05-07-2020
SELECT p.nama AS nama_pembeli, ps.NoFaktur, pb.totalbayar AS jumlah_bayar,ps.Tanggal as tanggal_pembelian
FROM Pembeli p
JOIN Pemesanan ps ON p.id_pembeli = ps.KodePembeli
JOIN Pembayaran pb ON ps.NoFaktur = pb.id_pesan
WHERE ps.Tanggal = '2020-07-05';

# Tabel User
CREATE TABLE User (
    IDUser int primary key,
    Nama varchar(255),
    Password varchar(255)
);
# Tabel  Biodata
CREATE TABLE Biodata (
    IDUser int primary key,
    Alamat varchar(255),
    jenis_kelamin varchar(20)
);
# Tabel Keluarga
CREATE TABLE Keluarga (
    IDUser int,
    OrangTua varchar(255),
    alamat varchar(255),
    pekerjaan varchar(255)
);

-- Isi dengan 10 data untuk nama, sesuai dengan dua kata nama Indonesia
INSERT INTO User (IDUser, Nama, Password) VALUES
(1, 'Rudi Hartono', 'pass123'),
(2, 'Siti Nurhaliza', 'abc456'),
(3, 'Bambang Setiawan', 'secret789'),
(4, 'Dewi Anggraini', 'password1'),
(5, 'Ahmad Rizal', 'securepass'),
(6, 'Fitriani Putri', 'mikepass'),
(7, 'Agus Pratama', 'sarah123'),
(8, 'Lia Wijaya', 'davidpass'),
(9, 'Yanti Susanti', 'sophiapass'),
(10, 'Hendri Kurniawan', 'kevinpass');

select *
from User;

-- Isi dengan data untuk Biodata dan Keluarga (sesuaikan dengan kebutuhan)
INSERT INTO Biodata (IDUser, Alamat, jenis_kelamin) VALUES
(1, 'Jalan Merdeka 1', 'Laki-laki'),
(2, 'Jalan Sudirman 2', 'Perempuan'),
(3, 'Jalan Panglima Sudirman 3', 'Laki-laki'),
(4, 'Jalan Gajah Mada 4', 'Perempuan'),
(5, 'Jalan Diponegoro 5', 'Laki-laki'),
(6, 'Jalan Kartini 6', 'Perempuan'),
(7, 'Jalan Hayam Wuruk 7', 'Laki-laki'),
(8, 'Jalan Gatot Subroto 8', 'Perempuan'),
(9, 'Jalan Imam Bonjol 9', 'Laki-laki'),
(10, 'Jalan Pahlawan 10', 'Perempuan');

select *
from biodata;

-- Isi tabel Keluarga dengan nama Indonesia dan Orang Tua (Ayah dan Ibu) untuk ID User 1-10
INSERT INTO Keluarga (IDUser, OrangTua, alamat, pekerjaan) VALUES
(1, 'Bapak Adi Suryanto', 'Jl. Merdeka 1', 'PNS'),
(2, 'Ibu Dewi Susanti', 'Jl. Sudirman 2', 'Guru'),
(3, 'Bapak Budi Raharjo', 'Jl. Pahlawan 3', 'Dokter'),
(4, 'Ibu Rini Setiawan', 'Jl. Gajah Mada 4', 'Wiraswasta'),
(5, 'Bapak Ahmad Hadi', 'Jl. Diponegoro 5', 'Pegawai Swasta'),
(6, 'Ibu Maya Sari', 'Jl. Asia Afrika 6', 'Pengusaha'),
(7, 'Bapak Agus Hermawan', 'Jl. Hayam Wuruk 7', 'Dosen'),
(8, 'Ibu Lia Wijaya', 'Jl. Gatot Subroto 8', 'Arsitek'),
(9, 'Bapak Yanto Susilo', 'Jl. Imam Bonjol 9', 'Pilot'),
(10, 'Ibu Nia Fitriani', 'Jl. Diponegoro 10', 'Polisi');

select * from keluarga;

SELECT U.IDUser, U.Nama, K.OrangTua
FROM User U
INNER JOIN Keluarga K ON U.IDUser = K.IDUser;

SELECT K.*, B.Alamat, B.jenis_kelamin
FROM Keluarga K
INNER JOIN Biodata B ON K.IDUser = B.IDUser;
