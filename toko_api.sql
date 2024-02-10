-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2023 pada 04.44
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Anjas', 'anjas123@gmail.com', '$2y$12$Lat8PD.8tUMhh9senEO/fe0caJfmUpuwiHjbXgjZJ9xk5kEaYIg/2'),
(2, 'asep', 'asep@gmail.com', '$2y$12$qd6BToCADMIJRtSNz.s1ye25.cPsjvqeyN38Nn5feycSCzXDuERQ2'),
(3, 'Ahmad', 'ahmad@gmail.com', '$2y$12$E0YvfkbyEP3jm/3Q0505/e4TLqj3iX4g3G80lEnG5h74iS59qGXry'),
(4, 'aspe', 'asdep8@gmail.com', '$2y$12$Xo41021IAnNp5Wdl6vJ1w.ARheyPtyVJJBpQwzoqyjDxRuzEOnybm'),
(5, 'aspe', 'asdep8@gmail.com', '$2y$12$i5R4gdNVn3fxTQ.H00imYO07E.pe/xq/FqyKNgItsv8gZCJlzFtN6'),
(6, 'aspe', 'asdep8@gmail.com', '$2y$12$t2dDjM6Pgm34FJlvn5XMQO1.7ilM5PUmzYR7o8qN75rmVUwPl/i6y'),
(7, 'anj', 'Anjay@gmail.com', '$2y$12$a6z96KPQkRRdI.PU00aA5ugjhEKe0PKhYixB1Dl7fBEgr6rNsHS8O'),
(8, 'anjas', 'anjas9@gmail.com', '$2y$12$sJ3M1YTcfGYn1ubgFLC4weZQyTrhU1qbsIIZ5DyeYCB8MV9pgMffO'),
(9, 'anjas', 'anjas@gmail.com', '$2y$12$IruyyBoXvimnsJ.j8.BlFOUnVeIKgmhDiBjSVFK0/ScqXBiaKpbYy'),
(10, 'anjas', 'anjas@gmail.com', '$2y$12$8ZsWkREZ9nyJwN8SxKVaxew41d6c8RoytH5lGGKoWFnpG/VPSM4HC'),
(11, 'anjas', 'anjas@gmail.comm', '$2y$12$2vxrlY6ofkYGNgePxqfd5OD9kuwLuAo.tCkW82UEqDD7B8gj9bOz2'),
(12, 'annas', 'anjas@gmail.com', '$2y$12$dSH5SNWEoP/hOPQjZFk9hOwPn1R/LOYp/NV2GrEgmllNS4OCb1PQW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member_token`
--

CREATE TABLE `member_token` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(1, 1, 'k'),
(2, 1, 'b'),
(3, 7, 'r'),
(4, 7, 'M5hIXyHGd3xhRsKtUSOTvmaxdxUTW3dIYdbDfs4rRVPbaYFlGo3S1bJdqCYdDUlBojotdOkJxo6N2VZxVtsvTqq9OUdwIKg6ejnv'),
(5, 9, 'ctbLMd8zedJMhPbLFb9RtTWwRPQkThCYzm2O71srAfbzrBxzfh2jaTGLj6MunnsBRLwOddLma4xkslLKlnws8sU2ijMPaVfmjWrG'),
(6, 9, 'Usso71npMZRHsfYfFliXmCw1Kf6P5kaHl6PzoHVy3RQsYYE3n1CDlmUxdv5VknkQdsEHeKTrR1l1Id9l1Fe5FjQrpTUp4bXeZurI'),
(7, 11, 'dlhF1yGJDLmd9XQUakd9ld71Wp5CKxvKdwCgkBQhRgyCHbYxcf3ssJEwc88TZssAoRfzq887OKEIqd1ucbBDIxHd6tnJLd72uk1I'),
(8, 9, 'OfEGH7UbUwdiDa5j8HoIkzW3bbOadl11TqwsUxBhBlSZE96mXRbCaZZL1IwWby1Htsv3ZpBaLVXBzsHkzVsfMKuOduXyYZBKDS8d'),
(9, 9, 'wQVT6ZgkjNyFJddQZMIUWUZhK26z4vt9cc41PsoAyPIwWrDduztI7aMOcFTz5u68byYt3YhI29zLycwed6sKH5dJrshdFmlsxssu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(1, 'b004', 'mejaaaa', 2000),
(2, 'H09', 'bangku', 200),
(4, 'B988', 'Ganba', 455);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `member_token`
--
ALTER TABLE `member_token`
  ADD CONSTRAINT `member_token_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
