-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2022 at 01:31 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suket`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_suket`
--

CREATE TABLE `jenis_suket` (
  `id_jenis` int NOT NULL,
  `jenis` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jenis_suket`
--

INSERT INTO `jenis_suket` (`id_jenis`, `jenis`) VALUES
(1, 'Surat Keterangan Aktif Kuliah'),
(2, 'Surat Keterangan Kartu Tanda Mahasiswa (KTM) Sementara'),
(3, 'Surat Rekomendasi Beasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `pejabat`
--

CREATE TABLE `pejabat` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttd` varchar(10) NOT NULL,
  `cap` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `prodi`) VALUES
(1, 'Teknik Perkapalan'),
(2, 'Teknik Mesin'),
(3, 'Teknik Sistem Perkapalan'),
(4, 'Teknik Industri'),
(5, 'Teknik Sipil'),
(6, 'Perencanaan Wilayah dan Kota'),
(7, 'Teknik Perminyakan'),
(8, 'Teknik Geologi'),
(9, 'Teknik Geofisika'),
(10, 'Teknik Kimia'),
(11, 'Teknik Transportasi Laut');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `nim` varchar(10) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tmplahir` varchar(50) NOT NULL,
  `tglahir` date NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` int DEFAULT '2',
  `active` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`nim`, `pass`, `nama`, `jk`, `tmplahir`, `tglahir`, `prodi`, `hp`, `email`, `level`, `active`) VALUES
('12345', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Laki-Laki', 'Ambon', '1980-11-01', '6', '08212342323', 'admin@gmail.com', 1, 'Y'),
('19820929', 'ffc150a160d37e92012c196b6af4160d', 'Victor Pattiradjawane', 'Laki-Laki', 'Ambon', '1982-09-29', '7', '081343199719', 'victoreric@gmail.com', 2, 'Y'),
('201971001', 'c3ec0f7b054e729c5a716c8125839829', 'coba', 'Perempuan', 'Surabaya', '1990-06-03', '11', '081213123', 'coba@gmail.com', 2, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `semester` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `thnakd` varchar(15) NOT NULL,
  `ortu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pekerjaan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pangkat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tujuan` varchar(80) NOT NULL,
  `ukt` varchar(50) NOT NULL,
  `krs` varchar(50) NOT NULL,
  `dns` varchar(50) NOT NULL,
  `kk` varchar(50) NOT NULL,
  `skortu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ttd` varchar(50) NOT NULL,
  `cap` varchar(50) NOT NULL,
  `date_signature` date NOT NULL DEFAULT '2022-01-10',
  `nomor_surat` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_surat`, `nim`, `nama`, `prodi`, `semester`, `thnakd`, `ortu`, `pekerjaan`, `nip`, `pangkat`, `alamat`, `jenis`, `tujuan`, `ukt`, `krs`, `dns`, `kk`, `skortu`, `date_create`, `ttd`, `cap`, `date_signature`, `nomor_surat`) VALUES
(107, '19820929', 'Victor Pattiradjawane', '7', 'II (Dua)', '2021 - Genap', '', '', '', '', NULL, '2', 'BPJS', '19820929Konfirmasi cekIn.pdf', '19820929Konfirmasi cekIn.pdf', '19820929Konfirmasi cekIn.pdf', '19820929Konfirmasi cekIn.pdf', '', '2022-06-07 00:46:13', '', '', '2022-01-10', NULL),
(108, '19820929', 'Victor Pattiradjawane', '7', 'IX (Sembilan)', '2021 - Genap', '', '', '', '', NULL, '2', 'tes testes', '19820929Konfirmasi cekIn.pdf', '19820929Konfirmasi cekIn.pdf', '19820929Konfirmasi cekIn.pdf', '19820929Konfirmasi cekIn.pdf', '', '2022-06-08 20:59:07', 'ttd.png', 'cap.png', '2022-06-08', '1234/SK/unp/2022'),
(109, '19820929', 'Victor Pattiradjawane', '7', 'III (Tiga)', '2021 - Genap', 'papa ganteng', 'kerja lah', '', '', 'Jln. Batu Merah Dalam RT/RW:003/009 Kelurahan Ahusen Kecamatan Sirimau Kota Ambon', '3', 'beasiswa kampung halaman', '19820929Konfirmasi cekIn.pdf', '19820929Konfirmasi cekIn.pdf', '19820929Konfirmasi cekIn.pdf', '19820929Konfirmasi cekIn.pdf', '', '2022-06-08 21:16:07', 'ttd.png', 'cap.png', '2022-06-08', '98765/SK/unp/2002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_suket`
--
ALTER TABLE `jenis_suket`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `pejabat`
--
ALTER TABLE `pejabat`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
