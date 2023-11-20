use belajar;

# Dapatkan data mahasiswa yang mengambil matakuliah. Selesaikan dengan
# pendekatan join eksplisit dan implisit. Hindari duplikasi data.

SELECT m.nama AS nama_mahasiswa, m.nim, a.kode_mk, mk.nama_mk
FROM mahasiswa m
INNER JOIN ambil_mk a ON m.nim = a.nim
INNER JOIN matakuliah mk ON a.kode_mk = mk.kode_mk;

SELECT m.nama AS nama_mahasiswa, m.nim, a.kode_mk, mk.nama_mk
FROM mahasiswa m, ambil_mk a, matakuliah mk
WHERE m.nim = a.nim
AND a.kode_mk = mk.kode_mk;

# Kelompokkan data mahasiswa yang tidak mengambil matakuliah berdasarkan jenis
# kelaminnya, kemudian hitung banyaknya

SELECT m.jk AS jenis_kelamin, COUNT(a.nim) AS jumlah_mahasiswa_tidak_ambil_mk
FROM mahasiswa m
LEFT JOIN ambil_mk a ON m.nim = a.nim
WHERE a.nim IS NULL
GROUP BY m.jk;

# Dapatkan nim dan nama mahasiswa yang mengambil metakuliah beserta kode_mk
# dan nama_mk yang diambilnya. Selesaikan dengan pendekatan join eksplisit dan
# implisit
# eksplisit Query
SELECT m.nim, m.nama, a.kode_mk, mk.nama_mk
FROM mahasiswa m
INNER JOIN ambil_mk a ON m.nim = a.nim
INNER JOIN matakuliah mk ON a.kode_mk = mk.kode_mk;
# Specific Query
SELECT m.nim, m.nama, mk.kode_mk, mk.nama_mk
FROM mahasiswa m
JOIN ambil_mk am ON m.nim = am.nim
JOIN matakuliah mk ON am.kode_mk = mk.kode_mk
WHERE mk.kode_mk = 'COMP101';

# implisit Query
SELECT m.nim, m.nama, a.kode_mk, mk.nama_mk
FROM mahasiswa m, ambil_mk a, matakuliah mk
WHERE m.nim = a.nim AND a.kode_mk = mk.kode_mk;

# Specific Query
SELECT m.nim, m.nama, mk.kode_mk, mk.nama_mk
FROM mahasiswa m, ambil_mk am, matakuliah mk
WHERE m.nim = am.nim
AND am.kode_mk = mk.kode_mk
AND mk.kode_mk = 'COMP101';

# Dapatkan nim, nama, dan total sks yang diabil oleh mahasiswa dimana total sksnya
# lebih dar 4 dan kurang dari 10

SELECT m.nim, m.nama, SUM(mk.sks) AS total_sks
FROM mahasiswa m
INNER JOIN ambil_mk a ON m.nim = a.nim
INNER JOIN matakuliah mk ON a.kode_mk = mk.kode_mk
GROUP BY m.nim, m.nama
HAVING total_sks > 4 AND total_sks < 10;

# Dapatkan data matakuliah yang tidak diambil oleh mahasiswa terdaftar (mahasiswa
# yang terdaftar adalah mahasiswa yang tercatat di tabel mahasiswa)

SELECT m.kode_mk, m.nama_mk
FROM matakuliah m
LEFT JOIN ambil_mk a ON m.kode_mk = a.kode_mk
WHERE a.kode_mk IS NULL;
