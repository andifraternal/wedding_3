-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 03:17 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedding_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `kehadiran` enum('Y','N') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_tamu`, `nama`, `alamat`, `email`, `kehadiran`, `created_at`, `updated_at`) VALUES
(1, 'vdavad vdasvsa', 'vsas vasvasvas vava', 'andifraternal@gmail.com', 'Y', '2021-07-26 12:47:17', '2021-07-26 12:47:17'),
(2, 'vdavad vdasvsa', 'vsas vasvasvas vava', 'andifraternal@gmail.com', '', '2021-07-26 12:47:57', '2021-07-26 12:47:57'),
(3, 'cobaad ba d', 'vsavsa avsv', 'andifraternal@gmail.com', '', '2021-07-26 12:48:50', '2021-07-26 12:48:50'),
(4, 'cobaad ba d', 'vsavsa avsv', 'andifraternal@gmail.com', '', '2021-07-26 12:49:35', '2021-07-26 12:49:35'),
(5, 'cobaad ba d', 'vsavsa avsv', 'andifraternal@gmail.com', '', '2021-07-26 12:49:38', '2021-07-26 12:49:38'),
(6, 'cobaad ba d', 'vsavsa avsv', 'andifraternal@gmail.com', 'N', '2021-07-26 12:50:23', '2021-07-26 12:50:23'),
(7, 'cobaad ba d', 'vsavsa avsv', 'andifraternal@gmail.com', 'N', '2021-07-26 12:50:36', '2021-07-26 12:50:36'),
(8, 'vdavd', 'vdavd', 'andifraternal@gmail.com', 'Y', '2021-07-26 13:04:59', '2021-07-26 13:04:59'),
(9, 'casvca advasdva', 'vsdavasvsa', 'andifraternal@gmail.com', 'Y', '2021-07-26 13:07:10', '2021-07-26 13:07:10'),
(10, '', '', '', '', '2021-07-26 13:09:38', '2021-07-26 13:09:38'),
(11, '', '', '', '', '2021-07-26 13:10:17', '2021-07-26 13:10:17'),
(12, 'casv asdvasv', ' avsvas vavs', 'andifraternal@gmail.com', 'Y', '2021-07-26 13:12:28', '2021-07-26 13:12:28'),
(13, 'asdvd dbd', 'vdavad dbda', 'andifraternal@gmail.com', 'N', '2021-07-26 13:20:16', '2021-07-26 13:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `informasi_dasar`
--

CREATE TABLE `informasi_dasar` (
  `icon_logo` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tanggal_akad` date NOT NULL,
  `jam_akad_mulai` time NOT NULL,
  `jam_akad_selesai` time NOT NULL,
  `tempat_akad` text NOT NULL,
  `tanggal_resepsi` date NOT NULL,
  `jam_resepsi_mulai` time NOT NULL,
  `jam_resepsi_selesai` time NOT NULL,
  `tempat_resepsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `love_story`
--

CREATE TABLE `love_story` (
  `deskripsi` text NOT NULL,
  `bulan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
