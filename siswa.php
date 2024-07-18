<?php
$buah = array("Apel", "Pisang", "Jeruk");
$umur = array("Peter" => 35, "Ben" => 37, "Joe" => 43);

// Menggunakan in_array() untuk memeriksa apakah nilai ada dalam indexed array
if (in_array("Pisang", $buah)) {
    echo "Pisang ditemukan dalam indexed array!<br>";
} else {
    echo "Pisang tidak ditemukan dalam indexed array.<br>";
}

// Menggunakan array_search() untuk mencari nilai dalam associative array
$kunci = array_search(37, $umur);
if ($kunci !== false) {
    echo "Umur 37 ditemukan dengan kunci: " . $kunci . "<br>";
} else {
    echo "Umur 37 tidak ditemukan dalam associative array.<br>";
}

// Menggunakan array_key_exists() untuk memeriksa apakah kunci ada dalam associative array
if (array_key_exists("Ben", $umur)) {
    echo "Kunci 'Ben' ditemukan dalam associative array!<br>";
} else {
    echo "Kunci 'Ben' tidak ditemukan dalam associative array.<br>";
}
?>
