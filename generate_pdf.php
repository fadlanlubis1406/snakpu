<?php 

require_once "vendor/autoload.php";
require_once "config.php";

use Dompdf\Dompdf;
use Dompdf\Options;


$select_orders = mysqli_query($conn, "SELECT * FROM `orders`") or die('query failed');
$query = mysqli_fetch_all($select_orders);

$options = new Options();
$options->set("isHtml5ParserEnabled", true);
$options->set("isPhpEnabled", true);

$dompdf = new Dompdf($options);

$html = '
<html>
    <head>
        <style>
            body {
            font-family: Arial, sans-serif;
            }

            h1 {
            color: #333;
            }

            table {
            width: 100%;
            border-collapse: collapse;
            }

            th,
            td {
            border: 1px solid #ddd;
            padding: 8px;
            }

            th {
            background-color: #f2f2f2;
            }
        </style>
        </head>

        <body>
        
        <h1>Daftar Pesanan</h1>
        
<table>
    <tr>
        <td>ID</td>
        <td>Nama</td>
        <td>Email</td>
        <td>Produk</td>
        <td>Total Harga</td>
        <td>Metode Pembayaran</td>
    </tr> 
        ';

$i = 0;
foreach($query as $row)
{
    $html .= '
    <tr>
        <td>'.$i.'</td>
        <td>'.$row[2].'</td>
        <td>'.$row[4].'</td>
        <td>'.$row[7].'</td>
        <td>'.$row[8].'</td>
        <td>'.$row[5].'</td>
    </tr>
    ';
    $i++;
}

$html .= '
</table>
</body>
</html>
';

    $dompdf->loadHtml($html);

$dompdf->render();

$dompdf->stream("daftar_mahasiswa.pdf", array("Attachment" => 0));

$mysqli->close();