-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 11:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_systemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `line1` varchar(255) DEFAULT NULL,
  `line2` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Shoes'),
(2, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`) VALUES
(1, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd;https://static.toiimg.com/thumb/msid-56933980,width-640,resizemode-4,imgsize-85436/56933980.jpg;https://cdn.mos.cms.futurecdn.net/3328be45e8c7fe5194055b4c687fb769-1200-80.jpeg;https://img.etimg.com/thumb/width-640,height-480,imgsize-76492,resizemode-1,msid-52464286/46.jpg', 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 1000, 'Gaming console', 2),
(2, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 78, 'Gaming console', 2),
(3, 'PlayStation 4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSr-iFW5W8n3_jxNKiclAP_k71Fi9PGcojsMUC-vb8zbwJthbBd', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 1000, 'Gaming console', 2),
(4, 'Xbox One X Star Wars Jedi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8ufSADR9EyusxEfgMLErqISEcKVzQyjoD81zWcdpBvuEGBnYP', NULL, 'Own the Xbox One X Star Wars Jedi: Fallen Order™ Bundle and step into the role of a Jedi Padawan who narrowly escaped the purge of Order 66. This bundle includes a full-game download of Star Wars Jedi: Fallen Order™ Deluxe Edition, a 1-month trial of Xbox Game Pass for console and Xbox Live Gold, and 1-month of EA Access.***', 250, 100, 'Gaming console', 2),
(5, 'Apple AirPods Pro', 'https://www.apple.com/v/airpods-pro/d/images/meta/og__ch3csr9zmviq_overview.png', NULL, 'With PS4, gaming becomes a lot more power packed. Ultra-fast processors, high-performance system, real-time game sharing, remote play and lots more makes it the ultimate companion device.', 240.99, 1000, 'Gaming console', 2),
(6, 'Microsoft Surface Pro 7', 'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4tjV5?ver=eab4, 'The latest Surface Pro from Microsoft, featuring a 12.3-inch touchscreen display, 10th Gen Intel Core processor, and long battery life.', 899.99, 10, 'High-end tablet', 1),
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT 'not set',
  `age` int(10) DEFAULT 18,
  `role` int(10) DEFAULT 555,
  `photoUrl` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `full_name`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, '', '207', 'ado@gmail.com', 'adones evangelista', 18, 555, NULL, 'local');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
