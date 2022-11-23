<?php
    $n = $_GET["number"];
    $f = $n;

    while ($n >= 1) {
        $f *= $n;
        $n--;
    }

    echo $f;        
?>