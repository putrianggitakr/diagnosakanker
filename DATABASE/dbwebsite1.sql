-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 09:18 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spforwardcf3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_diagnosa`
--

CREATE TABLE `tb_diagnosa` (
  `kode_diagnosa` varchar(16) NOT NULL,
  `nama_diagnosa` varchar(255) DEFAULT NULL,
  `solusi` text NOT NULL,
  `penyebab` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_diagnosa`
--

INSERT INTO `tb_diagnosa` (`kode_diagnosa`, `nama_diagnosa`, `solusi`, `penyebab`) VALUES
('P001', 'Kanker Mulut', 'Karena penyebabnya belum diketahui, kanker mulut tidak dapat dicegah sepenuhnya. Tetapi pasien tetap dapat mengambil langkah-langkah sederhana untuk menurunkan risiko menderita kanker mulut, yaitu:\r\nTidak merokok.\r\nMenghindari konsumsi minuman\r\nMemperbanyak konsumsi sayur dan buah-buahan.\r\nMenjaga kebersihan mulut dengan rutin menyikat gigi.\r\nMemeriksa kesehatan gigi secara teratur, setidaknya setahun sekali.\r\n', ''),
('P002', 'Kanker Tenggorokan', 'Kanker tenggorokan dapat dicegah dengan menghindari faktor-faktor risikonya. Beberapa langkah pencegahan kanker tenggorokan antara lain:\r\nBerhenti merokok.\r\nBerhenti atau mengurangi konsumsi minuman alkohol.\r\nMelakukan vaksinasi HPV.\r\nMelakukan hubungan seks dengan aman untuk mencegah infeksi HPV.\r\nBanyak mengonsumsi sayur dan buah.\r\n', ''),
('P003', 'Kanker Paru-Paru', 'Kanker paru-paru dapat dicegah dengan menghindari faktor-faktor yang dapat meningkatkan risiko munculnya kanker ini. Cara yang dapat dilakukan adalah:\r\nJangan merokok, berhentilah merokok, dan hindari asap rokok. Ini merupakan cara utama untuk mencegah kanker paru-paru.\r\nGunakan alat pelindung diri di tempat kerja yang banyak paparan bahan kimia berbahaya.\r\nLakukan pemeriksaan secara rutin, terutama bila Anda memiliki riwayat merokok atau bekerja di lingkungan yang tinggi paparan bahan kimia.\r\nPerbanyak konsumsi buah dan sayur, serta hindari mengonsumsi suplemen vitamin dalam dosis besar.\r\nLakukan olahraga secara teratur selama 30 menit tiap harinya.\r\n', ''),
('P004', 'Kanker Payudara', 'Anda dapat mencegah kanker payudara dengan menghindari faktor-faktor tersebut, yaitu dengan melakukan beberapa hal di bawah ini:\r\nHentikan kebiasaan merokok apa pun\r\nAnda yang pernah menjadi perokok saja masih memiliki risiko terkena kanker payudara sebesar 6-9 persen lebih tinggi daripada mereka yang tidak pernah merokok sama sekali. Kondisi yang lebih buruk bisa Anda alami jika masih aktif merokok, yaitu 7-13 persen lebih berisiko untuk terkena kanker payudara.', ''),
('P005', 'Kanker Kandung Kemih', 'Berhenti merokok, Konsultasi pada dokter dan jalani semua metode untuk berhenti merokok, agar zat karsinogenik tidak semakin menumpuk di dalam tubuh.\r\nHindari paparan kimia, Ikuti prosedur keselamatan dan gunakan alat pelindung diri untuk menghindari paparan zat kimia di lingkungan kerja.\r\nBanyak mengonsumsi buah-buahan dan sayur, Kandungan antioksidan pada buah dan sayur bisa mengurangi risiko kanker.\r\n', ''),
('P006', 'Stroke', 'Pengobatan stroke tergantung kepada kondisi yang dialami pasien. Dokter dapat memberikan obat-obatan atau melakukan operasi. Sedangkan untuk memulihkan kondisi, pasien akan dianjurkan menjalani fisioterapi, dan diikuti terapi psikologis apabila diperlukan.\r\nUntuk mencegah penyakit stroke :\r\nHindari merokok dan mengonsumsi minuman keras.\r\nMenerapkan pola makan yang sehat.\r\nBerolahraga secara rutin.\r\n', ''),
('P007', 'Bronkitis', 'Bronkitis ringan dapat hilang dengan sendirinya. Namun jika kondisinya cukup berat, bronkitis harus diatasi dengan obat-obatan. Untuk membantu pengobatan, disarankan untuk banyak minum air putih dan istirahat yang cukup.\r\nBronkitis dapat dicegah dengan beberapa cara, antara lain:\r\nMenghindari rokok.\r\nMenerima vaksin flu dan pneumonia.\r\nMenjaga kebersihan dan selalu mencuci tangan setiap usai beraktivitas.\r\nMengenakan masker untuk menghindari paparan senyawa berbahaya.\r\nGunakan alat pelembap udara: udara yang hangat dan lembap membantu meredakan batuk dan mengurangi lendir di dalam saluran udara\r\n', ''),
('P008', 'Impotensi', 'Pengobatan impotensi juga sebaiknya diiringi dengan gaya hidup sehat. Menerapkan gaya hidup yang sehat akan mempercepat proses penyembuhan, selain juga dapat mencegah terjadinya impotensi. Caranya adalah dengan:\r\nBerhenti merokok\r\nBerolahraga secara rutin\r\nMengonsumsi makanan bergizi seimbang\r\nIstirahat dengan cukup\r\nMenghindari konsumsi minuman beralkohol\r\nTidak menggunakan NAPZA\r\nMenjalani pemeriksaan kesehatan secara ruti\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `kode_gejala` varchar(16) NOT NULL,
  `nama_gejala` varchar(255) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`kode_gejala`, `nama_gejala`, `keterangan`) VALUES
