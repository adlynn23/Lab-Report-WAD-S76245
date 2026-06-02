-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 02, 2026 at 05:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carpricelist`
--

CREATE TABLE `carpricelist` (
  `Car_id` int(11) NOT NULL,
  `Brand` varchar(15) DEFAULT NULL,
  `Model` varchar(30) DEFAULT NULL,
  `Cyclinder` int(11) DEFAULT NULL,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carpricelist`
--

INSERT INTO `carpricelist` (`Car_id`, `Brand`, `Model`, `Cyclinder`, `Price`) VALUES
(2, 'Perodua', 'axia ', 4, 32000),
(3, 'Toyota', 'Innova', 3, 40000),
(4, 'Volkswagen', 'Golf', 4, 68000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carpricelist`
--
ALTER TABLE `carpricelist`
  ADD PRIMARY KEY (`Car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carpricelist`
--
ALTER TABLE `carpricelist`
  MODIFY `Car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
