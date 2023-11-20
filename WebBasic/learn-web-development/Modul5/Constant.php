<!DOCTYPE html>
<html>
<head>
    <title>Konstanta dalam PHP</title>
</head>
<body>

<h1>Konstanta dalam PHP</h1>

<?php
// Mendefinisikan konstanta
define("PI", 3.14);
define("SITE_NAME", "NamaSitus.com");
define("MAX_LOGIN_ATTEMPTS", 5);
define("ENABLE_FEATURE", true);
?>

<p>Nilai dari konstanta PI adalah: <?php echo PI; ?></p>
<p>Nama situs: <?php echo SITE_NAME; ?></p>
<p>Maksimum percobaan login: <?php echo MAX_LOGIN_ATTEMPTS; ?></p>
<p>Fitur diaktifkan? <?php echo (ENABLE_FEATURE ? 'Ya' : 'Tidak'); ?></p>

</body>
</html>
