-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Okt 2022 pada 11.40
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
-- Database: `donasidb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `donasi`
--

CREATE TABLE `donasi` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_brg` varchar(255) DEFAULT NULL,
  `kondisi` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `gmr` text DEFAULT NULL,
  `kategori` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `donasi`
--

INSERT INTO `donasi` (`id`, `id_kategori`, `nama_brg`, `kondisi`, `deskripsi`, `gmr`, `kategori`, `alamat`, `no_hp`, `createdAt`, `updatedAt`) VALUES
(14, 1, 'buku', 'bekas', 'kaca', '-', 'buku dan majalah', 'padang', '123456789', '2022-09-04 18:46:23', '2022-09-04 18:46:23'),
(15, 0, 'buku', 'bekas', 'kaca', '-', 'buku dan majalah', 'padang', '123456789', '2022-09-04 18:47:45', '2022-09-04 18:47:45'),
(16, 0, 'dress', '', 'kaca', 'C:\\fakepath\\Our Fashion Editors Favorite Pieces From H&M\'s Spring Collection.jpg', NULL, 'padang', '1234565789', '2022-09-04 19:10:01', '2022-09-04 19:10:01'),
(17, 0, 'buku tulis', 'baru', 'warna pink', 'C:\\fakepath\\blooming blue.png', NULL, 'padang', '088270945729', '2022-09-04 19:45:29', '2022-09-04 19:45:29'),
(18, 0, 'kotak tisu', 'baru', 'warna abu-abu', 'C:\\fakepath\\Tissue box cover pattern by Petra Burgerova.jpg', NULL, 'padang', '1234565789', '2022-09-04 20:28:05', '2022-09-04 20:28:05'),
(19, 0, 'tas', 'baru', 'kain', 'C:\\fakepath\\Floral White Daisy Flower Pattern Canvas Totebag Tote Bag _ Zazzle.jpg', NULL, 'padang', '088270945729', '2022-09-06 14:35:59', '2022-09-06 14:35:59'),
(20, 0, 'tas make up', 'bekas', 'kain', 'C:\\fakepath\\All Christmas Gifts _ Oliver Bonas.png', NULL, 'padang', '088270945729', '2022-09-18 17:20:54', '2022-09-18 17:20:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `histori`
--

CREATE TABLE `histori` (
  `id` int(11) NOT NULL,
  `id_order` text DEFAULT NULL,
  `nama_order` varchar(255) DEFAULT NULL,
  `alamat_order` varchar(255) DEFAULT NULL,
  `barang_order` varchar(255) DEFAULT NULL,
  `hp_order` varchar(255) DEFAULT NULL,
  `ongkir` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `histori`
--

INSERT INTO `histori` (`id`, `id_order`, `nama_order`, `alamat_order`, `barang_order`, `hp_order`, `ongkir`, `status`, `createdAt`, `updatedAt`) VALUES
(1, '1', 'siska', 'padang', 'gelas', '123456789', '12000', 'belum kirim', '2022-09-04 11:02:00', '2022-09-04 11:02:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kategori` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `hrg_ongkir` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_donasi` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postalCode` text DEFAULT NULL,
  `no_hp` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `id_donasi`, `fullName`, `city`, `postalCode`, `no_hp`, `createdAt`, `updatedAt`) VALUES
(31, 0, 'dara', 'padang', '1234', '123456789', '2022-09-04 18:51:48', '2022-09-04 18:51:48'),
(32, 0, 'anaya', 'padang', '1234', '123456789', '2022-09-04 19:00:39', '2022-09-04 19:00:39'),
(33, 0, 'Fauza Darmansyah', 'Bukittinggi', '26191', '088270945729', '2022-09-04 19:20:29', '2022-09-04 19:20:29'),
(34, 0, 'Fauza Darmansyah', 'Bukittinggi', '26191', '088270945729', '2022-09-04 19:46:17', '2022-09-04 19:46:17'),
(35, 0, 'anaya', 'padang', '1234', '123456789', '2022-09-04 20:07:49', '2022-09-04 20:07:49'),
(36, 0, 'anaya', 'padang', '1234', '123456789', '2022-09-04 20:08:01', '2022-09-04 20:08:01'),
(37, 0, 'anaya', 'padang', '1234', '123456789', '2022-09-04 20:08:03', '2022-09-04 20:08:03'),
(38, 0, 'Fauza Darmansyah', 'Bukittinggi', '26191', '088270945729', '2022-09-05 04:22:55', '2022-09-05 04:22:55'),
(39, 0, 'Fauza Darmansyah', 'Bukittinggi', '26191', '088270945729', '2022-09-05 04:36:06', '2022-09-05 04:36:06'),
(40, 0, '', '', '', '', '2022-09-05 05:50:04', '2022-09-05 05:50:04'),
(41, 0, 'Fauza Darmansyah', 'Bukittinggi', '26191', '088270945729', '2022-09-06 14:46:03', '2022-09-06 14:46:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(20, 'rarara', 'rarara@gmail.com', '$2b$10$GXJqsx21FYTyIDxuS9m3KuCDvr577ieUEVIJqCWjqCCTnBZHr4Xke', NULL, '2022-09-01 12:01:53', '2022-09-03 20:00:18'),
(21, 'devika', 'devika@gmail.com', '$2b$10$g.iU48c19xTYgJl1e2Udu.n.2P/gzxQWygna0pIEr9MC/0xbfkpZ6', NULL, '2022-09-01 12:16:38', '2022-09-01 12:16:38'),
(22, 'sarara', 'sarara@gmail.com', '$2b$10$eM7LjS94ev08ZOMBe4KlruiYzfUr72P0CDXZzVzfIfprjyZPDO.Ti', NULL, '2022-09-01 12:21:08', '2022-09-01 12:21:08'),
(23, 'katara', 'katara@gmail.com', '$2b$10$556UMurP9vCG28grJEKpPuJ7YTC6fwv3CK1.yg0E4XT.rvey0KkhG', NULL, '2022-09-01 12:44:20', '2022-09-01 12:44:20'),
(28, 'andara', 'andara@gmail.com', '$2b$10$WKQVlvNoIPf3XtKaakeBZ.O.GSo5CpeXxHrS9HFEURxhbKlWRd7G2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI4LCJuYW1lIjoiYW5kYXJhIiwiZW1haWwiOiJhbmRhcmFAZ21haWwuY29tIiwiaWF0IjoxNjYyMjM1MjExLCJleHAiOjE2NjIzMjE2MTF9.AIMNg7t_eKywdb2nb-P5LpzHAML7dbBJQH4U_Fnc8Ww', '2022-09-03 19:46:53', '2022-09-03 20:00:11'),
(29, 'yanara', 'yanara@gmail.com', '$2b$10$9tNHkA03cj22FASwdbiTouS.EMb9KZMxElmmJQkBxBcEeFdNIfYdy', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI5LCJuYW1lIjoieWFuYXJhIiwiZW1haWwiOiJ5YW5hcmFAZ21haWwuY29tIiwiaWF0IjoxNjY0ODI3ODExLCJleHAiOjE2NjQ5MTQyMTF9.qbTRtYHXJFTGlihnFLSkq4f6PoKcuKXyi9dJZAhqBTw', '2022-09-04 07:09:54', '2022-10-03 20:10:11'),
(30, 'admin', 'admin@gmail.com', 'admin', NULL, '2022-09-08 15:03:34', '2022-09-08 15:03:34'),
(31, 'namiko', 'namiko@gmail.com', '$2b$10$q5CDRfPsy1u0mD6R/J7CXeAwJB211PT.sw8CAhr.65Vaw7fMdal92', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMxLCJuYW1lIjoibmFtaWtvIiwiZW1haWwiOiJuYW1pa29AZ21haWwuY29tIiwiaWF0IjoxNjY0ODI3NDM1LCJleHAiOjE2NjQ5MTM4MzV9.cTRWOpGQ9taZMlDGxxd9pBc5z4D3frudEds7vgX7rS8', '2022-10-02 08:25:15', '2022-10-03 20:03:55'),
(32, 'namiko', 'namiko@gmail.com', '$2b$10$hbcHVKKR6UBK5Izdg/M.d.qCBtASiitNGzMxH89fs7LkaUaLjICz.', NULL, '2022-10-03 18:45:29', '2022-10-03 18:45:29'),
(33, 'boogoo', 'boogoo@gmail.com', '$2b$10$im8aeHCHb.UmOO8Yokb16OP1sABbrNruf3M7klKZc9Cq6db236imi', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMzLCJuYW1lIjoiYm9vZ29vIiwiZW1haWwiOiJib29nb29AZ21haWwuY29tIiwiaWF0IjoxNjY0OTExNDg3LCJleHAiOjE2NjQ5OTc4ODd9.avLUhgr-TLBBS22U1znbFbUd5zByZxZsmeNg8EROihI', '2022-10-03 19:06:20', '2022-10-04 19:24:47'),
(34, 'mamama', 'mamama@gmail.com', '$2b$10$7UyohQIeCHr3fNRxNYJ.dux6eE23TIk8dbvbCEqg6vafgd9Va1ONS', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjM0LCJuYW1lIjoibWFtYW1hIiwiZW1haWwiOiJtYW1hbWFAZ21haWwuY29tIiwiaWF0IjoxNjY0ODI3NDk4LCJleHAiOjE2NjQ5MTM4OTh9.rNOuICJIcXh4NXazcKRMlfiXpSfVFq3bzBqlNZF2b7c', '2022-10-03 19:08:07', '2022-10-03 20:04:58');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `histori`
--
ALTER TABLE `histori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_donasi` (`id_donasi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `histori`
--
ALTER TABLE `histori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `kategori_ibfk_1` FOREIGN KEY (`id`) REFERENCES `donasi` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
