-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2019 at 05:59 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafeteria`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(71, 42, 'Chilli Burger', '50', 'downloads\\2649.png', 1, '50', 'p1000'),
(72, 42, 'Veg Burger', '35', 'downloads/4863.png', 1, '35', 'p1001'),
(73, 42, 'Chatpata Naan', '70', 'downloads/chatpatanaan.png', 1, '70', 'p1002'),
(74, 42, 'bubbleteacoffee', '100', 'downloads/bubbleteacoffee.jpg', 1, '100', 'p1013');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pro_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `pro_id`, `name`) VALUES
(1, 101, 'Continental'),
(2, 102, 'South Indian'),
(3, 103, 'Punjabi'),
(4, 104, 'Snacks'),
(5, 105, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(13, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),ChocoVolcanoCake(1),bubbleteacoffee(1),Spicedpanner(1),Chilli Burger(1),Veg Burger(1),Chilli Burger(1),Veg Burger(1)', '615'),
(14, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),ChocoVolcanoCake(1),bubbleteacoffee(1),Spicedpanner(1),Chilli Burger(1),Veg Burger(1),Chilli Burger(1),Veg Burger(1)', '615'),
(15, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '3', 'cod', 'Chilli Burger(1),Veg Burger(1)', '85'),
(16, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1)', '85'),
(17, 'Mudit Mangal', 'mudit.mangal_cs17@gla.ac.in', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),Chocolate Muffin(1)', '215'),
(18, 'Gopinath', 'agarwalmudit02@gmail.com', '6396852830', '2', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),Chocolate Muffin(1)', '215'),
(19, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),Chocolate Muffin(1)', '215'),
(20, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '3', 'cod', 'Spicedpanner(1),Vegexotica(1)', '300'),
(21, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),bubbleteacoffee(1)', '255'),
(22, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),bubbleteacoffee(1)', '255');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `brand`, `product_name`, `product_price`, `product_image`, `product_code`) VALUES
(1, 'Snacks', 'Chilli Burger', '50', 'downloads\\2649.png', 'p1000'),
(2, 'Snacks', 'Veg Burger', '35', 'downloads/4863.png', 'p1001'),
(3, 'Snacks', 'Chatpata Naan', '70', 'downloads/chatpatanaan.png', 'p1002'),
(4, 'Desserts', 'Chocolate Pastry', '60', 'downloads/pastry.png', 'p1003'),
(5, 'Desserts', 'Chocolate Muffin', '60', 'downloads/chocolatemuffin.png', 'p1004'),
(6, 'Drinks', 'Chocolate Shake', '40', 'downloads/chocolateshake.png', 'p1005'),
(7, 'Snacks', 'Spicedpanner', '160', 'downloads/SpicedPaneer.jpg', 'p1006'),
(8, 'Snacks', 'Vegexotica', '140', 'downloads/vegExotica.jpg', 'p1007'),
(9, 'Snacks', 'frenchfries', '60', 'downloads/frenchfries.png', 'p1008'),
(10, 'Snacks', 'alooditikki', '60', 'downloads/alooditikki.png', 'p1009'),
(11, 'Drinks', 'masalachai', '50', 'downloads/masalachai.png', 'p1010'),
(12, 'Drinks', 'Greentea', '60', 'downloads/greentea.jpg', 'p1011'),
(13, 'Drinks', 'Coffee', '60', 'downloads/coffee.jpg', 'p1012'),
(14, 'Drinks', 'bubbleteacoffee', '100', 'downloads/bubbleteacoffee.jpg', 'p1013'),
(15, 'Desserts', 'Chocotrufflecake', '80', 'downloads/ChocoTruffleCake.jpg', 'p1014'),
(16, 'Desserts', 'ChocoVolcanoCake', '100', 'downloads/ChocoVolcanoCake.jpg', 'p1015'),
(17, 'South Indian', 'Masala Dosa', '90', 'downloads/masaladosa.jpg', 'p1016'),
(18, 'Desserts', 'Chocolate Icecream', '70', 'downloads/dessert1.png', 'p1017');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `pro_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1007 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`p_id`, `pro_id`, `name`) VALUES
(1001, 101, '2649'),
(1002, 102, '4863'),
(1003, 103, 'chatpatanaan'),
(1004, 104, 'pastry'),
(1005, 105, 'chocolatemuffin'),
(1006, 106, 'chocolateshake');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'slidenumber1', 'home1'),
(2, 'slidenumber2', 'jevelin-food-website-template'),
(3, 'slidenumber3', 'modernoffice');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `tokenexpire` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `username`, `email`, `password`, `created`, `token`, `tokenexpire`) VALUES
(42, 'Mudit Mangal', 'cafeteria', 'agarwalmudit02@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2019-11-22', NULL, '2019-11-22 05:16:29.453830');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
