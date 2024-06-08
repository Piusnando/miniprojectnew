-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 01:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualantiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `infokonser`
--

CREATE TABLE `infokonser` (
  `id` int(11) NOT NULL,
  `artis` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `infokonser`
--

INSERT INTO `infokonser` (`id`, `artis`, `tanggal`, `lokasi`) VALUES
(1, 'Sheila on 7', '2024-04-20', 'Stadion Kridosono'),
(2, 'Guyon ', '2024-04-10', 'Maguwo'),
(3, 'Tulus', '2024-04-28', 'Hotel Colombo');

-- --------------------------------------------------------

--
-- Table structure for table `konser`
--

CREATE TABLE `konser` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konser`
--

INSERT INTO `konser` (`id`, `nama`) VALUES
(1, 'Sheila on 7'),
(2, 'Guyon Waton'),
(3, 'Tulus');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `nohp` int(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jumlahtiket` int(11) NOT NULL,
  `posisi` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `namalengkap`, `nohp`, `alamat`, `email`, `jumlahtiket`, `posisi`) VALUES
(3, 'adudu', 284562517, 'sewon', 'adudu@gmail.com', 2, 5),
(4, 'Pius Jasticio Harnnando', 2147483647, 'Mancasan', 'pius.nando@gmail.com', 3, 1),
(5, 'ndaktau', 2147483647, 'sewon', 'adudu@gmail.com', 2, 1),
(7, 'donna', 2147483647, 'bogem', 'ndaktau@gmail.com', 2, 5),
(8, 'wibu', 2147483647, 'timoho', 'wibu@gmail.com', 1, 1),
(10, 'adudu', 2147483647, 'sewon', 'adudu@gmail.com', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'pius.nando@gmail.com', 'Marcelasu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `infokonser`
--
ALTER TABLE `infokonser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konser`
--
ALTER TABLE `konser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `infokonser`
--
ALTER TABLE `infokonser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
