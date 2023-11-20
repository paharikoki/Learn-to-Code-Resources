<!DOCTYPE html>
<html>
<head>
    <title>My Biodata</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center">My Biodata</h1>

    <?php
    $name = "Ahmad Alan Lestari";
    $age = 19;
    $email = "22081000007@student.unmer.ac.id";
    $address = "Kepanjen, Kab Malang, Jawa Timur";
    ?>

    <div class="alert alert-primary" role="alert">
        <h4 class="alert-heading">Name: <?php echo $name; ?></h4>
        <p class="mb-0">Age: <?php echo $age; ?></p>
        <p class="mb-0">Email: <?php echo $email; ?></p>
        <p class="mb-0">Address: <?php echo $address; ?></p>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
