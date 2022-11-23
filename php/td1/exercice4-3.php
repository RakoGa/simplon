<?php
    $n = random_int(1, 50);
    $f = $n;

    echo "<p>Nombre choisi (aléatoire de 1 à 50): $n</p>";
    while ($n >= 1) {
        $f *= $n;
        $n--;
    }

    echo $f;        
?>