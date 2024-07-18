-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 05:17 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'lavendor rose', 13, 1, 'lavendor rose.jpg'),
(130, 14, 18, 'red tulipa', 11, 1, 'red tulipa.jpg'),
(131, 14, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(132, 15, 13, 'pink rose', 10, 1, 'pink roses.jpg'),
(133, 15, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(134, 15, 16, 'lavendor rose', 13, 3, 'lavendor rose.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(13, 14, 'shaikh anas', 'shaikh@gmail.com', '0987654321', 'hi, how are you?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(24, 'Boncabe Big-plus', 'Nikmati sensasi renyah makaroni rasa jagung dengan bentuk puff ringan mengembang yang nikmatnya gak tanggung! Rasakan suara kriuk super renyah ', 7000, 'bcbp.jpg'),
(25, 'Boncabe kulit pangsit', 'Rasakan gurih lezatnya camilan pangsit kriuk yang teksturnya super renyah. Sensasi pedas nikmatnya cocok banget buat nemenin di segala suasana, ', 7000, 'bckp.jpg'),
(26, 'Boncabe makaroni krispi', 'â€¢ Makaroni Krispi Level 10\r\nâ€¢ Diformulasikan khusus buat para BonCabe Lovers\r\nâ€¢ Rasa pedas, gurih rempah-rempah dan bumbu tetap bersatu padu\r\nâ€¢ Untuk kenikmatan cemilan kriuk yang mantap\r\nâ€¢ Berat : 150 gr', 10000, 'bcmakj.jpg'),
(27, 'Boncabe makaroni krispy lvl 15', 'BONCABE MAKARONI KRISPY LEVEL 15 [150 G]\r\n\r\n\r\n\r\n.', 12000, 'bcmak.jpg'),
(28, 'Boncabe mie', 'SNACK BONCABE Cobain Sensasi Baru Snack Boncabe Mi Krispi. Crispy Happy Tanpa Tapi !!!!! Unique Selling Point - Tekstur krispi, tidak keras\r\n- Nikmatnya bikin nagih\r\n- Rasa pedas ciri khas Boncabe ', 5600, 'bcmie.jpg'),
(29, 'Boncabe makaroni chees', 'Cobain sensasi baru Snack BonCabe Makaroni Krispi!!\r\nSetelah sukses dengan Snack BonCabe Makaroni Krispi Lev 10 dan 15, kini Snack BonCabe hadir dengan Makaroni Nacho Cheese.', 9500, 'bcnc.jpg'),
(30, 'Beng-beng shareit', 'Makanan ringan atau cemilan dengan rasa coklat yang lezat, dapat mengganjal perut dikala lapar melanda, cocok dikonsumsi bersama keluarga ataupun kerabat terdekat,', 14500, 'bbsh.jpg'),
(31, 'Beng-beng original', 'varian baru\r\nBeng-Beng Regular Wafer [22 g/ 17 pcs/ Box]', 34000, 'bengbeng.jpg'),
(32, 'Chitato rasa keju', '--Rasa Intens Keju: Chitato rasa keju dikenal dengan rasa keju yang kaya dan intens. Setiap gigitan memberikan sentuhan gurih dan creamy yang khas dari keju.\r\n\r\nTekstur Keripik: Keripik Chitato memiliki tekstur yang renyah dan empuk di dalam, memberikan pengalaman mengunyah yang memuaskan.', 15000, 'chikeju.jpg'),
(33, 'Chitato sara mie goreng', '-Sertifikat: Halal\r\nKondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Snack', 35000, 'chimi.jpg'),
(34, 'chitato rasa original flavor', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: SERBA HEMAT 14\r\nChitato Rasa Asli 68gr terbuat dari kentang asli pilihan yang diiris lebih tipis dan dipadu dengan bumbu berkualitas.', 9000, 'chiSalty.jpg'),
(35, 'chitato spicy', 'menawarkan kenikmatan maksimal rasa saus pedas chicken-wings. Potongan kentang wavy mengunci bumbu-bumbu untuk berikan bold flavors yang jadikan sensasi nendang di mulut', 9500, 'chiSpicy.jpg'),
(36, 'chitato rasa ayam bakar', 'CHITATO SPICY GRILLED CHICKEN RASA AYAM BUMBU BAKAR 68GR', 14000, 'chitatoayam.jpeg'),
(37, 'Chitato beef BBQ', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Semua Etalase\r\nChitato Beef Barbecue (Beef Editions) menawarkan kenikmatan maksimal rasa saus barbecue sapi panggang.', 20000, 'chitatobeefbarbecue.jpg'),
(38, 'Doritos 3D', 'varian : chilli pedan , manis, dan asin\r\ndengan kemasan 40 g', 15000, 'dor3d.jpg'),
(39, 'doritos BBQ', 'Kondisi: Baru\r\nWaktu Preorder: 7 Hari\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Makanan ringan', 24000, 'dorbbq.jpg'),
(40, 'doritos bit', 'varian: pedas \r\nberat : 115 gram\r\nrasa guruh, asin dan pedas', 24000, 'dorbit.jpg'),
(41, 'Doritos chill', 'varian : pedas \r\nberat : 75 gram\r\ndengan tambahan rasa manis', 20000, 'dorchi.jpg'),
(42, 'doritos cool ranch', 'varian rasa : original \r\nberat : 76 g\r\nrasa original dan rasa manis gurih', 19000, 'dorcol.jpg'),
(43, 'doritos corn', 'varian rasa : jagung\r\nberat : 80g\r\nrasa manis guruh yang nagih', 15000, 'dorcon.jpg'),
(44, 'doritos dinamita', 'varian: extra  pedas \r\nberat :110 g\r\ndengan rasa meledak ledak', 34000, 'dordim.jpg'),
(45, 'doritos flaming hot', 'varian : extra pedas\r\nberat :109  gram\r\ndengan tambahan rasa jeruk lemon', 20500, 'dorfh.jpg'),
(46, 'doritos tangy cheese', 'varian : keju\r\nrasa manis dan gurih\r\nberat ; 67 gram', 17500, 'dorgb.jpg'),
(47, 'doritos naco cheese', 'varian : hot spicy\r\nberat 67 g\r\ndengan tambahan rasa gurih', 10000, 'dorke.jpg'),
(48, 'doritos mix', 'varian : jagung \r\nberat : 90 g\r\ndengan tambahan rasa pedas', 19000, 'dormix.jpg'),
(49, 'doritos mix max', 'varian rasa : chesse\r\nberat : 45 g\r\nvarian nacho', 17500, 'dormixm.jpg'),
(50, 'doritos multi pack', 'varian : extra 10%\r\nrasa :gurih, asin dan manis\r\ncocok dimakan saat lagi ngumpul ', 17000, 'dormp.jpg'),
(51, 'Doritos No.1 Tortila', 'varian : original \r\ntortila no 1\r\nberat: 80g\r\nrasa: guruih ,manis', 25000, 'dorno.jpg'),
(52, 'Doritos paketon', 'varian : pedas\r\nberat 78g\r\ndengan rasa pedas gurih', 19000, 'dorpak.jpg'),
(53, 'Doritos party size', 'varian :extra \r\nberat 185g\r\n dengan rasa : pedas gurih\r\n', 34000, 'dorps.jpg'),
(54, 'Doritos silent', 'Doritos varian :original silence\r\nberat 110g\r\nvarian rasa: gurih', 19000, 'dorsil.jpg'),
(55, 'Doritos spicy nacho', 'varian: naco hot\r\nberat: 80g\r\nvarian rasa pedas, manis', 17500, 'dorsn.jpg'),
(56, 'Doritos spicy sweet', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Semua Etalase\r\nExpired : november 2021', 110000, 'dorsw.jpg'),
(57, 'Doritos taco', 'Kondisi: Baru\r\nWaktu Preorder: 7 Hari\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Makanan ringan', 78000, 'dorta.jpg'),
(58, 'Doritos taptio', 'varian rasa : gurih\r\nberat 70g\r\n dengan varian tersedia:\r\nmanis ,asin, manis ', 67000, 'dortap.jpg'),
(59, 'Doritos Twested lime', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Snacks Import\r\nDORITOS , TORTILLA CHIPS | PRODUCT OF USA\r\nNett Weight : 7 oz ( 198,4 gram )', 80000, 'dortl.jpg'),
(60, 'Doritos Tex-Mex', 'kondisi: baru\r\nvarian rasa: gurih\r\nberat 170 gram \r\n', 19000, 'dortx.jpg'),
(61, 'Lays rasa asin klasik', 'kodisi: baru \r\nvarian rasa: asin klasik\r\nberat 170 gram', 19000, 'lysac.jpg'),
(62, 'Lays rasa ayam panggang ', 'kodisi : baru\r\nvarian : ayam panggang\r\nberat : 160', 17500, 'lysap.jpg'),
(63, 'Lays Baked', 'Tersedia dalam varian :\r\n- Lays Oven Baked Cheese Flavor : 89 Gram\r\n- Lays Oven Baked Herb Salt Flavor : 89 Gram\r\n- Lays Oven Baked Hokkaido Gratin Milk Flavor : 97', 19000, 'lysba.jpg'),
(64, 'Lays Barbecue', 'varian : barbecue\r\nrasa: pedas gurih\r\nberat 190 gram', 17500, 'lysbbc.jpg'),
(65, 'Lays BBQ fiesta', 'varian : BBQ\r\nberat : 190 gram\r\nvarian rasa : fiesta, pedas', 17500, 'lysbbq.jpg'),
(66, 'Lays chedar sour cream', 'Sertifikat: Halal\r\nKondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Snack', 25000, 'lysced.jpg'),
(67, 'Lays clasik', 'sertivikasi : halal\r\nberat 178 gram\r\nvarian rasa original', 12000, 'lyscl.jpg'),
(68, 'Lays chilli lemon', 'varian : pedas\r\nberat 69 gram \r\ndengan varian rasa asam lemon dan manis', 23000, 'lysclem.jpg'),
(69, 'Lays flaming hot', 'varian : extra pedas \r\nberat 79 gram\r\nvarian rasa pedas, manis ', 4000, 'lysfh.jpg'),
(70, 'Lays hot spicy', 'varian : pedas hot\r\nberat 68 gram \r\nvarian tersedia : pedas gurih', 3500, 'lyshs.jpg'),
(71, 'Lays Lemon', 'varian ; lemon \r\nberat  80 gram\r\nvarian rasa:  manis, asam', 19000, 'lyslem.jpg'),
(72, 'Lays lightly salted', 'varian :salted\r\ndengan ukuran  party size \r\nvarian rasa : clasik', 20000, 'lysls.jpg'),
(73, 'Lays Max', 'varian :keripik lembut\r\nberat : 205 gram\r\ndan varian rasa: manis dan gurih', 18900, 'lysm.jpg'),
(74, 'Lays dill pickle', 'varian : piclkle original\r\n berat : 69 gram \r\nvarian rasa gurih dan asin', 9000, 'lyspicl.jpg'),
(75, 'Lays poppables', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: BUMBU MASAK INSTAN\r\nLays POPPABLES (Seandainya Salt Flavor)\r\nisi 90gr', 140000, 'lyspob.jpg'),
(76, 'Lays party pack', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Semua Etalase\r\nLay''s Rasa Rumput Laut Keripik hadir dengan kombinasi unik rasa rumput laut yang menghadirkan citarasa kelezatan sempurna di mulut Anda.', 90000, 'lyspp.jpg'),
(77, 'Lays rasa rumput laut', 'Sertifikat: Halal\r\nKondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: ANEKA SNACK\r\nChiki Lays Rasa Rumput Laut\r\n1 Pak Isi 10 Pcs @ 14 gram\r\n', 18000, 'lysrm.jpg'),
(78, 'Lays rasa salt', 'varian: salmon teriayki\r\nberat :98 gram\r\nvarian rasa : original ', 24000, 'lyssal.jpg'),
(79, 'Lays sharing pack', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Semua Etalase\r\nsudah ganti nama jadi chitato lite ya', 30000, 'lyssp.jpg'),
(80, 'Lays sour cream', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Snackfood\r\nexpired date 30 Juli 2023', 36000, 'lysscrim.jpg'),
(81, 'Lays salmon teriyaki', 'varian rasa :teriyaki\r\n manis \r\nberat " 59 gram \r\n', 34000, 'lyssal.jpg'),
(82, 'Lays sweet spicy Honey', 'varian :spicy honey\r\nberat :80 gram \r\nvaria rasa : manis dan gurih', 19000, 'lysssp.jpg'),
(83, 'Lays wavy', 'varian : original wavy\r\nberat :87 gram\r\nvarian rasa pedas, manis , BBQ', 80000, 'lyswv.jpg'),
(84, 'pillow cocopandan', 'varian : pandan\r\nberat :60 gram\r\nvarian rasa: pedas bersih', 18000, 'pilccp.jpg'),
(85, 'pillow cocholate', 'varian: chocolate\r\nberat :89 gram\r\nvarian rasa : choclate, manis', 19000, 'pilco.jpg'),
(86, 'pillow durian', 'varian: durian\r\nberat :59 gram\r\nvarian : manis dan gurih', 19000, 'pildur.jpg'),
(87, 'pillow rasa keju', 'pillow rasa keju yang satuini mudah dibawa kemana mana', 4000, 'pilke.jpg'),
(88, 'pillow rasa ubi', 'pillow rasa ubi yang bakalan bikin keseharian kalian jadi makin tenang ', 7000, 'pilub.jpg'),
(89, 'Potabee rasa ayam', 'dengan rasa ayam kamu pasti ketagihan!', 7000, 'potayam.jpg'),
(90, 'Potabee rasa sapi BBQ', 'daging panggang dengan bumbu BBQ dijamin bikin nagih!', 9000, 'potbbq.jpg'),
(91, 'Potabee black truffle', 'varian :black trufle\r\nberat 90 gram\r\nvarian rasa: gurih', 15000, 'potbtruffle.jpg'),
(92, 'potabee happy honey butter', 'varian: sapota\r\nberat: 67 gram \r\nvarian rasa: original ', 20000, 'pothhb.jpg'),
(93, 'potabee ayam lada', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Semua Etalase\r\nPotabee Rasa Ayam Bakar 68gr_1c30p POTABEE Potato Chips Ayam Bakar 35 g adalah camilan keripik kentang persembahan Wings yang memiliki rasa khas kentang asli meski diberi sedikit rasa ayam bakar, rasa kentangnya masih benar-benar terasa.', 20000, 'qtayamlada.jpg'),
(94, 'Qtela balado', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Qtela\r\nQtela Singkong Balado 180 Gr - 2 Pcs\r\n', 17000, 'qtbalado.jpg'),
(95, 'Qtela BBQ', 'varian : barbacue\r\nberat :76\r\nvarian rasa : original \r\n', 20000, 'qtbbq.jpg'),
(96, 'Qtela original', 'varian :original\r\nberat : 101gram\r\nvariasi rasa : pedas', 1500, 'qtori.jpg'),
(97, 'Qtela rumput laut', 'varian : rumput laut\r\nberat : 70 gram\r\nvarian rasa : original, gurih', 19000, 'qtrl.jpg'),
(98, 'Qtela saus keju', 'varian : cheeses\r\nberat 40 gram \r\nvarian rasa : pedas ,manis', 25000, 'qtsk.jpg'),
(99, 'Qtela tempe', 'Kondisi: Baru\r\nMin. Pemesanan: 1 Buah\r\nEtalase: Chiki Ball\r\nQtela Tempe Cabai Rawit 55 gr\r\n\r\nQtela Tempe rasa cabai rawit merupakan camilan gurih enak berbahan dasar tempe asli yang dipotong tipis-renyah yang seru saat dimakan. ', 6000, 'qttem.jpg'),
(100, 'Taro coboy stick', 'varian taro yang cocok dibawa kemana mana apalagi sambil bertualang', 9000, 'tarocs.jpg'),
(101, 'Taro italian fizza', 'Taro Net, snack renyah berbentuk unik yang berpadu dengan kelezatan rasa kentang barbekyu yang seru.', 7000, 'taroip.jpg'),
(102, 'Taro potato BBQ', 'Aneka produk makanan ringan atau cemilan lezat yang mengenyangkan, cocok dikonsumsi di sela-sela waktu padat ataupun waktu bersantai.\r\n', 9000, 'taropbbq.jpg'),
(103, 'Taro seaweed ', ' rasa rumput lautnya yang gurih ini akan membawa Anda pada berbagai momen yang tak terlupakan. Kerenyahan istimewa dari Taro Net rasa rumput laut ini akan menjadi kesukaan siapa saja yang menikmatinya. Ideal dinikmati saat santai bersama keluarga.', 7000, 'taroseawed.jpg'),
(104, 'Taro teriyaki Barbecue', 'camilan yang hingga saat ini banyak dikonsumsi adalah Snack Taro. Yap, snack Taro terus melakukan inovasi dengan menghadirkan beragam rasa yang sudah pasti disukai oleh anak â€“ anak.', 10000, 'tarotb.jpg'),
(105, 'TRICKS-BBQ', 'Snack kentang dengan varian rasa Asia yang khas membuat Tricks menjadi favorit semua kalangan. Dengan rasa Original, Asian BBQ, Kimchi, Rendang, dan Bulgogi pastinya bakal bikin kamu ketagihan.', 10000, 'trbbq.jpg'),
(106, 'Tricks asian BBQ', 'Biskuit\r\nâ€¢ Terbuat dari bahan berkualitas\r\nâ€¢ Sangat lezat, nikmat & memuaskan\r\nâ€¢ Cocok untuk dinikmati pada saat santai bersama keluarga', 9000, 'trbbq.jpg'),
(107, 'Tricks bulgogi', 'Tricks Baked Merupakan Snack Kentang Dengan Varian Rasa Asia Yang Khas Membuat Tricks Menjadi Favorit Semua Kalangan.', 17000, 'trbulgogi.jpg'),
(108, 'Tricks classic', 'dengan rasa dan varian klasik dikemas dengan kemasan yang menarik', 10000, 'trche.jpg'),
(109, 'Trick kimchi', 'Tricks Baked Merupakan Snack Kentang Dengan Varian Rasa Asia Yang Khas Membuat Tricks Menjadi Favorit Semua Kalangan.\r\n\r\n', 17500, 'trkim.jpg'),
(110, 'Tricks original', 'Snack kentang\r\nDengan varian rasa Asia yang khas membuat Tricks menjadi favorit semua kalangan\r\nUkurannya yang pas dikantong cocok sekali untuk jadi cemilan', 9500, 'tro.jpg'),
(111, 'Tricks rendang', 'Tricks Baked Merupakan Snack Kentang Dengan Varian Rasa Asia Yang Khas Membuat Tricks Menjadi Favorit Semua Kalangan.\r\n\r\n', 19000, 'trre.jpg'),
(112, 'Tiktak ayam bawang', 'tiktak dengan varian ayam bawang\r\nkemasan 19 gram  ', 2000, 'ttayambawang.jpg'),
(113, 'Tiktak mix', 'tiktak dengan campuran varian lain \r\ndengan kemasana 19 gram ', 2000, 'ttmix.jpg'),
(114, 'tiktak rumput laut', 'rasa rumput laut yang gurih dengan  \r\nkemasana 19 gram', 2000, 'ttrumla.jpg'),
(115, 'tiktak pedas spicy', 'varian tiktak pedas pastinya bikin nagih\r\ndikemas dengan kemasan 19 gram ', 2000, 'ttscp.jpg'),
(116, 'Nabati chocholate', 'nabati wafer chocholate favorit semua orang \r\nbikin nagih deh pastinya', 3000, 'wacok.jpg'),
(117, 'nabati Keju', 'varian keju ! mana nih pecinta keju\r\nkaliini dengan varian keju nih', 3000, 'wake.jpg'),
(118, 'nabati korean gugma', 'kaliini varian korean gulga nih\r\nkemasan : sachet\r\n20g\r\n', 4000, 'wako.jpg'),
(119, 'nabati pink lava', 'varian pink lava dengan rasa khasnya\r\nrasa ; keju', 3000, 'wapl.jpg'),
(120, 'nabati wafer susu', 'varian ini dengan rasa susu\r\nkemasan 20 gram', 4000, 'wasu.jpg'),
(121, 'Corn puff', 'vairian ini lebih menarik yaitu corn puff\r\ndengan berat 19g', 3500, 'ocp.jpg'),
(122, 'silent doritos', 'keripik kentang dengan varian baru\r\nkemasan 19 gram ', 8000, 'dorsil.jpg'),
(123, 'crackles', 'crackles keripik dengan rasa gurih yang khas \r\ndi kemas dalam kemasan 25 g', 12000, 'crac.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(4, 'kiki', 'kiki@gmail.com', 'kiki123', 'admin'),
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(16, 'risna', 'risna@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(17, 'adminA', 'admin01@gmail.com', '123', 'admin'),
(18, 'lolo1', 'lolo1@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 14, 19, 'pink bouquet', 15, 'pink bouquet.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
