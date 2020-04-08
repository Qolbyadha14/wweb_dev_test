-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Apr 2020 pada 11.54
-- Versi Server: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(25) NOT NULL,
  `kat_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `nama_menu`, `icon`, `link`, `kat_menu`) VALUES
(1, 'Dasboard', 'fa fa-dashboard', '#', 0),
(3, 'Dasboard 2', 'fa fa-dashboard', 'dashboard/2', 1),
(4, 'Seting Menu', 'fa fa-gears', '#', 0),
(6, 'menu admin', 'fa fa-gear', 'menu', 4),
(8, 'Roles User', 'fa fa-dashboard', 'menu/roles', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id_rules` int(4) NOT NULL,
  `id_user` int(10) NOT NULL,
  `module` varchar(50) NOT NULL,
  `create_akses` tinyint(1) NOT NULL,
  `read_akses` tinyint(1) NOT NULL,
  `edit_akses` tinyint(1) NOT NULL,
  `delete_akses` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rules`
--

CREATE TABLE `tb_rules` (
  `id_rules` int(4) NOT NULL,
  `id_user` int(10) NOT NULL,
  `module` varchar(50) NOT NULL,
  `create_akses` tinyint(1) NOT NULL,
  `read_akses` tinyint(1) NOT NULL,
  `edit_akses` tinyint(1) NOT NULL,
  `delete_akses` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `u_id` int(3) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `u_name` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `u_paswd` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `role` varchar(15) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`u_id`, `nama`, `u_name`, `u_paswd`, `role`) VALUES
(3, 'User admin', 'User', '21232f297a57a5a743894a0e4a801fc3', 'User'),
(4, 'Qol', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
