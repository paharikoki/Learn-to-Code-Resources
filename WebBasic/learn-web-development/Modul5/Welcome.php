<!DOCTYPE html>
<html>
<head>
    <title>Ucapan Selamat Datang</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center">Ucapan Selamat Datang</h1>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <form method="post" action="" class="mb-3">
                <label for="username" class="form-label">Masukkan Username:</label>
                <div class="input-group mb-3">
                    <input type="text" class="form-control" name="username" required>
                    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>

            <?php
            echo isset($_POST['submit']) ? ($_POST['username'] === "alanlestari" ? "<div class='alert alert-success' role='alert'>Selamat datang, Alan Lestari!</div>" : "<div class='alert alert-danger' role='alert'>Masukkan username yang benar untuk melanjutkan.</div>") : '';
            ?>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
