-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2022 pada 06.11
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kendaraan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tjenis`
--

CREATE TABLE `tjenis` (
  `id_jenis` int(10) NOT NULL,
  `nama_jenis` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tjenis`
--

INSERT INTO `tjenis` (`id_jenis`, `nama_jenis`, `status`) VALUES
(1, 'bebek', 'aktif'),
(2, 'matic', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tkendaraan`
--

CREATE TABLE `tkendaraan` (
  `id_kendaraan` int(10) NOT NULL,
  `nama_kendaraan` varchar(20) NOT NULL,
  `aktif` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tkendaraan`
--

INSERT INTO `tkendaraan` (`id_kendaraan`, `nama_kendaraan`, `aktif`) VALUES
(1, 'motor', '1'),
(2, 'mobil', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmesin`
--

CREATE TABLE `tmesin` (
  `id_mesin` int(10) NOT NULL,
  `nama_mesin` char(20) NOT NULL,
  `kendaraan_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tmesin`
--

INSERT INTO `tmesin` (`id_mesin`, `nama_mesin`, `kendaraan_id`) VALUES
(1, 'jepang', 1),
(2, 'china', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ttype`
--

CREATE TABLE `ttype` (
  `id_type` int(10) NOT NULL,
  `nama_type` varchar(20) NOT NULL,
  `mesin_id` int(10) NOT NULL,
  `jenis_id` int(10) NOT NULL,
  `kendaraan_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ttype`
--

INSERT INTO `ttype` (`id_type`, `nama_type`, `mesin_id`, `jenis_id`, `kendaraan_id`) VALUES
(1, '123s', 1, 1, 2),
(2, '321h', 1, 1, 2),
(3, '321i', 2, 2, 2),
(4, 'uer2', 2, 2, 1),
(5, '231h', 2, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tjenis`
--
ALTER TABLE `tjenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `tkendaraan`
--
ALTER TABLE `tkendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indeks untuk tabel `tmesin`
--
ALTER TABLE `tmesin`
  ADD PRIMARY KEY (`id_mesin`);

--
-- Indeks untuk tabel `ttype`
--
ALTER TABLE `ttype`
  ADD PRIMARY KEY (`id_type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
