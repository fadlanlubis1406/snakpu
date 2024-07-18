<?php
$matriks = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
];

// Menampilkan isi matriks
for ($i = 0; $i < count($matriks); $i++) {
    for ($j = 0; $j < count($matriks[$i]); $j++) {
        echo $matriks[$i][$j] . " ";
    }
    echo "<br>";
}
?>