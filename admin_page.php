<?php

@include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:login.php');
   exit();
}

$conn = mysqli_connect('localhost', 'root', '', 'shop_db') or die('connection failed');

function getTotal($conn, $query) {
    $result = mysqli_query($conn, $query) or die('Query failed');
    $total = 0;
    while($row = mysqli_fetch_assoc($result)){
        $total += $row['total_price'];
    }
    return $total;
}

function getCount($conn, $query) {
    $result = mysqli_query($conn, $query) or die('Query failed');
    return mysqli_num_rows($result);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>dashboard</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>
   
<?php @include 'admin_header.php'; ?>

<section class="dashboard">

   <h1 class="title">dashboard</h1>

   <div class="box-container">

      <div class="box">
         <h3>Rp.<?php echo getTotal($conn, "SELECT total_price FROM `orders` WHERE payment_status = 'pending'"); ?></h3>
         <p>total tertunda</p>
      </div>

      <div class="box">
         <h3>Rp.<?php echo getTotal($conn, "SELECT total_price FROM `orders` WHERE payment_status = 'completed'"); ?></h3>
         <p>pembayaran berhasil</p>
      </div>

      <div class="box">
         <h3><?php echo getCount($conn, "SELECT * FROM `orders`"); ?></h3>
         <p>tempat pesanan</p>
      </div>

      <div class="box">
         <h3><?php echo getCount($conn, "SELECT * FROM `products`"); ?></h3>
         <p>produk ditambahkan</p>
      </div>

      <div class="box">
         <h3><?php echo getCount($conn, "SELECT * FROM `users` WHERE user_type = 'user'"); ?></h3>
         <p>pengguna</p>
      </div>

      <div class="box">
         <h3><?php echo getCount($conn, "SELECT * FROM `users` WHERE user_type = 'admin'"); ?></h3>
         <p>admin</p>
      </div>

      <div class="box">
         <h3><?php echo getCount($conn, "SELECT * FROM `users`"); ?></h3>
         <p>total akun</p>
      </div>

      <div class="box">
         <h3><?php echo getCount($conn, "SELECT * FROM `message`"); ?></h3>
         <p>pesan baru</p>
      </div>

   </div>

</section>

<script src="js/admin_script.js"></script>

</body>
</html>
