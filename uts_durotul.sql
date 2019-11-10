-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 08:50 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_durotul`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `email`, `jurusan`, `jenis_kelamin`, `alamat`, `nomor_hp`) VALUES
(1, 'Durrotul Awaliyah', '161240000498', 'awaliyah123@gmail.com', 'Teknik Informatika', 'perempuan', 'mindahan', '082241505439'),
(2, 'Endah Wahyuningsih', '161240000580', 'endahh@gamail.com', 'Teknik Informatika', 'Perempuan', 'Cepogo', '08652431290'),
(3, 'Widi Astuti', '161240000432', 'widas@gmail.com', 'Teknik Informatika', 'Perempuan', 'Bangsri', '089231456777'),
(4, 'Anis Safitri', '161240000479', 'safitri@gmail.com', 'Teknik Informatika', 'Perempuan', 'Jepara', '0822345666754'),
(6, 'Melati Nur Indah S', '161240000476', 'melatiku@gmail.com', 'Teknik Informatika', 'Perempuan', 'Ngabul', '081222333337'),
(17, 'Nina Ismaya', '16124000086', 'noviakris56@gmail.com', 'Teknik Informatika', 'Perempuan', 'pengkol', '082241505439');

--
-- Triggers `mahasiswa`
--
DELIMITER $$
CREATE TRIGGER `log_perubahan` BEFORE UPDATE ON `mahasiswa` FOR EACH ROW insert into tgl_perubahan
set nim=old.nim,
nomor_hp_lama =old.nomor_hp,
nomor_hp_baru=new.nomor_hp,
tgl_perubahan=now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tgl_perubahan`
--

CREATE TABLE `tgl_perubahan` (
  `id` int(11) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nomor_hp_lama` varchar(255) NOT NULL,
  `nomor_hp_baru` varchar(255) NOT NULL,
  `tgl_perubahan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tgl_perubahan`
--

INSERT INTO `tgl_perubahan` (`id`, `nim`, `nomor_hp_lama`, `nomor_hp_baru`, `tgl_perubahan`) VALUES
(1, '2147483647', '08888888', '923829928903028', '2019-11-10 06:05:08'),
(2, '1612400004', '', '082241505439', '2019-11-10 06:50:07'),
(3, '2147483647', '082241505439', '082241505439', '2019-11-10 07:08:34'),
(4, '1612400005', '', '08652431289', '2019-11-10 07:09:47'),
(5, '2147483647', '', '089231456777', '2019-11-10 07:11:04'),
(6, '2147483647', '', '0822345666754', '2019-11-10 07:12:35'),
(7, '2147483647', '', '081222288000', '2019-11-10 07:14:04'),
(8, '2147483647', '923829928903028', '081222333337', '2019-11-10 07:16:01'),
(9, '161240000587', '08652431289', '08652431289', '2019-11-10 07:27:58'),
(10, '161240000580', '08652431289', '08652431290', '2019-11-10 07:28:17'),
(11, '161240000498', '082241505439', '082241505439', '2019-11-10 07:48:01'),
(12, '16124000086', '082241505439', '082241505439', '2019-11-10 07:48:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tgl_perubahan`
--
ALTER TABLE `tgl_perubahan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tgl_perubahan`
--
ALTER TABLE `tgl_perubahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
