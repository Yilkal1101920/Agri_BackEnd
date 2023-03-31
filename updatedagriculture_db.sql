-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql9.freesqldatabase.com
-- Generation Time: Jan 04, 2023 at 12:31 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql9587088`
--

-- --------------------------------------------------------

--
-- Table structure for table `agri_product`
--

CREATE TABLE `agri_product` (
  `product_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type_product` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `original_cost` double DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `nOrders` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agri_product`
--

INSERT INTO `agri_product` (`product_id`, `category`, `type_product`, `title`, `price`, `original_cost`, `amount`, `address`, `image`, `description`, `state`, `nOrders`) VALUES
(82, 'dap1', 'dap1', 'dap1', 4000, 4000, 0, 'Ethiopia, Amhara, East Gojam, Debre Markos', 'https://i.ibb.co/7yfFNMQ/agriculture.jpg', 'dap1', 1, 2),
(83, 'dap2', 'dap2', 'dap2', 4000, 4000, NULL, 'Ethiopia, Amhara, East Gojam, Debre Markos', 'https://i.ibb.co/dPzZM7h/agriculture.jpg', 'dap2', 0, 0),
(84, 'dap3', 'dap3', 'dap3', 4000, 4000, 0, 'Ethiopia, Amhara, East Gojam, Debre Markos', 'https://i.ibb.co/SXLzBS6/agriculture.jpg', 'dap3', 1, 1),
(85, 'dap4', 'dap4', 'dap4', 4000, 4000, NULL, 'Ethiopia, Amhara, East Gojam, Debre Markos', 'https://i.ibb.co/Y7JvxZt/agriculture.jpg', 'dap4', 0, 0),
(86, 'dap5', 'dap5', 'dap5', 4000, 4000, NULL, 'Ethiopia, Amhara, East Gojam, Debre Markos', 'https://i.ibb.co/nBF6WZQ/agriculture.jpg', 'dap5', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `favorite_no` int(11) DEFAULT NULL,
  `fproduct_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`favorite_id`, `email`, `favorite_no`, `fproduct_id`) VALUES
(83, 'luel@gmail.com', 3, 82),
(86, 'luel@gmail.com', 2, 83),
(87, 'luel@gmail.com', 5, 86),
(88, 'luel@gmail.com', 1, 85);

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `order_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `nOrders` int(11) DEFAULT NULL,
  `totalCart` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `confirm` int(11) NOT NULL,
  `confir` int(11) NOT NULL,
  `cancel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`order_id`, `user_email`, `nOrders`, `totalCart`, `product_id`, `confirm`, `confir`, `cancel`) VALUES
(95, 'melkamu@gmail.com', 2, 0, 85, 1, 1, 0),
(96, 'melkamu@gmail.com', 1, 0, 86, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `selection_id`
--

CREATE TABLE `selection_id` (
  `id` int(11) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seller_product`
--

CREATE TABLE `seller_product` (
  `order_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `order_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_product`
--

INSERT INTO `seller_product` (`order_id`, `first_name`, `last_name`, `phone`, `email`, `address`, `order_image`) VALUES
(111, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/TRmd78b/yilkal.jpg'),
(112, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/tQ4khDG/yilkal.jpg'),
(113, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/KzTZzL8/yilkal.jpg'),
(117, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(118, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(119, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(120, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(121, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(122, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(123, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(124, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(125, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(126, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(127, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(128, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(129, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(130, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(131, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(132, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(133, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(136, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(137, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(138, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(139, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Bahir Dar', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(140, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'Genet', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(141, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'E', 'https://i.ibb.co/9sVTDmG/yilkal.jpg'),
(142, 'Yilkal', 'Derseh', 923233128, 'yilkalderseh@gmail.com', 'E', 'https://i.ibb.co/41S4bKQ/yilkal.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fName` varchar(255) NOT NULL,
  `faName` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fName`, `faName`, `phone`, `email`) VALUES
('Getahun', 'Ayinalem', 923233128, 'getahun@gmail.com'),
('Luel', 'Menber', 923233128, 'luel@gmail.com'),
('Lyish', 'Solomon', 923233128, 'lyu@gmail.com'),
('Melkamu', 'Ayinalem', 923233128, 'melkamu@gmail.com'),
('Yilkal', 'Ayinalem', 923233128, 'yilkalayinalem@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agri_product`
--
ALTER TABLE `agri_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `fproduct_id` (`fproduct_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `seller_product`
--
ALTER TABLE `seller_product`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agri_product`
--
ALTER TABLE `agri_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_1` FOREIGN KEY (`fproduct_id`) REFERENCES `agri_product` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD CONSTRAINT `ordertable_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `agri_product` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordertable_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
