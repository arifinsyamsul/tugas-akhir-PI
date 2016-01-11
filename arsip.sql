-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 08, 2016 at 01:38 PM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arsip`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `no` int(10) NOT NULL AUTO_INCREMENT,
  `nama_file` varchar(40) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(40) DEFAULT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`no`, `nama_file`, `tanggal`, `keterangan`, `file`) VALUES
(6, 'coba', '2012-05-22', 'dokumen', 'files/coba.doc'),
(7, 'surat', '2015-01-08', 'surat coba', 'files/surat.docx'),
(8, 'aaaaaaaaaaaaaaaaaa', '0000-00-00', '', 'files/aaaaaaaaaaaaaaaaaa.doc'),
(9, 'penting', '2015-12-10', 'test!', 'files/penting.doc');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE IF NOT EXISTS `dokumen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `unduh` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id`, `nama`, `tanggal`, `keterangan`, `unduh`) VALUES
(1, 'dokumen3', '2015-10-12', 'joooo', 'files/dokumen3.doc'),
(8, 'samsul dokumen', '2015-12-03', 'coba', 'files/samsul dokumen.doc'),
(7, 'OKY 2', '2015-12-10', 'OKY2', 'files/OKY 2.doc');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE IF NOT EXISTS `surat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(40) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `unduh` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id`, `nama`, `tanggal`, `keterangan`, `unduh`) VALUES
(2, 'undangan', '2015-12-08', 'surat undangan', 'files/undangan.doc'),
(30, 'dokumen10', '2015-12-10', 'mencoba2', 'files/dokumen10.doc'),
(23, 'surat Undangan 4', '2015-01-01', 'surat4', 'files/rrrrrrr.pptx'),
(37, 'bejo', '2015-12-10', 'dasda', 'files/bejo.doc'),
(25, 'test2', '2015-12-12', 'o2', 'files/test2.doc'),
(29, 'dokumen2', '2015-12-10', 'jajal', 'files/dokumen2.doc'),
(32, 'coba yuk', '2015-12-10', 'dicoba', 'files/coba yuk.doc'),
(33, 'Langsung', '2015-12-11', 'okee', 'files/Langsung.pptx'),
(36, 'surat tagihan listrik', '2015-12-03', 'listrik belum bayar', 'files/surat tagihan listrik.pptx'),
(39, 'Upload bulan ini', '2015-10-12', 'hasil', 'files/Upload bulan ini.doc'),
(40, 'undangan', '2015-01-01', 'nikahan', 'files/undangan.doc');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(8) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('user', 12345),
('biasa', 12345);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
