<!DOCTYPE html>
<html>
<head>
    <title>Type Casting Example</title>
</head>
<body>

<h1>Contoh Type Casting</h1>

<?php
// Type casting dari string ke integer
$stringNumber = "123";
$integerNumber = (int) $stringNumber;

// Type casting dari float ke integer
$floatNumber = 123.45;
$integerValue = (int) $floatNumber;

// Type casting dari integer ke string
$number = 456;
$stringValue = (string) $number;

// Type casting dari boolean ke integer
$boolValue = true;
$intValue = (int) $boolValue;

// Type casting dari integer ke boolean
$numberValue = 0;
$boolResult = (bool) $numberValue;

// Type casting dari string ke float
$stringFloat = "78.9";
$floatValue = (float) $stringFloat;
?>

<ul>
    <li>String to Integer: <?php echo $integerNumber; ?></li>
    <li>Float to Integer: <?php echo $integerValue; ?></li>
    <li>Integer to String: <?php echo $stringValue; ?></li>
    <li>Boolean to Integer: <?php echo $intValue; ?></li>
    <li>Integer to Boolean: <?php echo var_export($boolResult, true); ?></li>
    <li>String to Float: <?php echo $floatValue; ?></li>
</ul>

</body>
</html>
