-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Des 2022 pada 12.50
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kel6_pbo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `listmobil`
--

CREATE TABLE `listmobil` (
  `Id_mobil` int(11) NOT NULL,
  `Merk` varchar(50) NOT NULL,
  `Warna` varchar(20) NOT NULL,
  `Harga` int(11) NOT NULL,
  `QTY` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `listmobil`
--

INSERT INTO `listmobil` (`Id_mobil`, `Merk`, `Warna`, `Harga`, `QTY`, `id`) VALUES
(1, 'Alya', 'Hitam', 263000000, 1, 1),
(2, 'Honda Brio ', 'Oren', 157000000, 1, 2),
(3, 'Toyota Calya', 'Abu Abu', 169000000, 1, 3),
(4, 'Suzuki Baleno', 'Biru', 262000000, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbregis`
--

CREATE TABLE `tbregis` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `re-type password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbregis`
--

INSERT INTO `tbregis` (`id`, `nama`, `username`, `password`, `re-type password`) VALUES
(1, '', 'arvin', '123', '[C@1a4f388f'),
(2, '', 'refan', '123', '[C@46cc3a9'),
(3, '', 'anton', '123', '[C@45ca5b09'),
(4, '', 'riri', '321', '[C@1219a343');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `listmobil`
--
ALTER TABLE `listmobil`
  ADD PRIMARY KEY (`Id_mobil`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `tbregis`
--
ALTER TABLE `tbregis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbregis`
--
ALTER TABLE `tbregis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `listmobil`
--
ALTER TABLE `listmobil`
  ADD CONSTRAINT `listmobil_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbregis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
