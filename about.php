<?php

@include 'config.php';

session_start();

// $user_id = $_SESSION['user_id'];

// if(!isset($user_id)){
//    header('location:login.php');
// }

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

   <style>
    .col-12
    {
        width: 100%;
        height: auto;
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        /* float: left; */
    }
    .box2
    {
        width:200px;
        height:300px;
        background-color: white;
        box-shadow: 5px 10px rgba(0, 0, 0, 0.016);
        border-radius: 10px;
        border:1px solid rgba(0, 0, 0, 0.21);
        /* float: left; */
        margin:5px;
    }

    .box2 img
    {
        width: 150px;
        height: 150px;
        border-radius: 100%;
        margin-left: 25px;
        margin-top: 25px;
    }

    .badge-success
    {
        padding: 10px;
        background-color: green;
        margin-top: 10px;
        color: white;
        border-radius: 10px;
    }
   </style>

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>Tentang kami</h3>
    <p> <a href="home.php">home</a></p>
</section>

<section class="about">

    <div class="col-12">
        <div class="box2">
                <img src="image/capah.jpg" alt="">
                <br></br>
                <center>
                    <h2>KHAIRIL RIZKY CAPAH</h2>
                    <br>
                    <h3>2212000052</h3>
                    <br><br>
                    <span class="badge-success">
                        <strong>KETUA</strong>
                    </span>
                </center>
        </div>
        <div class="box2">
                <img src="image/ananda.jpg" alt="">
                <br></br>
                <center>
                    <h2>RISKIN ANANDA</h2>
                    <br>
                    <h3>2212000070</h3>
                    <br><br>
                    <span class="badge-success">
                        <strong>ANGGOTA</strong>
                    </span>
                </center>
        </div>
        <div class="box2">
                <img src="image/liza.jpg" alt="">
                <br></br>
                <center>
                    <h2>ALIZA ZAHRA AYUB</h2>
                    <br>
                    <h3>2212000040</h3>
                    <br><br>
                    <span class="badge-success">
                        <strong>ANGGOTA</strong>
                    </span>
                </center>
        </div>
        <div class="box2">
                <img src="image/suci.jpg" alt="">
                <br></br>
                <center>
                    <h2>SUCI NUR ADAWIYAH</h2>
                    <br>
                    <h3>2212000073</h3>
                    <br><br>
                    <span class="badge-success">
                        <strong>ANGGOTA</strong>
                    </span>
                </center>
        </div>
        <div class="box2">
                <img src="image/wira.jpg" alt="">
                <br></br>
                <center>
                    <h2>WIRA ARIANTO</h2>
                    <br>
                    <h3>2212000076</h3>
                    <br><br>
                    <span class="badge-success">
                        <strong>ANGGOTA</strong>
                    </span>
                </center>
        </div>
    </div>
   

   <br></br>
   <br></br>
   <br></br>

</div>

<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>