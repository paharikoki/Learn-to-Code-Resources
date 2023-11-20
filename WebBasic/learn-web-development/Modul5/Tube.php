<!DOCTYPE html>
<html>
<head>
    <title>Hitung Volume Tabung</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center">Hitung Volume Tabung</h1>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <form method="post" action="" class="mb-4">
                <div class="mb-3">
                    <label for="radius" class="form-label">Jari-jari:</label>
                    <input type="number" step="any" class="form-control" name="radius" required>
                </div>

                <div class="mb-3">
                    <label for="height" class="form-label">Tinggi:</label>
                    <input type="number" step="any" class="form-control" name="height" required>
                </div>

                <button type="submit" name="calculate" class="btn btn-primary">Hitung Volume</button>
            </form>

            <?php
            // Periksa jika formulir telah dikirim
            if(isset($_POST['calculate'])){
                // Ambil nilai yang dimasukkan pengguna
                $radius = $_POST['radius'];
                $height = $_POST['height'];

                // Hitung volume tabung
                $volume = M_PI * pow($radius, 2) * $height;

                // Tampilkan hasilnya
                echo "<div class='alert alert-success'>";
                echo "<h4 class='alert-heading'>Hasil</h4>";
                echo "Jari-jari: $radius<br>";
                echo "Tinggi: $height<br>";
                echo "Volume tabung: $volume satuan kubik";
                echo "</div>";
            }
            ?>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
