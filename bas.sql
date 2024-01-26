-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2024 at 01:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `katalaluan` varchar(10) NOT NULL,
  `notel` varchar(11) NOT NULL,
  `role` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0(superadmin) | 1(exco kebajikan) | 2(mpp biasa)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `katalaluan`, `notel`, `role`) VALUES
('camie', 'MUHAMMAD SYAHMI BIN AHMAD KAMAL', 'camie', '0183203439', '0'),
('mimie', 'NURUL SYAMIMI BINTI AHMAD KAMAL', 'mimie', '0182520928', '1'),
('piqah', 'NURUL AFIQAH BINTI MUHAMMAD AZHAR', 'piqah', '01121115892', '1'),
('zaff', 'MUHAMMAD ALTAMIS ZAFRI BIN ISMARIZAL', 'zaff', '0182520928', '0'),
('zul', 'MUHAMMAD IZZUL NAJMI BIN ABDUL MAJID', 'zul', '01164235390', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kenderaan`
--

CREATE TABLE `kenderaan` (
  `id_vehicle` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `date` date DEFAULT NULL,
  `seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kenderaan`
--

INSERT INTO `kenderaan` (`id_vehicle`, `type`, `date`, `seat`) VALUES
(14, 'Bas', '2024-01-26', 40);

-- --------------------------------------------------------

--
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `id_std` int(11) NOT NULL,
  `nama_std` varchar(100) NOT NULL,
  `no_kp` varchar(12) NOT NULL,
  `no_tel` varchar(13) NOT NULL,
  `emel` varchar(35) NOT NULL,
  `id_program` int(11) NOT NULL,
  `nama_bapa` varchar(100) NOT NULL,
  `notel_bapa` varchar(13) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `notel_ibu` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`id_std`, `nama_std`, `no_kp`, `no_tel`, `emel`, `id_program`, `nama_bapa`, `notel_bapa`, `nama_ibu`, `notel_ibu`) VALUES
(2, 'MUHAMMAD ALTAMIS ZAFRI BIN ISMARIZAL', '040311100671', '0182520928', 'altamiszafri09@gmail.com', 26, 'ISMARIZAL BIN ISMAIL', '0136102025', 'SUSILAWATI BINTI MAT SAMAN', '0193207220'),
(3, 'SHAHFUL HAKIM BIN SUNARTO', '040401100229', '01169667140', 'shahfulhakim25@gmail.com', 26, 'SUNARTO BN SUYATNI', '0000000000', 'ZURAIDAH BINTI OTHMAN', '0000000000'),
(4, 'NURAINAA MAISARA BINTI MOHD JUMMAT', '041215100156', '01164262823', 'ainaasara92@gmail.com', 26, 'MOHD JUMMAT BIN DAUD', '0162127931', 'RAHIMAH BINTI BASAR', '0162028821'),
(8, 'ADAM HARITH BIN KAMAL', '040717140585', '0102060289', 'adamhkamal@gmail.com', 30, 'KAMAL BIN ZAINUL', '0192789769', 'NORASKEEN BINTI HAMZAH ', '0162890289'),
(9, 'MOHAMAD AMIR HANAFIAH BIN AFNIZANIZAM', '051011120797', '0196111568', 'amirhanbola@gmail.com', 25, 'AFNIZANIZAM BIN MOHAMAD', '0136102025', 'ZURAIDAH BINTI OTHMAN', '0198765432'),
(17, 'MUHAMMAD IZHAR ISKANDAR BIN MOHD SYAFIQ AIMAN', '040312100593', '0165217055', 'muhammadizhariskandar@gmail.com', 26, 'MOHD SYAFIQ AIMAN BIN ABDULLAH', '0193108258', 'NORZANA BINTI AZIZ', '0143377055'),
(18, 'LUQMANUL HAKIM BIN YUNIZAM', '041030080963', '0197837854', 'mankimmankim113@gmail.com', 26, 'YUNIZAM BIN YUSOP', '0123171032', 'KAMLIAH BINTI SAHUD', '0198765432'),
(19, 'NURUL SYAMIMI BINTI AHMAD KAMAL', '090421140822', '0182520928', 'nurulsyamimi@gmail.com', 14, 'AHMAD KAMAL BIN ABDUL AZIZ', '0123171032', 'YUSNITA BINTI YUNUS', '0125703657'),
(20, 'MALIK BIN TAIYIB', '040404040404', '011111111', 'malik@gmail.com', 18, 'TAIYIB BIN YUNIZAM', '0000000001', 'ROSE BIN YUNIZAM', '0000000002'),
(21, 'MOHAMAD KAMARUL BAHRIN BIN BEHERAN', '040422100375', '0176267482', 'mkamarul935@gmail.com', 26, 'AHMAD KAMAL BIN ABDUL AZIZ', '0125703657', 'ZURAIDAH BINTI OTHMAN', '0198765432'),
(22, 'AAAA', '040921140000', '0183203439', 'excoperhubunganpelajar@gmail.com', 26, 'AHMAD KAMAL BIN ABDUL AZIZ', '0123171032', 'ZURAIDAH BINTI OTHMAN', '0125703657'),
(25, 'MUHAMMAD SYAHMI BIN AHMAD KAMAL', '040921141059', '0183203439', 'muhammadsyahmi422@gmail.com', 26, 'AHMAD KAMAL BIN ABDUL AZIZ', '0123171032', 'YUSNITA BINTI YUNUS', '0125703657');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id_program` int(11) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `program` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id_program`, `tahun`, `nama`, `program`) VALUES
(1, 'TAHUN 1 SIJIL VOKASIONAL MALAYSIA', 'PERAKAUNAN', '1 SVM BAK'),
(2, 'TAHUN 2 SIJIL VOKASIONAL MALAYSIA', 'PERAKAUNAN', '2 SVM BAK'),
(3, 'TAHUN 1 DIPLOMA VOKASIONAL MALAYSIA', 'PERAKAUNAN', '1 DVM BAK'),
(4, 'TAHUN 2 DIPLOMA VOKASIONAL MALAYSIA', 'PERAKAUNAN', '2 DVM BAK'),
(7, 'TAHUN 1 SIJIL VOKASIONAL MALAYSIA', 'PEMASARAN', '1 SVM BPM'),
(8, 'TAHUN 2 SIJIL VOKASIONAL MALAYSIA', 'PEMASARAN', '2 SVM BPM'),
(9, 'TAHUN 1 DIPLOMA VOKASIONAL MALAYSIA', 'PEMASARAN', '1 DVM BPM'),
(10, 'TAHUN 2 DIPLOMA VOKASIONAL MALAYSIA', 'PEMASARAN', '2 DVM BPM'),
(11, 'TAHUN 1 SIJIL VOKASIONAL MALAYSIA', 'SENI KULINARI', '1 SVM HSK'),
(12, 'TAHUN 2 SIJIL VOKASIONAL MALAYSIA', 'SENI KULINARI', '2 SVM HSK'),
(13, 'TAHUN 1 DIPLOMA VOKASIONAL MALAYSIA', 'SENI KULINARI', '1 DVM HSK'),
(14, 'TAHUN 2 DIPLOMA VOKASIONAL MALAYSIA', 'SENI KULINARI', '2 DVM HSK'),
(15, 'TAHUN 1 SIJIL VOKASIONAL MALAYSIA', 'BAKERI & PASTERI', '1 SVM HBP'),
(16, 'TAHUN 2 SIJIL VOKASIONAL MALAYSIA', 'BAKERI & PASTERI', '2 SVM HBP'),
(17, 'TAHUN 1 DIPLOMA VOKASIONAL MALAYSIA', 'BAKERI & PASTERI', '1 DVM HBP'),
(18, 'TAHUN 2 DIPLOMA VOKASIONAL MALAYSIA', 'BAKERI & PASTERI', '2 DVM HBP'),
(23, 'TAHUN 1 SIJIL VOKASIONAL MALAYSIA', 'TEKNOLOGI SISTEM PENGURUSAN PANGKALAN DATA & APLIKASI WEB', '1 SVM KPD'),
(24, 'TAHUN 2 SIJIL VOKASIONAL MALAYSIA', 'TEKNOLOGI SISTEM PENGURUSAN PANGKALAN DATA & APLIKASI WEB', '2 SVM KPD'),
(25, 'TAHUN 1 DIPLOMA VOKASIONAL MALAYSIA', 'TEKNOLOGI SISTEM PENGURUSAN PANGKALAN DATA & APLIKASI WEB', '1 DVM KPD'),
(26, 'TAHUN 2 DIPLOMA VOKASIONAL MALAYSIA', 'TEKNOLOGI SISTEM PENGURUSAN PANGKALAN DATA & APLIKASI WEB', '2 DVM KPD'),
(27, 'TAHUN 1 SIJIL VOKASIONAL MALAYSIA', 'MULTIMEDIA KREATIF ANIMASI', '1 SVM KMK'),
(28, 'TAHUN 2 SIJIL VOKASIONAL MALAYSIA', 'MULTIMEDIA KREATIF ANIMASI', '2 SVM KMK'),
(29, 'TAHUN 1 DIPLOMA VOKASIONAL MALAYSIA', 'MULTIMEDIA KREATIF ANIMASI', '1 DVM KMK'),
(30, 'TAHUN 2 DIPLOMA VOKASIONAL MALAYSIA', 'MULTIMEDIA KREATIF ANIMASI', '2 DVM KMK'),
(31, 'TAHUN 1 SISTEM LATIHAN DUAL NASIONAL', 'OPERASI PEMBUATAN PERABOT', '1 SLDN OPP'),
(32, 'TAHUN 2 SISTEM LATIHAN DUAL NASIONAL', 'OPERASI PEMBUATAN PERABOT', '2 SLDN OPP');

-- --------------------------------------------------------

--
-- Table structure for table `tiket`
--

CREATE TABLE `tiket` (
  `id_tkt` int(11) NOT NULL,
  `id_vehicle` int(11) NOT NULL,
  `id_std` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `bil_tiket` int(11) NOT NULL DEFAULT 0,
  `status` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0(pending) | 1(done) | 2(cancel)',
  `attendance` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1(blom naik) | 2(dh naik)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tiket`
--

INSERT INTO `tiket` (`id_tkt`, `id_vehicle`, `id_std`, `method`, `bil_tiket`, `status`, `attendance`) VALUES
(63, 14, 25, 'Tunai', 1, '1', '2'),
(64, 14, 2, 'Tunai', 1, '1', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `kenderaan`
--
ALTER TABLE `kenderaan`
  ADD PRIMARY KEY (`id_vehicle`);

--
-- Indexes for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD PRIMARY KEY (`id_std`),
  ADD UNIQUE KEY `no_kp` (`no_kp`),
  ADD KEY `id_program` (`id_program`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id_program`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tkt`),
  ADD UNIQUE KEY `id_std` (`id_std`),
  ADD KEY `id_vehicle` (`id_vehicle`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kenderaan`
--
ALTER TABLE `kenderaan`
  MODIFY `id_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `id_std` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