('G01', 'Perubahan	suara	serta	sulit atau rasa sakit saat menelan serta mengunyah			', ''),
('G02', 'Pembengkakan	pada	wajah dan leher						', ''),
('G03', 'Bercak kemerahan atau putih dalam  mulut,  dan  lidah terasa sakit atau mulut nyeri', ''),
('G04', 'Pendarahan pada rongga mulut  dan gigi tanggal dengan sendirinya', ''),
('G05', 'Batuk  kronis serta telinga terasa sakit dan berdengung', ''),
('G06', 'Timbul  benjolan  yang muncul di sekitar  mata, rahang,  leher,  atau      tenggorokan', ''),
('G07', 'Pembengkakan kelenjar getah bening', ''),
('G08', 'Dada sesak, nyeri, dan berat', ''),
('G09', 'Batuk  berdahak disertai bercak darah', ''),
('G10', 'Sakit pada tulang, bisa pada bahu,  lengan  atau tangan serta perubahan pada bentuk jari, yaitu ujung jari menjadi cembung', ''),
('G11', 'Gatal-gatal  atau  rasa  sakit pada payudara atau ketiak serta perubahan ukuran atau  bentuk puting', ''),
('G12', 'Kemunculan benjolan atau pembengkakan    yang kemerahan pada ketiak, atau payudara,  atau  kulit payudara yang menebal serta keluarnya cairan dari puting (biasanya disertai darah)', ''),
('G13', 'Frekuensi buang air kecil semakin sering, tapi jumlah urine  yang  dikeluarkan hanya  sedikit, serta warna      urin keruh atau kuning kemerahan', ''),
('G14', 'Kandung kemih terasa tegang, penuh,  keras dan nyeri  pada perut bagian      bawah, serta nyeri atau perih ketika buang air kecil', ''),
('G15', 'Sakit kepala yang tiba-tiba', ''),
('G16', 'Tiba-tiba kehilangan kesadaran, keseimbangan, koordinasi, kontrol tubuh,    dan bicara tidak jelas', ''),
('G17', 'Kelemahan dan kelumpuhan  pada beberapa bagian tubuh  (wajah, lengan, tangan,  terutama pada salah satu sisi  tubuh)', ''),
('G18', 'Penyakit infeksi saluran pernapasan (flu atau pilek)', ''),
('G19', 'Keluar lendir  dari rongga hidung  terus menerus yang berwarna kemerahan', ''),
('G20', 'Pembengkakan  pada pergelangan kaki,  kaki, dan tungkai kiri serta kanan', ''),
('G21', 'Terlalu cepat ejakulasi', ''),
('G22', 'Kesulitan memulai  dan mempertahankan ereksi', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil`
--

CREATE TABLE `tb_hasil` (
  `id` int(5) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl` varchar(255) NOT NULL,
  `hasil_konsultasi` varchar(255) NOT NULL,
  `kepercayaan` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil`
--

INSERT INTO `tb_hasil` (`id`, `nik`, `nama`, `no_hp`, `jk`, `alamat`, `tgl`, `hasil_konsultasi`, `kepercayaan`) VALUES
(349, '', 'dewita', '08212323', 'Laki - Laki', 'padang', '02:21 - 07 September 2020', '', ''),
(322, '', 'Alucard', '8043867482', 'Laki - Laki', 'Localhost', '01:31 - 01 Desember 2019', '', ''),
(323, '', 'Alucard', '8043867482', 'Laki - Laki', 'Localhost', '01:31 - 01 Desember 2019', 'Kanker Tenggorokan', '12'),
(320, '', 'Juna', '085242574556', 'Laki - Laki', 'Land Of Dawn', '01:20 - 01 Desember 2019', '', ''),
(324, '', 'gunawan xd', '123', 'Laki - Laki', 'Padang', '05:42 - 29 April 2020', '', ''),
(325, '', 'gunawan xd', '123', 'Laki - Laki', 'Padang', '05:42 - 29 April 2020', 'Stroke', '7'),
(326, '', 'Adenomiosis', '123', 'Laki - Laki', 'aceh', '08:49 - 29 April 2020', '', ''),
(327, '', 'Adenomiosis', '123', 'Laki - Laki', 'aceh', '08:49 - 29 April 2020', 'Impotensi', '9'),
(328, '', 'gunawan', '123', 'Laki - Laki', 'qwerty', '10:12 - 29 April 2020', '', ''),
(329, '', 'gunawan', '123', 'Laki - Laki', 'qwerty', '10:12 - 29 April 2020', 'Stroke', '8'),
(330, '', 'gunawan', '123', 'Laki - Laki', 'qwerty', '10:12 - 29 April 2020', 'Stroke', '8'),
(331, '', 'user saja', '345', 'Laki - Laki', 'frfrfr', '13:49 - 29 April 2020', '', ''),
(332, '', 'user saja', '345', 'Laki - Laki', 'frfrfr', '13:49 - 29 April 2020', 'Kanker Kandung Kemih', '19'),
(333, '', 'gunawan', '085381259307', 'Perempuan', 'aceh', '03:00 - 01 Juli 2020', '', ''),
(346, '', 'dewi', '08212323', 'Perempuan', 'jambi', '02:19 - 07 September 2020', 'Stroke', '5'),
(335, '', 'adg', '085381259307', 'Laki - Laki', 'Padang', '03:03 - 01 Juli 2020', '', ''),
(345, '', 'dewi', '08212323', 'Perempuan', 'jambi', '02:19 - 07 September 2020', '', ''),
(337, '', 'gunawan xd', '123', 'Laki - Laki', 'aceh', '01:32 - 24 Juli 2020', '', ''),
(338, '', 'gunawan xd', '123', 'Laki - Laki', 'aceh', '01:32 - 24 Juli 2020', 'Kanker Mulut', '35'),
(339, '', 'gunawan', '085381259307', 'Laki - Laki', 'Padang', '14:13 - 07 Agustus 2020', '', ''),
(348, '', 'rikko', '08212323', 'Laki - Laki', 'jambi', '02:20 - 07 September 2020', 'Kanker Tenggorokan', '12'),
(341, '', 'gunawan', '085381259307', 'Laki - Laki', '123123', '02:10 - 03 September 2020', '', ''),
(347, '', 'rikko', '08212323', 'Laki - Laki', 'jambi', '02:20 - 07 September 2020', '', ''),
(343, '', 'dewita', '08212323', 'Perempuan', 'jambi', '02:16 - 07 September 2020', '', ''),
(344, '', 'dewita', '08212323', 'Perempuan', 'jambi', '02:16 - 07 September 2020', 'Stroke', '6'),
(350, '', 'dewita', '08212323', 'Laki - Laki', 'padang', '02:21 - 07 September 2020', 'Kanker Kandung Kemih', '13'),
(351, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', '', ''),
(352, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17'),
(353, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17'),
(354, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17'),
(355, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17'),
(356, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17'),
(357, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17'),
(358, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17'),
(359, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17'),
(360, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17'),
(361, '', 'dewita', '082123230', 'Perempuan', 'jambi', '03:11 - 07 September 2020', 'Kanker Kandung Kemih', '17');

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsultasi`
--

CREATE TABLE `tb_konsultasi` (
  `ID` int(11) NOT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL,
  `jawaban` varchar(6) DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_konsultasi`
--

INSERT INTO `tb_konsultasi` (`ID`, `kode_gejala`, `jawaban`) VALUES
(1, 'G01', 'Ya'),
(2, 'G03', 'Tidak'),
(3, 'G04', 'Ya'),
(4, 'G05', 'Ya'),
(5, 'G06', 'Tidak'),
(6, 'G07', 'Ya'),
(7, 'G14', 'Ya'),
(8, 'G15', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_relasi`
--

CREATE TABLE `tb_relasi` (
  `ID` int(11) NOT NULL,
  `kode_diagnosa` varchar(16) DEFAULT NULL,
  `kode_gejala` varchar(16) DEFAULT NULL,
  `mb` double DEFAULT NULL,
  `md` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_relasi`
--

INSERT INTO `tb_relasi` (`ID`, `kode_diagnosa`, `kode_gejala`, `mb`, `md`) VALUES
(90, 'P001', 'G01', 1, 0.4),
(91, 'P002', 'G01', 1, 0.3),
(92, 'P001', 'G03', 1, 0.5),
(93, 'P001', 'G04', 1, 0.6),
(94, 'P002', 'G05', 1, 0.5),
(95, 'P002', 'G06', 1, 0.2),
(96, 'P002', 'G07', 1, 0.2),
(97, 'P003', 'G08', 1, 0.6),
(98, 'P003', 'G09', 1, 0.6),
(99, 'P003', 'G10', 1, 0.3),
(100, 'P004', 'G11', 1, 0.6),
(101, 'P004', 'G12', 1, 0.5),
(102, 'P007', 'G08', 1, 0.6),
(103, 'P005', 'G13', 1, 0.5),
(104, 'P005', 'G14', 1, 0.4),
(105, 'P002', 'G14', 1, 0.4),
(106, 'P002', 'G15', 1, 0.5),
(107, 'P006', 'G15', 1, 0.1),
(108, 'P002', 'G16', 1, 0.3),
(109, 'P006', 'G16', 1, 0.3),
(110, 'P006', 'G17', 1, 0.3),
(111, 'P007', 'G18', 1, 0.4),
(112, 'P007', 'G19', 1, 0.4),
(113, 'P007', 'G20', 1, 0.5),
(114, 'P008', 'G21', 1, 0.2),
(115, 'P008', 'G22', 1, 0.3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `tb_diagnosa`
--
ALTER TABLE `tb_diagnosa`
  ADD PRIMARY KEY (`kode_diagnosa`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_relasi`
--
ALTER TABLE `tb_relasi`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_hasil`
--
ALTER TABLE `tb_hasil`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;
--
-- AUTO_INCREMENT for table `tb_konsultasi`
--
ALTER TABLE `tb_konsultasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_relasi`
--
ALTER TABLE `tb_relasi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
