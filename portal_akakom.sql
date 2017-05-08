-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2017 at 03:04 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal_akakom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berita_kampus`
--

CREATE TABLE `berita_kampus` (
  `id_berita_kampus` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `images` varchar(50) NOT NULL,
  `tgl_dibuat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `info_kampus`
--

CREATE TABLE `info_kampus` (
  `id_info_kampus` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `images` varchar(50) NOT NULL,
  `tgl_dibuat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tautan_kampus`
--

CREATE TABLE `tautan_kampus` (
  `id_tautan_kampus` int(11) NOT NULL,
  `judul` varchar(25) NOT NULL,
  `link` int(100) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `berita_kampus`
--
ALTER TABLE `berita_kampus`
  ADD PRIMARY KEY (`id_berita_kampus`);

--
-- Indexes for table `info_kampus`
--
ALTER TABLE `info_kampus`
  ADD PRIMARY KEY (`id_info_kampus`);

--
-- Indexes for table `tautan_kampus`
--
ALTER TABLE `tautan_kampus`
  ADD PRIMARY KEY (`id_tautan_kampus`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `berita_kampus`
--
ALTER TABLE `berita_kampus`
  MODIFY `id_berita_kampus` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `info_kampus`
--
ALTER TABLE `info_kampus`
  MODIFY `id_info_kampus` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tautan_kampus`
--
ALTER TABLE `tautan_kampus`
  MODIFY `id_tautan_kampus` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
