<!DOCTYPE html>
<html>
<head>
    <title>Klasifikasi Nilai</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center">Klasifikasi Nilai</h1>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <form method="post" action="">
                <div class="mb-3">
                    <label for="nama" class="form-label">Nama:</label>
                    <input type="text" class="form-control" name="nama" required>
                </div>
                <div class="mb-3">
                    <label for="nilai" class="form-label">Nilai:</label>
                    <input type="number" class="form-control" name="nilai" required>
                </div>
                <button type="submit" name="submit" class="btn btn-primary w-100">Submit</button>
            </form>

            <?php
            if (isset($_POST['submit'])) {
                $nama = $_POST['nama'];
                $nilai = $_POST['nilai'];
                $keterangan = '';

                if ($nilai >= 80) {
                    $keterangan = 'A';
                } elseif ($nilai >= 70) {
                    $keterangan = 'B';
                } elseif ($nilai >= 60) {
                    $keterangan = 'C';
                } elseif ($nilai >= 50) {
                    $keterangan = 'D';
                } else {
                    $keterangan = 'Tidak Lulus';
                }

                echo "<div class='alert alert-info mt-3' role='alert'>Nama: $nama<br>Nilai: $nilai<br>Keterangan: $keterangan</div>";
            }
            ?>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
