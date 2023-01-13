-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 11:25 AM
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
-- Database: `php-pdo-crud-toets`
--

-- --------------------------------------------------------

--
-- Table structure for table `dureauto`
--

CREATE TABLE `dureauto` (
  `Id` int(11) UNSIGNED NOT NULL,
  `Merk` varchar(200) DEFAULT NULL,
  `Model` varchar(200) DEFAULT NULL,
  `Topsnelheid` smallint(4) DEFAULT NULL,
  `Prijs` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dureauto`
--

INSERT INTO `dureauto` (`Id`, `Merk`, `Model`, `Topsnelheid`, `Prijs`) VALUES
(1, 'Bugatti', 'La vioture noire', 420, '16500000'),
(2, 'Rolls-Royce', 'Swaptail', 250, '10960000'),
(3, 'Bugatti', 'EB110', 390, '7500000'),
(4, 'Mercedes-Benz', 'Maybach Exelero', 350, '6700000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dureauto`
--
ALTER TABLE `dureauto`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dureauto`
--
ALTER TABLE `dureauto`
  MODIFY `Id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
