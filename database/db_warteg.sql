-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 27 Jun 2023 pada 05.26
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_warteg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_makanan`
--

CREATE TABLE `daftar_makanan` (
  `id` int(11) NOT NULL,
  `nama_makanan` varchar(256) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `daftar_makanan`
--

INSERT INTO `daftar_makanan` (`id`, `nama_makanan`, `harga`, `status`) VALUES
(1, 'Paket 10.000(bakwan, sayur,nasi)', 10000, 'Tersedia'),
(3, 'Paket 15.000(ayam, nasi)', 15000, 'Tersedia'),
(4, 'Paket 20.000(ayam,nasi,sambel)', 20000, 'Tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `nama_makanan` varchar(256) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status_bayar` varchar(256) NOT NULL,
  `uang_bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tanggal` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `email`, `nama_makanan`, `harga_satuan`, `jumlah`, `total`, `status_bayar`, `uang_bayar`, `kembalian`, `tanggal`) VALUES
(5, 'abdultalif85@gmail.com', 'Paket 15.000(ayam, nasi)', 15000, 3, 45000, '1', 50000, 5000, '26 Jun 2023'),
(6, 'abdultalif85@gmail.com', 'Paket 10.000(bakwan, sayur,nasi)', 10000, 2, 20000, '0', 0, 0, '26 Jun 2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`) VALUES
(21, 'admin', 'admin@gmail.com', 'default.jpg', '$2y$10$.I8kX96a6z0K/Xq8/2.B4ulmAPt7GAD3iqdU8Be3L7iHDqZurYS/.', 1),
(22, 'user', 'user@gmail.com', 'default.jpg', '$2y$10$.I8kX96a6z0K/Xq8/2.B4ulmAPt7GAD3iqdU8Be3L7iHDqZurYS/.', 2),
(23, 'Abdul Talif Parinduri', 'abdultalif85@gmail.com', 'default.jpg', '$2y$10$01ZqnAEzqq33yPSu/5s/aOBMDf349/iJVMUHu5.HHpB92PM35rprC', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_makanan`
--
ALTER TABLE `daftar_makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_makanan`
--
ALTER TABLE `daftar_makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
