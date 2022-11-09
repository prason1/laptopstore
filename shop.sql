-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2019 at 05:29 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `password`, `created_at`) VALUES
(2, 'Subid', '$2y$10$OY4pjhcHt1ZLmXKNUFOS1uRn2xMUw4Lz9hvN5Ir6yCcCssLdTksJK', '2019-07-14 13:01:30');

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `buyer_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` bigint(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `credit` bigint(255) NOT NULL,
  `product_ID` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`buyer_id`, `name`, `phone`, `address`, `bank`, `credit`, `product_ID`, `created_at`) VALUES
(17, 'Naruto', 9818392179, 'Swoyambhu', 'kist', 23456789, 2, '2019-07-14 12:20:25'),
(21, 'Naruto', 9841263215, 'Swoyambhu', 'Nabil', 4242424424242, 7, '2019-07-14 14:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `gadgets`
--

CREATE TABLE `gadgets` (
  `product_ID` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `numb` int(50) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text,
  `Phone` bigint(20) NOT NULL,
  `photosource` varchar(500) NOT NULL,
  `brands` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gadgets`
--

INSERT INTO `gadgets` (`product_ID`, `model`, `numb`, `price`, `description`, `Phone`, `photosource`, `brands`, `created_at`) VALUES
(2, 'Nitro 5', 1, '100000', '16 GB RAM, 1 TB Storage', 9860423849, 'uploads/91YPp32q3tL._SX425_.jpg', 'Acer', '2019-07-14 10:29:56'),
(3, ' 5300', 5, '64000', '8th gen,i5', 9803915724, 'uploads/6298021_sd.jpg', 'Dell', '2019-07-14 12:34:57'),
(6, 'na-12', 4, '65000', '8th gen,i5', 9860423849, 'uploads/asus-na-laptop-original-imaf9zyxrghq7h7k.jpeg', 'Asus', '2019-07-14 14:13:38'),
(7, 'Pavilion 50', 2, '150000', '8th gen,i5', 9803915723, 'uploads/HP-Pavilion-15-cs0012cl-Core-i5-8th-Gen-Gold.jpg', 'HP', '2019-07-14 14:15:15'),
(8, 'Macbook pro', 5, '150000', '8 GB RAM,256 GB SSD', 9843214301, 'uploads/macbookpro.jpg', 'Apple', '2019-07-14 14:16:00'),
(9, 'Alienware', 8, '140000', '16 GB RAM, 1 TB Storage', 9803915723, 'uploads/61gQSilguEL._SX425_.jpg', 'Dell', '2019-07-14 14:16:25'),
(11, 'Nitro 5', 1, '150000', '16 GB RAM, 1 TB Storage', 9803915723, 'uploads/319636.jpg', 'Microsoft', '2019-07-14 14:40:05'),
(12, 'Alienware', 3, '65000', '8 GB RAM,256 GB SSD', 9803926632, 'uploads/319636.jpg', 'Dell', '2019-07-14 15:59:33'),
(13, 'Nitro 5', 3, '85000', '8th gen, 8 GB ram, 1 TB storage', 67326487364, 'uploads/asus-na-laptop-original-imaf9zyxrghq7h7k.jpeg', 'Acer', '2019-07-14 16:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `created_at`) VALUES
(3, 'subidshrestha', '$2y$10$Q9EpvnNb0Unv2C3uh42LB.NW8f2kPTMURkwP1cgblFZPAqnZKvo0e', 'subideminem@gmail.com', 9818392179, '2019-07-14 10:26:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_name` (`admin_name`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD PRIMARY KEY (`product_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `buyer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `gadgets`
--
ALTER TABLE `gadgets`
  MODIFY `product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
