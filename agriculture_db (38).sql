-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 03:21 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `agri_product`
--

CREATE TABLE `agri_product` (
  `product_id` int(11) NOT NULL,
  `post_email` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type_product` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `original_cost` double DEFAULT NULL,
  `measurement` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `postedForMarket` int(11) NOT NULL,
  `seller` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `kebele` varchar(255) NOT NULL,
  `marketState` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agri_product`
--

INSERT INTO `agri_product` (`product_id`, `post_email`, `category`, `type_product`, `title`, `price`, `original_cost`, `measurement`, `amount`, `postedForMarket`, `seller`, `address`, `image`, `description`, `state`, `kebele`, `marketState`) VALUES
(206, 'luelmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Wheate', 8000, 7500, '50kg', 100, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/D1ZLySb/agriculture.jpg', 'wheate', 0, 'Yemezegn', 1),
(208, 'luelmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 10000, 9500, '50KG', 120, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/N3dLC7b/agriculture.jpg', 'teff', 0, 'Yemezegn', 1),
(212, 'mulatfkadu@gmail.com', 'FERTILIZER', 'FERTILIZER', 'DAP', 4000, 3900, '50kg', 4000, 868, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/9cR4YWF/agriculture.jpg', 'dap', 1, 'Yemezegn', 1),
(213, 'mulatfkadu@gmail.com', 'FERTILIZER', 'FERTILIZER', 'UREA', 3500, 3400, '50kg', 2000, 443, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/wLSXDcj/agriculture.jpg', 'urea', 0, 'Yemezegn', 1),
(214, 'mulatfkadu@gmail.com', 'SUGAR AND OIL', 'SUGAR AND OIL', 'Oil', 500, 480, 'litter', 2000, 483, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/t23x9MJ/agriculture.jpg', 'oil', 1, 'Yemezegn', 1),
(215, 'mulatfkadu@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Wheate', 6000, 5600, '50kg', 3000, 586, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/D1ZLySb/agriculture.jpg', 'wheate', 1, 'Yemezegn', 1),
(216, 'mulatfkadu@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 10000, 9700, '50kg', 1100, 0, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/p1Y8vT2/agriculture.jpg', 'teff', 0, 'Yemezegn', 0),
(217, 'mulatfkadu@gmail.com', 'SUGAR AND OIL', 'SUGAR AND OIL', 'Sugar', 60, 57, 'kg', 2000, 992, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/f209P6F/agriculture.jpg', 'sugar', 1, 'Yemezegn', 1),
(218, 'luelmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Maize', 3000, 2800, '50KG', 6000, 5, 'farmer', 'Yemezegn', 'https://i.ibb.co/SVVhJRN/agriculture.jpg', 'maize', 0, 'Yemezegn', 1),
(220, 'bihonegnmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Maize', 3000, 3000, '50KG', 2000, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/ZXHqsTR/agriculture.jpg', 'maize', 0, 'Yemezegn', 1),
(221, 'bihonegnmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Wheate', 6000, 6000, '50KG', 1500, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/tXPgnz6/agriculture.jpg', 'wheate', 0, 'Yemezegn', 1),
(222, 'bihonegnmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 10000, 10000, '50KG', 1000, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/pnLbLYh/agriculture.jpg', 'teff', 0, 'Yemezegn', 1),
(223, 'ayinalemmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 10000, 10000, '50KG', 1000, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/pnLbLYh/agriculture.jpg', 'teff', 0, 'Yemezegn', 1),
(224, 'ayinalemmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Wheate', 6000, 6000, '50KG', 2000, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/tXPgnz6/agriculture.jpg', 'wheate', 0, 'Yemezegn', 1),
(225, 'ayinalemmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Maize', 4000, 4000, '50KG', 3000, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/ZXHqsTR/agriculture.jpg', 'maize', 0, 'Yemezegn', 1),
(226, 'mulatfkadu@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 10000, 10000, '50kg', 1000, 400, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/CWdX24b/agriculture.jpg', 'teff', 0, 'Yemezegn', 1),
(227, 'mulatfkadu@gmail.com', 'SUGAR AND OIL', 'SUGAR AND OIL', 'Sugar', 60, 60, 'kg', 2000, 1000, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/Bn3j7yD/agriculture.jpg', 'sugar', 0, 'Yemezegn', 1),
(228, 'alebeleedmealem@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 5000, 4800, '50kg', 2000, 1000, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/CWdX24b/agriculture.jpg', 'teff', 0, 'Yeguarat', 1),
(229, 'alebeleedmealem@gmail.com', 'FERTILIZER', 'FERTILIZER', 'DAP', 2000, 1900, '50kg', 4000, 2000, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/L94wZRF/agriculture.jpg', 'dap', 0, 'Yeguarat', 1),
(230, 'alebeleedmealem@gmail.com', 'FERTILIZER', 'FERTILIZER', 'UREA', 1750, 1700, '50kg', 3000, 1500, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/DDk2yHc/agriculture.jpg', 'urea', 0, 'Yeguarat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chattingtable`
--

CREATE TABLE `chattingtable` (
  `chat_id` int(11) NOT NULL,
  `send_email` varchar(50) NOT NULL,
  `receive_email` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chattingtable`
--

INSERT INTO `chattingtable` (`chat_id`, `send_email`, `receive_email`, `message`) VALUES
(259, 'zelalembayih@gmail.com', 'luelmenber@gmail.com', 'rrrrrrrrrrrrrrrrrrrrrrrrr'),
(260, 'zelalembayih@gmail.com', 'luelmenber@gmail.com', 'ttttttttttttttt'),
(261, 'luelmenber@gmail.com', 'zelalembayih@gmail.com', 'ejjejhwj ejw j sjgfsjh isj js fsjh jh s jhd bsj'),
(262, 'luelmenber@gmail.com', 'zelalembayih@gmail.com', 'w hih tiu4whuih uih ui whsuih uihsui usih uihauih fisuf ais iuhif saiu'),
(263, 'luelmenber@gmail.com', 'zelalembayih@gmail.com', 's fs'),
(264, 'bihonegnmenber@gmail.com', 'zelalembayih@gmail.com', 'ttttttttttt'),
(265, 'bihonegnmenber@gmail.com', 'zelalembayih@gmail.com', 'rrrrrrrrrrrrrrrrrrrrrr'),
(266, 'bihonegnmenber@gmail.com', 'zelalembayih@gmail.com', 'bihonegn negn Account lemn nw block yetederegebgn'),
(267, 'zelalembayih@gmail.com', 'bihonegnmenber@gmail.com', 'Ay altekembet bleh nw mihon ena expired kaderege block yideregal'),
(268, 'zelalembayih@gmail.com', 'bihonegnmenber@gmail.com', 'Ay altekembet bleh nw mihon ena expired kaderege block yideregal'),
(269, 'bihonegnmenber@gmail.com', 'zelalembayih@gmail.com', 'OK'),
(270, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'Temesgen negn  Madaberiya meta'),
(271, 'zelalembayih@gmail.com', 'ayinalemmenber@gmail.com', 'Awo'),
(272, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'this is the message');

-- --------------------------------------------------------

--
-- Table structure for table `cpidtable`
--

CREATE TABLE `cpidtable` (
  `cpid_id` int(11) NOT NULL,
  `c_email` varchar(50) NOT NULL,
  `cproduct_id` int(11) NOT NULL,
  `CPID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `postedDate` varchar(250) NOT NULL,
  `newsSource` varchar(250) NOT NULL,
  `newsImage` varchar(250) NOT NULL,
  `description` varchar(255) NOT NULL,
  `news_quantity` int(11) NOT NULL,
  `kebele` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `postedDate`, `newsSource`, `newsImage`, `description`, `news_quantity`, `kebele`) VALUES
(338, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(339, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(340, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(341, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, ''),
(342, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, ''),
(343, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, ''),
(344, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, ''),
(345, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, ''),
(346, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, ''),
(347, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, ''),
(348, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(349, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(350, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(351, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(352, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(354, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(356, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(357, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(358, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(359, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(360, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(361, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(363, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(364, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(365, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(366, 'DAP', '30/05/2015', 'Yemezegn', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Yemezegn'),
(368, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(369, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(370, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(371, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(372, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(373, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(374, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(375, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(376, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(377, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(378, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(379, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(380, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(381, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(382, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(384, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(385, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(386, 'DAP', '30/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(387, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(388, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(389, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(390, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(391, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(392, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(394, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(395, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(396, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(398, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(399, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(400, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(401, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(402, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(403, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(404, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(405, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(406, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(407, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(408, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(411, 'DAP', '29/05/2015', 'Guay', 'https://i.ibb.co/hcTzKjH/agriculture.jpg', 'Diammonium Phosphate DAP - diammonium phosphate is a kind of compound fertilizer with two nutrients of nitrogen and phosphorus. It is a high concentration and quick acting fertilizer. It is suitable for all kinds of crops and soil, especially for the crop', 1, 'Guay'),
(412, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(413, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(414, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(415, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(416, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(417, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(418, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(419, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(420, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(421, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(422, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(423, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(424, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(425, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(426, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(427, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(428, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(429, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(430, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(431, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(432, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(433, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(434, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(435, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(436, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(437, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(438, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(439, 'UREA', '29/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(440, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(441, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(442, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(443, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(444, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(445, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(446, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(447, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(448, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(449, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(450, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(451, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(452, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(453, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(454, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(455, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(456, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(457, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(458, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(459, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(460, 'Urea', '28/05/2015', 'Guay', 'https://i.ibb.co/m4nmDsB/agriculture.jpg', 'What Is Urea Fertilizer? Urea is an inexpensive form of nitrogen fertilizer with an NPK (nitrogen-phosphorus-potassium) ratio of 46-0-0. Although urea is naturally produced in humans and animals, synthetic urea is manufactured with anhydrous ammonia.', 1, 'Guay'),
(461, 'Maize', '12/06/2015', 'yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(462, 'Maize', '12/06/2015', 'yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(463, 'Maize', '12/06/2015', 'yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(464, 'Maize', '12/06/2015', 'yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(465, 'Maize', '12/06/2015', 'yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(466, 'Maize', '12/06/2015', 'yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(468, 'Maize', '12/06/2015', 'yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(469, 'Maize', '12/06/2015', 'Yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(470, 'Maize', '12/06/2015', 'Yeguarat', '', 'Maize', 1, 'Yeguarat'),
(471, 'Maize', '12/06/2015', 'Yeguarat', '', 'Maize', 1, 'Yeguarat'),
(472, 'Maize', '12/06/2015', 'Yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(473, 'Maize', '12/06/2015', 'Yeguarat', '', 'Maize', 1, 'Yeguarat'),
(474, 'Maize', '12/06/2015', 'Yeguarat', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yeguarat'),
(476, 'Wheate', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/5jRNSmv/News-Image.jpg', 'Wheate', 1, 'Yemezegn'),
(479, 'Wheate', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/5jRNSmv/News-Image.jpg', 'Wheate', 1, 'Yemezegn'),
(482, 'Wheate', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/5jRNSmv/News-Image.jpg', 'Wheate', 1, 'Yemezegn'),
(483, 'Maize', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(484, 'Maize', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(486, 'Maize', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(488, 'Maize', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(489, 'Maize', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(490, 'Maize', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(491, 'Maize', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(492, 'Maize', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(494, 'Maize', '13/06/2015', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(496, 'Teff', '15/06/2015', 'Yemezegn', 'https://i.ibb.co/j5y18nw/News-Image.jpg', 'Teff', 1, 'Yemezegn'),
(497, 'Teff', '15/06/2015', 'Yemezegn', 'https://i.ibb.co/j5y18nw/News-Image.jpg', 'Teff', 1, 'Yemezegn'),
(498, 'Teff', '15/06/2015', 'Yemezegn', 'https://i.ibb.co/j5y18nw/News-Image.jpg', 'Teff', 1, 'Yemezegn'),
(500, 'Teff', '15/06/2015', 'Yemezegn', 'https://i.ibb.co/j5y18nw/News-Image.jpg', 'Teff', 1, 'Yemezegn'),
(502, 'Teff', '15/06/2015', 'Yemezegn', 'https://i.ibb.co/j5y18nw/News-Image.jpg', 'Teff', 1, 'Yemezegn'),
(503, 'Teff', '15/06/2015', 'Yemezegn', 'https://i.ibb.co/j5y18nw/News-Image.jpg', 'Teff', 1, 'Yemezegn'),
(506, 'Teff', '15/06/2015', 'Yemezegn', 'https://i.ibb.co/j5y18nw/News-Image.jpg', 'Teff', 1, 'Yemezegn'),
(508, 'Teff', '15/06/2015', 'Yemezegn', 'https://i.ibb.co/j5y18nw/News-Image.jpg', 'Teff', 1, 'Yemezegn'),
(521, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(522, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(523, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(524, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(525, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(526, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(527, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(528, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(529, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(530, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(531, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(532, 'Maize', '2023-02-20', 'Yemezegn', 'https://i.ibb.co/cC6dcg5/News-Image.jpg', 'Maize', 1, 'Yemezegn'),
(533, 'Wheate', '2023-02-22', 'Yemezegn', 'https://i.ibb.co/5jRNSmv/News-Image.jpg', 'Wheate', 1, 'Yemezegn'),
(534, 'Wheate', '2023-02-22', 'Yemezegn', 'https://i.ibb.co/5jRNSmv/News-Image.jpg', 'Wheate', 1, 'Yemezegn'),
(535, 'Wheate', '2023-02-22', 'Yemezegn', 'https://i.ibb.co/5jRNSmv/News-Image.jpg', 'Wheate', 1, 'Yemezegn'),
(536, 'Wheate', '2023-02-24', 'Yemezegn', 'https://i.ibb.co/5jRNSmv/News-Image.jpg', 'Wheate', 1, 'Yemezegn'),
(542, 'Wheate Seed', '2023-02-08', 'Yemezegn', 'https://i.ibb.co/5kpsv49/News-Image.jpg', 'Wheate Seed', 1, 'Yemezegn'),
(543, 'Wheate', '2023-03-28', 'Yedenbegn', 'https://i.ibb.co/X542gD9/agriculture.jpg', 'Wheate', 1, 'Yedenbegn');

-- --------------------------------------------------------

--
-- Table structure for table `orderrestriction`
--

CREATE TABLE `orderrestriction` (
  `restriction_id` int(11) NOT NULL,
  `product_Id` int(11) NOT NULL,
  `allowed_quantity` int(11) NOT NULL,
  `notifier_email` varchar(50) NOT NULL,
  `kebele` varchar(50) NOT NULL,
  `expire_date` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderrestriction`
--

INSERT INTO `orderrestriction` (`restriction_id`, `product_Id`, `allowed_quantity`, `notifier_email`, `kebele`, `expire_date`) VALUES
(69, 213, 10, 'zelalembayih@gmail.com', 'Yemezegn', '2023-08-31 21:00:00.000000'),
(70, 214, 20, 'zelalembayih@gmail.com', 'Yemezegn', '2023-08-31 21:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `order_id` int(11) NOT NULL,
  `patent_email` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `nOrders` int(11) DEFAULT NULL,
  `ordered_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `edited_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `order_kebele` varchar(255) NOT NULL,
  `totalCart` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `confirm` int(11) NOT NULL,
  `confir` int(11) NOT NULL,
  `cancel` int(11) NOT NULL,
  `payStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ratingandfavorite`
--

CREATE TABLE `ratingandfavorite` (
  `favorite_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star1` int(11) NOT NULL,
  `star2` int(11) NOT NULL,
  `star3` int(11) NOT NULL,
  `star4` int(11) NOT NULL,
  `star5` int(11) NOT NULL,
  `favorite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `reporter_email` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `report_owner` varchar(255) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `report_status` varchar(255) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `transaction_in_birr` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `monthName` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `hour` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `second` int(11) NOT NULL,
  `millisecond` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `reporter_email`, `product_name`, `quantity`, `report_owner`, `user_email`, `report_status`, `transaction`, `transaction_in_birr`, `day`, `monthName`, `year`, `month`, `date`, `hour`, `minute`, `second`, `millisecond`) VALUES
(2, 'mulatfkadu@gmail.com', 'Sugar', 2000, 'Yemezegn', '', 'buy', 'cash out', 56, 'Monday', 'January', 2020, 1, 15, 0, 0, 0, 0),
(3, 'mulatfkadu@gmail.com', 'Sugar', 1000, 'Yemezegn', '', 'buy', 'cash out', 56, 'Monday', 'February', 2020, 2, 16, 0, 0, 0, 0),
(4, 'zelalembayih@gmail.com', 'Sugar', 500, 'Yemezegn', '', 'market', 'cash less', 0, 'Tuesday', 'March', 2020, 3, 17, 0, 0, 0, 0),
(5, 'zelalembayih@gmail.com', 'DAP', 7, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 4100, 'Wensday', 'April', 2020, 4, 18, 0, 0, 0, 0),
(6, 'zelalembayih@gmail.com', 'UREA', 6, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 3500, 'Monday', 'May', 2020, 5, 21, 0, 0, 0, 0),
(7, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 4100, 'Monday', 'June', 2020, 6, 12, 0, 0, 0, 0),
(8, 'zelalembayih@gmail.com', 'Oil', 2, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 500, 'Tuesday', 'January', 2021, 1, 23, 0, 0, 0, 0),
(9, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 3500, 'Wenesday', 'March', 2021, 3, 15, 0, 0, 0, 0),
(10, 'zelalembayih@gmail.com', 'DAP', 2, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 4100, 'Tuersday', 'May', 2021, 5, 11, 0, 0, 0, 0),
(11, 'zelalembayih@gmail.com', 'Oil', 4, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 500, 'Friday', 'June', 2021, 6, 10, 0, 0, 0, 0),
(12, 'mulatfkadu@gmail.com', 'Wheate', 2000, 'Yemezegn', '', 'buy', 'cash out', 5700, 'Saturday', 'January', 2022, 1, 5, 0, 0, 0, 0),
(13, 'mulatfkadu@gmail.com', 'Maize', 4000, 'Yemezegn', '', 'buy', 'cash out', 2700, 'Sunday', 'April', 2022, 4, 29, 0, 0, 0, 0),
(14, 'mulatfkadu@gmail.com', 'DAP', 1000, 'Yemezegn', '', 'buy', 'cash out', 3800, 'Monday', 'May', 2022, 5, 30, 0, 0, 0, 0),
(15, 'zelalembayih@gmail.com', 'Oil', 3, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 500, 'Tuesday', 'June', 2022, 6, 1, 0, 0, 0, 0),
(16, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 'Wesnsday', 'March', 2023, 3, 18, 0, 0, 0, 0),
(17, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 'Tuersday', 'March', 2023, 3, 18, 0, 0, 0, 0),
(18, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 'Friday', 'March', 2023, 3, 18, 9, 51, 41, 801),
(19, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 'Saturday', 'March', 2023, 3, 18, 9, 57, 41, 499),
(20, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 'Sunday', 'March', 2023, 3, 18, 10, 4, 51, 870),
(21, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 'Sunday', 'March', 2023, 3, 18, 10, 44, 55, 478),
(22, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 'Sunday', 'March', 2023, 3, 18, 10, 48, 53, 513),
(23, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 'Sunday', 'March', 2023, 3, 18, 11, 9, 25, 387),
(24, 'mulatfkadu@gmail.com', 'Teff', 2000, 'Yemezegn', '', 'buy', 'cash out', 7600, 'Sunday', 'March', 2023, 3, 18, 11, 36, 10, 960),
(25, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 'Sunday', 'March', 2023, 3, 18, 14, 12, 57, 520),
(26, 'zelalembayih@gmail.com', 'UREA', 3, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 'Sunday', 'March', 2023, 3, 18, 19, 42, 9, 786),
(27, 'zelalembayih@gmail.com', 'DAP', 4, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 'Sunday', 'March', 2023, 3, 18, 19, 42, 12, 574),
(28, 'zelalembayih@gmail.com', 'Oil', 2, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 'Sunday', 'March', 2023, 3, 18, 19, 42, 14, 327),
(29, 'zelalembayih@gmail.com', 'UREA', 2, 'Yemezegn', 'bihonegnmenber@gmail.com', 'sell', 'cash in', 3500, 'Sunday', 'March', 2023, 3, 18, 19, 42, 15, 998),
(30, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'bihonegnmenber@gmail.com', 'sell', 'cash in', 4100, 'Sunday', 'March', 2023, 3, 18, 19, 42, 17, 731),
(31, 'zelalembayih@gmail.com', 'Oil', 3, 'Yemezegn', 'bihonegnmenber@gmail.com', 'sell', 'cash in', 500, 'Sunday', 'March', 2023, 3, 18, 19, 42, 19, 469),
(32, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 'Sunday', 'March', 2023, 3, 18, 20, 16, 54, 778),
(33, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 'Sunday', 'March', 2023, 3, 18, 20, 16, 57, 901),
(34, 'zelalembayih@gmail.com', 'UREA', 2, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 'Monday', 'March', 2023, 3, 19, 14, 9, 55, 271),
(35, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 'Monday', 'March', 2023, 3, 19, 14, 9, 57, 674),
(36, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 'Monday', 'March', 2023, 3, 19, 14, 9, 59, 294),
(37, 'zelalembayih@gmail.com', 'DAP', 3, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 'Monday', 'March', 2023, 3, 19, 16, 3, 43, 479),
(38, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 'Monday', 'March', 2023, 3, 19, 16, 3, 45, 285),
(39, 'zelalembayih@gmail.com', 'DAP', 5, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 'Monday', 'March', 2023, 3, 19, 18, 6, 24, 685),
(40, 'zelalembayih@gmail.com', 'Oil', 2, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 'Monday', 'March', 2023, 3, 19, 18, 6, 28, 341),
(41, 'zelalembayih@gmail.com', 'DAP', 3, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 'Monday', 'March', 2023, 3, 19, 19, 8, 30, 366),
(42, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 'Monday', 'March', 2023, 3, 19, 19, 8, 32, 234),
(43, 'zelalembayih@gmail.com', 'DAP', 7, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 'Monday', 'March', 2023, 3, 19, 20, 29, 7, 265),
(44, 'zelalembayih@gmail.com', 'Oil', 3, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 'Monday', 'March', 2023, 3, 19, 20, 29, 9, 157),
(45, 'mulatfkadu@gmail.com', 'DAP', 2000, 'Yemezegn', '', 'buy', 'cash out', 3900, 'Friday', 'March', 2023, 3, 23, 11, 36, 3, 332),
(46, 'mulatfkadu@gmail.com', 'DAP', 4000, 'Yemezegn', '', 'buy', 'cash out', 3900, 'Friday', 'March', 2023, 3, 23, 11, 37, 38, 338),
(47, 'mulatfkadu@gmail.com', 'DAP', 4000, 'Yemezegn', '', 'buy', 'cash out', 3900, 'Friday', 'March', 2023, 3, 23, 11, 40, 22, 291),
(48, 'mulatfkadu@gmail.com', 'DAP', 4000, 'Yemezegn', '', 'buy', 'cash out', 3900, 'Friday', 'March', 2023, 3, 23, 12, 26, 43, 728),
(49, 'zelalembayih@gmail.com', 'DAP', 1000, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 12, 53, 28, 237),
(50, 'mulatfkadu@gmail.com', 'UREA', 2000, 'Yemezegn', '', 'buy', 'cash out', 3400, 'Friday', 'March', 2023, 3, 23, 13, 5, 55, 889),
(51, 'zelalembayih@gmail.com', 'UREA', 500, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 13, 43, 11, 117),
(52, 'mulatfkadu@gmail.com', 'Oil', 2000, 'Yemezegn', '', 'buy', 'cash out', 480, 'Friday', 'March', 2023, 3, 23, 13, 45, 28, 303),
(53, 'zelalembayih@gmail.com', 'Oil', 500, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 13, 46, 21, 584),
(54, 'mulatfkadu@gmail.com', 'Wheate', 3000, 'Yemezegn', '', 'buy', 'cash out', 5600, 'Friday', 'March', 2023, 3, 23, 13, 48, 53, 371),
(55, 'mulatfkadu@gmail.com', 'Teff', 1000, 'Yemezegn', '', 'buy', 'cash out', 9700, 'Friday', 'March', 2023, 3, 23, 13, 50, 11, 358),
(56, 'zelalembayih@gmail.com', 'Teff', 300, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 13, 51, 34, 736),
(57, 'zelalembayih@gmail.com', 'Wheate', 1000, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 13, 52, 0, 450),
(58, 'mulatfkadu@gmail.com', 'Sugar', 2000, 'Yemezegn', '', 'buy', 'cash out', 57, 'Friday', 'March', 2023, 3, 23, 14, 57, 55, 838),
(59, 'zelalembayih@gmail.com', 'Sugar', 500, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 14, 58, 47, 378),
(60, 'zelalembayih@gmail.com', 'Wheate', 600, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 15, 5, 42, 146),
(61, 'zelalembayih@gmail.com', 'Sugar', 400, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 15, 8, 44, 246),
(62, 'zelalembayih@gmail.com', 'Teff', 400, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 15, 13, 39, 285),
(63, 'zelalembayih@gmail.com', 'Sugar', 400, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 15, 18, 26, 718),
(64, 'zelalembayih@gmail.com', 'Wheate', 600, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 15, 54, 32, 712),
(65, 'zelalembayih@gmail.com', 'Teff', 500, 'Yemezegn', '', 'market', 'cash less', 0, 'Friday', 'March', 2023, 3, 23, 18, 49, 0, 63),
(66, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Sunday', 'March', 2023, 3, 25, 22, 19, 5, 77),
(67, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Sunday', 'March', 2023, 3, 25, 23, 40, 18, 167),
(68, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Monday', 'March', 2023, 3, 26, 10, 5, 2, 324),
(69, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Monday', 'March', 2023, 3, 26, 10, 6, 32, 806),
(70, 'mulatfkadu@gmail.com', 'Teff', 1000, 'Yemezegn', '', 'buy', 'cash out', 10000, 'Tuesday', 'March', 2023, 3, 27, 10, 28, 23, 666),
(71, 'zelalembayih@gmail.com', 'Teff', 400, 'Yemezegn', '', 'market', 'cash less', 0, 'Tuesday', 'March', 2023, 3, 27, 10, 40, 39, 221),
(72, 'zelalembayih@gmail.com', 'Teff', 400, 'Yemezegn', '', 'market', 'cash less', 0, 'Tuesday', 'March', 2023, 3, 27, 10, 42, 30, 278),
(73, 'zelalembayih@gmail.com', 'Teff', 400, 'Yemezegn', '', 'market', 'cash less', 0, 'Tuesday', 'March', 2023, 3, 27, 10, 52, 38, 446),
(74, 'mulatfkadu@gmail.com', 'Sugar', 2000, 'Yemezegn', '', 'buy', 'cash out', 60, 'Tuesday', 'March', 2023, 3, 27, 11, 7, 27, 914),
(75, 'zelalembayih@gmail.com', 'Sugar', 1000, 'Yemezegn', '', 'market', 'cash less', 0, 'Tuesday', 'March', 2023, 3, 27, 11, 8, 58, 502),
(76, 'zelalembayih@gmail.com', '216', 200, 'Yemezegn', '', 'market', 'cash less', 0, 'Tuesday', 'March', 2023, 3, 27, 17, 7, 50, 528),
(77, 'alebeleedmealem@gmail.com', 'Teff', 2000, 'Yeguarat', '', 'buy', 'cash out', 4800, 'Tuesday', 'March', 2023, 3, 27, 20, 23, 30, 927),
(78, 'alebeleedmealem@gmail.com', 'DAP', 4000, 'Yeguarat', '', 'buy', 'cash out', 1900, 'Tuesday', 'March', 2023, 3, 27, 20, 25, 3, 637),
(79, 'alebeleedmealem@gmail.com', 'UREA', 3000, 'Yeguarat', '', 'buy', 'cash out', 1700, 'Tuesday', 'March', 2023, 3, 27, 20, 33, 3, 648),
(80, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 12, 44, 13, 813),
(81, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 13, 14, 44, 772),
(82, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 13, 16, 2, 493),
(83, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 13, 17, 43, 325),
(84, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 13, 28, 57, 972),
(85, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 13, 35, 13, 507),
(86, 'zelalembayih@gmail.com', 'Oil', 2, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 500, 'Wednsday', 'March', 2023, 3, 28, 20, 19, 19, 181),
(87, 'zelalembayih@gmail.com', 'DAP', 10, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 4000, 'Wednsday', 'March', 2023, 3, 28, 20, 19, 21, 175),
(88, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 23, 22, 10, 581),
(89, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 23, 24, 5, 65),
(90, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 23, 24, 29, 367),
(91, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 23, 46, 33, 739),
(92, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Wednsday', 'March', 2023, 3, 28, 23, 46, 44, 552),
(93, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 0, 11, 37, 998),
(94, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 1, 30, 0, 806),
(95, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 8, 49, 14, 741),
(96, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 8, 49, 26, 331),
(97, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 8, 49, 36, 632),
(98, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 8, 55, 14, 974),
(99, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 8, 55, 24, 336),
(100, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 8, 55, 33, 220),
(101, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 9, 12, 56, 32),
(102, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 9, 13, 5, 495),
(103, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 9, 13, 15, 61),
(104, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 'Tursday', 'March', 2023, 3, 29, 11, 16, 6, 987);

-- --------------------------------------------------------

--
-- Table structure for table `showednotification`
--

CREATE TABLE `showednotification` (
  `email` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showednotification`
--

INSERT INTO `showednotification` (`email`, `notification_id`) VALUES
('ayinalemmenber@gmail.com', 543),
('bihonegnmenber@gmail.com', 543),
('luelmenber@gmail.com', 543);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fName` varchar(255) NOT NULL,
  `faName` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `kebele` varchar(255) NOT NULL,
  `subKebele` varchar(255) NOT NULL,
  `village` varchar(255) NOT NULL,
  `kebele_id_photo` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `user_state` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fName`, `faName`, `phone`, `email`, `username`, `user_role`, `password`, `kebele`, `subKebele`, `village`, `kebele_id_photo`, `photo`, `job`, `sex`, `age`, `user_state`, `active`) VALUES
('Alebele', 'Edmealem', 923233128, 'alebeleedmealem@gmail.com', 'DEA1500048', 'store', '549868a4539c07bc4db6b18c751eae6d', 'Yeguarat', 'Yeguarat', 'Yeguarat', 'https://i.ibb.co/2MZQ2Br/IdImage.png', 'https://i.ibb.co/SfDDfxc/photo.jpg', 'Manager', 'male', 27, 1, 0),
('Ayinalem', 'Menber', 923233128, 'ayinalemmenber@gmail.com', 'DEA1500003', 'user', 'c40cc61054c6e1588f1e01c3889bca92', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/F8zYJ0Q/IdImage.png', 'https://i.ibb.co/WsCrvd2/photo.jpg', 'Farmer', 'Male', 47, 1, 0),
('Bereket', 'Edmealem', 923233128, 'bereketedmealem@gmail.com', 'DEA1500031', 'manager', '1a3728537fae70e1632d028b8a5b3227', 'Yeguarat', 'Yeuarat', 'Yeguarat', 'https://i.ibb.co/2MZQ2Br/IdImage.png', 'https://i.ibb.co/SfDDfxc/photo.jpg', 'Manager', 'male', 25, 1, 0),
('Bihonegn', 'Menber', 923233128, 'bihonegnmenber@gmail.com', 'DEA1500024', 'user', '36d0153a5e382505698cf67ebf607b28', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/fNJ5gP4/IdImage.png', 'https://i.ibb.co/7RQ8Wfn/photo.jpg', 'Farmer', 'Male', 36, 1, 0),
('Kerealem', 'Eshetie', 923233128, 'kerealemeshetie@gmail.com', 'DEA1500001', 'woreda_admin', 'e69c1ec7ba12ba28117331b8fe48396e', 'Debre Elias', 'Elias', 'Elias', 'https://i.ibb.co/T08Mf34/IdImage.png', 'https://i.ibb.co/qCk9Fqk/photo.jpg', 'agriculture officer', 'Male', 28, 1, 0),
('Luel', 'Menber', 923233128, 'luelmenber@gmail.com', 'DEA1500079', 'user', 'be1b6f6a421be49698c4d64813ae9719', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/fNJ5gP4/IdImage.png', 'https://i.ibb.co/7RQ8Wfn/photo.jpg', 'Farmer', 'Male', 30, 1, 0),
('Mulat', 'Fkadu', 923233128, 'mulatfkadu@gmail.com', 'DEA1500062', 'store', 'ae3ceab19ed7468ef28e22bf18bfa9d9', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/x2BSnVW/IdImage.png', 'https://i.ibb.co/mckbkZS/photo.jpg', 'Manager', 'Male', 25, 1, 0),
('Yilkal', 'Ayinalem', NULL, 'yilkalayinalem@gmail.com', 'BDU1101920', 'customer', '44a0484f2f050891f08f0b55c07f5beb', '', '', '', '', '', '', '', 0, 1, 0),
('Zelalem', 'Bayih', 923233128, 'zelalembayih@gmail.com', 'DEA1500043', 'manager', '55d91af19c79ca65071ed7cc52909fc4', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/T08Mf34/IdImage.png', 'https://i.ibb.co/qCk9Fqk/photo.jpg', 'Manager', 'Male', 25, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_transaction`
--

CREATE TABLE `user_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_email` varchar(50) NOT NULL,
  `product_id` varchar(250) NOT NULL,
  `NoOrders` int(11) NOT NULL,
  `transaction_kebele` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agri_product`
--
ALTER TABLE `agri_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `email` (`post_email`);

--
-- Indexes for table `chattingtable`
--
ALTER TABLE `chattingtable`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `receive_email` (`receive_email`),
  ADD KEY `send_email` (`send_email`);

--
-- Indexes for table `cpidtable`
--
ALTER TABLE `cpidtable`
  ADD PRIMARY KEY (`cpid_id`),
  ADD KEY `cproduct_id` (`cproduct_id`),
  ADD KEY `c_email` (`c_email`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `fproduct_id` (`fproduct_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderrestriction`
--
ALTER TABLE `orderrestriction`
  ADD PRIMARY KEY (`restriction_id`),
  ADD KEY `notifier_email` (`notifier_email`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `patent_email` (`patent_email`);

--
-- Indexes for table `ratingandfavorite`
--
ALTER TABLE `ratingandfavorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `reporter_email` (`reporter_email`);

--
-- Indexes for table `showednotification`
--
ALTER TABLE `showednotification`
  ADD PRIMARY KEY (`email`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `user_transaction`
--
ALTER TABLE `user_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transaction_email` (`transaction_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agri_product`
--
ALTER TABLE `agri_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `chattingtable`
--
ALTER TABLE `chattingtable`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `cpidtable`
--
ALTER TABLE `cpidtable`
  MODIFY `cpid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=446;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=545;

--
-- AUTO_INCREMENT for table `orderrestriction`
--
ALTER TABLE `orderrestriction`
  MODIFY `restriction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=816;

--
-- AUTO_INCREMENT for table `ratingandfavorite`
--
ALTER TABLE `ratingandfavorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `user_transaction`
--
ALTER TABLE `user_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agri_product`
--
ALTER TABLE `agri_product`
  ADD CONSTRAINT `agri_product_ibfk_1` FOREIGN KEY (`post_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chattingtable`
--
ALTER TABLE `chattingtable`
  ADD CONSTRAINT `chattingtable_ibfk_1` FOREIGN KEY (`send_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cpidtable`
--
ALTER TABLE `cpidtable`
  ADD CONSTRAINT `cpidtable_ibfk_1` FOREIGN KEY (`cproduct_id`) REFERENCES `agri_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cpidtable_ibfk_2` FOREIGN KEY (`c_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `favorite_ibfk_2` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_ibfk_3` FOREIGN KEY (`fproduct_id`) REFERENCES `agri_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderrestriction`
--
ALTER TABLE `orderrestriction`
  ADD CONSTRAINT `orderrestriction_ibfk_1` FOREIGN KEY (`notifier_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD CONSTRAINT `ordertable_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordertable_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `agri_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordertable_ibfk_3` FOREIGN KEY (`patent_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratingandfavorite`
--
ALTER TABLE `ratingandfavorite`
  ADD CONSTRAINT `ratingandfavorite_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `agri_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratingandfavorite_ibfk_2` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `showednotification`
--
ALTER TABLE `showednotification`
  ADD CONSTRAINT `showednotification_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `showednotification_ibfk_2` FOREIGN KEY (`notification_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
