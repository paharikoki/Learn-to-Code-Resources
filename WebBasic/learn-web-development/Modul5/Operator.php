<!DOCTYPE html>
<html>
<head>
    <title>Operasi dalam PHP</title>
</head>
<body>

<h1>Operasi dalam PHP</h1>

<?php
// Operator Aritmatika
$a = 10;
$b = 5;

$penjumlahan = $a + $b;
$pengurangan = $a - $b;
$perkalian = $a * $b;
$pembagian = $a / $b;
$modulus = $a % $b;

// Operator Relasional
$samaDengan = $a == $b;
$tidakSamaDengan = $a != $b;
$lebihBesarDari = $a > $b;
$kurangDariSamaDengan = $a <= $b;

// Operator Logika
$x = true;
$y = false;

$andResult = $x && $y;
$orResult = $x || $y;
$notResult = !$x;
?>

<!-- Menampilkan hasil dalam kelompok -->
<h2>Operasi Aritmatika:</h2>
<ul>
    <li> $a = 10;</li>
    <li> $b = 5;</li>
    <li>Penjumlahan: $a + $b = <?php echo $penjumlahan; ?></li>
    <li>Pengurangan: $a - $b = <?php echo $pengurangan; ?></li>
    <li>Perkalian: $a * $b = <?php echo $perkalian; ?></li>
    <li>Pembagian: $a / $b = <?php echo $pembagian; ?></li>
    <li>Modulus: $a % $b = <?php echo $modulus; ?></li>
</ul>

<h2>Operasi Relasional:</h2>
<ul>
    <li> $a = 10;</li>
    <li> $b = 5;</li>
    <li>Sama dengan: $a == $b  <?php echo $samaDengan ? 'Ya' : 'Tidak'; ?></li>
    <li>Tidak sama dengan: $a != $b  <?php echo $tidakSamaDengan ? 'Ya' : 'Tidak'; ?></li>
    <li>Lebih besar dari: $a >= $b  <?php echo $lebihBesarDari ? 'Ya' : 'Tidak'; ?></li>
    <li>Kurang dari atau sama dengan: $a <= $b  <?php echo $kurangDariSamaDengan ? 'Ya' : 'Tidak'; ?></li>
</ul>

<h2>Operasi Logika:</h2>
<ul>
    <li> $x = true;</li>
    <li> $y = false;</li>
    <li>AND logika: $x && $y <?php echo $andResult ? 'Ya' : 'Tidak'; ?></li>
    <li>OR logika: $x || $y <?php echo $orResult ? 'Ya' : 'Tidak'; ?></li>
    <li>NOT logika: !$x <?php echo $notResult ? 'Ya' : 'Tidak'; ?></li>
</ul>

</body>
</html>
