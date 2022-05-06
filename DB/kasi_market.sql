-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 12:20 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasi_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `itermId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iterms`
--

CREATE TABLE `iterms` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iterms`
--

INSERT INTO `iterms` (`id`, `title`, `description`, `price`, `image`, `createdAt`, `updatedAt`) VALUES
(1, 'Cordless Driller', 'Rechargable driller with 18v ksjkhsjs ddg dgfggf isjdjkjsk skjdsdjj sk ksjdjskdksj ksjdkdkjskj', 1200, 'assets/images/i1.png', '2022-04-20 02:31:22', '2022-04-20 02:31:22'),
(2, 'whisteling Kettle', 'Rechargable driller with 18v ksjkhsjs ddg dgfggf isjdjkjsk skjdsdjj sk ksjdjskdksj ksjdkdkjskj', 500, 'assets/images/i2.png', '2022-04-20 02:33:47', '2022-04-20 02:33:47'),
(3, 'Yeezy', 'Rechargable driller with 18v ksjkhsjs ddg dgfggf isjdjkjsk skjdsdjj sk ksjdjskdksj ksjdkdkjskj', 1500, 'assets/images/i3.png', '2022-04-20 02:34:15', '2022-04-20 02:34:15'),
(4, 'Black Pearl', 'Rechargable driller with 18v ksjkhsjs ddg dgfggf isjdjkjsk skjdsdjj sk ksjdjskdksj ksjdkdkjskj', 1200, 'assets/images/i4.jpg', '2022-04-20 02:34:43', '2022-04-20 02:34:43'),
(5, 'Nike', 'Rechargable driller with 18v ksjkhsjs ddg dgfggf isjdjkjsk skjdsdjj sk ksjdjskdksj ksjdkdkjskj', 1700, 'assets/images/i5.jpg', '2022-04-20 02:35:06', '2022-04-20 02:35:06'),
(6, 'Vase', 'Rechargable driller with 18v ksjkhsjs ddg dgfggf isjdjkjsk skjdsdjj sk ksjdjskdksj ksjdkdkjskj', 300, 'assets/images/i6.jpg', '2022-04-20 02:35:29', '2022-04-20 02:35:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL DEFAULT 'user',
  `password` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `itermId` (`itermId`);

--
-- Indexes for table `iterms`
--
ALTER TABLE `iterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `iterms`
--
ALTER TABLE `iterms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`itermId`) REFERENCES `iterms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
