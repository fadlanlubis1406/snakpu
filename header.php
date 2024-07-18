<?php

if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}

session_start();

?>

<header class="header">

    <div class="flex">

        <a href="home.php" class="logo">Snack pu.</a>

        <nav class="navbar">
            <ul>
                <li><a href="home.php">Home</a></li>
                <li><a href="#">Halaman+</a>
                    <ul>
                        <li><a href="about.php">Tentang</a></li>
                        <!-- <li><a href="contact.php">Kontak</a></li> -->
                    </ul>
                </li>
                <li><a href="shop.php">Belanja</a></li>
                <?php if(isset($_SESSION['user_id'])){ ?>
                <li><a href="orders.php">Pesanan</a></li>
                <?php } ?>
                <li><a href="#">Akun +</a>
                    <ul>
                        <?php if(!isset($_SESSION['user_id'])){ ?>
                        <li><a href="login.php">login</a></li>
                        <li><a href="register.php">daftar</a></li>
                        <?php }else{ ?>
                        <li><a href="logout.php">Logout</a></li>
                        <?php } ?>
                    </ul>
                </li>
            </ul>
        </nav>

        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <a href="search_page.php" class="fas fa-search"></a>
            <div id="user-btn" class="fas fa-user"></div>
            <?php
                $select_wishlist_count = mysqli_query($conn,"SELECT * FROM `wishlist` WHERE user_id = '$user_id'") or die('query failed');
                $wishlist_num_rows = mysqli_num_rows($select_wishlist_count);
            ?>
            <!-- <a href="wishlist.php"><i class="fas fa-heart"></i><span>(<?php echo $wishlist_num_rows; ?>)</span></a> -->
            <?php
                $select_cart_count = mysqli_query($conn, "SELECT * FROM `cart` WHERE user_id = '$user_id'") or die('query failed');
                $cart_num_rows = mysqli_num_rows($select_cart_count);
            ?>
            <a href="cart.php"><i class="fas fa-shopping-cart"></i><span></span></a>
        </div>

        <div class="account-box">
            <p>username : <span><?php echo $_SESSION['user_name']; ?></span></p>
            <p>email : <span><?php echo $_SESSION['user_email']; ?></span></p>
            <a href="logout.php" class="delete-btn">logout</a>
        </div>

    </div>

</header>