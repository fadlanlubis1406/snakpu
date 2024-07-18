<?php
// Mendefinisikan array tiga dimensi
$data3D = array(
    array(
        array(1, 2),
        array(3, 4)
    ),
    array(
        array(5, 6),
        array(7, 8)
    )
);

// Menampilkan isi array
foreach ($data3D as $dimensi2) {
    foreach ($dimensi2 as $dimensi1) {
        foreach ($dimensi1 as $nilai) {
            echo $nilai . " ";
        }
        echo "<br>";
    }
    echo "<br>";
}
?>
