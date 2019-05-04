-- phpMyAdmin SQL Dump
-- version 4.1.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2018 at 07:48 AM
-- Server version: 5.1.62
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbsimpansementara`
--

CREATE TABLE IF NOT EXISTS `tbsimpansementara` (
  `urut` int(11) NOT NULL AUTO_INCREMENT,
  `nourut` varchar(20) NOT NULL,
  `noMeja` varchar(30) NOT NULL,
  `idDetailTransaksi` varchar(20) NOT NULL,
  `namaItem` varchar(30) NOT NULL,
  `harga` int(20) NOT NULL,
  `diskon` varchar(30) NOT NULL,
  `jumlahPembelian` varchar(6) NOT NULL,
  `total` varchar(20) NOT NULL,
  `tanggalPembelian` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  PRIMARY KEY (`urut`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_akses_diskonpoin`
--

CREATE TABLE IF NOT EXISTS `tb_akses_diskonpoin` (
  `id_acces_diskon` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(36) NOT NULL,
  `kode` text NOT NULL,
  PRIMARY KEY (`id_acces_diskon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_diskon`
--

CREATE TABLE IF NOT EXISTS `tb_data_diskon` (
  `id_diskon` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah_diskon` int(11) NOT NULL,
  `ket` varchar(36) NOT NULL,
  PRIMARY KEY (`id_diskon`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_poin`
--

CREATE TABLE IF NOT EXISTS `tb_data_poin` (
  `id_poin` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah_poin` int(11) NOT NULL,
  `ket` varchar(36) NOT NULL,
  PRIMARY KEY (`id_poin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_detail_transaksi` (
  `urut` int(11) NOT NULL AUTO_INCREMENT,
  `nomeja` varchar(500) NOT NULL,
  `iddetailtransaksi` varchar(500) NOT NULL,
  `namaitem` varchar(400) NOT NULL,
  `harga` double NOT NULL,
  `diskon` int(15) DEFAULT NULL,
  `jumlahpembelian` int(11) NOT NULL,
  `total` double NOT NULL,
  `tanggalpembelian` date DEFAULT NULL,
  `keterangan` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`urut`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=160 ;

--
-- Dumping data for table `tb_detail_transaksi`
--

INSERT INTO `tb_detail_transaksi` (`urut`, `nomeja`, `iddetailtransaksi`, `namaitem`, `harga`, `diskon`, `jumlahpembelian`, `total`, `tanggalpembelian`, `keterangan`) VALUES
(1, '', '1', '  Kornet', 4000, 0, 7, 28000, '0000-00-00', '1'),
(2, '', '1', '  Kornet', 4000, 0, 79, 316000, '0000-00-00', '1'),
(3, '', '1', '  Sosis', 4000, 0, 7, 28000, '0000-00-00', '1'),
(4, '', '1', 'Air Putih Pitcher', 5000, 0, 8, 40000, '0000-00-00', '1'),
(5, '', '1', '  Kornet', 4000, 0, 7, 28000, '2018-07-05', '1'),
(6, '', '1', '  Kornet', 4000, 0, 79, 316000, '2018-07-05', '1'),
(7, '', '1', '  Sosis', 4000, 0, 7, 28000, '2018-07-05', '1'),
(8, '', '1', 'Air Putih Pitcher', 5000, 0, 8, 40000, '2018-07-05', '1'),
(12, '', '1', '  Kornet', 4000, 0, 1, 4000, '2018-07-05', '1'),
(13, '', '1', '  Keju', 4000, 0, 1, 4000, '2018-07-05', '1'),
(14, '', '1', '  Keju', 4000, 0, 1, 4000, '2018-07-05', '1'),
(15, '', '1', '  Oreo', 2000, 0, 1, 2000, '2018-07-05', '1'),
(16, '8', '1', '  Oreo', 2000, 0, 1, 2000, '2018-07-05', '1'),
(17, '4', '1', '  Kornet', 4000, 0, 3, 12000, '2018-07-05', '1'),
(18, '08', '1', '  Oreo', 2000, 0, 3, 6000, '2018-07-05', '1'),
(19, '4', '20180705050440', '  Kornet', 4000, 0, 3, 12000, '2018-07-05', '1'),
(20, '4', '20180705050440', '  Keju', 4000, 0, 64, 256000, '2018-07-05', '1'),
(22, '', '20180705050507', 'Tempe Mendoan', 10000, 0, 786, 7860000, '2018-07-05', '1'),
(23, '', '20180705050507', '  Telor', 4000, 0, 977, 3908000, '2018-07-05', '1'),
(24, '', '20180705050507', 'Pisang Bakar Cheese Chococip', 16000, 0, 9, 144000, '2018-07-05', '1'),
(25, '', '20180705050507', 'Pisang Bakar Coke', 17000, 0, 1, 17000, '2018-07-05', '1'),
(26, '', '20180705050507', 'Pisang Bakar Kju', 14000, 0, 1, 14000, '2018-07-05', '1'),
(27, '', '20180705050507', 'Pisang Bkar Coklat', 13000, 0, 86, 1118000, '2018-07-05', '1'),
(28, '', '20180705050507', 'Tebs Botol gede', 7000, 0, 97, 679000, '2018-07-05', '1'),
(29, '', '20180705050507', 'Tebs Botol gede', 7000, 0, 8, 56000, '2018-07-05', '1'),
(30, '', '20180705050507', 'Teh Rasa Susu', 11000, 0, 9, 99000, '2018-07-05', '1'),
(31, '', '20180705050507', 'Tebs', 5000, 0, 5, 25000, '2018-07-05', '1'),
(32, '', '20180705050507', 'Tebs', 5000, 0, 5, 25000, '2018-07-05', '1'),
(33, '', '20180705050507', 'Jumbo/MLM/Estafet', 13000, 0, 5, 65000, '2018-07-05', '1'),
(34, '', '20180705050507', 'Tebs Botol gede', 7000, 0, 5, 35000, '2018-07-05', '1'),
(37, '8', '20180705050539', '  Kornet', 4000, 0, 3, 12000, '2018-07-05', '1'),
(38, '8', '20180705050539', '  Oreo', 2000, 0, 75, 150000, '2018-07-05', '1'),
(40, '4', '20180705050538', '  Kornet', 4000, 0, 1, 4000, '2018-07-05', '1'),
(41, '4', '20180705050538', '  Keju', 4000, 0, 1, 4000, '2018-07-05', '1'),
(43, '3', '20180705050637', '  Keju', 4000, 0, 7, 28000, '2018-07-05', '1'),
(44, '3', '20180705050637', 'tahu bulat', 8000, 0, 7, 56000, '2018-07-05', '1'),
(45, '3', '20180705050637', 'Bandros Keju', 8000, 0, 8, 64000, '2018-07-05', '1'),
(46, '3', '20180705050637', 'Pisang Bakar Coke', 17000, 0, 5, 85000, '2018-07-05', '1'),
(50, '8', '20180705050604', '  Keju', 4000, 0, 3, 12000, '2018-07-05', '1'),
(51, '3', '20180705050632', '  Sosis', 4000, 0, 7, 28000, '2018-07-05', '1'),
(52, '63', '20180705050738', '  Kornet', 4000, 0, 3, 12000, '2018-07-05', '1'),
(53, '8', '20180705050749', '  Kornet', 4000, 0, 3, 12000, '2018-07-05', '1'),
(54, '8', '20180705050702', '  Keju', 4000, 0, 56, 224000, '2018-07-05', '1'),
(55, '8', '20180705050721', '  Kornet', 4000, 0, 5, 20000, '2018-07-05', '1'),
(56, '0', '20180705050755', '  Kornet', 4000, 0, 5, 20000, '2018-07-05', '1'),
(57, '8', '20180705050710', '  Kornet', 4000, 0, 3, 12000, '2018-07-05', '1'),
(58, '8', '20180705050742', '  Keju', 4000, 0, 1, 4000, '2018-07-05', '1'),
(59, '4', '20180705050733', '  Kornet', 4000, 0, 5, 20000, '2018-07-05', '1'),
(60, '4', '20180705050733', '  Keju', 4000, 0, 1, 4000, '2018-07-05', '1'),
(62, '7', '20180705050705', '  Keju', 4000, 0, 5, 20000, '2018-07-05', '1'),
(63, '8', '20180705050744', '  Kornet', 4000, 0, 3, 12000, '2018-07-05', '1'),
(64, '4', '20180705050942', '  Kornet', 4000, 0, 1, 4000, '2018-07-05', '1'),
(65, '4', '20180705050942', '  Oreo', 2000, 0, 5, 10000, '2018-07-05', '1'),
(67, '7', '20180705050923', '  Susu Krimer', 3000, 0, 7, 21000, '2018-07-05', '1'),
(68, '7', '20180705050923', '  Keju', 4000, 0, 6, 24000, '2018-07-05', '1'),
(69, '8', '20180705051430', '  Kornet', 4000, 0, 3, 12000, '2018-07-05', '1'),
(70, '4', '20180705051439', '  Keju', 4000, 0, 5, 20000, '2018-07-05', '1'),
(71, '4', '20180705051524', '  Keju', 4000, 0, 56, 224000, '2018-07-05', '1'),
(72, '4', '20180705051524', '  Oreo', 2000, 0, 7, 14000, '2018-07-05', '1'),
(74, '8', '20180705051535', '  Kornet', 4000, 0, 3, 12000, '2018-07-05', '1'),
(75, '4', '20180705051518', '  Keju', 4000, 0, 5, 20000, '2018-07-05', '1'),
(76, '4', '20180707070301', 'Pancake Choco Ice', 17000, 0, 5, 85000, '2018-07-07', '1'),
(77, '4', '20180707070301', 'Indomie Double Goreng', 12000, 0, 9, 108000, '2018-07-07', '1'),
(78, '4', '20180707070301', '  Telor', 4000, 0, 7, 28000, '2018-07-07', '1'),
(79, '4', '20180707070301', '  Sosis', 4000, 0, 2, 8000, '2018-07-07', '1'),
(80, '4', '20180707070301', '  Sosis', 4000, 0, 20, 80000, '2018-07-07', '1'),
(81, '4', '20180707070301', 'Jus Alpukat', 12000, 0, 5, 60000, '2018-07-07', '1'),
(83, '8', '20180707070404', '  Keju', 4000, 0, 5, 20000, '2018-07-07', '1'),
(84, '8', '20180707070901', '  Sosis', 4000, 0, 5, 20000, '2018-07-07', '1'),
(85, '8', '20180707070901', 'Indomie Jomblo A Bawang', 8000, 0, 9, 72000, '2018-07-07', '1'),
(86, '8', '20180707070901', 'Botol Mineral', 5000, 0, 5, 25000, '2018-07-07', '1'),
(87, '8', '20180707070901', 'White Coffe Bali', 17000, 0, 7, 119000, '2018-07-07', '1'),
(88, '8', '20180707070901', 'Kopi Bali', 14000, 0, 3, 42000, '2018-07-07', '1'),
(91, '8', '20180707070919', '  Keju', 4000, 0, 5, 20000, '2018-07-07', '1'),
(92, '8', '20180707070909', '  Keju', 4000, 0, 5, 20000, '2018-07-07', '1'),
(93, '8', '20180707070947', '  Kornet', 4000, 0, 9, 36000, '2018-07-07', '1'),
(94, '7', '20180707070953', '  Keju', 4000, 0, 1, 4000, '2018-07-07', '1'),
(95, '8', '20180707070923', '  Keju', 4000, 0, 5, 20000, '2018-07-07', '1'),
(96, '3', '20180707070905', '  Keju', 4000, 0, 1, 4000, '2018-07-07', '1'),
(97, '0', '20180707070954', '  Keju', 4000, 0, 3, 12000, '2018-07-07', '1'),
(98, '4', '20180707070958', '  Kornet', 4000, 0, 5, 20000, '2018-07-07', '1'),
(99, '8', '20180707070910', '  Kornet', 4000, 0, 7, 28000, '2018-07-07', '1'),
(100, '4', '20180707070946', '  Kornet', 4000, 0, 5, 20000, '2018-07-07', '1'),
(101, '4', '20180707070919', '  Keju', 4000, 0, 3, 12000, '2018-07-07', '1'),
(102, '4', '20180707070936', '  Keju', 4000, 0, 3, 12000, '2018-07-07', '1'),
(103, '4', '20180707070941', '  Oreo', 2000, 0, 1, 2000, '2018-07-07', '1'),
(104, '3', '20180707070924', '  Keju', 4000, 0, 1, 4000, '2018-07-07', '1'),
(105, '8', '20180707070917', '  Kornet', 4000, 0, 5, 20000, '2018-07-07', '1'),
(106, '4', '20180707070914', '  Oreo', 2000, 0, 3, 6000, '2018-07-07', '1'),
(107, '7', '20180707070942', '  Keju', 4000, 0, 3, 12000, '2018-07-07', '1'),
(108, '3', '20180707070955', 'Indomie Double Goreng', 12000, 0, 5, 60000, '2018-07-07', '1'),
(109, '3', '20180707070955', 'Bandros Keju', 8000, 0, 7, 56000, '2018-07-07', '1'),
(110, '3', '20180707070955', 'Kentang Goreng Jgung Manis', 13000, 0, 7, 91000, '2018-07-07', '1'),
(111, '3', '20180707070955', 'Jus Lecy', 12000, 0, 7, 84000, '2018-07-07', '1'),
(115, '8', '20180707071054', '  Kornet', 4000, 0, 3, 12000, '2018-07-07', '1'),
(116, '7', '20180707071031', '  Keju', 4000, 0, 9, 36000, '2018-07-07', '1'),
(117, '8', '20180707071306', '  Oreo', 2000, 0, 1, 2000, '2018-07-07', '1'),
(118, '8', '20180707071307', '  Kornet', 4000, 0, 3, 12000, '2018-07-07', '1'),
(119, '8', '20180707071344', '  Kornet', 4000, 0, 3, 12000, '2018-07-07', '1'),
(120, '8', '20180707071352', '  Keju', 4000, 0, 5, 20000, '2018-07-07', '1'),
(121, '7', '20180707071304', '  Keju', 4000, 0, 3, 12000, '2018-07-07', '1'),
(122, '8', '20180707071327', '  Kornet', 4000, 0, 3, 12000, '2018-07-07', '1'),
(123, '8', '20180707071328', '  Keju', 4000, 0, 5, 20000, '2018-07-07', '1'),
(124, '0', '20180707071357', '  Kornet', 4000, 0, 5, 20000, '2018-07-07', '1'),
(125, '4', '20180708080837', '  Kornet', 4000, 0, 3, 12000, '2018-07-08', '1'),
(126, '4', '20180709090117', '  Keju', 4000, 0, 3, 12000, '2018-07-09', '1'),
(127, '4', '20180710100227', 'Indomie Double Goreng', 12000, 0, 12, 144000, '2018-07-10', '1'),
(128, '4', '20180710100227', '  Telor', 4000, 0, 10, 40000, '2018-07-10', '1'),
(129, '4', '20180710100227', '  Keju', 4000, 0, 8, 32000, '2018-07-10', '1'),
(130, '4', '20180710100227', '  Sosis', 4000, 0, 5, 20000, '2018-07-10', '1'),
(131, '4', '20180710100227', 'Jus Melon', 11000, 0, 8, 88000, '2018-07-10', '1'),
(132, '4', '20180710100227', 'Kopi Aceh', 11000, 0, 12, 132000, '2018-07-10', '1'),
(133, '4', '20180710100227', 'Squash Lemon', 12000, 0, 9, 108000, '2018-07-10', '1'),
(134, '8', '20180710100229', 'Kopi Aceh', 11000, 0, 1, 11000, '2018-07-10', '1'),
(135, '4', '20180710100233', '  Keju', 4000, 0, 5, 20000, '2018-07-10', '1'),
(136, '8', '20180724241036', 'Kopi Bali', 14000, 0, 5, 70000, '2018-07-24', '1'),
(137, '8', '20180724241036', 'Kopi Aceh Gayo', 13000, 0, 3, 39000, '2018-07-24', '1'),
(138, '8', '20180724241036', '  Susu Krimer', 3000, 0, 5, 15000, '2018-07-24', '1'),
(139, '4', '20180726261304', 'Soda Susu', 12000, 0, 3, 36000, '2018-07-26', '1'),
(140, '8', '20180726261333', '  Oreo', 2000, 0, 5, 10000, '2018-07-26', '1'),
(141, '8', '20180726261333', '  Keju', 4000, 0, 5, 20000, '2018-07-26', '1'),
(142, '8', '20180726261333', 'Indomie Double Goreng', 12000, 0, 5, 60000, '2018-07-26', '1'),
(143, '4', '20180726261300', 'Pancake Coklat Keju', 17000, 0, 3, 51000, '2018-07-26', '1'),
(144, '4', '20180726261300', '  Kornet', 4000, 0, 1, 4000, '2018-07-26', '1'),
(145, '4', '20180726261300', 'Pancake Coklat Keju', 17000, 0, 5, 85000, '2018-07-26', '1'),
(146, '4', '20180726261300', 'Kentang Goreng Jgung Manis', 13000, 0, 9, 117000, '2018-07-26', '1'),
(150, '0', '20180727270758', 'Tempe Mendoan', 10000, 0, 1, 10000, '2018-07-27', '1'),
(151, '0', '20180727270758', 'Kentang Goreng BBQ', 13000, 0, 8, 104000, '2018-07-27', '1'),
(152, '0', '20180727270758', 'Sosis Mini', 17000, 0, 6, 102000, '2018-07-27', '1'),
(153, '0', '20180727270758', 'Coffee Late', 13000, 0, 2, 26000, '2018-07-27', '1'),
(154, '7', '20180727270723', '  Kornet', 4000, 0, 3, 12000, '2018-07-27', '1'),
(155, '7', '20180727270758', '  Oreo', 2000, 0, 2, 4000, '2018-07-27', '1'),
(156, '77', '20180727270702', '  Kornet', 4000, 0, 4, 16000, '2018-07-27', '1'),
(157, '77', '20180727270702', 'Jus Jambu', 11000, 0, 4, 44000, '2018-07-27', '1'),
(158, '7', '20180727270723', 'Indomie Double Goreng', 12000, 0, 4, 48000, '2018-07-27', '1'),
(159, '7', '20180727270700', 'White Coffe Aceh', 14000, 0, 3, 42000, '2018-07-27', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_item`
--

CREATE TABLE IF NOT EXISTS `tb_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item` varchar(36) NOT NULL,
  `nama_item` varchar(36) NOT NULL,
  `jenis` varchar(40) NOT NULL,
  `spesifikasi_jenis` enum('makanan','minuman') DEFAULT NULL,
  `harga` varchar(16) NOT NULL,
  `tgl_input` date NOT NULL,
  `ket` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=902 ;

--
-- Dumping data for table `tb_item`
--

INSERT INTO `tb_item` (`id`, `id_item`, `nama_item`, `jenis`, `spesifikasi_jenis`, `harga`, `tgl_input`, `ket`) VALUES
(416, 'ITM-000000000001', 'Kopi Papua', 'kopihitam', 'minuman', '14000', '2015-08-17', '1'),
(417, 'TD-0000000000002', 'Kopi Bali', 'kopihitam', 'minuman', '14000', '2015-08-17', '1'),
(418, 'TD-0000000000003', 'Kopi Toraja', 'kopihitam', 'minuman', '14000', '2015-08-17', '1'),
(419, 'TD-0000000000004', 'Kopi Sipirok', 'kopihitam', 'minuman', '14000', '2015-08-17', '1'),
(420, 'TD-0000000000005', 'Kopi Lintong', 'kopihitam', 'minuman', '14000', '2015-08-17', '1'),
(421, 'TD-0000000000006', 'Kopi Flores', 'kopihitam', 'minuman', '14000', '2015-08-17', '1'),
(422, 'TD-0000000000007', 'Kopi Kayumas', 'kopihitam', 'minuman', '14000', '2015-08-17', '1'),
(423, 'TD-0000000000008', 'Kopi Jampit', 'kopihitam', 'minuman', '14000', '2015-08-17', '1'),
(424, 'TD-0000000000009', 'Kopi Lasem', 'kopihitam', 'minuman', '11000', '2015-08-17', '1'),
(425, 'TD-0000000000010', 'Kopi Aceh', 'kopihitam', 'minuman', '11000', '2015-08-17', '1'),
(426, 'TD-0000000000011', 'Kopi Medan', 'kopihitam', 'minuman', '11000', '2015-08-17', '1'),
(427, 'TD-0000000000012', 'Kopi Rembang', 'kopihitam', 'minuman', '10000', '2015-08-17', '1'),
(428, 'TD-0000000000013', 'Kopi Jambi', 'kopihitam', 'minuman', '10000', '2015-08-17', '1'),
(429, 'TD-0000000000014', 'Kopi Kudus', 'kopihitam', 'minuman', '10000', '2015-08-17', '1'),
(430, 'TD-0000000000015', 'Kopi Bandung', 'kopihitam', 'minuman', '10000', '2015-08-17', '1'),
(431, 'TD-0000000000016', 'Kopi Betawi', 'kopihitam', 'minuman', '10000', '2015-08-17', '1'),
(432, 'TD-0000000000017', 'Kopi Bogor', 'kopihitam', 'minuman', '10000', '2015-08-17', '1'),
(435, 'TD-0000000000020', '+ Susu Krimer', 'kopihitam', 'minuman', '3000', '2015-08-17', '1'),
(436, 'TD-0000000000021', 'Strawberry Float', 'icecreamfloat', 'minuman', '14000', '2015-08-17', '1'),
(437, 'TD-0000000000022', 'Leci Float', 'icecreamfloat', 'minuman', '14000', '2015-08-17', '1'),
(438, 'TD-0000000000023', 'Melon Float', 'icecreamfloat', 'minuman', '14000', '2015-08-17', '1'),
(439, 'TD-0000000000024', 'Orange Float', 'icecreamfloat', 'minuman', '14000', '2015-08-17', '1'),
(442, 'TD-0000000000027', 'Fanta Float', 'icecreamfloat', 'minuman', '14000', '2015-08-17', '1'),
(443, 'TD-0000000000028', 'Sprite Float', 'icecreamfloat', 'minuman', '14000', '2015-08-17', '1'),
(444, 'TD-0000000000029', 'Coca Cola Float', 'icecreamfloat', 'minuman', '14000', '2015-08-17', '1'),
(445, 'TD-0000000000030', 'Pepsi Float', 'icecreamfloat', 'minuman', '14000', '2015-08-17', '1'),
(446, 'TD-0000000000031', 'Root Beer Aj', 'icecreamfloat', 'minuman', '12000', '2015-08-17', '1'),
(447, 'TD-0000000000032', 'Root Beer Float', 'icecreamfloat', 'minuman', '14000', '2015-08-17', '1'),
(448, 'TD-0000000000033', 'White Coffe Papua', 'kopisusu', 'minuman', '17000', '2015-08-17', '1'),
(449, 'TD-0000000000034', 'White Coffe Bali', 'kopisusu', 'minuman', '17000', '2015-08-17', '1'),
(450, 'TD-0000000000035', 'White Coffe Toraja', 'kopisusu', 'minuman', '17000', '2015-08-17', '1'),
(451, 'TD-0000000000036', 'White Coffe Sipirok', 'kopisusu', 'minuman', '17000', '2015-08-17', '1'),
(452, 'TD-0000000000037', 'White Coffe Lintong', 'kopisusu', 'minuman', '17000', '2015-08-17', '1'),
(453, 'TD-0000000000038', 'White Coffe Flores', 'kopisusu', 'minuman', '17000', '2015-08-17', '1'),
(454, 'TD-0000000000039', 'White Coffe Kayumas', 'kopisusu', 'minuman', '17000', '2015-08-17', '1'),
(455, 'TD-0000000000040', 'Whte Coffe Japmit', 'kopisusu', 'minuman', '17000', '2015-08-17', '1'),
(456, 'TD-0000000000041', 'White Coffe Lasem', 'kopisusu', 'minuman', '14000', '2015-08-17', '1'),
(457, 'TD-0000000000042', 'White Coffe Aceh', 'kopisusu', 'minuman', '14000', '2015-08-17', '1'),
(458, 'TD-0000000000043', 'White Coffe Medan', 'kopisusu', 'minuman', '14000', '2015-08-17', '1'),
(459, 'TD-0000000000044', 'White Coffe Rembang', 'kopisusu', 'minuman', '13000', '2015-08-17', '1'),
(460, 'TD-0000000000045', 'White Coffe Jambi', 'kopisusu', 'minuman', '13000', '2015-08-17', '1'),
(461, 'TD-0000000000046', 'White Coffe Kudus', 'kopisusu', 'minuman', '13000', '2015-08-17', '1'),
(462, 'TD-0000000000047', 'White Coffe Bandung', 'kopisusu', 'minuman', '13000', '2015-08-17', '1'),
(463, 'TD-0000000000048', 'White Coffe Betawi', 'kopisusu', 'minuman', '13000', '2015-08-17', '1'),
(464, 'TD-0000000000049', 'White Coffe Bogor', 'kopisusu', 'minuman', '13000', '2015-08-17', '1'),
(465, 'TD-0000000000050', 'Sprite Se-Pitcher', 'Lain-lain', 'minuman', '19000', '2015-08-17', '1'),
(466, 'TD-0000000000051', 'Fanta Se-Pitcher', 'Lain-lain', 'minuman', '19000', '2015-08-17', '1'),
(467, 'TD-0000000000052', 'Coca - Cola Se-Pitcher', 'Lain-lain', 'minuman', '19000', '2015-08-17', '1'),
(468, 'TD-0000000000053', 'Pepsi S-Pitcher', 'Lain-lain', 'minuman', '19000', '2015-08-17', '1'),
(469, 'TD-0000000000054', 'Es/Hot Matcha', 'Lain-lain', 'minuman', '12000', '2015-08-17', '1'),
(470, 'TD-0000000000055', 'Hot Gingger Matcha', 'Lain-lain', 'minuman', '11000', '2015-08-17', '1'),
(471, 'TD-0000000000056', 'Teh Tolak angin', 'teh', 'minuman', '13000', '2015-08-17', '1'),
(472, 'TD-0000000000057', 'Wedang Jahe', 'Lain-lain', 'minuman', '11000', '2015-08-17', '1'),
(473, 'TD-0000000000058', 'Wedang Jahe Susu', 'Lain-lain', 'minuman', '13000', '2015-08-17', '1'),
(474, 'TD-0000000000059', 'Kopi Jahe', 'Lain-lain', 'minuman', '14000', '2015-08-17', '1'),
(475, 'TD-0000000000060', 'Kopi Jahe Susu', 'Lain-lain', 'minuman', '16000', '2015-08-17', '1'),
(478, 'TD-0000000000063', 'Blackcurrent', 'Lain-lain', 'minuman', '13000', '2015-08-17', '1'),
(479, 'TD-0000000000064', 'Teh Rasa', 'teh', 'minuman', '10000', '2015-08-17', '1'),
(480, 'TD-0000000000065', 'Teh Rasa Susu', 'teh', 'minuman', '11000', '2015-08-17', '1'),
(481, 'TD-0000000000066', 'Teh Botol', 'teh', 'minuman', '5000', '2015-08-17', '1'),
(482, 'TD-0000000000067', 'S-Tee', 'Lain-lain', 'minuman', '5000', '2015-08-17', '1'),
(483, 'TD-0000000000068', 'Fruit Tea', 'teh', 'minuman', '5000', '2015-08-17', '1'),
(484, 'TD-0000000000069', 'Tebs', 'teh', 'minuman', '5000', '2015-08-17', '1'),
(485, 'TD-0000000000070', 'Teh Manis', 'teh', 'minuman', '5000', '2015-08-17', '1'),
(486, 'TD-0000000000071', 'Teh Tawar', 'teh', 'minuman', '4000', '2015-08-17', '1'),
(487, 'TD-0000000000072', 'Botol Mineral', 'teh', 'minuman', '5000', '2015-08-17', '1'),
(488, 'TD-0000000000073', 'Jumbo/MLM/Estafet', 'teh', 'minuman', '13000', '2015-08-17', '1'),
(489, 'TD-0000000000074', 'Coklat/Ovaltine', 'Lain-lain', 'minuman', '13000', '2015-08-17', '1'),
(490, 'TD-0000000000075', 'Jeruk Angt/Es', 'Lain-lain', 'minuman', '8000', '2015-08-17', '1'),
(491, 'TD-0000000000076', 'Mega Mendung', 'Lain-lain', 'minuman', '13000', '2015-08-17', '0'),
(493, 'TD-0000000000078', 'Es Krim Sundae', 'Lain-lain', 'minuman', '14000', '2015-08-17', '1'),
(496, 'TD-0000000000081', 'Es/Hot Cappucino', 'angkringan', 'minuman', '13000', '2015-08-17', '1'),
(498, 'TD-0000000000083', 'Es Lime', 'Lain-lain', 'minuman', '10000', '2015-08-17', '1'),
(499, 'TD-0000000000084', 'Jus Jambu', 'jus', 'minuman', '11000', '2015-08-17', '1'),
(500, 'TD-0000000000085', 'Jus Jeruk', 'jus', 'minuman', '11000', '2015-08-17', '1'),
(501, 'TD-0000000000086', 'Jus Lecy', 'jus', 'minuman', '12000', '2015-08-17', '1'),
(502, 'TD-0000000000087', 'Jus Melon', 'jus', 'minuman', '11000', '2015-08-17', '1'),
(503, 'TD-0000000000088', 'Jus Strawberry', 'jus', 'minuman', '11000', '2015-08-17', '1'),
(504, 'TD-0000000000089', 'Jus Alpukat', 'jus', 'minuman', '12000', '2015-08-17', '1'),
(505, 'TD-0000000000090', '+ Es Krim ', 'jus', 'minuman', '4000', '2015-08-17', '0'),
(508, 'TD-0000000000093', 'Squash Lecy', 'squash', 'minuman', '12000', '2015-08-17', '1'),
(509, 'TD-0000000000094', 'Squash Strawberry', 'squash', 'minuman', '12000', '2015-08-17', '1'),
(510, 'TD-0000000000095', 'Squash Orange', 'squash', 'minuman', '12000', '2015-08-17', '1'),
(511, 'TD-0000000000096', 'Squash Lemon', 'squash', 'minuman', '12000', '2015-08-17', '1'),
(512, 'TD-0000000000097', 'Squash Melon', 'squash', 'minuman', '12000', '2015-08-17', '1'),
(514, 'TD-0000000000099', 'Fanta Susu', 'squash', 'minuman', '12000', '2015-08-17', '1'),
(515, 'TD-0000000000100', 'Soda Susu', 'squash', 'minuman', '12000', '2015-08-17', '1'),
(516, 'TD-0000000000101', 'Ms Kapoetjino', 'milkshake', 'minuman', '16000', '2015-08-17', '1'),
(517, 'TD-0000000000104', 'Ms Coklat', 'milkshake', 'minuman', '16000', '2015-08-17', '1'),
(518, 'TD-0000000000107', 'Ms Oreo', 'milkshake', 'minuman', '16000', '2015-08-17', '1'),
(519, 'TD-0000000000110', 'Ms Vanilla', 'milkshake', 'minuman', '16000', '2015-08-17', '1'),
(520, 'TD-0000000000113', 'Ms Strawberry', 'milkshake', 'minuman', '16000', '2015-08-17', '1'),
(521, 'TD-0000000000116', 'Ms Green Tea', 'milkshake', 'minuman', '16000', '2015-08-17', '1'),
(522, 'TD-0000000000119', 'Ms Coffe Caramel', 'milkshake', 'minuman', '16000', '2015-08-17', '1'),
(524, 'TD-0000000000120', '+ Twister', 'milkshake', 'minuman', '2000', '2015-08-17', '1'),
(525, 'TD-0000000000121', '+ Choco Chip', 'milkshake', 'minuman', '2000', '2015-08-17', '0'),
(527, 'TD-0000000000090', '+ Oreo', 'milkshake', 'minuman', '2000', '2015-08-17', '1'),
(530, 'TD-0000000000124', 'Ms Macacin', 'milkshake', 'minuman', '17000', '2015-08-17', '1'),
(541, 'TD-0000000000126', 'Roti Bakar 1 Rs', 'rotibakar', 'makanan', '12000', '2015-08-17', '1'),
(542, 'TD-0000000000127', 'Roti Bakar 2 Rs', 'rotibakar', 'makanan', '14000', '2015-08-17', '1'),
(543, 'TD-0000000000128', 'Roti Bakar 3 Rs', 'rotibakar', 'makanan', '16000', '2015-08-17', '1'),
(548, 'TD-0000000000133', 'Roti Bakar Choco Ice', 'rotibakar', 'minuman', '17000', '2015-08-17', '1'),
(549, 'TD-0000000000134', 'Roti Bakar Ice Ceam Crunch', 'rotibakar', 'makanan', '18000', '2015-08-17', '1'),
(550, 'TD-0000000000135', 'Roti Bakar Tlor Kornet', 'rotibakar', 'makanan', '18000', '2015-08-17', '1'),
(558, 'TD-0000000000143', 'Roti Pisang 1 Rs', 'rotibakar', 'makanan', '14000', '2015-08-17', '1'),
(559, 'TD-0000000000144', 'Roti Pisang 2 Rs', 'rotibakar', 'makanan', '16000', '2015-08-17', '1'),
(560, 'TD-0000000000145', 'Roti Pisang 3 Rs', 'rotibakar', 'makanan', '18000', '2015-08-17', '1'),
(561, 'TD-0000000000146', 'Pisang Bkar Coklat', 'pisangbakar', 'makanan', '13000', '2015-08-17', '1'),
(562, 'TD-0000000000147', 'Pisang Bakar Kju', 'pisangbakar', 'makanan', '14000', '2015-08-17', '1'),
(563, 'TD-0000000000148', 'Pisang Bakar Coke', 'pisangbakar', 'makanan', '17000', '2015-08-17', '1'),
(565, 'TD-0000000000150', 'Pisang Bakar Cheese Chococip', 'pisangbakar', 'makanan', '16000', '2015-08-17', '1'),
(568, 'TD-0000000000153', 'Nasi Bakar Peda', 'angkringan', 'makanan', '12000', '2015-08-17', '1'),
(569, 'TD-0000000000154', 'Nasi Bakar Teri', 'angkringan', 'makanan', '12000', '2015-08-17', '1'),
(570, 'TD-0000000000155', 'Pancake Keju', 'pancake', 'makanan', '15000', '2015-08-17', '1'),
(571, 'TD-0000000000156', 'Pancake Coklat', 'pancake', 'makanan', '15000', '2015-08-17', '1'),
(572, 'TD-0000000000157', 'Pancake Coklat Keju', 'pancake', 'makanan', '17000', '2015-08-17', '1'),
(573, 'TD-0000000000158', 'Pancake Es Krim', 'pancake', 'makanan', '17000', '2015-08-17', '1'),
(575, 'TD-0000000000160', 'Pancake Choco Ice', 'pancake', 'makanan', '17000', '2015-08-17', '1'),
(576, 'TD-0000000000161', 'Sosis Mini', 'sosis', 'makanan', '17000', '2015-08-17', '1'),
(577, 'TD-0000000000162', 'Sosis Sumo Cheese 14', 'sosis', 'makanan', '20000', '2015-08-17', '1'),
(578, 'TD-0000000000163', 'Sosis Blacpapper 14', 'sosis', 'makanan', '20000', '2015-08-17', '1'),
(579, 'TD-0000000000164', 'Sosis Sumo 21 ', 'sosis', 'makanan', '26000', '2015-08-17', '1'),
(580, 'TD-0000000000165', 'Sosis Sumo 30', 'sosis', 'makanan', '35000', '2015-08-17', '1'),
(581, 'TD-0000000000166', 'Gorengan Pisang', 'gorengan', 'makanan', '13000', '2015-08-17', '1'),
(582, 'TD-0000000000167', 'Tempe Mendoan', 'gorengan', 'makanan', '10000', '2015-08-17', '1'),
(583, 'TD-0000000000168', 'Martabak Telur', 'gorengan', 'makanan', '13000', '2015-08-17', '0'),
(585, 'TD-0000000000170', 'Piscok Aja', 'angkringan', 'makanan', '11000', '2015-08-17', '0'),
(586, 'TD-0000000000171', 'Piscok Keju', 'angkringan', 'makanan', '13000', '2015-08-17', '0'),
(587, 'TD-0000000000172', 'Indomie Jomblo Kari', 'indomie', 'makanan', '8000', '2015-08-17', '1'),
(588, 'TD-0000000000173', 'Indomie Jomblo Soto', 'indomie', 'makanan', '8000', '2015-08-17', '1'),
(589, 'TD-0000000000174', 'Indomie Jomblo A Bawang', 'indomie', 'makanan', '8000', '2015-08-17', '1'),
(590, 'TD-0000000000175', 'Indomie Jomblo Goreng', 'indomie', 'makanan', '8000', '2015-08-17', '1'),
(593, 'TD-0000000000178', 'Indomie Double soto', 'indomie', 'makanan', '12000', '2015-08-17', '1'),
(594, 'TD-0000000000179', 'Indomie Double Kari', 'indomie', 'makanan', '12000', '2015-08-17', '1'),
(598, 'TD-0000000000183', 'Indomie Double Goreng', 'indomie', 'makanan', '12000', '2015-08-17', '1'),
(604, 'TD-0000000000189', 'Kentang Pusing Ori', 'Lain-lain', 'makanan', '12000', '2015-08-17', '1'),
(605, 'TD-0000000000190', 'Kentang Pusing Aym Bwng', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(606, 'TD-0000000000191', 'Kentang Pusing BBQ', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(607, 'TD-0000000000192', 'Kentang Jgung Mnis', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(608, 'TD-0000000000193', 'Kentang Pusing Keju', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(609, 'TD-0000000000194', 'Kentang Pusing Hot Mlotot', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(610, 'TD-0000000000195', 'Kentang Pusing Balado', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(611, 'TD-0000000000196', 'Spahetti', 'Lain-lain', 'makanan', '12000', '2015-08-17', '1'),
(612, 'TD-0000000000197', 'Bandros Ori', 'angkringan', 'makanan', '5000', '2015-08-17', '1'),
(613, 'TD-0000000000198', 'Bandros Coklat', 'angkringan', 'makanan', '7000', '2015-08-17', '1'),
(614, 'TD-0000000000199', 'Bandros Keju', 'angkringan', 'makanan', '8000', '2015-08-17', '1'),
(615, 'TD-0000000000200', 'Bandros Coklat keju', 'angkringan', 'makanan', '10000', '2015-08-17', '1'),
(617, 'TD-0000000000202', 'nasi', 'angkringan', 'makanan', '5000', '2015-08-17', '1'),
(618, 'TD-0000000000203', 'Ndogh 1/2 Mateng', 'angkringan', 'makanan', '12000', '2015-08-17', '0'),
(619, 'TD-0000000000204', 'Jamur Krispy', 'angkringan', 'makanan', '12000', '2015-08-17', '1'),
(623, 'TD-0000000000208', 'Ayam Bakar Nasi', 'Lain-lain', 'makanan', '20000', '2015-08-17', '1'),
(624, 'TD-0000000000209', 'Ayam Goreng Nasi', 'Lain-lain', 'makanan', '20000', '2015-08-17', '1'),
(628, 'TD-0000000000213', 'Kentang Goreng Ori', 'Lain-lain', 'makanan', '12000', '2015-08-17', '1'),
(629, 'TD-0000000000214', 'Kentang Goreng BBQ', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(630, 'TD-0000000000215', 'Kentang Goreng Jgung Manis', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(631, 'TD-0000000000216', 'Kentang Goreng Keju', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(632, 'TD-0000000000217', 'Kentang Goreng Hot Mlotot', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(633, 'TD-0000000000218', 'Kentang Goreng Balado', 'Lain-lain', 'makanan', '13000', '2015-08-17', '1'),
(634, 'TD-0000000000219', 'Singkong Ori', 'Lain-lain', 'makanan', '8000', '2015-08-17', '1'),
(635, 'TD-0000000000220', 'Singkong BBQ', 'Lain-lain', 'makanan', '9000', '2015-08-17', '1'),
(636, 'TD-0000000000221', 'Singkong Jagung Manis', 'Lain-lain', 'makanan', '9000', '2015-08-17', '1'),
(637, 'TD-0000000000222', 'Singkong Balado', 'Lain-lain', 'makanan', '9000', '2015-08-17', '1'),
(638, 'TD-0000000000223', 'Singkong Keju', 'Lain-lain', 'makanan', '11000', '2015-08-17', '1'),
(639, 'TD-0000000000224', '+ Kornet', 'indomie', 'makanan', '4000', '2015-08-25', '1'),
(640, 'TD-0000000000225', '+ Keju', 'indomie', 'makanan', '4000', '2015-08-25', '1'),
(641, 'TD-0000000000226', '+ Telor', 'indomie', 'makanan', '4000', '2015-08-25', '1'),
(642, 'TD-0000000000227', '+ Bakso tigaroda', 'angkringan', 'makanan', '4000', '2015-08-25', '0'),
(643, 'TD-0000000000228', '+ Sosis', 'indomie', 'makanan', '4000', '2015-08-25', '1'),
(649, 'TD-0000000000234', 'Krupuk', 'indomie', 'makanan', '2000', '2015-08-25', '1'),
(651, 'TD-0000000000236', 'Air Putih', 'Lain-lain', 'minuman', '2000', '2015-08-27', '1'),
(653, 'TD-0000000000238', 'Gudang Garam Filter', 'rokok', 'minuman', '16000', '2015-09-02', '1'),
(654, 'TD-0000000000239', 'Surya 16', 'rokok', 'minuman', '19000', '2015-09-02', '1'),
(655, 'TD-0000000000240', 'Surya Exlusive', 'rokok', 'minuman', '19000', '2015-09-02', '1'),
(656, 'TD-0000000000241', 'Promild Merah', 'rokok', 'minuman', '15000', '2015-09-02', '1'),
(657, 'TD-0000000000242', 'Promild Putih', 'rokok', 'minuman', '15000', '2015-09-02', '1'),
(658, 'TD-0000000000243', 'Signature Hitam', 'rokok', 'minuman', '15000', '2015-09-02', '1'),
(659, 'TD-0000000000244', 'Signature Biru', 'rokok', 'minuman', '20000', '2015-09-02', '1'),
(660, 'TD-0000000000245', 'GG Mild Putih', 'rokok', 'minuman', '15000', '2015-09-02', '1'),
(661, 'TD-0000000000246', 'GG Mild Biru', 'rokok', 'minuman', '15000', '2015-09-02', '1'),
(664, 'TD-0000000000249', 'Wedang Uwuh', 'Lain-lain', 'minuman', '10000', '2015-09-09', '1'),
(665, 'TD-0000000000250', 'Coffee Late', 'kopisusu', 'minuman', '13000', '2015-09-10', '1'),
(666, 'TD-0000000000251', 'Kopi Lampung', 'kopihitam', 'makanan', '10000', '2015-09-13', '1'),
(667, 'TD-0000000000252', 'Kopi Tamiang', 'kopihitam', 'minuman', '11000', '2015-09-28', '0'),
(668, 'TD-0000000000253', 'Kopi Tarik', 'kopihitam', 'minuman', '14000', '2015-09-28', '1'),
(673, 'TD-0000000000258', 'Kopi pres', 'Lain-lain', 'makanan', '13000', '2015-10-23', '1'),
(674, 'TD-0000000000259', 'Kopi King Jantan', 'kopihitam', 'minuman', '18000', '2015-11-02', '0'),
(680, 'TD-0000000000265', '+ coklat', 'lain-lain', 'makanan', '3000', '2016-03-03', '0'),
(681, 'TD-0000000000266', 'Ayam goreng tanpa nasi', 'Lain-lain', 'makanan', '16000', '2016-03-03', '1'),
(682, 'TD-0000000000267', 'Ayam bakar tanpa nasi', 'Lain-lain', 'makanan', '16000', '2016-03-03', '1'),
(683, 'TD-0000000000268', 'Kopi Aceh Gayo', 'kopihitam', 'minuman', '13000', '2016-03-23', '1'),
(684, 'TD-0000000000269', 'Surya 12', 'rokok', 'minuman', '14000', '2016-03-27', '1'),
(685, 'TD-0000000000270', 'Susu Putih Seduh', 'Lain-lain', 'minuman', '8000', '2016-03-29', '1'),
(686, 'TD-0000000000271', 'Roti Kornet / Roti Telur', 'rotibakar', 'makanan', '15000', '2016-04-10', '1'),
(689, 'TD-0000000000274', 'Es Batu', 'Lain-lain', 'minuman', '1000', '2016-03-16', '1'),
(690, 'TD-0000000000275', 'Air Putih Pitcher', 'Lain-lain', 'minuman', '5000', '2016-03-16', '1'),
(691, 'TD-0000000000276', 'Gudang Garam Merah', 'rokok', 'makanan', '13000', '2016-05-02', '1'),
(693, 'TD-0000000000276', 'Kopi Coklat', 'kopihitam', 'minuman', '14000', '2016-06-16', '1'),
(694, 'TD-0000000000278', 'Tebs Botol gede', 'teh', 'minuman', '7000', '2016-07-17', '1'),
(695, 'TD-0000000000279', 'SiGNATURE BIRU ISI 20', 'rokok', 'minuman', '20000', '2016-08-13', '1'),
(696, 'TD-0000000000280', 'Roti Bakar Mentega', 'rotibakar', 'makanan', '9000', '2016-08-30', '1'),
(697, 'TD-0000000000281', 'Susu fresh milk', 'lain-lain', 'minuman', '7000', '2016-09-10', '1'),
(698, 'TD-0000000000282', 'Kopi Sachet', 'kopihitam', 'minuman', '8000', '2016-09-10', '1'),
(699, 'TD-0000000000284', 'Kambing Zaitun', 'kbh', 'makanan', '45000', '2016-09-17', '1'),
(700, 'TD-0000000000284', 'Kambing Mayo', 'kbh', 'makanan', '55000', '2016-09-17', '1'),
(701, 'TD-0000000000284', 'Kambing Ulek', 'kbh', 'makanan', '35000', '2016-09-17', '1'),
(702, 'TD-0000000000286', 'Kambing Samsu', 'kbh', 'makanan', '45000', '2016-09-17', '1'),
(703, 'TD-0000000000287', 'Kambing Tomat', 'kbh', 'makanan', '45000', '2016-09-17', '1'),
(704, 'TD-0000000000288', 'Kambing Cabai Hijau', 'kbh', 'makanan', '45000', '2016-09-17', '1'),
(705, 'TD-0000000000289', 'Kambing Tulang Bumbu', 'kbh', 'makanan', '45000', '2016-09-17', '1'),
(706, 'TD-0000000000290', 'Kambing Hitam', 'kbh', 'makanan', '45000', '2016-09-17', '1'),
(707, 'TD-0000000000291', 'Kambing Kayumanis', 'kbh', 'makanan', '45000', '2016-09-17', '1'),
(708, 'TD-0000000000292', 'Kambing Surya', 'kbh', 'makanan', '45000', '2016-09-17', '1'),
(709, 'TD-0000000000293', 'Kambing Pacino', 'kbh', 'makanan', '50000', '2016-09-17', '1'),
(710, 'TD-0000000000294', 'Nasi beruang', 'kbh', 'makanan', '35000', '2016-09-17', '1'),
(711, 'TD-0000000000295', 'Nasi goreng kambing', 'kbh', 'makanan', '28000', '2016-09-17', '1'),
(712, 'TD-0000000000296', 'Sate goreng', 'kbh', 'makanan', '35000', '2016-09-17', '1'),
(713, 'TD-0000000000297', 'Syaksuka', 'kbh', 'makanan', '25000', '2016-09-17', '1'),
(714, 'TD-0000000000298', 'Mie kuah kari', 'kbh', 'makanan', '22000', '2016-09-17', '1'),
(715, 'TD-0000000000299', 'Mi kuah samsu', 'kbh', 'makanan', '22000', '2016-09-17', '1'),
(716, 'TD-0000000000300', 'Kambing Goreng Tepung', 'kbh', 'makanan', '45000', '2016-09-17', '1'),
(717, 'TD-0000000000301', 'Mi Burma', 'kbh', 'makanan', '22000', '2016-09-17', '1'),
(718, 'TD-0000000000302', 'kambing mumtaz', 'kbh', 'makanan', '45000', '2016-10-06', '1'),
(719, 'TD-0000000000303', 'Kambing Zaitun Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(720, 'TD-0000000000304', 'Kambing Mayo Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(721, 'TD-0000000000305', 'Kambing Samsu Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(722, 'TD-0000000000306', 'Kambing Tomat Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(723, 'TD-0000000000307', 'Kambing Cabe Hijau Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(724, 'TD-0000000000308', 'Kambing Tulang Bumbu Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(725, 'TD-0000000000309', 'Kambing Mumtaz Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(726, 'TD-0000000000310', 'Kambing Hitam Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(727, 'TD-0000000000311', 'Kambing Kayu Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(728, 'TD-0000000000312', 'Kambing Goreng Tepung Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(729, 'TD-0000000000313', 'Kambing Surya Medium', 'kbh', 'makanan', '35000', '2016-10-19', '1'),
(730, 'TD-0000000000314', 'Kopi Joas (Ambon)', 'kopihitam', 'minuman', '11000', '2016-10-03', '1'),
(731, 'TD-0000000000315', 'Indomie Real Meat', 'indomie', 'makanan', '15000', '2016-10-03', '1'),
(732, 'TD-0000000000316', 'Coba', 'Lain-lain', 'makanan', '10000', '2016-10-08', '0'),
(734, 'TD-0000000000318', 'es mega mendung', 'Lain-lain', 'minuman', '13000', '2016-10-09', '1'),
(735, 'TD-0000000000319', 'Stik telur', 'angkringan', 'makanan', '20000', '2016-11-12', '0'),
(736, 'TD-0000000000320', 'singkong susu', 'Lain-lain', 'makanan', '8000', '2016-10-13', '1'),
(737, 'TD-0000000000321', 'Nasi Kucing', 'Lain-lain', 'makanan', '5000', '2016-10-15', '1'),
(738, 'TD-0000000000322', 'gorengan', 'Lain-lain', 'makanan', '2000', '2016-10-16', '1'),
(739, 'TD-0000000000323', 'nasi goreng tanpa kambing', 'kbh', 'makanan', '19000', '2016-10-17', '1'),
(740, 'TD-0000000000324', 'jus mix 2 buah', 'jus', 'makanan', '15000', '2016-10-18', '1'),
(741, 'TD-0000000000325', 'combro', 'Lain-lain', 'makanan', '3000', '2016-10-19', '1'),
(742, 'TD-0000000000326', 'tahu bulat', 'gorengan', 'makanan', '8000', '2016-10-24', '1'),
(743, 'TD-0000000000327', 'serabi Original', 'Lain-lain', 'makanan', '5000', '2016-11-03', '0'),
(744, 'TD-0000000000328', 'kacang', 'Lain-lain', 'makanan', '3000', '2016-11-07', '1'),
(745, 'TD-0000000000329', 'Nasi goreng ayam', 'kbh', 'makanan', '25000', '2016-11-12', '1'),
(746, 'TD-0000000000330', 'serabi 1 rasa', 'Lain-lain', 'makanan', '8000', '2016-11-13', '0'),
(747, 'TD-0000000000331', 'serabi', 'Lain-lain', 'makanan', '10000', '2016-11-13', '1'),
(748, '', 'Jagung Bakar Keju', 'angkringan', 'makanan', '25000', '2018-07-04', '1'),
(900, '2342', '2342', '234324', 'makanan', '23424', '2018-07-27', '1'),
(901, '', 'e', 'angkringan', 'minuman', '3232', '2018-07-24', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis`
--

CREATE TABLE IF NOT EXISTS `tb_jenis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis` varchar(36) NOT NULL,
  `nama_jenis` text NOT NULL,
  `ket` enum('1','0') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `tb_jenis`
--

INSERT INTO `tb_jenis` (`id`, `id_jenis`, `nama_jenis`, `ket`) VALUES
(2, 'JNS-00000000000001', 'Roti Bakar', '0'),
(3, 'JNS-0000000000002', 'Pisang Bakar', '0'),
(4, 'JNS-0000000000003', 'Indomie', '0'),
(5, 'JNS-0000000000004', 'Ice Kopi', '0'),
(6, 'JNS-0000000000005', 'Hot Kopi', '0'),
(7, 'JNS-0000000000006', 'Bubur', '0'),
(8, 'JNS-0000000000007', 'Teh Botol', '0'),
(9, 'JNS-0000000000008', 'MLM', '0'),
(10, 'JNS-0000000000009', 'Mie Ayam', '0'),
(11, 'JNS-0000000000010', 'Mendoan', '0'),
(12, 'JNS-0000000000011', 'Pancake', '0'),
(23, 'TD-0000000000012', 'Kentang Goreng', '0'),
(24, 'TD-0000000000013', 'Jagung Bakar', '0'),
(25, 'TD-0000000000014', 'Gorengan', '0'),
(26, 'TD-0000000000015', 'Jus', '0'),
(27, 'TD-0000000000016', 'Teh', '1'),
(28, 'TD-0000000000017', 'Squash', '0'),
(29, 'TD-0000000000018', 'Milk Shake', '0'),
(30, 'TD-0000000000019', 'Mocktail', '0'),
(31, 'TD-0000000000020', 'Es Teh', '0'),
(32, 'TD-0000000000021', 'Rokok', '0'),
(33, 'TD-0000000000022', 'Nasi Kuning', '0'),
(34, 'TD-0000000000023', 'Nasi Uduk', '0'),
(35, 'TD-0000000000024', 'Telor Setengah Mateng', '0'),
(36, 'TD-0000000000025', 'Ovalteen', '0'),
(37, 'TD-0000000000026', 'Lain-lain', '1'),
(38, 'TD-0000000000027', 'Cemilan', '0'),
(39, 'TD-0000000000028', 'Sosis', '0'),
(40, 'TD-0000000000029', 'rotibakar', '1'),
(41, 'TD-0000000000030', 'pisangbakar', '1'),
(42, 'TD-0000000000031', 'indomie', '1'),
(43, 'TD-0000000000032', 'gorengan', '1'),
(44, 'TD-0000000000033', 'sosis', '1'),
(45, 'TD-0000000000034', 'pancake', '1'),
(46, 'TD-0000000000035', 'angkringan', '1'),
(47, 'TD-0000000000036', 'paketspecial', '1'),
(48, 'TD-0000000000037', 'kopihitam', '1'),
(49, 'TD-0000000000038', 'kopisusu', '1'),
(50, 'TD-0000000000039', 'jus', '1'),
(51, 'TD-0000000000040', 'teh', '1'),
(52, 'TD-0000000000041', 'milkshake', '1'),
(53, 'TD-0000000000042', 'squash', '1'),
(54, 'TD-0000000000043', 'icecreamfloat', '1'),
(55, 'TD-0000000000044', 'rokok', '1'),
(56, 'TD-0000000000045', 'kbh', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_member`
--

CREATE TABLE IF NOT EXISTS `tb_member` (
  `id_member` int(11) NOT NULL AUTO_INCREMENT,
  `barcode_member` text NOT NULL,
  `nama_member` text NOT NULL,
  `no_telp` varchar(36) NOT NULL,
  `alamat` text NOT NULL,
  `Keterangan` text NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_poin_reword`
--

CREATE TABLE IF NOT EXISTS `tb_poin_reword` (
  `id_poin` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) NOT NULL,
  `poin` varchar(36) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_poin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE IF NOT EXISTS `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `no_nota` varchar(36) NOT NULL,
  `no_meja` text,
  `id_detail_transaksi` text NOT NULL,
  `total_pembelian` double NOT NULL,
  `uang_bayar` double DEFAULT NULL,
  `uang_kembali` double DEFAULT NULL,
  `tgl_pembelian` date NOT NULL,
  `jam_pembelian` time NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `jenis_pembelian` text NOT NULL,
  `keterangan` text,
  `ket` enum('0','1') NOT NULL,
  `id_login` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` enum('l','p') NOT NULL,
  `tgl_daftar` date NOT NULL,
  `password` varchar(50) NOT NULL,
  `jenis_user` enum('0','1') NOT NULL,
  `keterangan` enum('0','1') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `alamat`, `jenis_kelamin`, `tgl_daftar`, `password`, `jenis_user`, `keterangan`) VALUES
(7, 'budit', '', 'l', '2018-07-02', 'budit', '1', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
