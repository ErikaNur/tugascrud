-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Apr 2022 pada 12.06
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
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `Id_buku` int(11) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Penulis` varchar(50) NOT NULL,
  `Penerbit` varchar(50) NOT NULL,
  `Tahun_terbit` year(4) NOT NULL,
  `Cover_buku` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`Id_buku`, `Judul`, `Penulis`, `Penerbit`, `Tahun_terbit`, `Cover_buku`) VALUES
(22, 'Filosofi Teras', 'Henry Manampiring', 'Kompas Gramedia', 2019, '04-25-22.05-40-23.buku 1.jpg'),
(23, 'Atomic Habits', 'James Clear', 'Avery Publishing Grou', 2018, '04-25-22.05-40-50.buku 2.jpg'),
(24, 'Earth', 'Tere Liye', 'Gramedia Pustaka utama', 2014, '04-25-22.05-41-06.buku 3.jpg'),
(25, 'The Psychology of Money', 'Morgan Housel', 'Harriman House Limited', 2020, '04-25-22.05-41-21.buku 4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `Id_peminjaman` int(11) NOT NULL,
  `nama_peminjam` varchar(25) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `waktu_peminjaman` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`Id_peminjaman`, `nama_peminjam`, `judul_buku`, `waktu_peminjaman`) VALUES
(9, 'Erika', 'Filosofi Teras', '2022-04-25 10:41:44'),
(10, 'Nur', 'Atomic Habits', '2022-04-25 10:41:49'),
(11, 'Putri', 'The Psychology of Money', '2022-04-25 10:41:54'),
(12, 'Shinta', 'Earth', '2022-04-25 10:42:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `Id_user` int(11) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Hak_akses` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`Id_user`, `Username`, `Password`, `Hak_akses`) VALUES
(5, 'admin', 'admin', 'admin'),
(6, 'admin2', 'admin2', 'admin'),
(7, 'anggota', 'anggota', 'anggota');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Id_buku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`Id_peminjaman`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`Id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `Id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `Id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
