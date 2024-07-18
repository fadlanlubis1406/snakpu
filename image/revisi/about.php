<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>Tentang kami</h3>
    <p> <a href="home.php">home</a></p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="flowers/suci.jpg" alt="">
        </div>

        <div class="content">
               <h3>pesan sekarang?</h3>
             <p>  </p>
            <a href="shop.php" class="btn">Belanja sekarang</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3> </h3>
            <p></p>
            
       


<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>