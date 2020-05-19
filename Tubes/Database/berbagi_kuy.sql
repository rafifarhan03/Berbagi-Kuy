-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2020 pada 11.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berbagi_kuy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_donatur`
--

CREATE TABLE `data_donatur` (
  `Nama` varchar(20) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `No_Telp` varchar(12) NOT NULL,
  `surel` varchar(30) NOT NULL,
  `No_Rekening` varchar(20) NOT NULL,
  `jumlah_donasi` int(15) NOT NULL,
  `Tujuan_Berbagi` enum('Sedekah','Zakat','Duafa') NOT NULL,
  `jenis_pembayaran` enum('Gopay','Paypal','Transfer','Indomaret') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_donatur`
--

INSERT INTO `data_donatur` (`Nama`, `jenis_kelamin`, `No_Telp`, `surel`, `No_Rekening`, `jumlah_donasi`, `Tujuan_Berbagi`, `jenis_pembayaran`) VALUES
('Fahmi Rizal', 'laki-laki', '089632423233', 'rizalfahmi10@gmail.com', '0340202323023242', 1000000, 'Sedekah', 'Transfer'),
('Ajeng Nurrahmah', 'perempuan', '081232140932', 'ajengnurahmah12@gmail.com', '0492019202', 1000000, 'Sedekah', 'Paypal'),
('Andi Iswandi', 'laki-laki', '085734092898', 'andiiswandi@gmail.com', '0530239089', 400000, 'Sedekah', 'Paypal'),
('Cahaya Qurani', 'perempuan', '08572131210', 'cahayaqurani23@gmail.com', '0540230323', 50000, 'Zakat', 'Paypal'),
('Retno Eka', 'perempuan', '085768382387', 'retnoka656@gamail.com', '0700239293200', 900000, 'Duafa', 'Transfer'),
('Gusdi Yamin', 'laki-laki', '082367673424', 'gusdiyamin@gmail.com', '0792387438', 150000, 'Zakat', 'Gopay'),
('Farhan Zule', 'laki-laki', '089611023912', 'zulfarhan599@gmail.com', '130-00-2121373', 200000, 'Zakat', 'Gopay'),
('Iwan Gustiawan', 'laki-laki', '082389812839', 'gustiawan20@gmail.com', '130-10-204234', 750000, 'Sedekah', 'Paypal'),
('Novrianti', 'perempuan', '083989393398', 'novrianti22@gmail.com', '131-00-2132142', 75000, 'Zakat', 'Transfer'),
('Felicia Amel', 'perempuan', '085789302398', 'feliciamel@gmail.com', '7319489399', 100000, 'Duafa', 'Transfer');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_donatur`
--
ALTER TABLE `data_donatur`
  ADD PRIMARY KEY (`No_Rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
