<?php
// PHP
for ($i = 22081; $i < 22086; $i++) {
    for ($j = 1; $j < 34; $j++) {
        echo $i . "00000" . str_pad($j, 2, "0", STR_PAD_LEFT) . "\n<br>";
    };
    echo "<br>";
}

