-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 16, 2014 at 11:13 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shokolad_db_1561`
--

-- --------------------------------------------------------

--
-- Table structure for table `ps_access`
--

CREATE TABLE IF NOT EXISTS `ps_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_tab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_access`
--

INSERT INTO `ps_access` (`id_profile`, `id_tab`, `view`, `add`, `edit`, `delete`) VALUES
(1, 0, 1, 1, 1, 1),
(1, 1, 1, 1, 1, 1),
(1, 5, 1, 1, 1, 1),
(1, 7, 1, 1, 1, 1),
(1, 9, 1, 1, 1, 1),
(1, 10, 1, 1, 1, 1),
(1, 11, 1, 1, 1, 1),
(1, 13, 1, 1, 1, 1),
(1, 14, 1, 1, 1, 1),
(1, 15, 1, 1, 1, 1),
(1, 16, 1, 1, 1, 1),
(1, 19, 1, 1, 1, 1),
(1, 20, 1, 1, 1, 1),
(1, 21, 1, 1, 1, 1),
(1, 22, 1, 1, 1, 1),
(1, 23, 1, 1, 1, 1),
(1, 24, 1, 1, 1, 1),
(1, 25, 1, 1, 1, 1),
(1, 26, 1, 1, 1, 1),
(1, 27, 1, 1, 1, 1),
(1, 28, 1, 1, 1, 1),
(1, 29, 1, 1, 1, 1),
(1, 30, 1, 1, 1, 1),
(1, 32, 1, 1, 1, 1),
(1, 33, 1, 1, 1, 1),
(1, 34, 1, 1, 1, 1),
(1, 35, 1, 1, 1, 1),
(1, 36, 1, 1, 1, 1),
(1, 37, 1, 1, 1, 1),
(1, 39, 1, 1, 1, 1),
(1, 40, 1, 1, 1, 1),
(1, 41, 1, 1, 1, 1),
(1, 42, 1, 1, 1, 1),
(1, 43, 1, 1, 1, 1),
(1, 45, 1, 1, 1, 1),
(1, 46, 1, 1, 1, 1),
(1, 50, 1, 1, 1, 1),
(1, 51, 1, 1, 1, 1),
(1, 53, 1, 1, 1, 1),
(1, 54, 1, 1, 1, 1),
(1, 55, 1, 1, 1, 1),
(1, 56, 1, 1, 1, 1),
(1, 57, 1, 1, 1, 1),
(1, 58, 1, 1, 1, 1),
(1, 59, 1, 1, 1, 1),
(1, 60, 1, 1, 1, 1),
(1, 62, 1, 1, 1, 1),
(1, 63, 1, 1, 1, 1),
(1, 64, 1, 1, 1, 1),
(1, 67, 1, 1, 1, 1),
(1, 68, 1, 1, 1, 1),
(1, 69, 1, 1, 1, 1),
(1, 70, 1, 1, 1, 1),
(1, 71, 1, 1, 1, 1),
(1, 72, 1, 1, 1, 1),
(1, 74, 1, 1, 1, 1),
(1, 75, 1, 1, 1, 1),
(1, 76, 1, 1, 1, 1),
(1, 77, 1, 1, 1, 1),
(1, 78, 1, 1, 1, 1),
(1, 79, 1, 1, 1, 1),
(1, 81, 1, 1, 1, 1),
(1, 82, 1, 1, 1, 1),
(1, 83, 1, 1, 1, 1),
(1, 84, 1, 1, 1, 1),
(1, 85, 1, 1, 1, 1),
(1, 87, 1, 1, 1, 1),
(1, 88, 1, 1, 1, 1),
(1, 89, 1, 1, 1, 1),
(1, 90, 1, 1, 1, 1),
(1, 93, 1, 1, 1, 1),
(1, 94, 1, 1, 1, 1),
(1, 95, 1, 1, 1, 1),
(1, 96, 1, 1, 1, 1),
(1, 97, 1, 1, 1, 1),
(1, 100, 1, 1, 1, 1),
(1, 101, 1, 1, 1, 1),
(1, 103, 1, 1, 1, 1),
(1, 104, 1, 1, 1, 1),
(1, 105, 1, 1, 1, 1),
(1, 106, 1, 1, 1, 1),
(2, 0, 1, 1, 1, 1),
(2, 1, 1, 1, 1, 1),
(2, 2, 0, 0, 0, 0),
(2, 3, 0, 0, 0, 0),
(2, 4, 0, 0, 0, 0),
(2, 5, 1, 1, 1, 1),
(2, 6, 1, 1, 1, 1),
(2, 7, 1, 1, 1, 1),
(2, 8, 0, 0, 0, 0),
(2, 9, 1, 1, 1, 1),
(2, 10, 1, 1, 1, 1),
(2, 11, 1, 1, 1, 1),
(2, 12, 0, 0, 0, 0),
(2, 13, 1, 1, 1, 1),
(2, 14, 1, 1, 1, 1),
(2, 15, 1, 1, 1, 1),
(2, 16, 1, 1, 1, 1),
(2, 17, 0, 0, 0, 0),
(2, 18, 1, 1, 1, 1),
(2, 19, 1, 1, 1, 1),
(2, 20, 1, 1, 1, 1),
(2, 21, 1, 1, 1, 1),
(2, 22, 1, 1, 1, 1),
(2, 23, 1, 1, 1, 1),
(2, 24, 1, 1, 1, 1),
(2, 25, 1, 1, 1, 1),
(2, 26, 1, 1, 1, 1),
(2, 27, 1, 1, 1, 1),
(2, 28, 1, 1, 1, 1),
(2, 29, 1, 1, 1, 1),
(2, 30, 1, 1, 1, 1),
(2, 31, 1, 1, 1, 1),
(2, 32, 1, 1, 1, 1),
(2, 33, 1, 1, 1, 1),
(2, 34, 1, 1, 1, 1),
(2, 35, 1, 1, 1, 1),
(2, 36, 1, 1, 1, 1),
(2, 37, 1, 1, 1, 1),
(2, 38, 1, 1, 1, 1),
(2, 39, 1, 1, 1, 1),
(2, 40, 1, 1, 1, 1),
(2, 41, 1, 1, 1, 1),
(2, 42, 1, 1, 1, 1),
(2, 43, 1, 1, 1, 1),
(2, 44, 0, 0, 0, 0),
(2, 45, 1, 1, 1, 1),
(2, 46, 1, 1, 1, 1),
(2, 47, 0, 0, 0, 0),
(2, 48, 0, 0, 0, 0),
(2, 49, 1, 1, 1, 1),
(2, 50, 1, 1, 1, 1),
(2, 51, 0, 0, 0, 0),
(2, 52, 1, 1, 1, 1),
(2, 53, 1, 1, 1, 1),
(2, 54, 1, 1, 1, 1),
(2, 55, 1, 1, 1, 1),
(2, 56, 1, 1, 1, 1),
(2, 57, 1, 1, 1, 1),
(2, 58, 1, 1, 1, 1),
(2, 59, 1, 1, 1, 1),
(2, 60, 1, 1, 1, 1),
(2, 61, 1, 1, 1, 1),
(2, 62, 1, 1, 1, 1),
(2, 63, 1, 1, 1, 1),
(2, 64, 1, 1, 1, 1),
(2, 65, 1, 1, 1, 1),
(2, 66, 1, 1, 1, 1),
(2, 67, 1, 1, 1, 1),
(2, 68, 1, 1, 1, 1),
(2, 69, 1, 1, 1, 1),
(2, 70, 1, 1, 1, 1),
(2, 71, 1, 1, 1, 1),
(2, 72, 1, 1, 1, 1),
(2, 73, 0, 0, 0, 0),
(2, 74, 1, 1, 1, 1),
(2, 75, 1, 1, 1, 1),
(2, 76, 1, 1, 1, 1),
(2, 77, 1, 1, 1, 1),
(2, 78, 1, 1, 1, 1),
(2, 79, 1, 1, 1, 1),
(2, 80, 0, 0, 0, 0),
(2, 81, 1, 1, 1, 1),
(2, 82, 1, 1, 1, 1),
(2, 83, 1, 1, 1, 1),
(2, 84, 1, 1, 1, 1),
(2, 85, 1, 1, 1, 1),
(2, 86, 1, 1, 1, 1),
(2, 87, 1, 1, 1, 1),
(2, 88, 1, 0, 0, 0),
(2, 89, 1, 1, 1, 1),
(2, 90, 1, 1, 1, 1),
(2, 91, 0, 0, 0, 0),
(2, 92, 1, 1, 1, 1),
(2, 93, 1, 1, 1, 1),
(2, 94, 1, 1, 1, 1),
(2, 95, 1, 1, 1, 1),
(2, 96, 1, 1, 1, 1),
(2, 97, 1, 1, 1, 1),
(2, 98, 0, 0, 0, 0),
(2, 99, 0, 0, 0, 0),
(2, 100, 1, 1, 1, 1),
(2, 101, 1, 1, 1, 1),
(2, 102, 0, 0, 0, 0),
(2, 103, 0, 0, 0, 0),
(2, 104, 0, 0, 0, 0),
(2, 105, 0, 0, 0, 0),
(2, 106, 0, 0, 0, 0),
(3, 0, 1, 1, 1, 1),
(3, 1, 0, 0, 0, 0),
(3, 2, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0),
(3, 4, 0, 0, 0, 0),
(3, 5, 0, 0, 0, 0),
(3, 6, 0, 0, 0, 0),
(3, 7, 0, 0, 0, 0),
(3, 8, 0, 0, 0, 0),
(3, 9, 1, 1, 1, 1),
(3, 10, 1, 1, 1, 1),
(3, 11, 1, 1, 1, 1),
(3, 12, 0, 0, 0, 0),
(3, 13, 1, 1, 1, 1),
(3, 14, 0, 0, 0, 0),
(3, 15, 0, 0, 0, 0),
(3, 16, 0, 0, 0, 0),
(3, 17, 0, 0, 0, 0),
(3, 18, 0, 0, 0, 0),
(3, 19, 0, 0, 0, 0),
(3, 20, 1, 1, 1, 1),
(3, 21, 1, 1, 1, 1),
(3, 22, 1, 1, 1, 1),
(3, 23, 1, 1, 1, 1),
(3, 24, 0, 0, 0, 0),
(3, 25, 0, 0, 0, 0),
(3, 26, 0, 0, 0, 0),
(3, 27, 1, 1, 1, 1),
(3, 28, 0, 0, 0, 0),
(3, 29, 0, 0, 0, 0),
(3, 30, 0, 0, 0, 0),
(3, 31, 1, 1, 1, 1),
(3, 32, 1, 1, 1, 1),
(3, 33, 1, 1, 1, 1),
(3, 34, 1, 1, 1, 1),
(3, 35, 1, 1, 1, 1),
(3, 36, 1, 1, 1, 1),
(3, 37, 0, 0, 0, 0),
(3, 38, 1, 1, 1, 1),
(3, 39, 1, 1, 1, 1),
(3, 40, 0, 0, 0, 0),
(3, 41, 0, 0, 0, 0),
(3, 42, 0, 0, 0, 0),
(3, 43, 0, 0, 0, 0),
(3, 44, 0, 0, 0, 0),
(3, 45, 0, 0, 0, 0),
(3, 46, 0, 0, 0, 0),
(3, 47, 0, 0, 0, 0),
(3, 48, 0, 0, 0, 0),
(3, 49, 1, 1, 1, 1),
(3, 50, 1, 1, 1, 1),
(3, 51, 0, 0, 0, 0),
(3, 52, 0, 0, 0, 0),
(3, 53, 0, 0, 0, 0),
(3, 54, 0, 0, 0, 0),
(3, 55, 0, 0, 0, 0),
(3, 56, 0, 0, 0, 0),
(3, 57, 0, 0, 0, 0),
(3, 58, 0, 0, 0, 0),
(3, 59, 0, 0, 0, 0),
(3, 60, 0, 0, 0, 0),
(3, 61, 1, 0, 1, 0),
(3, 62, 0, 0, 0, 0),
(3, 63, 0, 0, 0, 0),
(3, 64, 0, 0, 0, 0),
(3, 65, 0, 0, 0, 0),
(3, 66, 0, 0, 0, 0),
(3, 67, 0, 0, 0, 0),
(3, 68, 0, 0, 0, 0),
(3, 69, 0, 0, 0, 0),
(3, 70, 0, 0, 0, 0),
(3, 71, 0, 0, 0, 0),
(3, 72, 0, 0, 0, 0),
(3, 73, 0, 0, 0, 0),
(3, 74, 0, 0, 0, 0),
(3, 75, 0, 0, 0, 0),
(3, 76, 0, 0, 0, 0),
(3, 77, 0, 0, 0, 0),
(3, 78, 0, 0, 0, 0),
(3, 79, 0, 0, 0, 0),
(3, 80, 0, 0, 0, 0),
(3, 81, 0, 0, 0, 0),
(3, 82, 0, 0, 0, 0),
(3, 83, 0, 0, 0, 0),
(3, 84, 0, 0, 0, 0),
(3, 85, 0, 0, 0, 0),
(3, 86, 0, 0, 0, 0),
(3, 87, 0, 0, 0, 0),
(3, 88, 0, 0, 0, 0),
(3, 89, 0, 0, 0, 0),
(3, 90, 0, 0, 0, 0),
(3, 91, 0, 0, 0, 0),
(3, 92, 0, 0, 0, 0),
(3, 93, 0, 0, 0, 0),
(3, 94, 0, 0, 0, 0),
(3, 95, 1, 1, 1, 1),
(3, 96, 1, 1, 1, 1),
(3, 97, 1, 1, 1, 1),
(3, 98, 0, 0, 0, 0),
(3, 99, 0, 0, 0, 0),
(3, 100, 1, 1, 1, 1),
(3, 101, 1, 1, 1, 1),
(3, 102, 0, 0, 0, 0),
(3, 103, 0, 0, 0, 0),
(3, 104, 0, 0, 0, 0),
(3, 105, 0, 0, 0, 0),
(3, 106, 0, 0, 0, 0),
(4, 0, 1, 1, 1, 1),
(4, 1, 0, 0, 0, 0),
(4, 2, 0, 0, 0, 0),
(4, 3, 0, 0, 0, 0),
(4, 4, 0, 0, 0, 0),
(4, 5, 1, 0, 0, 0),
(4, 6, 0, 0, 0, 0),
(4, 7, 0, 0, 0, 0),
(4, 8, 0, 0, 0, 0),
(4, 9, 1, 1, 1, 1),
(4, 10, 0, 0, 0, 0),
(4, 11, 0, 0, 0, 0),
(4, 12, 0, 0, 0, 0),
(4, 13, 0, 0, 0, 0),
(4, 14, 0, 0, 0, 0),
(4, 15, 0, 0, 0, 0),
(4, 16, 0, 0, 0, 0),
(4, 17, 0, 0, 0, 0),
(4, 18, 0, 0, 0, 0),
(4, 19, 0, 0, 0, 0),
(4, 20, 0, 0, 0, 0),
(4, 21, 1, 1, 1, 1),
(4, 22, 1, 1, 1, 1),
(4, 23, 0, 0, 0, 0),
(4, 24, 0, 0, 0, 0),
(4, 25, 0, 0, 0, 0),
(4, 26, 0, 0, 0, 0),
(4, 27, 0, 0, 0, 0),
(4, 28, 0, 0, 0, 0),
(4, 29, 0, 0, 0, 0),
(4, 30, 0, 0, 0, 0),
(4, 31, 0, 0, 0, 0),
(4, 32, 0, 0, 0, 0),
(4, 33, 0, 0, 0, 0),
(4, 34, 0, 0, 0, 0),
(4, 35, 0, 0, 0, 0),
(4, 36, 0, 0, 0, 0),
(4, 37, 0, 0, 0, 0),
(4, 38, 0, 0, 0, 0),
(4, 39, 0, 0, 0, 0),
(4, 40, 0, 0, 0, 0),
(4, 41, 0, 0, 0, 0),
(4, 42, 0, 0, 0, 0),
(4, 43, 0, 0, 0, 0),
(4, 44, 0, 0, 0, 0),
(4, 45, 0, 0, 0, 0),
(4, 46, 0, 0, 0, 0),
(4, 47, 0, 0, 0, 0),
(4, 48, 0, 0, 0, 0),
(4, 49, 0, 0, 0, 0),
(4, 50, 0, 0, 0, 0),
(4, 51, 0, 0, 0, 0),
(4, 52, 0, 0, 0, 0),
(4, 53, 0, 0, 0, 0),
(4, 54, 0, 0, 0, 0),
(4, 55, 0, 0, 0, 0),
(4, 56, 0, 0, 0, 0),
(4, 57, 0, 0, 0, 0),
(4, 58, 0, 0, 0, 0),
(4, 59, 0, 0, 0, 0),
(4, 60, 1, 1, 1, 1),
(4, 61, 0, 0, 0, 0),
(4, 62, 0, 0, 0, 0),
(4, 63, 0, 0, 0, 0),
(4, 64, 0, 0, 0, 0),
(4, 65, 0, 0, 0, 0),
(4, 66, 0, 0, 0, 0),
(4, 67, 0, 0, 0, 0),
(4, 68, 0, 0, 0, 0),
(4, 69, 0, 0, 0, 0),
(4, 70, 0, 0, 0, 0),
(4, 71, 1, 1, 1, 1),
(4, 72, 0, 0, 0, 0),
(4, 73, 0, 0, 0, 0),
(4, 74, 0, 0, 0, 0),
(4, 75, 0, 0, 0, 0),
(4, 76, 0, 0, 0, 0),
(4, 77, 0, 0, 0, 0),
(4, 78, 0, 0, 0, 0),
(4, 79, 0, 0, 0, 0),
(4, 80, 0, 0, 0, 0),
(4, 81, 0, 0, 0, 0),
(4, 82, 0, 0, 0, 0),
(4, 83, 0, 0, 0, 0),
(4, 84, 0, 0, 0, 0),
(4, 85, 0, 0, 0, 0),
(4, 86, 0, 0, 0, 0),
(4, 87, 0, 0, 0, 0),
(4, 88, 0, 0, 0, 0),
(4, 89, 0, 0, 0, 0),
(4, 90, 0, 0, 0, 0),
(4, 91, 0, 0, 0, 0),
(4, 92, 0, 0, 0, 0),
(4, 93, 0, 0, 0, 0),
(4, 94, 0, 0, 0, 0),
(4, 95, 0, 0, 0, 0),
(4, 96, 0, 0, 0, 0),
(4, 97, 0, 0, 0, 0),
(4, 98, 0, 0, 0, 0),
(4, 99, 0, 0, 0, 0),
(4, 100, 0, 0, 0, 0),
(4, 101, 0, 0, 0, 0),
(4, 102, 0, 0, 0, 0),
(4, 103, 0, 0, 0, 0),
(4, 104, 0, 0, 0, 0),
(4, 105, 0, 0, 0, 0),
(4, 106, 0, 0, 0, 0),
(5, 0, 1, 1, 1, 1),
(5, 1, 0, 0, 0, 0),
(5, 2, 0, 0, 0, 0),
(5, 3, 0, 0, 0, 0),
(5, 4, 0, 0, 0, 0),
(5, 5, 1, 0, 0, 0),
(5, 6, 0, 0, 0, 0),
(5, 7, 0, 0, 0, 0),
(5, 8, 0, 0, 0, 0),
(5, 9, 1, 1, 1, 1),
(5, 10, 1, 1, 1, 1),
(5, 11, 1, 1, 1, 1),
(5, 12, 0, 0, 0, 0),
(5, 13, 0, 0, 0, 0),
(5, 14, 0, 0, 0, 0),
(5, 15, 0, 0, 0, 0),
(5, 16, 0, 0, 0, 0),
(5, 17, 0, 0, 0, 0),
(5, 18, 0, 0, 0, 0),
(5, 19, 1, 1, 1, 1),
(5, 20, 1, 0, 0, 0),
(5, 21, 1, 1, 1, 1),
(5, 22, 1, 1, 1, 1),
(5, 23, 0, 0, 0, 0),
(5, 24, 0, 0, 0, 0),
(5, 25, 0, 0, 0, 0),
(5, 26, 1, 0, 0, 0),
(5, 27, 0, 0, 0, 0),
(5, 28, 0, 0, 0, 0),
(5, 29, 0, 0, 0, 0),
(5, 30, 0, 0, 0, 0),
(5, 31, 1, 1, 1, 1),
(5, 32, 1, 1, 1, 1),
(5, 33, 0, 0, 0, 0),
(5, 34, 0, 0, 0, 0),
(5, 35, 1, 1, 1, 1),
(5, 36, 0, 0, 0, 0),
(5, 37, 1, 1, 1, 1),
(5, 38, 1, 1, 1, 1),
(5, 39, 1, 1, 1, 1),
(5, 40, 1, 1, 1, 1),
(5, 41, 1, 1, 1, 1),
(5, 42, 0, 0, 0, 0),
(5, 43, 0, 0, 0, 0),
(5, 44, 0, 0, 0, 0),
(5, 45, 0, 0, 0, 0),
(5, 46, 0, 0, 0, 0),
(5, 47, 0, 0, 0, 0),
(5, 48, 0, 0, 0, 0),
(5, 49, 0, 0, 0, 0),
(5, 50, 0, 0, 0, 0),
(5, 51, 0, 0, 0, 0),
(5, 52, 0, 0, 0, 0),
(5, 53, 0, 0, 0, 0),
(5, 54, 0, 0, 0, 0),
(5, 55, 0, 0, 0, 0),
(5, 56, 0, 0, 0, 0),
(5, 57, 0, 0, 0, 0),
(5, 58, 0, 0, 0, 0),
(5, 59, 0, 0, 0, 0),
(5, 60, 0, 0, 0, 0),
(5, 61, 1, 0, 1, 0),
(5, 62, 0, 0, 0, 0),
(5, 63, 0, 0, 0, 0),
(5, 64, 0, 0, 0, 0),
(5, 65, 0, 0, 0, 0),
(5, 66, 0, 0, 0, 0),
(5, 67, 0, 0, 0, 0),
(5, 68, 0, 0, 0, 0),
(5, 69, 0, 0, 0, 0),
(5, 70, 0, 0, 0, 0),
(5, 71, 0, 0, 0, 0),
(5, 72, 0, 0, 0, 0),
(5, 73, 0, 0, 0, 0),
(5, 74, 0, 0, 0, 0),
(5, 75, 0, 0, 0, 0),
(5, 76, 0, 0, 0, 0),
(5, 77, 0, 0, 0, 0),
(5, 78, 0, 0, 0, 0),
(5, 79, 0, 0, 0, 0),
(5, 80, 0, 0, 0, 0),
(5, 81, 0, 0, 0, 0),
(5, 82, 0, 0, 0, 0),
(5, 83, 0, 0, 0, 0),
(5, 84, 0, 0, 0, 0),
(5, 85, 1, 1, 1, 1),
(5, 86, 0, 0, 0, 0),
(5, 87, 0, 0, 0, 0),
(5, 88, 0, 0, 0, 0),
(5, 89, 0, 0, 0, 0),
(5, 90, 0, 0, 0, 0),
(5, 91, 0, 0, 0, 0),
(5, 92, 1, 1, 1, 1),
(5, 93, 0, 0, 0, 0),
(5, 94, 1, 1, 1, 1),
(5, 95, 0, 0, 0, 0),
(5, 96, 0, 0, 0, 0),
(5, 97, 0, 0, 0, 0),
(5, 98, 0, 0, 0, 0),
(5, 99, 0, 0, 0, 0),
(5, 100, 1, 0, 0, 0),
(5, 101, 0, 0, 0, 0),
(5, 102, 0, 0, 0, 0),
(5, 103, 0, 0, 0, 0),
(5, 104, 0, 0, 0, 0),
(5, 105, 0, 0, 0, 0),
(5, 106, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_accessory`
--

CREATE TABLE IF NOT EXISTS `ps_accessory` (
  `id_product_1` int(10) unsigned NOT NULL,
  `id_product_2` int(10) unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_accessory`
--

INSERT INTO `ps_accessory` (`id_product_1`, `id_product_2`) VALUES
(11, 1),
(11, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(22, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_address`
--

CREATE TABLE IF NOT EXISTS `ps_address` (
  `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `id_warehouse` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(64) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_address`
--

INSERT INTO `ps_address` (`id_address`, `id_country`, `id_state`, `id_customer`, `id_manufacturer`, `id_supplier`, `id_warehouse`, `alias`, `company`, `lastname`, `firstname`, `address1`, `address2`, `postcode`, `city`, `other`, `phone`, `phone_mobile`, `vat_number`, `dni`, `date_add`, `date_upd`, `active`, `deleted`) VALUES
(1, 21, 0, 0, 1, 0, 0, 'manufacturer', '', 'JOBS', 'STEVE', '1 Infinite Loop', '', '95014', 'Cupertino', '', '(800) 275-2273', '', '', '', '2014-01-06 22:19:16', '2014-01-06 22:19:16', 1, 0),
(2, 8, 0, 1, 0, 0, 0, 'Mon adresse', 'My Company', 'DOE', 'John', '16, Main street', '2nd floor', '75002', 'Paris ', '', '0102030405', '', '', '', '2014-01-06 22:19:16', '2014-01-06 22:19:16', 1, 0),
(3, 21, 32, 0, 0, 1, 0, 'supplier', 'Apple', 'supplier', 'supplier', '767 Fifth Ave.', '', '10153', 'New York', '', '(212) 336-1440', '', '', '', '2014-01-06 22:19:16', '2014-01-06 22:19:16', 1, 0),
(4, 21, 13, 0, 0, 2, 0, 'supplier', 'Shure', 'supplier', 'supplier', '5800 W. Touhy Ave', '', '60714', 'Niles', '', '800-434-3350', '', '', '', '2014-01-06 22:19:16', '2014-01-06 22:19:16', 1, 0),
(5, 29, 0, 3, 0, 0, 0, 'הכתובת שלי', '', 'איתן', 'נועם', 'הרימון 4', '', '54403', 'גבעת שמואל', '', '', '054-5619291', '', '', '2014-01-17 00:29:54', '2014-01-17 00:29:54', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_address_format`
--

CREATE TABLE IF NOT EXISTS `ps_address_format` (
  `id_country` int(10) unsigned NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_address_format`
--

INSERT INTO `ps_address_format` (`id_country`, `format`) VALUES
(1, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(2, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(3, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(4, 'firstname lastname\ncompany\naddress1\naddress2\ncity State:name postcode\nCountry:name\nphone\nphone_mobile'),
(5, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(6, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(7, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(8, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(9, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(10, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(11, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(12, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(13, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(14, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(15, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(16, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(17, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(18, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(19, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(20, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(21, 'firstname lastname\ncompany\naddress1 address2\ncity, State:name postcode\nCountry:name\nphone\nphone_mobile'),
(22, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(23, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(24, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(25, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(26, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(27, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(28, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(29, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(30, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(31, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(32, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(33, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(34, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(35, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(36, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(37, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(38, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(39, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(40, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(41, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(42, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(43, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(44, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(45, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(46, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(47, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(48, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(49, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(50, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(51, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(52, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(53, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(54, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(55, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(56, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(57, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(58, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(59, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(60, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(61, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(62, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(63, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(64, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(65, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(66, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(67, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(68, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(69, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(70, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(71, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(72, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(73, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(74, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(75, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(76, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(77, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(78, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(79, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(80, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(81, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(82, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(83, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(84, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(85, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(86, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(87, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(88, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(89, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(90, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(91, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(92, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(93, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(94, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(95, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(96, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(97, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(98, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(99, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(100, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(101, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(102, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(103, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(104, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(105, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(106, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(107, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(108, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(109, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(110, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(111, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(112, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(113, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(114, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(115, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(116, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(117, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(118, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(119, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(120, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(121, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(122, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(123, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(124, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(125, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(126, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(127, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(128, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(129, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(130, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(131, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(132, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(133, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(134, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(135, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(136, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(137, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(138, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(139, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(140, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(141, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(142, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(143, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(144, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(145, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),
(146, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(147, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(148, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(149, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(150, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(151, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(152, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(153, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(154, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(155, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(156, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(157, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(158, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(159, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(160, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(161, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(162, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(163, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(164, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(165, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(166, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(167, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(168, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(169, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(170, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(171, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(172, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(173, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(174, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(175, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(176, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(177, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(178, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(179, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(180, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(181, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(182, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(183, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(184, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(185, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(186, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(187, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(188, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(189, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(190, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(191, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(192, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(193, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(194, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(195, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(196, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(197, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(198, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(199, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(200, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(201, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(202, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(203, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(204, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(205, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(206, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(207, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(208, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(209, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(210, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(211, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(212, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(213, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(214, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(215, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(216, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(217, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(218, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(219, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(220, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(221, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(222, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(223, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(224, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(225, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(226, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(227, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(228, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(229, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(230, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(231, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(232, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(233, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(234, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(235, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(236, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(237, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(238, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(239, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(240, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(241, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(242, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(243, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),
(244, 'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile');

-- --------------------------------------------------------

--
-- Table structure for table `ps_advice`
--

CREATE TABLE IF NOT EXISTS `ps_advice` (
  `id_advice` int(11) NOT NULL AUTO_INCREMENT,
  `id_ps_advice` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `ids_tab` text,
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `location` enum('after','before') NOT NULL,
  `selector` varchar(255) DEFAULT NULL,
  `start_day` int(11) NOT NULL DEFAULT '0',
  `stop_day` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_advice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ps_advice`
--

INSERT INTO `ps_advice` (`id_advice`, `id_ps_advice`, `id_tab`, `ids_tab`, `validated`, `location`, `selector`, `start_day`, `stop_day`) VALUES
(4, 326, 38, NULL, 0, 'after', 'div#content form.form, form#customer', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_advice_lang`
--

CREATE TABLE IF NOT EXISTS `ps_advice_lang` (
  `id_advice` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `html` text,
  PRIMARY KEY (`id_advice`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_alias`
--

CREATE TABLE IF NOT EXISTS `ps_alias` (
  `id_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_alias`
--

INSERT INTO `ps_alias` (`id_alias`, `alias`, `search`, `active`) VALUES
(1, 'ipdo', 'ipod', 1),
(2, 'piod', 'ipod', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_attachment`
--

CREATE TABLE IF NOT EXISTS `ps_attachment` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `mime` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_attachment_lang`
--

CREATE TABLE IF NOT EXISTS `ps_attachment_lang` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute`
--

CREATE TABLE IF NOT EXISTS `ps_attribute` (
  `id_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_attribute_group` int(10) unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `ps_attribute`
--

INSERT INTO `ps_attribute` (`id_attribute`, `id_attribute_group`, `color`, `position`) VALUES
(1, 1, '', 0),
(2, 1, '', 1),
(3, 2, '#D2D6D5', 0),
(4, 2, '#008CB7', 1),
(5, 2, '#F3349E', 2),
(6, 2, '#93D52D', 3),
(7, 2, '#FD9812', 4),
(8, 1, '', 2),
(9, 1, '', 3),
(10, 3, '', 0),
(11, 3, '', 1),
(12, 1, '', 4),
(13, 1, '', 5),
(14, 2, '#000000', 5),
(15, 1, '', 6),
(16, 1, '', 7),
(17, 1, '', 8),
(18, 2, '#7800F0', 6),
(19, 2, '#F6EF04', 7),
(20, 2, '#F60409', 8),
(21, 4, '', 0),
(22, 4, '', 1),
(23, 4, '', 2),
(24, 4, '', 3),
(25, 4, '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_group`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_group` (
  `id_attribute_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  `group_type` enum('select','radio','color') NOT NULL DEFAULT 'select',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ps_attribute_group`
--

INSERT INTO `ps_attribute_group` (`id_attribute_group`, `is_color_group`, `group_type`, `position`) VALUES
(1, 0, 'select', 0),
(2, 1, 'color', 1),
(3, 0, 'select', 2),
(4, 0, 'select', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_group_lang`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_group_lang` (
  `id_attribute_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_attribute_group_lang`
--

INSERT INTO `ps_attribute_group_lang` (`id_attribute_group`, `id_lang`, `name`, `public_name`) VALUES
(1, 1, 'Disk space', 'Disk space'),
(1, 3, 'Disk space', 'Disk space'),
(2, 1, 'Color', 'Color'),
(2, 3, 'Color', 'Color'),
(3, 1, 'ICU', 'Processor'),
(3, 3, 'ICU', 'Processor'),
(4, 1, 'age', 'age'),
(4, 3, 'גיל', 'גיל');

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_group_shop` (
  `id_attribute_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_attribute_group_shop`
--

INSERT INTO `ps_attribute_group_shop` (`id_attribute_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_impact`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_impact` (
  `id_attribute_impact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_attribute` int(11) unsigned NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ps_attribute_impact`
--

INSERT INTO `ps_attribute_impact` (`id_attribute_impact`, `id_product`, `id_attribute`, `weight`, `price`) VALUES
(1, 11, 21, '0.000000', '0.00'),
(2, 11, 22, '0.000000', '0.00'),
(3, 11, 23, '0.000000', '0.00'),
(4, 11, 24, '0.000000', '0.00'),
(5, 11, 25, '0.000000', '0.00'),
(6, 17, 21, '0.000000', '0.00'),
(7, 17, 22, '0.000000', '0.00'),
(8, 17, 23, '0.000000', '0.00'),
(9, 17, 24, '0.000000', '0.00'),
(10, 17, 25, '0.000000', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_lang`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_lang` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_attribute_lang`
--

INSERT INTO `ps_attribute_lang` (`id_attribute`, `id_lang`, `name`) VALUES
(10, 1, '1.60GHz Intel Core 2 Duo'),
(11, 1, '1.80GHz Intel Core 2 Duo'),
(25, 1, '10'),
(13, 1, '160GB: 40,000 Songs'),
(16, 1, '16GB'),
(21, 1, '2-3'),
(1, 1, '2GB'),
(17, 1, '32GB'),
(22, 1, '4-5'),
(2, 1, '4GB'),
(23, 1, '6-7'),
(24, 1, '8-9'),
(9, 1, '80GB Parallel ATA Drive @ 4200 rpm'),
(12, 1, '80GB: 20,000 Songs'),
(15, 1, '8GB'),
(14, 1, 'Black'),
(4, 1, 'Blue'),
(6, 1, 'Green'),
(3, 1, 'Metal'),
(8, 1, 'Optional 64GB solid-state drive'),
(7, 1, 'Orange'),
(5, 1, 'Pink'),
(18, 1, 'Purple'),
(20, 1, 'Red'),
(19, 1, 'Yellow'),
(10, 3, '1.60GHz Intel Core 2 Duo'),
(11, 3, '1.80GHz Intel Core 2 Duo'),
(25, 3, '10'),
(13, 3, '160GB: 40,000 Songs'),
(16, 3, '16GB'),
(21, 3, '2-3'),
(1, 3, '2GB'),
(17, 3, '32GB'),
(22, 3, '4-5'),
(2, 3, '4GB'),
(23, 3, '6-7'),
(24, 3, '8-9'),
(9, 3, '80GB Parallel ATA Drive @ 4200 rpm'),
(12, 3, '80GB: 20,000 Songs'),
(15, 3, '8GB'),
(14, 3, 'Black'),
(4, 3, 'Blue'),
(6, 3, 'Green'),
(3, 3, 'Metal'),
(8, 3, 'Optional 64GB solid-state drive'),
(7, 3, 'Orange'),
(5, 3, 'Pink'),
(18, 3, 'Purple'),
(20, 3, 'Red'),
(19, 3, 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `ps_attribute_shop`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_shop` (
  `id_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_attribute_shop`
--

INSERT INTO `ps_attribute_shop` (`id_attribute`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_badge`
--

CREATE TABLE IF NOT EXISTS `ps_badge` (
  `id_badge` int(11) NOT NULL AUTO_INCREMENT,
  `id_ps_badge` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `id_group` int(11) NOT NULL,
  `group_position` int(11) NOT NULL,
  `scoring` int(11) NOT NULL,
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_badge`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=173 ;

--
-- Dumping data for table `ps_badge`
--

INSERT INTO `ps_badge` (`id_badge`, `id_ps_badge`, `type`, `id_group`, `group_position`, `scoring`, `validated`) VALUES
(2, 2, 'feature', 2, 1, 10, 0),
(4, 4, 'feature', 3, 1, 15, 0),
(6, 6, 'feature', 4, 1, 15, 0),
(8, 8, 'feature', 5, 1, 5, 1),
(10, 10, 'feature', 6, 1, 15, 0),
(12, 12, 'feature', 6, 3, 10, 0),
(14, 14, 'feature', 5, 4, 15, 0),
(16, 16, 'feature', 5, 6, 20, 0),
(18, 18, 'achievement', 7, 2, 10, 1),
(20, 20, 'feature', 8, 2, 15, 0),
(22, 22, 'feature', 10, 1, 10, 0),
(24, 24, 'feature', 10, 3, 10, 0),
(26, 26, 'feature', 10, 5, 10, 0),
(28, 28, 'feature', 3, 3, 10, 0),
(30, 30, 'achievement', 11, 2, 10, 0),
(32, 32, 'achievement', 11, 4, 20, 0),
(34, 34, 'achievement', 11, 6, 30, 0),
(36, 36, 'achievement', 7, 4, 20, 0),
(38, 38, 'achievement', 7, 6, 30, 0),
(40, 40, 'achievement', 12, 2, 10, 0),
(42, 42, 'achievement', 12, 4, 20, 0),
(44, 44, 'achievement', 12, 6, 30, 0),
(46, 46, 'achievement', 13, 2, 10, 0),
(47, 2, 'feature', 2, 1, 10, 0),
(48, 4, 'feature', 3, 1, 15, 0),
(49, 6, 'feature', 4, 1, 15, 0),
(50, 8, 'feature', 5, 1, 5, 1),
(51, 10, 'feature', 6, 1, 15, 0),
(52, 12, 'feature', 6, 3, 10, 0),
(53, 14, 'feature', 5, 4, 15, 0),
(54, 16, 'feature', 5, 6, 20, 0),
(55, 18, 'achievement', 7, 2, 10, 1),
(56, 20, 'feature', 8, 2, 15, 0),
(57, 22, 'feature', 10, 1, 10, 0),
(58, 24, 'feature', 10, 3, 10, 0),
(59, 26, 'feature', 10, 5, 10, 0),
(60, 28, 'feature', 3, 3, 10, 0),
(61, 30, 'achievement', 11, 2, 10, 0),
(62, 32, 'achievement', 11, 4, 20, 0),
(63, 34, 'achievement', 11, 6, 30, 0),
(64, 36, 'achievement', 7, 4, 20, 0),
(65, 38, 'achievement', 7, 6, 30, 0),
(66, 40, 'achievement', 12, 2, 10, 0),
(67, 42, 'achievement', 12, 4, 20, 0),
(68, 44, 'achievement', 12, 6, 30, 0),
(69, 46, 'achievement', 13, 2, 10, 0),
(70, 47, 'achievement', 13, 3, 15, 0),
(71, 48, 'achievement', 13, 4, 20, 0),
(72, 49, 'achievement', 13, 5, 25, 0),
(73, 50, 'achievement', 13, 6, 30, 0),
(74, 51, 'achievement', 14, 1, 5, 0),
(75, 52, 'achievement', 14, 2, 10, 0),
(76, 53, 'achievement', 14, 3, 15, 0),
(77, 54, 'achievement', 14, 4, 20, 0),
(78, 55, 'achievement', 14, 5, 25, 0),
(79, 56, 'achievement', 14, 6, 30, 0),
(80, 57, 'achievement', 15, 1, 5, 0),
(81, 58, 'achievement', 15, 2, 10, 0),
(82, 59, 'achievement', 15, 3, 15, 0),
(83, 60, 'achievement', 15, 4, 20, 0),
(84, 61, 'achievement', 15, 5, 25, 0),
(85, 62, 'achievement', 15, 6, 30, 0),
(86, 63, 'achievement', 16, 1, 5, 1),
(87, 64, 'achievement', 16, 2, 10, 0),
(88, 65, 'achievement', 16, 3, 15, 0),
(89, 66, 'achievement', 16, 4, 20, 0),
(90, 67, 'achievement', 16, 5, 25, 0),
(91, 68, 'achievement', 16, 6, 30, 0),
(92, 74, 'international', 22, 1, 10, 0),
(93, 75, 'international', 23, 1, 10, 0),
(94, 83, 'international', 31, 1, 10, 0),
(95, 84, 'international', 25, 1, 10, 0),
(96, 85, 'international', 32, 1, 10, 0),
(97, 86, 'international', 33, 1, 10, 0),
(98, 87, 'international', 34, 1, 10, 0),
(99, 88, 'feature', 35, 1, 5, 0),
(100, 89, 'feature', 35, 2, 10, 0),
(101, 90, 'feature', 35, 3, 10, 0),
(102, 91, 'feature', 35, 4, 10, 0),
(103, 92, 'feature', 35, 5, 10, 0),
(104, 93, 'feature', 35, 6, 10, 0),
(105, 94, 'feature', 36, 1, 5, 1),
(106, 95, 'feature', 36, 2, 5, 0),
(107, 96, 'feature', 36, 3, 10, 0),
(108, 97, 'feature', 36, 4, 10, 0),
(109, 98, 'feature', 36, 5, 20, 0),
(110, 99, 'feature', 36, 6, 20, 0),
(111, 100, 'feature', 8, 3, 15, 0),
(112, 101, 'achievement', 37, 1, 5, 0),
(113, 102, 'achievement', 37, 2, 5, 0),
(114, 103, 'achievement', 37, 3, 10, 0),
(115, 104, 'achievement', 37, 4, 10, 0),
(116, 105, 'achievement', 37, 5, 15, 0),
(117, 106, 'achievement', 37, 6, 15, 0),
(118, 107, 'achievement', 38, 1, 10, 0),
(119, 108, 'achievement', 38, 2, 10, 0),
(120, 109, 'achievement', 38, 3, 15, 0),
(121, 110, 'achievement', 38, 4, 20, 0),
(122, 111, 'achievement', 38, 5, 25, 0),
(123, 112, 'achievement', 38, 6, 30, 0),
(124, 1, 'feature', 1, 1, 10, 0),
(125, 3, 'feature', 2, 2, 15, 0),
(126, 5, 'feature', 3, 2, 15, 0),
(127, 6, 'feature', 4, 1, 15, 0),
(128, 7, 'feature', 4, 2, 15, 0),
(129, 9, 'feature', 5, 2, 10, 0),
(130, 10, 'feature', 6, 1, 15, 0),
(131, 11, 'feature', 6, 2, 10, 0),
(132, 13, 'feature', 5, 3, 10, 0),
(133, 15, 'feature', 5, 5, 20, 0),
(134, 17, 'achievement', 7, 1, 5, 1),
(135, 18, 'achievement', 7, 2, 10, 1),
(136, 19, 'feature', 8, 1, 15, 0),
(137, 21, 'feature', 9, 1, 15, 0),
(138, 23, 'feature', 10, 2, 10, 0),
(139, 25, 'feature', 10, 4, 10, 0),
(140, 26, 'feature', 10, 5, 10, 0),
(141, 27, 'feature', 4, 3, 10, 0),
(142, 29, 'achievement', 11, 1, 5, 0),
(143, 30, 'achievement', 11, 2, 10, 0),
(144, 31, 'achievement', 11, 3, 15, 0),
(145, 33, 'achievement', 11, 5, 25, 0),
(146, 34, 'achievement', 11, 6, 30, 0),
(147, 35, 'achievement', 7, 3, 15, 0),
(148, 37, 'achievement', 7, 5, 25, 0),
(149, 39, 'achievement', 12, 1, 5, 0),
(150, 41, 'achievement', 12, 3, 15, 0),
(151, 42, 'achievement', 12, 4, 20, 0),
(152, 43, 'achievement', 12, 5, 25, 0),
(153, 45, 'achievement', 13, 1, 5, 1),
(154, 46, 'achievement', 13, 2, 10, 0),
(155, 48, 'achievement', 13, 4, 20, 0),
(156, 52, 'achievement', 14, 2, 10, 0),
(157, 56, 'achievement', 14, 6, 30, 0),
(158, 60, 'achievement', 15, 4, 20, 0),
(159, 62, 'achievement', 15, 6, 30, 0),
(160, 64, 'achievement', 16, 2, 10, 0),
(161, 68, 'achievement', 16, 6, 30, 0),
(162, 74, 'international', 22, 1, 10, 0),
(163, 75, 'international', 23, 1, 10, 0),
(164, 78, 'international', 26, 1, 10, 0),
(165, 79, 'international', 27, 1, 10, 0),
(166, 81, 'international', 29, 1, 10, 0),
(167, 82, 'international', 30, 1, 10, 0),
(168, 85, 'international', 32, 1, 10, 0),
(169, 87, 'international', 34, 1, 10, 0),
(170, 89, 'feature', 35, 2, 10, 0),
(171, 90, 'feature', 35, 3, 10, 0),
(172, 91, 'feature', 35, 4, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_badge_lang`
--

CREATE TABLE IF NOT EXISTS `ps_badge_lang` (
  `id_badge` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_badge`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_badge_lang`
--

INSERT INTO `ps_badge_lang` (`id_badge`, `id_lang`, `name`, `description`, `group_name`) VALUES
(2, 1, 'Site Performance', 'You enabled CCC (Combine, Compress and Cache), Rijndael and Smarty through the tab \r\nAdvanced Parameters > Performance.', 'Site Performance'),
(2, 3, 'Site Performance', 'You enabled CCC (Combine, Compress and Cache), Rijndael and Smarty through the tab \r\nAdvanced Parameters > Performance.', 'Site Performance'),
(4, 1, 'Payment', 'You configured a payment solution on your store.', 'Payment'),
(4, 3, 'Payment', 'You configured a payment solution on your store.', 'Payment'),
(6, 1, 'Shipping', 'You configured a carrier on your store.', 'Shipping'),
(8, 1, 'Catalog Size', 'You added your first product to your catalog!', 'Catalog Size'),
(8, 3, 'Catalog Size', 'You added your first product to your catalog!', 'Catalog Size'),
(10, 1, 'Contact information', 'You configured your phone number so your customers can reach you!', 'Contact information'),
(12, 1, 'Contact information', 'You suggest a total of 5 departments to be reached by your customers via your contact form.', 'Contact information'),
(12, 3, 'Contact information', 'You suggest a total of 5 departments to be reached by your customers via your contact form.', 'Contact information'),
(14, 1, 'Catalog Size', 'You have 1,000 products within your catalog.', 'Catalog Size'),
(14, 3, 'Catalog Size', 'You have 1,000 products within your catalog.', 'Catalog Size'),
(16, 1, 'Catalog Size', 'You have 100,000 products within your catalog.', 'Catalog Size'),
(16, 3, 'Catalog Size', 'You have 100,000 products within your catalog.', 'Catalog Size'),
(18, 1, 'Days of Experience', 'You installed PrestaShop a week ago!', 'Days of Experience'),
(18, 3, 'Days of Experience', '', ''),
(20, 1, 'Customization', 'You installed a new template.', 'Customization'),
(20, 3, 'Customization', 'You installed a new template.', 'Customization'),
(22, 1, 'Multistores', 'You enabled the Multistores feature.', 'Multistores'),
(22, 3, 'Multistores', 'You enabled the Multistores feature.', 'Multistores'),
(24, 1, 'Multistores', 'You manage two different groups of stores using the Multistores feature.', 'Multistores'),
(24, 3, 'Multistores', 'You manage two different groups of stores using the Multistores feature.', 'Multistores'),
(26, 1, 'Multistores', 'You manage five different groups of stores using the Multistores feature.', 'Multistores'),
(28, 1, 'Payment', 'You offer three different payment methods to your customers.', 'Payment'),
(28, 3, 'Payment', 'You offer three different payment methods to your customers.', 'Payment'),
(30, 1, 'Revenue', 'You get this badge when you reach 1000 USD in sales.', 'Revenue'),
(32, 1, 'Revenue', 'You get this badge when you reach 200 USD in sales.', 'Revenue'),
(32, 3, 'Revenue', 'You get this badge when you reach 500 ILS in sales.', 'Revenue'),
(34, 1, 'Revenue', 'You get this badge when you reach 1000 USD in sales.', 'Revenue'),
(36, 1, 'Days of Experience', 'You installed PrestaShop six months ago!', 'Days of Experience'),
(36, 3, 'Days of Experience', 'You installed PrestaShop six months ago!', 'Days of Experience'),
(38, 1, 'Days of Experience', 'You installed PrestaShop two years ago!', 'Days of Experience'),
(38, 3, 'Days of Experience', 'You installed PrestaShop two years ago!', 'Days of Experience'),
(40, 1, 'Visitors', 'You reached 100 visitors!', 'Visitors'),
(40, 3, 'Visitors', 'You reached 100 visitors!', 'Visitors'),
(42, 1, 'Visitors', 'You reached 10,000 visitors!', 'Visitors'),
(44, 1, 'Visitors', 'You reached 1,000,000 visitors!', 'Visitors'),
(44, 3, 'Visitors', 'You reached 1,000,000 visitors!', 'Visitors'),
(47, 1, 'Site Performance', 'You enabled CCC (Combine, Compress and Cache), Rijndael and Smarty through the tab \r\nAdvanced Parameters > Performance.', 'Site Performance'),
(47, 3, 'Customer Carts', 'A hundred carts have been created by visitors on your store.', 'Customer Carts'),
(48, 1, 'Payment', 'You configured a payment solution on your store.', 'Payment'),
(49, 1, 'Shipping', 'You configured a carrier on your store.', 'Shipping'),
(49, 3, 'Customer Carts', '10,000 carts have been created by visitors.', 'Customer Carts'),
(50, 1, 'Catalog Size', 'You added your first product to your catalog!', 'Catalog Size'),
(50, 3, 'Customer Carts', '100,000 carts have been created by visitors.', 'Customer Carts'),
(51, 1, 'Contact information', 'You configured your phone number so your customers can reach you!', 'Contact information'),
(51, 3, 'Orders', 'You received your first order.', 'Orders'),
(52, 1, 'Contact information', 'You suggest a total of 5 departments to be reached by your customers via your contact form.', 'Contact information'),
(53, 1, 'Catalog Size', 'You have 1,000 products within your catalog.', 'Catalog Size'),
(53, 3, 'Orders', 'You received 100 orders through your online store!', 'Orders'),
(54, 1, 'Catalog Size', 'You have 100,000 products within your catalog.', 'Catalog Size'),
(54, 3, 'Orders', 'You received 1,000 orders through your online store, congrats!', 'Orders'),
(55, 1, 'Days of Experience', 'You installed PrestaShop a week ago!', 'Days of Experience'),
(55, 3, 'Orders', 'You received 10,000 orders through your online store, cheers!', 'Orders'),
(56, 1, 'Customization', 'You installed a new template.', 'Customization'),
(57, 1, 'Multistores', 'You enabled the Multistores feature.', 'Multistores'),
(57, 3, 'Customer Service Threads', 'You received  your first customer''s message.', 'Customer Service Threads'),
(58, 1, 'Multistores', 'You manage two different groups of stores using the Multistores feature.', 'Multistores'),
(58, 3, 'Customer Service Threads', 'You received 10 messages from your customers.', 'Customer Service Threads'),
(59, 1, 'Multistores', 'You manage five different groups of stores using the Multistores feature.', 'Multistores'),
(59, 3, 'Customer Service Threads', 'You received 100 messages from your customers.', 'Customer Service Threads'),
(60, 1, 'Payment', 'You offer three different payment methods to your customers.', 'Payment'),
(61, 1, 'Revenue', 'You get this badge when you reach 1000 USD in sales.', 'Revenue'),
(61, 3, 'Customer Service Threads', 'You received 10,000 messages from your customers.', 'Customer Service Threads'),
(62, 1, 'Revenue', 'You get this badge when you reach 200 USD in sales.', 'Revenue'),
(63, 1, 'Revenue', 'You get this badge when you reach 1000 USD in sales.', 'Revenue'),
(63, 3, 'Customers', 'You got the first customer registered on your store!', 'Customers'),
(64, 1, 'Days of Experience', 'You installed PrestaShop six months ago!', 'Days of Experience'),
(65, 1, 'Days of Experience', 'You installed PrestaShop two years ago!', 'Days of Experience'),
(65, 3, 'Customers', 'You have over 100 customers registered on your store.', 'Customers'),
(66, 1, 'Visitors', 'You reached 100 visitors!', 'Visitors'),
(66, 3, 'Customers', 'You have over 1,000 customers registered on your store.', 'Customers'),
(67, 1, 'Visitors', 'You reached 10,000 visitors!', 'Visitors'),
(67, 3, 'Customers', 'You have over 10,000 customers registered on your store.', 'Customers'),
(68, 1, 'Visitors', 'You reached 1,000,000 visitors!', 'Visitors'),
(69, 1, 'Customer Carts', 'Ten carts have been created by visitors.', 'Customer Carts'),
(70, 1, 'Customer Carts', 'A hundred carts have been created by visitors on your store.', 'Customer Carts'),
(71, 1, 'Customer Carts', 'A thousand carts have been created by visitors on your store.', 'Customer Carts'),
(72, 1, 'Customer Carts', '10,000 carts have been created by visitors.', 'Customer Carts'),
(73, 1, 'Customer Carts', '100,000 carts have been created by visitors.', 'Customer Carts'),
(74, 1, 'Orders', 'You received your first order.', 'Orders'),
(75, 1, 'Orders', '10 orders have been placed through your online store.', 'Orders'),
(76, 1, 'Orders', 'You received 100 orders through your online store!', 'Orders'),
(77, 1, 'Orders', 'You received 1,000 orders through your online store, congrats!', 'Orders'),
(78, 1, 'Orders', 'You received 10,000 orders through your online store, cheers!', 'Orders'),
(79, 1, 'Orders', 'You received 100,000 orders through your online store!', 'Orders'),
(80, 1, 'Customer Service Threads', 'You received  your first customer''s message.', 'Customer Service Threads'),
(80, 3, 'Southern Asia', 'You got your first sale in Southern Asia', 'Southern Asia'),
(81, 1, 'Customer Service Threads', 'You received 10 messages from your customers.', 'Customer Service Threads'),
(82, 1, 'Customer Service Threads', 'You received 100 messages from your customers.', 'Customer Service Threads'),
(83, 1, 'Customer Service Threads', 'You received 1,000 messages from your customers.', 'Customer Service Threads'),
(84, 1, 'Customer Service Threads', 'You received 10,000 messages from your customers.', 'Customer Service Threads'),
(84, 3, 'South America', 'You got your first sale in South America', 'South America'),
(85, 1, 'Customer Service Threads', 'You received 100,000 messages from your customers.', 'Customer Service Threads'),
(86, 1, 'Customers', 'You got the first customer registered on your store!', 'Customers'),
(86, 3, 'Africa', 'You got your first sale in Africa', 'Africa'),
(87, 1, 'Customers', 'You have over 10 customers registered on your store.', 'Customers'),
(88, 1, 'Customers', 'You have over 100 customers registered on your store.', 'Customers'),
(88, 3, 'Your Team''s Employees', 'First employees accounts added to your shop', 'Your Team''s Employees'),
(89, 1, 'Customers', 'You have over 1,000 customers registered on your store.', 'Customers'),
(90, 1, 'Customers', 'You have over 10,000 customers registered on your store.', 'Customers'),
(91, 1, 'Customers', 'You have over 100,000 customers registered on your store.', 'Customers'),
(92, 1, 'North America', 'You got your first sale in North America', 'North America'),
(92, 3, 'Your Team''s Employees', '20 employees accounts added to your shop', 'Your Team''s Employees'),
(93, 1, 'Oceania', 'You got your first sale in Oceania', 'Oceania'),
(93, 3, 'Your Team''s Employees', '40 employees accounts added to your shop', 'Your Team''s Employees'),
(94, 1, 'Asia', 'You got your first sale in Asia', 'Asia'),
(94, 3, 'Product Pictures', 'First photo added to your catalog', 'Product Pictures'),
(95, 1, 'South America', 'You got your first sale in South America', 'South America'),
(95, 3, 'Product Pictures', '50 photos added to your catalog', 'Product Pictures'),
(96, 1, 'Europe', 'You got your first sale in  Europe!', 'Europe'),
(96, 3, 'Product Pictures', '100 photos added to your catalog', 'Product Pictures'),
(97, 1, 'Africa', 'You got your first sale in Africa', 'Africa'),
(97, 3, 'Product Pictures', '1000 photos added to your catalog', 'Product Pictures'),
(98, 1, 'Maghreb', 'You got your first sale in Maghreb', 'Maghreb'),
(98, 3, 'Product Pictures', '10000 photos added to your catalog', 'Product Pictures'),
(99, 1, 'Your Team''s Employees', 'First employees accounts added to your shop', 'Your Team''s Employees'),
(99, 3, 'Product Pictures', '50000 photos added to your catalog', 'Product Pictures'),
(100, 1, 'Your Team''s Employees', '3 employees accounts added to your shop', 'Your Team''s Employees'),
(101, 1, 'Your Team''s Employees', '5 employees accounts added to your shop', 'Your Team''s Employees'),
(102, 1, 'Your Team''s Employees', '10 employees accounts added to your shop', 'Your Team''s Employees'),
(103, 1, 'Your Team''s Employees', '20 employees accounts added to your shop', 'Your Team''s Employees'),
(104, 1, 'Your Team''s Employees', '40 employees accounts added to your shop', 'Your Team''s Employees'),
(105, 1, 'Product Pictures', 'First photo added to your catalog', 'Product Pictures'),
(105, 3, 'Product Pictures', '', ''),
(106, 1, 'Product Pictures', '50 photos added to your catalog', 'Product Pictures'),
(107, 1, 'Product Pictures', '100 photos added to your catalog', 'Product Pictures'),
(108, 1, 'Product Pictures', '1000 photos added to your catalog', 'Product Pictures'),
(109, 1, 'Product Pictures', '10000 photos added to your catalog', 'Product Pictures'),
(110, 1, 'Product Pictures', '50000 photos added to your catalog', 'Product Pictures'),
(111, 1, 'Customization', 'First CMS page added to your catalog', 'Customization'),
(112, 1, 'Cart Rules', 'First cart rules configured on your shop', 'Cart Rules'),
(113, 1, 'Cart Rules', 'You have 10 cart rules configured on your shop', 'Cart Rules'),
(114, 1, 'Cart Rules', 'You have 100 cart rules configured on your shop', 'Cart Rules'),
(115, 1, 'Cart Rules', 'You have 500 cart rules configured on your shop', 'Cart Rules'),
(116, 1, 'Cart Rules', 'You have 1000 cart rules configured on your shop', 'Cart Rules'),
(117, 1, 'Cart Rules', 'You have 5000 cart rules configured on your shop', 'Cart Rules'),
(118, 1, 'International Orders', 'First international order placed on your store', 'International Orders'),
(119, 1, 'International Orders', '10 international order placed on your store', 'International Orders'),
(120, 1, 'International Orders', '100 international order placed on your store', 'International Orders'),
(121, 1, 'International Orders', '1000 international order placed on your store', 'International Orders'),
(122, 1, 'International Orders', '5000 international order placed on your store', 'International Orders'),
(123, 1, 'International Orders', '10000 international order placed on your store', 'International Orders'),
(124, 3, 'SEO', 'You enabled the URL rewriting through the tab "Preferences > SEO and URLs".', 'SEO'),
(125, 3, 'Site Performance', 'You enabled medias servers through the tab "Advanced parameters > Performances".', 'Site Performance'),
(126, 3, 'Payment', 'You offer two different payment methods to your customers.', 'Payment'),
(127, 3, 'Shipping', 'You configured a carrier on your store.', 'Shipping'),
(128, 3, 'Shipping', 'You offer two shipping solutions (carriers) to your customers.', 'Shipping'),
(129, 3, 'Catalog Size', 'You have 10 products within your catalog.', 'Catalog Size'),
(130, 3, 'Contact information', 'You configured your phone number so your customers can reach you!', 'Contact information'),
(131, 3, 'Contact information', 'You added a third email address to your contact form.', 'Contact information'),
(132, 3, 'Catalog Size', 'You have 100 products within your catalog.', 'Catalog Size'),
(133, 3, 'Catalog Size', 'You have 10,000 products within your catalog.', 'Catalog Size'),
(134, 1, 'Days of Experience', '', ''),
(134, 3, 'Days of Experience', 'You just installed PrestaShop!', 'Days of Experience'),
(135, 1, 'Days of Experience', '', ''),
(135, 3, 'Days of Experience', 'You installed PrestaShop a week ago!', 'Days of Experience'),
(136, 3, 'Customization', 'You uploaded your own logo.', 'Customization'),
(137, 3, 'Addons', 'You connected your back-office to the Addons platform using your PrestaShop Addons account.', 'Addons'),
(138, 3, 'Multistores', 'You manage two stores with the Multistores feature.', 'Multistores'),
(139, 3, 'Multistores', 'You manage five stores with the Multistores feature.', 'Multistores'),
(140, 3, 'Multistores', 'You manage five different groups of stores using the Multistores feature.', 'Multistores'),
(141, 3, 'Shipping', 'You offer three different shipping solutions (carriers) to your customers.', 'Shipping'),
(142, 3, 'Revenue', 'You get this badge when you reach 500 ILS in sales.', 'Revenue'),
(143, 3, 'Revenue', 'You get this badge when you reach 1000 ILS in sales.', 'Revenue'),
(144, 3, 'Revenue', 'You get this badge when you reach 1000 ILS in sales.', 'Revenue'),
(145, 3, 'Revenue', 'You get this badge when you reach 1000 ILS in sales.', 'Revenue'),
(146, 3, 'Revenue', 'You get this badge when you reach 1000 ILS in sales.', 'Revenue'),
(147, 3, 'Days of Experience', 'You installed PrestaShop a month ago!', 'Days of Experience'),
(148, 3, 'Days of Experience', 'You installed PrestaShop a year ago!', 'Days of Experience'),
(149, 3, 'Visitors', 'You reached 10 visitors!', 'Visitors'),
(150, 3, 'Visitors', 'You reached 1,000 visitors!', 'Visitors'),
(151, 3, 'Visitors', 'You reached 10,000 visitors!', 'Visitors'),
(152, 3, 'Visitors', 'You reached 100,000 visitors!', 'Visitors'),
(153, 1, 'Customer Carts', '', ''),
(153, 3, 'Customer Carts', 'Two carts have been created by visitors.', 'Customer Carts'),
(154, 3, 'Customer Carts', 'Ten carts have been created by visitors.', 'Customer Carts'),
(155, 3, 'Customer Carts', 'A thousand carts have been created by visitors on your store.', 'Customer Carts'),
(156, 3, 'Orders', '10 orders have been placed through your online store.', 'Orders'),
(157, 3, 'Orders', 'You received 100,000 orders through your online store!', 'Orders'),
(158, 3, 'Customer Service Threads', 'You received 1,000 messages from your customers.', 'Customer Service Threads'),
(159, 3, 'Customer Service Threads', 'You received 100,000 messages from your customers.', 'Customer Service Threads'),
(160, 3, 'Customers', 'You have over 10 customers registered on your store.', 'Customers'),
(161, 3, 'Customers', 'You have over 100,000 customers registered on your store.', 'Customers'),
(162, 3, 'North America', 'You got your first sale in North America', 'North America'),
(163, 3, 'Oceania', 'You got your first sale in Oceania', 'Oceania'),
(164, 3, 'Central Asia', 'You got your first sale in Central Asia', 'Central Asia'),
(165, 3, 'Middle East', 'You got your first sale in Middle East', 'Middle East'),
(166, 3, 'Eastern Asia', 'You got your first sale in Eastern Asia', 'Eastern Asia'),
(167, 3, 'South Eastern Asia', 'You got your first sale in South Eastern Asia', 'South Eastern Asia'),
(168, 3, 'Europe', 'You got your first sale in  Europe!', 'Europe'),
(169, 3, 'Maghreb', 'You got your first sale in Maghreb', 'Maghreb'),
(170, 3, 'Your Team''s Employees', '3 employees accounts added to your shop', 'Your Team''s Employees'),
(171, 3, 'Your Team''s Employees', '5 employees accounts added to your shop', 'Your Team''s Employees'),
(172, 3, 'Your Team''s Employees', '10 employees accounts added to your shop', 'Your Team''s Employees');

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_carrier` (
  `id_carrier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_reference` int(10) unsigned NOT NULL,
  `id_tax_rules_group` int(10) unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `need_range` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `max_width` int(10) DEFAULT '0',
  `max_height` int(10) DEFAULT '0',
  `max_depth` int(10) DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` int(10) DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_carrier`
--

INSERT INTO `ps_carrier` (`id_carrier`, `id_reference`, `id_tax_rules_group`, `name`, `url`, `active`, `deleted`, `shipping_handling`, `range_behavior`, `is_module`, `is_free`, `shipping_external`, `need_range`, `external_module_name`, `shipping_method`, `position`, `max_width`, `max_height`, `max_depth`, `max_weight`, `grade`) VALUES
(1, 1, 0, '0', '', 1, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0.000000', 0),
(2, 2, 0, 'My carrier', '', 1, 0, 1, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 0, '0.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_group`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_group` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_group`
--

INSERT INTO `ps_carrier_group` (`id_carrier`, `id_group`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_lang`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_lang` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `delay` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_lang`
--

INSERT INTO `ps_carrier_lang` (`id_carrier`, `id_shop`, `id_lang`, `delay`) VALUES
(1, 1, 1, 'Pick up in-store'),
(2, 1, 1, 'Delivery next day!'),
(1, 1, 3, 'Pick up in-store'),
(2, 1, 3, 'Delivery next day!');

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_shop`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_shop`
--

INSERT INTO `ps_carrier_shop` (`id_carrier`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_tax_rules_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_tax_rules_group_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_tax_rules_group`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_tax_rules_group_shop`
--

INSERT INTO `ps_carrier_tax_rules_group_shop` (`id_carrier`, `id_tax_rules_group`, `id_shop`) VALUES
(1, 1, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_carrier_zone`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_zone` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_carrier_zone`
--

INSERT INTO `ps_carrier_zone` (`id_carrier`, `id_zone`) VALUES
(1, 1),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart`
--

CREATE TABLE IF NOT EXISTS `ps_cart` (
  `id_cart` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `allow_seperated_package` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_cart`
--

INSERT INTO `ps_cart` (`id_cart`, `id_shop_group`, `id_shop`, `id_carrier`, `delivery_option`, `id_lang`, `id_address_delivery`, `id_address_invoice`, `id_currency`, `id_customer`, `id_guest`, `secure_key`, `recyclable`, `gift`, `gift_message`, `mobile_theme`, `allow_seperated_package`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 2, '', 1, 2, 2, 1, 1, 1, '-1', 1, 0, '', 0, 0, '2014-01-06 22:19:27', '2014-01-06 22:19:27'),
(2, 1, 1, 0, '', 3, 0, 0, 1, 2, 2, '8e7c7d79ee13730288a827797ce8ec24', 0, 0, '', 0, 0, '2014-01-07 16:42:52', '2014-01-16 23:21:01'),
(3, 1, 1, 0, '', 3, 5, 5, 1, 3, 3, '1bd47e72363e2d7ea87cd7860b6ed7e6', 0, 0, '', 0, 0, '2014-01-17 00:04:53', '2014-01-17 01:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_cart_rule`
--

CREATE TABLE IF NOT EXISTS `ps_cart_cart_rule` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart`,`id_cart_rule`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_product`
--

CREATE TABLE IF NOT EXISTS `ps_cart_product` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_product_attribute` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  KEY `cart_product_index` (`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cart_product`
--

INSERT INTO `ps_cart_product` (`id_cart`, `id_product`, `id_address_delivery`, `id_shop`, `id_product_attribute`, `quantity`, `date_add`) VALUES
(1, 5, 0, 1, 11, 1, '0000-00-00 00:00:00'),
(1, 7, 0, 1, 0, 1, '0000-00-00 00:00:00'),
(2, 11, 0, 1, 28, 4, '2014-01-13 22:39:22'),
(3, 14, 5, 1, 43, 1, '2014-01-17 01:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule` (
  `id_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '1',
  `partial_use` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shop_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `reduction_tax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reduction_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `reduction_product` int(10) NOT NULL DEFAULT '0',
  `gift_product` int(10) unsigned NOT NULL DEFAULT '0',
  `gift_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `highlight` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_carrier` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_combination`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_combination` (
  `id_cart_rule_1` int(10) unsigned NOT NULL,
  `id_cart_rule_2` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_country`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_country` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_group`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_group` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_lang`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_lang` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(254) NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_product_rule`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_product_rule` (
  `id_product_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_rule_group` int(10) unsigned NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL,
  PRIMARY KEY (`id_product_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_product_rule_group`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_product_rule_group` (
  `id_product_rule_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_rule_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_product_rule_value`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_product_rule_value` (
  `id_product_rule` int(10) unsigned NOT NULL,
  `id_item` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_rule`,`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_cart_rule_shop`
--

CREATE TABLE IF NOT EXISTS `ps_cart_rule_shop` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_category`
--

CREATE TABLE IF NOT EXISTS `ps_category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nleft` int(10) unsigned NOT NULL DEFAULT '0',
  `nright` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`),
  KEY `nleftright` (`nleft`,`nright`),
  KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  KEY `level_depth` (`level_depth`),
  KEY `nright` (`nright`),
  KEY `nleft` (`nleft`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `ps_category`
--

INSERT INTO `ps_category` (`id_category`, `id_parent`, `id_shop_default`, `level_depth`, `nleft`, `nright`, `active`, `date_add`, `date_upd`, `position`, `is_root_category`) VALUES
(1, 0, 1, 0, 1, 22, 1, '2014-01-06 22:16:49', '2014-01-06 22:16:49', 0, 0),
(2, 1, 1, 1, 2, 21, 1, '2014-01-06 22:16:50', '2014-01-06 22:16:50', 0, 1),
(3, 2, 1, 2, 3, 4, 0, '2014-01-06 22:19:27', '2014-01-09 16:31:16', 1, 0),
(4, 2, 1, 2, 5, 6, 0, '2014-01-06 22:19:28', '2014-01-09 16:31:19', 2, 0),
(5, 2, 1, 2, 7, 8, 0, '2014-01-06 22:19:29', '2014-01-09 16:31:13', 3, 0),
(6, 2, 1, 2, 9, 14, 1, '2014-01-09 16:32:07', '2014-01-09 16:32:07', 0, 0),
(7, 6, 1, 3, 10, 11, 1, '2014-01-09 16:32:35', '2014-01-09 23:08:55', 1, 0),
(8, 6, 1, 3, 12, 13, 1, '2014-01-09 16:33:06', '2014-01-09 16:33:06', 0, 0),
(9, 2, 1, 2, 15, 18, 1, '2014-01-09 16:33:54', '2014-01-09 16:33:54', 0, 0),
(10, 9, 1, 3, 16, 17, 1, '2014-01-09 16:34:19', '2014-01-09 16:34:19', 0, 0),
(11, 2, 1, 2, 19, 20, 1, '2014-01-09 16:34:57', '2014-01-09 16:34:57', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_group`
--

CREATE TABLE IF NOT EXISTS `ps_category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_category_group`
--

INSERT INTO `ps_category_group` (`id_category`, `id_group`) VALUES
(1, 0),
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_lang`
--

CREATE TABLE IF NOT EXISTS `ps_category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_category_lang`
--

INSERT INTO `ps_category_lang` (`id_category`, `id_shop`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'Root', '', 'root', '', '', ''),
(1, 1, 3, 'Root', '', 'root', '', '', ''),
(2, 1, 1, 'Home', '', 'home', '', '', ''),
(2, 1, 3, 'Home', '', 'home', '', '', ''),
(3, 1, 1, 'iPods', 'Now that you can buy movies from the iTunes Store and sync them to your iPod, the whole world is your theater.', 'music-ipods', '', '', ''),
(3, 1, 3, 'iPods', '', 'music-ipods', '', '', ''),
(4, 1, 1, 'Accessories', 'Wonderful accessories for your iPod', 'accessories-ipod', '', '', ''),
(4, 1, 3, 'Accessories', '', 'accessories-ipod', '', '', ''),
(5, 1, 1, 'Laptops', 'The latest Intel processor, a bigger hard drive, plenty of memory, and even more new features all fit inside just one liberating inch. The new Mac laptops have the performance, power, and connectivity of a desktop computer. Without the desk part.', 'laptops', 'Apple laptops', 'Apple laptops MacBook Air', 'Powerful and chic Apple laptops'),
(5, 1, 3, 'Laptops', '', 'laptops', '', '', ''),
(6, 1, 1, 'gilrs', '', 'gilrs', '', '', ''),
(6, 1, 3, 'בנות', '', 'gilrs', '', '', ''),
(7, 1, 1, 'dresses', '<p>Here u can find dresses for girls !!!</p>', 'dresses', '', '', ''),
(7, 1, 3, 'שמלות', '', 'dresses', '', '', ''),
(8, 1, 1, 'skirts', '', 'skirts', '', '', ''),
(8, 1, 3, 'חצאיות', '', 'skirts', '', '', ''),
(9, 1, 1, 'boys', '', 'boys', '', '', ''),
(9, 1, 3, 'בנים', '', 'boys', '', '', ''),
(10, 1, 1, 'shirts', '', 'shirts', '', '', ''),
(10, 1, 3, 'חולצות', '', 'shirts', '', '', ''),
(11, 1, 1, 'SALE', '', 'sale', '', '', ''),
(11, 1, 3, 'SALE', '', 'sale', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_product`
--

CREATE TABLE IF NOT EXISTS `ps_category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_category_product`
--

INSERT INTO `ps_category_product` (`id_category`, `id_product`, `position`) VALUES
(2, 1, 0),
(2, 2, 1),
(2, 4, 2),
(2, 5, 3),
(3, 1, 0),
(3, 2, 1),
(3, 5, 2),
(4, 6, 0),
(4, 7, 1),
(5, 3, 0),
(5, 4, 1),
(6, 11, 0),
(6, 13, 1),
(6, 14, 2),
(6, 15, 3),
(6, 16, 4),
(6, 17, 5),
(6, 18, 6),
(6, 19, 7),
(6, 20, 8),
(6, 22, 9),
(7, 11, 0),
(7, 13, 1),
(7, 14, 2),
(7, 15, 3),
(7, 16, 4),
(7, 22, 5),
(8, 17, 0),
(8, 18, 1),
(8, 19, 2),
(8, 20, 3),
(9, 21, 0),
(10, 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_category_shop`
--

CREATE TABLE IF NOT EXISTS `ps_category_shop` (
  `id_category` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_category_shop`
--

INSERT INTO `ps_category_shop` (`id_category`, `id_shop`, `position`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 2),
(5, 1, 3),
(6, 1, 4),
(7, 1, 1),
(8, 1, 2),
(9, 1, 5),
(10, 1, 1),
(11, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms`
--

CREATE TABLE IF NOT EXISTS `ps_cms` (
  `id_cms` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `indexation` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_cms`
--

INSERT INTO `ps_cms` (`id_cms`, `id_cms_category`, `position`, `active`, `indexation`) VALUES
(1, 1, 0, 1, 0),
(2, 1, 1, 1, 0),
(3, 1, 2, 1, 0),
(4, 1, 3, 1, 0),
(5, 1, 4, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_block`
--

CREATE TABLE IF NOT EXISTS `ps_cms_block` (
  `id_cms_block` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) unsigned NOT NULL,
  `location` tinyint(1) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `display_store` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms_block`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_cms_block`
--

INSERT INTO `ps_cms_block` (`id_cms_block`, `id_cms_category`, `location`, `position`, `display_store`) VALUES
(1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_block_lang`
--

CREATE TABLE IF NOT EXISTS `ps_cms_block_lang` (
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_cms_block`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cms_block_lang`
--

INSERT INTO `ps_cms_block_lang` (`id_cms_block`, `id_lang`, `name`) VALUES
(1, 1, 'Information'),
(1, 3, 'Information');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_block_page`
--

CREATE TABLE IF NOT EXISTS `ps_cms_block_page` (
  `id_cms_block_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_cms` int(10) unsigned NOT NULL,
  `is_category` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id_cms_block_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_cms_block_page`
--

INSERT INTO `ps_cms_block_page` (`id_cms_block_page`, `id_cms_block`, `id_cms`, `is_category`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_block_shop`
--

CREATE TABLE IF NOT EXISTS `ps_cms_block_shop` (
  `id_cms_block` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cms_block`,`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_cms_block_shop`
--

INSERT INTO `ps_cms_block_shop` (`id_cms_block`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_category`
--

CREATE TABLE IF NOT EXISTS `ps_cms_category` (
  `id_cms_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_cms_category`
--

INSERT INTO `ps_cms_category` (`id_cms_category`, `id_parent`, `level_depth`, `active`, `date_add`, `date_upd`, `position`) VALUES
(1, 0, 1, 1, '2014-01-06 22:16:50', '2014-01-06 22:16:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_category_lang`
--

CREATE TABLE IF NOT EXISTS `ps_cms_category_lang` (
  `id_cms_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cms_category`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cms_category_lang`
--

INSERT INTO `ps_cms_category_lang` (`id_cms_category`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Home', '', 'home', '', '', ''),
(1, 3, 'Home', '', 'home', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_lang`
--

CREATE TABLE IF NOT EXISTS `ps_cms_lang` (
  `id_cms` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cms_lang`
--

INSERT INTO `ps_cms_lang` (`id_cms`, `id_lang`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `link_rewrite`) VALUES
(1, 1, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(1, 3, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(2, 1, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>&trade; open-source software.</p>', 'legal-notice'),
(2, 3, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>&trade; open-source software.</p>', 'legal-notice'),
(3, 1, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h2>Your terms and conditions of use</h2><h3>Rule 1</h3><p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3><p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3><p>Here is the rule 3 content</p>', 'terms-and-conditions-of-use'),
(3, 3, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h2>Your terms and conditions of use</h2><h3>Rule 1</h3><p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3><p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3><p>Here is the rule 3 content</p>', 'terms-and-conditions-of-use'),
(4, 1, 'About us', 'Learn more about us', 'about us, informations', '<h2>About us</h2>\r\n<h3>Our company</h3><p>Our company</p>\r\n<h3>Our team</h3><p>Our team</p>\r\n<h3>Informations</h3><p>Informations</p>', 'about-us'),
(4, 3, 'About us', 'Learn more about us', 'about us, informations', '<h2>About us</h2>\r\n<h3>Our company</h3><p>Our company</p>\r\n<h3>Our team</h3><p>Our team</p>\r\n<h3>Informations</h3><p>Informations</p>', 'about-us'),
(5, 1, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>', 'secure-payment'),
(5, 3, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>', 'secure-payment');

-- --------------------------------------------------------

--
-- Table structure for table `ps_cms_shop`
--

CREATE TABLE IF NOT EXISTS `ps_cms_shop` (
  `id_cms` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_cms_shop`
--

INSERT INTO `ps_cms_shop` (`id_cms`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_compare`
--

CREATE TABLE IF NOT EXISTS `ps_compare` (
  `id_compare` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_compare`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_compare_product`
--

CREATE TABLE IF NOT EXISTS `ps_compare_product` (
  `id_compare` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_compare`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_condition`
--

CREATE TABLE IF NOT EXISTS `ps_condition` (
  `id_condition` int(11) NOT NULL AUTO_INCREMENT,
  `id_ps_condition` int(11) NOT NULL,
  `type` enum('configuration','install','sql') NOT NULL,
  `request` text,
  `operator` varchar(32) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `result` varchar(64) DEFAULT NULL,
  `calculation_type` enum('hook','time') DEFAULT NULL,
  `calculation_detail` varchar(64) DEFAULT NULL,
  `validated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_condition`,`id_ps_condition`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=114 ;

--
-- Dumping data for table `ps_condition`
--

INSERT INTO `ps_condition` (`id_condition`, `id_ps_condition`, `type`, `request`, `operator`, `value`, `result`, `calculation_type`, `calculation_detail`, `validated`, `date_add`, `date_upd`) VALUES
(1, 19, 'install', '', '>', '0', '1', 'time', '1', 1, '2014-01-06 22:52:03', '2014-01-06 22:52:34'),
(2, 40, 'install', '', '>=', '730', '', 'time', '2', 0, '2014-01-06 22:52:03', '2014-01-15 00:49:39'),
(3, 159, 'install', '', '<=', '90', '1', 'time', '2', 1, '2014-01-06 22:52:03', '2014-01-13 22:52:37'),
(4, 158, 'install', '', '>=', '90', '', 'time', '2', 0, '2014-01-06 22:52:03', '2014-01-15 00:49:39'),
(5, 157, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like ''%neteven%''', '==', '0', '', 'time', '1', 0, '2014-01-06 22:52:03', '2014-01-05 22:52:03'),
(6, 156, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like ''%neteven%''', '>=', '1', '', 'hook', 'actionModuleInstallAfter', 0, '2014-01-06 22:52:03', '2014-01-05 22:52:03'),
(7, 154, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like ''%stripejs%'' ', '==', '0', '', 'time', '1', 0, '2014-01-06 22:52:03', '2014-01-05 22:52:03'),
(8, 144, 'sql', 'SELECT COUNT( id_module ) FROM PREFIX_module WHERE `name` like ''%stripejs%'' ', '>=', '1', '', 'hook', 'actionModuleInstallAfter', 0, '2014-01-06 22:52:03', '2014-01-05 22:52:03'),
(9, 1, 'configuration', 'PS_REWRITING_SETTINGS', '==', '1', '', 'hook', 'actionAdminMetaControllerUpdate_optionsAfter', 0, '2014-01-06 22:52:04', '2014-01-06 22:52:19'),
(10, 2, 'configuration', 'PS_SMARTY_FORCE_COMPILE', '!=', '2', '1', 'hook', 'actionAdminPerformanceControllerSaveAfter', 1, '2014-01-06 22:52:04', '2014-01-06 22:52:19'),
(11, 3, 'configuration', 'PS_CSS_THEME_CACHE', '==', '1', '', 'hook', 'actionAdminPerformanceControllerSaveAfter', 0, '2014-01-06 22:52:04', '2014-01-07 17:51:12'),
(12, 4, 'configuration', 'PS_CIPHER_ALGORITHM', '==', '1', '1', 'hook', 'actionAdminPerformanceControllerSaveAfter', 1, '2014-01-06 22:52:04', '2014-01-06 22:52:20'),
(13, 5, 'configuration', 'PS_MEDIA_SERVERS', '==', '1', '', 'hook', 'actionAdminPerformanceControllerSaveAfter', 0, '2014-01-06 22:52:04', '2014-01-06 22:52:21'),
(14, 6, 'sql', 'SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = "displayPayment" OR h.name = "payment") AND m.name NOT IN ("bankwire", "cheque", "cashondelivery")', '>', '0', '0', 'hook', 'actionModuleInstallAfter', 0, '2014-01-06 22:52:04', '2014-01-07 15:45:13'),
(15, 7, 'sql', 'SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = "displayPayment" OR h.name = "payment") AND m.name NOT IN ("bankwire", "cheque", "cashondelivery")', '>', '1', '0', 'hook', 'actionModuleInstallAfter', 0, '2014-01-06 22:52:05', '2014-01-06 22:52:21'),
(16, 8, 'sql', 'SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN ("0", "My carrier")', '>', '0', '0', 'hook', 'actionObjectCarrierAddAfter', 0, '2014-01-06 22:52:05', '2014-01-06 22:52:21'),
(17, 9, 'sql', 'SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN ("0", "My carrier")', '>', '1', '0', 'hook', 'actionObjectCarrierAddAfter', 0, '2014-01-06 22:52:05', '2014-01-06 22:52:22'),
(18, 10, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '0', '1', 'hook', 'actionObjectProductAddAfter', 1, '2014-01-06 22:52:05', '2014-01-09 16:25:23'),
(19, 11, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '9', '6', 'hook', 'actionObjectProductAddAfter', 0, '2014-01-06 22:52:05', '2014-01-13 22:51:54'),
(20, 16, 'configuration', 'PS_SHOP_PHONE', '!=', '0', '', 'hook', 'actionAdminStoresControllerUpdate_optionsAfter', 0, '2014-01-06 22:52:05', '2014-01-05 22:52:05'),
(21, 17, 'sql', 'SELECT COUNT(*) FROM PREFIX_contact', '>', '2', '2', 'hook', 'actionObjectContactAddAfter', 0, '2014-01-06 22:52:05', '2014-01-06 22:52:22'),
(22, 18, 'sql', 'SELECT COUNT(*) FROM PREFIX_contact', '>', '4', '2', 'hook', 'actionObjectContactAddAfter', 0, '2014-01-06 22:52:06', '2014-01-06 22:52:22'),
(23, 12, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '99', '0', 'hook', 'actionObjectProductAddAfter', 0, '2014-01-06 22:52:06', '2014-01-06 22:52:23'),
(24, 13, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '999', '11', 'hook', 'actionObjectProductAddAfter', 0, '2014-01-06 22:52:06', '2014-01-15 17:02:10'),
(25, 14, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '9999', '', 'hook', 'actionObjectProductAddAfter', 0, '2014-01-06 22:52:06', '2014-01-05 22:52:06'),
(26, 15, 'sql', 'SELECT COUNT(*) FROM PREFIX_product WHERE reference NOT LIKE "demo_%"', '>', '99999', '', 'hook', 'actionObjectProductAddAfter', 0, '2014-01-06 22:52:06', '2014-01-05 22:52:06'),
(27, 20, 'install', '', '>=', '7', '1', 'time', '1', 1, '2014-01-06 22:52:06', '2014-01-13 22:52:36'),
(28, 21, 'configuration', 'PS_LOGO', '!=', 'logo.jpg', '', 'hook', 'actionAdminThemesControllerUpdate_optionsAfter', 0, '2014-01-06 22:52:06', '2014-01-08 17:59:29'),
(29, 22, 'sql', 'SELECT COUNT(*) FROM PREFIX_theme WHERE directory != "default" AND directory != "prestashop" AND directory ! "default-bootstrap"', '>', '0', '', 'hook', 'actionObjectThemeAddAfter', 0, '2014-01-06 22:52:06', '2014-01-05 22:52:06'),
(30, 23, 'configuration', 'PS_LOGGED_ON_ADDONS', '==', '1', '', 'time', '1', 0, '2014-01-06 22:52:06', '2014-01-17 00:01:00'),
(31, 24, 'configuration', 'PS_MULTISHOP_FEATURE_ACTIVE', '==', '1', '', 'hook', 'actionAdminPreferencesControllerUpdate_optionsAfter', 0, '2014-01-06 22:52:07', '2014-01-05 22:52:07'),
(32, 25, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop', '>', '1', '', 'hook', 'actionObjectShopAddAfter', 0, '2014-01-06 22:52:07', '2014-01-05 22:52:07'),
(33, 28, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop_group', '>', '1', '', 'hook', 'actionObjectShopGroupAddAfter', 0, '2014-01-06 22:52:07', '2014-01-05 22:52:07'),
(34, 26, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop', '>', '4', '', 'hook', 'actionObjectShopAddAfter', 0, '2014-01-06 22:52:07', '2014-01-05 22:52:07'),
(35, 27, 'sql', 'SELECT COUNT(*) FROM PREFIX_shop_group', '>', '5', '', 'hook', 'actionObjectShopGroupAddAfter 	', 0, '2014-01-06 22:52:07', '2014-01-05 22:52:07'),
(36, 30, 'sql', 'SELECT COUNT(*) FROM PREFIX_carrier WHERE name NOT IN ("0", "My carrier")', '>', '2', '', 'hook', 'actionObjectCarrierAddAfter', 0, '2014-01-06 22:52:07', '2014-01-05 22:52:07'),
(37, 29, 'sql', 'SELECT COUNT(distinct m.id_module) FROM PREFIX_hook h LEFT JOIN PREFIX_hook_module hm ON h.id_hook = hm.id_hook LEFT JOIN PREFIX_module m ON hm.id_module = m.id_module\r\nWHERE (h.name = "displayPayment" OR h.name = "payment") AND m.name NOT IN ("bankwire", "cheque", "cashondelivery")', '>', '2', '', 'hook', 'actionModuleInstallAfter', 0, '2014-01-06 22:52:07', '2014-01-05 22:52:07'),
(38, 31, 'sql', 'SELECT SUM(total_paid_tax_excl / c.conversion_rate)\r\nFROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != "XKBKNABJK"', '>=', '200', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:08', '2014-01-05 22:52:08'),
(39, 32, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != "XKBKNABJK"', '>=', '2000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:08', '2014-01-05 22:52:08'),
(40, 33, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1 AND reference != "XKBKNABJK"', '>=', '20000', '', 'time', '1', 0, '2014-01-06 22:52:08', '2014-01-05 22:52:08'),
(41, 34, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1', '>=', '200000', '', 'time', '7', 0, '2014-01-06 22:52:08', '2013-12-30 22:52:08'),
(42, 35, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1', '>=', '2000000', '', 'time', '7', 0, '2014-01-06 22:52:08', '2013-12-30 22:52:08'),
(43, 36, 'sql', ' 	SELECT SUM(total_paid_tax_excl / c.conversion_rate) FROM PREFIX_orders o INNER JOIN PREFIX_currency c ON c.id_currency = o.id_currency WHERE valid = 1', '>=', '20000000', '', 'time', '7', 0, '2014-01-06 22:52:08', '2013-12-30 22:52:08'),
(44, 37, 'install', '', '>=', '30', '', 'time', '1', 0, '2014-01-06 22:52:08', '2014-01-05 22:52:08'),
(45, 38, 'install', '', '>=', '182', '', 'time', '2', 0, '2014-01-06 22:52:08', '2014-01-15 23:02:29'),
(46, 39, 'install', '', '>=', '365', '', 'time', '2', 0, '2014-01-06 22:52:08', '2014-01-04 22:52:08'),
(47, 41, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '10', '2', 'time', '1', 0, '2014-01-06 22:52:08', '2014-01-13 15:17:28'),
(48, 42, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '100', '3', 'time', '1', 0, '2014-01-06 22:52:08', '2014-01-17 00:01:00'),
(49, 43, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '1000', '', 'time', '1', 0, '2014-01-06 22:52:08', '2014-01-05 22:52:08'),
(50, 44, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '10000', '', 'time', '2', 0, '2014-01-06 22:52:08', '2014-01-04 22:52:08'),
(51, 45, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '100000', '', 'time', '3', 0, '2014-01-06 22:52:08', '2014-01-03 22:52:08'),
(52, 46, 'sql', 'SELECT COUNT(*) FROM PREFIX_guest', '>=', '1000000', '', 'time', '4', 0, '2014-01-06 22:52:09', '2014-01-02 22:52:09'),
(53, 47, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '2', '2', 'hook', 'actionObjectCartAddAfter', 1, '2014-01-06 22:52:09', '2014-01-07 16:42:52'),
(54, 48, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '10', '', 'hook', 'actionObjectCartAddAfter', 0, '2014-01-06 22:52:09', '2014-01-05 22:52:09'),
(55, 49, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '100', '', 'hook', 'actionObjectCartAddAfter', 0, '2014-01-06 22:52:09', '2014-01-05 22:52:09'),
(56, 50, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '1000', '', 'time', '1', 0, '2014-01-06 22:52:09', '2014-01-05 22:52:09'),
(57, 51, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '10000', '', 'time', '4', 0, '2014-01-06 22:52:09', '2014-01-02 22:52:09'),
(58, 52, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart', '>=', '100000', '', 'time', '8', 0, '2014-01-06 22:52:09', '2013-12-29 22:52:09'),
(59, 53, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '1', '', 'hook', 'actionObjectOrderAddAfter', 0, '2014-01-06 22:52:09', '2014-01-05 22:52:09'),
(60, 54, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '10', '', 'hook', 'actionObjectOrderAddAfter', 0, '2014-01-06 22:52:09', '2014-01-05 22:52:09'),
(61, 55, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '100', '', 'hook', 'actionObjectOrderAddAfter', 0, '2014-01-06 22:52:10', '2014-01-05 22:52:10'),
(62, 56, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '1000', '', 'time', '2', 0, '2014-01-06 22:52:10', '2014-01-04 22:52:10'),
(63, 57, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '10000', '', 'time', '4', 0, '2014-01-06 22:52:10', '2014-01-02 22:52:10'),
(64, 58, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders WHERE reference != "XKBKNABJK"', '>=', '100000', '', 'time', '8', 0, '2014-01-06 22:52:10', '2013-12-29 22:52:10'),
(65, 65, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '1', '', 'hook', 'actionObjectCustomerThreadAddAfter', 0, '2014-01-06 22:52:10', '2014-01-05 22:52:10'),
(66, 66, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '10', '', 'hook', 'actionObjectCustomerThreadAddAfter', 0, '2014-01-06 22:52:10', '2014-01-05 22:52:10'),
(67, 67, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '100', '', 'hook', 'actionObjectCustomerThreadAddAfter', 0, '2014-01-06 22:52:10', '2014-01-05 22:52:10'),
(68, 68, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '1000', '', 'time', '2', 0, '2014-01-06 22:52:11', '2014-01-04 22:52:11'),
(69, 69, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '10000', '', 'time', '4', 0, '2014-01-06 22:52:11', '2014-01-02 22:52:11'),
(70, 70, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer_thread', '>=', '100000', '', 'time', '8', 0, '2014-01-06 22:52:11', '2013-12-29 22:52:11'),
(71, 59, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '1', '1', 'hook', 'actionObjectCustomerAddAfter', 1, '2014-01-06 22:52:11', '2014-01-16 23:20:05'),
(72, 60, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '10', '2', 'hook', 'actionObjectCustomerAddAfter', 0, '2014-01-06 22:52:11', '2014-01-16 23:49:34'),
(73, 61, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '100', '', 'hook', 'actionObjectCustomerAddAfter', 0, '2014-01-06 22:52:11', '2014-01-05 22:52:11'),
(74, 62, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '1000', '', 'time', '1', 0, '2014-01-06 22:52:12', '2014-01-05 22:52:12'),
(75, 63, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '10000', '', 'time', '2', 0, '2014-01-06 22:52:12', '2014-01-04 22:52:12'),
(76, 64, 'sql', 'SELECT COUNT(*) FROM PREFIX_customer WHERE email != "pub@prestashop.com"', '>=', '100000', '', 'time', '4', 0, '2014-01-06 22:52:12', '2014-01-02 22:52:12'),
(77, 76, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"CA",\r\n"GL",\r\n"PM",\r\n"US"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:12', '2014-01-05 22:52:12'),
(78, 79, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"UM",\r\n"AS",\r\n"AU",\r\n"CK",\r\n"FJ",\r\n"FM",\r\n"GU",\r\n"KI",\r\n"MH,"\r\n"MP",\r\n"NC",\r\n"NF",\r\n"NR",\r\n"NU",\r\n"NZ",\r\n"PF",\r\n"PG",\r\n"PN",\r\n"PW",\r\n"SB",\r\n"TK",\r\n"TO",\r\n"TV",\r\n"VU",\r\n"WF",\r\n"WS"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:12', '2014-01-05 22:52:12'),
(79, 85, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"KG",\r\n"KZ",\r\n"TJ",\r\n"TM",\r\n"UZ",\r\n"AE",\r\n"AM",\r\n"AZ",\r\n"BH",\r\n"CY",\r\n"GE",\r\n"IL",\r\n"IQ",\r\n"IR",\r\n"JO",\r\n"KW",\r\n"LB",\r\n"OM",\r\n"QA",\r\n"SA",\r\n"SY",\r\n"TR",\r\n"YE",\r\n"AF",\r\n"BD",\r\n"BT",\r\n"IN",\r\n"IO",\r\n"LK",\r\n"MV",\r\n"NP",\r\n"PK",\r\n"CN",\r\n"HK",\r\n"JP",\r\n"KP",\r\n"KR",\r\n"MO",\r\n"TW",\r\n"MN",\r\n"BN",\r\n"CC",\r\n"CX",\r\n"ID",\r\n"KH",\r\n"LA",\r\n"MM",\r\n"MY",\r\n"PH",\r\n"SG",\r\n"TH",\r\n"TP",\r\n"VN"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:12', '2014-01-05 22:52:12'),
(80, 86, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BZ",\r\n"CR",\r\n"GT",\r\n"HN",\r\n"MX",\r\n"NI",\r\n"PA",\r\n"SV",\r\n"AG",\r\n"AI",\r\n"AN",\r\n"AW",\r\n"BB",\r\n"BM",\r\n"BS",\r\n"CU",\r\n"DM",\r\n"DO",\r\n"GD",\r\n"GP",\r\n"HT",\r\n"JM",\r\n"KN",\r\n"KY",\r\n"LC",\r\n"MQ",\r\n"MS",\r\n"PR",\r\n"TC",\r\n"TT",\r\n"VC",\r\n"VG",\r\n"VI",\r\n"AR",\r\n"BO",\r\n"BR",\r\n"CL",\r\n"CO",\r\n"EC",\r\n"FK",\r\n"GF",\r\n"GY",\r\n"PE",\r\n"PY",\r\n"SR",\r\n"UY",\r\n"VE"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:12', '2014-01-05 22:52:12'),
(81, 87, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BE",\r\n"DE",\r\n"FR",\r\n"FX",\r\n"GB",\r\n"IE",\r\n"LU",\r\n"MC",\r\n"NL",\r\n"IT",\r\n"MT",\r\n"SM",\r\n"VA",\r\n"AD",\r\n"ES",\r\n"GI",\r\n"PT",\r\n"BY",\r\n"EE",\r\n"LT",\r\n"LV",\r\n"MD",\r\n"PL",\r\n"UA",\r\n"AL",\r\n"BA",\r\n"BG",\r\n"GR",\r\n"HR",\r\n"MK",\r\n"RO",\r\n"SI",\r\n"YU",\r\n"RU",\r\n"AT",\r\n"CH",\r\n"CZ",\r\n"HU",\r\n"LI",\r\n"SK",\r\n"DK",\r\n"FI",\r\n"FO",\r\n"IS",\r\n"NO",\r\n"SE",\r\n"SJ"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:12', '2014-01-05 22:52:12'),
(82, 88, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BI",\r\n"CF",\r\n"CG",\r\n"RW",\r\n"TD",\r\n"ZR",\r\n"DJ",\r\n"ER",\r\n"ET",\r\n"KE",\r\n"SO",\r\n"TZ",\r\n"UG",\r\n"KM",\r\n"MG",\r\n"MU",\r\n"RE",\r\n"SC",\r\n"YT",\r\n"AO",\r\n"BW",\r\n"LS",\r\n"MW",\r\n"MZ",\r\n"NA",\r\n"SZ",\r\n"ZA",\r\n"ZM",\r\n"ZW",\r\n"BF",\r\n"BJ",\r\n"CI",\r\n"CM",\r\n"CV",\r\n"GA",\r\n"GH",\r\n"GM",\r\n"GN",\r\n"GQ",\r\n"GW",\r\n"LR",\r\n"ML",\r\n"MR",\r\n"NE",\r\n"NG",\r\n"SL",\r\n"SN",\r\n"ST",\r\n"TG"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:12', '2014-01-05 22:52:12'),
(83, 89, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"DZ",\r\n"EG",\r\n"EH",\r\n"LY",\r\n"MA",\r\n"SD",\r\n"TN"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:12', '2014-01-05 22:52:12'),
(84, 90, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '2', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-01-06 22:52:13', '2014-01-05 22:52:13'),
(85, 91, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '3', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-01-06 22:52:13', '2014-01-05 22:52:13'),
(86, 92, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '5', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-01-06 22:52:13', '2014-01-05 22:52:13'),
(87, 93, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '10', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-01-06 22:52:13', '2014-01-05 22:52:13'),
(88, 94, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '20', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-01-06 22:52:13', '2014-01-05 22:52:13'),
(89, 95, 'sql', 'SELECT COUNT(*) FROM PREFIX_employee', '>=', '40', '', 'hook', 'actionObjectEmployeeAddAfter', 0, '2014-01-06 22:52:13', '2014-01-05 22:52:13'),
(90, 96, 'sql', 'SELECT id_image FROM PREFIX_image WHERE id_image > 26', '>', '0', '30', 'hook', 'actionObjectImageAddAfter', 1, '2014-01-06 22:52:13', '2014-01-13 22:54:34'),
(91, 97, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '50', '43', 'hook', 'actionObjectImageAddAfter', 0, '2014-01-06 22:52:13', '2014-01-15 17:03:17'),
(92, 98, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '100', '', 'hook', 'actionObjectImageAddAfter', 0, '2014-01-06 22:52:13', '2014-01-05 22:52:13'),
(93, 99, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '1000', '', 'time', '2', 0, '2014-01-06 22:52:13', '2014-01-04 22:52:13'),
(94, 100, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '10000', '', 'time', '4', 0, '2014-01-06 22:52:14', '2014-01-02 22:52:14'),
(95, 101, 'sql', 'SELECT COUNT(*) FROM PREFIX_image', '>=', '50000', '', 'time', '8', 0, '2014-01-06 22:52:14', '2013-12-29 22:52:14'),
(96, 102, 'sql', 'SELECT id_cms FROM PREFIX_cms WHERE id_cms > 5', '>', '0', '', 'hook', 'actionObjectCMSAddAfter', 0, '2014-01-06 22:52:14', '2014-01-05 22:52:14'),
(97, 103, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '1', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-01-06 22:52:14', '2014-01-05 22:52:14'),
(98, 104, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '10', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-01-06 22:52:14', '2014-01-05 22:52:14'),
(99, 105, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '100', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-01-06 22:52:14', '2014-01-05 22:52:14'),
(100, 107, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '500', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-01-06 22:52:14', '2014-01-05 22:52:14'),
(101, 106, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '1000', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-01-06 22:52:15', '2014-01-05 22:52:15'),
(102, 108, 'sql', 'SELECT COUNT(*) FROM PREFIX_cart_rule', '>=', '5000', '', 'hook', 'actionObjectCartRuleAddAfter 	', 0, '2014-01-06 22:52:15', '2014-01-05 22:52:15'),
(103, 109, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '1', '', 'hook', 'newOrder', 0, '2014-01-06 22:52:15', '2014-01-05 22:52:15'),
(104, 110, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '10', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:15', '2014-01-05 22:52:15'),
(105, 111, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '100', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:15', '2014-01-05 22:52:15'),
(106, 113, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '1000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:15', '2014-01-05 22:52:15'),
(107, 114, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '5000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:15', '2014-01-05 22:52:15'),
(108, 112, 'sql', 'SELECT COUNT(*) FROM PREFIX_orders o INNER JOIN PREFIX_address a ON a.id_address = o.id_address_delivery\r\nWHERE reference != "XKBKNABJK" AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}"', '>=', '10000', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-06 22:52:15', '2014-01-05 22:52:15'),
(109, 80, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"KG",\r\n"KZ",\r\n"TJ",\r\n"TM",\r\n"UZ"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-15 22:47:14', '2014-01-14 22:47:14'),
(110, 81, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"AE",\r\n"AM",\r\n"AZ",\r\n"BH",\r\n"CY",\r\n"GE",\r\n"IL",\r\n"IQ",\r\n"IR",\r\n"JO",\r\n"KW",\r\n"LB",\r\n"OM",\r\n"QA",\r\n"SA",\r\n"SY",\r\n"TR",\r\n"YE"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-15 22:47:14', '2014-01-14 22:47:14'),
(111, 82, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"AF",\r\n"BD",\r\n"BT",\r\n"IN",\r\n"IO",\r\n"LK",\r\n"MV",\r\n"NP",\r\n"PK"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-15 22:47:14', '2014-01-14 22:47:14'),
(112, 83, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"CN",\r\n"HK",\r\n"JP",\r\n"KP",\r\n"KR",\r\n"MO",\r\n"TW",\r\n"MN"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-15 22:47:14', '2014-01-14 22:47:14'),
(113, 84, 'sql', 'SELECT IFNULL(id_order, 0) FROM PREFIX_orders o LEFT JOIN PREFIX_address a ON o.id_address_delivery = a.id_address LEFT JOIN PREFIX_country c ON c.id_country = a.id_country WHERE o.valid = 1 AND a.id_country != "{config}PS_COUNTRY_DEFAULT{/config}" AND c.iso_code IN (\r\n"BN",\r\n"CC",\r\n"CX",\r\n"ID",\r\n"KH",\r\n"LA",\r\n"MM",\r\n"MY",\r\n"PH",\r\n"SG",\r\n"TH",\r\n"TP",\r\n"VN"\r\n)', '!=', '0', '', 'hook', 'actionOrderStatusUpdate', 0, '2014-01-15 22:47:14', '2014-01-14 22:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `ps_condition_advice`
--

CREATE TABLE IF NOT EXISTS `ps_condition_advice` (
  `id_condition` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_condition`,`id_advice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_condition_advice`
--

INSERT INTO `ps_condition_advice` (`id_condition`, `id_advice`, `display`) VALUES
(1, 1, 1),
(2, 1, 0),
(2, 3, 0),
(3, 2, 1),
(4, 2, 0),
(4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_condition_badge`
--

CREATE TABLE IF NOT EXISTS `ps_condition_badge` (
  `id_condition` int(11) NOT NULL,
  `id_badge` int(11) NOT NULL,
  PRIMARY KEY (`id_condition`,`id_badge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_condition_badge`
--

INSERT INTO `ps_condition_badge` (`id_condition`, `id_badge`) VALUES
(1, 17),
(1, 134),
(2, 38),
(2, 65),
(9, 1),
(9, 124),
(10, 2),
(10, 47),
(11, 2),
(11, 47),
(12, 2),
(12, 47),
(13, 3),
(13, 125),
(14, 4),
(14, 48),
(15, 5),
(15, 126),
(16, 6),
(16, 49),
(16, 127),
(17, 7),
(17, 128),
(18, 8),
(18, 50),
(19, 9),
(19, 129),
(20, 10),
(20, 51),
(20, 130),
(21, 11),
(21, 131),
(22, 12),
(22, 52),
(23, 13),
(23, 132),
(24, 14),
(24, 53),
(25, 15),
(25, 133),
(26, 16),
(26, 54),
(27, 18),
(27, 55),
(27, 135),
(28, 19),
(28, 136),
(29, 20),
(29, 56),
(30, 21),
(30, 137),
(31, 22),
(31, 57),
(32, 23),
(32, 138),
(33, 24),
(33, 58),
(34, 25),
(34, 139),
(35, 26),
(35, 59),
(35, 140),
(36, 27),
(36, 141),
(37, 28),
(37, 60),
(38, 29),
(38, 142),
(39, 30),
(39, 61),
(39, 143),
(40, 31),
(40, 144),
(41, 32),
(41, 62),
(42, 33),
(42, 145),
(43, 34),
(43, 63),
(43, 146),
(44, 35),
(44, 147),
(45, 36),
(45, 64),
(46, 37),
(46, 148),
(47, 39),
(47, 149),
(48, 40),
(48, 66),
(49, 41),
(49, 150),
(50, 42),
(50, 67),
(50, 151),
(51, 43),
(51, 152),
(52, 44),
(52, 68),
(53, 45),
(53, 153),
(54, 69),
(54, 154),
(55, 70),
(56, 71),
(56, 155),
(57, 72),
(58, 73),
(59, 74),
(60, 75),
(60, 156),
(61, 76),
(62, 77),
(63, 78),
(64, 79),
(64, 157),
(65, 80),
(66, 81),
(67, 82),
(68, 83),
(68, 158),
(69, 84),
(70, 85),
(70, 159),
(71, 86),
(72, 87),
(72, 160),
(73, 88),
(74, 89),
(75, 90),
(76, 91),
(76, 161),
(77, 92),
(77, 162),
(78, 93),
(78, 163),
(79, 94),
(80, 95),
(81, 96),
(81, 168),
(82, 97),
(83, 98),
(83, 169),
(84, 99),
(85, 100),
(85, 170),
(86, 101),
(86, 171),
(87, 102),
(87, 172),
(88, 103),
(89, 104),
(90, 105),
(91, 106),
(92, 107),
(93, 108),
(94, 109),
(95, 110),
(96, 111),
(97, 112),
(98, 113),
(99, 114),
(100, 115),
(101, 116),
(102, 117),
(103, 118),
(104, 119),
(105, 120),
(106, 121),
(107, 122),
(108, 123),
(109, 164),
(110, 165),
(112, 166),
(113, 167);

-- --------------------------------------------------------

--
-- Table structure for table `ps_configuration`
--

CREATE TABLE IF NOT EXISTS `ps_configuration` (
  `id_configuration` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned DEFAULT NULL,
  `id_shop` int(11) unsigned DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=743 ;

--
-- Dumping data for table `ps_configuration`
--

INSERT INTO `ps_configuration` (`id_configuration`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, NULL, NULL, 'PS_LANG_DEFAULT', '3', '2014-01-06 22:16:25', '2014-01-15 22:47:11'),
(2, NULL, NULL, 'PS_CARRIER_DEFAULT', '1', '2014-01-06 22:16:48', '2014-01-06 22:16:48'),
(3, NULL, NULL, 'PS_GROUP_FEATURE_ACTIVE', '1', '2014-01-06 22:16:48', '2014-01-06 22:16:48'),
(4, NULL, NULL, 'PS_SEARCH_INDEXATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, NULL, NULL, 'PS_ONE_PHONE_AT_LEAST', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, NULL, NULL, 'PS_CURRENCY_DEFAULT', '1', '0000-00-00 00:00:00', '2014-01-06 22:18:25'),
(7, NULL, NULL, 'PS_COUNTRY_DEFAULT', '29', '0000-00-00 00:00:00', '2014-01-15 22:47:11'),
(8, NULL, NULL, 'PS_REWRITING_SETTINGS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, NULL, NULL, 'PS_ORDER_OUT_OF_STOCK', '0', '0000-00-00 00:00:00', '2014-01-12 15:56:40'),
(10, NULL, NULL, 'PS_LAST_QTIES', '3', '0000-00-00 00:00:00', '2014-01-12 15:56:40'),
(11, NULL, NULL, 'PS_CART_REDIRECT', '1', '0000-00-00 00:00:00', '2014-01-12 15:56:39'),
(12, NULL, NULL, 'PS_HELPBOX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, NULL, NULL, 'PS_CONDITIONS', '1', '0000-00-00 00:00:00', '2014-01-09 23:43:22'),
(14, NULL, NULL, 'PS_RECYCLABLE_PACK', '0', '0000-00-00 00:00:00', '2014-01-09 23:43:23'),
(15, NULL, NULL, 'PS_GIFT_WRAPPING', '0', '0000-00-00 00:00:00', '2014-01-09 23:43:22'),
(16, NULL, NULL, 'PS_GIFT_WRAPPING_PRICE', '0', '0000-00-00 00:00:00', '2014-01-09 23:43:22'),
(17, NULL, NULL, 'PS_STOCK_MANAGEMENT', '1', '0000-00-00 00:00:00', '2014-01-12 15:56:40'),
(18, NULL, NULL, 'PS_NAVIGATION_PIPE', '>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, NULL, NULL, 'PS_PRODUCTS_PER_PAGE', '10', '0000-00-00 00:00:00', '2014-01-12 15:56:40'),
(20, NULL, NULL, 'PS_PURCHASE_MINIMUM', '0', '0000-00-00 00:00:00', '2014-01-09 23:43:22'),
(21, NULL, NULL, 'PS_PRODUCTS_ORDER_WAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, NULL, NULL, 'PS_PRODUCTS_ORDER_BY', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, NULL, NULL, 'PS_DISPLAY_QTIES', '0', '0000-00-00 00:00:00', '2014-01-12 15:56:40'),
(24, NULL, NULL, 'PS_SHIPPING_HANDLING', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, NULL, NULL, 'PS_SHIPPING_FREE_PRICE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, NULL, NULL, 'PS_SHIPPING_FREE_WEIGHT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, NULL, NULL, 'PS_SHIPPING_METHOD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, NULL, NULL, 'PS_TAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, NULL, NULL, 'PS_SHOP_ENABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, NULL, NULL, 'PS_NB_DAYS_NEW_PRODUCT', '20', '0000-00-00 00:00:00', '2014-01-12 15:56:39'),
(31, NULL, NULL, 'PS_SSL_ENABLED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, NULL, NULL, 'PS_WEIGHT_UNIT', 'kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, NULL, NULL, 'PS_BLOCK_CART_AJAX', '1', '0000-00-00 00:00:00', '2014-01-06 22:18:30'),
(34, NULL, NULL, 'PS_ORDER_RETURN', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, NULL, NULL, 'PS_ORDER_RETURN_NB_DAYS', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, NULL, NULL, 'PS_MAIL_TYPE', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, NULL, NULL, 'PS_PRODUCT_PICTURE_MAX_SIZE', '8388608', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, NULL, NULL, 'PS_PRODUCT_PICTURE_WIDTH', '64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, NULL, NULL, 'PS_PRODUCT_PICTURE_HEIGHT', '64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, NULL, NULL, 'PS_INVOICE_PREFIX', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, NULL, NULL, 'PS_INVOICE_NUMBER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, NULL, NULL, 'PS_DELIVERY_PREFIX', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, NULL, NULL, 'PS_DELIVERY_NUMBER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, NULL, NULL, 'PS_INVOICE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, NULL, NULL, 'PS_PASSWD_TIME_BACK', '360', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, NULL, NULL, 'PS_PASSWD_TIME_FRONT', '360', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, NULL, NULL, 'PS_DISP_UNAVAILABLE_ATTR', '1', '0000-00-00 00:00:00', '2014-01-12 15:56:40'),
(48, NULL, NULL, 'PS_SEARCH_MINWORDLEN', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, NULL, NULL, 'PS_SEARCH_BLACKLIST', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, NULL, NULL, 'PS_SEARCH_WEIGHT_PNAME', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, NULL, NULL, 'PS_SEARCH_WEIGHT_REF', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, NULL, NULL, 'PS_SEARCH_WEIGHT_SHORTDESC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, NULL, NULL, 'PS_SEARCH_WEIGHT_DESC', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, NULL, NULL, 'PS_SEARCH_WEIGHT_CNAME', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, NULL, NULL, 'PS_SEARCH_WEIGHT_MNAME', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, NULL, NULL, 'PS_SEARCH_WEIGHT_TAG', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, NULL, NULL, 'PS_SEARCH_WEIGHT_ATTRIBUTE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, NULL, NULL, 'PS_SEARCH_WEIGHT_FEATURE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, NULL, NULL, 'PS_SEARCH_AJAX', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, NULL, NULL, 'PS_TIMEZONE', 'Asia/Jerusalem', '0000-00-00 00:00:00', '2014-01-06 22:17:10'),
(61, NULL, NULL, 'PS_THEME_V11', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, NULL, NULL, 'PRESTASTORE_LIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, NULL, NULL, 'PS_TIN_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, NULL, NULL, 'PS_SHOW_ALL_MODULES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, NULL, NULL, 'PS_BACKUP_ALL', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, NULL, NULL, 'PS_1_3_UPDATE_DATE', '2011-12-27 10:20:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, NULL, NULL, 'PS_PRICE_ROUND_MODE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, NULL, NULL, 'PS_1_3_2_UPDATE_DATE', '2011-12-27 10:20:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, NULL, NULL, 'PS_CONDITIONS_CMS_ID', '3', '0000-00-00 00:00:00', '2014-01-09 23:43:22'),
(70, NULL, NULL, 'TRACKING_DIRECT_TRAFFIC', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, NULL, NULL, 'PS_META_KEYWORDS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, NULL, NULL, 'PS_DISPLAY_JQZOOM', '0', '0000-00-00 00:00:00', '2014-01-12 15:56:40'),
(73, NULL, NULL, 'PS_VOLUME_UNIT', 'L', '0000-00-00 00:00:00', '2014-01-06 22:17:13'),
(74, NULL, NULL, 'PS_CIPHER_ALGORITHM', '1', '0000-00-00 00:00:00', '2014-01-06 22:17:11'),
(75, NULL, NULL, 'PS_ATTRIBUTE_CATEGORY_DISPLAY', '0', '0000-00-00 00:00:00', '2014-01-12 15:56:40'),
(76, NULL, NULL, 'PS_CUSTOMER_SERVICE_FILE_UPLOAD', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, NULL, NULL, 'PS_CUSTOMER_SERVICE_SIGNATURE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, NULL, NULL, 'PS_BLOCK_BESTSELLERS_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, NULL, NULL, 'PS_BLOCK_NEWPRODUCTS_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, NULL, NULL, 'PS_BLOCK_SPECIALS_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, NULL, NULL, 'PS_STOCK_MVT_REASON_DEFAULT', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, NULL, NULL, 'PS_COMPARATOR_MAX_ITEM', '0', '0000-00-00 00:00:00', '2014-01-12 15:56:39'),
(83, NULL, NULL, 'PS_ORDER_PROCESS_TYPE', '1', '0000-00-00 00:00:00', '2014-01-09 23:43:22'),
(84, NULL, NULL, 'PS_SPECIFIC_PRICE_PRIORITIES', 'id_shop;id_currency;id_country;id_group', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, NULL, NULL, 'PS_TAX_DISPLAY', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, NULL, NULL, 'PS_SMARTY_FORCE_COMPILE', '2', '0000-00-00 00:00:00', '2014-01-07 17:51:12'),
(87, NULL, NULL, 'PS_DISTANCE_UNIT', 'km', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, NULL, NULL, 'PS_STORES_DISPLAY_CMS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, NULL, NULL, 'PS_STORES_DISPLAY_FOOTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, NULL, NULL, 'PS_STORES_SIMPLIFIED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, NULL, NULL, 'SHOP_LOGO_WIDTH', '199', '0000-00-00 00:00:00', '2014-01-13 23:42:40'),
(92, NULL, NULL, 'SHOP_LOGO_HEIGHT', '62', '0000-00-00 00:00:00', '2014-01-13 23:42:40'),
(93, NULL, NULL, 'EDITORIAL_IMAGE_WIDTH', '530', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, NULL, NULL, 'EDITORIAL_IMAGE_HEIGHT', '228', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, NULL, NULL, 'PS_STATSDATA_CUSTOMER_PAGESVIEWS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, NULL, NULL, 'PS_STATSDATA_PAGESVIEWS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, NULL, NULL, 'PS_STATSDATA_PLUGINS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, NULL, NULL, 'PS_GEOLOCATION_ENABLED', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, NULL, NULL, 'PS_ALLOWED_COUNTRIES', 'AF;ZA;AX;AL;DZ;DE;AD;AO;AI;AQ;AG;AN;SA;AR;AM;AW;AU;AT;AZ;BS;BH;BD;BB;BY;BE;BZ;BJ;BM;BT;BO;BA;BW;BV;BR;BN;BG;BF;MM;BI;KY;KH;CM;CA;CV;CF;CL;CN;CX;CY;CC;CO;KM;CG;CD;CK;KR;KP;CR;CI;HR;CU;DK;DJ;DM;EG;IE;SV;AE;EC;ER;ES;EE;ET;FK;FO;FJ;FI;FR;GA;GM;GE;GS;GH;GI;GR;GD;GL;GP;GU;GT;GG;GN;GQ;GW;GY;GF;HT;HM;HN;HK;HU;IM;MU;VG;VI;IN;ID;IR;IQ;IS;IL;IT;JM;JP;JE;JO;KZ;KE;KG;KI;KW;LA;LS;LV;LB;LR;LY;LI;LT;LU;MO;MK;MG;MY;MW;MV;ML;MT;MP;MA;MH;MQ;MR;YT;MX;FM;MD;MC;MN;ME;MS;MZ;NA;NR;NP;NI;NE;NG;NU;NF;NO;NC;NZ;IO;OM;UG;UZ;PK;PW;PS;PA;PG;PY;NL;PE;PH;PN;PL;PF;PR;PT;QA;DO;CZ;RE;RO;GB;RU;RW;EH;BL;KN;SM;MF;PM;VA;VC;LC;SB;WS;AS;ST;SN;RS;SC;SL;SG;SK;SI;SO;SD;LK;SE;CH;SR;SJ;SZ;SY;TJ;TW;TZ;TD;TF;TH;TL;TG;TK;TO;TT;TN;TM;TC;TR;TV;UA;UY;US;VU;VE;VN;WF;YE;ZM;ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, NULL, NULL, 'PS_GEOLOCATION_BEHAVIOR', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, NULL, NULL, 'PS_LOCALE_LANGUAGE', 'en', '0000-00-00 00:00:00', '2014-01-06 22:17:10'),
(102, NULL, NULL, 'PS_LOCALE_COUNTRY', 'il', '0000-00-00 00:00:00', '2014-01-06 22:17:10'),
(103, NULL, NULL, 'PS_ATTACHMENT_MAXIMUM_SIZE', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, NULL, NULL, 'PS_SMARTY_CACHE', '0', '0000-00-00 00:00:00', '2014-01-07 17:51:12'),
(105, NULL, NULL, 'PS_DIMENSION_UNIT', 'cm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, NULL, NULL, 'PS_GUEST_CHECKOUT_ENABLED', '0', '0000-00-00 00:00:00', '2014-01-09 23:43:22'),
(107, NULL, NULL, 'PS_DISPLAY_SUPPLIERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, NULL, NULL, 'PS_CATALOG_MODE', '0', '0000-00-00 00:00:00', '2014-01-12 15:56:39'),
(109, NULL, NULL, 'PS_GEOLOCATION_WHITELIST', '127;209.185.108;209.185.253;209.85.238;209.85.238.11;209.85.238.4;216.239.33.96;216.239.33.97;216.239.33.98;216.239.33.99;216.239.37.98;216.239.37.99;216.239.39.98;216.239.39.99;216.239.41.96;216.239.41.97;216.239.41.98;216.239.41.99;216.239.45.4;216.239.46;216.239.51.96;216.239.51.97;216.239.51.98;216.239.51.99;216.239.53.98;216.239.53.99;216.239.57.96;216.239.57.97;216.239.57.98;216.239.57.99;216.239.59.98;216.239.59.99;216.33.229.163;64.233.173.193;64.233.173.194;64.233.173.195;64.233.173.196;64.233.173.197;64.233.173.198;64.233.173.199;64.233.173.200;64.233.173.201;64.233.173.202;64.233.173.203;64.233.173.204;64.233.173.205;64.233.173.206;64.233.173.207;64.233.173.208;64.233.173.209;64.233.173.210;64.233.173.211;64.233.173.212;64.233.173.213;64.233.173.214;64.233.173.215;64.233.173.216;64.233.173.217;64.233.173.218;64.233.173.219;64.233.173.220;64.233.173.221;64.233.173.222;64.233.173.223;64.233.173.224;64.233.173.225;64.233.173.226;64.233.173.227;64.233.173.228;64.233.173.229;64.233.173.230;64.233.173.231;64.233.173.232;64.233.173.233;64.233.173.234;64.233.173.235;64.233.173.236;64.233.173.237;64.233.173.238;64.233.173.239;64.233.173.240;64.233.173.241;64.233.173.242;64.233.173.243;64.233.173.244;64.233.173.245;64.233.173.246;64.233.173.247;64.233.173.248;64.233.173.249;64.233.173.250;64.233.173.251;64.233.173.252;64.233.173.253;64.233.173.254;64.233.173.255;64.68.80;64.68.81;64.68.82;64.68.83;64.68.84;64.68.85;64.68.86;64.68.87;64.68.88;64.68.89;64.68.90.1;64.68.90.10;64.68.90.11;64.68.90.12;64.68.90.129;64.68.90.13;64.68.90.130;64.68.90.131;64.68.90.132;64.68.90.133;64.68.90.134;64.68.90.135;64.68.90.136;64.68.90.137;64.68.90.138;64.68.90.139;64.68.90.14;64.68.90.140;64.68.90.141;64.68.90.142;64.68.90.143;64.68.90.144;64.68.90.145;64.68.90.146;64.68.90.147;64.68.90.148;64.68.90.149;64.68.90.15;64.68.90.150;64.68.90.151;64.68.90.152;64.68.90.153;64.68.90.154;64.68.90.155;64.68.90.156;64.68.90.157;64.68.90.158;64.68.90.159;64.68.90.16;64.68.90.160;64.68.90.161;64.68.90.162;64.68.90.163;64.68.90.164;64.68.90.165;64.68.90.166;64.68.90.167;64.68.90.168;64.68.90.169;64.68.90.17;64.68.90.170;64.68.90.171;64.68.90.172;64.68.90.173;64.68.90.174;64.68.90.175;64.68.90.176;64.68.90.177;64.68.90.178;64.68.90.179;64.68.90.18;64.68.90.180;64.68.90.181;64.68.90.182;64.68.90.183;64.68.90.184;64.68.90.185;64.68.90.186;64.68.90.187;64.68.90.188;64.68.90.189;64.68.90.19;64.68.90.190;64.68.90.191;64.68.90.192;64.68.90.193;64.68.90.194;64.68.90.195;64.68.90.196;64.68.90.197;64.68.90.198;64.68.90.199;64.68.90.2;64.68.90.20;64.68.90.200;64.68.90.201;64.68.90.202;64.68.90.203;64.68.90.204;64.68.90.205;64.68.90.206;64.68.90.207;64.68.90.208;64.68.90.21;64.68.90.22;64.68.90.23;64.68.90.24;64.68.90.25;64.68.90.26;64.68.90.27;64.68.90.28;64.68.90.29;64.68.90.3;64.68.90.30;64.68.90.31;64.68.90.32;64.68.90.33;64.68.90.34;64.68.90.35;64.68.90.36;64.68.90.37;64.68.90.38;64.68.90.39;64.68.90.4;64.68.90.40;64.68.90.41;64.68.90.42;64.68.90.43;64.68.90.44;64.68.90.45;64.68.90.46;64.68.90.47;64.68.90.48;64.68.90.49;64.68.90.5;64.68.90.50;64.68.90.51;64.68.90.52;64.68.90.53;64.68.90.54;64.68.90.55;64.68.90.56;64.68.90.57;64.68.90.58;64.68.90.59;64.68.90.6;64.68.90.60;64.68.90.61;64.68.90.62;64.68.90.63;64.68.90.64;64.68.90.65;64.68.90.66;64.68.90.67;64.68.90.68;64.68.90.69;64.68.90.7;64.68.90.70;64.68.90.71;64.68.90.72;64.68.90.73;64.68.90.74;64.68.90.75;64.68.90.76;64.68.90.77;64.68.90.78;64.68.90.79;64.68.90.8;64.68.90.80;64.68.90.9;64.68.91;64.68.92;66.249.64;66.249.65;66.249.66;66.249.67;66.249.68;66.249.69;66.249.70;66.249.71;66.249.72;66.249.73;66.249.78;66.249.79;72.14.199;8.6.48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, NULL, NULL, 'PS_LOGS_BY_EMAIL', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, NULL, NULL, 'PS_COOKIE_CHECKIP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, NULL, NULL, 'PS_STORES_CENTER_LAT', '25.948969', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, NULL, NULL, 'PS_STORES_CENTER_LONG', '-80.226439', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, NULL, NULL, 'PS_USE_ECOTAX', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, NULL, NULL, 'PS_CANONICAL_REDIRECT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, NULL, NULL, 'PS_IMG_UPDATE_TIME', '1389649360', '0000-00-00 00:00:00', '2014-01-13 23:42:40'),
(117, NULL, NULL, 'PS_BACKUP_DROP_TABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, NULL, NULL, 'PS_OS_CHEQUE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, NULL, NULL, 'PS_OS_PAYMENT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, NULL, NULL, 'PS_OS_PREPARATION', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, NULL, NULL, 'PS_OS_SHIPPING', '4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, NULL, NULL, 'PS_OS_DELIVERED', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, NULL, NULL, 'PS_OS_CANCELED', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, NULL, NULL, 'PS_OS_REFUND', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, NULL, NULL, 'PS_OS_ERROR', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, NULL, NULL, 'PS_OS_OUTOFSTOCK', '9', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, NULL, NULL, 'PS_OS_BANKWIRE', '10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, NULL, NULL, 'PS_OS_PAYPAL', '11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, NULL, NULL, 'PS_OS_WS_PAYMENT', '12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, NULL, NULL, 'PS_LEGACY_IMAGES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, NULL, NULL, 'PS_IMAGE_QUALITY', 'jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, NULL, NULL, 'PS_PNG_QUALITY', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, NULL, NULL, 'PS_JPEG_QUALITY', '90', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, NULL, NULL, 'PS_COOKIE_LIFETIME_FO', '480', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, NULL, NULL, 'PS_COOKIE_LIFETIME_BO', '480', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, NULL, NULL, 'PS_RESTRICT_DELIVERED_COUNTRIES', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, NULL, NULL, 'PS_SHOW_NEW_ORDERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, NULL, NULL, 'PS_SHOW_NEW_CUSTOMERS', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, NULL, NULL, 'PS_SHOW_NEW_MESSAGES', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, NULL, NULL, 'PS_FEATURE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, NULL, NULL, 'PS_COMBINATION_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, NULL, NULL, 'PS_SPECIFIC_PRICE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '2014-01-13 22:52:35'),
(143, NULL, NULL, 'PS_SCENE_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, NULL, NULL, 'PS_VIRTUAL_PROD_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, NULL, NULL, 'PS_CUSTOMIZATION_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, NULL, NULL, 'PS_CART_RULE_FEATURE_ACTIVE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, NULL, NULL, 'PS_PACK_FEATURE_ACTIVE', NULL, '0000-00-00 00:00:00', '2014-01-15 17:25:34'),
(148, NULL, NULL, 'PS_ALIAS_FEATURE_ACTIVE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, NULL, NULL, 'PS_TAX_ADDRESS_TYPE', 'id_address_delivery', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, NULL, NULL, 'PS_SHOP_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, NULL, NULL, 'PS_CARRIER_DEFAULT_SORT', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, NULL, NULL, 'PS_STOCK_MVT_INC_REASON_DEFAULT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, NULL, NULL, 'PS_STOCK_MVT_DEC_REASON_DEFAULT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, NULL, NULL, 'PS_ADVANCED_STOCK_MANAGEMENT', '0', '0000-00-00 00:00:00', '2014-01-12 15:56:40'),
(155, NULL, NULL, 'PS_ADMINREFRESH_NOTIFICATION', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, NULL, NULL, 'PS_STOCK_MVT_TRANSFER_TO', '7', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, NULL, NULL, 'PS_STOCK_MVT_TRANSFER_FROM', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, NULL, NULL, 'PS_CARRIER_DEFAULT_ORDER', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, NULL, NULL, 'PS_STOCK_MVT_SUPPLY_ORDER', '8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, NULL, NULL, 'PS_STOCK_CUSTOMER_ORDER_REASON', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, NULL, NULL, 'PS_UNIDENTIFIED_GROUP', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, NULL, NULL, 'PS_GUEST_GROUP', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, NULL, NULL, 'PS_CUSTOMER_GROUP', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, NULL, NULL, 'PS_SMARTY_CONSOLE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, NULL, NULL, 'PS_INVOICE_MODEL', 'invoice', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, NULL, NULL, 'PS_LIMIT_UPLOAD_IMAGE_VALUE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, NULL, NULL, 'PS_LIMIT_UPLOAD_FILE_VALUE', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, NULL, NULL, 'MB_PAY_TO_EMAIL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, NULL, NULL, 'MB_SECRET_WORD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, NULL, NULL, 'MB_HIDE_LOGIN', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, NULL, NULL, 'MB_ID_LOGO', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, NULL, NULL, 'MB_ID_LOGO_WALLET', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, NULL, NULL, 'MB_PARAMETERS', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, NULL, NULL, 'MB_PARAMETERS_2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, NULL, NULL, 'MB_DISPLAY_MODE', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, NULL, NULL, 'MB_CANCEL_URL', 'http://www.yoursite.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, NULL, NULL, 'MB_LOCAL_METHODS', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, NULL, NULL, 'MB_INTER_METHODS', '5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, NULL, NULL, 'BANK_WIRE_CURRENCIES', '2,1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, NULL, NULL, 'CHEQUE_CURRENCIES', '2,1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, NULL, NULL, 'PRODUCTS_VIEWED_NBR', '2', '0000-00-00 00:00:00', '2014-01-06 22:18:49'),
(182, NULL, NULL, 'BLOCK_CATEG_DHTML', '1', '0000-00-00 00:00:00', '2014-01-06 22:18:31'),
(183, NULL, NULL, 'BLOCK_CATEG_MAX_DEPTH', '4', '0000-00-00 00:00:00', '2014-01-06 22:18:31'),
(184, NULL, NULL, 'MANUFACTURER_DISPLAY_FORM', '1', '0000-00-00 00:00:00', '2014-01-06 22:18:36'),
(185, NULL, NULL, 'MANUFACTURER_DISPLAY_TEXT', '1', '0000-00-00 00:00:00', '2014-01-06 22:18:36'),
(186, NULL, NULL, 'MANUFACTURER_DISPLAY_TEXT_NB', '5', '0000-00-00 00:00:00', '2014-01-06 22:18:36'),
(187, NULL, NULL, 'NEW_PRODUCTS_NBR', '5', '0000-00-00 00:00:00', '2014-01-06 22:18:38'),
(188, NULL, NULL, 'PS_TOKEN_ENABLE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, NULL, NULL, 'PS_STATS_RENDER', 'graphxmlswfcharts', '0000-00-00 00:00:00', '2014-01-06 22:18:51'),
(190, NULL, NULL, 'PS_STATS_OLD_CONNECT_AUTO_CLEAN', 'never', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, NULL, NULL, 'PS_STATS_GRID_RENDER', 'gridhtml', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, NULL, NULL, 'BLOCKTAGS_NBR', '10', '0000-00-00 00:00:00', '2014-01-06 22:18:46'),
(193, NULL, NULL, 'CHECKUP_DESCRIPTIONS_LT', '100', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, NULL, NULL, 'CHECKUP_DESCRIPTIONS_GT', '400', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, NULL, NULL, 'CHECKUP_IMAGES_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, NULL, NULL, 'CHECKUP_IMAGES_GT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, NULL, NULL, 'CHECKUP_SALES_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, NULL, NULL, 'CHECKUP_SALES_GT', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, NULL, NULL, 'CHECKUP_STOCK_LT', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, NULL, NULL, 'CHECKUP_STOCK_GT', '3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, NULL, NULL, 'FOOTER_CMS', '0_3|0_4', '0000-00-00 00:00:00', '2014-01-06 22:18:33'),
(202, NULL, NULL, 'FOOTER_BLOCK_ACTIVATION', '0_3|0_4', '0000-00-00 00:00:00', '2014-01-06 22:18:33'),
(203, NULL, NULL, 'FOOTER_POWEREDBY', '1', '0000-00-00 00:00:00', '2014-01-06 22:18:33'),
(204, NULL, NULL, 'BLOCKADVERT_LINK', 'http://www.prestashop.com', '0000-00-00 00:00:00', '2014-01-06 22:18:29'),
(205, NULL, NULL, 'BLOCKSTORE_IMG', 'store.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, NULL, NULL, 'BLOCKADVERT_IMG_EXT', 'jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, NULL, NULL, 'MOD_BLOCKTOPMENU_ITEMS', 'CAT2,CAT3,CAT4', '0000-00-00 00:00:00', '2014-01-06 22:18:46'),
(208, NULL, NULL, 'MOD_BLOCKTOPMENU_SEARCH', '', '0000-00-00 00:00:00', '2014-01-06 22:18:46'),
(209, NULL, NULL, 'blocksocial_facebook', 'http://www.facebook.com/prestashop', '0000-00-00 00:00:00', '2014-01-06 22:18:43'),
(210, NULL, NULL, 'blocksocial_twitter', 'http://www.twitter.com/prestashop', '0000-00-00 00:00:00', '2014-01-06 22:18:43'),
(211, NULL, NULL, 'blocksocial_rss', 'http://www.prestashop.com/blog/en/feed/', '0000-00-00 00:00:00', '2014-01-06 22:18:43'),
(212, NULL, NULL, 'blockcontactinfos_company', 'My Company', '0000-00-00 00:00:00', '2014-01-06 22:18:35'),
(213, NULL, NULL, 'blockcontactinfos_address', '42 avenue des Champs Elysées\n75000 Paris\nFrance', '0000-00-00 00:00:00', '2014-01-06 22:18:35'),
(214, NULL, NULL, 'blockcontactinfos_phone', '0123-456-789', '0000-00-00 00:00:00', '2014-01-06 22:18:35'),
(215, NULL, NULL, 'blockcontactinfos_email', 'sales@yourcompany.com', '0000-00-00 00:00:00', '2014-01-06 22:18:35'),
(216, NULL, NULL, 'blockcontact_telnumber', '0123-456-789', '0000-00-00 00:00:00', '2014-01-06 22:18:34'),
(217, NULL, NULL, 'blockcontact_email', 'sales@yourcompany.com', '0000-00-00 00:00:00', '2014-01-06 22:18:34'),
(218, NULL, NULL, 'SUPPLIER_DISPLAY_TEXT', '1', '0000-00-00 00:00:00', '2014-01-06 22:18:45'),
(219, NULL, NULL, 'SUPPLIER_DISPLAY_TEXT_NB', '5', '0000-00-00 00:00:00', '2014-01-06 22:18:45'),
(220, NULL, NULL, 'SUPPLIER_DISPLAY_FORM', '1', '0000-00-00 00:00:00', '2014-01-06 22:18:45'),
(221, NULL, NULL, 'BLOCK_CATEG_NBR_COLUMN_FOOTER', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, NULL, NULL, 'UPGRADER_BACKUPDB_FILENAME', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, NULL, NULL, 'UPGRADER_BACKUPFILES_FILENAME', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, NULL, NULL, 'blockreinsurance_nbblocks', '5', '0000-00-00 00:00:00', '2014-01-06 22:18:40'),
(225, NULL, NULL, 'HOMESLIDER_WIDTH', '535', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, NULL, NULL, 'HOMESLIDER_HEIGHT', '300', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, NULL, NULL, 'HOMESLIDER_SPEED', '500', '0000-00-00 00:00:00', '2014-01-06 22:18:52'),
(228, NULL, NULL, 'HOMESLIDER_PAUSE', '3000', '0000-00-00 00:00:00', '2014-01-06 22:18:52'),
(229, NULL, NULL, 'PS_VERSION_DB', '1.5.6.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, NULL, NULL, 'PS_BASE_DISTANCE_UNIT', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, NULL, NULL, 'PS_SHOP_DOMAIN', 'localhost', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, NULL, NULL, 'PS_SHOP_DOMAIN_SSL', 'localhost', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, NULL, NULL, 'PS_INSTALL_VERSION', '1.5.6.1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, NULL, NULL, 'PS_SHOP_NAME', 'Shokolada', '0000-00-00 00:00:00', '2014-01-06 22:17:10'),
(235, NULL, NULL, 'PS_SHOP_EMAIL', 'volfson@walla.co.il', '0000-00-00 00:00:00', '2014-01-06 22:18:25'),
(236, NULL, NULL, 'PS_MAIL_METHOD', '1', '0000-00-00 00:00:00', '2014-01-06 22:17:10'),
(237, NULL, NULL, 'PS_SHOP_ACTIVITY', '0', '0000-00-00 00:00:00', '2014-01-06 22:17:10'),
(238, NULL, NULL, 'PS_LOGO', 'logo.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, NULL, NULL, 'PS_FAVICON', 'favicon.ico', '0000-00-00 00:00:00', '2014-01-13 23:42:38'),
(240, NULL, NULL, 'PS_STORES_ICON', 'logo_stores.gif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, NULL, NULL, 'PS_ROOT_CATEGORY', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, NULL, NULL, 'PS_HOME_CATEGORY', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, NULL, NULL, 'PS_CONFIGURATION_AGREMENT', '0', '0000-00-00 00:00:00', '2014-01-06 22:17:10'),
(244, NULL, NULL, 'PS_MAIL_SERVER', NULL, '0000-00-00 00:00:00', '2014-01-06 22:17:10'),
(245, NULL, NULL, 'PS_MAIL_USER', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, NULL, NULL, 'PS_MAIL_PASSWD', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, NULL, NULL, 'PS_MAIL_SMTP_ENCRYPTION', NULL, '0000-00-00 00:00:00', '2014-01-06 22:17:11'),
(248, NULL, NULL, 'PS_MAIL_SMTP_PORT', '0', '0000-00-00 00:00:00', '2014-01-06 22:17:11'),
(249, NULL, NULL, 'PS_MAIL_COLOR', '#db3484', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, NULL, NULL, 'NW_SALT', 'baT6ykVxjSeayIi3', '0000-00-00 00:00:00', '2014-01-06 22:18:39'),
(251, NULL, NULL, 'PS_PAYMENT_LOGO_CMS_ID', '0', '0000-00-00 00:00:00', '2014-01-06 22:18:39'),
(252, NULL, NULL, 'HOME_FEATURED_NBR', '8', '0000-00-00 00:00:00', '2014-01-06 22:18:51'),
(253, NULL, NULL, 'SEK_MIN_OCCURENCES', '1', '0000-00-00 00:00:00', '2014-01-06 22:18:55'),
(254, NULL, NULL, 'SEK_FILTER_KW', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, NULL, NULL, 'PS_ALLOW_MOBILE_DEVICE', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, NULL, NULL, 'PS_CUSTOMER_CREATION_EMAIL', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, NULL, NULL, 'PS_SMARTY_CONSOLE_KEY', 'SMARTY_DEBUG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, NULL, NULL, 'BLOCKADVERT_TITLE', 'PrestaShop', '2014-01-06 22:18:29', '2014-01-06 22:18:29'),
(259, NULL, NULL, 'BLOCKSPECIALS_NB_CACHES', '20', '2014-01-06 22:18:43', '2014-01-06 22:18:43'),
(260, NULL, NULL, 'HOMESLIDER_LOOP', '1', '2014-01-06 22:18:52', '2014-01-06 22:18:52'),
(261, NULL, NULL, 'GF_INSTALL_CALC', '1', '2014-01-06 22:19:09', '2014-01-06 22:52:23'),
(262, NULL, NULL, 'GF_CURRENT_LEVEL', '1', '2014-01-06 22:19:09', '2014-01-17 01:09:47'),
(263, NULL, NULL, 'GF_CURRENT_LEVEL_PERCENT', '70', '2014-01-06 22:19:09', '2014-01-17 01:09:47'),
(264, NULL, NULL, 'GF_NOTIFICATION', '10', '2014-01-06 22:19:09', '2014-01-17 01:09:47'),
(265, NULL, NULL, 'PS_LAST_VERSION', 'a:10:{s:4:"name";s:14:"1.5.6.1 stable";s:3:"num";s:7:"1.5.6.1";s:4:"link";s:37:"http://www.prestashop.com/en/download";s:3:"md5";s:32:"53f2b62cbd414bcc8659215438b5912b";s:11:"autoupgrade";i:1;s:18:"autoupgrade_module";i:1;s:24:"autoupgrade_last_version";s:5:"1.2.4";s:23:"autoupgrade_module_link";s:50:"http://www.prestashop.com/download/autoupgrade.zip";s:9:"changelog";s:0:"";s:4:"desc";s:0:"";}', '2014-01-06 22:52:00', '2014-01-06 22:52:00'),
(266, NULL, NULL, 'PS_LAST_VERSION_CHECK', '1389880014', '2014-01-06 22:52:00', '2014-01-16 15:46:54'),
(267, NULL, NULL, 'GF_NOT_VIEWED_BADGE', '86', '2014-01-06 22:52:23', '2014-01-16 23:23:51'),
(268, NULL, NULL, 'STSN_RESPONSIVE', '1', '2014-01-07 15:42:21', '2014-01-08 18:01:50'),
(269, NULL, NULL, 'STSN_RESPONSIVE_MAX', '1', '2014-01-07 15:42:21', '2014-01-08 18:01:50'),
(270, NULL, NULL, 'STSN_BOXSTYLE', '1', '2014-01-07 15:42:21', '2014-01-13 16:01:43'),
(271, NULL, NULL, 'STSN_WELCOME', NULL, '2014-01-07 15:42:21', '2014-01-07 15:42:21'),
(272, NULL, NULL, 'STSN_WELCOME_LOGGED', NULL, '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(273, NULL, NULL, 'STSN_WELCOME_LINK', NULL, '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(274, NULL, NULL, 'STSN_PRODUCT_VIEW', 'grid_view', '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(275, NULL, NULL, 'STSN_COPYRIGHT_TEXT', NULL, '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(276, NULL, NULL, 'STSN_SEARCH_LABEL', NULL, '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(277, NULL, NULL, 'STSN_NEWSLETTER_LABEL', NULL, '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(278, NULL, NULL, 'STSN_FOOTER_IMG', 'img/payment-options.png', '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(279, NULL, NULL, 'STSN_ICON_IPHONE_57', 'img/touch-icon-iphone-57.png', '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(280, NULL, NULL, 'STSN_ICON_IPHONE_72', 'img/touch-icon-iphone-72.png', '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(281, NULL, NULL, 'STSN_ICON_IPHONE_114', 'img/touch-icon-iphone-114.png', '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(282, NULL, NULL, 'STSN_ICON_IPHONE_144', 'img/touch-icon-iphone-144.png', '2014-01-07 15:42:22', '2014-01-07 15:42:22'),
(283, NULL, NULL, 'STSN_CUSTOM_CSS', '#product_list .hover_fly{display:none;}\r\n.sortPagiBar .viewmode{display:none;}\r\n#center_column .sortPagiBar.sortPagiBarBottom{display:none;} \r\n#center_column .sortPagiBar{display:none;} ', '2014-01-07 15:42:22', '2014-01-14 14:56:31'),
(284, NULL, NULL, 'STSN_CUSTOM_JS', NULL, '2014-01-07 15:42:22', '2014-01-16 23:05:39'),
(285, NULL, NULL, 'STSN_TRACKING_CODE', NULL, '2014-01-07 15:42:23', '2014-01-16 23:05:39'),
(286, NULL, NULL, 'STSN_SCROLL_TO_TOP', '1', '2014-01-07 15:42:23', '2014-01-08 18:01:51'),
(287, NULL, NULL, 'STSN_ADDTOCART_ANIMATION', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:31'),
(288, NULL, NULL, 'STSN_GOOGLE_RICH_SNIPPETS', '1', '2014-01-07 15:42:23', '2014-01-08 18:01:51'),
(289, NULL, NULL, 'STSN_DISPLAY_TAX_LABEL', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:40'),
(290, NULL, NULL, 'STSN_POSITION_RIGHT_PANEL', '1_40', '2014-01-07 15:42:23', '2014-01-07 15:42:23'),
(291, NULL, NULL, 'STSN_FLYOUT_BUTTONS', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:31'),
(292, NULL, NULL, 'STSN_LENGTH_OF_PRODUCT_NAME', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:30'),
(293, NULL, NULL, 'STSN_LOGO_POSITION', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:30'),
(294, NULL, NULL, 'STSN_LOGO_HEIGHT', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:30'),
(295, NULL, NULL, 'STSN_MEGAMENU_POSITION', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:30'),
(296, NULL, NULL, 'STSN_FONT_TEXT', 'Alef', '2014-01-07 15:42:23', '2014-01-14 15:05:27'),
(297, NULL, NULL, 'STSN_FONT_PRICE', 'Alef', '2014-01-07 15:42:23', '2014-01-14 15:05:27'),
(298, NULL, NULL, 'STSN_FONT_PRICE_SIZE', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:33'),
(299, NULL, NULL, 'STSN_FONT_HEADING', 'Alef', '2014-01-07 15:42:23', '2014-01-14 15:05:27'),
(300, NULL, NULL, 'STSN_FONT_HEADING_WEIGHT', '1', '2014-01-07 15:42:23', '2014-01-15 17:19:26'),
(301, NULL, NULL, 'STSN_FONT_HEADING_TRANS', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:33'),
(302, NULL, NULL, 'STSN_FONT_HEADING_SIZE', '0', '2014-01-07 15:42:23', '2014-01-16 23:05:33'),
(303, NULL, NULL, 'STSN_FOOTER_HEADING_SIZE', '0', '2014-01-07 15:42:24', '2014-01-16 23:05:33'),
(304, NULL, NULL, 'STSN_FONT_MENU', 'Alef', '2014-01-07 15:42:24', '2014-01-15 17:19:26'),
(305, NULL, NULL, 'STSN_FONT_MENU_WEIGHT', '1', '2014-01-07 15:42:24', '2014-01-15 18:11:23'),
(306, NULL, NULL, 'STSN_FONT_MENU_TRANS', '1', '2014-01-07 15:42:24', '2014-01-08 18:01:52'),
(307, NULL, NULL, 'STSN_FONT_MENU_SIZE', '0', '2014-01-07 15:42:24', '2014-01-16 23:05:34'),
(308, NULL, NULL, 'STSN_FONT_CART_BTN', 'Alef', '2014-01-07 15:42:24', '2014-01-14 15:05:27'),
(309, NULL, NULL, 'STSN_FONT_LATIN_SUPPORT', '0', '2014-01-07 15:42:24', '2014-01-16 23:05:32'),
(310, NULL, NULL, 'STSN_FONT_CYRILLIC_SUPPORT', '0', '2014-01-07 15:42:24', '2014-01-16 23:05:33'),
(311, NULL, NULL, 'STSN_FONT_VIETNAMESE', '0', '2014-01-07 15:42:24', '2014-01-16 23:05:33'),
(312, NULL, NULL, 'STSN_FONT_GREEK_SUPPORT', '0', '2014-01-07 15:42:24', '2014-01-16 23:05:33'),
(313, NULL, NULL, 'STSN_DISPLAY_COMMENT_RATING', '1', '2014-01-07 15:42:24', '2014-01-08 18:01:52'),
(314, NULL, NULL, 'STSN_CATE_ROW_PRO_NBR', '3', '2014-01-07 15:42:24', '2014-01-08 18:01:52'),
(315, NULL, NULL, 'STSN_PACK_ROW_PRO_NBR', '4', '2014-01-07 15:42:24', '2014-01-08 18:01:52'),
(316, NULL, NULL, 'STSN_DISPLAY_LEFT_CATEGORY', '2', '2014-01-07 15:42:25', '2014-01-13 15:20:28'),
(317, NULL, NULL, 'STSN_DISPLAY_LEFT_PRODUCT', '0', '2014-01-07 15:42:25', '2014-01-16 23:05:30'),
(318, NULL, NULL, 'STSN_DISPLAY_LEFT_HOMEPAGE', '0', '2014-01-07 15:42:25', '2014-01-16 23:05:30'),
(319, NULL, NULL, 'STSN_DISPLAY_LEFT_OTHER', '0', '2014-01-07 15:42:25', '2014-01-16 23:05:30'),
(320, NULL, NULL, 'STSN_DISPLAY_CATEGORY_TITLE', '0', '2014-01-07 15:42:25', '2014-01-16 23:05:31'),
(321, NULL, NULL, 'STSN_DISPLAY_CATEGORY_DESC', '0', '2014-01-07 15:42:25', '2014-01-16 23:05:31'),
(322, NULL, NULL, 'STSN_DISPLAY_CATEGORY_IMAGE', '1', '2014-01-07 15:42:25', '2014-01-09 17:00:40'),
(323, NULL, NULL, 'STSN_DISPLAY_SUBCATE', '0', '2014-01-07 15:42:25', '2014-01-16 23:05:31'),
(324, NULL, NULL, 'STSN_CATEGORIES_PER_ROW', '5', '2014-01-07 15:42:25', '2014-01-08 18:01:53'),
(325, NULL, NULL, 'STSN_DISPLAY_PRO_ATTR', '0', '2014-01-07 15:42:25', '2014-01-16 23:05:31'),
(326, NULL, NULL, 'STSN_PRODUCT_SECONDARY', '1', '2014-01-07 15:42:26', '2014-01-08 18:01:53'),
(327, NULL, NULL, 'STSN_SHOW_BRAND_LOGO', '1', '2014-01-07 15:42:26', '2014-01-08 18:01:53'),
(328, NULL, NULL, 'STSN_DISPLAY_CATE_DESC_FULL', '0', '2014-01-07 15:42:26', '2014-01-16 23:05:31'),
(329, NULL, NULL, 'STSN_FOOTER_BORDER_COLOR', '#fafafa', '2014-01-07 15:42:26', '2014-01-08 18:05:25'),
(330, NULL, NULL, 'STSN_SECOND_FOOTER_COLOR', NULL, '2014-01-07 15:42:26', '2014-01-16 23:05:37'),
(331, NULL, NULL, 'STSN_FOOTER_COLOR', NULL, '2014-01-07 15:42:26', '2014-01-16 23:05:35'),
(332, NULL, NULL, 'STSN_FOOTER_LINK_COLOR', NULL, '2014-01-07 15:42:26', '2014-01-16 23:05:35'),
(333, NULL, NULL, 'STSN_FOOTER_LINK_HOVER_COLOR', NULL, '2014-01-07 15:42:27', '2014-01-16 23:05:35'),
(334, NULL, NULL, 'STSN_FOOTER_TOP_BORDER_COLOR', '#e5e5e5', '2014-01-07 15:42:27', '2014-01-08 18:05:25'),
(335, NULL, NULL, 'STSN_FOOTER_TOP_BG', '#ffffff', '2014-01-07 15:42:27', '2014-01-08 18:05:25'),
(336, NULL, NULL, 'STSN_FOOTER_TOP_CON_BG', NULL, '2014-01-07 15:42:27', '2014-01-16 23:05:35'),
(337, NULL, NULL, 'STSN_F_TOP_BG_IMG', NULL, '2014-01-07 15:42:27', '2014-01-08 18:01:54'),
(338, NULL, NULL, 'STSN_F_TOP_BG_REPEAT', '0', '2014-01-07 15:42:27', '2014-01-16 23:05:35'),
(339, NULL, NULL, 'STSN_F_TOP_BG_POSITION', '0', '2014-01-07 15:42:27', '2014-01-16 23:05:35'),
(340, NULL, NULL, 'STSN_F_TOP_BG_PATTERN', '0', '2014-01-07 15:42:27', '2014-01-16 23:05:35'),
(341, NULL, NULL, 'STSN_FOOTER_BG_COLOR', '#fafafa', '2014-01-07 15:42:27', '2014-01-08 18:05:25'),
(342, NULL, NULL, 'STSN_FOOTER_CON_BG_COLOR', NULL, '2014-01-07 15:42:27', '2014-01-16 23:05:36'),
(343, NULL, NULL, 'STSN_FOOTER_BG_IMG', NULL, '2014-01-07 15:42:27', '2014-01-08 18:01:54'),
(344, NULL, NULL, 'STSN_FOOTER_BG_REPEAT', '0', '2014-01-07 15:42:27', '2014-01-16 23:05:36'),
(345, NULL, NULL, 'STSN_FOOTER_BG_POSITION', '0', '2014-01-07 15:42:28', '2014-01-16 23:05:36'),
(346, NULL, NULL, 'STSN_FOOTER_BG_PATTERN', '0', '2014-01-07 15:42:28', '2014-01-16 23:05:36'),
(347, NULL, NULL, 'STSN_FOOTER_SECONDARY_BG', NULL, '2014-01-07 15:42:28', '2014-01-16 23:05:37'),
(348, NULL, NULL, 'STSN_FOOTER_SECONDARY_CON_BG', NULL, '2014-01-07 15:42:28', '2014-01-16 23:05:37'),
(349, NULL, NULL, 'STSN_F_SECONDARY_BG_IMG', NULL, '2014-01-07 15:42:28', '2014-01-08 18:01:55'),
(350, NULL, NULL, 'STSN_F_SECONDARY_BG_REPEAT', '0', '2014-01-07 15:42:28', '2014-01-16 23:05:36'),
(351, NULL, NULL, 'STSN_F_SECONDARY_BG_POSITION', '0', '2014-01-07 15:42:28', '2014-01-16 23:05:37'),
(352, NULL, NULL, 'STSN_F_SECONDARY_BG_PATTERN', '0', '2014-01-07 15:42:28', '2014-01-16 23:05:36'),
(353, NULL, NULL, 'STSN_FOOTER_INFO_BG', '#515963', '2014-01-07 15:42:28', '2014-01-08 18:05:25'),
(354, NULL, NULL, 'STSN_FOOTER_INFO_CON_BG', NULL, '2014-01-07 15:42:28', '2014-01-16 23:05:37'),
(355, NULL, NULL, 'STSN_F_INFO_BG_IMG', NULL, '2014-01-07 15:42:28', '2014-01-08 18:01:55'),
(356, NULL, NULL, 'STSN_F_INFO_BG_REPEAT', '0', '2014-01-07 15:42:28', '2014-01-16 23:05:37'),
(357, NULL, NULL, 'STSN_F_INFO_BG_POSITION', '0', '2014-01-07 15:42:28', '2014-01-16 23:05:37'),
(358, NULL, NULL, 'STSN_F_INFO_BG_PATTERN', '0', '2014-01-07 15:42:28', '2014-01-16 23:05:37'),
(359, NULL, NULL, 'STSN_HEADER_TEXT_COLOR', '#e5e5e5', '2014-01-07 15:42:28', '2014-01-08 18:05:24'),
(360, NULL, NULL, 'STSN_HEADER_LINK_COLOR', '#e5e5e5', '2014-01-07 15:42:29', '2014-01-08 18:05:24'),
(361, NULL, NULL, 'STSN_HEADER_LINK_HOVER_COLOR', '#F64C65', '2014-01-07 15:42:29', '2014-01-08 18:05:24'),
(362, NULL, NULL, 'STSN_HEADER_LINK_HOVER_BG', '#ffe4e8', '2014-01-07 15:42:29', '2014-01-08 18:05:24'),
(363, NULL, NULL, 'STSN_DROPDOWN_HOVER_COLOR', '#F64C65', '2014-01-07 15:42:29', '2014-01-08 18:05:24'),
(364, NULL, NULL, 'STSN_DROPDOWN_BG_COLOR', '#ffe4e8', '2014-01-07 15:42:29', '2014-01-08 18:05:24'),
(365, NULL, NULL, 'STSN_HEADER_TOPBAR_BG', '#515963', '2014-01-07 15:42:29', '2014-01-08 18:05:24'),
(366, NULL, NULL, 'STSN_HEADER_TOPBAR_SEP', '#6D757F', '2014-01-07 15:42:29', '2014-01-08 18:05:24'),
(367, NULL, NULL, 'STSN_HEADER_BG_COLOR', NULL, '2014-01-07 15:42:29', '2014-01-16 23:05:33'),
(368, NULL, NULL, 'STSN_HEADER_CON_BG_COLOR', NULL, '2014-01-07 15:42:29', '2014-01-16 23:05:33'),
(369, NULL, NULL, 'STSN_HEADER_BG_IMG', NULL, '2014-01-07 15:42:29', '2014-01-08 18:01:56'),
(370, NULL, NULL, 'STSN_HEADER_BG_REPEAT', '0', '2014-01-07 15:42:29', '2014-01-16 23:05:33'),
(371, NULL, NULL, 'STSN_HEADER_BG_POSITION', '0', '2014-01-07 15:42:29', '2014-01-16 23:05:33'),
(372, NULL, NULL, 'STSN_HEADER_BG_PATTERN', '0', '2014-01-07 15:42:29', '2014-01-16 23:05:33'),
(373, NULL, NULL, 'STSN_BODY_BG_COLOR', NULL, '2014-01-07 15:42:29', '2014-01-16 23:05:35'),
(374, NULL, NULL, 'STSN_BODY_BG_IMG', NULL, '2014-01-07 15:42:29', '2014-01-08 18:01:56'),
(375, NULL, NULL, 'STSN_BODY_BG_REPEAT', '0', '2014-01-07 15:42:29', '2014-01-16 23:05:35'),
(376, NULL, NULL, 'STSN_BODY_BG_POSITION', '0', '2014-01-07 15:42:29', '2014-01-16 23:05:35'),
(377, NULL, NULL, 'STSN_BODY_BG_FIXED', '0', '2014-01-07 15:42:29', '2014-01-16 23:05:35'),
(378, NULL, NULL, 'STSN_BODY_BG_PATTERN', '0', '2014-01-07 15:42:30', '2014-01-16 23:05:35'),
(379, NULL, NULL, 'STSN_CS_EASING', '0', '2014-01-07 15:42:30', '2014-01-16 23:05:37'),
(380, NULL, NULL, 'STSN_CS_SLIDESHOW', '0', '2014-01-07 15:42:30', '2014-01-16 23:05:37'),
(381, NULL, NULL, 'STSN_CS_S_SPEED', '7000', '2014-01-07 15:42:30', '2014-01-08 18:01:57'),
(382, NULL, NULL, 'STSN_CS_A_SPEED', '400', '2014-01-07 15:42:30', '2014-01-08 18:01:57'),
(383, NULL, NULL, 'STSN_CS_PAUSE_ON_HOVER', '1', '2014-01-07 15:42:30', '2014-01-08 18:01:57'),
(384, NULL, NULL, 'STSN_CS_LOOP', '0', '2014-01-07 15:42:30', '2014-01-16 23:05:38'),
(385, NULL, NULL, 'STSN_CS_MOVE', '0', '2014-01-07 15:42:30', '2014-01-16 23:05:38'),
(386, NULL, NULL, 'STSN_CS_ITEMS', '4', '2014-01-07 15:42:30', '2014-01-08 18:01:58'),
(387, NULL, NULL, 'STSN_PC_EASING', '0', '2014-01-07 15:42:30', '2014-01-16 23:05:38'),
(388, NULL, NULL, 'STSN_PC_SLIDESHOW', '0', '2014-01-07 15:42:30', '2014-01-16 23:05:38'),
(389, NULL, NULL, 'STSN_PC_S_SPEED', '7000', '2014-01-07 15:42:30', '2014-01-08 18:01:58'),
(390, NULL, NULL, 'STSN_PC_A_SPEED', '400', '2014-01-07 15:42:30', '2014-01-08 18:01:58'),
(391, NULL, NULL, 'STSN_PC_PAUSE_ON_HOVER', '1', '2014-01-07 15:42:30', '2014-01-08 18:01:58'),
(392, NULL, NULL, 'STSN_PC_LOOP', '0', '2014-01-07 15:42:30', '2014-01-16 23:05:38'),
(393, NULL, NULL, 'STSN_PC_MOVE', '0', '2014-01-07 15:42:30', '2014-01-16 23:05:38'),
(394, NULL, NULL, 'STSN_PC_ITEMS', '4', '2014-01-07 15:42:31', '2014-01-08 18:01:58'),
(395, NULL, NULL, 'STSN_AC_EASING', '0', '2014-01-07 15:42:31', '2014-01-16 23:05:38'),
(396, NULL, NULL, 'STSN_AC_SLIDESHOW', '0', '2014-01-07 15:42:31', '2014-01-16 23:05:38'),
(397, NULL, NULL, 'STSN_AC_S_SPEED', '7000', '2014-01-07 15:42:32', '2014-01-08 18:01:59'),
(398, NULL, NULL, 'STSN_AC_A_SPEED', '400', '2014-01-07 15:42:32', '2014-01-08 18:01:59'),
(399, NULL, NULL, 'STSN_AC_PAUSE_ON_HOVER', '1', '2014-01-07 15:42:32', '2014-01-08 18:01:59'),
(400, NULL, NULL, 'STSN_AC_LOOP', '0', '2014-01-07 15:42:32', '2014-01-16 23:05:38'),
(401, NULL, NULL, 'STSN_AC_MOVE', '0', '2014-01-07 15:42:32', '2014-01-16 23:05:38'),
(402, NULL, NULL, 'STSN_AC_ITEMS', '4', '2014-01-07 15:42:32', '2014-01-08 18:01:59'),
(403, NULL, NULL, 'STSN_BS_EASING', '0', '2014-01-07 15:42:32', '2014-01-16 23:05:38'),
(404, NULL, NULL, 'STSN_BS_SLIDESHOW', '0', '2014-01-07 15:42:32', '2014-01-16 23:05:38'),
(405, NULL, NULL, 'STSN_BS_S_SPEED', '7000', '2014-01-07 15:42:32', '2014-01-08 18:01:59'),
(406, NULL, NULL, 'STSN_BS_A_SPEED', '400', '2014-01-07 15:42:32', '2014-01-08 18:01:59'),
(407, NULL, NULL, 'STSN_BS_PAUSE_ON_HOVER', '1', '2014-01-07 15:42:32', '2014-01-08 18:01:59'),
(408, NULL, NULL, 'STSN_BS_LOOP', '0', '2014-01-07 15:42:33', '2014-01-16 23:05:38'),
(409, NULL, NULL, 'STSN_BS_MOVE', '0', '2014-01-07 15:42:33', '2014-01-16 23:05:39'),
(410, NULL, NULL, 'STSN_BS_ITEMS', '4', '2014-01-07 15:42:33', '2014-01-08 18:01:59'),
(411, NULL, NULL, 'STSN_TEXT_COLOR', NULL, '2014-01-07 15:42:33', '2014-01-16 23:05:31'),
(412, NULL, NULL, 'STSN_LINK_COLOR', NULL, '2014-01-07 15:42:33', '2014-01-16 23:05:31'),
(413, NULL, NULL, 'STSN_LINK_HOVER_COLOR', '#F64C65', '2014-01-07 15:42:33', '2014-01-08 18:05:23'),
(414, NULL, NULL, 'STSN_BREADCRUMB_COLOR', NULL, '2014-01-07 15:42:33', '2014-01-16 23:05:31'),
(415, NULL, NULL, 'STSN_BREADCRUMB_HOVER_COLOR', NULL, '2014-01-07 15:42:33', '2014-01-16 23:05:31'),
(416, NULL, NULL, 'STSN_BREADCRUMB_BG', NULL, '2014-01-07 15:42:33', '2014-01-16 23:05:32'),
(417, NULL, NULL, 'STSN_PRICE_COLOR', '#F64C65', '2014-01-07 15:42:33', '2014-01-08 18:05:23'),
(418, NULL, NULL, 'STSN_ICON_COLOR', '#F64C65', '2014-01-07 15:42:33', '2014-01-08 18:05:23'),
(419, NULL, NULL, 'STSN_ICON_HOVER_COLOR', NULL, '2014-01-07 15:42:33', '2014-01-16 23:05:32'),
(420, NULL, NULL, 'STSN_ICON_BG_COLOR', NULL, '2014-01-07 15:42:33', '2014-01-16 23:05:32'),
(421, NULL, NULL, 'STSN_ICON_HOVER_BG_COLOR', '#F64C65', '2014-01-07 15:42:33', '2014-01-08 18:05:23'),
(422, NULL, NULL, 'STSN_ICON_DISABLED_COLOR', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:32'),
(423, NULL, NULL, 'STSN_RIGHT_PANEL_BORDER', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:32'),
(424, NULL, NULL, 'STSN_STARTS_COLOR', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:32'),
(425, NULL, NULL, 'STSN_CIRCLE_NUMBER_COLOR', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:32'),
(426, NULL, NULL, 'STSN_CIRCLE_NUMBER_BG', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:32'),
(427, NULL, NULL, 'STSN_BLOCK_HEADINGS_COLOR', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:33'),
(428, NULL, NULL, 'STSN_HEADINGS_COLOR', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:33'),
(429, NULL, NULL, 'STSN_F_TOP_H_COLOR', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:35'),
(430, NULL, NULL, 'STSN_FOOTER_H_COLOR', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:36'),
(431, NULL, NULL, 'STSN_F_SECONDARY_H_COLOR', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:37'),
(432, NULL, NULL, 'STSN_BTN_COLOR', NULL, '2014-01-07 15:42:34', '2014-01-16 23:05:32'),
(433, NULL, NULL, 'STSN_BTN_HOVER_COLOR', NULL, '2014-01-07 15:42:35', '2014-01-16 23:05:32'),
(434, NULL, NULL, 'STSN_BTN_BG_COLOR', '#515963', '2014-01-07 15:42:35', '2014-01-08 18:05:24'),
(435, NULL, NULL, 'STSN_BTN_HOVER_BG_COLOR', '#F64C65', '2014-01-07 15:42:35', '2014-01-08 18:05:24'),
(436, NULL, NULL, 'STSN_P_BTN_COLOR', NULL, '2014-01-07 15:42:35', '2014-01-16 23:05:32'),
(437, NULL, NULL, 'STSN_P_BTN_HOVER_COLOR', NULL, '2014-01-07 15:42:35', '2014-01-16 23:05:32'),
(438, NULL, NULL, 'STSN_P_BTN_BG_COLOR', '#F64C65', '2014-01-07 15:42:35', '2014-01-08 18:05:24'),
(439, NULL, NULL, 'STSN_P_BTN_HOVER_BG_COLOR', '#E0394D', '2014-01-07 15:42:35', '2014-01-08 18:05:24'),
(440, NULL, NULL, 'STSN_MENU_COLOR', NULL, '2014-01-07 15:42:35', '2014-01-16 23:05:34'),
(441, NULL, NULL, 'STSN_MENU_BG_COLOR', NULL, '2014-01-07 15:42:35', '2014-01-16 23:05:34'),
(442, NULL, NULL, 'STSN_MENU_HOVER_COLOR', NULL, '2014-01-07 15:42:35', '2014-01-16 23:05:34'),
(443, NULL, NULL, 'STSN_MENU_HOVER_BG', '#F64C65', '2014-01-07 15:42:35', '2014-01-08 18:05:25'),
(444, NULL, NULL, 'STSN_SECOND_MENU_COLOR', NULL, '2014-01-07 15:42:35', '2014-01-16 23:05:34'),
(445, NULL, NULL, 'STSN_SECOND_MENU_HOVER_COLOR', '#F64C65', '2014-01-07 15:42:36', '2014-01-08 18:05:25'),
(446, NULL, NULL, 'STSN_THIRD_MENU_COLOR', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:34'),
(447, NULL, NULL, 'STSN_THIRD_MENU_HOVER_COLOR', '#F64C65', '2014-01-07 15:42:36', '2014-01-08 18:05:25'),
(448, NULL, NULL, 'STSN_MENU_MOB_COLOR', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:34'),
(449, NULL, NULL, 'STSN_MENU_MOB_BG', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:34'),
(450, NULL, NULL, 'STSN_MENU_MOB_HOVER_COLOR', '#F64C65', '2014-01-07 15:42:36', '2014-01-08 18:05:25'),
(451, NULL, NULL, 'STSN_MENU_MOB_HOVER_BG', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:34'),
(452, NULL, NULL, 'STSN_MENU_MOB_ITEMS1_COLOR', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:34'),
(453, NULL, NULL, 'STSN_MENU_MOB_ITEMS2_COLOR', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:34'),
(454, NULL, NULL, 'STSN_MENU_MOB_ITEMS3_COLOR', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:34'),
(455, NULL, NULL, 'STSN_MENU_MOB_ITEMS1_BG', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:34'),
(456, NULL, NULL, 'STSN_MENU_MOB_ITEMS2_BG', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:34'),
(457, NULL, NULL, 'STSN_MENU_MOB_ITEMS3_BG', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:35'),
(458, NULL, NULL, 'STSN_NEW_COLOR', NULL, '2014-01-07 15:42:36', '2014-01-16 23:05:39'),
(459, NULL, NULL, 'STSN_NEW_STYLE', '0', '2014-01-07 15:42:36', '2014-01-16 23:05:39'),
(460, NULL, NULL, 'STSN_NEW_BG_COLOR', '#66CFF1', '2014-01-07 15:42:37', '2014-01-08 18:05:24'),
(461, NULL, NULL, 'STSN_NEW_BG_IMG', NULL, '2014-01-07 15:42:37', '2014-01-08 18:02:03'),
(462, NULL, NULL, 'STSN_NEW_STICKERS_WIDTH', '0', '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(463, NULL, NULL, 'STSN_NEW_STICKERS_TOP', '25', '2014-01-07 15:42:37', '2014-01-08 18:02:03'),
(464, NULL, NULL, 'STSN_NEW_STICKERS_RIGHT', '0', '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(465, NULL, NULL, 'STSN_SALE_COLOR', NULL, '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(466, NULL, NULL, 'STSN_SALE_STYLE', '0', '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(467, NULL, NULL, 'STSN_SALE_BG_COLOR', NULL, '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(468, NULL, NULL, 'STSN_SALE_BG_IMG', NULL, '2014-01-07 15:42:37', '2014-01-08 18:02:04'),
(469, NULL, NULL, 'STSN_SALE_STICKERS_WIDTH', '0', '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(470, NULL, NULL, 'STSN_SALE_STICKERS_TOP', '25', '2014-01-07 15:42:37', '2014-01-08 18:02:04'),
(471, NULL, NULL, 'STSN_SALE_STICKERS_LEFT', '0', '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(472, NULL, NULL, 'STSN_DISCOUNT_PERCENTAGE', '0', '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(473, NULL, NULL, 'STSN_PRICE_DROP_BORDER_COLOR', NULL, '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(474, NULL, NULL, 'STSN_PRICE_DROP_BG_COLOR', NULL, '2014-01-07 15:42:37', '2014-01-16 23:05:40'),
(475, NULL, NULL, 'STSN_PRICE_DROP_COLOR', NULL, '2014-01-07 15:42:37', '2014-01-16 23:05:39'),
(476, NULL, NULL, 'STSN_PRICE_DROP_BOTTOM', '50', '2014-01-07 15:42:37', '2014-01-08 18:02:04'),
(477, NULL, NULL, 'STSN_PRICE_DROP_RIGHT', '10', '2014-01-07 15:42:38', '2014-01-08 18:02:04'),
(478, NULL, NULL, 'STSN_PRICE_DROP_WIDTH', '0', '2014-01-07 15:42:38', '2014-01-16 23:05:40'),
(479, NULL, NULL, 'STSN_CART_ICON', '0', '2014-01-07 15:42:38', '2014-01-16 23:05:31'),
(480, NULL, NULL, 'STSN_WISHLIST_ICON', '0', '2014-01-07 15:42:38', '2014-01-16 23:05:31');
INSERT INTO `ps_configuration` (`id_configuration`, `id_shop_group`, `id_shop`, `name`, `value`, `date_add`, `date_upd`) VALUES
(481, NULL, NULL, 'STSN_COMPARE_ICON', '0', '2014-01-07 15:42:38', '2014-01-16 23:05:31'),
(482, NULL, NULL, 'STSN_PRO_TAB_COLOR', NULL, '2014-01-07 15:42:38', '2014-01-16 23:05:40'),
(483, NULL, NULL, 'STSN_PRO_TAB_ACTIVE_COLOR', NULL, '2014-01-07 15:42:38', '2014-01-16 23:05:40'),
(484, NULL, NULL, 'STSN_PRO_TAB_BG', NULL, '2014-01-07 15:42:38', '2014-01-16 23:05:40'),
(485, NULL, NULL, 'STSN_PRO_TAB_ACTIVE_BG', NULL, '2014-01-07 15:42:38', '2014-01-16 23:05:40'),
(486, NULL, NULL, 'STSN_PRO_TAB_CONTENT_BG', NULL, '2014-01-07 15:42:38', '2014-01-16 23:05:40'),
(487, NULL, NULL, 'ST_ADDTHIS_STYLE', '1', '2014-01-07 15:42:39', '2014-01-13 15:17:26'),
(488, NULL, NULL, 'ST_ADDTHIS_STYLE_FOR_BLOG', '0', '2014-01-07 15:42:39', '2014-01-13 15:17:26'),
(489, NULL, NULL, 'ST_ADDTHIS_PUBID', NULL, '2014-01-07 15:42:40', '2014-01-13 15:17:26'),
(490, NULL, NULL, 'ST_ADDTHIS_CUSTOMIZING', NULL, '2014-01-07 15:42:40', '2014-01-13 15:17:26'),
(491, NULL, NULL, 'ST_ADDTHIS_CUSTOMIZING_S', NULL, '2014-01-07 15:42:40', '2014-01-13 15:17:26'),
(492, NULL, NULL, 'ST_ADDTHIS_CUSTOMIZING_FOR_BLOG', NULL, '2014-01-07 15:42:40', '2014-01-13 15:17:26'),
(493, NULL, NULL, 'ST_ADDTHIS_CUSTOMIZING_FBS', NULL, '2014-01-07 15:42:40', '2014-01-13 15:17:27'),
(494, NULL, NULL, 'ST_ADDTHIS_SHOW_MORE', '0', '2014-01-07 15:42:40', '2014-01-13 15:17:27'),
(495, NULL, NULL, 'ST_ADDTHIS_SHOW_MORE_FOR_BLOG', '1', '2014-01-07 15:42:40', '2014-01-13 15:17:27'),
(496, NULL, NULL, 'ST_HOMENEW_NBR', '8', '2014-01-07 15:42:50', '2014-01-07 15:42:50'),
(497, NULL, NULL, 'ST_HOMENEW_EASING', '0', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(498, NULL, NULL, 'ST_HOMENEW_SLIDESHOW', '0', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(499, NULL, NULL, 'ST_HOMENEW_S_SPEED', '7000', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(500, NULL, NULL, 'ST_HOMENEW_A_SPEED', '400', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(501, NULL, NULL, 'ST_HOMENEW_PAUSE_ON_HOVER', '1', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(502, NULL, NULL, 'ST_HOMENEW_LOOP', '0', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(503, NULL, NULL, 'ST_HOMENEW_MOVE', '0', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(504, NULL, NULL, 'ST_HOMENEW_ITEMS', '4', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(505, NULL, NULL, 'ST_HOMENEW_NBR_COL', '8', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(506, NULL, NULL, 'ST_HOMENEW_EASING_COL', '0', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(507, NULL, NULL, 'ST_HOMENEW_SLIDESHOW_COL', '0', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(508, NULL, NULL, 'ST_HOMENEW_S_SPEED_COL', '7000', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(509, NULL, NULL, 'ST_HOMENEW_A_SPEED_COL', '400', '2014-01-07 15:42:51', '2014-01-07 15:42:51'),
(510, NULL, NULL, 'ST_HOMENEW_PAUSE_ON_HOVER_COL', '1', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(511, NULL, NULL, 'ST_HOMENEW_LOOP_COL', '0', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(512, NULL, NULL, 'ST_HOMENEW_MOVE_COL', '0', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(513, NULL, NULL, 'ST_HOMENEW_ITEMS_COL', '1', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(514, NULL, NULL, 'ST_HOMENEW_SOBY', '1', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(515, NULL, NULL, 'ST_HOMENEW_SOBY_COL', '1', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(516, NULL, NULL, 'ST_HOMENEW_HIDE_MOB', '0', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(517, NULL, NULL, 'ST_HOMENEW_HIDE_MOB_COL', '0', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(518, NULL, NULL, 'ST_HOMENEW_NBR_FOT', '4', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(519, NULL, NULL, 'ST_HOMENEW_SOBY_FOT', '1', '2014-01-07 15:42:52', '2014-01-07 15:42:52'),
(520, NULL, NULL, 'ST_PRO_CATE_TABS', '0', '2014-01-07 15:42:54', '2014-01-07 15:42:54'),
(521, NULL, NULL, 'ST_PRO_CATE_EASING', '0', '2014-01-07 15:42:54', '2014-01-07 15:42:54'),
(522, NULL, NULL, 'ST_PRO_CATE_SLIDESHOW', '0', '2014-01-07 15:42:54', '2014-01-07 15:42:54'),
(523, NULL, NULL, 'ST_PRO_CATE_S_SPEED', '7000', '2014-01-07 15:42:54', '2014-01-07 15:42:54'),
(524, NULL, NULL, 'ST_PRO_CATE_A_SPEED', '400', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(525, NULL, NULL, 'ST_PRO_CATE_PAUSE_ON_HOVER', '1', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(526, NULL, NULL, 'ST_PRO_CATE_LOOP', '0', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(527, NULL, NULL, 'ST_PRO_CATE_MOVE', '0', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(528, NULL, NULL, 'ST_PRO_CATE_ITEMS', '4', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(529, NULL, NULL, 'ST_PRO_CATE_EASING_COL', '0', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(530, NULL, NULL, 'ST_PRO_CATE_SLIDESHOW_COL', '0', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(531, NULL, NULL, 'ST_PRO_CATE_S_SPEED_COL', '7000', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(532, NULL, NULL, 'ST_PRO_CATE_A_SPEED_COL', '400', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(533, NULL, NULL, 'ST_PRO_CATE_PAUSE_ON_HOVER_COL', '1', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(534, NULL, NULL, 'ST_PRO_CATE_LOOP_COL', '0', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(535, NULL, NULL, 'ST_PRO_CATE_MOVE_COL', '0', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(536, NULL, NULL, 'ST_PRO_CATE_ITEMS_COL', '4', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(537, NULL, NULL, 'ST_PRO_CATE_HIDE_MOB', '0', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(538, NULL, NULL, 'ST_PRO_CATE_HIDE_MOB_COL', '0', '2014-01-07 15:42:55', '2014-01-07 15:42:55'),
(539, NULL, NULL, 'BRANDS_SLIDER_NBR', '10', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(540, NULL, NULL, 'BRANDS_SLIDER_EASING', '0', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(541, NULL, NULL, 'BRANDS_SLIDER_SLIDESHOW', '0', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(542, NULL, NULL, 'BRANDS_SLIDER_S_SPEED', '7000', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(543, NULL, NULL, 'BRANDS_SLIDER_A_SPEED', '400', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(544, NULL, NULL, 'BRANDS_SLIDER_PAUSE_ON_HOVER', '1', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(545, NULL, NULL, 'BRANDS_SLIDER_LOOP', '0', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(546, NULL, NULL, 'BRANDS_SLIDER_MOVE', '0', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(547, NULL, NULL, 'BRANDS_SLIDER_ORDER', '1', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(548, NULL, NULL, 'BRANDS_SLIDER_ITEMS', '6', '2014-01-07 15:42:58', '2014-01-07 15:42:58'),
(549, NULL, NULL, 'HOME_FEATURED_NBR_MOD', '6', '2014-01-07 15:42:59', '2014-01-07 15:42:59'),
(550, NULL, NULL, 'HOME_FEATURED_SOBY', '6', '2014-01-07 15:42:59', '2014-01-07 15:42:59'),
(551, NULL, NULL, 'ST_SPECIAL_SLIDER_NBR', '8', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(552, NULL, NULL, 'ST_SPECIAL_SLIDER_EASING', '0', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(553, NULL, NULL, 'ST_SPECIAL_SLIDER_SLIDESHOW', '0', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(554, NULL, NULL, 'ST_SPECIAL_SLIDER_S_SPEED', '7000', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(555, NULL, NULL, 'ST_SPECIAL_SLIDER_A_SPEED', '400', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(556, NULL, NULL, 'ST_SPECIAL_SLIDER_PAUSE_ON_HOVER', '1', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(557, NULL, NULL, 'ST_SPECIAL_SLIDER_LOOP', '0', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(558, NULL, NULL, 'ST_SPECIAL_SLIDER_MOVE', '0', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(559, NULL, NULL, 'ST_SPECIAL_SLIDER_ITEMS', '4', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(560, NULL, NULL, 'ST_SPECIAL_S_NBR_COL', '8', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(561, NULL, NULL, 'ST_SPECIAL_S_EASING_COL', '0', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(562, NULL, NULL, 'ST_SPECIAL_S_SLIDESHOW_COL', '0', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(563, NULL, NULL, 'ST_SPECIAL_S_S_SPEED_COL', '7000', '2014-01-07 15:43:10', '2014-01-07 15:43:10'),
(564, NULL, NULL, 'ST_SPECIAL_S_A_SPEED_COL', '400', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(565, NULL, NULL, 'ST_SPECIAL_S_PAUSE_ON_HOVER_COL', '1', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(566, NULL, NULL, 'ST_SPECIAL_S_LOOP_COL', '0', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(567, NULL, NULL, 'ST_SPECIAL_S_MOVE_COL', '0', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(568, NULL, NULL, 'ST_SPECIAL_S_ITEMS_COL', '4', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(569, NULL, NULL, 'ST_SPECIAL_SOBY', '7', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(570, NULL, NULL, 'ST_SPECIAL_S_SOBY_COL', '7', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(571, NULL, NULL, 'ST_SPECIAL_SLIDER_HIDE_MOB', '0', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(572, NULL, NULL, 'ST_SPECIAL_S_HIDE_MOB_COL', '0', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(573, NULL, NULL, 'ST_SPECIAL_S_NBR_FOT', '4', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(574, NULL, NULL, 'ST_SPECIAL_S_SOBY_FOT', '1', '2014-01-07 15:43:11', '2014-01-07 15:43:11'),
(575, NULL, NULL, 'ST_FB_LB_URL', 'shokolada.kids', '2014-01-07 15:43:23', '2014-01-12 10:37:28'),
(576, NULL, NULL, 'ST_FB_LB_HEIGHT', '205', '2014-01-07 15:43:23', '2014-01-12 10:42:50'),
(577, NULL, NULL, 'ST_FB_LB_FACE', '0', '2014-01-07 15:43:23', '2014-01-12 10:42:50'),
(578, NULL, NULL, 'ST_FB_LB_STREAM', '0', '2014-01-07 15:43:23', '2014-01-12 10:42:50'),
(579, NULL, NULL, 'ST_FB_LB_HEADER', '0', '2014-01-07 15:43:23', '2014-01-12 10:42:50'),
(580, NULL, NULL, 'ST_FB_LB_CONNECTIONS', '10', '2014-01-07 15:43:23', '2014-01-12 10:39:33'),
(581, NULL, NULL, 'ST_FB_LB_LOCALE', 'he_IL', '2014-01-07 15:43:23', '2014-01-12 10:39:33'),
(582, NULL, NULL, 'ST_SOCIAL_COLOR', '#666666', '2014-01-07 15:43:24', '2014-01-07 15:43:24'),
(583, NULL, NULL, 'ST_SOCIAL_HOVER_COLOR', '#00A161', '2014-01-07 15:43:24', '2014-01-07 15:43:24'),
(584, NULL, NULL, 'ST_SOCIAL_BG', NULL, '2014-01-07 15:43:24', '2014-01-07 15:43:24'),
(585, NULL, NULL, 'ST_SOCIAL_HOVER_BG', NULL, '2014-01-07 15:43:25', '2014-01-07 15:43:25'),
(586, NULL, NULL, 'ST_SOCIAL_FACEBOOK', 'http://www.facebook.com/prestashop', '2014-01-07 15:43:25', '2014-01-07 15:43:25'),
(587, NULL, NULL, 'ST_SOCIAL_TWITTER', 'http://www.twitter.com/prestashop', '2014-01-07 15:43:25', '2014-01-07 15:43:25'),
(588, NULL, NULL, 'ST_SOCIAL_RSS', NULL, '2014-01-07 15:43:25', '2014-01-07 15:43:25'),
(589, NULL, NULL, 'ST_SOCIAL_YOUTUBE', 'http://www.youtube.com/prestashop', '2014-01-07 15:43:25', '2014-01-07 15:43:25'),
(590, NULL, NULL, 'ST_SOCIAL_PINTEREST', 'http://www.pinterest.com/prestashop', '2014-01-07 15:43:25', '2014-01-07 15:43:25'),
(591, NULL, NULL, 'ST_SOCIAL_GOOGLE', NULL, '2014-01-07 15:43:25', '2014-01-07 15:43:25'),
(592, NULL, NULL, 'ST_SOCIAL_WORDPRESS', NULL, '2014-01-07 15:43:25', '2014-01-07 15:43:25'),
(593, NULL, NULL, 'ST_SOCIAL_DRUPAL', NULL, '2014-01-07 15:43:26', '2014-01-07 15:43:26'),
(594, NULL, NULL, 'ST_SOCIAL_VIMEO', NULL, '2014-01-07 15:43:26', '2014-01-07 15:43:26'),
(595, NULL, NULL, 'ST_SOCIAL_FLICKR', NULL, '2014-01-07 15:43:26', '2014-01-07 15:43:26'),
(596, NULL, NULL, 'ST_SOCIAL_DIGG', NULL, '2014-01-07 15:43:26', '2014-01-07 15:43:26'),
(597, NULL, NULL, 'ST_SOCIAL_EBAY', NULL, '2014-01-07 15:43:26', '2014-01-07 15:43:26'),
(598, NULL, NULL, 'ST_SOCIAL_AMAZON', NULL, '2014-01-07 15:43:26', '2014-01-07 15:43:26'),
(599, NULL, NULL, 'ST_SOCIAL_INSTAGRAM', NULL, '2014-01-07 15:43:26', '2014-01-07 15:43:26'),
(600, NULL, NULL, 'ST_SOCIAL_LINKEDIN', NULL, '2014-01-07 15:43:26', '2014-01-07 15:43:26'),
(601, NULL, NULL, 'ST_SOCIAL_NEW_WINDOW', NULL, '2014-01-07 15:43:27', '2014-01-07 15:43:27'),
(602, NULL, NULL, 'HOME_FEATURED_S_NBR_MOD', '8', '2014-01-07 15:43:27', '2014-01-07 15:43:27'),
(603, NULL, NULL, 'HOME_FEATURED_S_EASING', '0', '2014-01-07 15:43:28', '2014-01-07 15:43:28'),
(604, NULL, NULL, 'HOME_FEATURED_S_SLIDESHOW', '0', '2014-01-07 15:43:28', '2014-01-07 15:43:28'),
(605, NULL, NULL, 'HOME_FEATURED_S_S_SPEED', '7000', '2014-01-07 15:43:28', '2014-01-07 15:43:28'),
(606, NULL, NULL, 'HOME_FEATURED_S_A_SPEED', '400', '2014-01-07 15:43:28', '2014-01-07 15:43:28'),
(607, NULL, NULL, 'HOME_FEATURED_S_PAUSE', '1', '2014-01-07 15:43:28', '2014-01-07 15:43:28'),
(608, NULL, NULL, 'HOME_FEATURED_S_LOOP', '0', '2014-01-07 15:43:28', '2014-01-07 15:43:28'),
(609, NULL, NULL, 'HOME_FEATURED_S_MOVE', '0', '2014-01-07 15:43:28', '2014-01-07 15:43:28'),
(610, NULL, NULL, 'HOME_FEATURED_S_ITEMS', '4', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(611, NULL, NULL, 'HOME_FEATURED_S_SOBY', '6', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(612, NULL, NULL, 'HOME_FEATURED_S_NBR_MOD_COL', '8', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(613, NULL, NULL, 'HOME_FEATURED_S_EASING_COL', '0', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(614, NULL, NULL, 'HOME_FEATURED_S_SLIDESHOW_COL', '0', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(615, NULL, NULL, 'HOME_FEATURED_S_S_SPEED_COL', '7000', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(616, NULL, NULL, 'HOME_FEATURED_S_A_SPEED_COL', '400', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(617, NULL, NULL, 'HOME_FEATURED_S_PAUSE_COL', '1', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(618, NULL, NULL, 'HOME_FEATURED_S_LOOP_COL', '0', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(619, NULL, NULL, 'HOME_FEATURED_S_MOVE_COL', '0', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(620, NULL, NULL, 'HOME_FEATURED_S_ITEMS_COL', '4', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(621, NULL, NULL, 'HOME_FEATURED_S_SOBY_COL', '6', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(622, NULL, NULL, 'HOME_FEATURED_S_HIDE_MOB', '0', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(623, NULL, NULL, 'HOME_FEATURED_S_HIDE_MOB_COL', '0', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(624, NULL, NULL, 'HOME_FEATURED_S_NBR_FOT', '4', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(625, NULL, NULL, 'HOME_FEATURED_S_SOBY_FOT', '1', '2014-01-07 15:43:29', '2014-01-07 15:43:29'),
(626, NULL, NULL, 'ST_TW_NAME', NULL, '2014-01-07 15:43:35', '2014-01-07 15:43:35'),
(627, NULL, NULL, 'ST_TW_WIDGET_ID', NULL, '2014-01-07 15:43:35', '2014-01-07 15:43:35'),
(628, NULL, NULL, 'ST_TW_BLOCK_TITLE', NULL, '2014-01-07 15:43:35', '2014-01-07 15:43:35'),
(629, NULL, NULL, 'ST_TW_HEIGHT', '0', '2014-01-07 15:43:35', '2014-01-07 15:43:35'),
(630, NULL, NULL, 'ST_TW_LINK_COLOR', '#00A161', '2014-01-07 15:43:35', '2014-01-07 15:43:35'),
(631, NULL, NULL, 'ST_TW_THEME', 'light', '2014-01-07 15:43:35', '2014-01-07 15:43:35'),
(632, NULL, NULL, 'ST_TW_NOHEADER', '1', '2014-01-07 15:43:35', '2014-01-07 15:43:35'),
(633, NULL, NULL, 'ST_TW_NOFOOTER', '1', '2014-01-07 15:43:35', '2014-01-07 15:43:35'),
(634, NULL, NULL, 'ST_TW_NOBORDERS', '1', '2014-01-07 15:43:36', '2014-01-07 15:43:36'),
(635, NULL, NULL, 'ST_TW_NOSCROLLBAR', '1', '2014-01-07 15:43:36', '2014-01-07 15:43:36'),
(636, NULL, NULL, 'ST_TW_TRANSPARENT', '1', '2014-01-07 15:43:36', '2014-01-07 15:43:36'),
(637, NULL, NULL, 'ST_TW_BORDER_COLOR', NULL, '2014-01-07 15:43:36', '2014-01-07 15:43:36'),
(638, NULL, NULL, 'ST_TW_LANGUAGE', NULL, '2014-01-07 15:43:36', '2014-01-07 15:43:36'),
(639, NULL, NULL, 'ST_TW_LIMIT', '2', '2014-01-07 15:43:36', '2014-01-07 15:43:36'),
(640, NULL, NULL, 'ST_TW_SCREEN_NAME', NULL, '2014-01-07 15:43:36', '2014-01-07 15:43:36'),
(641, NULL, NULL, 'ST_TW_SHOW_REPLIES', '0', '2014-01-07 15:43:36', '2014-01-07 15:43:36'),
(642, NULL, NULL, 'ST_QW_HEIGHT', '470', '2014-01-07 15:43:37', '2014-01-07 15:43:37'),
(643, NULL, NULL, 'ST_QW_SHOW_SHORT_DESC', '1', '2014-01-07 15:43:37', '2014-01-09 23:33:29'),
(644, NULL, NULL, 'ST_BLOG_META_TITLE', NULL, '2014-01-07 15:43:42', '2014-01-07 15:43:42'),
(645, NULL, NULL, 'ST_BLOG_META_KEYWORDS', NULL, '2014-01-07 15:43:43', '2014-01-07 15:43:43'),
(646, NULL, NULL, 'ST_BLOG_META_DESCRIPTION', NULL, '2014-01-07 15:43:43', '2014-01-07 15:43:43'),
(647, NULL, NULL, 'ST_BLOG_CATE_LAYOUTS', '1', '2014-01-07 15:43:43', '2014-01-07 15:43:43'),
(648, NULL, NULL, 'ST_BLOG_CATE_ROW_BLOG_NBR', '2', '2014-01-07 15:43:43', '2014-01-07 15:43:43'),
(649, NULL, NULL, 'ST_BLOG_COLUMN_HOMEPAGE', '2', '2014-01-07 15:43:43', '2014-01-07 15:43:43'),
(650, NULL, NULL, 'ST_BLOG_COLUMN_CATEGORY', '2', '2014-01-07 15:43:43', '2014-01-07 15:43:43'),
(651, NULL, NULL, 'ST_BLOG_COLUMN_ARTICLE', '2', '2014-01-07 15:43:43', '2014-01-07 15:43:43'),
(652, NULL, NULL, 'ST_BLOG_PER_PAGE', '10', '2014-01-07 15:43:43', '2014-01-07 15:43:43'),
(653, NULL, NULL, 'ST_BLOG_DISPLAY_VIEWCOUNT', '1', '2014-01-07 15:43:43', '2014-01-07 15:43:43'),
(654, NULL, NULL, 'ST_BLOG_RELATED_DISPLAY_PRICE', '1', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(655, NULL, NULL, 'ST_BLOG_RELATED_ITEMS', '4', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(656, NULL, NULL, 'ST_BLOG_RELATED_SLIDESHOW', '0', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(657, NULL, NULL, 'ST_BLOG_RELATED_S_SPEED', '7000', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(658, NULL, NULL, 'ST_BLOG_RELATED_A_SPEED', '400', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(659, NULL, NULL, 'ST_BLOG_RELATED_PAUSE', '1', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(660, NULL, NULL, 'ST_BLOG_RELATED_EASING', '0', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(661, NULL, NULL, 'ST_BLOG_RELATED_LOOP', '0', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(662, NULL, NULL, 'ST_BLOG_RELATED_MOVE', '2', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(663, NULL, NULL, 'ST_BLOG_SS_SLIDESHOW', '0', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(664, NULL, NULL, 'ST_BLOG_SS_S_SPEED', '7000', '2014-01-07 15:43:44', '2014-01-07 15:43:44'),
(665, NULL, NULL, 'ST_BLOG_SS_A_SPEED', '400', '2014-01-07 15:43:45', '2014-01-07 15:43:45'),
(666, NULL, NULL, 'ST_BLOG_SS_PAUSE', '1', '2014-01-07 15:43:45', '2014-01-07 15:43:45'),
(667, NULL, NULL, 'ST_BLOG_SS_LOOP', '1', '2014-01-07 15:43:45', '2014-01-07 15:43:45'),
(668, NULL, NULL, 'ST_B_CATEG_MAX_DEPTH', '3', '2014-01-07 15:43:48', '2014-01-07 15:43:48'),
(669, NULL, NULL, 'ST_B_CATEG_DHTML', '1', '2014-01-07 15:43:49', '2014-01-07 15:43:49'),
(670, NULL, NULL, 'ST_B_RECENT_A_NBR', '4', '2014-01-07 15:43:50', '2014-01-07 15:43:50'),
(671, NULL, NULL, 'ST_B_RECENT_A_NBR_COL', '4', '2014-01-07 15:43:50', '2014-01-07 15:43:50'),
(672, NULL, NULL, 'ST_B_RECENT_A_NBR_HOME', '4', '2014-01-07 15:43:50', '2014-01-07 15:43:50'),
(673, NULL, NULL, 'ST_B_RECENT_A_PER_NBR_HOME', '4', '2014-01-07 15:43:51', '2014-01-07 15:43:51'),
(674, NULL, NULL, 'ST_B_RECENT_A_NBR_FOOTER', '0', '2014-01-07 15:43:51', '2014-01-09 23:38:12'),
(675, NULL, NULL, 'ST_B_FEATURED_A_NBR', '5', '2014-01-07 15:43:53', '2014-01-07 15:43:53'),
(676, NULL, NULL, 'ST_B_FEATURED_A_NBR_COL', '4', '2014-01-07 15:43:53', '2014-01-07 15:43:53'),
(677, NULL, NULL, 'ST_B_FEATURED_A_NBR_HOME', '4', '2014-01-07 15:43:53', '2014-01-07 15:43:53'),
(678, NULL, NULL, 'ST_B_FEATURED_A_PER_NBR_HOME', '4', '2014-01-07 15:43:53', '2014-01-07 15:43:53'),
(679, NULL, NULL, 'ST_B_FEATURED_A_NBR_FOOTER', '0', '2014-01-07 15:43:54', '2014-01-09 23:34:57'),
(680, NULL, NULL, 'ST_BLOG_TAGS_NBR', '4', '2014-01-07 15:43:56', '2014-01-07 15:43:56'),
(681, NULL, NULL, 'ST_BLOG_C_MODERATE', '1', '2014-01-07 15:43:59', '2014-01-07 15:43:59'),
(682, NULL, NULL, 'ST_BLOG_C_MINIMAL_TIME', '30', '2014-01-07 15:43:59', '2014-01-07 15:43:59'),
(683, NULL, NULL, 'ST_BLOG_C_ALLOW_GUESTS', '0', '2014-01-07 15:44:00', '2014-01-07 15:44:00'),
(684, NULL, NULL, 'ST_BLOG_C_COLUMN_NBR', '4', '2014-01-07 15:44:00', '2014-01-07 15:44:00'),
(685, NULL, NULL, 'ST_RELATED_BY_TAG', '1', '2014-01-07 15:44:21', '2014-01-15 17:04:33'),
(686, NULL, NULL, 'ST_RELATED_NBR', '8', '2014-01-07 15:44:21', '2014-01-07 15:44:21'),
(687, NULL, NULL, 'ST_RELATED_EASING', '0', '2014-01-07 15:44:21', '2014-01-15 17:04:33'),
(688, NULL, NULL, 'ST_RELATED_SLIDESHOW', '0', '2014-01-07 15:44:21', '2014-01-15 17:04:33'),
(689, NULL, NULL, 'ST_RELATED_S_SPEED', '7000', '2014-01-07 15:44:21', '2014-01-07 15:44:21'),
(690, NULL, NULL, 'ST_RELATED_A_SPEED', '400', '2014-01-07 15:44:21', '2014-01-07 15:44:21'),
(691, NULL, NULL, 'ST_RELATED_PAUSE_ON_HOVER', '1', '2014-01-07 15:44:21', '2014-01-07 15:44:21'),
(692, NULL, NULL, 'ST_RELATED_LOOP', '0', '2014-01-07 15:44:22', '2014-01-15 17:04:33'),
(693, NULL, NULL, 'ST_RELATED_MOVE', '0', '2014-01-07 15:44:22', '2014-01-15 17:04:33'),
(694, NULL, NULL, 'ST_RELATED_ITEMS', '4', '2014-01-07 15:44:22', '2014-01-07 15:44:22'),
(695, NULL, NULL, 'ST_RELATED_NBR_COL', '8', '2014-01-07 15:44:22', '2014-01-07 15:44:22'),
(696, NULL, NULL, 'ST_RELATED_EASING_COL', '0', '2014-01-07 15:44:22', '2014-01-15 17:04:34'),
(697, NULL, NULL, 'ST_RELATED_SLIDESHOW_COL', '0', '2014-01-07 15:44:22', '2014-01-15 17:04:34'),
(698, NULL, NULL, 'ST_RELATED_S_SPEED_COL', '7000', '2014-01-07 15:44:22', '2014-01-07 15:44:22'),
(699, NULL, NULL, 'ST_RELATED_A_SPEED_COL', '400', '2014-01-07 15:44:22', '2014-01-07 15:44:22'),
(700, NULL, NULL, 'ST_RELATED_PAUSE_ON_HOVER_COL', '1', '2014-01-07 15:44:22', '2014-01-07 15:44:22'),
(701, NULL, NULL, 'ST_RELATED_LOOP_COL', '0', '2014-01-07 15:44:22', '2014-01-15 17:04:34'),
(702, NULL, NULL, 'ST_RELATED_MOVE_COL', '0', '2014-01-07 15:44:22', '2014-01-15 17:04:34'),
(703, NULL, NULL, 'ST_RELATED_ITEMS_COL', '4', '2014-01-07 15:44:23', '2014-01-15 00:50:15'),
(704, NULL, NULL, 'ST_RELATED_SOBY', '1', '2014-01-07 15:44:23', '2014-01-07 15:44:23'),
(705, NULL, NULL, 'ST_RELATED_SOBY_COL', '1', '2014-01-07 15:44:23', '2014-01-07 15:44:23'),
(706, NULL, NULL, 'ST_RELATED_HIDE_MOB', '0', '2014-01-07 15:44:23', '2014-01-15 17:04:33'),
(707, NULL, NULL, 'ST_RELATED_HIDE_MOB_COL', '0', '2014-01-07 15:44:23', '2014-01-15 17:04:34'),
(708, NULL, NULL, 'ST_PRO_CATE_F_C_NUMBER', '5', '2014-01-07 15:44:25', '2014-01-07 15:44:25'),
(709, NULL, NULL, 'ST_PRO_CATE_F_C_IMAGE', '1', '2014-01-07 15:44:25', '2014-01-07 15:44:25'),
(710, NULL, NULL, 'CUSTPRIV_MESSAGE', NULL, '2014-01-07 15:44:35', '2014-01-07 15:44:35'),
(711, NULL, NULL, 'PRODUCTSCATEGORY_DISPLAY_PRICE', '0', '2014-01-07 15:44:39', '2014-01-07 15:44:39'),
(712, NULL, NULL, 'CROSSSELLING_DISPLAY_PRICE', '0', '2014-01-07 15:44:44', '2014-01-07 15:44:44'),
(713, NULL, NULL, 'CROSSSELLING_NBR', '10', '2014-01-07 15:44:45', '2014-01-07 15:44:45'),
(714, NULL, NULL, 'PRODUCT_COMMENTS_MINIMAL_TIME', '30', '2014-01-07 15:44:48', '2014-01-07 15:44:48'),
(715, NULL, NULL, 'PRODUCT_COMMENTS_ALLOW_GUESTS', '0', '2014-01-07 15:44:48', '2014-01-07 15:44:48'),
(716, NULL, NULL, 'PRODUCT_COMMENTS_MODERATE', '1', '2014-01-07 15:44:48', '2014-01-07 15:44:48'),
(717, NULL, NULL, 'PS_LAYERED_HIDE_0_VALUES', '1', '2014-01-07 15:44:54', '2014-01-07 15:44:54'),
(718, NULL, NULL, 'PS_LAYERED_SHOW_QTIES', '1', '2014-01-07 15:44:54', '2014-01-07 15:44:54'),
(719, NULL, NULL, 'PS_LAYERED_FULL_TREE', '1', '2014-01-07 15:44:54', '2014-01-07 15:44:54'),
(720, NULL, NULL, 'PS_LAYERED_FILTER_PRICE_USETAX', '1', '2014-01-07 15:44:54', '2014-01-07 15:44:54'),
(721, NULL, NULL, 'PS_LAYERED_FILTER_CATEGORY_DEPTH', '1', '2014-01-07 15:44:54', '2014-01-07 15:44:54'),
(722, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_QTY', '0', '2014-01-07 15:44:55', '2014-01-07 15:44:55'),
(723, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_CDT', '0', '2014-01-07 15:44:55', '2014-01-07 15:44:55'),
(724, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_MNF', '0', '2014-01-07 15:44:55', '2014-01-07 15:44:55'),
(725, NULL, NULL, 'PS_LAYERED_FILTER_INDEX_CAT', '0', '2014-01-07 15:44:55', '2014-01-07 15:44:55'),
(726, NULL, NULL, 'PS_LAYERED_INDEXED', '1', '2014-01-07 15:45:10', '2014-01-07 15:45:10'),
(727, NULL, NULL, 'PS_SHOW_TYPE_MODULES_1', 'allModules', '2014-01-07 16:39:18', '2014-01-12 10:46:43'),
(728, NULL, NULL, 'PS_SHOW_COUNTRY_MODULES_1', '0', '2014-01-07 16:39:18', '2014-01-13 15:45:07'),
(729, NULL, NULL, 'PS_SHOW_INSTALLED_MODULES_1', 'installedUninstalled', '2014-01-07 16:39:18', '2014-01-07 16:39:18'),
(730, NULL, NULL, 'PS_SHOW_ENABLED_MODULES_1', 'enabledDisabled', '2014-01-07 16:39:18', '2014-01-07 16:39:18'),
(731, NULL, NULL, 'PS_SHOW_CAT_MODULES_1', 'favorites', '2014-01-07 16:43:58', '2014-01-15 17:17:30'),
(732, NULL, NULL, 'PS_CSS_THEME_CACHE', '0', '2014-01-07 17:51:12', '2014-01-07 17:51:12'),
(733, NULL, NULL, 'PS_JS_THEME_CACHE', '0', '2014-01-07 17:51:12', '2014-01-07 17:51:12'),
(734, NULL, NULL, 'PS_HTML_THEME_COMPRESSION', '0', '2014-01-07 17:51:12', '2014-01-07 17:51:12'),
(735, NULL, NULL, 'PS_JS_HTML_THEME_COMPRESSION', '0', '2014-01-07 17:51:12', '2014-01-07 17:51:12'),
(736, NULL, NULL, 'PS_HTACCESS_CACHE_CONTROL', '0', '2014-01-07 17:51:12', '2014-01-07 17:51:12'),
(737, NULL, NULL, 'PS_PRODUCT_SHORT_DESC_LIMIT', '0', '2014-01-09 17:26:49', '2014-01-12 15:56:39'),
(738, NULL, NULL, 'PS_QTY_DISCOUNT_ON_COMBINATION', '0', '2014-01-09 17:26:49', '2014-01-12 15:56:39'),
(739, NULL, NULL, 'PS_DISPLAY_DISCOUNT_PRICE', '0', '2014-01-09 17:26:50', '2014-01-12 15:56:40'),
(740, NULL, NULL, 'PS_ALLOW_MULTISHIPPING', '0', '2014-01-09 23:43:22', '2014-01-09 23:43:22'),
(741, NULL, NULL, 'PS_SHIP_WHEN_AVAILABLE', '0', '2014-01-09 23:43:22', '2014-01-09 23:43:22'),
(742, NULL, NULL, 'PS_GIFT_WRAPPING_TAX_RULES_GROUP', '0', '2014-01-09 23:43:22', '2014-01-09 23:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `ps_configuration_lang`
--

CREATE TABLE IF NOT EXISTS `ps_configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_configuration_lang`
--

INSERT INTO `ps_configuration_lang` (`id_configuration`, `id_lang`, `value`, `date_upd`) VALUES
(40, 1, 'IN', NULL),
(42, 1, 'DE', NULL),
(49, 1, 'a|the|of|on|in|and|to', NULL),
(71, 1, '0', NULL),
(77, 1, 'Dear Customer,\r\n\r\nRegards,\r\nCustomer service', NULL),
(271, 1, 'Welcome', '2014-01-07 15:42:21'),
(271, 3, '', '2014-01-16 23:05:40'),
(272, 1, 'Welcome', '2014-01-07 15:42:22'),
(272, 3, 'שלום', '2014-01-07 18:28:10'),
(273, 1, '', '2014-01-07 16:46:36'),
(273, 3, '', '2014-01-07 16:46:36'),
(275, 1, '&copy; 2013 Powered by Presta Shop&trade;. All Rights Reserved', '2014-01-07 15:42:22'),
(275, 3, '&copy; 2013 Powered by Presta Shop&trade;. All Rights Reserved', '2014-01-07 16:46:37'),
(276, 1, 'Search here', '2014-01-07 15:42:22'),
(276, 3, 'חיפוש', '2014-01-07 18:28:10'),
(277, 1, 'Your e-mail', '2014-01-07 15:42:22'),
(277, 3, 'כתובת מייל', '2014-01-07 18:28:11'),
(628, 1, 'Twitter feed', '2014-01-07 15:43:35'),
(644, 1, 'Prestashop Blog', '2014-01-07 15:43:43'),
(645, 1, 'Prestashop Blog', '2014-01-07 15:43:43'),
(646, 1, 'Prestashop Blog', '2014-01-07 15:43:43'),
(710, 1, 'The personal data you provide is used to answer queries, process orders or allow access to specific information. You have the right to modify and delete all the personal information found in the &quot;My Account&quot; page. ', '2014-01-07 15:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `ps_connections`
--

CREATE TABLE IF NOT EXISTS `ps_connections` (
  `id_connections` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `ps_connections`
--

INSERT INTO `ps_connections` (`id_connections`, `id_shop_group`, `id_shop`, `id_guest`, `id_page`, `ip_address`, `date_add`, `http_referer`) VALUES
(1, 1, 1, 1, 1, 2130706433, '2014-01-06 22:19:42', 'http://www.prestashop.com'),
(2, 1, 1, 2, 1, 2130706433, '2014-01-06 22:32:27', ''),
(3, 1, 1, 2, 1, 2130706433, '2014-01-06 23:08:57', ''),
(4, 1, 1, 2, 1, 2130706433, '2014-01-07 16:01:27', ''),
(5, 1, 1, 2, 1, 2130706433, '2014-01-07 17:33:46', ''),
(6, 1, 1, 2, 1, 2130706433, '2014-01-07 23:10:22', ''),
(7, 1, 1, 2, 1, 2130706433, '2014-01-08 17:54:46', ''),
(8, 1, 1, 2, 1, 2130706433, '2014-01-09 15:47:26', ''),
(9, 1, 1, 2, 2, 2130706433, '2014-01-12 00:09:35', ''),
(10, 1, 1, 2, 3, 2130706433, '2014-01-12 15:57:03', ''),
(11, 1, 1, 2, 3, 2130706433, '2014-01-13 16:08:31', ''),
(12, 1, 1, 2, 3, 2130706433, '2014-01-13 22:16:00', ''),
(13, 1, 1, 2, 1, 2130706433, '2014-01-16 15:36:30', ''),
(14, 1, 1, 2, 1, 2130706433, '2014-01-16 22:51:52', ''),
(15, 1, 1, 3, 4, 2130706433, '2014-01-16 23:21:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_connections_page`
--

CREATE TABLE IF NOT EXISTS `ps_connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_connections_source`
--

CREATE TABLE IF NOT EXISTS `ps_connections_source` (
  `id_connections_source` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_connections_source`
--

INSERT INTO `ps_connections_source` (`id_connections_source`, `id_connections`, `http_referer`, `request_uri`, `keywords`, `date_add`) VALUES
(1, 2, 'http://localhost/1561/', 'localhost/1561/prestashop/index.php', '', '2014-01-06 22:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `ps_contact`
--

CREATE TABLE IF NOT EXISTS `ps_contact` (
  `id_contact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_contact`
--

INSERT INTO `ps_contact` (`id_contact`, `email`, `customer_service`, `position`) VALUES
(1, 'volfson@walla.co.il', 1, 0),
(2, 'volfson@walla.co.il', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_contact_lang`
--

CREATE TABLE IF NOT EXISTS `ps_contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_contact`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_contact_lang`
--

INSERT INTO `ps_contact_lang` (`id_contact`, `id_lang`, `name`, `description`) VALUES
(1, 1, 'Webmaster', 'If a technical problem occurs on this website'),
(1, 3, 'Webmaster', 'If a technical problem occurs on this website'),
(2, 1, 'Customer service', 'For any question about a product, an order'),
(2, 3, 'Customer service', 'For any question about a product, an order');

-- --------------------------------------------------------

--
-- Table structure for table `ps_contact_shop`
--

CREATE TABLE IF NOT EXISTS `ps_contact_shop` (
  `id_contact` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_contact`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_contact_shop`
--

INSERT INTO `ps_contact_shop` (`id_contact`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_country`
--

CREATE TABLE IF NOT EXISTS `ps_country` (
  `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `ps_country`
--

INSERT INTO `ps_country` (`id_country`, `id_zone`, `id_currency`, `iso_code`, `call_prefix`, `active`, `contains_states`, `need_identification_number`, `need_zip_code`, `zip_code_format`, `display_tax_label`) VALUES
(1, 1, 0, 'DE', 49, 0, 0, 0, 1, 'NNNNN', 1),
(2, 1, 0, 'AT', 43, 0, 0, 0, 1, 'NNNN', 1),
(3, 1, 0, 'BE', 32, 0, 0, 0, 1, 'NNNN', 1),
(4, 2, 0, 'CA', 1, 0, 1, 0, 1, 'LNL NLN', 0),
(5, 3, 0, 'CN', 86, 0, 0, 0, 1, 'NNNNNN', 1),
(6, 1, 0, 'ES', 34, 0, 0, 1, 1, 'NNNNN', 1),
(7, 1, 0, 'FI', 358, 0, 0, 0, 1, 'NNNNN', 1),
(8, 1, 0, 'FR', 33, 0, 0, 0, 1, 'NNNNN', 1),
(9, 1, 0, 'GR', 30, 0, 0, 0, 1, 'NNNNN', 1),
(10, 1, 0, 'IT', 39, 0, 1, 0, 1, 'NNNNN', 1),
(11, 3, 0, 'JP', 81, 0, 1, 0, 1, 'NNN-NNNN', 1),
(12, 1, 0, 'LU', 352, 0, 0, 0, 1, 'NNNN', 1),
(13, 1, 0, 'NL', 31, 0, 0, 0, 1, 'NNNN LL', 1),
(14, 1, 0, 'PL', 48, 0, 0, 0, 1, 'NN-NNN', 1),
(15, 1, 0, 'PT', 351, 0, 0, 0, 1, 'NNNN NNN', 1),
(16, 1, 0, 'CZ', 420, 0, 0, 0, 1, 'NNN NN', 1),
(17, 1, 0, 'GB', 44, 0, 0, 0, 1, '', 1),
(18, 1, 0, 'SE', 46, 0, 0, 0, 1, 'NNN NN', 1),
(19, 7, 0, 'CH', 41, 0, 0, 0, 1, 'NNNN', 1),
(20, 1, 0, 'DK', 45, 0, 0, 0, 1, 'NNNN', 1),
(21, 2, 0, 'US', 1, 0, 1, 0, 1, 'NNNNN', 0),
(22, 3, 0, 'HK', 852, 0, 0, 0, 0, '', 1),
(23, 7, 0, 'NO', 47, 0, 0, 0, 1, 'NNNN', 1),
(24, 5, 0, 'AU', 61, 0, 0, 0, 1, 'NNNN', 1),
(25, 3, 0, 'SG', 65, 0, 0, 0, 1, 'NNNNNN', 1),
(26, 1, 0, 'IE', 353, 0, 0, 0, 1, '', 1),
(27, 5, 0, 'NZ', 64, 0, 0, 0, 1, 'NNNN', 1),
(28, 3, 0, 'KR', 82, 0, 0, 0, 1, 'NNN-NNN', 1),
(29, 3, 0, 'IL', 972, 1, 0, 0, 1, 'NNNNN', 1),
(30, 4, 0, 'ZA', 27, 0, 0, 0, 1, 'NNNN', 1),
(31, 4, 0, 'NG', 234, 0, 0, 0, 1, '', 1),
(32, 4, 0, 'CI', 225, 0, 0, 0, 1, '', 1),
(33, 4, 0, 'TG', 228, 0, 0, 0, 1, '', 1),
(34, 6, 0, 'BO', 591, 0, 0, 0, 1, '', 1),
(35, 4, 0, 'MU', 230, 0, 0, 0, 1, '', 1),
(36, 1, 0, 'RO', 40, 0, 0, 0, 1, 'NNNNNN', 1),
(37, 1, 0, 'SK', 421, 0, 0, 0, 1, 'NNN NN', 1),
(38, 4, 0, 'DZ', 213, 0, 0, 0, 1, 'NNNNN', 1),
(39, 2, 0, 'AS', 0, 0, 0, 0, 1, '', 1),
(40, 7, 0, 'AD', 376, 0, 0, 0, 1, 'CNNN', 1),
(41, 4, 0, 'AO', 244, 0, 0, 0, 0, '', 1),
(42, 8, 0, 'AI', 0, 0, 0, 0, 1, '', 1),
(43, 2, 0, 'AG', 0, 0, 0, 0, 1, '', 1),
(44, 6, 0, 'AR', 54, 0, 1, 0, 1, 'LNNNN', 1),
(45, 3, 0, 'AM', 374, 0, 0, 0, 1, 'NNNN', 1),
(46, 8, 0, 'AW', 297, 0, 0, 0, 1, '', 1),
(47, 3, 0, 'AZ', 994, 0, 0, 0, 1, 'CNNNN', 1),
(48, 2, 0, 'BS', 0, 0, 0, 0, 1, '', 1),
(49, 3, 0, 'BH', 973, 0, 0, 0, 1, '', 1),
(50, 3, 0, 'BD', 880, 0, 0, 0, 1, 'NNNN', 1),
(51, 2, 0, 'BB', 0, 0, 0, 0, 1, 'CNNNNN', 1),
(52, 7, 0, 'BY', 0, 0, 0, 0, 1, 'NNNNNN', 1),
(53, 8, 0, 'BZ', 501, 0, 0, 0, 0, '', 1),
(54, 4, 0, 'BJ', 229, 0, 0, 0, 0, '', 1),
(55, 2, 0, 'BM', 0, 0, 0, 0, 1, '', 1),
(56, 3, 0, 'BT', 975, 0, 0, 0, 1, '', 1),
(57, 4, 0, 'BW', 267, 0, 0, 0, 1, '', 1),
(58, 6, 0, 'BR', 55, 0, 0, 0, 1, 'NNNNN-NNN', 1),
(59, 3, 0, 'BN', 673, 0, 0, 0, 1, 'LLNNNN', 1),
(60, 4, 0, 'BF', 226, 0, 0, 0, 1, '', 1),
(61, 3, 0, 'MM', 95, 0, 0, 0, 1, '', 1),
(62, 4, 0, 'BI', 257, 0, 0, 0, 1, '', 1),
(63, 3, 0, 'KH', 855, 0, 0, 0, 1, 'NNNNN', 1),
(64, 4, 0, 'CM', 237, 0, 0, 0, 1, '', 1),
(65, 4, 0, 'CV', 238, 0, 0, 0, 1, 'NNNN', 1),
(66, 4, 0, 'CF', 236, 0, 0, 0, 1, '', 1),
(67, 4, 0, 'TD', 235, 0, 0, 0, 1, '', 1),
(68, 6, 0, 'CL', 56, 0, 0, 0, 1, 'NNN-NNNN', 1),
(69, 6, 0, 'CO', 57, 0, 0, 0, 1, 'NNNNNN', 1),
(70, 4, 0, 'KM', 269, 0, 0, 0, 1, '', 1),
(71, 4, 0, 'CD', 242, 0, 0, 0, 1, '', 1),
(72, 4, 0, 'CG', 243, 0, 0, 0, 1, '', 1),
(73, 8, 0, 'CR', 506, 0, 0, 0, 1, 'NNNNN', 1),
(74, 7, 0, 'HR', 385, 0, 0, 0, 1, 'NNNNN', 1),
(75, 8, 0, 'CU', 53, 0, 0, 0, 1, '', 1),
(76, 1, 0, 'CY', 357, 0, 0, 0, 1, 'NNNN', 1),
(77, 4, 0, 'DJ', 253, 0, 0, 0, 1, '', 1),
(78, 8, 0, 'DM', 0, 0, 0, 0, 1, '', 1),
(79, 8, 0, 'DO', 0, 0, 0, 0, 1, '', 1),
(80, 3, 0, 'TL', 670, 0, 0, 0, 1, '', 1),
(81, 6, 0, 'EC', 593, 0, 0, 0, 1, 'CNNNNNN', 1),
(82, 4, 0, 'EG', 20, 0, 0, 0, 0, '', 1),
(83, 8, 0, 'SV', 503, 0, 0, 0, 1, '', 1),
(84, 4, 0, 'GQ', 240, 0, 0, 0, 1, '', 1),
(85, 4, 0, 'ER', 291, 0, 0, 0, 1, '', 1),
(86, 1, 0, 'EE', 372, 0, 0, 0, 1, 'NNNNN', 1),
(87, 4, 0, 'ET', 251, 0, 0, 0, 1, '', 1),
(88, 8, 0, 'FK', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(89, 7, 0, 'FO', 298, 0, 0, 0, 1, '', 1),
(90, 5, 0, 'FJ', 679, 0, 0, 0, 1, '', 1),
(91, 4, 0, 'GA', 241, 0, 0, 0, 1, '', 1),
(92, 4, 0, 'GM', 220, 0, 0, 0, 1, '', 1),
(93, 3, 0, 'GE', 995, 0, 0, 0, 1, 'NNNN', 1),
(94, 4, 0, 'GH', 233, 0, 0, 0, 1, '', 1),
(95, 8, 0, 'GD', 0, 0, 0, 0, 1, '', 1),
(96, 7, 0, 'GL', 299, 0, 0, 0, 1, '', 1),
(97, 7, 0, 'GI', 350, 0, 0, 0, 1, '', 1),
(98, 8, 0, 'GP', 590, 0, 0, 0, 1, '', 1),
(99, 5, 0, 'GU', 0, 0, 0, 0, 1, '', 1),
(100, 8, 0, 'GT', 502, 0, 0, 0, 1, '', 1),
(101, 7, 0, 'GG', 0, 0, 0, 0, 1, 'LLN NLL', 1),
(102, 4, 0, 'GN', 224, 0, 0, 0, 1, '', 1),
(103, 4, 0, 'GW', 245, 0, 0, 0, 1, '', 1),
(104, 6, 0, 'GY', 592, 0, 0, 0, 1, '', 1),
(105, 8, 0, 'HT', 509, 0, 0, 0, 1, '', 1),
(106, 5, 0, 'HM', 0, 0, 0, 0, 1, '', 1),
(107, 7, 0, 'VA', 379, 0, 0, 0, 1, 'NNNNN', 1),
(108, 8, 0, 'HN', 504, 0, 0, 0, 1, '', 1),
(109, 7, 0, 'IS', 354, 0, 0, 0, 1, 'NNN', 1),
(110, 3, 0, 'IN', 91, 0, 0, 0, 1, 'NNN NNN', 1),
(111, 3, 0, 'ID', 62, 0, 1, 0, 1, 'NNNNN', 1),
(112, 3, 0, 'IR', 98, 0, 0, 0, 1, 'NNNNN-NNNNN', 1),
(113, 3, 0, 'IQ', 964, 0, 0, 0, 1, 'NNNNN', 1),
(114, 7, 0, 'IM', 0, 0, 0, 0, 1, 'CN NLL', 1),
(115, 8, 0, 'JM', 0, 0, 0, 0, 1, '', 1),
(116, 7, 0, 'JE', 0, 0, 0, 0, 1, 'CN NLL', 1),
(117, 3, 0, 'JO', 962, 0, 0, 0, 1, '', 1),
(118, 3, 0, 'KZ', 7, 0, 0, 0, 1, 'NNNNNN', 1),
(119, 4, 0, 'KE', 254, 0, 0, 0, 1, '', 1),
(120, 5, 0, 'KI', 686, 0, 0, 0, 1, '', 1),
(121, 3, 0, 'KP', 850, 0, 0, 0, 1, '', 1),
(122, 3, 0, 'KW', 965, 0, 0, 0, 1, '', 1),
(123, 3, 0, 'KG', 996, 0, 0, 0, 1, '', 1),
(124, 3, 0, 'LA', 856, 0, 0, 0, 1, '', 1),
(125, 1, 0, 'LV', 371, 0, 0, 0, 1, 'C-NNNN', 1),
(126, 3, 0, 'LB', 961, 0, 0, 0, 1, '', 1),
(127, 4, 0, 'LS', 266, 0, 0, 0, 1, '', 1),
(128, 4, 0, 'LR', 231, 0, 0, 0, 1, '', 1),
(129, 4, 0, 'LY', 218, 0, 0, 0, 1, '', 1),
(130, 1, 0, 'LI', 423, 0, 0, 0, 1, 'NNNN', 1),
(131, 1, 0, 'LT', 370, 0, 0, 0, 1, 'NNNNN', 1),
(132, 3, 0, 'MO', 853, 0, 0, 0, 0, '', 1),
(133, 7, 0, 'MK', 389, 0, 0, 0, 1, '', 1),
(134, 4, 0, 'MG', 261, 0, 0, 0, 1, '', 1),
(135, 4, 0, 'MW', 265, 0, 0, 0, 1, '', 1),
(136, 3, 0, 'MY', 60, 0, 0, 0, 1, 'NNNNN', 1),
(137, 3, 0, 'MV', 960, 0, 0, 0, 1, '', 1),
(138, 4, 0, 'ML', 223, 0, 0, 0, 1, '', 1),
(139, 1, 0, 'MT', 356, 0, 0, 0, 1, 'LLL NNNN', 1),
(140, 5, 0, 'MH', 692, 0, 0, 0, 1, '', 1),
(141, 8, 0, 'MQ', 596, 0, 0, 0, 1, '', 1),
(142, 4, 0, 'MR', 222, 0, 0, 0, 1, '', 1),
(143, 1, 0, 'HU', 36, 0, 0, 0, 1, 'NNNN', 1),
(144, 4, 0, 'YT', 262, 0, 0, 0, 1, '', 1),
(145, 2, 0, 'MX', 52, 0, 1, 1, 1, 'NNNNN', 1),
(146, 5, 0, 'FM', 691, 0, 0, 0, 1, '', 1),
(147, 7, 0, 'MD', 373, 0, 0, 0, 1, 'C-NNNN', 1),
(148, 7, 0, 'MC', 377, 0, 0, 0, 1, '980NN', 1),
(149, 3, 0, 'MN', 976, 0, 0, 0, 1, '', 1),
(150, 7, 0, 'ME', 382, 0, 0, 0, 1, 'NNNNN', 1),
(151, 8, 0, 'MS', 0, 0, 0, 0, 1, '', 1),
(152, 4, 0, 'MA', 212, 0, 0, 0, 1, 'NNNNN', 1),
(153, 4, 0, 'MZ', 258, 0, 0, 0, 1, '', 1),
(154, 4, 0, 'NA', 264, 0, 0, 0, 1, '', 1),
(155, 5, 0, 'NR', 674, 0, 0, 0, 1, '', 1),
(156, 3, 0, 'NP', 977, 0, 0, 0, 1, '', 1),
(157, 8, 0, 'AN', 599, 0, 0, 0, 1, '', 1),
(158, 5, 0, 'NC', 687, 0, 0, 0, 1, '', 1),
(159, 8, 0, 'NI', 505, 0, 0, 0, 1, 'NNNNNN', 1),
(160, 4, 0, 'NE', 227, 0, 0, 0, 1, '', 1),
(161, 5, 0, 'NU', 683, 0, 0, 0, 1, '', 1),
(162, 5, 0, 'NF', 0, 0, 0, 0, 1, '', 1),
(163, 5, 0, 'MP', 0, 0, 0, 0, 1, '', 1),
(164, 3, 0, 'OM', 968, 0, 0, 0, 1, '', 1),
(165, 3, 0, 'PK', 92, 0, 0, 0, 1, '', 1),
(166, 5, 0, 'PW', 680, 0, 0, 0, 1, '', 1),
(167, 3, 0, 'PS', 0, 0, 0, 0, 1, '', 1),
(168, 8, 0, 'PA', 507, 0, 0, 0, 1, 'NNNNNN', 1),
(169, 5, 0, 'PG', 675, 0, 0, 0, 1, '', 1),
(170, 6, 0, 'PY', 595, 0, 0, 0, 1, '', 1),
(171, 6, 0, 'PE', 51, 0, 0, 0, 1, '', 1),
(172, 3, 0, 'PH', 63, 0, 0, 0, 1, 'NNNN', 1),
(173, 5, 0, 'PN', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(174, 8, 0, 'PR', 0, 0, 0, 0, 1, 'NNNNN', 1),
(175, 3, 0, 'QA', 974, 0, 0, 0, 1, '', 1),
(176, 4, 0, 'RE', 262, 0, 0, 0, 1, '', 1),
(177, 7, 0, 'RU', 7, 0, 0, 0, 1, 'NNNNNN', 1),
(178, 4, 0, 'RW', 250, 0, 0, 0, 1, '', 1),
(179, 8, 0, 'BL', 0, 0, 0, 0, 1, '', 1),
(180, 8, 0, 'KN', 0, 0, 0, 0, 1, '', 1),
(181, 8, 0, 'LC', 0, 0, 0, 0, 1, '', 1),
(182, 8, 0, 'MF', 0, 0, 0, 0, 1, '', 1),
(183, 8, 0, 'PM', 508, 0, 0, 0, 1, '', 1),
(184, 8, 0, 'VC', 0, 0, 0, 0, 1, '', 1),
(185, 5, 0, 'WS', 685, 0, 0, 0, 1, '', 1),
(186, 7, 0, 'SM', 378, 0, 0, 0, 1, 'NNNNN', 1),
(187, 4, 0, 'ST', 239, 0, 0, 0, 1, '', 1),
(188, 3, 0, 'SA', 966, 0, 0, 0, 1, '', 1),
(189, 4, 0, 'SN', 221, 0, 0, 0, 1, '', 1),
(190, 7, 0, 'RS', 381, 0, 0, 0, 1, 'NNNNN', 1),
(191, 4, 0, 'SC', 248, 0, 0, 0, 1, '', 1),
(192, 4, 0, 'SL', 232, 0, 0, 0, 1, '', 1),
(193, 1, 0, 'SI', 386, 0, 0, 0, 1, 'C-NNNN', 1),
(194, 5, 0, 'SB', 677, 0, 0, 0, 1, '', 1),
(195, 4, 0, 'SO', 252, 0, 0, 0, 1, '', 1),
(196, 8, 0, 'GS', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(197, 3, 0, 'LK', 94, 0, 0, 0, 1, 'NNNNN', 1),
(198, 4, 0, 'SD', 249, 0, 0, 0, 1, '', 1),
(199, 8, 0, 'SR', 597, 0, 0, 0, 1, '', 1),
(200, 7, 0, 'SJ', 0, 0, 0, 0, 1, '', 1),
(201, 4, 0, 'SZ', 268, 0, 0, 0, 1, '', 1),
(202, 3, 0, 'SY', 963, 0, 0, 0, 1, '', 1),
(203, 3, 0, 'TW', 886, 0, 0, 0, 1, 'NNNNN', 1),
(204, 3, 0, 'TJ', 992, 0, 0, 0, 1, '', 1),
(205, 4, 0, 'TZ', 255, 0, 0, 0, 1, '', 1),
(206, 3, 0, 'TH', 66, 0, 0, 0, 1, 'NNNNN', 1),
(207, 5, 0, 'TK', 690, 0, 0, 0, 1, '', 1),
(208, 5, 0, 'TO', 676, 0, 0, 0, 1, '', 1),
(209, 6, 0, 'TT', 0, 0, 0, 0, 1, '', 1),
(210, 4, 0, 'TN', 216, 0, 0, 0, 1, '', 1),
(211, 7, 0, 'TR', 90, 0, 0, 0, 1, 'NNNNN', 1),
(212, 3, 0, 'TM', 993, 0, 0, 0, 1, '', 1),
(213, 8, 0, 'TC', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(214, 5, 0, 'TV', 688, 0, 0, 0, 1, '', 1),
(215, 4, 0, 'UG', 256, 0, 0, 0, 1, '', 1),
(216, 1, 0, 'UA', 380, 0, 0, 0, 1, 'NNNNN', 1),
(217, 3, 0, 'AE', 971, 0, 0, 0, 1, '', 1),
(218, 6, 0, 'UY', 598, 0, 0, 0, 1, '', 1),
(219, 3, 0, 'UZ', 998, 0, 0, 0, 1, '', 1),
(220, 5, 0, 'VU', 678, 0, 0, 0, 1, '', 1),
(221, 6, 0, 'VE', 58, 0, 0, 0, 1, '', 1),
(222, 3, 0, 'VN', 84, 0, 0, 0, 1, 'NNNNNN', 1),
(223, 2, 0, 'VG', 0, 0, 0, 0, 1, 'CNNNN', 1),
(224, 2, 0, 'VI', 0, 0, 0, 0, 1, '', 1),
(225, 5, 0, 'WF', 681, 0, 0, 0, 1, '', 1),
(226, 4, 0, 'EH', 0, 0, 0, 0, 1, '', 1),
(227, 3, 0, 'YE', 967, 0, 0, 0, 1, '', 1),
(228, 4, 0, 'ZM', 260, 0, 0, 0, 1, '', 1),
(229, 4, 0, 'ZW', 263, 0, 0, 0, 1, '', 1),
(230, 7, 0, 'AL', 355, 0, 0, 0, 1, 'NNNN', 1),
(231, 3, 0, 'AF', 93, 0, 0, 0, 0, '', 1),
(232, 5, 0, 'AQ', 0, 0, 0, 0, 1, '', 1),
(233, 1, 0, 'BA', 387, 0, 0, 0, 1, '', 1),
(234, 5, 0, 'BV', 0, 0, 0, 0, 1, '', 1),
(235, 5, 0, 'IO', 0, 0, 0, 0, 1, 'LLLL NLL', 1),
(236, 1, 0, 'BG', 359, 0, 0, 0, 1, 'NNNN', 1),
(237, 8, 0, 'KY', 0, 0, 0, 0, 1, '', 1),
(238, 3, 0, 'CX', 0, 0, 0, 0, 1, '', 1),
(239, 3, 0, 'CC', 0, 0, 0, 0, 1, '', 1),
(240, 5, 0, 'CK', 682, 0, 0, 0, 1, '', 1),
(241, 6, 0, 'GF', 594, 0, 0, 0, 1, '', 1),
(242, 5, 0, 'PF', 689, 0, 0, 0, 1, '', 1),
(243, 5, 0, 'TF', 0, 0, 0, 0, 1, '', 1),
(244, 7, 0, 'AX', 0, 0, 0, 0, 1, 'NNNNN', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_country_lang`
--

CREATE TABLE IF NOT EXISTS `ps_country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_country`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_country_lang`
--

INSERT INTO `ps_country_lang` (`id_country`, `id_lang`, `name`) VALUES
(1, 1, 'Germany'),
(1, 3, 'Germany'),
(2, 1, 'Austria'),
(2, 3, 'Austria'),
(3, 1, 'Belgium'),
(3, 3, 'Belgium'),
(4, 1, 'Canada'),
(4, 3, 'Canada'),
(5, 1, 'China'),
(5, 3, 'China'),
(6, 1, 'Spain'),
(6, 3, 'Spain'),
(7, 1, 'Finland'),
(7, 3, 'Finland'),
(8, 1, 'France'),
(8, 3, 'France'),
(9, 1, 'Greece'),
(9, 3, 'Greece'),
(10, 1, 'Italy'),
(10, 3, 'Italy'),
(11, 1, 'Japan'),
(11, 3, 'Japan'),
(12, 1, 'Luxemburg'),
(12, 3, 'Luxemburg'),
(13, 1, 'Netherlands'),
(13, 3, 'Netherlands'),
(14, 1, 'Poland'),
(14, 3, 'Poland'),
(15, 1, 'Portugal'),
(15, 3, 'Portugal'),
(16, 1, 'Czech Republic'),
(16, 3, 'Czech Republic'),
(17, 1, 'United Kingdom'),
(17, 3, 'United Kingdom'),
(18, 1, 'Sweden'),
(18, 3, 'Sweden'),
(19, 1, 'Switzerland'),
(19, 3, 'Switzerland'),
(20, 1, 'Denmark'),
(20, 3, 'Denmark'),
(21, 1, 'United States'),
(21, 3, 'United States'),
(22, 1, 'HongKong'),
(22, 3, 'HongKong'),
(23, 1, 'Norway'),
(23, 3, 'Norway'),
(24, 1, 'Australia'),
(24, 3, 'Australia'),
(25, 1, 'Singapore'),
(25, 3, 'Singapore'),
(26, 1, 'Ireland'),
(26, 3, 'Ireland'),
(27, 1, 'New Zealand'),
(27, 3, 'New Zealand'),
(28, 1, 'South Korea'),
(28, 3, 'South Korea'),
(29, 1, 'Israel'),
(29, 3, 'Israel'),
(30, 1, 'South Africa'),
(30, 3, 'South Africa'),
(31, 1, 'Nigeria'),
(31, 3, 'Nigeria'),
(32, 1, 'Ivory Coast'),
(32, 3, 'Ivory Coast'),
(33, 1, 'Togo'),
(33, 3, 'Togo'),
(34, 1, 'Bolivia'),
(34, 3, 'Bolivia'),
(35, 1, 'Mauritius'),
(35, 3, 'Mauritius'),
(36, 1, 'Romania'),
(36, 3, 'Romania'),
(37, 1, 'Slovakia'),
(37, 3, 'Slovakia'),
(38, 1, 'Algeria'),
(38, 3, 'Algeria'),
(39, 1, 'American Samoa'),
(39, 3, 'American Samoa'),
(40, 1, 'Andorra'),
(40, 3, 'Andorra'),
(41, 1, 'Angola'),
(41, 3, 'Angola'),
(42, 1, 'Anguilla'),
(42, 3, 'Anguilla'),
(43, 1, 'Antigua and Barbuda'),
(43, 3, 'Antigua and Barbuda'),
(44, 1, 'Argentina'),
(44, 3, 'Argentina'),
(45, 1, 'Armenia'),
(45, 3, 'Armenia'),
(46, 1, 'Aruba'),
(46, 3, 'Aruba'),
(47, 1, 'Azerbaijan'),
(47, 3, 'Azerbaijan'),
(48, 1, 'Bahamas'),
(48, 3, 'Bahamas'),
(49, 1, 'Bahrain'),
(49, 3, 'Bahrain'),
(50, 1, 'Bangladesh'),
(50, 3, 'Bangladesh'),
(51, 1, 'Barbados'),
(51, 3, 'Barbados'),
(52, 1, 'Belarus'),
(52, 3, 'Belarus'),
(53, 1, 'Belize'),
(53, 3, 'Belize'),
(54, 1, 'Benin'),
(54, 3, 'Benin'),
(55, 1, 'Bermuda'),
(55, 3, 'Bermuda'),
(56, 1, 'Bhutan'),
(56, 3, 'Bhutan'),
(57, 1, 'Botswana'),
(57, 3, 'Botswana'),
(58, 1, 'Brazil'),
(58, 3, 'Brazil'),
(59, 1, 'Brunei'),
(59, 3, 'Brunei'),
(60, 1, 'Burkina Faso'),
(60, 3, 'Burkina Faso'),
(61, 1, 'Burma (Myanmar)'),
(61, 3, 'Burma (Myanmar)'),
(62, 1, 'Burundi'),
(62, 3, 'Burundi'),
(63, 1, 'Cambodia'),
(63, 3, 'Cambodia'),
(64, 1, 'Cameroon'),
(64, 3, 'Cameroon'),
(65, 1, 'Cape Verde'),
(65, 3, 'Cape Verde'),
(66, 1, 'Central African Republic'),
(66, 3, 'Central African Republic'),
(67, 1, 'Chad'),
(67, 3, 'Chad'),
(68, 1, 'Chile'),
(68, 3, 'Chile'),
(69, 1, 'Colombia'),
(69, 3, 'Colombia'),
(70, 1, 'Comoros'),
(70, 3, 'Comoros'),
(71, 1, 'Congo, Dem. Republic'),
(71, 3, 'Congo, Dem. Republic'),
(72, 1, 'Congo, Republic'),
(72, 3, 'Congo, Republic'),
(73, 1, 'Costa Rica'),
(73, 3, 'Costa Rica'),
(74, 1, 'Croatia'),
(74, 3, 'Croatia'),
(75, 1, 'Cuba'),
(75, 3, 'Cuba'),
(76, 1, 'Cyprus'),
(76, 3, 'Cyprus'),
(77, 1, 'Djibouti'),
(77, 3, 'Djibouti'),
(78, 1, 'Dominica'),
(78, 3, 'Dominica'),
(79, 1, 'Dominican Republic'),
(79, 3, 'Dominican Republic'),
(80, 1, 'East Timor'),
(80, 3, 'East Timor'),
(81, 1, 'Ecuador'),
(81, 3, 'Ecuador'),
(82, 1, 'Egypt'),
(82, 3, 'Egypt'),
(83, 1, 'El Salvador'),
(83, 3, 'El Salvador'),
(84, 1, 'Equatorial Guinea'),
(84, 3, 'Equatorial Guinea'),
(85, 1, 'Eritrea'),
(85, 3, 'Eritrea'),
(86, 1, 'Estonia'),
(86, 3, 'Estonia'),
(87, 1, 'Ethiopia'),
(87, 3, 'Ethiopia'),
(88, 1, 'Falkland Islands'),
(88, 3, 'Falkland Islands'),
(89, 1, 'Faroe Islands'),
(89, 3, 'Faroe Islands'),
(90, 1, 'Fiji'),
(90, 3, 'Fiji'),
(91, 1, 'Gabon'),
(91, 3, 'Gabon'),
(92, 1, 'Gambia'),
(92, 3, 'Gambia'),
(93, 1, 'Georgia'),
(93, 3, 'Georgia'),
(94, 1, 'Ghana'),
(94, 3, 'Ghana'),
(95, 1, 'Grenada'),
(95, 3, 'Grenada'),
(96, 1, 'Greenland'),
(96, 3, 'Greenland'),
(97, 1, 'Gibraltar'),
(97, 3, 'Gibraltar'),
(98, 1, 'Guadeloupe'),
(98, 3, 'Guadeloupe'),
(99, 1, 'Guam'),
(99, 3, 'Guam'),
(100, 1, 'Guatemala'),
(100, 3, 'Guatemala'),
(101, 1, 'Guernsey'),
(101, 3, 'Guernsey'),
(102, 1, 'Guinea'),
(102, 3, 'Guinea'),
(103, 1, 'Guinea-Bissau'),
(103, 3, 'Guinea-Bissau'),
(104, 1, 'Guyana'),
(104, 3, 'Guyana'),
(105, 1, 'Haiti'),
(105, 3, 'Haiti'),
(106, 1, 'Heard Island and McDonald Islands'),
(106, 3, 'Heard Island and McDonald Islands'),
(107, 1, 'Vatican City State'),
(107, 3, 'Vatican City State'),
(108, 1, 'Honduras'),
(108, 3, 'Honduras'),
(109, 1, 'Iceland'),
(109, 3, 'Iceland'),
(110, 1, 'India'),
(110, 3, 'India'),
(111, 1, 'Indonesia'),
(111, 3, 'Indonesia'),
(112, 1, 'Iran'),
(112, 3, 'Iran'),
(113, 1, 'Iraq'),
(113, 3, 'Iraq'),
(114, 1, 'Man Island'),
(114, 3, 'Man Island'),
(115, 1, 'Jamaica'),
(115, 3, 'Jamaica'),
(116, 1, 'Jersey'),
(116, 3, 'Jersey'),
(117, 1, 'Jordan'),
(117, 3, 'Jordan'),
(118, 1, 'Kazakhstan'),
(118, 3, 'Kazakhstan'),
(119, 1, 'Kenya'),
(119, 3, 'Kenya'),
(120, 1, 'Kiribati'),
(120, 3, 'Kiribati'),
(121, 1, 'Korea, Dem. Republic of'),
(121, 3, 'Korea, Dem. Republic of'),
(122, 1, 'Kuwait'),
(122, 3, 'Kuwait'),
(123, 1, 'Kyrgyzstan'),
(123, 3, 'Kyrgyzstan'),
(124, 1, 'Laos'),
(124, 3, 'Laos'),
(125, 1, 'Latvia'),
(125, 3, 'Latvia'),
(126, 1, 'Lebanon'),
(126, 3, 'Lebanon'),
(127, 1, 'Lesotho'),
(127, 3, 'Lesotho'),
(128, 1, 'Liberia'),
(128, 3, 'Liberia'),
(129, 1, 'Libya'),
(129, 3, 'Libya'),
(130, 1, 'Liechtenstein'),
(130, 3, 'Liechtenstein'),
(131, 1, 'Lithuania'),
(131, 3, 'Lithuania'),
(132, 1, 'Macau'),
(132, 3, 'Macau'),
(133, 1, 'Macedonia'),
(133, 3, 'Macedonia'),
(134, 1, 'Madagascar'),
(134, 3, 'Madagascar'),
(135, 1, 'Malawi'),
(135, 3, 'Malawi'),
(136, 1, 'Malaysia'),
(136, 3, 'Malaysia'),
(137, 1, 'Maldives'),
(137, 3, 'Maldives'),
(138, 1, 'Mali'),
(138, 3, 'Mali'),
(139, 1, 'Malta'),
(139, 3, 'Malta'),
(140, 1, 'Marshall Islands'),
(140, 3, 'Marshall Islands'),
(141, 1, 'Martinique'),
(141, 3, 'Martinique'),
(142, 1, 'Mauritania'),
(142, 3, 'Mauritania'),
(143, 1, 'Hungary'),
(143, 3, 'Hungary'),
(144, 1, 'Mayotte'),
(144, 3, 'Mayotte'),
(145, 1, 'Mexico'),
(145, 3, 'Mexico'),
(146, 1, 'Micronesia'),
(146, 3, 'Micronesia'),
(147, 1, 'Moldova'),
(147, 3, 'Moldova'),
(148, 1, 'Monaco'),
(148, 3, 'Monaco'),
(149, 1, 'Mongolia'),
(149, 3, 'Mongolia'),
(150, 1, 'Montenegro'),
(150, 3, 'Montenegro'),
(151, 1, 'Montserrat'),
(151, 3, 'Montserrat'),
(152, 1, 'Morocco'),
(152, 3, 'Morocco'),
(153, 1, 'Mozambique'),
(153, 3, 'Mozambique'),
(154, 1, 'Namibia'),
(154, 3, 'Namibia'),
(155, 1, 'Nauru'),
(155, 3, 'Nauru'),
(156, 1, 'Nepal'),
(156, 3, 'Nepal'),
(157, 1, 'Netherlands Antilles'),
(157, 3, 'Netherlands Antilles'),
(158, 1, 'New Caledonia'),
(158, 3, 'New Caledonia'),
(159, 1, 'Nicaragua'),
(159, 3, 'Nicaragua'),
(160, 1, 'Niger'),
(160, 3, 'Niger'),
(161, 1, 'Niue'),
(161, 3, 'Niue'),
(162, 1, 'Norfolk Island'),
(162, 3, 'Norfolk Island'),
(163, 1, 'Northern Mariana Islands'),
(163, 3, 'Northern Mariana Islands'),
(164, 1, 'Oman'),
(164, 3, 'Oman'),
(165, 1, 'Pakistan'),
(165, 3, 'Pakistan'),
(166, 1, 'Palau'),
(166, 3, 'Palau'),
(167, 1, 'Palestinian Territories'),
(167, 3, 'Palestinian Territories'),
(168, 1, 'Panama'),
(168, 3, 'Panama'),
(169, 1, 'Papua New Guinea'),
(169, 3, 'Papua New Guinea'),
(170, 1, 'Paraguay'),
(170, 3, 'Paraguay'),
(171, 1, 'Peru'),
(171, 3, 'Peru'),
(172, 1, 'Philippines'),
(172, 3, 'Philippines'),
(173, 1, 'Pitcairn'),
(173, 3, 'Pitcairn'),
(174, 1, 'Puerto Rico'),
(174, 3, 'Puerto Rico'),
(175, 1, 'Qatar'),
(175, 3, 'Qatar'),
(176, 1, 'Reunion Island'),
(176, 3, 'Reunion Island'),
(177, 1, 'Russian Federation'),
(177, 3, 'Russian Federation'),
(178, 1, 'Rwanda'),
(178, 3, 'Rwanda'),
(179, 1, 'Saint Barthelemy'),
(179, 3, 'Saint Barthelemy'),
(180, 1, 'Saint Kitts and Nevis'),
(180, 3, 'Saint Kitts and Nevis'),
(181, 1, 'Saint Lucia'),
(181, 3, 'Saint Lucia'),
(182, 1, 'Saint Martin'),
(182, 3, 'Saint Martin'),
(183, 1, 'Saint Pierre and Miquelon'),
(183, 3, 'Saint Pierre and Miquelon'),
(184, 1, 'Saint Vincent and the Grenadines'),
(184, 3, 'Saint Vincent and the Grenadines'),
(185, 1, 'Samoa'),
(185, 3, 'Samoa'),
(186, 1, 'San Marino'),
(186, 3, 'San Marino'),
(187, 1, 'São Tomé and Príncipe'),
(187, 3, 'São Tomé and Príncipe'),
(188, 1, 'Saudi Arabia'),
(188, 3, 'Saudi Arabia'),
(189, 1, 'Senegal'),
(189, 3, 'Senegal'),
(190, 1, 'Serbia'),
(190, 3, 'Serbia'),
(191, 1, 'Seychelles'),
(191, 3, 'Seychelles'),
(192, 1, 'Sierra Leone'),
(192, 3, 'Sierra Leone'),
(193, 1, 'Slovenia'),
(193, 3, 'Slovenia'),
(194, 1, 'Solomon Islands'),
(194, 3, 'Solomon Islands'),
(195, 1, 'Somalia'),
(195, 3, 'Somalia'),
(196, 1, 'South Georgia and the South Sandwich Islands'),
(196, 3, 'South Georgia and the South Sandwich Islands'),
(197, 1, 'Sri Lanka'),
(197, 3, 'Sri Lanka'),
(198, 1, 'Sudan'),
(198, 3, 'Sudan'),
(199, 1, 'Suriname'),
(199, 3, 'Suriname'),
(200, 1, 'Svalbard and Jan Mayen'),
(200, 3, 'Svalbard and Jan Mayen'),
(201, 1, 'Swaziland'),
(201, 3, 'Swaziland'),
(202, 1, 'Syria'),
(202, 3, 'Syria'),
(203, 1, 'Taiwan'),
(203, 3, 'Taiwan'),
(204, 1, 'Tajikistan'),
(204, 3, 'Tajikistan'),
(205, 1, 'Tanzania'),
(205, 3, 'Tanzania'),
(206, 1, 'Thailand'),
(206, 3, 'Thailand'),
(207, 1, 'Tokelau'),
(207, 3, 'Tokelau'),
(208, 1, 'Tonga'),
(208, 3, 'Tonga'),
(209, 1, 'Trinidad and Tobago'),
(209, 3, 'Trinidad and Tobago'),
(210, 1, 'Tunisia'),
(210, 3, 'Tunisia'),
(211, 1, 'Turkey'),
(211, 3, 'Turkey'),
(212, 1, 'Turkmenistan'),
(212, 3, 'Turkmenistan'),
(213, 1, 'Turks and Caicos Islands'),
(213, 3, 'Turks and Caicos Islands'),
(214, 1, 'Tuvalu'),
(214, 3, 'Tuvalu'),
(215, 1, 'Uganda'),
(215, 3, 'Uganda'),
(216, 1, 'Ukraine'),
(216, 3, 'Ukraine'),
(217, 1, 'United Arab Emirates'),
(217, 3, 'United Arab Emirates'),
(218, 1, 'Uruguay'),
(218, 3, 'Uruguay'),
(219, 1, 'Uzbekistan'),
(219, 3, 'Uzbekistan'),
(220, 1, 'Vanuatu'),
(220, 3, 'Vanuatu'),
(221, 1, 'Venezuela'),
(221, 3, 'Venezuela'),
(222, 1, 'Vietnam'),
(222, 3, 'Vietnam'),
(223, 1, 'Virgin Islands (British)'),
(223, 3, 'Virgin Islands (British)'),
(224, 1, 'Virgin Islands (U.S.)'),
(224, 3, 'Virgin Islands (U.S.)'),
(225, 1, 'Wallis and Futuna'),
(225, 3, 'Wallis and Futuna'),
(226, 1, 'Western Sahara'),
(226, 3, 'Western Sahara'),
(227, 1, 'Yemen'),
(227, 3, 'Yemen'),
(228, 1, 'Zambia'),
(228, 3, 'Zambia'),
(229, 1, 'Zimbabwe'),
(229, 3, 'Zimbabwe'),
(230, 1, 'Albania'),
(230, 3, 'Albania'),
(231, 1, 'Afghanistan'),
(231, 3, 'Afghanistan'),
(232, 1, 'Antarctica'),
(232, 3, 'Antarctica'),
(233, 1, 'Bosnia and Herzegovina'),
(233, 3, 'Bosnia and Herzegovina'),
(234, 1, 'Bouvet Island'),
(234, 3, 'Bouvet Island'),
(235, 1, 'British Indian Ocean Territory'),
(235, 3, 'British Indian Ocean Territory'),
(236, 1, 'Bulgaria'),
(236, 3, 'Bulgaria'),
(237, 1, 'Cayman Islands'),
(237, 3, 'Cayman Islands'),
(238, 1, 'Christmas Island'),
(238, 3, 'Christmas Island'),
(239, 1, 'Cocos (Keeling) Islands'),
(239, 3, 'Cocos (Keeling) Islands'),
(240, 1, 'Cook Islands'),
(240, 3, 'Cook Islands'),
(241, 1, 'French Guiana'),
(241, 3, 'French Guiana'),
(242, 1, 'French Polynesia'),
(242, 3, 'French Polynesia'),
(243, 1, 'French Southern Territories'),
(243, 3, 'French Southern Territories'),
(244, 1, 'Åland Islands'),
(244, 3, 'Åland Islands');

-- --------------------------------------------------------

--
-- Table structure for table `ps_country_shop`
--

CREATE TABLE IF NOT EXISTS `ps_country_shop` (
  `id_country` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_country`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_country_shop`
--

INSERT INTO `ps_country_shop` (`id_country`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_currency`
--

CREATE TABLE IF NOT EXISTS `ps_currency` (
  `id_currency` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `iso_code_num` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_currency`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_currency`
--

INSERT INTO `ps_currency` (`id_currency`, `name`, `iso_code`, `iso_code_num`, `sign`, `blank`, `format`, `decimals`, `conversion_rate`, `deleted`, `active`) VALUES
(1, 'Shekel', 'ILS', '376', '₪‎', 1, 2, 1, '1.000000', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_currency_shop`
--

CREATE TABLE IF NOT EXISTS `ps_currency_shop` (
  `id_currency` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL,
  PRIMARY KEY (`id_currency`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_currency_shop`
--

INSERT INTO `ps_currency_shop` (`id_currency`, `id_shop`, `conversion_rate`) VALUES
(1, 1, '1.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer`
--

CREATE TABLE IF NOT EXISTS `ps_customer` (
  `id_customer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned DEFAULT NULL,
  `id_risk` int(10) unsigned NOT NULL DEFAULT '1',
  `company` varchar(64) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `max_payment_days` int(10) unsigned NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer`),
  KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_customer`
--

INSERT INTO `ps_customer` (`id_customer`, `id_shop_group`, `id_shop`, `id_gender`, `id_default_group`, `id_lang`, `id_risk`, `company`, `siret`, `ape`, `firstname`, `lastname`, `email`, `passwd`, `last_passwd_gen`, `birthday`, `newsletter`, `ip_registration_newsletter`, `newsletter_date_add`, `optin`, `website`, `outstanding_allow_amount`, `show_public_prices`, `max_payment_days`, `secure_key`, `note`, `active`, `is_guest`, `deleted`, `date_add`, `date_upd`) VALUES
(1, 1, 1, 1, 3, 1, 0, '', '', '', 'John', 'DOE', 'pub@prestashop.com', '4d94eab6bac38237b104e12c3cf095d8', '2014-01-06 14:19:14', '1970-01-15', 1, '', '2014-01-06 22:19:14', 1, '', '0.000000', 0, 0, 'f83b3be2fec10710e29a3f9869f3fc90', '', 1, 0, 0, '2014-01-06 22:19:14', '2014-01-06 22:19:14'),
(2, 1, 1, 0, 3, 3, 0, NULL, NULL, NULL, 'נועם', 'איתן', 'volfson@walla.co.il', '6b7ff1753908e2a5c3d1122b701f7a1b', '2014-01-16 15:20:05', '1975-03-25', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, '8e7c7d79ee13730288a827797ce8ec24', NULL, 1, 0, 0, '2014-01-16 23:20:05', '2014-01-16 23:20:05'),
(3, 1, 1, 0, 3, 3, 0, NULL, NULL, NULL, 'נועם', 'איתן', '5555@gmail.com', '6b7ff1753908e2a5c3d1122b701f7a1b', '2014-01-16 15:49:34', '0000-00-00', 0, NULL, '0000-00-00 00:00:00', 0, NULL, '0.000000', 0, 0, '1bd47e72363e2d7ea87cd7860b6ed7e6', NULL, 1, 0, 0, '2014-01-16 23:49:34', '2014-01-17 00:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer_group`
--

CREATE TABLE IF NOT EXISTS `ps_customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_customer_group`
--

INSERT INTO `ps_customer_group` (`id_customer`, `id_group`) VALUES
(1, 3),
(2, 3),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer_message`
--

CREATE TABLE IF NOT EXISTS `ps_customer_message` (
  `id_customer_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer_thread` int(11) DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `message` text NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` int(11) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customer_message`),
  KEY `id_customer_thread` (`id_customer_thread`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer_message_sync_imap`
--

CREATE TABLE IF NOT EXISTS `ps_customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL,
  KEY `md5_header_index` (`md5_header`(4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customer_thread`
--

CREATE TABLE IF NOT EXISTS `ps_customer_thread` (
  `id_customer_thread` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `id_contact` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned DEFAULT NULL,
  `id_product` int(10) unsigned DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(128) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer_thread`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`),
  KEY `id_contact` (`id_contact`),
  KEY `id_customer` (`id_customer`),
  KEY `id_order` (`id_order`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customization`
--

CREATE TABLE IF NOT EXISTS `ps_customization` (
  `id_customization` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_address_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  `in_cart` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customization_field`
--

CREATE TABLE IF NOT EXISTS `ps_customization_field` (
  `id_customization_field` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customization_field_lang`
--

CREATE TABLE IF NOT EXISTS `ps_customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_customized_data`
--

CREATE TABLE IF NOT EXISTS `ps_customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_date_range`
--

CREATE TABLE IF NOT EXISTS `ps_date_range` (
  `id_date_range` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_delivery`
--

CREATE TABLE IF NOT EXISTS `ps_delivery` (
  `id_delivery` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned DEFAULT NULL,
  `id_shop_group` int(10) unsigned DEFAULT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned DEFAULT NULL,
  `id_range_weight` int(10) unsigned DEFAULT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ps_delivery`
--

INSERT INTO `ps_delivery` (`id_delivery`, `id_shop`, `id_shop_group`, `id_carrier`, `id_range_price`, `id_range_weight`, `id_zone`, `price`) VALUES
(1, 1, 1, 2, 1, 0, 1, '0.000000'),
(2, 1, 1, 2, 1, 0, 2, '0.000000'),
(3, 1, 1, 2, 0, 1, 1, '0.000000'),
(4, 1, 1, 2, 0, 1, 2, '0.000000'),
(5, NULL, NULL, 2, 0, 1, 1, '5.000000'),
(6, NULL, NULL, 2, 0, 1, 2, '5.000000'),
(7, NULL, NULL, 2, 1, 0, 1, '5.000000'),
(8, NULL, NULL, 2, 1, 0, 2, '5.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ps_employee`
--

CREATE TABLE IF NOT EXISTS `ps_employee` (
  `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `default_tab` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_width` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_show_screencast` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id_last_order` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer_message` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_employee`
--

INSERT INTO `ps_employee` (`id_employee`, `id_profile`, `id_lang`, `lastname`, `firstname`, `email`, `passwd`, `last_passwd_gen`, `stats_date_from`, `stats_date_to`, `bo_color`, `bo_theme`, `default_tab`, `bo_width`, `bo_show_screencast`, `active`, `id_last_order`, `id_last_customer_message`, `id_last_customer`) VALUES
(1, 1, 1, 'Eitan', 'Noam', 'volfson@walla.co.il', 'a8bf0672d2ddd7ee2c35e76b20aaa23c', '2014-01-06 14:18:25', '2014-01-06', '2014-01-06', NULL, 'default', 1, 0, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_employee_shop`
--

CREATE TABLE IF NOT EXISTS `ps_employee_shop` (
  `id_employee` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_employee`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_employee_shop`
--

INSERT INTO `ps_employee_shop` (`id_employee`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_favorite_product`
--

CREATE TABLE IF NOT EXISTS `ps_favorite_product` (
  `id_favorite_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_favorite_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature`
--

CREATE TABLE IF NOT EXISTS `ps_feature` (
  `id_feature` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_feature`
--

INSERT INTO `ps_feature` (`id_feature`, `position`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_lang`
--

CREATE TABLE IF NOT EXISTS `ps_feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_feature_lang`
--

INSERT INTO `ps_feature_lang` (`id_feature`, `id_lang`, `name`) VALUES
(3, 1, 'Depth'),
(5, 1, 'Headphone'),
(1, 1, 'Height'),
(4, 1, 'Weight'),
(2, 1, 'Width'),
(3, 3, 'Depth'),
(5, 3, 'Headphone'),
(1, 3, 'Height'),
(4, 3, 'Weight'),
(2, 3, 'Width');

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_product`
--

CREATE TABLE IF NOT EXISTS `ps_feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_shop`
--

CREATE TABLE IF NOT EXISTS `ps_feature_shop` (
  `id_feature` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_feature_shop`
--

INSERT INTO `ps_feature_shop` (`id_feature`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_value`
--

CREATE TABLE IF NOT EXISTS `ps_feature_value` (
  `id_feature_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `ps_feature_value`
--

INSERT INTO `ps_feature_value` (`id_feature_value`, `id_feature`, `custom`) VALUES
(1, 5, 0),
(2, 5, 0),
(3, 1, 1),
(4, 2, 1),
(5, 4, 1),
(6, 3, 1),
(7, 1, 1),
(8, 2, 1),
(9, 4, 1),
(10, 3, 1),
(11, 1, 1),
(12, 2, 1),
(13, 4, 1),
(14, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_feature_value_lang`
--

CREATE TABLE IF NOT EXISTS `ps_feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_feature_value_lang`
--

INSERT INTO `ps_feature_value_lang` (`id_feature_value`, `id_lang`, `value`) VALUES
(1, 1, 'Jack stereo'),
(1, 3, 'Jack stereo'),
(2, 1, 'Mini-jack stereo'),
(2, 3, 'Mini-jack stereo'),
(3, 1, '2.75 in'),
(3, 3, '2.75 in'),
(4, 1, '2.06 in'),
(4, 3, '2.06 in'),
(5, 1, '49.2 g'),
(5, 3, '49.2 g'),
(6, 1, '0.26 in'),
(6, 3, '0.26 in'),
(7, 1, '1.07 in'),
(7, 3, '1.07 in'),
(8, 1, '1.62 in'),
(8, 3, '1.62 in'),
(9, 1, '15.5 g'),
(9, 3, '15.5 g'),
(10, 1, '0.41 in (clip included)'),
(10, 3, '0.41 in (clip included)'),
(11, 1, '4.33 in'),
(11, 3, '4.33 in'),
(12, 1, '2.76 in'),
(12, 3, '2.76 in'),
(13, 1, '120g'),
(13, 3, '120g'),
(14, 1, '0.31 in'),
(14, 3, '0.31 in');

-- --------------------------------------------------------

--
-- Table structure for table `ps_gender`
--

CREATE TABLE IF NOT EXISTS `ps_gender` (
  `id_gender` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_gender`
--

INSERT INTO `ps_gender` (`id_gender`, `type`) VALUES
(1, 0),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_gender_lang`
--

CREATE TABLE IF NOT EXISTS `ps_gender_lang` (
  `id_gender` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_gender`,`id_lang`),
  KEY `id_gender` (`id_gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_gender_lang`
--

INSERT INTO `ps_gender_lang` (`id_gender`, `id_lang`, `name`) VALUES
(1, 1, 'Mr.'),
(1, 3, 'Mr.'),
(2, 1, 'Mrs.'),
(2, 3, 'Mrs.');

-- --------------------------------------------------------

--
-- Table structure for table `ps_group`
--

CREATE TABLE IF NOT EXISTS `ps_group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `show_prices` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_group`
--

INSERT INTO `ps_group` (`id_group`, `reduction`, `price_display_method`, `show_prices`, `date_add`, `date_upd`) VALUES
(1, '0.00', 0, 1, '2014-01-06 22:16:48', '2014-01-06 22:16:48'),
(2, '0.00', 0, 1, '2014-01-06 22:16:48', '2014-01-06 22:16:48'),
(3, '0.00', 0, 1, '2014-01-06 22:16:49', '2014-01-06 22:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `ps_group_lang`
--

CREATE TABLE IF NOT EXISTS `ps_group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_group_lang`
--

INSERT INTO `ps_group_lang` (`id_group`, `id_lang`, `name`) VALUES
(1, 1, 'Visitor'),
(1, 3, 'Visitor'),
(2, 1, 'Guest'),
(2, 3, 'Guest'),
(3, 1, 'Customer'),
(3, 3, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `ps_group_reduction`
--

CREATE TABLE IF NOT EXISTS `ps_group_reduction` (
  `id_group_reduction` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_group_reduction`),
  UNIQUE KEY `id_group` (`id_group`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_group_shop` (
  `id_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_group_shop`
--

INSERT INTO `ps_group_shop` (`id_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_guest`
--

CREATE TABLE IF NOT EXISTS `ps_guest` (
  `id_guest` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int(10) unsigned DEFAULT NULL,
  `id_web_browser` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) unsigned DEFAULT NULL,
  `screen_resolution_y` smallint(5) unsigned DEFAULT NULL,
  `screen_color` tinyint(3) unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_guest`
--

INSERT INTO `ps_guest` (`id_guest`, `id_operating_system`, `id_web_browser`, `id_customer`, `javascript`, `screen_resolution_x`, `screen_resolution_y`, `screen_color`, `sun_java`, `adobe_flash`, `adobe_director`, `apple_quicktime`, `real_player`, `windows_media`, `accept_language`, `mobile_theme`) VALUES
(1, 0, 0, 1, 1, 1680, 1050, 32, 1, 1, 0, 1, 1, 0, 'en-us', 0),
(2, 3, 10, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(3, 3, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_help_access`
--

CREATE TABLE IF NOT EXISTS `ps_help_access` (
  `id_help_access` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(45) NOT NULL,
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_help_access`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_help_access`
--

INSERT INTO `ps_help_access` (`id_help_access`, `label`, `version`) VALUES
(1, 'AdminModules', '13051319');

-- --------------------------------------------------------

--
-- Table structure for table `ps_homeslider`
--

CREATE TABLE IF NOT EXISTS `ps_homeslider` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_homeslider`
--

INSERT INTO `ps_homeslider` (`id_homeslider_slides`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_homeslider_slides`
--

CREATE TABLE IF NOT EXISTS `ps_homeslider_slides` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_homeslider_slides`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_homeslider_slides`
--

INSERT INTO `ps_homeslider_slides` (`id_homeslider_slides`, `position`, `active`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_homeslider_slides_lang`
--

CREATE TABLE IF NOT EXISTS `ps_homeslider_slides_lang` (
  `id_homeslider_slides` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `legend` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_homeslider_slides_lang`
--

INSERT INTO `ps_homeslider_slides_lang` (`id_homeslider_slides`, `id_lang`, `title`, `description`, `legend`, `url`, `image`) VALUES
(1, 1, 'Sample 1', 'This is a sample picture', 'sample-1', 'http://www.prestashop.com', 'sample-1.jpg'),
(1, 3, 'Sample 1', 'This is a sample picture', 'sample-1', 'http://www.prestashop.com', 'sample-1.jpg'),
(2, 1, 'Sample 2', 'This is a sample picture', 'sample-2', 'http://www.prestashop.com', 'sample-2.jpg'),
(2, 3, 'Sample 2', 'This is a sample picture', 'sample-2', 'http://www.prestashop.com', 'sample-2.jpg'),
(3, 1, 'Sample 3', 'This is a sample picture', 'sample-3', 'http://www.prestashop.com', 'sample-3.jpg'),
(3, 3, 'Sample 3', 'This is a sample picture', 'sample-3', 'http://www.prestashop.com', 'sample-3.jpg'),
(4, 1, 'Sample 4', 'This is a sample picture', 'sample-4', 'http://www.prestashop.com', 'sample-4.jpg'),
(4, 3, 'Sample 4', 'This is a sample picture', 'sample-4', 'http://www.prestashop.com', 'sample-4.jpg'),
(5, 1, 'Sample 5', 'This is a sample picture', 'sample-5', 'http://www.prestashop.com', 'sample-5.jpg'),
(5, 3, 'Sample 5', 'This is a sample picture', 'sample-5', 'http://www.prestashop.com', 'sample-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ps_hook`
--

CREATE TABLE IF NOT EXISTS `ps_hook` (
  `id_hook` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `live_edit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

--
-- Dumping data for table `ps_hook`
--

INSERT INTO `ps_hook` (`id_hook`, `name`, `title`, `description`, `position`, `live_edit`) VALUES
(1, 'displayPayment', 'Payment', 'This hook displays new elements on the payment page', 1, 1),
(2, 'actionValidateOrder', 'New orders', '', 1, 0),
(3, 'displayMaintenance', 'Maintenance Page', 'This hook displays new elements on the maintenance page', 1, 0),
(4, 'actionPaymentConfirmation', 'Payment confirmation', 'This hook displays new elements after the payment is validated', 1, 0),
(5, 'displayPaymentReturn', 'Payment return', '', 1, 0),
(6, 'actionUpdateQuantity', 'Quantity update', 'Quantity is updated only when a customer effectively places their order', 1, 0),
(7, 'displayRightColumn', 'Right column blocks', 'This hook displays new elements in the right-hand column', 1, 1),
(8, 'displayLeftColumn', 'Left column blocks', 'This hook displays new elements in the left-hand column', 1, 1),
(9, 'displayHome', 'Homepage content', 'This hook displays new elements on the homepage', 1, 1),
(10, 'displayHeader', 'Pages header', 'This hook displays additional elements in the header of your pages', 1, 0),
(11, 'actionCartSave', 'Cart creation and update', 'This hook is displayed when a product is added to the cart or if the cart''s content is modified', 1, 0),
(12, 'actionAuthentication', 'Successful customer authentication', 'This hook is displayed after a customer successfully signs in', 1, 0),
(13, 'actionProductAdd', 'Product creation', 'This hook is displayed after a product is created', 1, 0),
(14, 'actionProductUpdate', 'Product update', 'This hook is displayed after a product has been updated', 1, 0),
(15, 'displayTop', 'Top of pages', 'This hook displays  additional elements at the top of your pages', 1, 0),
(16, 'displayRightColumnProduct', 'New elements on the product page (right column)', 'This hook displays new elements in the right-hand column of the product page', 1, 0),
(17, 'actionProductDelete', 'Product deletion', 'This hook is called when a product is deleted', 1, 0),
(18, 'displayFooterProduct', 'Product footer', 'This hook adds new blocks under the product''s description', 1, 1),
(19, 'displayInvoice', 'Invoice', 'This hook displays new blocks on the invoice (order)', 1, 0),
(20, 'actionOrderStatusUpdate', 'Order status update - Event', 'This hook launches modules when the status of an order changes.', 1, 0),
(21, 'displayAdminOrder', 'Display new elements in the Back Office, tab AdminOrder', 'This hook launches modules when the AdminOrder" tab is displayed in the Back Office"', 1, 0),
(22, 'displayFooter', 'Footer', 'This hook displays new blocks in the footer', 1, 0),
(23, 'displayPDFInvoice', 'PDF Invoice', 'This hook allows you to display additional information on PDF invoices', 1, 0),
(24, 'displayAdminCustomers', 'Display new elements in the Back Office, tab AdminCustomers', 'This hook launches modules when the AdminCustomers" tab is displayed in the Back Office"', 1, 0),
(25, 'displayOrderConfirmation', 'Order confirmation page', 'This hook is called within an order''s confirmation page', 1, 0),
(26, 'actionCustomerAccountAdd', 'Successful customer account creation', 'This hook is called when a new customer creates an account successfully', 1, 0),
(27, 'displayCustomerAccount', 'Customer account displayed in Front Office', 'This hook displays new elements on the customer account page', 1, 0),
(28, 'actionOrderSlipAdd', 'Order slip creation', 'This hook is called when a new credit slip is added regarding client order', 1, 0),
(29, 'displayProductTab', 'Tabs on product page', 'This hook is called on the product page''s tab', 1, 0),
(30, 'displayProductTabContent', 'Tabs content on the product page', 'This hook is called on the product page''s tab', 1, 0),
(31, 'displayShoppingCartFooter', 'Shopping cart footer', 'This hook displays some specific information on the shopping cart''s page', 1, 0),
(32, 'displayCustomerAccountForm', 'Customer account creation form', 'This hook displays some information on the form to create a customer account', 1, 0),
(33, 'displayAdminStatsModules', 'Stats - Modules', '', 1, 0),
(34, 'displayAdminStatsGraphEngine', 'Graph engines', '', 1, 0),
(35, 'actionOrderReturn', 'Returned product', 'This hook is displayed when a customer returns a product ', 1, 0),
(36, 'displayProductButtons', 'Product page actions', 'This hook adds new action buttons on the product page', 1, 0),
(37, 'displayBackOfficeHome', 'Administration panel homepage', 'This hook is displayed on the admin panel''s homepage', 1, 0),
(38, 'displayAdminStatsGridEngine', 'Grid engines', '', 1, 0),
(39, 'actionWatermark', 'Watermark', '', 1, 0),
(40, 'actionProductCancel', 'Product cancelled', 'This hook is called when you cancel a product in an order', 1, 0),
(41, 'displayLeftColumnProduct', 'New elements on the product page (left column)', 'This hook displays new elements in the left-hand column of the product page', 1, 0),
(42, 'actionProductOutOfStock', 'Out-of-stock product', 'This hook displays new action buttons if a product is out of stock', 1, 0),
(43, 'actionProductAttributeUpdate', 'Product attribute update', 'This hook is displayed when a product''s attribute is updated', 1, 0),
(44, 'displayCarrierList', 'Extra carrier (module mode)', '', 1, 0),
(45, 'displayShoppingCart', 'Shopping cart - Additional button', 'This hook displays new action buttons within the shopping cart', 1, 0),
(46, 'actionSearch', 'Search', '', 1, 0),
(47, 'displayBeforePayment', 'Redirect during the order process', 'This hook redirects the user to the module instead of displaying payment modules', 1, 0),
(48, 'actionCarrierUpdate', 'Carrier Update', 'This hook is called when a carrier is updated', 1, 0),
(49, 'actionOrderStatusPostUpdate', 'Post update of order status', '', 1, 0),
(50, 'displayCustomerAccountFormTop', 'Block above the form for create an account', 'This hook is displayed above the customer''s account creation form', 1, 0),
(51, 'displayBackOfficeHeader', 'Administration panel header', 'This hook is displayed in the header of the admin panel', 1, 0),
(52, 'displayBackOfficeTop', 'Administration panel hover the tabs', 'This hook is displayed on the roll hover of the tabs within the admin panel', 1, 0),
(53, 'displayBackOfficeFooter', 'Administration panel footer', 'This hook is displayed within the admin panel''s footer', 1, 0),
(54, 'actionProductAttributeDelete', 'Product attribute deletion', 'This hook is displayed when a product''s attribute is deleted', 1, 0),
(55, 'actionCarrierProcess', 'Carrier process', '', 1, 0),
(56, 'actionOrderDetail', 'Order detail', 'This hook is used to set the follow-up in Smarty when an order''s detail is called', 1, 0),
(57, 'displayBeforeCarrier', 'Before carriers list', 'This hook is displayed before the carrier list in Front Office', 1, 0),
(58, 'displayOrderDetail', 'Order detail', 'This hook is displayed within the order''s details in Front Office', 1, 0),
(59, 'actionPaymentCCAdd', 'Payment CC added', '', 1, 0),
(60, 'displayProductComparison', 'Extra product comparison', '', 1, 0),
(61, 'actionCategoryAdd', 'Category creation', 'This hook is displayed when a category is created', 1, 0),
(62, 'actionCategoryUpdate', 'Category modification', 'This hook is displayed when a category is modified', 1, 0),
(63, 'actionCategoryDelete', 'Category deletion', 'This hook is displayed when a category is deleted', 1, 0),
(64, 'actionBeforeAuthentication', 'Before authentication', 'This hook is displayed before the customer''s authentication', 1, 0),
(65, 'displayPaymentTop', 'Top of payment page', 'This hook is displayed at the top of the payment page', 1, 0),
(66, 'actionHtaccessCreate', 'After htaccess creation', 'This hook is displayed after the htaccess creation', 1, 0),
(67, 'actionAdminMetaSave', 'After saving the configuration in AdminMeta', 'This hook is displayed after saving the configuration in AdminMeta', 1, 0),
(68, 'displayAttributeGroupForm', 'Add fields to the form ''attribute group''', 'This hook adds fields to the form ''attribute group''', 1, 0),
(69, 'actionAttributeGroupSave', 'Saving an attribute group', 'This hook is called while saving an attributes group', 1, 0),
(70, 'actionAttributeGroupDelete', 'Deleting attribute group', 'This hook is called while deleting an attributes  group', 1, 0),
(71, 'displayFeatureForm', 'Add fields to the form ''feature''', 'This hook adds fields to the form ''feature''', 1, 0),
(72, 'actionFeatureSave', 'Saving attributes'' features', 'This hook is called while saving an attributes features', 1, 0),
(73, 'actionFeatureDelete', 'Deleting attributes'' features', 'This hook is called while deleting an attributes features', 1, 0),
(74, 'actionProductSave', 'Saving products', 'This hook is called while saving products', 1, 0),
(75, 'actionProductListOverride', 'Assign a products list to a category', 'This hook assigns a products list to a category', 1, 0),
(76, 'displayAttributeGroupPostProcess', 'On post-process in admin attribute group', 'This hook is called on post-process in admin attribute group', 1, 0),
(77, 'displayFeaturePostProcess', 'On post-process in admin feature', 'This hook is called on post-process in admin feature', 1, 0),
(78, 'displayFeatureValueForm', 'Add fields to the form ''feature value''', 'This hook adds fields to the form ''feature value''', 1, 0),
(79, 'displayFeatureValuePostProcess', 'On post-process in admin feature value', 'This hook is called on post-process in admin feature value', 1, 0),
(80, 'actionFeatureValueDelete', 'Deleting attributes'' features'' values', 'This hook is called while deleting an attributes features value', 1, 0),
(81, 'actionFeatureValueSave', 'Saving an attributes features value', 'This hook is called while saving an attributes features value', 1, 0),
(82, 'displayAttributeForm', 'Add fields to the form ''attribute value''', 'This hook adds fields to the form ''attribute value''', 1, 0),
(83, 'actionAttributePostProcess', 'On post-process in admin feature value', 'This hook is called on post-process in admin feature value', 1, 0),
(84, 'actionAttributeDelete', 'Deleting an attributes features value', 'This hook is called while deleting an attributes features value', 1, 0),
(85, 'actionAttributeSave', 'Saving an attributes features value', 'This hook is called while saving an attributes features value', 1, 0),
(86, 'actionTaxManager', 'Tax Manager Factory', '', 1, 0),
(87, 'displayMyAccountBlock', 'My account block', 'This hook displays extra information within the ''my account'' block"', 1, 0),
(88, 'actionModuleInstallBefore', 'actionModuleInstallBefore', '', 1, 0),
(89, 'actionModuleInstallAfter', 'actionModuleInstallAfter', '', 1, 0),
(90, 'actionCartListOverride', 'actionCartListOverride', '', 0, 0),
(91, 'actionAdminMetaControllerUpdate_optionsBefore', 'actionAdminMetaControllerUpdate_optionsBefore', '', 0, 0),
(92, 'actionAdminLanguagesControllerStatusBefore', 'actionAdminLanguagesControllerStatusBefore', '', 0, 0),
(93, 'actionObjectCmsUpdateAfter', 'actionObjectCmsUpdateAfter', '', 0, 0),
(94, 'actionObjectCmsDeleteAfter', 'actionObjectCmsDeleteAfter', '', 0, 0),
(95, 'actionShopDataDuplication', 'actionShopDataDuplication', '', 0, 0),
(96, 'actionObjectManufacturerDeleteAfter', 'actionObjectManufacturerDeleteAfter', '', 0, 0),
(97, 'actionObjectManufacturerAddAfter', 'actionObjectManufacturerAddAfter', '', 0, 0),
(98, 'actionObjectManufacturerUpdateAfter', 'actionObjectManufacturerUpdateAfter', '', 0, 0),
(100, 'actionModuleRegisterHookAfter', 'actionModuleRegisterHookAfter', '', 0, 0),
(101, 'actionModuleUnRegisterUnHookAfter', 'actionModuleUnRegisterUnHookAfter', '', 0, 0),
(102, 'displayMyAccountBlockfooter', 'My account block', 'Display extra informations inside the "my account" block', 1, 0),
(103, 'actionModuleUnRegisterHookAfter', 'actionModuleUnRegisterHookAfter', '', 0, 0),
(104, 'displayMobileTopSiteMap', 'displayMobileTopSiteMap', '', 0, 0),
(105, 'actionObjectSupplierDeleteAfter', 'actionObjectSupplierDeleteAfter', '', 0, 0),
(106, 'actionObjectSupplierAddAfter', 'actionObjectSupplierAddAfter', '', 0, 0),
(107, 'actionObjectSupplierUpdateAfter', 'actionObjectSupplierUpdateAfter', '', 0, 0),
(108, 'actionObjectCategoryUpdateAfter', 'actionObjectCategoryUpdateAfter', '', 0, 0),
(109, 'actionObjectCategoryDeleteAfter', 'actionObjectCategoryDeleteAfter', '', 0, 0),
(110, 'actionObjectCategoryAddAfter', 'actionObjectCategoryAddAfter', '', 0, 0),
(111, 'actionObjectCmsAddAfter', 'actionObjectCmsAddAfter', '', 0, 0),
(112, 'actionObjectProductUpdateAfter', 'actionObjectProductUpdateAfter', '', 0, 0),
(113, 'actionObjectProductDeleteAfter', 'actionObjectProductDeleteAfter', '', 0, 0),
(114, 'actionObjectProductAddAfter', 'actionObjectProductAddAfter', '', 0, 0),
(115, 'actionAdminMetaControllerUpdate_optionsAfter', 'actionAdminMetaControllerUpdate_optionsAfter', '', 0, 0),
(116, 'actionAdminPerformanceControllerSaveAfter', 'actionAdminPerformanceControllerSaveAfter', '', 0, 0),
(117, 'actionObjectCarrierAddAfter', 'actionObjectCarrierAddAfter', '', 0, 0),
(118, 'actionAdminStoresControllerUpdate_optionsAfter', 'actionAdminStoresControllerUpdate_optionsAfter', '', 0, 0),
(119, 'actionObjectContactAddAfter', 'actionObjectContactAddAfter', '', 0, 0),
(120, 'actionAdminThemesControllerUpdate_optionsAfter', 'actionAdminThemesControllerUpdate_optionsAfter', '', 0, 0),
(121, 'actionObjectThemeAddAfter', 'actionObjectThemeAddAfter', '', 0, 0),
(122, 'actionAdminPreferencesControllerUpdate_optionsAfter', 'actionAdminPreferencesControllerUpdate_optionsAfter', '', 0, 0),
(123, 'actionObjectShopAddAfter', 'actionObjectShopAddAfter', '', 0, 0),
(124, 'actionObjectShopGroupAddAfter', 'actionObjectShopGroupAddAfter', '', 0, 0),
(125, 'actionObjectCartAddAfter', 'actionObjectCartAddAfter', '', 0, 0),
(126, 'actionObjectOrderAddAfter', 'actionObjectOrderAddAfter', '', 0, 0),
(127, 'actionObjectCustomerThreadAddAfter', 'actionObjectCustomerThreadAddAfter', '', 0, 0),
(128, 'actionObjectCustomerAddAfter', 'actionObjectCustomerAddAfter', '', 0, 0),
(129, 'actionObjectEmployeeAddAfter', 'actionObjectEmployeeAddAfter', '', 0, 0),
(130, 'actionObjectImageAddAfter', 'actionObjectImageAddAfter', '', 0, 0),
(131, 'actionObjectCartRuleAddAfter', 'actionObjectCartRuleAddAfter', '', 0, 0),
(132, 'displayTopBar', 'displayTopBar', 'Top of the page', 1, 0),
(133, 'displayCategoryFooter', 'displayCategoryFooter', 'Display some specific informations on the category page', 1, 0),
(134, 'displayCategoryHeader', 'displayCategoryHeader', 'Display some specific informations on the category page', 1, 0),
(135, 'displayTopSecondary', 'displayTopSecondary', 'Bottom of the header', 1, 0),
(136, 'displayAnywhere', 'displayAnywhere', 'It is easy to call a hook from tpl', 1, 0),
(137, 'displayProductSecondaryColumn', 'displayProductSecondaryColumn', 'Product secondary column', 1, 0),
(138, 'displayFooterTop', 'displayFooterTop', 'Footer top', 1, 0),
(139, 'displayFooterSecondary', 'displayFooterSecondary', 'Footer secondary', 1, 0),
(140, 'displayHomeSecondaryLeft', 'displayHomeSecondaryLeft', 'Home secondary left', 1, 0),
(141, 'displayHomeSecondaryRight', 'displayHomeSecondaryRight', 'Home secondary right', 1, 0),
(142, 'displayHomeTop', 'displayHomeTop', 'Home page top', 1, 0),
(143, 'displayHomeBottom', 'displayHomeBottom', 'Hom epage bottom', 1, 0),
(144, 'displayTopLeft', 'displayTopLeft', 'Top left-hand side of the page', 1, 0),
(145, 'displayAdminHomeQuickLinks', 'displayAdminHomeQuickLinks', '', 0, 0),
(146, 'displayStBlogArticleFooter', 'displayStBlogArticleFooter', 'Bottom of article', 1, 0),
(147, 'displayStBlogHome', 'displayStBlogHome', 'This hook displays new elements on the blog homepage', 1, 0),
(148, 'displayStBlogHomeTop', 'displayStBlogHomeTop', 'This hook displays new elements on the top of blog homepage', 1, 0),
(149, 'displayStBlogHomeBottom', 'displayStBlogHomeBottom', 'This hook displays new elements on the bottom of blog homepage', 1, 0),
(150, 'displayStBlogLeftColumn', 'displayStBlogLeftColumn', 'This hook displays new elements in the left-hand column', 1, 0),
(151, 'displayStBlogRightColumn', 'displayStBlogRightColumn', 'This hook displays new elements in the right-hand column', 1, 0),
(152, 'displayAdminProductsExtra', 'displayAdminProductsExtra', '', 0, 0),
(153, 'moduleRoutes', 'moduleRoutes', '', 0, 0),
(154, 'displayStBlogArticleSecondary', 'displayStBlogArticleSecondary', 'Secondary block of article', 1, 0),
(155, 'actionBeforeSubmitAccount', 'actionBeforeSubmitAccount', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_hook_alias`
--

CREATE TABLE IF NOT EXISTS `ps_hook_alias` (
  `id_hook_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_hook_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Dumping data for table `ps_hook_alias`
--

INSERT INTO `ps_hook_alias` (`id_hook_alias`, `alias`, `name`) VALUES
(1, 'payment', 'displayPayment'),
(2, 'newOrder', 'actionValidateOrder'),
(3, 'paymentConfirm', 'actionPaymentConfirmation'),
(4, 'paymentReturn', 'displayPaymentReturn'),
(5, 'updateQuantity', 'actionUpdateQuantity'),
(6, 'rightColumn', 'displayRightColumn'),
(7, 'leftColumn', 'displayLeftColumn'),
(8, 'home', 'displayHome'),
(9, 'header', 'displayHeader'),
(10, 'cart', 'actionCartSave'),
(11, 'authentication', 'actionAuthentication'),
(12, 'addproduct', 'actionProductAdd'),
(13, 'updateproduct', 'actionProductUpdate'),
(14, 'top', 'displayTop'),
(15, 'extraRight', 'displayRightColumnProduct'),
(16, 'deleteproduct', 'actionProductDelete'),
(17, 'productfooter', 'displayFooterProduct'),
(18, 'invoice', 'displayInvoice'),
(19, 'updateOrderStatus', 'actionOrderStatusUpdate'),
(20, 'adminOrder', 'displayAdminOrder'),
(21, 'footer', 'displayFooter'),
(22, 'PDFInvoice', 'displayPDFInvoice'),
(23, 'adminCustomers', 'displayAdminCustomers'),
(24, 'orderConfirmation', 'displayOrderConfirmation'),
(25, 'createAccount', 'actionCustomerAccountAdd'),
(26, 'customerAccount', 'displayCustomerAccount'),
(27, 'orderSlip', 'actionOrderSlipAdd'),
(28, 'productTab', 'displayProductTab'),
(29, 'productTabContent', 'displayProductTabContent'),
(30, 'shoppingCart', 'displayShoppingCartFooter'),
(31, 'createAccountForm', 'displayCustomerAccountForm'),
(32, 'AdminStatsModules', 'displayAdminStatsModules'),
(33, 'GraphEngine', 'displayAdminStatsGraphEngine'),
(34, 'orderReturn', 'actionOrderReturn'),
(35, 'productActions', 'displayProductButtons'),
(36, 'backOfficeHome', 'displayBackOfficeHome'),
(37, 'GridEngine', 'displayAdminStatsGridEngine'),
(38, 'watermark', 'actionWatermark'),
(39, 'cancelProduct', 'actionProductCancel'),
(40, 'extraLeft', 'displayLeftColumnProduct'),
(41, 'productOutOfStock', 'actionProductOutOfStock'),
(42, 'updateProductAttribute', 'actionProductAttributeUpdate'),
(43, 'extraCarrier', 'displayCarrierList'),
(44, 'shoppingCartExtra', 'displayShoppingCart'),
(45, 'search', 'actionSearch'),
(46, 'backBeforePayment', 'displayBeforePayment'),
(47, 'updateCarrier', 'actionCarrierUpdate'),
(48, 'postUpdateOrderStatus', 'actionOrderStatusPostUpdate'),
(49, 'createAccountTop', 'displayCustomerAccountFormTop'),
(50, 'backOfficeHeader', 'displayBackOfficeHeader'),
(51, 'backOfficeTop', 'displayBackOfficeTop'),
(52, 'backOfficeFooter', 'displayBackOfficeFooter'),
(53, 'deleteProductAttribute', 'actionProductAttributeDelete'),
(54, 'processCarrier', 'actionCarrierProcess'),
(55, 'orderDetail', 'actionOrderDetail'),
(56, 'beforeCarrier', 'displayBeforeCarrier'),
(57, 'orderDetailDisplayed', 'displayOrderDetail'),
(58, 'paymentCCAdded', 'actionPaymentCCAdd'),
(59, 'extraProductComparison', 'displayProductComparison'),
(60, 'categoryAddition', 'actionCategoryAdd'),
(61, 'categoryUpdate', 'actionCategoryUpdate'),
(62, 'categoryDeletion', 'actionCategoryDelete'),
(63, 'beforeAuthentication', 'actionBeforeAuthentication'),
(64, 'paymentTop', 'displayPaymentTop'),
(65, 'afterCreateHtaccess', 'actionHtaccessCreate'),
(66, 'afterSaveAdminMeta', 'actionAdminMetaSave'),
(67, 'attributeGroupForm', 'displayAttributeGroupForm'),
(68, 'afterSaveAttributeGroup', 'actionAttributeGroupSave'),
(69, 'afterDeleteAttributeGroup', 'actionAttributeGroupDelete'),
(70, 'featureForm', 'displayFeatureForm'),
(71, 'afterSaveFeature', 'actionFeatureSave'),
(72, 'afterDeleteFeature', 'actionFeatureDelete'),
(73, 'afterSaveProduct', 'actionProductSave'),
(74, 'productListAssign', 'actionProductListOverride'),
(75, 'postProcessAttributeGroup', 'displayAttributeGroupPostProcess'),
(76, 'postProcessFeature', 'displayFeaturePostProcess'),
(77, 'featureValueForm', 'displayFeatureValueForm'),
(78, 'postProcessFeatureValue', 'displayFeatureValuePostProcess'),
(79, 'afterDeleteFeatureValue', 'actionFeatureValueDelete'),
(80, 'afterSaveFeatureValue', 'actionFeatureValueSave'),
(81, 'attributeForm', 'displayAttributeForm'),
(82, 'postProcessAttribute', 'actionAttributePostProcess'),
(83, 'afterDeleteAttribute', 'actionAttributeDelete'),
(84, 'afterSaveAttribute', 'actionAttributeSave'),
(85, 'taxManager', 'actionTaxManager'),
(86, 'myAccountBlock', 'displayMyAccountBlock');

-- --------------------------------------------------------

--
-- Table structure for table `ps_hook_module`
--

CREATE TABLE IF NOT EXISTS `ps_hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`,`id_shop`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`),
  KEY `position` (`id_shop`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_hook_module`
--

INSERT INTO `ps_hook_module` (`id_module`, `id_shop`, `id_hook`, `position`) VALUES
(4, 1, 90, 1),
(5, 1, 8, 1),
(5, 1, 61, 1),
(5, 1, 62, 1),
(5, 1, 63, 1),
(5, 1, 91, 1),
(5, 1, 92, 1),
(12, 1, 100, 1),
(12, 1, 101, 1),
(12, 1, 103, 1),
(19, 1, 15, 1),
(19, 1, 104, 1),
(29, 1, 1, 1),
(29, 1, 5, 1),
(33, 1, 34, 1),
(35, 1, 38, 1),
(48, 1, 12, 1),
(48, 1, 26, 1),
(58, 1, 46, 1),
(60, 1, 33, 1),
(62, 1, 2, 1),
(62, 1, 20, 1),
(62, 1, 51, 1),
(62, 1, 89, 1),
(62, 1, 115, 1),
(62, 1, 116, 1),
(62, 1, 117, 1),
(62, 1, 118, 1),
(62, 1, 119, 1),
(62, 1, 120, 1),
(62, 1, 121, 1),
(62, 1, 122, 1),
(62, 1, 123, 1),
(62, 1, 124, 1),
(62, 1, 125, 1),
(62, 1, 126, 1),
(62, 1, 127, 1),
(62, 1, 128, 1),
(62, 1, 129, 1),
(62, 1, 130, 1),
(62, 1, 131, 1),
(63, 1, 10, 1),
(63, 1, 16, 1),
(63, 1, 145, 1),
(65, 1, 7, 1),
(65, 1, 9, 1),
(65, 1, 95, 1),
(65, 1, 136, 1),
(65, 1, 137, 1),
(65, 1, 138, 1),
(65, 1, 139, 1),
(65, 1, 141, 1),
(65, 1, 142, 1),
(65, 1, 144, 1),
(66, 1, 132, 1),
(70, 1, 108, 1),
(70, 1, 109, 1),
(71, 1, 96, 1),
(71, 1, 98, 1),
(75, 1, 93, 1),
(75, 1, 94, 1),
(75, 1, 105, 1),
(75, 1, 107, 1),
(75, 1, 112, 1),
(75, 1, 113, 1),
(75, 1, 135, 1),
(77, 1, 133, 1),
(77, 1, 134, 1),
(78, 1, 140, 1),
(78, 1, 143, 1),
(82, 1, 13, 1),
(82, 1, 14, 1),
(82, 1, 17, 1),
(82, 1, 29, 1),
(82, 1, 152, 1),
(87, 1, 51, 1),
(87, 1, 153, 1),
(88, 1, 150, 1),
(88, 1, 151, 1),
(89, 1, 147, 1),
(91, 1, 146, 1),
(93, 1, 154, 1),
(95, 1, 22, 1),
(98, 1, 31, 1),
(99, 1, 32, 1),
(99, 1, 155, 1),
(101, 1, 18, 1),
(102, 1, 49, 1),
(103, 1, 30, 1),
(103, 1, 42, 1),
(103, 1, 60, 1),
(104, 1, 68, 1),
(104, 1, 69, 1),
(104, 1, 70, 1),
(104, 1, 71, 1),
(104, 1, 72, 1),
(104, 1, 73, 1),
(104, 1, 74, 1),
(104, 1, 75, 1),
(104, 1, 76, 1),
(104, 1, 77, 1),
(104, 1, 78, 1),
(104, 1, 79, 1),
(104, 1, 80, 1),
(104, 1, 81, 1),
(104, 1, 82, 1),
(104, 1, 83, 1),
(104, 1, 84, 1),
(104, 1, 85, 1),
(105, 1, 11, 1),
(105, 1, 24, 1),
(105, 1, 27, 1),
(105, 1, 36, 1),
(1, 1, 1, 2),
(1, 1, 5, 2),
(4, 1, 15, 2),
(15, 1, 22, 2),
(16, 1, 8, 2),
(34, 1, 34, 2),
(57, 1, 33, 2),
(62, 1, 111, 2),
(62, 1, 114, 2),
(63, 1, 95, 2),
(63, 1, 136, 2),
(64, 1, 146, 2),
(65, 1, 133, 2),
(65, 1, 140, 2),
(65, 1, 143, 2),
(67, 1, 132, 2),
(75, 1, 13, 2),
(75, 1, 14, 2),
(75, 1, 17, 2),
(75, 1, 61, 2),
(75, 1, 62, 2),
(75, 1, 96, 2),
(75, 1, 98, 2),
(75, 1, 108, 2),
(75, 1, 109, 2),
(78, 1, 9, 2),
(78, 1, 134, 2),
(78, 1, 135, 2),
(78, 1, 138, 2),
(78, 1, 141, 2),
(78, 1, 142, 2),
(82, 1, 30, 2),
(84, 1, 36, 2),
(90, 1, 147, 2),
(90, 1, 150, 2),
(90, 1, 151, 2),
(93, 1, 27, 2),
(94, 1, 153, 2),
(95, 1, 7, 2),
(95, 1, 93, 2),
(95, 1, 94, 2),
(95, 1, 105, 2),
(95, 1, 107, 2),
(95, 1, 139, 2),
(96, 1, 137, 2),
(96, 1, 152, 2),
(98, 1, 10, 2),
(102, 1, 18, 2),
(102, 1, 31, 2),
(104, 1, 63, 2),
(16, 1, 10, 3),
(32, 1, 34, 3),
(56, 1, 33, 3),
(64, 1, 137, 3),
(65, 1, 8, 3),
(65, 1, 134, 3),
(65, 1, 135, 3),
(73, 1, 136, 3),
(77, 1, 7, 3),
(77, 1, 9, 3),
(77, 1, 95, 3),
(77, 1, 109, 3),
(77, 1, 141, 3),
(78, 1, 133, 3),
(80, 1, 22, 3),
(81, 1, 151, 3),
(82, 1, 63, 3),
(83, 1, 18, 3),
(86, 1, 153, 3),
(89, 1, 138, 3),
(92, 1, 150, 3),
(95, 1, 96, 3),
(95, 1, 98, 3),
(95, 1, 132, 3),
(97, 1, 61, 3),
(97, 1, 62, 3),
(97, 1, 140, 3),
(28, 1, 10, 4),
(31, 1, 34, 4),
(54, 1, 33, 4),
(65, 1, 22, 4),
(68, 1, 132, 4),
(70, 1, 136, 4),
(75, 1, 63, 4),
(77, 1, 18, 4),
(77, 1, 137, 4),
(78, 1, 7, 4),
(78, 1, 95, 4),
(78, 1, 109, 4),
(92, 1, 151, 4),
(93, 1, 150, 4),
(95, 1, 8, 4),
(95, 1, 138, 4),
(4, 1, 10, 5),
(51, 1, 33, 5),
(65, 1, 18, 5),
(69, 1, 136, 5),
(70, 1, 63, 5),
(70, 1, 138, 5),
(77, 1, 8, 5),
(78, 1, 22, 5),
(87, 1, 95, 5),
(93, 1, 151, 5),
(94, 1, 150, 5),
(105, 1, 7, 5),
(49, 1, 33, 6),
(70, 1, 7, 6),
(75, 1, 95, 6),
(77, 1, 136, 6),
(78, 1, 8, 6),
(78, 1, 18, 6),
(79, 1, 138, 6),
(94, 1, 151, 6),
(95, 1, 150, 6),
(97, 1, 63, 6),
(99, 1, 10, 6),
(101, 1, 13, 6),
(101, 1, 14, 6),
(101, 1, 17, 6),
(104, 1, 22, 6),
(5, 1, 7, 7),
(5, 1, 10, 7),
(39, 1, 15, 7),
(44, 1, 33, 7),
(46, 1, 33, 7),
(48, 1, 22, 7),
(69, 1, 13, 7),
(69, 1, 14, 7),
(69, 1, 17, 7),
(70, 1, 8, 7),
(78, 1, 136, 7),
(85, 1, 138, 7),
(95, 1, 95, 7),
(95, 1, 151, 7),
(25, 1, 10, 8),
(38, 1, 15, 8),
(41, 1, 33, 8),
(76, 1, 13, 8),
(76, 1, 14, 8),
(76, 1, 17, 8),
(83, 1, 136, 8),
(19, 1, 10, 9),
(53, 1, 33, 9),
(70, 1, 13, 9),
(70, 1, 14, 9),
(70, 1, 17, 9),
(84, 1, 136, 9),
(15, 1, 10, 10),
(38, 1, 33, 10),
(81, 1, 13, 10),
(81, 1, 14, 10),
(81, 1, 17, 10),
(86, 1, 136, 10),
(39, 1, 33, 11),
(72, 1, 13, 11),
(72, 1, 14, 11),
(72, 1, 17, 11),
(87, 1, 136, 11),
(100, 1, 10, 11),
(55, 1, 33, 12),
(93, 1, 136, 12),
(96, 1, 14, 12),
(96, 1, 17, 12),
(101, 1, 10, 12),
(42, 1, 33, 13),
(95, 1, 136, 13),
(102, 1, 10, 13),
(103, 1, 10, 14),
(40, 1, 33, 15),
(104, 1, 10, 15),
(43, 1, 33, 16),
(73, 1, 10, 16),
(45, 1, 33, 17),
(75, 1, 10, 17),
(52, 1, 33, 18),
(77, 1, 10, 18),
(58, 1, 33, 19),
(78, 1, 10, 19),
(47, 1, 33, 20),
(80, 1, 10, 20),
(59, 1, 33, 21),
(82, 1, 10, 21),
(50, 1, 33, 22),
(83, 1, 10, 22),
(105, 1, 10, 23),
(84, 1, 10, 24),
(86, 1, 10, 25),
(87, 1, 10, 27),
(88, 1, 10, 28),
(93, 1, 10, 29),
(90, 1, 10, 30),
(12, 1, 10, 31),
(97, 1, 10, 32);

-- --------------------------------------------------------

--
-- Table structure for table `ps_hook_module_exceptions`
--

CREATE TABLE IF NOT EXISTS `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_image`
--

CREATE TABLE IF NOT EXISTS `ps_image` (
  `id_image` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `position` smallint(2) unsigned NOT NULL DEFAULT '0',
  `cover` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`),
  KEY `image_product` (`id_product`),
  KEY `id_product_cover` (`id_product`,`cover`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `ps_image`
--

INSERT INTO `ps_image` (`id_image`, `id_product`, `position`, `cover`) VALUES
(1, 3, 1, 1),
(2, 3, 2, 0),
(3, 3, 3, 0),
(4, 4, 1, 0),
(5, 4, 2, 0),
(6, 4, 3, 1),
(7, 5, 1, 1),
(8, 5, 2, 0),
(9, 5, 3, 0),
(10, 5, 4, 0),
(11, 5, 5, 0),
(12, 5, 6, 0),
(13, 6, 1, 1),
(14, 7, 1, 1),
(15, 1, 1, 1),
(16, 1, 2, 0),
(17, 1, 3, 0),
(18, 1, 4, 0),
(19, 1, 5, 0),
(20, 1, 6, 0),
(21, 1, 7, 0),
(22, 1, 8, 0),
(23, 2, 1, 1),
(24, 2, 2, 0),
(25, 2, 3, 0),
(26, 2, 4, 0),
(30, 11, 1, 1),
(31, 11, 2, 0),
(42, 13, 1, 1),
(43, 13, 2, 0),
(44, 14, 1, 1),
(45, 15, 1, 1),
(46, 16, 1, 1),
(47, 17, 1, 1),
(48, 17, 2, 0),
(49, 18, 1, 1),
(50, 18, 2, 0),
(51, 19, 1, 1),
(52, 19, 2, 0),
(53, 20, 1, 0),
(54, 20, 2, 1),
(55, 21, 1, 1),
(57, 22, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_image_lang`
--

CREATE TABLE IF NOT EXISTS `ps_image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_image_lang`
--

INSERT INTO `ps_image_lang` (`id_image`, `id_lang`, `legend`) VALUES
(1, 1, 'MacBook Air'),
(1, 3, ''),
(2, 1, 'MacBook Air'),
(2, 3, ''),
(3, 1, 'MacBook Air'),
(3, 3, ''),
(4, 1, 'MacBook Air'),
(4, 3, ''),
(5, 1, 'MacBook Air'),
(5, 3, ''),
(6, 1, ' MacBook Air SuperDrive'),
(6, 3, ''),
(7, 1, 'iPod touch'),
(7, 3, ''),
(8, 1, 'iPod touch'),
(8, 3, ''),
(9, 1, 'iPod touch'),
(9, 3, ''),
(10, 1, 'iPod touch'),
(10, 3, ''),
(11, 1, 'iPod touch'),
(11, 3, ''),
(12, 1, 'iPod touch'),
(12, 3, ''),
(13, 1, 'housse-portefeuille-en-cuir'),
(13, 3, ''),
(14, 1, 'Shure SE210 Sound-Isolating Earphones for iPod and iPhone'),
(14, 3, ''),
(15, 1, 'iPod Nano'),
(15, 3, ''),
(16, 1, 'iPod Nano'),
(16, 3, ''),
(17, 1, 'iPod Nano'),
(17, 3, ''),
(18, 1, 'iPod Nano'),
(18, 3, ''),
(19, 1, 'iPod Nano'),
(19, 3, ''),
(20, 1, 'iPod Nano'),
(20, 3, ''),
(21, 1, 'iPod Nano'),
(21, 3, ''),
(22, 1, 'iPod Nano'),
(22, 3, ''),
(23, 1, 'iPod shuffle'),
(23, 3, ''),
(24, 1, 'iPod shuffle'),
(24, 3, ''),
(25, 1, 'iPod shuffle'),
(25, 3, ''),
(26, 1, 'iPod shuffle'),
(26, 3, ''),
(30, 1, 'dress 1'),
(30, 3, 'שימלה 1'),
(31, 1, 'dress 1'),
(31, 3, 'שימלה 1'),
(42, 1, 'dress 1'),
(42, 3, 'שמלת קרף כחולה'),
(43, 1, 'dress 1'),
(43, 3, 'שמלת קרף אדומה'),
(44, 1, 'dress 1'),
(44, 3, 'שמלת נקודות אדומה עם פרח'),
(45, 1, 'dress 1'),
(45, 3, 'שמלת קרף כחולה'),
(46, 1, 'dress 1'),
(46, 3, 'שמלת קרף כחולה'),
(47, 1, 'peach dress with silver lines'),
(47, 3, 'מסתובבת אדומה עם נקודות'),
(48, 1, 'peach dress with silver lines'),
(48, 3, 'מסתובבת אדומה עם נקודות'),
(49, 1, 'blue dots skirt with alastic belt'),
(49, 3, 'מסתובבת כחולה עם נקודות'),
(50, 1, 'blue dots skirt with alastic belt'),
(50, 3, 'מסתובבת כחולה עם נקודות'),
(51, 1, 'pink dots panel skirt'),
(51, 3, 'קומות ארוכה ורודה בהירה'),
(52, 1, 'pink dots panel skirt'),
(52, 3, 'קומות ארוכה ורודה בהירה'),
(53, 1, 'Floral skirt with alastic belt'),
(53, 3, 'מסתובבת פרחונית'),
(54, 1, 'Floral skirt with alastic belt'),
(54, 3, 'מסתובבת פרחונית'),
(55, 1, 'white shirt for boys'),
(55, 3, 'חולצת צווארון סיני - לבנה'),
(57, 1, 'white dress with silver lines'),
(57, 3, 'שמלת כתפיות לבנה עם פס כסף');

-- --------------------------------------------------------

--
-- Table structure for table `ps_image_shop`
--

CREATE TABLE IF NOT EXISTS `ps_image_shop` (
  `id_image` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `cover` tinyint(1) NOT NULL,
  KEY `id_image` (`id_image`,`id_shop`,`cover`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_image_shop`
--

INSERT INTO `ps_image_shop` (`id_image`, `id_shop`, `cover`) VALUES
(1, 1, 1),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 1),
(7, 1, 1),
(8, 1, 0),
(9, 1, 0),
(10, 1, 0),
(11, 1, 0),
(12, 1, 0),
(13, 1, 1),
(14, 1, 1),
(15, 1, 1),
(16, 1, 0),
(17, 1, 0),
(18, 1, 0),
(19, 1, 0),
(20, 1, 0),
(21, 1, 0),
(22, 1, 0),
(23, 1, 1),
(24, 1, 0),
(25, 1, 0),
(26, 1, 0),
(30, 1, 1),
(31, 1, 0),
(42, 1, 1),
(43, 1, 0),
(44, 1, 1),
(45, 1, 1),
(46, 1, 1),
(47, 1, 1),
(48, 1, 0),
(49, 1, 1),
(50, 1, 0),
(51, 1, 1),
(52, 1, 0),
(53, 1, 0),
(54, 1, 1),
(55, 1, 1),
(57, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_image_type`
--

CREATE TABLE IF NOT EXISTS `ps_image_type` (
  `id_image_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ps_image_type`
--

INSERT INTO `ps_image_type` (`id_image_type`, `name`, `width`, `height`, `products`, `categories`, `manufacturers`, `suppliers`, `scenes`, `stores`) VALUES
(1, 'small_default', 45, 51, 1, 1, 1, 1, 0, 0),
(2, 'medium_default', 120, 138, 1, 1, 1, 1, 0, 1),
(3, 'large_default', 368, 420, 1, 1, 1, 1, 0, 0),
(4, 'thickbox_default', 700, 800, 1, 0, 0, 0, 0, 0),
(5, 'category_default', 200, 114, 0, 1, 0, 0, 0, 0),
(6, 'home_default', 273, 312, 1, 0, 0, 0, 0, 0),
(7, 'scene_default', 520, 189, 0, 0, 0, 0, 1, 0),
(8, 'm_scene_default', 161, 58, 0, 0, 0, 0, 1, 0),
(9, 'manufacturer_default', 169, 104, 0, 0, 1, 0, 0, 1),
(10, 'thumb_default', 56, 64, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_import_match`
--

CREATE TABLE IF NOT EXISTS `ps_import_match` (
  `id_import_match` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int(2) NOT NULL,
  PRIMARY KEY (`id_import_match`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_lang`
--

CREATE TABLE IF NOT EXISTS `ps_lang` (
  `id_lang` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  `language_code` char(5) NOT NULL,
  `date_format_lite` char(32) NOT NULL DEFAULT 'Y-m-d',
  `date_format_full` char(32) NOT NULL DEFAULT 'Y-m-d H:i:s',
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_lang`
--

INSERT INTO `ps_lang` (`id_lang`, `name`, `active`, `iso_code`, `language_code`, `date_format_lite`, `date_format_full`, `is_rtl`) VALUES
(1, 'English (English)', 1, 'en', 'en', 'm/j/Y', 'm/j/Y H:i:s', 0),
(3, 'Hebrew', 1, 'he', 'he', 'Y-m-d', 'Y-m-d H:i:s', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_lang_shop`
--

CREATE TABLE IF NOT EXISTS `ps_lang_shop` (
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_lang_shop`
--

INSERT INTO `ps_lang_shop` (`id_lang`, `id_shop`) VALUES
(1, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_category`
--

CREATE TABLE IF NOT EXISTS `ps_layered_category` (
  `id_layered_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `id_value` int(10) unsigned DEFAULT '0',
  `type` enum('category','id_feature','id_attribute_group','quantity','condition','manufacturer','weight','price') NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `filter_type` int(10) unsigned NOT NULL DEFAULT '0',
  `filter_show_limit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_layered_category`),
  KEY `id_category` (`id_category`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `ps_layered_category`
--

INSERT INTO `ps_layered_category` (`id_layered_category`, `id_shop`, `id_category`, `id_value`, `type`, `position`, `filter_type`, `filter_show_limit`) VALUES
(1, 1, 2, NULL, 'category', 1, 0, 0),
(2, 1, 2, 2, 'id_attribute_group', 2, 0, 0),
(3, 1, 2, 1, 'id_attribute_group', 3, 0, 0),
(4, 1, 2, NULL, 'quantity', 4, 0, 0),
(5, 1, 2, NULL, 'manufacturer', 5, 0, 0),
(6, 1, 2, NULL, 'condition', 6, 0, 0),
(7, 1, 2, NULL, 'weight', 7, 0, 0),
(8, 1, 2, NULL, 'price', 8, 0, 0),
(9, 1, 2, 3, 'id_attribute_group', 9, 0, 0),
(10, 1, 3, NULL, 'category', 1, 0, 0),
(11, 1, 3, 2, 'id_attribute_group', 2, 0, 0),
(12, 1, 3, 1, 'id_attribute_group', 3, 0, 0),
(13, 1, 3, NULL, 'quantity', 4, 0, 0),
(14, 1, 3, NULL, 'manufacturer', 5, 0, 0),
(15, 1, 3, NULL, 'condition', 6, 0, 0),
(16, 1, 3, NULL, 'weight', 7, 0, 0),
(17, 1, 3, NULL, 'price', 8, 0, 0),
(18, 1, 3, 3, 'id_attribute_group', 9, 0, 0),
(19, 1, 5, NULL, 'category', 1, 0, 0),
(20, 1, 5, 2, 'id_attribute_group', 2, 0, 0),
(21, 1, 5, 1, 'id_attribute_group', 3, 0, 0),
(22, 1, 5, NULL, 'quantity', 4, 0, 0),
(23, 1, 5, NULL, 'manufacturer', 5, 0, 0),
(24, 1, 5, NULL, 'condition', 6, 0, 0),
(25, 1, 5, NULL, 'weight', 7, 0, 0),
(26, 1, 5, NULL, 'price', 8, 0, 0),
(27, 1, 5, 3, 'id_attribute_group', 9, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_filter`
--

CREATE TABLE IF NOT EXISTS `ps_layered_filter` (
  `id_layered_filter` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `filters` text,
  `n_categories` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_layered_filter`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_layered_filter`
--

INSERT INTO `ps_layered_filter` (`id_layered_filter`, `name`, `filters`, `n_categories`, `date_add`) VALUES
(1, 'My template 2014-01-07', 'a:11:{s:10:"categories";a:3:{i:0;i:2;i:1;i:3;i:2;i:5;}s:9:"shop_list";a:1:{i:1;i:1;}s:31:"layered_selection_subcategories";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_2";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_1";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:23:"layered_selection_stock";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_manufacturer";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:27:"layered_selection_condition";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:31:"layered_selection_weight_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:30:"layered_selection_price_slider";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}s:22:"layered_selection_ag_3";a:2:{s:11:"filter_type";i:0;s:17:"filter_show_limit";i:0;}}', 3, '2014-01-07 15:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_filter_shop`
--

CREATE TABLE IF NOT EXISTS `ps_layered_filter_shop` (
  `id_layered_filter` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_layered_filter`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_filter_shop`
--

INSERT INTO `ps_layered_filter_shop` (`id_layered_filter`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_friendly_url`
--

CREATE TABLE IF NOT EXISTS `ps_layered_friendly_url` (
  `id_layered_friendly_url` int(11) NOT NULL AUTO_INCREMENT,
  `url_key` varchar(32) NOT NULL,
  `data` varchar(200) NOT NULL,
  `id_lang` int(11) NOT NULL,
  PRIMARY KEY (`id_layered_friendly_url`),
  KEY `id_lang` (`id_lang`),
  KEY `url_key` (`url_key`(5))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `ps_layered_friendly_url`
--

INSERT INTO `ps_layered_friendly_url` (`id_layered_friendly_url`, `url_key`, `data`, `id_lang`) VALUES
(1, '3f1005f8be7881795fc5feddfdba756f', 'a:1:{s:8:"category";a:1:{i:1;s:1:"1";}}', 1),
(2, 'e22ad4e9f8f445df1283ec3383c55ed8', 'a:1:{s:8:"category";a:1:{i:2;s:1:"2";}}', 1),
(3, 'ada3af1476b7579c52a673d6e0685fa6', 'a:1:{s:8:"category";a:1:{i:3;s:1:"3";}}', 1),
(4, '0c8be5aab28a7acac357cea263fe1c9c', 'a:1:{s:8:"category";a:1:{i:4;s:1:"4";}}', 1),
(5, 'f79034dd7a7409d9d88a80e6f60533a0', 'a:1:{s:8:"category";a:1:{i:5;s:1:"5";}}', 1),
(6, '3aa5510a383d8390bcf30b4dfaa95de6', 'a:1:{s:18:"id_attribute_group";a:1:{i:1;s:3:"1_1";}}', 1),
(7, '4cb41b37e2d8ea8e2f80842da001c842', 'a:1:{s:18:"id_attribute_group";a:1:{i:2;s:3:"1_2";}}', 1),
(8, '018491853c6ad8ae0503264dd698f2f1', 'a:1:{s:18:"id_attribute_group";a:1:{i:8;s:3:"1_8";}}', 1),
(9, 'd85e4d95e7043942e5a8ccdb45273117', 'a:1:{s:18:"id_attribute_group";a:1:{i:9;s:3:"1_9";}}', 1),
(10, '0d2e2c3af0857bf14f485863c89e28b8', 'a:1:{s:18:"id_attribute_group";a:1:{i:12;s:4:"1_12";}}', 1),
(11, 'b745040632c64a0eb29281bde3e6e5a4', 'a:1:{s:18:"id_attribute_group";a:1:{i:13;s:4:"1_13";}}', 1),
(12, '51c85316502fb09931e5025d1b0dbab5', 'a:1:{s:18:"id_attribute_group";a:1:{i:15;s:4:"1_15";}}', 1),
(13, '41451c0b1df8dc8a0483947c62ea6b22', 'a:1:{s:18:"id_attribute_group";a:1:{i:16;s:4:"1_16";}}', 1),
(14, '8bd2d66546f55743782f1870d2f30d43', 'a:1:{s:18:"id_attribute_group";a:1:{i:17;s:4:"1_17";}}', 1),
(15, '9528e9f3b5ba366ba594d2868fd38ed4', 'a:1:{s:18:"id_attribute_group";a:1:{i:3;s:3:"2_3";}}', 1),
(16, '54dd539ce8bbf02b44485941f2d8d80b', 'a:1:{s:18:"id_attribute_group";a:1:{i:4;s:3:"2_4";}}', 1),
(17, 'ab223cc0ca7ebf34af71e067556ee2aa', 'a:1:{s:18:"id_attribute_group";a:1:{i:5;s:3:"2_5";}}', 1),
(18, '73b845a28e9ced9709fa414f9b97dae9', 'a:1:{s:18:"id_attribute_group";a:1:{i:6;s:3:"2_6";}}', 1),
(19, '4b4bb79b20455e8047c972f9ca69cd72', 'a:1:{s:18:"id_attribute_group";a:1:{i:7;s:3:"2_7";}}', 1),
(20, '0a68b3ba0819d7126935f51335ef9503', 'a:1:{s:18:"id_attribute_group";a:1:{i:14;s:4:"2_14";}}', 1),
(21, 'd3b86fde480f97ac1ae07576857c8971', 'a:1:{s:18:"id_attribute_group";a:1:{i:18;s:4:"2_18";}}', 1),
(22, 'be50cfae4c360fdb124af017a4e80905', 'a:1:{s:18:"id_attribute_group";a:1:{i:19;s:4:"2_19";}}', 1),
(23, '601a4dd13077730810f102b18680b537', 'a:1:{s:18:"id_attribute_group";a:1:{i:20;s:4:"2_20";}}', 1),
(24, 'a30eb82a29b489938809bef882364015', 'a:1:{s:18:"id_attribute_group";a:1:{i:10;s:4:"3_10";}}', 1),
(25, '67e46d0ddce8ffc3edd49fb01471b91c', 'a:1:{s:18:"id_attribute_group";a:1:{i:11;s:4:"3_11";}}', 1),
(26, '14ef3952eddf958ec1f628065f6c7689', 'a:1:{s:8:"quantity";a:1:{i:0;i:0;}}', 1),
(27, '19e5bdea58716c8f3ff52345d1b5a442', 'a:1:{s:8:"quantity";a:1:{i:0;i:1;}}', 1),
(28, '11c2881845b925423888cd329d0c4953', 'a:1:{s:9:"condition";a:1:{s:3:"new";s:3:"new";}}', 1),
(29, '074755ccbf623ca666bd866203d0dec7', 'a:1:{s:9:"condition";a:1:{s:4:"used";s:4:"used";}}', 1),
(30, '70b63b881a45f66c86ea78ace4cfb6a7', 'a:1:{s:9:"condition";a:1:{s:11:"refurbished";s:11:"refurbished";}}', 1),
(31, 'f80401907167f9dc1855827ce504cd97', 'a:1:{s:12:"manufacturer";a:1:{i:1;s:1:"1";}}', 1),
(32, '48c2cea86ea94aed50e6f76d6b2fa003', 'a:1:{s:12:"manufacturer";a:1:{i:2;s:1:"2";}}', 1),
(33, '4682451c9feabfe5ca6279bd6353197b', 'a:1:{s:8:"category";a:1:{i:1;s:1:"1";}}', 2),
(34, '56ea0c920b7d24eb3d7f6275b937eddc', 'a:1:{s:8:"category";a:1:{i:2;s:1:"2";}}', 2),
(35, '6d2b4b2b0c54ecdf22d74f3bb0690b5a', 'a:1:{s:8:"category";a:1:{i:3;s:1:"3";}}', 2),
(36, 'deec590039763808ac12ee23ecd8330f', 'a:1:{s:8:"category";a:1:{i:4;s:1:"4";}}', 2),
(37, '096dd0fb500f470d8d081417a8b21d10', 'a:1:{s:8:"category";a:1:{i:5;s:1:"5";}}', 2),
(38, '3aa5510a383d8390bcf30b4dfaa95de6', 'a:1:{s:18:"id_attribute_group";a:1:{i:1;s:3:"1_1";}}', 2),
(39, '4cb41b37e2d8ea8e2f80842da001c842', 'a:1:{s:18:"id_attribute_group";a:1:{i:2;s:3:"1_2";}}', 2),
(40, '018491853c6ad8ae0503264dd698f2f1', 'a:1:{s:18:"id_attribute_group";a:1:{i:8;s:3:"1_8";}}', 2),
(41, 'd85e4d95e7043942e5a8ccdb45273117', 'a:1:{s:18:"id_attribute_group";a:1:{i:9;s:3:"1_9";}}', 2),
(42, '0d2e2c3af0857bf14f485863c89e28b8', 'a:1:{s:18:"id_attribute_group";a:1:{i:12;s:4:"1_12";}}', 2),
(43, 'b745040632c64a0eb29281bde3e6e5a4', 'a:1:{s:18:"id_attribute_group";a:1:{i:13;s:4:"1_13";}}', 2),
(44, '51c85316502fb09931e5025d1b0dbab5', 'a:1:{s:18:"id_attribute_group";a:1:{i:15;s:4:"1_15";}}', 2),
(45, '41451c0b1df8dc8a0483947c62ea6b22', 'a:1:{s:18:"id_attribute_group";a:1:{i:16;s:4:"1_16";}}', 2),
(46, '8bd2d66546f55743782f1870d2f30d43', 'a:1:{s:18:"id_attribute_group";a:1:{i:17;s:4:"1_17";}}', 2),
(47, '9528e9f3b5ba366ba594d2868fd38ed4', 'a:1:{s:18:"id_attribute_group";a:1:{i:3;s:3:"2_3";}}', 2),
(48, '54dd539ce8bbf02b44485941f2d8d80b', 'a:1:{s:18:"id_attribute_group";a:1:{i:4;s:3:"2_4";}}', 2),
(49, 'ab223cc0ca7ebf34af71e067556ee2aa', 'a:1:{s:18:"id_attribute_group";a:1:{i:5;s:3:"2_5";}}', 2),
(50, '73b845a28e9ced9709fa414f9b97dae9', 'a:1:{s:18:"id_attribute_group";a:1:{i:6;s:3:"2_6";}}', 2),
(51, '4b4bb79b20455e8047c972f9ca69cd72', 'a:1:{s:18:"id_attribute_group";a:1:{i:7;s:3:"2_7";}}', 2),
(52, '0a68b3ba0819d7126935f51335ef9503', 'a:1:{s:18:"id_attribute_group";a:1:{i:14;s:4:"2_14";}}', 2),
(53, 'd3b86fde480f97ac1ae07576857c8971', 'a:1:{s:18:"id_attribute_group";a:1:{i:18;s:4:"2_18";}}', 2),
(54, 'be50cfae4c360fdb124af017a4e80905', 'a:1:{s:18:"id_attribute_group";a:1:{i:19;s:4:"2_19";}}', 2),
(55, '601a4dd13077730810f102b18680b537', 'a:1:{s:18:"id_attribute_group";a:1:{i:20;s:4:"2_20";}}', 2),
(56, 'a30eb82a29b489938809bef882364015', 'a:1:{s:18:"id_attribute_group";a:1:{i:10;s:4:"3_10";}}', 2),
(57, '67e46d0ddce8ffc3edd49fb01471b91c', 'a:1:{s:18:"id_attribute_group";a:1:{i:11;s:4:"3_11";}}', 2),
(58, '14ef3952eddf958ec1f628065f6c7689', 'a:1:{s:8:"quantity";a:1:{i:0;i:0;}}', 2),
(59, 'd29cae663576533c354543d2749e3c9d', 'a:1:{s:8:"quantity";a:1:{i:0;i:1;}}', 2),
(60, '702e5a9801d2f7a5456e3e1cf4c5c93f', 'a:1:{s:9:"condition";a:1:{s:3:"new";s:3:"new";}}', 2),
(61, '71ff79a2cbf4d552a3f9016c8397a00b', 'a:1:{s:12:"manufacturer";a:1:{i:1;s:1:"1";}}', 2),
(62, 'd1b78197131d32668e162426f3570b20', 'a:1:{s:12:"manufacturer";a:1:{i:2;s:1:"2";}}', 2),
(63, '4682451c9feabfe5ca6279bd6353197b', 'a:1:{s:8:"category";a:1:{i:1;s:1:"1";}}', 3),
(64, '56ea0c920b7d24eb3d7f6275b937eddc', 'a:1:{s:8:"category";a:1:{i:2;s:1:"2";}}', 3),
(65, '6d2b4b2b0c54ecdf22d74f3bb0690b5a', 'a:1:{s:8:"category";a:1:{i:3;s:1:"3";}}', 3),
(66, 'deec590039763808ac12ee23ecd8330f', 'a:1:{s:8:"category";a:1:{i:4;s:1:"4";}}', 3),
(67, '096dd0fb500f470d8d081417a8b21d10', 'a:1:{s:8:"category";a:1:{i:5;s:1:"5";}}', 3),
(68, '3aa5510a383d8390bcf30b4dfaa95de6', 'a:1:{s:18:"id_attribute_group";a:1:{i:1;s:3:"1_1";}}', 3),
(69, '4cb41b37e2d8ea8e2f80842da001c842', 'a:1:{s:18:"id_attribute_group";a:1:{i:2;s:3:"1_2";}}', 3),
(70, '018491853c6ad8ae0503264dd698f2f1', 'a:1:{s:18:"id_attribute_group";a:1:{i:8;s:3:"1_8";}}', 3),
(71, 'd85e4d95e7043942e5a8ccdb45273117', 'a:1:{s:18:"id_attribute_group";a:1:{i:9;s:3:"1_9";}}', 3),
(72, '0d2e2c3af0857bf14f485863c89e28b8', 'a:1:{s:18:"id_attribute_group";a:1:{i:12;s:4:"1_12";}}', 3),
(73, 'b745040632c64a0eb29281bde3e6e5a4', 'a:1:{s:18:"id_attribute_group";a:1:{i:13;s:4:"1_13";}}', 3),
(74, '51c85316502fb09931e5025d1b0dbab5', 'a:1:{s:18:"id_attribute_group";a:1:{i:15;s:4:"1_15";}}', 3),
(75, '41451c0b1df8dc8a0483947c62ea6b22', 'a:1:{s:18:"id_attribute_group";a:1:{i:16;s:4:"1_16";}}', 3),
(76, '8bd2d66546f55743782f1870d2f30d43', 'a:1:{s:18:"id_attribute_group";a:1:{i:17;s:4:"1_17";}}', 3),
(77, '9528e9f3b5ba366ba594d2868fd38ed4', 'a:1:{s:18:"id_attribute_group";a:1:{i:3;s:3:"2_3";}}', 3),
(78, '54dd539ce8bbf02b44485941f2d8d80b', 'a:1:{s:18:"id_attribute_group";a:1:{i:4;s:3:"2_4";}}', 3),
(79, 'ab223cc0ca7ebf34af71e067556ee2aa', 'a:1:{s:18:"id_attribute_group";a:1:{i:5;s:3:"2_5";}}', 3),
(80, '73b845a28e9ced9709fa414f9b97dae9', 'a:1:{s:18:"id_attribute_group";a:1:{i:6;s:3:"2_6";}}', 3),
(81, '4b4bb79b20455e8047c972f9ca69cd72', 'a:1:{s:18:"id_attribute_group";a:1:{i:7;s:3:"2_7";}}', 3),
(82, '0a68b3ba0819d7126935f51335ef9503', 'a:1:{s:18:"id_attribute_group";a:1:{i:14;s:4:"2_14";}}', 3),
(83, 'd3b86fde480f97ac1ae07576857c8971', 'a:1:{s:18:"id_attribute_group";a:1:{i:18;s:4:"2_18";}}', 3),
(84, 'be50cfae4c360fdb124af017a4e80905', 'a:1:{s:18:"id_attribute_group";a:1:{i:19;s:4:"2_19";}}', 3),
(85, '601a4dd13077730810f102b18680b537', 'a:1:{s:18:"id_attribute_group";a:1:{i:20;s:4:"2_20";}}', 3),
(86, 'a30eb82a29b489938809bef882364015', 'a:1:{s:18:"id_attribute_group";a:1:{i:10;s:4:"3_10";}}', 3),
(87, '67e46d0ddce8ffc3edd49fb01471b91c', 'a:1:{s:18:"id_attribute_group";a:1:{i:11;s:4:"3_11";}}', 3),
(88, '56ba3d2b30ad540c11f7e5d2905623d9', 'a:1:{s:8:"quantity";a:1:{i:0;i:0;}}', 3),
(89, '702e5a9801d2f7a5456e3e1cf4c5c93f', 'a:1:{s:8:"quantity";a:1:{i:0;i:1;}}', 3),
(90, '71ff79a2cbf4d552a3f9016c8397a00b', 'a:1:{s:12:"manufacturer";a:1:{i:1;s:1:"1";}}', 3),
(91, 'd1b78197131d32668e162426f3570b20', 'a:1:{s:12:"manufacturer";a:1:{i:2;s:1:"2";}}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_attribute_group`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_attribute_group` (
  `id_attribute_group` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_indexable_attribute_group`
--

INSERT INTO `ps_layered_indexable_attribute_group` (`id_attribute_group`, `indexable`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_attribute_group_lang_value`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_attribute_group_lang_value` (
  `id_attribute_group` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) DEFAULT NULL,
  `meta_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_indexable_attribute_group_lang_value`
--

INSERT INTO `ps_layered_indexable_attribute_group_lang_value` (`id_attribute_group`, `id_lang`, `url_name`, `meta_title`) VALUES
(4, 1, '', ''),
(4, 3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_attribute_lang_value`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_attribute_lang_value` (
  `id_attribute` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) DEFAULT NULL,
  `meta_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_indexable_attribute_lang_value`
--

INSERT INTO `ps_layered_indexable_attribute_lang_value` (`id_attribute`, `id_lang`, `url_name`, `meta_title`) VALUES
(21, 1, '', ''),
(21, 3, '', ''),
(22, 1, '', ''),
(22, 3, '', ''),
(23, 1, '', ''),
(23, 3, '', ''),
(24, 1, '', ''),
(24, 3, '', ''),
(25, 1, '', ''),
(25, 3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_feature`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_feature` (
  `id_feature` int(11) NOT NULL,
  `indexable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_indexable_feature`
--

INSERT INTO `ps_layered_indexable_feature` (`id_feature`, `indexable`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_feature_lang_value`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_feature_lang_value` (
  `id_feature` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) NOT NULL,
  `meta_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_indexable_feature_value_lang_value`
--

CREATE TABLE IF NOT EXISTS `ps_layered_indexable_feature_value_lang_value` (
  `id_feature_value` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `url_name` varchar(20) DEFAULT NULL,
  `meta_title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_price_index`
--

CREATE TABLE IF NOT EXISTS `ps_layered_price_index` (
  `id_product` int(11) NOT NULL,
  `id_currency` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `price_min` int(11) NOT NULL,
  `price_max` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_currency`,`id_shop`),
  KEY `id_currency` (`id_currency`),
  KEY `price_min` (`price_min`),
  KEY `price_max` (`price_max`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_price_index`
--

INSERT INTO `ps_layered_price_index` (`id_product`, `id_currency`, `id_shop`, `price_min`, `price_max`) VALUES
(1, 1, 1, 158, 187),
(2, 1, 1, 66, 78),
(3, 1, 1, 1504, 1775),
(4, 1, 1, 1170, 1381),
(5, 1, 1, 241, 285),
(6, 1, 1, 25, 30),
(7, 1, 1, 124, 147),
(8, 1, 1, 0, 0),
(9, 1, 1, 0, 0),
(10, 1, 1, 0, 0),
(11, 1, 1, 58, 69),
(12, 1, 1, 0, 0),
(13, 1, 1, 58, 69),
(14, 1, 1, 58, 69),
(15, 1, 1, 58, 69),
(16, 1, 1, 58, 69),
(17, 1, 1, 58, 69),
(18, 1, 1, 58, 69),
(19, 1, 1, 58, 69),
(20, 1, 1, 58, 69),
(21, 1, 1, 58, 69),
(22, 1, 1, 58, 69);

-- --------------------------------------------------------

--
-- Table structure for table `ps_layered_product_attribute`
--

CREATE TABLE IF NOT EXISTS `ps_layered_product_attribute` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_attribute_group` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  KEY `id_attribute` (`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_layered_product_attribute`
--

INSERT INTO `ps_layered_product_attribute` (`id_attribute`, `id_product`, `id_attribute_group`, `id_shop`) VALUES
(21, 12, 4, 1),
(22, 12, 4, 1),
(23, 12, 4, 1),
(24, 12, 4, 1),
(25, 12, 4, 1),
(3, 1, 2, 1),
(4, 1, 2, 1),
(5, 1, 2, 1),
(6, 1, 2, 1),
(7, 1, 2, 1),
(14, 1, 2, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(18, 1, 2, 1),
(19, 1, 2, 1),
(3, 2, 2, 1),
(4, 2, 2, 1),
(5, 2, 2, 1),
(6, 2, 2, 1),
(3, 3, 2, 1),
(8, 3, 1, 1),
(9, 3, 1, 1),
(10, 3, 3, 1),
(11, 3, 3, 1),
(15, 5, 1, 1),
(16, 5, 1, 1),
(17, 5, 1, 1),
(21, 13, 4, 1),
(22, 13, 4, 1),
(23, 13, 4, 1),
(24, 13, 4, 1),
(25, 13, 4, 1),
(21, 21, 4, 1),
(22, 21, 4, 1),
(23, 21, 4, 1),
(24, 21, 4, 1),
(25, 21, 4, 1),
(21, 11, 4, 1),
(22, 11, 4, 1),
(23, 11, 4, 1),
(24, 11, 4, 1),
(25, 11, 4, 1),
(21, 14, 4, 1),
(22, 14, 4, 1),
(23, 14, 4, 1),
(24, 14, 4, 1),
(25, 14, 4, 1),
(21, 15, 4, 1),
(22, 15, 4, 1),
(23, 15, 4, 1),
(24, 15, 4, 1),
(25, 15, 4, 1),
(21, 19, 4, 1),
(22, 19, 4, 1),
(23, 19, 4, 1),
(24, 19, 4, 1),
(25, 19, 4, 1),
(21, 20, 4, 1),
(22, 20, 4, 1),
(23, 20, 4, 1),
(24, 20, 4, 1),
(25, 20, 4, 1),
(21, 17, 4, 1),
(22, 17, 4, 1),
(23, 17, 4, 1),
(24, 17, 4, 1),
(25, 17, 4, 1),
(21, 18, 4, 1),
(22, 18, 4, 1),
(23, 18, 4, 1),
(24, 18, 4, 1),
(25, 18, 4, 1),
(21, 22, 4, 1),
(22, 22, 4, 1),
(23, 22, 4, 1),
(24, 22, 4, 1),
(25, 22, 4, 1),
(21, 16, 4, 1),
(22, 16, 4, 1),
(23, 16, 4, 1),
(24, 16, 4, 1),
(25, 16, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_linksmenutop`
--

CREATE TABLE IF NOT EXISTS `ps_linksmenutop` (
  `id_linksmenutop` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `new_window` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_linksmenutop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_linksmenutop_lang`
--

CREATE TABLE IF NOT EXISTS `ps_linksmenutop_lang` (
  `id_linksmenutop` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `label` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  KEY `id_linksmenutop` (`id_linksmenutop`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_log`
--

CREATE TABLE IF NOT EXISTS `ps_log` (
  `id_log` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(1) NOT NULL,
  `error_code` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `ps_log`
--

INSERT INTO `ps_log` (`id_log`, `severity`, `error_code`, `message`, `object_type`, `object_id`, `id_employee`, `date_add`, `date_upd`) VALUES
(1, 1, 0, 'ImageType edition', 'ImageType', 1, 1, '2014-01-07 15:52:59', '2014-01-07 15:52:59'),
(2, 1, 0, 'ImageType edition', 'ImageType', 2, 1, '2014-01-07 15:53:12', '2014-01-07 15:53:12'),
(3, 1, 0, 'ImageType edition', 'ImageType', 3, 1, '2014-01-07 15:53:46', '2014-01-07 15:53:46'),
(4, 1, 0, 'ImageType edition', 'ImageType', 4, 1, '2014-01-07 15:54:01', '2014-01-07 15:54:01'),
(5, 1, 0, 'ImageType edition', 'ImageType', 5, 1, '2014-01-07 15:54:22', '2014-01-07 15:54:22'),
(6, 1, 0, 'ImageType edition', 'ImageType', 6, 1, '2014-01-07 15:54:38', '2014-01-07 15:54:38'),
(7, 1, 0, 'Language deletion', 'Language', 2, 1, '2014-01-07 23:12:12', '2014-01-07 23:12:12'),
(8, 1, 0, 'Categories import', '', 0, 1, '2014-01-09 16:19:30', '2014-01-09 16:19:30'),
(9, 1, 0, 'Categories import', '', 0, 1, '2014-01-09 16:22:09', '2014-01-09 16:22:09'),
(10, 1, 0, 'Products import', '', 0, 1, '2014-01-09 16:23:24', '2014-01-09 16:23:24'),
(11, 1, 0, 'Products import', '', 0, 1, '2014-01-09 16:25:25', '2014-01-09 16:25:25'),
(12, 1, 0, 'Product deletion', 'Product', 8, 1, '2014-01-09 16:26:02', '2014-01-09 16:26:02'),
(13, 1, 0, 'Product deletion', 'Product', 9, 1, '2014-01-09 16:26:03', '2014-01-09 16:26:03'),
(14, 1, 0, 'Category addition', 'Category', 6, 1, '2014-01-09 16:32:08', '2014-01-09 16:32:08'),
(15, 1, 0, 'Category addition', 'Category', 7, 1, '2014-01-09 16:32:36', '2014-01-09 16:32:36'),
(16, 1, 0, 'Category addition', 'Category', 8, 1, '2014-01-09 16:33:07', '2014-01-09 16:33:07'),
(17, 1, 0, 'Category addition', 'Category', 9, 1, '2014-01-09 16:33:55', '2014-01-09 16:33:55'),
(18, 1, 0, 'Category addition', 'Category', 10, 1, '2014-01-09 16:34:20', '2014-01-09 16:34:20'),
(19, 1, 0, 'Category addition', 'Category', 11, 1, '2014-01-09 16:34:58', '2014-01-09 16:34:58'),
(20, 1, 0, 'Product addition', 'Product', 10, 1, '2014-01-09 16:38:59', '2014-01-09 16:38:59'),
(21, 1, 0, 'Product edition', 'Product', 10, 1, '2014-01-09 16:39:29', '2014-01-09 16:39:29'),
(22, 1, 0, 'Product edition', 'Product', 10, 1, '2014-01-09 16:40:58', '2014-01-09 16:40:58'),
(23, 1, 0, 'Product deletion', 'Product', 10, 1, '2014-01-09 16:45:00', '2014-01-09 16:45:00'),
(24, 1, 0, 'Product addition', 'Product', 11, 1, '2014-01-09 16:46:35', '2014-01-09 16:46:35'),
(25, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-09 16:47:33', '2014-01-09 16:47:33'),
(26, 1, 0, 'AttributeGroup addition', 'AttributeGroup', 4, 1, '2014-01-09 16:48:39', '2014-01-09 16:48:39'),
(27, 1, 0, 'Attribute addition', 'Attribute', 21, 1, '2014-01-09 16:49:36', '2014-01-09 16:49:36'),
(28, 1, 0, 'Attribute addition', 'Attribute', 22, 1, '2014-01-09 16:50:01', '2014-01-09 16:50:01'),
(29, 1, 0, 'Attribute addition', 'Attribute', 23, 1, '2014-01-09 16:50:15', '2014-01-09 16:50:15'),
(30, 1, 0, 'Attribute addition', 'Attribute', 24, 1, '2014-01-09 16:50:28', '2014-01-09 16:50:28'),
(31, 1, 0, 'Attribute addition', 'Attribute', 25, 1, '2014-01-09 16:50:47', '2014-01-09 16:50:47'),
(32, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-09 16:55:30', '2014-01-09 16:55:30'),
(33, 1, 0, 'Category edition', 'Category', 7, 1, '2014-01-09 23:08:55', '2014-01-09 23:08:55'),
(34, 1, 0, 'Product edition', 'Product', 12, 1, '2014-01-10 00:13:15', '2014-01-10 00:13:15'),
(35, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-12 00:06:52', '2014-01-12 00:06:52'),
(36, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 15:32:31', '2014-01-13 15:32:31'),
(37, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 15:37:19', '2014-01-13 15:37:19'),
(38, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 15:38:09', '2014-01-13 15:38:09'),
(39, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 22:14:16', '2014-01-13 22:14:16'),
(40, 1, 0, 'Product edition', 'Product', 12, 1, '2014-01-13 22:14:35', '2014-01-13 22:14:35'),
(41, 1, 0, 'Product edition', 'Product', 12, 1, '2014-01-13 22:15:26', '2014-01-13 22:15:26'),
(42, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 22:29:39', '2014-01-13 22:29:39'),
(43, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 22:34:44', '2014-01-13 22:34:44'),
(44, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 22:38:43', '2014-01-13 22:38:43'),
(45, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 22:41:21', '2014-01-13 22:41:21'),
(46, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 22:50:08', '2014-01-13 22:50:08'),
(47, 1, 0, 'Product deletion', 'Product', 12, 1, '2014-01-13 22:52:35', '2014-01-13 22:52:35'),
(48, 1, 0, 'Product edition', 'Product', 13, 1, '2014-01-13 22:55:10', '2014-01-13 22:55:10'),
(49, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-13 22:55:44', '2014-01-13 22:55:44'),
(50, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-13 22:56:31', '2014-01-13 22:56:31'),
(51, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-13 22:56:38', '2014-01-13 22:56:38'),
(52, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-13 22:56:40', '2014-01-13 22:56:40'),
(53, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-13 22:56:47', '2014-01-13 22:56:47'),
(54, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-13 22:56:57', '2014-01-13 22:56:57'),
(55, 1, 0, 'Product edition', 'Product', 15, 1, '2014-01-13 22:57:55', '2014-01-13 22:57:55'),
(56, 1, 0, 'Product edition', 'Product', 16, 1, '2014-01-13 23:01:39', '2014-01-13 23:01:39'),
(57, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-13 23:16:16', '2014-01-13 23:16:16'),
(58, 1, 0, 'Product edition', 'Product', 13, 1, '2014-01-13 23:16:46', '2014-01-13 23:16:46'),
(59, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-13 23:17:14', '2014-01-13 23:17:14'),
(60, 1, 0, 'Product edition', 'Product', 15, 1, '2014-01-13 23:17:40', '2014-01-13 23:17:40'),
(61, 1, 0, 'Product edition', 'Product', 16, 1, '2014-01-13 23:18:19', '2014-01-13 23:18:19'),
(62, 1, 0, 'Product edition', 'Product', 16, 1, '2014-01-13 23:18:48', '2014-01-13 23:18:48'),
(63, 1, 0, 'Product edition', 'Product', 13, 1, '2014-01-13 23:50:37', '2014-01-13 23:50:37'),
(64, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-13 23:51:26', '2014-01-13 23:51:26'),
(65, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-15 00:51:44', '2014-01-15 00:51:44'),
(66, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-15 16:10:50', '2014-01-15 16:10:50'),
(67, 1, 0, 'Product edition', 'Product', 17, 1, '2014-01-15 16:18:40', '2014-01-15 16:18:40'),
(68, 1, 0, 'Product edition', 'Product', 17, 1, '2014-01-15 16:19:08', '2014-01-15 16:19:08'),
(69, 1, 0, 'Product edition', 'Product', 17, 1, '2014-01-15 16:19:42', '2014-01-15 16:19:42'),
(70, 1, 0, 'Product edition', 'Product', 17, 1, '2014-01-15 16:25:07', '2014-01-15 16:25:07'),
(71, 1, 0, 'Product edition', 'Product', 18, 1, '2014-01-15 16:26:23', '2014-01-15 16:26:23'),
(72, 1, 0, 'Product edition', 'Product', 18, 1, '2014-01-15 16:28:03', '2014-01-15 16:28:03'),
(73, 1, 0, 'Product edition', 'Product', 18, 1, '2014-01-15 16:28:43', '2014-01-15 16:28:43'),
(74, 1, 0, 'Product edition', 'Product', 19, 1, '2014-01-15 16:32:27', '2014-01-15 16:32:27'),
(75, 1, 0, 'Product edition', 'Product', 19, 1, '2014-01-15 16:33:07', '2014-01-15 16:33:07'),
(76, 1, 0, 'Product edition', 'Product', 20, 1, '2014-01-15 16:39:03', '2014-01-15 16:39:03'),
(77, 1, 0, 'Product edition', 'Product', 20, 1, '2014-01-15 16:40:22', '2014-01-15 16:40:22'),
(78, 1, 0, 'Product edition', 'Product', 20, 1, '2014-01-15 16:41:03', '2014-01-15 16:41:03'),
(79, 1, 0, 'Product edition', 'Product', 20, 1, '2014-01-15 16:41:37', '2014-01-15 16:41:37'),
(80, 1, 0, 'Product edition', 'Product', 21, 1, '2014-01-15 16:53:14', '2014-01-15 16:53:14'),
(81, 1, 0, 'Product edition', 'Product', 21, 1, '2014-01-15 16:54:03', '2014-01-15 16:54:03'),
(82, 1, 0, 'Product edition', 'Product', 20, 1, '2014-01-15 16:54:22', '2014-01-15 16:54:22'),
(83, 1, 0, 'Product edition', 'Product', 17, 1, '2014-01-15 16:54:40', '2014-01-15 16:54:40'),
(84, 1, 0, 'Product edition', 'Product', 18, 1, '2014-01-15 16:56:13', '2014-01-15 16:56:13'),
(85, 1, 0, 'Product edition', 'Product', 19, 1, '2014-01-15 16:57:21', '2014-01-15 16:57:21'),
(86, 1, 0, 'Product edition', 'Product', 22, 1, '2014-01-15 17:02:45', '2014-01-15 17:02:45'),
(87, 1, 0, 'Product edition', 'Product', 22, 1, '2014-01-15 17:03:19', '2014-01-15 17:03:19'),
(88, 1, 0, 'Product edition', 'Product', 11, 1, '2014-01-15 17:04:07', '2014-01-15 17:04:07'),
(89, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-15 17:05:02', '2014-01-15 17:05:02'),
(90, 1, 0, 'Product edition', 'Product', 15, 1, '2014-01-15 17:05:19', '2014-01-15 17:05:19'),
(91, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-15 17:05:50', '2014-01-15 17:05:50'),
(92, 1, 0, 'Product edition', 'Product', 14, 1, '2014-01-15 17:06:47', '2014-01-15 17:06:47'),
(93, 1, 0, 'Product edition', 'Product', 15, 1, '2014-01-15 17:07:07', '2014-01-15 17:07:07'),
(94, 1, 0, 'Product edition', 'Product', 17, 1, '2014-01-15 17:07:46', '2014-01-15 17:07:46'),
(95, 1, 0, 'Product edition', 'Product', 19, 1, '2014-01-15 17:08:11', '2014-01-15 17:08:11'),
(96, 1, 0, 'Product edition', 'Product', 20, 1, '2014-01-15 17:08:37', '2014-01-15 17:08:37'),
(97, 1, 0, 'Product edition', 'Product', 17, 1, '2014-01-15 17:08:59', '2014-01-15 17:08:59'),
(98, 1, 0, 'Product edition', 'Product', 17, 1, '2014-01-15 17:09:27', '2014-01-15 17:09:27'),
(99, 1, 0, 'Product edition', 'Product', 18, 1, '2014-01-15 17:13:04', '2014-01-15 17:13:04'),
(100, 1, 0, 'Product edition', 'Product', 22, 1, '2014-01-15 17:22:10', '2014-01-15 17:22:10'),
(101, 1, 0, 'Product edition', 'Product', 16, 1, '2014-01-15 17:23:49', '2014-01-15 17:23:49'),
(102, 1, 0, 'Product edition', 'Product', 16, 1, '2014-01-15 17:25:33', '2014-01-15 17:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `ps_manufacturer`
--

CREATE TABLE IF NOT EXISTS `ps_manufacturer` (
  `id_manufacturer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_manufacturer`
--

INSERT INTO `ps_manufacturer` (`id_manufacturer`, `name`, `date_add`, `date_upd`, `active`) VALUES
(1, 'Apple Computer, Inc', '2014-01-06 22:19:14', '2014-01-06 22:19:14', 1),
(2, 'Shure Incorporated', '2014-01-06 22:19:15', '2014-01-06 22:19:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_manufacturer_lang`
--

CREATE TABLE IF NOT EXISTS `ps_manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_manufacturer_lang`
--

INSERT INTO `ps_manufacturer_lang` (`id_manufacturer`, `id_lang`, `description`, `short_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, '', '', '', '', ''),
(1, 3, '', '', '', '', ''),
(2, 1, '', '', '', '', ''),
(2, 3, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_manufacturer_shop`
--

CREATE TABLE IF NOT EXISTS `ps_manufacturer_shop` (
  `id_manufacturer` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_manufacturer_shop`
--

INSERT INTO `ps_manufacturer_shop` (`id_manufacturer`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_memcached_servers`
--

CREATE TABLE IF NOT EXISTS `ps_memcached_servers` (
  `id_memcached_server` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(254) NOT NULL,
  `port` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_memcached_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_message`
--

CREATE TABLE IF NOT EXISTS `ps_message` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_message_readed`
--

CREATE TABLE IF NOT EXISTS `ps_message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_meta`
--

CREATE TABLE IF NOT EXISTS `ps_meta` (
  `id_meta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  PRIMARY KEY (`id_meta`),
  KEY `meta_name` (`page`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `ps_meta`
--

INSERT INTO `ps_meta` (`id_meta`, `page`) VALUES
(1, '404'),
(11, 'address'),
(12, 'addresses'),
(13, 'authentication'),
(2, 'best-sales'),
(14, 'cart'),
(3, 'contact'),
(15, 'discount'),
(25, 'guest-tracking'),
(16, 'history'),
(17, 'identity'),
(4, 'index'),
(5, 'manufacturer'),
(18, 'my-account'),
(6, 'new-products'),
(21, 'order'),
(26, 'order-confirmation'),
(19, 'order-follow'),
(24, 'order-opc'),
(20, 'order-slip'),
(7, 'password'),
(8, 'prices-drop'),
(22, 'search'),
(9, 'sitemap'),
(23, 'stores'),
(10, 'supplier');

-- --------------------------------------------------------

--
-- Table structure for table `ps_meta_lang`
--

CREATE TABLE IF NOT EXISTS `ps_meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL,
  PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_meta_lang`
--

INSERT INTO `ps_meta_lang` (`id_meta`, `id_shop`, `id_lang`, `title`, `description`, `keywords`, `url_rewrite`) VALUES
(1, 1, 1, '404 error', 'This page cannot be found', '', 'page-not-found'),
(1, 1, 3, '404 error', 'This page cannot be found', '', 'page-not-found'),
(2, 1, 1, 'Best sales', 'Our best sales', '', 'best-sales'),
(2, 1, 3, 'Best sales', 'Our best sales', '', 'best-sales'),
(3, 1, 1, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(3, 1, 3, 'Contact us', 'Use our form to contact us', '', 'contact-us'),
(4, 1, 1, '', 'Shop powered by PrestaShop', '', ''),
(4, 1, 3, '', 'Shop powered by PrestaShop', '', ''),
(5, 1, 1, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(5, 1, 3, 'Manufacturers', 'Manufacturers list', '', 'manufacturers'),
(6, 1, 1, 'New products', 'Our new products', '', 'new-products'),
(6, 1, 3, 'New products', 'Our new products', '', 'new-products'),
(7, 1, 1, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', '', 'password-recovery'),
(7, 1, 3, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', '', 'password-recovery'),
(8, 1, 1, 'Prices drop', 'Our special products', '', 'prices-drop'),
(8, 1, 3, 'Prices drop', 'Our special products', '', 'prices-drop'),
(9, 1, 1, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(9, 1, 3, 'Sitemap', 'Lost ? Find what your are looking for', '', 'sitemap'),
(10, 1, 1, 'Suppliers', 'Suppliers list', '', 'supplier'),
(10, 1, 3, 'Suppliers', 'Suppliers list', '', 'supplier'),
(11, 1, 1, 'Address', '', '', 'address'),
(11, 1, 3, 'Address', '', '', 'address'),
(12, 1, 1, 'Addresses', '', '', 'addresses'),
(12, 1, 3, 'Addresses', '', '', 'addresses'),
(13, 1, 1, 'Login', '', '', 'login'),
(13, 1, 3, 'Login', '', '', 'login'),
(14, 1, 1, 'Cart', '', '', 'cart'),
(14, 1, 3, 'Cart', '', '', 'cart'),
(15, 1, 1, 'Discount', '', '', 'discount'),
(15, 1, 3, 'Discount', '', '', 'discount'),
(16, 1, 1, 'Order history', '', '', 'order-history'),
(16, 1, 3, 'Order history', '', '', 'order-history'),
(17, 1, 1, 'Identity', '', '', 'identity'),
(17, 1, 3, 'Identity', '', '', 'identity'),
(18, 1, 1, 'My account', '', '', 'my-account'),
(18, 1, 3, 'My account', '', '', 'my-account'),
(19, 1, 1, 'Order follow', '', '', 'order-follow'),
(19, 1, 3, 'Order follow', '', '', 'order-follow'),
(20, 1, 1, 'Order slip', '', '', 'order-slip'),
(20, 1, 3, 'Order slip', '', '', 'order-slip'),
(21, 1, 1, 'Order', '', '', 'order'),
(21, 1, 3, 'Order', '', '', 'order'),
(22, 1, 1, 'Search', '', '', 'search'),
(22, 1, 3, 'Search', '', '', 'search'),
(23, 1, 1, 'Stores', '', '', 'stores'),
(23, 1, 3, 'Stores', '', '', 'stores'),
(24, 1, 1, 'Order', '', '', 'quick-order'),
(24, 1, 3, 'Order', '', '', 'quick-order'),
(25, 1, 1, 'Guest tracking', '', '', 'guest-tracking'),
(25, 1, 3, 'Guest tracking', '', '', 'guest-tracking'),
(26, 1, 1, 'Order confirmation', '', '', 'order-confirmation'),
(26, 1, 3, 'Order confirmation', '', '', 'order-confirmation');

-- --------------------------------------------------------

--
-- Table structure for table `ps_module`
--

CREATE TABLE IF NOT EXISTS `ps_module` (
  `id_module` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `ps_module`
--

INSERT INTO `ps_module` (`id_module`, `name`, `active`, `version`) VALUES
(1, 'bankwire', 1, '0.6'),
(2, 'blockadvertising', 1, '0.5'),
(3, 'blockbestsellers', 1, '1.2'),
(4, 'blockcart', 1, '1.3'),
(5, 'blockcategories', 1, '2.0'),
(6, 'blockcms', 1, '1.3'),
(7, 'blockcontact', 1, '1.0'),
(8, 'blockcontactinfos', 1, '1.0'),
(9, 'blockcurrencies', 1, '0.1'),
(10, 'blocklanguages', 1, '1.1'),
(11, 'blockmanufacturer', 1, '1'),
(12, 'blockmyaccount', 1, '1.2'),
(13, 'blockmyaccountfooter', 1, '1.3'),
(14, 'blocknewproducts', 1, '1.5'),
(15, 'blocknewsletter', 1, '1.4'),
(16, 'blockpaymentlogo', 1, '0.2'),
(17, 'blockpermanentlinks', 1, '0.1'),
(18, 'blockreinsurance', 1, '2.0'),
(19, 'blocksearch', 1, '1.3'),
(20, 'blocksharefb', 1, '1.1'),
(21, 'blocksocial', 1, '1.0'),
(22, 'blockspecials', 1, '1.0'),
(23, 'blockstore', 1, '1'),
(24, 'blocksupplier', 1, '1'),
(25, 'blocktags', 1, '1.1'),
(26, 'blocktopmenu', 1, '1.7'),
(27, 'blockuserinfo', 1, '0.1'),
(28, 'blockviewed', 1, '0.9'),
(29, 'cheque', 1, '2.3'),
(30, 'favoriteproducts', 1, '1'),
(31, 'graphartichow', 1, '1'),
(32, 'graphgooglechart', 1, '1'),
(33, 'graphvisifire', 1, '1'),
(34, 'graphxmlswfcharts', 1, '1'),
(35, 'gridhtml', 1, '1'),
(36, 'homefeatured', 1, '1.1'),
(37, 'homeslider', 1, '1.2.2'),
(38, 'pagesnotfound', 1, '1.1'),
(39, 'sekeywords', 1, '1'),
(40, 'statsbestcategories', 1, '1'),
(41, 'statsbestcustomers', 1, '1'),
(42, 'statsbestproducts', 1, '1'),
(43, 'statsbestsuppliers', 1, '1'),
(44, 'statsbestvouchers', 1, '1'),
(45, 'statscarrier', 1, '1'),
(46, 'statscatalog', 1, '1'),
(47, 'statscheckup', 1, '1'),
(48, 'statsdata', 1, '1'),
(49, 'statsequipment', 1, '1'),
(50, 'statsforecast', 1, '1'),
(51, 'statslive', 1, '1'),
(52, 'statsnewsletter', 1, '1'),
(53, 'statsorigin', 1, '1'),
(54, 'statspersonalinfos', 1, '1'),
(55, 'statsproduct', 1, '1'),
(56, 'statsregistrations', 1, '1'),
(57, 'statssales', 1, '1'),
(58, 'statssearch', 1, '1'),
(59, 'statsstock', 1, '1'),
(60, 'statsvisits', 1, '1'),
(61, 'themeinstallator', 1, '2.5'),
(62, 'gamification', 1, '1.7.2'),
(63, 'stthemeeditor', 1, '2.5.9'),
(64, 'staddthisbutton', 1, '1.2.6'),
(65, 'steasycontent', 1, '1.2.9'),
(66, 'blockcurrencies_mod', 1, '0.1'),
(67, 'blocklanguages_mod', 1, '1.1'),
(68, 'blockuserinfo_mod', 1, '1.6.6'),
(69, 'sthomenew', 1, '1.6.5'),
(70, 'stproductcategoriesslider', 1, '1.4.8'),
(71, 'stbrandsslider', 1, '1.0'),
(72, 'homefeatured_mod', 1, '1.1.5'),
(73, 'strightbarcart', 1, '1.0'),
(74, 'stoverride', 1, '1.1.0'),
(75, 'stmegamenu', 1, '1.9.2'),
(76, 'stspecialslider', 1, '1.5.9'),
(77, 'stcameraslideshow', 1, '1.7.7'),
(78, 'stbanner', 1, '1.2.8'),
(79, 'stfblikebox', 1, '1.0'),
(80, 'stsocial', 1, '1.0'),
(81, 'homefeaturedslider', 1, '1.3.7'),
(82, 'steasytabs', 1, '1.1.7'),
(83, 'stproductlinknav', 1, '1.0'),
(84, 'stcompare', 1, '1.0'),
(85, 'sttwitterembeddedtimelines', 1, '1.0'),
(86, 'stquickview', 1, '1.1'),
(87, 'stblog', 1, '1.1.7'),
(88, 'stblogblockcategory', 1, '1.0'),
(89, 'stblogrecentarticles', 1, '1.0'),
(90, 'stblogfeaturedarticles', 1, '1.0'),
(91, 'stbloglinknav', 1, '1.0'),
(92, 'stblogtags', 1, '1.0'),
(93, 'stblogcomments', 1, '1.0'),
(94, 'stblogarchives', 1, '1.0'),
(95, 'stmultilink', 1, '1.7.9'),
(96, 'strelatedproducts', 1, '1.0.0'),
(97, 'stfeaturedcategories', 1, '1.0'),
(98, 'carriercompare', 1, '1.2'),
(99, 'blockcustomerprivacy', 1, '1.0'),
(100, 'feeder', 1, '0.4'),
(101, 'productscategory', 1, '1.5'),
(102, 'crossselling', 1, '0.8'),
(103, 'productcomments', 1, '2.4'),
(104, 'blocklayered', 1, '1.9.0'),
(105, 'blockwishlist', 1, '0.2');

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_access`
--

CREATE TABLE IF NOT EXISTS `ps_module_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_module` int(10) unsigned NOT NULL,
  `view` tinyint(1) NOT NULL,
  `configure` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_access`
--

INSERT INTO `ps_module_access` (`id_profile`, `id_module`, `view`, `configure`) VALUES
(2, 1, 1, 0),
(2, 2, 1, 0),
(2, 3, 1, 0),
(2, 4, 1, 0),
(2, 5, 1, 0),
(2, 6, 1, 0),
(2, 7, 1, 0),
(2, 8, 1, 0),
(2, 9, 1, 0),
(2, 10, 1, 0),
(2, 11, 1, 0),
(2, 12, 1, 0),
(2, 13, 1, 0),
(2, 14, 1, 0),
(2, 15, 1, 0),
(2, 16, 1, 0),
(2, 17, 1, 0),
(2, 18, 1, 0),
(2, 19, 1, 0),
(2, 20, 1, 0),
(2, 21, 1, 0),
(2, 22, 1, 0),
(2, 23, 1, 0),
(2, 24, 1, 0),
(2, 25, 1, 0),
(2, 26, 1, 0),
(2, 27, 1, 0),
(2, 28, 1, 0),
(2, 29, 1, 0),
(2, 30, 1, 0),
(2, 31, 1, 0),
(2, 32, 1, 0),
(2, 33, 1, 0),
(2, 34, 1, 0),
(2, 35, 1, 0),
(2, 36, 1, 0),
(2, 37, 1, 0),
(2, 38, 1, 0),
(2, 39, 1, 0),
(2, 40, 1, 0),
(2, 41, 1, 0),
(2, 42, 1, 0),
(2, 43, 1, 0),
(2, 44, 1, 0),
(2, 45, 1, 0),
(2, 46, 1, 0),
(2, 47, 1, 0),
(2, 48, 1, 0),
(2, 49, 1, 0),
(2, 50, 1, 0),
(2, 51, 1, 0),
(2, 52, 1, 0),
(2, 53, 1, 0),
(2, 54, 1, 0),
(2, 55, 1, 0),
(2, 56, 1, 0),
(2, 57, 1, 0),
(2, 58, 1, 0),
(2, 59, 1, 0),
(2, 60, 1, 0),
(2, 61, 1, 0),
(2, 62, 1, 0),
(2, 63, 1, 1),
(2, 64, 1, 1),
(2, 65, 1, 1),
(2, 66, 1, 1),
(2, 67, 1, 1),
(2, 68, 1, 1),
(2, 69, 1, 1),
(2, 70, 1, 1),
(2, 71, 1, 1),
(2, 72, 1, 1),
(2, 73, 1, 1),
(2, 74, 1, 1),
(2, 75, 1, 1),
(2, 76, 1, 1),
(2, 77, 1, 1),
(2, 78, 1, 1),
(2, 79, 1, 1),
(2, 80, 1, 1),
(2, 81, 1, 1),
(2, 82, 1, 1),
(2, 83, 1, 1),
(2, 84, 1, 1),
(2, 85, 1, 1),
(2, 86, 1, 1),
(2, 87, 1, 1),
(2, 88, 1, 1),
(2, 89, 1, 1),
(2, 90, 1, 1),
(2, 91, 1, 1),
(2, 92, 1, 1),
(2, 93, 1, 1),
(2, 94, 1, 1),
(2, 95, 1, 1),
(2, 96, 1, 1),
(2, 97, 1, 1),
(2, 98, 1, 1),
(2, 99, 1, 1),
(2, 100, 1, 1),
(2, 101, 1, 1),
(2, 102, 1, 1),
(2, 103, 1, 1),
(2, 104, 1, 1),
(2, 105, 1, 1),
(3, 1, 1, 0),
(3, 2, 1, 0),
(3, 3, 1, 0),
(3, 4, 1, 0),
(3, 5, 1, 0),
(3, 6, 1, 0),
(3, 7, 1, 0),
(3, 8, 1, 0),
(3, 9, 1, 0),
(3, 10, 1, 0),
(3, 11, 1, 0),
(3, 12, 1, 0),
(3, 13, 1, 0),
(3, 14, 1, 0),
(3, 15, 1, 0),
(3, 16, 1, 0),
(3, 17, 1, 0),
(3, 18, 1, 0),
(3, 19, 1, 0),
(3, 20, 1, 0),
(3, 21, 1, 0),
(3, 22, 1, 0),
(3, 23, 1, 0),
(3, 24, 1, 0),
(3, 25, 1, 0),
(3, 26, 1, 0),
(3, 27, 1, 0),
(3, 28, 1, 0),
(3, 29, 1, 0),
(3, 30, 1, 0),
(3, 31, 1, 0),
(3, 32, 1, 0),
(3, 33, 1, 0),
(3, 34, 1, 0),
(3, 35, 1, 0),
(3, 36, 1, 0),
(3, 37, 1, 0),
(3, 38, 1, 0),
(3, 39, 1, 0),
(3, 40, 1, 0),
(3, 41, 1, 0),
(3, 42, 1, 0),
(3, 43, 1, 0),
(3, 44, 1, 0),
(3, 45, 1, 0),
(3, 46, 1, 0),
(3, 47, 1, 0),
(3, 48, 1, 0),
(3, 49, 1, 0),
(3, 50, 1, 0),
(3, 51, 1, 0),
(3, 52, 1, 0),
(3, 53, 1, 0),
(3, 54, 1, 0),
(3, 55, 1, 0),
(3, 56, 1, 0),
(3, 57, 1, 0),
(3, 58, 1, 0),
(3, 59, 1, 0),
(3, 60, 1, 0),
(3, 61, 1, 0),
(3, 62, 1, 0),
(3, 63, 1, 1),
(3, 64, 1, 1),
(3, 65, 1, 1),
(3, 66, 1, 1),
(3, 67, 1, 1),
(3, 68, 1, 1),
(3, 69, 1, 1),
(3, 70, 1, 1),
(3, 71, 1, 1),
(3, 72, 1, 1),
(3, 73, 1, 1),
(3, 74, 1, 1),
(3, 75, 1, 1),
(3, 76, 1, 1),
(3, 77, 1, 1),
(3, 78, 1, 1),
(3, 79, 1, 1),
(3, 80, 1, 1),
(3, 81, 1, 1),
(3, 82, 1, 1),
(3, 83, 1, 1),
(3, 84, 1, 1),
(3, 85, 1, 1),
(3, 86, 1, 1),
(3, 87, 1, 1),
(3, 88, 1, 1),
(3, 89, 1, 1),
(3, 90, 1, 1),
(3, 91, 1, 1),
(3, 92, 1, 1),
(3, 93, 1, 1),
(3, 94, 1, 1),
(3, 95, 1, 1),
(3, 96, 1, 1),
(3, 97, 1, 1),
(3, 98, 1, 1),
(3, 99, 1, 1),
(3, 100, 1, 1),
(3, 101, 1, 1),
(3, 102, 1, 1),
(3, 103, 1, 1),
(3, 104, 1, 1),
(3, 105, 1, 1),
(4, 1, 1, 0),
(4, 2, 1, 0),
(4, 3, 1, 0),
(4, 4, 1, 0),
(4, 5, 1, 0),
(4, 6, 1, 0),
(4, 7, 1, 0),
(4, 8, 1, 0),
(4, 9, 1, 0),
(4, 10, 1, 0),
(4, 11, 1, 0),
(4, 12, 1, 0),
(4, 13, 1, 0),
(4, 14, 1, 0),
(4, 15, 1, 0),
(4, 16, 1, 0),
(4, 17, 1, 0),
(4, 18, 1, 0),
(4, 19, 1, 0),
(4, 20, 1, 0),
(4, 21, 1, 0),
(4, 22, 1, 0),
(4, 23, 1, 0),
(4, 24, 1, 0),
(4, 25, 1, 0),
(4, 26, 1, 0),
(4, 27, 1, 0),
(4, 28, 1, 0),
(4, 29, 1, 0),
(4, 30, 1, 0),
(4, 31, 1, 0),
(4, 32, 1, 0),
(4, 33, 1, 0),
(4, 34, 1, 0),
(4, 35, 1, 0),
(4, 36, 1, 0),
(4, 37, 1, 0),
(4, 38, 1, 0),
(4, 39, 1, 0),
(4, 40, 1, 0),
(4, 41, 1, 0),
(4, 42, 1, 0),
(4, 43, 1, 0),
(4, 44, 1, 0),
(4, 45, 1, 0),
(4, 46, 1, 0),
(4, 47, 1, 0),
(4, 48, 1, 0),
(4, 49, 1, 0),
(4, 50, 1, 0),
(4, 51, 1, 0),
(4, 52, 1, 0),
(4, 53, 1, 0),
(4, 54, 1, 0),
(4, 55, 1, 0),
(4, 56, 1, 0),
(4, 57, 1, 0),
(4, 58, 1, 0),
(4, 59, 1, 0),
(4, 60, 1, 0),
(4, 61, 1, 0),
(4, 62, 1, 0),
(4, 63, 1, 0),
(4, 64, 1, 0),
(4, 65, 1, 0),
(4, 66, 1, 0),
(4, 67, 1, 0),
(4, 68, 1, 0),
(4, 69, 1, 0),
(4, 70, 1, 0),
(4, 71, 1, 0),
(4, 72, 1, 0),
(4, 73, 1, 0),
(4, 74, 1, 0),
(4, 75, 1, 0),
(4, 76, 1, 0),
(4, 77, 1, 0),
(4, 78, 1, 0),
(4, 79, 1, 0),
(4, 80, 1, 0),
(4, 81, 1, 0),
(4, 82, 1, 0),
(4, 83, 1, 0),
(4, 84, 1, 0),
(4, 85, 1, 0),
(4, 86, 1, 0),
(4, 87, 1, 0),
(4, 88, 1, 0),
(4, 89, 1, 0),
(4, 90, 1, 0),
(4, 91, 1, 0),
(4, 92, 1, 0),
(4, 93, 1, 0),
(4, 94, 1, 0),
(4, 95, 1, 0),
(4, 96, 1, 0),
(4, 97, 1, 0),
(4, 98, 1, 0),
(4, 99, 1, 0),
(4, 100, 1, 0),
(4, 101, 1, 0),
(4, 102, 1, 0),
(4, 103, 1, 0),
(4, 104, 1, 0),
(4, 105, 1, 0),
(5, 1, 1, 0),
(5, 2, 1, 0),
(5, 3, 1, 0),
(5, 4, 1, 0),
(5, 5, 1, 0),
(5, 6, 1, 0),
(5, 7, 1, 0),
(5, 8, 1, 0),
(5, 9, 1, 0),
(5, 10, 1, 0),
(5, 11, 1, 0),
(5, 12, 1, 0),
(5, 13, 1, 0),
(5, 14, 1, 0),
(5, 15, 1, 0),
(5, 16, 1, 0),
(5, 17, 1, 0),
(5, 18, 1, 0),
(5, 19, 1, 0),
(5, 20, 1, 0),
(5, 21, 1, 0),
(5, 22, 1, 0),
(5, 23, 1, 0),
(5, 24, 1, 0),
(5, 25, 1, 0),
(5, 26, 1, 0),
(5, 27, 1, 0),
(5, 28, 1, 0),
(5, 29, 1, 0),
(5, 30, 1, 0),
(5, 31, 1, 0),
(5, 32, 1, 0),
(5, 33, 1, 0),
(5, 34, 1, 0),
(5, 35, 1, 0),
(5, 36, 1, 0),
(5, 37, 1, 0),
(5, 38, 1, 0),
(5, 39, 1, 0),
(5, 40, 1, 0),
(5, 41, 1, 0),
(5, 42, 1, 0),
(5, 43, 1, 0),
(5, 44, 1, 0),
(5, 45, 1, 0),
(5, 46, 1, 0),
(5, 47, 1, 0),
(5, 48, 1, 0),
(5, 49, 1, 0),
(5, 50, 1, 0),
(5, 51, 1, 0),
(5, 52, 1, 0),
(5, 53, 1, 0),
(5, 54, 1, 0),
(5, 55, 1, 0),
(5, 56, 1, 0),
(5, 57, 1, 0),
(5, 58, 1, 0),
(5, 59, 1, 0),
(5, 60, 1, 0),
(5, 61, 1, 0),
(5, 62, 1, 0),
(5, 63, 1, 1),
(5, 64, 1, 1),
(5, 65, 1, 1),
(5, 66, 1, 1),
(5, 67, 1, 1),
(5, 68, 1, 1),
(5, 69, 1, 1),
(5, 70, 1, 1),
(5, 71, 1, 1),
(5, 72, 1, 1),
(5, 73, 1, 1),
(5, 74, 1, 1),
(5, 75, 1, 1),
(5, 76, 1, 1),
(5, 77, 1, 1),
(5, 78, 1, 1),
(5, 79, 1, 1),
(5, 80, 1, 1),
(5, 81, 1, 1),
(5, 82, 1, 1),
(5, 83, 1, 1),
(5, 84, 1, 1),
(5, 85, 1, 1),
(5, 86, 1, 1),
(5, 87, 1, 1),
(5, 88, 1, 1),
(5, 89, 1, 1),
(5, 90, 1, 1),
(5, 91, 1, 1),
(5, 92, 1, 1),
(5, 93, 1, 1),
(5, 94, 1, 1),
(5, 95, 1, 1),
(5, 96, 1, 1),
(5, 97, 1, 1),
(5, 98, 1, 1),
(5, 99, 1, 1),
(5, 100, 1, 1),
(5, 101, 1, 1),
(5, 102, 1, 1),
(5, 103, 1, 1),
(5, 104, 1, 1),
(5, 105, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_country`
--

CREATE TABLE IF NOT EXISTS `ps_module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_country`
--

INSERT INTO `ps_module_country` (`id_module`, `id_shop`, `id_country`) VALUES
(1, 1, 29),
(29, 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_currency`
--

CREATE TABLE IF NOT EXISTS `ps_module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(11) NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_currency`
--

INSERT INTO `ps_module_currency` (`id_module`, `id_shop`, `id_currency`) VALUES
(1, 1, 1),
(29, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_group`
--

CREATE TABLE IF NOT EXISTS `ps_module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_group` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_group`
--

INSERT INTO `ps_module_group` (`id_module`, `id_shop`, `id_group`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(2, 1, 1),
(2, 1, 2),
(2, 1, 3),
(3, 1, 1),
(3, 1, 2),
(3, 1, 3),
(4, 1, 1),
(4, 1, 2),
(4, 1, 3),
(5, 1, 1),
(5, 1, 2),
(5, 1, 3),
(6, 1, 1),
(6, 1, 2),
(6, 1, 3),
(7, 1, 1),
(7, 1, 2),
(7, 1, 3),
(8, 1, 1),
(8, 1, 2),
(8, 1, 3),
(9, 1, 1),
(9, 1, 2),
(9, 1, 3),
(10, 1, 1),
(10, 1, 2),
(10, 1, 3),
(11, 1, 1),
(11, 1, 2),
(11, 1, 3),
(12, 1, 1),
(12, 1, 2),
(12, 1, 3),
(13, 1, 1),
(13, 1, 2),
(13, 1, 3),
(14, 1, 1),
(14, 1, 2),
(14, 1, 3),
(15, 1, 1),
(15, 1, 2),
(15, 1, 3),
(16, 1, 1),
(16, 1, 2),
(16, 1, 3),
(17, 1, 1),
(17, 1, 2),
(17, 1, 3),
(18, 1, 1),
(18, 1, 2),
(18, 1, 3),
(19, 1, 1),
(19, 1, 2),
(19, 1, 3),
(20, 1, 1),
(20, 1, 2),
(20, 1, 3),
(21, 1, 1),
(21, 1, 2),
(21, 1, 3),
(22, 1, 1),
(22, 1, 2),
(22, 1, 3),
(23, 1, 1),
(23, 1, 2),
(23, 1, 3),
(24, 1, 1),
(24, 1, 2),
(24, 1, 3),
(25, 1, 1),
(25, 1, 2),
(25, 1, 3),
(26, 1, 1),
(26, 1, 2),
(26, 1, 3),
(27, 1, 1),
(27, 1, 2),
(27, 1, 3),
(28, 1, 1),
(28, 1, 2),
(28, 1, 3),
(29, 1, 1),
(29, 1, 2),
(29, 1, 3),
(30, 1, 1),
(30, 1, 2),
(30, 1, 3),
(31, 1, 1),
(31, 1, 2),
(31, 1, 3),
(32, 1, 1),
(32, 1, 2),
(32, 1, 3),
(33, 1, 1),
(33, 1, 2),
(33, 1, 3),
(34, 1, 1),
(34, 1, 2),
(34, 1, 3),
(35, 1, 1),
(35, 1, 2),
(35, 1, 3),
(36, 1, 1),
(36, 1, 2),
(36, 1, 3),
(37, 1, 1),
(37, 1, 2),
(37, 1, 3),
(38, 1, 1),
(38, 1, 2),
(38, 1, 3),
(39, 1, 1),
(39, 1, 2),
(39, 1, 3),
(40, 1, 1),
(40, 1, 2),
(40, 1, 3),
(41, 1, 1),
(41, 1, 2),
(41, 1, 3),
(42, 1, 1),
(42, 1, 2),
(42, 1, 3),
(43, 1, 1),
(43, 1, 2),
(43, 1, 3),
(44, 1, 1),
(44, 1, 2),
(44, 1, 3),
(45, 1, 1),
(45, 1, 2),
(45, 1, 3),
(46, 1, 1),
(46, 1, 2),
(46, 1, 3),
(47, 1, 1),
(47, 1, 2),
(47, 1, 3),
(48, 1, 1),
(48, 1, 2),
(48, 1, 3),
(49, 1, 1),
(49, 1, 2),
(49, 1, 3),
(50, 1, 1),
(50, 1, 2),
(50, 1, 3),
(51, 1, 1),
(51, 1, 2),
(51, 1, 3),
(52, 1, 1),
(52, 1, 2),
(52, 1, 3),
(53, 1, 1),
(53, 1, 2),
(53, 1, 3),
(54, 1, 1),
(54, 1, 2),
(54, 1, 3),
(55, 1, 1),
(55, 1, 2),
(55, 1, 3),
(56, 1, 1),
(56, 1, 2),
(56, 1, 3),
(57, 1, 1),
(57, 1, 2),
(57, 1, 3),
(58, 1, 1),
(58, 1, 2),
(58, 1, 3),
(59, 1, 1),
(59, 1, 2),
(59, 1, 3),
(60, 1, 1),
(60, 1, 2),
(60, 1, 3),
(61, 1, 1),
(61, 1, 2),
(61, 1, 3),
(62, 1, 1),
(62, 1, 2),
(62, 1, 3),
(63, 1, 1),
(63, 1, 2),
(63, 1, 3),
(64, 1, 1),
(64, 1, 2),
(64, 1, 3),
(65, 1, 1),
(65, 1, 2),
(65, 1, 3),
(66, 1, 1),
(66, 1, 2),
(66, 1, 3),
(67, 1, 1),
(67, 1, 2),
(67, 1, 3),
(68, 1, 1),
(68, 1, 2),
(68, 1, 3),
(69, 1, 1),
(69, 1, 2),
(69, 1, 3),
(70, 1, 1),
(70, 1, 2),
(70, 1, 3),
(71, 1, 1),
(71, 1, 2),
(71, 1, 3),
(72, 1, 1),
(72, 1, 2),
(72, 1, 3),
(73, 1, 1),
(73, 1, 2),
(73, 1, 3),
(74, 1, 1),
(74, 1, 2),
(74, 1, 3),
(75, 1, 1),
(75, 1, 2),
(75, 1, 3),
(76, 1, 1),
(76, 1, 2),
(76, 1, 3),
(77, 1, 1),
(77, 1, 2),
(77, 1, 3),
(78, 1, 1),
(78, 1, 2),
(78, 1, 3),
(79, 1, 1),
(79, 1, 2),
(79, 1, 3),
(80, 1, 1),
(80, 1, 2),
(80, 1, 3),
(81, 1, 1),
(81, 1, 2),
(81, 1, 3),
(82, 1, 1),
(82, 1, 2),
(82, 1, 3),
(83, 1, 1),
(83, 1, 2),
(83, 1, 3),
(84, 1, 1),
(84, 1, 2),
(84, 1, 3),
(85, 1, 1),
(85, 1, 2),
(85, 1, 3),
(86, 1, 1),
(86, 1, 2),
(86, 1, 3),
(87, 1, 1),
(87, 1, 2),
(87, 1, 3),
(88, 1, 1),
(88, 1, 2),
(88, 1, 3),
(89, 1, 1),
(89, 1, 2),
(89, 1, 3),
(90, 1, 1),
(90, 1, 2),
(90, 1, 3),
(91, 1, 1),
(91, 1, 2),
(91, 1, 3),
(92, 1, 1),
(92, 1, 2),
(92, 1, 3),
(93, 1, 1),
(93, 1, 2),
(93, 1, 3),
(94, 1, 1),
(94, 1, 2),
(94, 1, 3),
(95, 1, 1),
(95, 1, 2),
(95, 1, 3),
(96, 1, 1),
(96, 1, 2),
(96, 1, 3),
(97, 1, 1),
(97, 1, 2),
(97, 1, 3),
(98, 1, 1),
(98, 1, 2),
(98, 1, 3),
(99, 1, 1),
(99, 1, 2),
(99, 1, 3),
(100, 1, 1),
(100, 1, 2),
(100, 1, 3),
(101, 1, 1),
(101, 1, 2),
(101, 1, 3),
(102, 1, 1),
(102, 1, 2),
(102, 1, 3),
(103, 1, 1),
(103, 1, 2),
(103, 1, 3),
(104, 1, 1),
(104, 1, 2),
(104, 1, 3),
(105, 1, 1),
(105, 1, 2),
(105, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_preference`
--

CREATE TABLE IF NOT EXISTS `ps_module_preference` (
  `id_module_preference` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`module`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_module_preference`
--

INSERT INTO `ps_module_preference` (`id_module_preference`, `id_employee`, `module`, `interest`, `favorite`) VALUES
(1, 1, 'stthemeeditor', NULL, 1),
(2, 1, 'steasycontent', NULL, 1),
(3, 1, 'stbanner', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_module_shop`
--

CREATE TABLE IF NOT EXISTS `ps_module_shop` (
  `id_module` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_module_shop`
--

INSERT INTO `ps_module_shop` (`id_module`, `id_shop`) VALUES
(1, 1),
(4, 1),
(5, 1),
(12, 1),
(15, 1),
(16, 1),
(19, 1),
(25, 1),
(28, 1),
(29, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(102, 1),
(104, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_newsletter`
--

CREATE TABLE IF NOT EXISTS `ps_newsletter` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_operating_system`
--

CREATE TABLE IF NOT EXISTS `ps_operating_system` (
  `id_operating_system` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ps_operating_system`
--

INSERT INTO `ps_operating_system` (`id_operating_system`, `name`) VALUES
(1, 'Windows XP'),
(2, 'Windows Vista'),
(3, 'Windows 7'),
(4, 'Windows 8'),
(5, 'MacOsX'),
(6, 'Linux'),
(7, 'Android');

-- --------------------------------------------------------

--
-- Table structure for table `ps_orders`
--

CREATE TABLE IF NOT EXISTS `ps_orders` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `current_state` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_number` varchar(32) DEFAULT NULL,
  `total_discounts` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discounts_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discounts_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_real` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `invoice_number` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_number` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_orders`
--

INSERT INTO `ps_orders` (`id_order`, `reference`, `id_shop_group`, `id_shop`, `id_carrier`, `id_lang`, `id_customer`, `id_cart`, `id_currency`, `id_address_delivery`, `id_address_invoice`, `current_state`, `secure_key`, `payment`, `conversion_rate`, `module`, `recyclable`, `gift`, `gift_message`, `mobile_theme`, `shipping_number`, `total_discounts`, `total_discounts_tax_incl`, `total_discounts_tax_excl`, `total_paid`, `total_paid_tax_incl`, `total_paid_tax_excl`, `total_paid_real`, `total_products`, `total_products_wt`, `total_shipping`, `total_shipping_tax_incl`, `total_shipping_tax_excl`, `carrier_tax_rate`, `total_wrapping`, `total_wrapping_tax_incl`, `total_wrapping_tax_excl`, `invoice_number`, `delivery_number`, `invoice_date`, `delivery_date`, `valid`, `date_add`, `date_upd`) VALUES
(1, 'XKBKNABJK', 1, 1, 2, 1, 1, 1, 1, 2, 2, 1, '47ce86627c1f3c792a80773c5d2deaf8', 'Chèque', '1.000000', 'cheque', 0, 0, '', 0, '', '0.00', '0.00', '0.00', '626.37', '626.37', '523.72', '0.00', '516.72', '618.00', '7.98', '8.37', '7.00', '19.600', '0.00', '0.00', '0.00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2014-01-06 22:20:05', '2014-01-06 22:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_order_carrier` (
  `id_order_carrier` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) unsigned NOT NULL,
  `id_carrier` int(11) unsigned NOT NULL,
  `id_order_invoice` int(11) unsigned DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_carrier`),
  KEY `id_order` (`id_order`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_order_invoice` (`id_order_invoice`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_order_carrier`
--

INSERT INTO `ps_order_carrier` (`id_order_carrier`, `id_order`, `id_carrier`, `id_order_invoice`, `weight`, `shipping_cost_tax_excl`, `shipping_cost_tax_incl`, `tracking_number`, `date_add`) VALUES
(1, 1, 2, 0, '0.000000', '0.000000', '0.000000', '', '2014-01-06 22:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_cart_rule`
--

CREATE TABLE IF NOT EXISTS `ps_order_cart_rule` (
  `id_order_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_order_invoice` int(10) unsigned DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_cart_rule`),
  KEY `id_order` (`id_order`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_detail`
--

CREATE TABLE IF NOT EXISTS `ps_order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_invoice` int(11) DEFAULT NULL,
  `id_warehouse` int(10) unsigned DEFAULT '0',
  `id_shop` int(11) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `tax_computation_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_order_detail`
--

INSERT INTO `ps_order_detail` (`id_order_detail`, `id_order`, `id_order_invoice`, `id_warehouse`, `id_shop`, `product_id`, `product_attribute_id`, `product_name`, `product_quantity`, `product_quantity_in_stock`, `product_quantity_refunded`, `product_quantity_return`, `product_quantity_reinjected`, `product_price`, `reduction_percent`, `reduction_amount`, `reduction_amount_tax_incl`, `reduction_amount_tax_excl`, `group_reduction`, `product_quantity_discount`, `product_ean13`, `product_upc`, `product_reference`, `product_supplier_reference`, `product_weight`, `tax_computation_method`, `tax_name`, `tax_rate`, `ecotax`, `ecotax_tax_rate`, `discount_quantity_applied`, `download_hash`, `download_nb`, `download_deadline`, `total_price_tax_incl`, `total_price_tax_excl`, `unit_price_tax_incl`, `unit_price_tax_excl`, `total_shipping_price_tax_incl`, `total_shipping_price_tax_excl`, `purchase_supplier_price`, `original_product_price`) VALUES
(1, 1, 0, 0, 1, 5, 11, 'iPod touch - Capacité: 32Go', 1, 0, 0, 0, 0, '392.140500', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '469.000000', '392.140000', '469.000000', '392.140468', '0.000000', '0.000000', '0.000000', '0.000000'),
(2, 1, 0, 0, 1, 7, 0, 'Écouteurs à isolation sonore Shure SE210', 1, 0, 0, 0, 0, '124.581900', '0.00', '0.000000', '0.000000', '0.000000', '0.00', '0.000000', '', '', '', '', '0.000000', 0, '', '0.000', '0.000000', '0.000', 0, '', 0, '0000-00-00 00:00:00', '149.000000', '124.580000', '149.000000', '124.581940', '0.000000', '0.000000', '0.000000', '0.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_detail_tax`
--

CREATE TABLE IF NOT EXISTS `ps_order_detail_tax` (
  `id_order_detail` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_history`
--

CREATE TABLE IF NOT EXISTS `ps_order_history` (
  `id_order_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_order_history`
--

INSERT INTO `ps_order_history` (`id_order_history`, `id_employee`, `id_order`, `id_order_state`, `date_add`) VALUES
(1, 0, 1, 1, '2014-01-06 22:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_invoice`
--

CREATE TABLE IF NOT EXISTS `ps_order_invoice` (
  `id_order_invoice` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `delivery_number` int(11) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discount_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `shipping_tax_computation_method` int(10) unsigned NOT NULL,
  `total_wrapping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `note` text,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_invoice`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_invoice_payment`
--

CREATE TABLE IF NOT EXISTS `ps_order_invoice_payment` (
  `id_order_invoice` int(11) unsigned NOT NULL,
  `id_order_payment` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_order_invoice`,`id_order_payment`),
  KEY `order_payment` (`id_order_payment`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_invoice_tax`
--

CREATE TABLE IF NOT EXISTS `ps_order_invoice_tax` (
  `id_order_invoice` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_message`
--

CREATE TABLE IF NOT EXISTS `ps_order_message` (
  `id_order_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_order_message`
--

INSERT INTO `ps_order_message` (`id_order_message`, `date_add`) VALUES
(1, '2014-01-06 22:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_message_lang`
--

CREATE TABLE IF NOT EXISTS `ps_order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_order_message_lang`
--

INSERT INTO `ps_order_message_lang` (`id_order_message`, `id_lang`, `name`, `message`) VALUES
(1, 1, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),
(1, 3, 'Delay', 'Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_payment`
--

CREATE TABLE IF NOT EXISTS `ps_order_payment` (
  `id_order_payment` int(11) NOT NULL AUTO_INCREMENT,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_payment`),
  KEY `order_reference` (`order_reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_return`
--

CREATE TABLE IF NOT EXISTS `ps_order_return` (
  `id_order_return` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_return_detail`
--

CREATE TABLE IF NOT EXISTS `ps_order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_return_state`
--

CREATE TABLE IF NOT EXISTS `ps_order_return_state` (
  `id_order_return_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_order_return_state`
--

INSERT INTO `ps_order_return_state` (`id_order_return_state`, `color`) VALUES
(1, 'RoyalBlue'),
(2, 'BlueViolet'),
(3, 'LimeGreen'),
(4, 'Crimson'),
(5, '#108510');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_return_state_lang`
--

CREATE TABLE IF NOT EXISTS `ps_order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_return_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_order_return_state_lang`
--

INSERT INTO `ps_order_return_state_lang` (`id_order_return_state`, `id_lang`, `name`) VALUES
(1, 1, 'Waiting for confirmation'),
(1, 3, 'Waiting for confirmation'),
(2, 1, 'Waiting for package'),
(2, 3, 'Waiting for package'),
(3, 1, 'Package received'),
(3, 3, 'Package received'),
(4, 1, 'Return denied'),
(4, 3, 'Return denied'),
(5, 1, 'Return completed'),
(5, 3, 'Return completed');

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_slip`
--

CREATE TABLE IF NOT EXISTS `ps_order_slip` (
  `id_order_slip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_slip_detail`
--

CREATE TABLE IF NOT EXISTS `ps_order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `amount_tax_excl` decimal(10,2) DEFAULT NULL,
  `amount_tax_incl` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_order_slip`,`id_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_state`
--

CREATE TABLE IF NOT EXISTS `ps_order_state` (
  `id_order_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint(1) unsigned DEFAULT '0',
  `send_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`),
  KEY `module_name` (`module_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `ps_order_state`
--

INSERT INTO `ps_order_state` (`id_order_state`, `invoice`, `send_email`, `module_name`, `color`, `unremovable`, `hidden`, `logable`, `delivery`, `shipped`, `paid`, `deleted`) VALUES
(1, 0, 1, 'cheque', 'RoyalBlue', 1, 0, 0, 0, 0, 0, 0),
(2, 1, 1, '', 'LimeGreen', 1, 0, 1, 0, 0, 1, 0),
(3, 1, 1, '', 'DarkOrange', 1, 0, 1, 1, 0, 1, 0),
(4, 1, 1, '', 'BlueViolet', 1, 0, 1, 1, 1, 1, 0),
(5, 1, 0, '', '#108510', 1, 0, 1, 1, 1, 1, 0),
(6, 0, 1, '', 'Crimson', 1, 0, 0, 0, 0, 0, 0),
(7, 1, 1, '', '#ec2e15', 1, 0, 0, 0, 0, 0, 0),
(8, 0, 1, '', '#8f0621', 1, 0, 0, 0, 0, 0, 0),
(9, 1, 1, '', 'HotPink', 1, 0, 0, 0, 0, 1, 0),
(10, 0, 1, 'bankwire', 'RoyalBlue', 1, 0, 0, 0, 0, 0, 0),
(11, 0, 0, '', 'RoyalBlue', 1, 0, 0, 0, 0, 0, 0),
(12, 1, 1, '', 'LimeGreen', 1, 0, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_order_state_lang`
--

CREATE TABLE IF NOT EXISTS `ps_order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_order_state_lang`
--

INSERT INTO `ps_order_state_lang` (`id_order_state`, `id_lang`, `name`, `template`) VALUES
(1, 1, 'Awaiting cheque payment', 'cheque'),
(1, 3, 'Awaiting cheque payment', 'cheque'),
(2, 1, 'Payment accepted', 'payment'),
(2, 3, 'Payment accepted', 'payment'),
(3, 1, 'Preparation in progress', 'preparation'),
(3, 3, 'Preparation in progress', 'preparation'),
(4, 1, 'Shipped', 'shipped'),
(4, 3, 'Shipped', 'shipped'),
(5, 1, 'Delivered', ''),
(5, 3, 'Delivered', ''),
(6, 1, 'Canceled', 'order_canceled'),
(6, 3, 'Canceled', 'order_canceled'),
(7, 1, 'Refund', 'refund'),
(7, 3, 'Refund', 'refund'),
(8, 1, 'Payment error', 'payment_error'),
(8, 3, 'Payment error', 'payment_error'),
(9, 1, 'On backorder', 'outofstock'),
(9, 3, 'On backorder', 'outofstock'),
(10, 1, 'Awaiting bank wire payment', 'bankwire'),
(10, 3, 'Awaiting bank wire payment', 'bankwire'),
(11, 1, 'Awaiting PayPal payment', ''),
(11, 3, 'Awaiting PayPal payment', ''),
(12, 1, 'Payment remotely accepted', 'payment'),
(12, 3, 'Payment remotely accepted', 'payment');

-- --------------------------------------------------------

--
-- Table structure for table `ps_pack`
--

CREATE TABLE IF NOT EXISTS `ps_pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_page`
--

CREATE TABLE IF NOT EXISTS `ps_page` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ps_page`
--

INSERT INTO `ps_page` (`id_page`, `id_page_type`, `id_object`) VALUES
(1, 1, NULL),
(2, 2, 12),
(3, 2, 11),
(4, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ps_pagenotfound`
--

CREATE TABLE IF NOT EXISTS `ps_pagenotfound` (
  `id_pagenotfound` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_pagenotfound`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_pagenotfound`
--

INSERT INTO `ps_pagenotfound` (`id_pagenotfound`, `id_shop`, `id_shop_group`, `request_uri`, `http_referer`, `date_add`) VALUES
(1, 1, 1, '/1561/prestashop/admin8955//img', 'http://localhost/1561/prestashop/js/tiny_mce/plugins/advimage/image.htm', '2014-01-10 00:22:25'),
(2, 1, 1, '/1561/prestashop/admin8955//img', 'http://localhost/1561/prestashop/js/tiny_mce/plugins/advimage/image.htm', '2014-01-10 00:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `ps_page_type`
--

CREATE TABLE IF NOT EXISTS `ps_page_type` (
  `id_page_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_page_type`
--

INSERT INTO `ps_page_type` (`id_page_type`, `name`) VALUES
(3, 'authentication'),
(1, 'index'),
(2, 'product');

-- --------------------------------------------------------

--
-- Table structure for table `ps_page_viewed`
--

CREATE TABLE IF NOT EXISTS `ps_page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product`
--

CREATE TABLE IF NOT EXISTS `ps_product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`),
  KEY `id_category_default` (`id_category_default`),
  KEY `indexed` (`indexed`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `ps_product`
--

INSERT INTO `ps_product` (`id_product`, `id_supplier`, `id_manufacturer`, `id_category_default`, `id_shop_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ean13`, `upc`, `ecotax`, `quantity`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `reference`, `supplier_reference`, `location`, `width`, `height`, `depth`, `weight`, `out_of_stock`, `quantity_discount`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_is_pack`, `cache_has_attachments`, `is_virtual`, `cache_default_attribute`, `date_add`, `date_upd`, `advanced_stock_management`) VALUES
(1, 1, 1, 3, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '124.581940', '70.000000', '', '0.000000', '0.00', 'demo_1', '', '', '0.000000', '0.000000', '0.000000', '0.500000', 2, 0, 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-06 22:19:30', '2014-01-06 22:19:30', 0),
(2, 1, 1, 3, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '66.053500', '33.000000', '', '0.000000', '0.00', 'demo_2', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-06 22:19:31', '2014-01-06 22:19:31', 0),
(3, 1, 1, 5, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '1504.180602', '1000.000000', '', '0.000000', '0.00', 'demo_3', '', '', '0.000000', '0.000000', '0.000000', '1.360000', 2, 0, 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 0, 'both', 0, 0, 0, 0, '2014-01-06 22:19:31', '2014-01-09 16:25:21', 0),
(4, 1, 1, 2, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '1170.568561', '0.000000', '', '0.000000', '0.00', 'demo_4', '', '', '0.000000', '0.000000', '0.000000', '0.750000', 2, 0, 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 0, 'both', 0, 0, 0, 0, '2014-01-06 22:19:32', '2014-01-09 16:25:22', 0),
(5, 0, 0, 2, 1, 1, 0, 0, '0', '', '0.000000', 0, 1, '241.638796', '200.000000', '', '0.000000', '0.00', 'demo_5', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 0, 'both', 0, 0, 0, 0, '2014-01-06 22:19:33', '2014-01-09 16:25:22', 0),
(6, 0, 0, 4, 1, 1, 0, 1, '0', '', '0.000000', 0, 1, '25.041806', '0.000000', '', '0.000000', '0.00', 'demo_6', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-06 22:19:33', '2014-01-06 22:19:33', 0),
(7, 2, 2, 4, 1, 1, 0, 1, '0', '', '0.000000', 0, 1, '124.581940', '0.000000', '', '0.000000', '0.00', 'demo_7', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-06 22:19:33', '2014-01-06 22:19:33', 0),
(11, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.847458', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-09 16:46:35', '2014-01-15 17:04:07', 0),
(13, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-13 22:50:28', '2014-01-13 23:50:37', 0),
(14, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-13 22:50:39', '2014-01-15 17:06:47', 0),
(15, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-13 22:50:48', '2014-01-15 17:07:08', 0),
(16, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-13 22:51:54', '2014-01-15 17:25:34', 0),
(17, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-15 16:14:15', '2014-01-15 17:09:28', 0),
(18, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-15 16:25:50', '2014-01-15 17:13:05', 0),
(19, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-15 16:30:39', '2014-01-15 17:08:12', 0),
(20, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-15 16:38:23', '2014-01-15 17:08:37', 0),
(21, 0, 0, 9, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-15 16:52:27', '2014-01-15 16:54:03', 0),
(22, 0, 0, 6, 1, 1, 0, 0, '', '', '0.000000', 0, 1, '58.474576', '0.000000', '', '0.000000', '0.00', '852364', '', '', '0.000000', '0.000000', '0.000000', '0.000000', 2, 0, 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, 0, 0, '2014-01-15 17:02:10', '2014-01-15 17:22:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attachment`
--

CREATE TABLE IF NOT EXISTS `ps_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attribute`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(17,2) NOT NULL DEFAULT '0.00',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  PRIMARY KEY (`id_product_attribute`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `product_default` (`id_product`,`default_on`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `ps_product_attribute`
--

INSERT INTO `ps_product_attribute` (`id_product_attribute`, `id_product`, `reference`, `supplier_reference`, `location`, `ean13`, `upc`, `wholesale_price`, `price`, `ecotax`, `quantity`, `weight`, `unit_price_impact`, `default_on`, `minimal_quantity`, `available_date`) VALUES
(1, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 10, '0.000000', '0.00', 0, 1, '0000-00-00'),
(2, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 20, '0.000000', '0.00', 1, 1, '0000-00-00'),
(3, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 30, '0.000000', '0.00', 0, 1, '0000-00-00'),
(4, 2, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 40, '0.000000', '0.00', 0, 1, '0000-00-00'),
(5, 3, '', '', '', '', '', '0.000000', '751.672241', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(6, 3, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(7, 3, '', '', '', '', '', '0.000000', '225.752508', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(8, 3, '', '', '', '', '', '0.000000', '977.424749', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(9, 5, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(10, 5, '', '', '', '', '', '0.000000', '75.250836', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(11, 5, '', '', '', '', '', '0.000000', '150.501672', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(12, 1, '', '', '', '', '', '0.000000', '41.806020', '0.000000', 0, '0.000000', '0.00', 0, 4, '0000-00-00'),
(13, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(14, 1, '', '', '', '', '', '0.000000', '41.806020', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(15, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(16, 1, '', '', '', '', '', '0.000000', '41.806020', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(17, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(18, 1, '', '', '', '', '', '0.000000', '41.806020', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(19, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(20, 1, '', '', '', '', '', '0.000000', '41.806020', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(21, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(22, 1, '', '', '', '', '', '0.000000', '41.806020', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(23, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(24, 1, '', '', '', '', '', '0.000000', '41.806020', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(25, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(26, 1, '', '', '', '', '', '0.000000', '41.806020', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(27, 1, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(28, 11, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(29, 11, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(30, 11, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(31, 11, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(32, 11, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(38, 13, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(39, 13, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(40, 13, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(41, 13, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(42, 13, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(43, 14, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(44, 14, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(45, 14, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(46, 14, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(47, 14, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(48, 15, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(49, 15, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(50, 15, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(51, 15, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(52, 15, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(53, 16, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(54, 16, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(55, 16, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(56, 16, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(57, 16, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(63, 17, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(64, 17, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(65, 17, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(66, 17, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(67, 17, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(68, 18, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(69, 18, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(70, 18, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(71, 18, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(72, 18, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(73, 19, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(74, 19, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(75, 19, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(76, 19, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(77, 19, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(78, 20, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(79, 20, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(80, 20, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(81, 20, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(82, 20, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(83, 21, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(84, 21, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(85, 21, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(86, 21, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(87, 21, '852364', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(88, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 1, 1, '0000-00-00'),
(89, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(90, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(91, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00'),
(92, 22, '', '', '', '', '', '0.000000', '0.000000', '0.000000', 0, '0.000000', '0.00', 0, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attribute_combination`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_attribute_combination`
--

INSERT INTO `ps_product_attribute_combination` (`id_attribute`, `id_product_attribute`) VALUES
(4, 1),
(6, 2),
(3, 3),
(5, 4),
(3, 5),
(9, 5),
(10, 5),
(3, 6),
(8, 6),
(10, 6),
(3, 7),
(9, 7),
(11, 7),
(3, 8),
(8, 8),
(11, 8),
(15, 9),
(16, 10),
(17, 11),
(4, 12),
(16, 12),
(4, 13),
(15, 13),
(16, 14),
(19, 14),
(15, 15),
(19, 15),
(3, 16),
(16, 16),
(3, 17),
(15, 17),
(14, 18),
(16, 18),
(14, 19),
(15, 19),
(7, 20),
(16, 20),
(7, 21),
(15, 21),
(5, 22),
(16, 22),
(5, 23),
(15, 23),
(6, 24),
(16, 24),
(6, 25),
(15, 25),
(16, 26),
(18, 26),
(15, 27),
(18, 27),
(21, 28),
(22, 29),
(23, 30),
(24, 31),
(25, 32),
(21, 38),
(22, 39),
(23, 40),
(24, 41),
(25, 42),
(21, 43),
(22, 44),
(23, 45),
(24, 46),
(25, 47),
(21, 48),
(22, 49),
(23, 50),
(24, 51),
(25, 52),
(21, 53),
(22, 54),
(23, 55),
(24, 56),
(25, 57),
(21, 63),
(22, 64),
(23, 65),
(24, 66),
(25, 67),
(21, 68),
(22, 69),
(23, 70),
(24, 71),
(25, 72),
(21, 73),
(22, 74),
(23, 75),
(24, 76),
(25, 77),
(21, 78),
(22, 79),
(23, 80),
(24, 81),
(25, 82),
(21, 83),
(22, 84),
(23, 85),
(24, 86),
(25, 87),
(21, 88),
(22, 89),
(23, 90),
(24, 91),
(25, 92);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attribute_image`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_attribute_image`
--

INSERT INTO `ps_product_attribute_image` (`id_product_attribute`, `id_image`) VALUES
(18, 15),
(19, 15),
(12, 16),
(13, 16),
(24, 17),
(25, 17),
(20, 18),
(21, 18),
(22, 19),
(23, 19),
(26, 20),
(27, 20),
(16, 21),
(17, 21),
(14, 22),
(15, 22),
(1, 23),
(2, 24),
(4, 25),
(3, 26);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_attribute_shop`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute_shop` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(17,2) NOT NULL DEFAULT '0.00',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_attribute_shop`
--

INSERT INTO `ps_product_attribute_shop` (`id_product_attribute`, `id_shop`, `wholesale_price`, `price`, `ecotax`, `weight`, `unit_price_impact`, `default_on`, `minimal_quantity`, `available_date`) VALUES
(1, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(2, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(3, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(4, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(5, 1, '0.000000', '751.672241', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(6, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(7, 1, '0.000000', '225.752508', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(8, 1, '0.000000', '977.424749', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(9, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(10, 1, '0.000000', '75.250836', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(11, 1, '0.000000', '150.501672', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(12, 1, '0.000000', '41.806020', '0.000000', '0.000000', '0.00', 0, 4, '0000-00-00'),
(13, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(14, 1, '0.000000', '41.806020', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(15, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(16, 1, '0.000000', '41.806020', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(17, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(18, 1, '0.000000', '41.806020', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(19, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(20, 1, '0.000000', '41.806020', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(21, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(22, 1, '0.000000', '41.806020', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(23, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(24, 1, '0.000000', '41.806020', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(25, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(26, 1, '0.000000', '41.806020', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(27, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(28, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(29, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(30, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(31, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(32, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(38, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(39, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(40, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(41, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(42, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(43, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(44, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(45, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(46, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(47, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(48, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(49, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(50, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(51, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(52, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(53, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(54, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(55, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(56, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(57, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(63, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(64, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(65, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(66, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(67, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(68, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(69, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(70, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(71, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(72, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(73, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(74, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(75, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(76, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(77, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(78, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(79, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(80, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(81, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(82, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(83, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(84, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(85, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(86, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(87, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(88, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 1, 1, '0000-00-00'),
(89, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(90, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(91, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00'),
(92, 1, '0.000000', '0.000000', '0.000000', '0.000000', '0.00', 0, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_product_carrier` (
  `id_product` int(10) unsigned NOT NULL,
  `id_carrier_reference` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment` (
  `id_product_comment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `content` text NOT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  `grade` float unsigned NOT NULL,
  `validate` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_product_comment`),
  KEY `id_product` (`id_product`),
  KEY `id_customer` (`id_customer`),
  KEY `id_guest` (`id_guest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_criterion`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_criterion` (
  `id_product_comment_criterion` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_comment_criterion_type` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_product_comment_criterion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_product_comment_criterion`
--

INSERT INTO `ps_product_comment_criterion` (`id_product_comment_criterion`, `id_product_comment_criterion_type`, `active`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_criterion_category`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_criterion_category` (
  `id_product_comment_criterion` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment_criterion`,`id_category`),
  KEY `id_category` (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_criterion_lang`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_criterion_lang` (
  `id_product_comment_criterion` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_product_comment_criterion`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_comment_criterion_lang`
--

INSERT INTO `ps_product_comment_criterion_lang` (`id_product_comment_criterion`, `id_lang`, `name`) VALUES
(1, 1, 'Quality'),
(1, 3, 'Quality');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_criterion_product`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_criterion_product` (
  `id_product` int(10) unsigned NOT NULL,
  `id_product_comment_criterion` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_product_comment_criterion`),
  KEY `id_product_comment_criterion` (`id_product_comment_criterion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_grade`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_grade` (
  `id_product_comment` int(10) unsigned NOT NULL,
  `id_product_comment_criterion` int(10) unsigned NOT NULL,
  `grade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment`,`id_product_comment_criterion`),
  KEY `id_product_comment_criterion` (`id_product_comment_criterion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_report`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_report` (
  `id_product_comment` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment`,`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_comment_usefulness`
--

CREATE TABLE IF NOT EXISTS `ps_product_comment_usefulness` (
  `id_product_comment` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `usefulness` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id_product_comment`,`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_country_tax`
--

CREATE TABLE IF NOT EXISTS `ps_product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_download`
--

CREATE TABLE IF NOT EXISTS `ps_product_download` (
  `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shareable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_download`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_group_reduction_cache`
--

CREATE TABLE IF NOT EXISTS `ps_product_group_reduction_cache` (
  `id_product` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_product`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_lang`
--

CREATE TABLE IF NOT EXISTS `ps_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_lang`
--

INSERT INTO `ps_product_lang` (`id_product`, `id_shop`, `id_lang`, `description`, `description_short`, `link_rewrite`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `available_now`, `available_later`) VALUES
(1, 1, 1, '<p><strong><span style="font-size: small;">Curved ahead of the curve.</span></strong></p>\r\n<p>For those about to rock, we give you nine amazing colors. But that''s only part of the story. Feel the curved, all-aluminum and glass design and you won''t want to put iPod nano down.</p>\r\n<p><strong><span style="font-size: small;">Great looks. And brains, too.</span></strong></p>\r\n<p>The new Genius feature turns iPod nano into your own highly intelligent, personal DJ. It creates playlists by finding songs in your library that go great together.</p>\r\n<p><strong><span style="font-size: small;">Made to move with your moves.</span></strong></p>\r\n<p>The accelerometer comes to iPod nano. Give it a shake to shuffle your music. Turn it sideways to view Cover Flow. And play games designed with your moves in mind.</p>', '<p>New design. New features. Now in 8GB and 16GB. iPod nano rocks like never before.</p>', 'ipod-nano', '', '', '', 'iPod Nano', 'In stock', ''),
(1, 1, 3, '', '', 'ipod-nano', '', '', '', 'iPod Nano', '', ''),
(2, 1, 1, '<p><span style="font-size: small;"><strong>Instant attachment.</strong></span></p>\r\n<p>Wear up to 500 songs on your sleeve. Or your belt. Or your gym shorts. iPod shuffle is a badge of musical devotion. Now in new, more brilliant colors.</p>\r\n<p><span style="font-size: small;"><strong>Feed your iPod shuffle.</strong></span></p>\r\n<p>iTunes is your entertainment superstore. It’s your ultra-organized music collection and jukebox. And it’s how you load up your iPod shuffle in one click.</p>\r\n<p><span style="font-size: small;"><strong>Beauty and the beat.</strong></span></p>\r\n<p>Intensely colorful anodized aluminum complements the simple design of iPod shuffle. Now in blue, green, pink, red, and original silver.</p>', '<p>iPod shuffle, the world’s most wearable music player, now clips on in more vibrant blue, green, pink, and red.</p>', 'ipod-shuffle', '', '', '', 'iPod shuffle', 'In stock', ''),
(2, 1, 3, '', '', 'ipod-shuffle', '', '', '', 'iPod shuffle', '', ''),
(3, 1, 1, '<p>MacBook Air is nearly as thin as your index finger. Practically every detail that could be streamlined has been. Yet it still has a 13.3-inch widescreen LED display, full-size keyboard, and large multi-touch trackpad. It’s incomparably portable without the usual ultraportable screen and keyboard compromises.</p><p>The incredible thinness of MacBook Air is the result of numerous size- and weight-shaving innovations. From a slimmer hard drive to strategically hidden I/O ports to a lower-profile battery, everything has been considered and reconsidered with thinness in mind.</p><p>MacBook Air is designed and engineered to take full advantage of the wireless world. A world in which 802.11n Wi-Fi is now so fast and so available, people are truly living untethered — buying and renting movies online, downloading software, and sharing and storing files on the web. </p>', 'MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.', 'macbook-air', '', '', '', 'MacBook Air', '', ''),
(3, 1, 3, '<p>Now that you can buy movies from the iTunes Store and sync them to your iPod, the whole world is your theater.</p>', '', 'macbook-air', '', '', '', 'iPods', '', ''),
(4, 1, 1, 'Every MacBook has a larger hard drive, up to 250GB, to store growing media collections and valuable data.<br /><br />The 2.4GHz MacBook models now include 2GB of memory standard — perfect for running more of your favorite applications smoothly.', 'MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.', 'macbook', '', '', '', 'MacBook', '', ''),
(4, 1, 3, '<p>Wonderful accessories for your iPod</p>', '', 'macbook', '', '', '', 'Accessories', '', ''),
(5, 1, 1, '<h3>Five new hands-on applications</h3>\r\n<p>View rich HTML email with photos as well as PDF, Word, and Excel attachments. Get maps, directions, and real-time traffic information. Take notes and read stock and weather reports.</p>\r\n<h3>Touch your music, movies, and more</h3>\r\n<p>The revolutionary Multi-Touch technology built into the gorgeous 3.5-inch display lets you pinch, zoom, scroll, and flick with your fingers.</p>\r\n<h3>Internet in your pocket</h3>\r\n<p>With the Safari web browser, see websites the way they were designed to be seen and zoom in and out with a tap.<sup>2</sup> And add Web Clips to your Home screen for quick access to favorite sites.</p>\r\n<h3>What''s in the box</h3>\r\n<ul>\r\n<li><span></span>iPod touch</li>\r\n<li><span></span>Earphones</li>\r\n<li><span></span>USB 2.0 cable</li>\r\n<li><span></span>Dock adapter</li>\r\n<li><span></span>Polishing cloth</li>\r\n<li><span></span>Stand</li>\r\n<li><span></span>Quick Start guide</li>\r\n</ul>', '<ul>\r\n<li>Revolutionary Multi-Touch interface</li>\r\n<li>3.5-inch widescreen color display</li>\r\n<li>Wi-Fi (802.11b/g)</li>\r\n<li>8 mm thin</li>\r\n<li>Safari, YouTube, Mail, Stocks, Weather, Notes, iTunes Wi-Fi Music Store, Maps</li>\r\n</ul>', 'ipod-touch', '', '', '', 'iPod touch', '', ''),
(5, 1, 3, '', '', 'ipod-touch', '', '', '', 'בנות', '', ''),
(6, 1, 1, '<p>Lorem ipsum</p>', '<p>Lorem ipsum</p>', 'belkin-leather-folio-for-ipod-nano-black-chocolate', '', '', '', 'Belkin Leather Folio for iPod nano - Black / Chocolate', '', ''),
(6, 1, 3, '', '', 'belkin-leather-folio-for-ipod-nano-black-chocolate', '', '', '', 'Belkin Leather Folio for iPod nano - Black / Chocolate', '', ''),
(7, 1, 1, '<div class="product-overview-full">Using Hi-Definition MicroSpeakers to deliver full-range audio, the ergonomic and lightweight design of the SE210 earphones is ideal for premium on-the-go listening on your iPod or iPhone. They offer the most accurate audio reproduction from both portable and home stereo audio sources--for the ultimate in precision highs and rich low end. In addition, the flexible design allows you to choose the most comfortable fit from a variety of wearing positions. <br /> <br /> <strong>Features </strong> <br /> \r\n<ul>\r\n<li>Sound-isolating design </li>\r\n<li> Hi-Definition MicroSpeaker with a single balanced armature driver </li>\r\n<li> Detachable, modular cable so you can make the cable longer or shorter depending on your activity </li>\r\n<li> Connector compatible with earphone ports on both iPod and iPhone </li>\r\n</ul>\r\n<strong>Specifications </strong><br /> \r\n<ul>\r\n<li>Speaker type: Hi-Definition MicroSpeaker </li>\r\n<li> Frequency range: 25Hz-18.5kHz </li>\r\n<li> Impedance (1kHz): 26 Ohms </li>\r\n<li> Sensitivity (1mW): 114 dB SPL/mW </li>\r\n<li> Cable length (with extension): 18.0 in./45.0 cm (54.0 in./137.1 cm) </li>\r\n</ul>\r\n<strong>In the box</strong><br /> \r\n<ul>\r\n<li>Shure SE210 earphones </li>\r\n<li> Extension cable (36.0 in./91.4 cm) </li>\r\n<li> Three pairs foam earpiece sleeves (small, medium, large) </li>\r\n<li> Three pairs soft flex earpiece sleeves (small, medium, large) </li>\r\n<li> One pair triple-flange earpiece sleeves </li>\r\n<li> Carrying case </li>\r\n</ul>\r\nWarranty<br /> Two-year limited <br />(For details, please visit <br />www.shure.com/PersonalAudio/CustomerSupport/ProductReturnsAndWarranty/index.htm.) <br /><br /> Mfr. Part No.: SE210-A-EFS <br /><br />Note: Products sold through this website that do not bear the Apple Brand name are serviced and supported exclusively by their manufacturers in accordance with terms and conditions packaged with the products. Apple''s Limited Warranty does not apply to products that are not Apple-branded, even if packaged or sold with Apple products. Please contact the manufacturer directly for technical support and customer service.</div>', '<p>Evolved from personal monitor technology road-tested by pro musicians and perfected by Shure engineers, the lightweight and stylish SE210 delivers full-range audio that''s free from outside noise.</p>', 'ecouteurs-a-isolation-sonore-shure-se210-blanc', '', '', '', 'Shure SE210 Sound-Isolating Earphones for iPod and iPhone', '', ''),
(7, 1, 3, '', '', 'ecouteurs-a-isolation-sonore-shure-se210-blanc', '', '', '', 'Shure SE210 Sound-Isolating Earphones for iPod and iPhone', '', ''),
(11, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'blue krep dress', '', ''),
(11, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'שמלת קרף כחולה', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(13, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'red krep dress', '', ''),
(13, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'שמלת קרף אדומה', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(14, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'red dots dress with flower', '', ''),
(14, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'שמלת נקודות אדומה עם פרח', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(15, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'blue dots dress with flower', '', ''),
(15, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'שמלת נקודות כחולה עם פרח', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(16, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'peach dress with silver lines', '', ''),
(16, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'שמלת כתפיות אפרסק עם פס כסף', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(17, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'red dots skirt with alastic belt', '', ''),
(17, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'מסתובבת אדומה עם נקודות', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(18, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'blue dots skirt with alastic belt', '', ''),
(18, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'מסתובבת כחולה עם נקודות', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(19, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'pink dots panel skirt', '', ''),
(19, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'קומות ארוכה ורודה בהירה', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(20, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'Floral skirt with alastic belt', '', ''),
(20, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'מסתובבת פרחונית', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(21, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'white shirt for boys', '', ''),
(21, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'חולצת צווארון סיני - לבנה', '', 'זה המלל שיוצג כאשר אין יותר פריטים'),
(22, 1, 1, '<p><span>Description</span></p>', '<p><span>Short description</span></p>', 'dress-1', '', '', '', 'white dress with silver lines', '', ''),
(22, 1, 3, '<p>הרכב הבד: 100% כותנה.<br />הוראות כביסה / טיפול : להפוך ולכבס במכונה ללא מלבין ובנפרד. ללא השריה, סחיטה מוגבלת, ייבוש בצל. גיהוץ הפוך בחום נמוך.</p>', '<p dir="RTL">שמלה חגיגית בצבע לבן עם צביעה כחולה בחלק התחתון. עם צווארון מעוטר וחגורה לקשירה בגב.</p>\r\n<ul>\r\n<li>עשוייה בד 100% כותנה.</li>\r\n<li>עוד נושא שנרשום אותו כבולט.</li>\r\n</ul>', '-1', '', '', '', 'שמלת כתפיות לבנה עם פס כסף', '', 'זה המלל שיוצג כאשר אין יותר פריטים');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_sale`
--

CREATE TABLE IF NOT EXISTS `ps_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_shop`
--

CREATE TABLE IF NOT EXISTS `ps_product_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_product`,`id_shop`),
  KEY `id_category_default` (`id_category_default`),
  KEY `date_add` (`date_add`,`active`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_shop`
--

INSERT INTO `ps_product_shop` (`id_product`, `id_shop`, `id_category_default`, `id_tax_rules_group`, `on_sale`, `online_only`, `ecotax`, `minimal_quantity`, `price`, `wholesale_price`, `unity`, `unit_price_ratio`, `additional_shipping_cost`, `customizable`, `uploadable_files`, `text_fields`, `active`, `redirect_type`, `id_product_redirected`, `available_for_order`, `available_date`, `condition`, `show_price`, `indexed`, `visibility`, `cache_default_attribute`, `advanced_stock_management`, `date_add`, `date_upd`) VALUES
(1, 1, 3, 1, 0, 0, '0.000000', 1, '124.581940', '70.000000', '', '0.000000', '0.00', 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-06 22:19:30', '2014-01-06 22:19:30'),
(2, 1, 3, 1, 0, 0, '0.000000', 1, '66.053500', '33.000000', '', '0.000000', '0.00', 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-06 22:19:31', '2014-01-06 22:19:31'),
(3, 1, 5, 1, 0, 0, '0.000000', 1, '1504.180602', '1000.000000', '', '0.000000', '0.00', 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 0, 'both', 0, 0, '2014-01-06 22:19:31', '2014-01-09 16:25:21'),
(4, 1, 2, 1, 0, 0, '0.000000', 1, '1170.568561', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 0, 'both', 0, 0, '2014-01-06 22:19:32', '2014-01-09 16:25:22'),
(5, 1, 2, 1, 0, 0, '0.000000', 1, '241.638796', '200.000000', '', '0.000000', '0.00', 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 0, 'both', 0, 0, '2014-01-06 22:19:33', '2014-01-09 16:25:22'),
(6, 1, 4, 1, 0, 1, '0.000000', 1, '25.041806', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-06 22:19:33', '2014-01-06 22:19:33'),
(7, 1, 4, 1, 0, 1, '0.000000', 1, '124.581940', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 0, '', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-06 22:19:33', '2014-01-06 22:19:33'),
(11, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.847458', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-09 16:46:35', '2014-01-15 17:04:07'),
(13, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-13 22:50:28', '2014-01-13 23:50:37'),
(14, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-13 22:50:39', '2014-01-15 17:06:47'),
(15, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-13 22:50:48', '2014-01-15 17:07:08'),
(16, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-13 22:51:54', '2014-01-15 17:25:34'),
(17, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-15 16:14:15', '2014-01-15 17:09:28'),
(18, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-15 16:25:50', '2014-01-15 17:13:05'),
(19, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-15 16:30:39', '2014-01-15 17:08:12'),
(20, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-15 16:38:23', '2014-01-15 17:08:37'),
(21, 1, 9, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-15 16:52:27', '2014-01-15 16:54:03'),
(22, 1, 6, 1, 0, 0, '0.000000', 1, '58.474576', '0.000000', '', '0.000000', '0.00', 0, 0, 0, 1, '404', 0, 1, '0000-00-00', 'new', 1, 1, 'both', 0, 0, '2014-01-15 17:02:10', '2014-01-15 17:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_supplier`
--

CREATE TABLE IF NOT EXISTS `ps_product_supplier` (
  `id_product_supplier` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(11) unsigned NOT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_product_supplier`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `ps_product_supplier`
--

INSERT INTO `ps_product_supplier` (`id_product_supplier`, `id_product`, `id_product_attribute`, `id_supplier`, `product_supplier_reference`, `product_supplier_price_te`, `id_currency`) VALUES
(1, 1, 0, 1, '', '0.000000', 1),
(2, 1, 12, 1, '', '0.000000', 1),
(3, 1, 13, 1, '', '0.000000', 1),
(4, 1, 14, 1, '', '0.000000', 1),
(5, 1, 15, 1, '', '0.000000', 1),
(6, 1, 16, 1, '', '0.000000', 1),
(7, 1, 17, 1, '', '0.000000', 1),
(8, 1, 18, 1, '', '0.000000', 1),
(9, 1, 19, 1, '', '0.000000', 1),
(10, 1, 20, 1, '', '0.000000', 1),
(11, 1, 21, 1, '', '0.000000', 1),
(12, 1, 22, 1, '', '0.000000', 1),
(13, 1, 23, 1, '', '0.000000', 1),
(14, 1, 24, 1, '', '0.000000', 1),
(15, 1, 25, 1, '', '0.000000', 1),
(16, 1, 26, 1, '', '0.000000', 1),
(17, 1, 27, 1, '', '0.000000', 1),
(18, 3, 0, 1, '', '1000.000000', 1),
(19, 3, 5, 1, '', '0.000000', 1),
(20, 3, 6, 1, '', '0.000000', 1),
(21, 3, 7, 1, '', '0.000000', 1),
(22, 3, 8, 1, '', '0.000000', 1),
(23, 6, 0, 1, '', '0.000000', 1),
(24, 2, 0, 1, '', '0.000000', 1),
(25, 2, 1, 1, '', '0.000000', 1),
(26, 2, 2, 1, '', '0.000000', 1),
(27, 2, 3, 1, '', '0.000000', 1),
(28, 2, 4, 1, '', '0.000000', 1),
(29, 4, 0, 1, '', '0.000000', 1),
(30, 5, 0, 1, '', '0.000000', 1),
(31, 5, 9, 1, '', '0.000000', 1),
(32, 5, 10, 1, '', '0.000000', 1),
(33, 5, 11, 1, '', '0.000000', 1),
(34, 7, 0, 2, '', '0.000000', 1),
(35, 5, 0, 0, '', '200.000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_product_tag`
--

CREATE TABLE IF NOT EXISTS `ps_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_product_tag`
--

INSERT INTO `ps_product_tag` (`id_product`, `id_tag`) VALUES
(1, 1),
(4, 1),
(1, 2),
(2, 2),
(1, 3),
(4, 4),
(5, 5),
(2, 6),
(14, 7),
(17, 7),
(14, 8),
(15, 8),
(17, 8),
(18, 8),
(19, 8),
(15, 9),
(18, 9),
(19, 10),
(17, 11),
(18, 11),
(20, 11),
(20, 12),
(22, 14),
(16, 15),
(22, 15),
(16, 16),
(22, 16),
(16, 17),
(16, 18);

-- --------------------------------------------------------

--
-- Table structure for table `ps_profile`
--

CREATE TABLE IF NOT EXISTS `ps_profile` (
  `id_profile` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_profile`
--

INSERT INTO `ps_profile` (`id_profile`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `ps_profile_lang`
--

CREATE TABLE IF NOT EXISTS `ps_profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_profile_lang`
--

INSERT INTO `ps_profile_lang` (`id_lang`, `id_profile`, `name`) VALUES
(1, 1, 'SuperAdmin'),
(3, 1, 'SuperAdmin'),
(1, 2, 'Administrator'),
(3, 2, 'Administrator'),
(1, 3, 'Logistician'),
(3, 3, 'Logistician'),
(1, 4, 'Translator'),
(3, 4, 'Translator'),
(1, 5, 'Salesman'),
(3, 5, 'Salesman');

-- --------------------------------------------------------

--
-- Table structure for table `ps_quick_access`
--

CREATE TABLE IF NOT EXISTS `ps_quick_access` (
  `id_quick_access` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_quick_access`
--

INSERT INTO `ps_quick_access` (`id_quick_access`, `new_window`, `link`) VALUES
(1, 0, 'index.php'),
(2, 1, '../'),
(3, 0, 'index.php?controller=AdminCategories&addcategory'),
(4, 0, 'index.php?controller=AdminProducts&addproduct'),
(5, 0, 'index.php?controller=AdminCartRules&addcart_rule');

-- --------------------------------------------------------

--
-- Table structure for table `ps_quick_access_lang`
--

CREATE TABLE IF NOT EXISTS `ps_quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_quick_access_lang`
--

INSERT INTO `ps_quick_access_lang` (`id_quick_access`, `id_lang`, `name`) VALUES
(1, 1, 'Home'),
(1, 3, 'Home'),
(2, 1, 'My Shop'),
(2, 3, 'My Shop'),
(3, 1, 'New category'),
(3, 3, 'New category'),
(4, 1, 'New product'),
(4, 3, 'New product'),
(5, 1, 'New voucher'),
(5, 3, 'New voucher');

-- --------------------------------------------------------

--
-- Table structure for table `ps_range_price`
--

CREATE TABLE IF NOT EXISTS `ps_range_price` (
  `id_range_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_range_price`
--

INSERT INTO `ps_range_price` (`id_range_price`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES
(1, 2, '0.000000', '10000.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ps_range_weight`
--

CREATE TABLE IF NOT EXISTS `ps_range_weight` (
  `id_range_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_range_weight`
--

INSERT INTO `ps_range_weight` (`id_range_weight`, `id_carrier`, `delimiter1`, `delimiter2`) VALUES
(1, 2, '0.000000', '10000.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ps_referrer`
--

CREATE TABLE IF NOT EXISTS `ps_referrer` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_referrer_cache`
--

CREATE TABLE IF NOT EXISTS `ps_referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_referrer_shop`
--

CREATE TABLE IF NOT EXISTS `ps_referrer_shop` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`id_referrer`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_reinsurance`
--

CREATE TABLE IF NOT EXISTS `ps_reinsurance` (
  `id_reinsurance` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  `file_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_reinsurance`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_reinsurance`
--

INSERT INTO `ps_reinsurance` (`id_reinsurance`, `id_shop`, `file_name`) VALUES
(1, 1, 'reinsurance-1-1.jpg'),
(2, 1, 'reinsurance-2-1.jpg'),
(3, 1, 'reinsurance-3-1.jpg'),
(4, 1, 'reinsurance-4-1.jpg'),
(5, 1, 'reinsurance-5-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ps_reinsurance_lang`
--

CREATE TABLE IF NOT EXISTS `ps_reinsurance_lang` (
  `id_reinsurance` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `text` varchar(300) NOT NULL,
  PRIMARY KEY (`id_reinsurance`,`id_lang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_reinsurance_lang`
--

INSERT INTO `ps_reinsurance_lang` (`id_reinsurance`, `id_lang`, `text`) VALUES
(1, 1, 'Money back guarantee.'),
(1, 3, 'Money back guarantee.'),
(2, 1, 'In-store exchange.'),
(2, 3, 'In-store exchange.'),
(3, 1, 'Payment upon shipment.'),
(3, 3, 'Payment upon shipment.'),
(4, 1, 'Free Shipping.'),
(4, 3, 'Free Shipping.'),
(5, 1, '100% secure payment processing.'),
(5, 3, '100% secure payment processing.');

-- --------------------------------------------------------

--
-- Table structure for table `ps_request_sql`
--

CREATE TABLE IF NOT EXISTS `ps_request_sql` (
  `id_request_sql` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id_request_sql`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_required_field`
--

CREATE TABLE IF NOT EXISTS `ps_required_field` (
  `id_required_field` int(11) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_required_field`),
  KEY `object_name` (`object_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_risk`
--

CREATE TABLE IF NOT EXISTS `ps_risk` (
  `id_risk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `percent` tinyint(3) NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_risk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ps_risk`
--

INSERT INTO `ps_risk` (`id_risk`, `percent`, `color`) VALUES
(1, 0, 'LimeGreen'),
(2, 35, 'DarkOrange'),
(3, 75, 'Crimson'),
(4, 100, '#ec2e15');

-- --------------------------------------------------------

--
-- Table structure for table `ps_risk_lang`
--

CREATE TABLE IF NOT EXISTS `ps_risk_lang` (
  `id_risk` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_risk`,`id_lang`),
  KEY `id_risk` (`id_risk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_risk_lang`
--

INSERT INTO `ps_risk_lang` (`id_risk`, `id_lang`, `name`) VALUES
(1, 1, 'None'),
(1, 3, 'None'),
(2, 1, 'Low'),
(2, 3, 'Low'),
(3, 1, 'Medium'),
(3, 3, 'Medium'),
(4, 1, 'High'),
(4, 3, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene`
--

CREATE TABLE IF NOT EXISTS `ps_scene` (
  `id_scene` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_scene`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `ps_scene`
--

INSERT INTO `ps_scene` (`id_scene`, `active`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene_category`
--

CREATE TABLE IF NOT EXISTS `ps_scene_category` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene_lang`
--

CREATE TABLE IF NOT EXISTS `ps_scene_lang` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_scene_lang`
--

INSERT INTO `ps_scene_lang` (`id_scene`, `id_lang`, `name`) VALUES
(1, 1, 'The iPods Nano'),
(1, 3, 'The iPods Nano'),
(2, 1, 'The iPods'),
(2, 3, 'The iPods'),
(3, 1, 'The MacBooks'),
(3, 3, 'The MacBooks');

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene_products`
--

CREATE TABLE IF NOT EXISTS `ps_scene_products` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_scene_shop`
--

CREATE TABLE IF NOT EXISTS `ps_scene_shop` (
  `id_scene` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_scene_shop`
--

INSERT INTO `ps_scene_shop` (`id_scene`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_search_engine`
--

CREATE TABLE IF NOT EXISTS `ps_search_engine` (
  `id_search_engine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `ps_search_engine`
--

INSERT INTO `ps_search_engine` (`id_search_engine`, `server`, `getvar`) VALUES
(1, 'google', 'q'),
(2, 'aol', 'q'),
(3, 'yandex', 'text'),
(4, 'ask.com', 'q'),
(5, 'nhl.com', 'q'),
(6, 'yahoo', 'p'),
(7, 'baidu', 'wd'),
(8, 'lycos', 'query'),
(9, 'exalead', 'q'),
(10, 'search.live', 'q'),
(11, 'voila', 'rdata'),
(12, 'altavista', 'q'),
(13, 'bing', 'q'),
(14, 'daum', 'q'),
(15, 'eniro', 'search_word'),
(16, 'naver', 'query'),
(17, 'msn', 'q'),
(18, 'netscape', 'query'),
(19, 'cnn', 'query'),
(20, 'about', 'terms'),
(21, 'mamma', 'query'),
(22, 'alltheweb', 'q'),
(23, 'virgilio', 'qs'),
(24, 'alice', 'qs'),
(25, 'najdi', 'q'),
(26, 'mama', 'query'),
(27, 'seznam', 'q'),
(28, 'onet', 'qt'),
(29, 'szukacz', 'q'),
(30, 'yam', 'k'),
(31, 'pchome', 'q'),
(32, 'kvasir', 'q'),
(33, 'sesam', 'q'),
(34, 'ozu', 'q'),
(35, 'terra', 'query'),
(36, 'mynet', 'q'),
(37, 'ekolay', 'q'),
(38, 'rambler', 'words');

-- --------------------------------------------------------

--
-- Table structure for table `ps_search_index`
--

CREATE TABLE IF NOT EXISTS `ps_search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_search_index`
--

INSERT INTO `ps_search_index` (`id_product`, `id_word`, `weight`) VALUES
(1, 1, 14),
(2, 1, 15),
(5, 1, 11),
(6, 1, 6),
(7, 1, 8),
(1, 2, 14),
(6, 2, 6),
(1, 3, 10),
(2, 3, 10),
(3, 3, 10),
(4, 3, 10),
(5, 3, 10),
(6, 3, 10),
(7, 3, 10),
(1, 4, 3),
(2, 4, 1),
(3, 4, 1),
(5, 4, 1),
(1, 5, 2),
(2, 5, 1),
(3, 5, 1),
(7, 5, 3),
(1, 6, 1),
(7, 6, 1),
(1, 7, 1),
(2, 7, 3),
(3, 7, 1),
(4, 7, 1),
(1, 8, 17),
(5, 8, 2),
(1, 9, 17),
(5, 9, 2),
(1, 10, 1),
(1, 11, 1),
(1, 12, 1),
(1, 13, 1),
(1, 14, 2),
(1, 15, 1),
(1, 16, 1),
(1, 17, 1),
(4, 17, 1),
(5, 17, 1),
(6, 17, 6),
(7, 17, 10),
(21, 17, 6),
(1, 18, 1),
(1, 19, 1),
(1, 20, 1),
(1, 21, 2),
(1, 22, 2),
(2, 22, 1),
(3, 22, 1),
(5, 22, 1),
(7, 22, 2),
(1, 23, 1),
(1, 24, 1),
(1, 25, 1),
(2, 25, 1),
(1, 26, 1),
(3, 26, 1),
(1, 27, 2),
(3, 27, 1),
(4, 27, 1),
(7, 27, 3),
(1, 28, 1),
(1, 29, 1),
(7, 29, 1),
(1, 30, 1),
(1, 31, 1),
(1, 32, 1),
(1, 33, 1),
(2, 33, 1),
(1, 34, 1),
(1, 35, 1),
(1, 36, 1),
(1, 37, 1),
(1, 38, 1),
(1, 39, 2),
(1, 40, 1),
(1, 41, 1),
(1, 42, 1),
(1, 43, 1),
(1, 44, 1),
(1, 45, 1),
(1, 46, 1),
(5, 46, 1),
(1, 47, 5),
(2, 47, 7),
(3, 47, 1),
(4, 47, 1),
(5, 47, 4),
(7, 47, 2),
(1, 48, 1),
(1, 49, 1),
(1, 50, 1),
(1, 51, 1),
(7, 51, 1),
(1, 52, 1),
(1, 53, 1),
(1, 54, 1),
(1, 55, 1),
(2, 55, 1),
(1, 56, 1),
(1, 57, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 2),
(3, 60, 2),
(5, 60, 4),
(7, 60, 6),
(14, 60, 6),
(15, 60, 6),
(16, 60, 6),
(17, 60, 6),
(18, 60, 6),
(20, 60, 6),
(22, 60, 6),
(1, 61, 2),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(2, 65, 15),
(1, 66, 1),
(2, 66, 2),
(5, 66, 2),
(1, 67, 1),
(1, 68, 1),
(1, 69, 1),
(5, 69, 1),
(1, 70, 1),
(1, 71, 1),
(1, 72, 1),
(1, 73, 1),
(1, 74, 1),
(3, 74, 1),
(5, 74, 1),
(1, 75, 1),
(3, 75, 1),
(1, 76, 3),
(2, 76, 3),
(5, 76, 3),
(1, 77, 7),
(2, 77, 3),
(3, 77, 3),
(4, 77, 7),
(7, 77, 4),
(1, 78, 3),
(2, 78, 3),
(3, 78, 3),
(4, 78, 3),
(1, 79, 3),
(2, 79, 3),
(3, 79, 3),
(4, 79, 3),
(1, 80, 4),
(2, 80, 4),
(11, 80, 6),
(15, 80, 6),
(18, 80, 6),
(1, 81, 4),
(1, 82, 4),
(2, 82, 2),
(3, 82, 8),
(1, 83, 4),
(6, 83, 6),
(1, 84, 4),
(1, 85, 4),
(2, 85, 4),
(19, 85, 6),
(1, 86, 4),
(2, 86, 4),
(1, 87, 4),
(1, 88, 6),
(2, 88, 6),
(5, 88, 6),
(6, 88, 6),
(7, 88, 6),
(1, 89, 6),
(6, 89, 6),
(1, 90, 10),
(2, 90, 10),
(3, 90, 10),
(4, 90, 10),
(5, 90, 10),
(6, 90, 10),
(7, 90, 10),
(1, 91, 3),
(2, 91, 3),
(5, 91, 3),
(1, 92, 3),
(2, 92, 3),
(3, 92, 3),
(4, 92, 3),
(1, 93, 3),
(2, 93, 3),
(3, 93, 3),
(4, 93, 3),
(1, 94, 3),
(2, 94, 3),
(3, 94, 3),
(4, 94, 3),
(1, 95, 4),
(2, 95, 2),
(1, 96, 16),
(5, 96, 2),
(1, 97, 16),
(5, 97, 2),
(1, 98, 4),
(1, 99, 4),
(2, 99, 2),
(3, 99, 8),
(1, 100, 4),
(6, 100, 6),
(1, 101, 4),
(1, 102, 4),
(2, 102, 2),
(1, 103, 4),
(2, 103, 2),
(1, 104, 4),
(1, 105, 6),
(2, 105, 6),
(5, 105, 6),
(6, 105, 6),
(7, 105, 6),
(1, 106, 6),
(6, 106, 6),
(1, 107, 10),
(2, 107, 10),
(3, 107, 10),
(4, 107, 10),
(5, 107, 10),
(6, 107, 10),
(7, 107, 10),
(1, 108, 3),
(2, 108, 3),
(5, 108, 3),
(1, 109, 3),
(2, 109, 3),
(3, 109, 3),
(4, 109, 3),
(1, 110, 3),
(2, 110, 3),
(3, 110, 3),
(4, 110, 3),
(1, 111, 3),
(2, 111, 3),
(3, 111, 3),
(4, 111, 3),
(1, 112, 4),
(2, 112, 2),
(1, 113, 16),
(5, 113, 2),
(1, 114, 16),
(5, 114, 2),
(1, 115, 4),
(1, 116, 4),
(2, 116, 2),
(3, 116, 8),
(1, 117, 4),
(6, 117, 6),
(1, 118, 4),
(1, 119, 4),
(2, 119, 2),
(1, 120, 4),
(2, 120, 2),
(1, 121, 4),
(2, 122, 1),
(3, 122, 2),
(2, 123, 1),
(7, 123, 2),
(2, 124, 1),
(2, 125, 1),
(2, 126, 1),
(5, 126, 1),
(2, 127, 2),
(4, 127, 1),
(5, 127, 1),
(2, 128, 1),
(2, 129, 2),
(13, 129, 6),
(14, 129, 6),
(17, 129, 6),
(2, 130, 1),
(2, 131, 1),
(2, 132, 1),
(2, 133, 1),
(2, 134, 1),
(2, 135, 1),
(17, 135, 6),
(18, 135, 6),
(20, 135, 6),
(2, 136, 1),
(2, 137, 1),
(2, 138, 1),
(2, 139, 1),
(2, 140, 1),
(2, 141, 1),
(2, 142, 1),
(2, 143, 1),
(5, 143, 1),
(2, 144, 1),
(2, 145, 1),
(2, 146, 1),
(3, 146, 1),
(2, 147, 1),
(2, 148, 1),
(2, 149, 1),
(2, 150, 1),
(2, 151, 1),
(2, 152, 1),
(7, 152, 1),
(2, 153, 1),
(2, 154, 1),
(2, 155, 1),
(2, 156, 1),
(2, 157, 1),
(2, 158, 1),
(2, 159, 1),
(2, 160, 1),
(2, 161, 1),
(2, 162, 1),
(16, 162, 6),
(22, 162, 6),
(2, 163, 6),
(2, 164, 6),
(3, 165, 11),
(4, 165, 9),
(3, 166, 11),
(3, 167, 1),
(3, 168, 2),
(3, 169, 1),
(3, 170, 1),
(3, 171, 1),
(3, 172, 1),
(3, 173, 1),
(3, 174, 1),
(3, 175, 1),
(3, 176, 1),
(3, 177, 2),
(3, 178, 1),
(3, 179, 1),
(3, 180, 1),
(3, 181, 2),
(4, 181, 1),
(3, 182, 2),
(3, 183, 1),
(3, 184, 1),
(3, 185, 1),
(3, 186, 1),
(3, 187, 4),
(4, 187, 1),
(3, 188, 1),
(4, 188, 1),
(3, 189, 1),
(3, 190, 1),
(5, 190, 1),
(3, 191, 1),
(7, 191, 1),
(3, 192, 1),
(3, 193, 1),
(3, 194, 1),
(4, 194, 1),
(3, 195, 1),
(3, 196, 1),
(3, 197, 1),
(3, 198, 2),
(3, 199, 1),
(3, 200, 1),
(3, 201, 1),
(3, 202, 1),
(5, 202, 2),
(3, 203, 1),
(5, 203, 1),
(3, 204, 1),
(3, 205, 1),
(5, 205, 2),
(3, 206, 2),
(7, 206, 2),
(3, 207, 2),
(3, 208, 2),
(3, 209, 1),
(7, 209, 2),
(3, 210, 1),
(5, 210, 2),
(3, 211, 1),
(5, 211, 14),
(3, 212, 1),
(3, 213, 1),
(3, 214, 1),
(7, 214, 1),
(3, 215, 1),
(3, 216, 1),
(3, 217, 1),
(5, 217, 1),
(3, 218, 1),
(3, 219, 1),
(3, 220, 2),
(3, 221, 1),
(3, 222, 1),
(3, 223, 1),
(3, 224, 1),
(7, 224, 4),
(3, 225, 1),
(3, 226, 1),
(4, 226, 1),
(3, 227, 9),
(4, 227, 1),
(3, 228, 1),
(3, 229, 1),
(3, 230, 1),
(7, 230, 1),
(3, 231, 1),
(3, 232, 1),
(3, 233, 1),
(3, 234, 1),
(3, 235, 1),
(3, 236, 1),
(3, 237, 1),
(3, 238, 1),
(5, 238, 1),
(3, 239, 1),
(3, 240, 1),
(3, 241, 1),
(3, 242, 1),
(3, 243, 1),
(3, 244, 1),
(3, 245, 1),
(7, 245, 2),
(3, 246, 1),
(3, 247, 1),
(3, 248, 1),
(3, 249, 1),
(3, 250, 1),
(3, 251, 1),
(5, 251, 1),
(3, 252, 1),
(3, 253, 1),
(3, 254, 1),
(3, 255, 1),
(3, 256, 1),
(3, 257, 1),
(3, 258, 1),
(5, 258, 2),
(3, 259, 3),
(4, 259, 3),
(3, 260, 4),
(3, 261, 4),
(3, 262, 4),
(3, 263, 4),
(3, 264, 4),
(3, 265, 4),
(3, 266, 8),
(3, 267, 8),
(3, 268, 8),
(3, 269, 4),
(3, 270, 4),
(3, 271, 4),
(3, 272, 4),
(3, 273, 4),
(3, 274, 6),
(4, 274, 6),
(3, 275, 6),
(3, 276, 3),
(4, 276, 3),
(3, 277, 4),
(3, 278, 4),
(3, 279, 4),
(3, 280, 8),
(3, 281, 4),
(3, 282, 4),
(3, 283, 4),
(3, 284, 8),
(3, 285, 8),
(3, 286, 8),
(3, 287, 4),
(3, 288, 4),
(3, 289, 4),
(3, 290, 4),
(3, 291, 4),
(3, 292, 6),
(4, 292, 6),
(3, 293, 6),
(3, 294, 3),
(4, 294, 3),
(3, 295, 4),
(3, 296, 4),
(3, 297, 4),
(3, 298, 8),
(3, 299, 4),
(3, 300, 4),
(3, 301, 4),
(3, 302, 8),
(3, 303, 8),
(3, 304, 8),
(3, 305, 4),
(3, 306, 4),
(3, 307, 4),
(3, 308, 4),
(3, 309, 4),
(4, 310, 1),
(4, 311, 1),
(4, 312, 1),
(4, 313, 1),
(7, 313, 1),
(4, 314, 1),
(4, 315, 1),
(4, 316, 1),
(4, 317, 1),
(4, 318, 1),
(7, 318, 1),
(4, 319, 1),
(5, 319, 1),
(4, 320, 1),
(4, 321, 1),
(4, 322, 1),
(4, 323, 1),
(4, 324, 1),
(5, 324, 1),
(4, 325, 1),
(4, 326, 1),
(4, 327, 1),
(4, 328, 1),
(4, 329, 1),
(4, 330, 1),
(4, 331, 1),
(4, 332, 1),
(4, 333, 1),
(5, 333, 1),
(4, 334, 1),
(4, 335, 1),
(4, 336, 1),
(4, 337, 1),
(4, 338, 1),
(4, 339, 1),
(4, 340, 1),
(4, 341, 1),
(4, 342, 1),
(4, 343, 1),
(4, 344, 1),
(4, 345, 1),
(4, 346, 1),
(5, 346, 1),
(4, 347, 1),
(5, 347, 1),
(4, 348, 1),
(4, 349, 4),
(5, 350, 2),
(5, 351, 1),
(5, 352, 1),
(5, 353, 1),
(5, 354, 2),
(5, 355, 1),
(5, 356, 1),
(5, 357, 1),
(5, 358, 2),
(5, 359, 2),
(5, 360, 2),
(5, 361, 1),
(5, 362, 1),
(5, 363, 1),
(7, 363, 1),
(5, 364, 1),
(5, 365, 1),
(5, 366, 1),
(5, 367, 1),
(5, 368, 1),
(5, 369, 1),
(5, 370, 1),
(5, 371, 1),
(5, 372, 1),
(5, 373, 1),
(5, 374, 1),
(5, 375, 1),
(5, 376, 1),
(5, 377, 1),
(5, 378, 1),
(5, 379, 1),
(5, 380, 1),
(5, 381, 1),
(7, 381, 1),
(5, 382, 1),
(5, 383, 1),
(5, 384, 1),
(5, 385, 2),
(5, 386, 1),
(5, 387, 1),
(5, 388, 1),
(5, 389, 1),
(5, 390, 1),
(5, 391, 1),
(5, 392, 1),
(5, 393, 1),
(5, 394, 1),
(5, 395, 1),
(7, 395, 1),
(5, 396, 1),
(5, 397, 1),
(5, 398, 1),
(5, 399, 1),
(5, 400, 1),
(5, 401, 1),
(7, 401, 1),
(5, 402, 2),
(5, 403, 1),
(5, 404, 1),
(5, 405, 1),
(5, 406, 1),
(7, 406, 1),
(5, 407, 1),
(7, 407, 8),
(5, 408, 1),
(5, 409, 1),
(7, 409, 4),
(5, 410, 1),
(5, 411, 1),
(5, 412, 1),
(5, 413, 1),
(5, 414, 1),
(5, 415, 1),
(5, 416, 2),
(5, 417, 6),
(5, 418, 2),
(5, 419, 6),
(5, 420, 2),
(6, 421, 6),
(6, 422, 6),
(6, 423, 6),
(6, 424, 6),
(6, 425, 2),
(6, 426, 2),
(6, 427, 3),
(7, 427, 3),
(6, 428, 6),
(6, 429, 6),
(6, 430, 6),
(6, 431, 6),
(7, 431, 6),
(6, 432, 6),
(6, 433, 3),
(7, 433, 3),
(6, 434, 6),
(6, 435, 6),
(6, 436, 6),
(6, 437, 6),
(7, 437, 6),
(6, 438, 6),
(6, 439, 3),
(7, 439, 3),
(7, 440, 12),
(7, 441, 10),
(7, 442, 7),
(7, 443, 7),
(7, 444, 8),
(7, 445, 1),
(7, 446, 1),
(7, 447, 1),
(7, 448, 1),
(7, 449, 1),
(7, 450, 1),
(7, 451, 1),
(7, 452, 2),
(7, 453, 1),
(7, 454, 1),
(7, 455, 3),
(7, 456, 4),
(7, 457, 1),
(7, 458, 1),
(7, 459, 1),
(7, 460, 1),
(7, 461, 3),
(7, 462, 1),
(7, 463, 1),
(7, 464, 1),
(7, 465, 1),
(7, 466, 1),
(7, 467, 1),
(7, 468, 1),
(7, 469, 1),
(7, 470, 1),
(7, 471, 2),
(7, 472, 1),
(7, 473, 1),
(7, 474, 1),
(7, 475, 1),
(7, 476, 1),
(7, 477, 1),
(7, 478, 1),
(7, 479, 1),
(7, 480, 1),
(7, 481, 1),
(7, 482, 1),
(7, 483, 1),
(7, 484, 1),
(7, 485, 1),
(7, 486, 1),
(7, 487, 1),
(7, 488, 2),
(7, 489, 1),
(7, 490, 1),
(7, 491, 1),
(7, 492, 1),
(7, 493, 1),
(7, 494, 1),
(7, 495, 1),
(7, 496, 1),
(7, 497, 1),
(7, 498, 1),
(7, 499, 1),
(7, 500, 1),
(7, 501, 1),
(7, 502, 1),
(7, 503, 1),
(7, 504, 1),
(7, 505, 1),
(7, 506, 1),
(7, 507, 1),
(7, 508, 1),
(7, 509, 1),
(7, 510, 1),
(7, 511, 1),
(7, 512, 1),
(7, 513, 1),
(7, 514, 1),
(7, 515, 1),
(7, 516, 1),
(7, 517, 1),
(7, 518, 2),
(7, 519, 1),
(7, 520, 1),
(7, 521, 1),
(7, 522, 1),
(7, 523, 1),
(7, 524, 1),
(7, 525, 2),
(7, 526, 2),
(7, 527, 1),
(7, 528, 3),
(7, 529, 3),
(7, 530, 2),
(7, 531, 2),
(7, 532, 1),
(7, 533, 1),
(7, 534, 1),
(7, 535, 1),
(7, 536, 1),
(7, 537, 1),
(7, 538, 2),
(7, 539, 1),
(7, 540, 1),
(7, 541, 2),
(7, 542, 1),
(7, 543, 2),
(7, 544, 1),
(7, 545, 1),
(7, 546, 1),
(7, 547, 1),
(7, 548, 1),
(7, 549, 1),
(7, 550, 1),
(7, 551, 1),
(7, 552, 1),
(7, 553, 1),
(7, 554, 4),
(7, 555, 2),
(7, 556, 1),
(7, 557, 1),
(7, 558, 1),
(7, 559, 3),
(7, 560, 1),
(7, 561, 1),
(7, 562, 1),
(7, 563, 1),
(7, 564, 1),
(7, 565, 1),
(7, 566, 1),
(7, 567, 1),
(7, 568, 1),
(7, 569, 1),
(7, 570, 1),
(7, 571, 2),
(7, 572, 1),
(7, 573, 1),
(7, 574, 1),
(7, 575, 1),
(7, 576, 1),
(7, 577, 1),
(7, 578, 1),
(7, 579, 1),
(7, 580, 1),
(7, 581, 1),
(7, 582, 1),
(7, 583, 3),
(7, 584, 9),
(7, 585, 6),
(7, 586, 6),
(7, 587, 6),
(7, 588, 6),
(7, 589, 6),
(7, 590, 6),
(7, 591, 3),
(7, 592, 9),
(7, 593, 6),
(7, 594, 6),
(7, 595, 6),
(7, 596, 6),
(7, 597, 6),
(7, 598, 6),
(7, 599, 3),
(11, 621, 6),
(13, 621, 6),
(14, 621, 6),
(15, 621, 6),
(16, 621, 6),
(22, 621, 6),
(11, 624, 3),
(13, 624, 3),
(14, 624, 3),
(15, 624, 3),
(16, 624, 3),
(17, 624, 3),
(18, 624, 3),
(19, 624, 3),
(20, 624, 3),
(22, 624, 3),
(11, 625, 3),
(13, 625, 3),
(14, 625, 3),
(15, 625, 3),
(16, 625, 3),
(17, 625, 3),
(18, 625, 3),
(19, 625, 3),
(20, 625, 3),
(22, 625, 3),
(11, 626, 1),
(13, 626, 1),
(14, 626, 1),
(15, 626, 1),
(16, 626, 1),
(17, 626, 1),
(18, 626, 1),
(19, 626, 1),
(20, 626, 1),
(21, 626, 1),
(22, 626, 1),
(11, 627, 2),
(13, 627, 2),
(14, 627, 2),
(15, 627, 2),
(16, 627, 2),
(17, 627, 2),
(18, 627, 2),
(19, 627, 2),
(20, 627, 2),
(21, 627, 2),
(22, 627, 2),
(11, 628, 6),
(13, 628, 6),
(14, 628, 6),
(15, 628, 6),
(16, 628, 6),
(22, 628, 6),
(11, 629, 6),
(13, 629, 6),
(11, 631, 10),
(13, 631, 10),
(14, 631, 10),
(15, 631, 10),
(16, 631, 10),
(17, 631, 10),
(18, 631, 10),
(19, 631, 10),
(20, 631, 10),
(21, 631, 10),
(22, 631, 10),
(11, 632, 7),
(13, 632, 1),
(14, 632, 1),
(15, 632, 7),
(16, 632, 1),
(17, 632, 1),
(18, 632, 7),
(19, 632, 1),
(20, 632, 1),
(21, 632, 1),
(22, 632, 1),
(11, 633, 10),
(13, 633, 10),
(14, 633, 10),
(15, 633, 10),
(16, 633, 10),
(17, 633, 10),
(18, 633, 10),
(19, 633, 10),
(20, 633, 10),
(21, 633, 10),
(22, 633, 10),
(11, 634, 1),
(13, 634, 1),
(14, 634, 1),
(15, 634, 1),
(16, 634, 1),
(17, 634, 1),
(18, 634, 1),
(19, 634, 1),
(20, 634, 1),
(21, 634, 1),
(22, 634, 1),
(11, 635, 1),
(13, 635, 1),
(14, 635, 1),
(15, 635, 1),
(16, 635, 1),
(17, 635, 1),
(18, 635, 1),
(19, 635, 1),
(20, 635, 1),
(21, 635, 1),
(22, 635, 1),
(11, 636, 1),
(13, 636, 1),
(14, 636, 1),
(15, 636, 1),
(16, 636, 1),
(17, 636, 1),
(18, 636, 1),
(19, 636, 1),
(20, 636, 1),
(21, 636, 1),
(22, 636, 1),
(11, 637, 1),
(13, 637, 1),
(14, 637, 1),
(15, 637, 1),
(16, 637, 1),
(17, 637, 1),
(18, 637, 1),
(19, 637, 1),
(20, 637, 1),
(21, 637, 1),
(22, 637, 5),
(11, 638, 1),
(13, 638, 1),
(14, 638, 1),
(15, 638, 1),
(16, 638, 1),
(17, 638, 1),
(18, 638, 1),
(19, 638, 1),
(20, 638, 1),
(21, 638, 1),
(22, 638, 1),
(11, 639, 1),
(13, 639, 1),
(14, 639, 1),
(15, 639, 1),
(16, 639, 1),
(17, 639, 1),
(18, 639, 1),
(19, 639, 1),
(20, 639, 1),
(21, 639, 1),
(22, 639, 1),
(11, 640, 1),
(13, 640, 1),
(14, 640, 1),
(15, 640, 1),
(16, 640, 1),
(17, 640, 1),
(18, 640, 1),
(19, 640, 1),
(20, 640, 1),
(21, 640, 1),
(22, 640, 1),
(11, 641, 1),
(13, 641, 1),
(14, 641, 1),
(15, 641, 1),
(16, 641, 1),
(17, 641, 1),
(18, 641, 1),
(19, 641, 1),
(20, 641, 1),
(21, 641, 7),
(22, 641, 1),
(11, 642, 1),
(13, 642, 1),
(14, 642, 1),
(15, 642, 1),
(16, 642, 1),
(17, 642, 1),
(18, 642, 1),
(19, 642, 1),
(20, 642, 1),
(21, 642, 1),
(22, 642, 1),
(11, 643, 1),
(13, 643, 1),
(14, 643, 1),
(15, 643, 1),
(16, 643, 1),
(17, 643, 1),
(18, 643, 1),
(19, 643, 1),
(20, 643, 1),
(21, 643, 1),
(22, 643, 1),
(11, 644, 1),
(13, 644, 1),
(14, 644, 1),
(15, 644, 1),
(16, 644, 1),
(17, 644, 1),
(18, 644, 1),
(19, 644, 1),
(20, 644, 1),
(21, 644, 1),
(22, 644, 1),
(11, 645, 1),
(13, 645, 1),
(14, 645, 1),
(15, 645, 1),
(16, 645, 1),
(17, 645, 1),
(18, 645, 1),
(19, 645, 1),
(20, 645, 1),
(21, 645, 1),
(22, 645, 1),
(11, 646, 1),
(13, 646, 1),
(14, 646, 1),
(15, 646, 1),
(16, 646, 1),
(17, 646, 1),
(18, 646, 1),
(19, 646, 1),
(20, 646, 1),
(21, 646, 1),
(22, 646, 1),
(11, 647, 2),
(13, 647, 2),
(14, 647, 2),
(15, 647, 2),
(16, 647, 2),
(17, 647, 2),
(18, 647, 2),
(19, 647, 2),
(20, 647, 2),
(21, 647, 2),
(22, 647, 2),
(11, 648, 2),
(13, 648, 2),
(14, 648, 2),
(15, 648, 2),
(16, 648, 2),
(17, 648, 2),
(18, 648, 2),
(19, 648, 2),
(20, 648, 2),
(21, 648, 2),
(22, 648, 2),
(11, 649, 1),
(13, 649, 1),
(14, 649, 1),
(15, 649, 1),
(16, 649, 1),
(17, 649, 1),
(18, 649, 1),
(19, 649, 1),
(20, 649, 1),
(21, 649, 1),
(22, 649, 1),
(11, 650, 1),
(13, 650, 1),
(14, 650, 1),
(15, 650, 1),
(16, 650, 1),
(17, 650, 1),
(18, 650, 1),
(19, 650, 1),
(20, 650, 1),
(21, 650, 1),
(22, 650, 1),
(11, 651, 1),
(13, 651, 1),
(14, 651, 1),
(15, 651, 1),
(16, 651, 1),
(17, 651, 1),
(18, 651, 1),
(19, 651, 1),
(20, 651, 1),
(21, 651, 1),
(22, 651, 1),
(11, 652, 1),
(13, 652, 1),
(14, 652, 1),
(15, 652, 1),
(16, 652, 1),
(17, 652, 1),
(18, 652, 1),
(19, 652, 1),
(20, 652, 1),
(21, 652, 1),
(22, 652, 1),
(11, 653, 1),
(13, 653, 1),
(14, 653, 1),
(15, 653, 1),
(16, 653, 1),
(17, 653, 1),
(18, 653, 1),
(19, 653, 1),
(20, 653, 1),
(21, 653, 1),
(22, 653, 1),
(11, 654, 1),
(13, 654, 1),
(14, 654, 1),
(15, 654, 1),
(16, 654, 1),
(17, 654, 1),
(18, 654, 1),
(19, 654, 1),
(20, 654, 1),
(21, 654, 1),
(22, 654, 1),
(11, 655, 1),
(13, 655, 1),
(14, 655, 1),
(15, 655, 1),
(16, 655, 1),
(17, 655, 1),
(18, 655, 1),
(19, 655, 1),
(20, 655, 1),
(21, 655, 1),
(22, 655, 1),
(11, 656, 1),
(13, 656, 1),
(14, 656, 1),
(15, 656, 1),
(16, 656, 1),
(17, 656, 1),
(18, 656, 1),
(19, 656, 1),
(20, 656, 1),
(21, 656, 1),
(22, 656, 1),
(11, 657, 1),
(13, 657, 1),
(14, 657, 1),
(15, 657, 1),
(16, 657, 1),
(17, 657, 1),
(18, 657, 1),
(19, 657, 1),
(20, 657, 1),
(21, 657, 1),
(22, 657, 1),
(11, 658, 1),
(13, 658, 1),
(14, 658, 1),
(15, 658, 1),
(16, 658, 1),
(17, 658, 1),
(18, 658, 1),
(19, 658, 1),
(20, 658, 1),
(21, 658, 1),
(22, 658, 1),
(11, 659, 1),
(13, 659, 1),
(14, 659, 1),
(15, 659, 1),
(16, 659, 1),
(17, 659, 1),
(18, 659, 1),
(19, 659, 1),
(20, 659, 1),
(21, 659, 1),
(22, 659, 1),
(11, 660, 1),
(13, 660, 1),
(14, 660, 1),
(15, 660, 1),
(16, 660, 1),
(17, 660, 1),
(18, 660, 1),
(19, 660, 1),
(20, 660, 1),
(21, 660, 1),
(22, 660, 1),
(11, 661, 1),
(13, 661, 1),
(14, 661, 1),
(15, 661, 1),
(16, 661, 1),
(17, 661, 1),
(18, 661, 1),
(19, 661, 1),
(20, 661, 1),
(21, 661, 1),
(22, 661, 1),
(11, 662, 2),
(13, 662, 2),
(14, 662, 2),
(15, 662, 2),
(16, 662, 2),
(17, 662, 2),
(18, 662, 2),
(19, 662, 2),
(20, 662, 2),
(21, 662, 2),
(22, 662, 2),
(11, 663, 1),
(13, 663, 1),
(14, 663, 1),
(15, 663, 1),
(16, 663, 1),
(17, 663, 1),
(18, 663, 1),
(19, 663, 1),
(20, 663, 1),
(21, 663, 1),
(22, 663, 1),
(11, 664, 1),
(13, 664, 1),
(14, 664, 1),
(15, 664, 1),
(16, 664, 1),
(17, 664, 1),
(18, 664, 1),
(19, 664, 1),
(20, 664, 1),
(21, 664, 1),
(22, 664, 1),
(11, 665, 1),
(13, 665, 1),
(14, 665, 1),
(15, 665, 1),
(16, 665, 1),
(17, 665, 1),
(18, 665, 1),
(19, 665, 1),
(20, 665, 1),
(21, 665, 1),
(22, 665, 1),
(11, 666, 1),
(13, 666, 1),
(14, 666, 1),
(15, 666, 1),
(16, 666, 1),
(17, 666, 1),
(18, 666, 1),
(19, 666, 1),
(20, 666, 1),
(21, 666, 1),
(22, 666, 1),
(11, 667, 1),
(13, 667, 1),
(14, 667, 1),
(15, 667, 1),
(16, 667, 1),
(17, 667, 1),
(18, 667, 1),
(19, 667, 1),
(20, 667, 1),
(21, 667, 1),
(22, 667, 1),
(11, 668, 1),
(13, 668, 1),
(14, 668, 1),
(15, 668, 1),
(16, 668, 1),
(17, 668, 1),
(18, 668, 1),
(19, 668, 1),
(20, 668, 1),
(21, 668, 1),
(22, 668, 1),
(11, 669, 1),
(13, 669, 1),
(14, 669, 1),
(15, 669, 1),
(16, 669, 1),
(17, 669, 1),
(18, 669, 1),
(19, 669, 1),
(20, 669, 1),
(21, 669, 1),
(22, 669, 1),
(11, 670, 1),
(13, 670, 1),
(14, 670, 1),
(15, 670, 1),
(16, 670, 1),
(17, 670, 1),
(18, 670, 1),
(19, 670, 1),
(20, 670, 1),
(21, 670, 1),
(22, 670, 1),
(11, 671, 1),
(13, 671, 1),
(14, 671, 1),
(15, 671, 1),
(16, 671, 1),
(17, 671, 1),
(18, 671, 1),
(19, 671, 1),
(20, 671, 1),
(21, 671, 1),
(22, 671, 1),
(11, 672, 1),
(13, 672, 1),
(14, 672, 1),
(15, 672, 1),
(16, 672, 1),
(17, 672, 1),
(18, 672, 1),
(19, 672, 1),
(20, 672, 1),
(21, 672, 1),
(22, 672, 1),
(11, 673, 1),
(13, 673, 1),
(14, 673, 1),
(15, 673, 1),
(16, 673, 1),
(17, 673, 1),
(18, 673, 1),
(19, 673, 1),
(20, 673, 1),
(21, 673, 1),
(22, 673, 1),
(13, 674, 6),
(14, 674, 6),
(17, 674, 6),
(14, 675, 10),
(15, 675, 10),
(17, 675, 10),
(18, 675, 10),
(19, 675, 4),
(14, 676, 6),
(15, 676, 6),
(16, 677, 10),
(22, 677, 10),
(16, 678, 10),
(16, 679, 10),
(22, 679, 10),
(11, 680, 6),
(13, 680, 6),
(14, 681, 6),
(15, 681, 6),
(17, 681, 6),
(18, 681, 6),
(19, 681, 6),
(14, 682, 6),
(15, 682, 6),
(16, 683, 6),
(16, 684, 6),
(22, 684, 6),
(17, 685, 6),
(18, 685, 6),
(19, 685, 6),
(20, 685, 6),
(17, 686, 6),
(18, 686, 6),
(20, 686, 6),
(17, 687, 10),
(18, 687, 10),
(20, 687, 10),
(19, 688, 6),
(19, 689, 6),
(19, 690, 6),
(19, 691, 6),
(19, 692, 6),
(20, 693, 6),
(20, 694, 6),
(21, 695, 6),
(22, 695, 6),
(21, 696, 6),
(21, 697, 9),
(21, 698, 6),
(21, 699, 6),
(21, 700, 6),
(22, 700, 6),
(21, 701, 3),
(14, 702, 4),
(17, 702, 4),
(15, 703, 4),
(18, 703, 4),
(19, 704, 4),
(20, 705, 4),
(16, 707, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ps_search_word`
--

CREATE TABLE IF NOT EXISTS `ps_search_word` (
  `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=708 ;

--
-- Dumping data for table `ps_search_word`
--

INSERT INTO `ps_search_word` (`id_word`, `id_shop`, `id_lang`, `word`) VALUES
(515, 1, 1, '114'),
(201, 1, 1, '133'),
(522, 1, 1, '1371'),
(265, 1, 1, '160ghz'),
(9, 1, 1, '16gb'),
(519, 1, 1, '180'),
(273, 1, 1, '180ghz'),
(509, 1, 1, '185khz'),
(511, 1, 1, '1khz'),
(514, 1, 1, '1mw'),
(339, 1, 1, '24ghz'),
(332, 1, 1, '250gb'),
(508, 1, 1, '25hz'),
(342, 1, 1, '2gb'),
(416, 1, 1, '32gb'),
(523, 1, 1, '360'),
(263, 1, 1, '4200'),
(520, 1, 1, '450'),
(133, 1, 1, '500'),
(521, 1, 1, '540'),
(270, 1, 1, '64gb'),
(353, 1, 1, '80211b'),
(241, 1, 1, '80211n'),
(260, 1, 1, '80gb'),
(631, 1, 1, '852364'),
(8, 1, 1, '8gb'),
(524, 1, 1, '914'),
(19, 1, 1, 'about'),
(62, 1, 1, 'accelerometer'),
(403, 1, 1, 'access'),
(427, 1, 1, 'accessories'),
(328, 1, 1, 'accidentally'),
(568, 1, 1, 'accordance'),
(469, 1, 1, 'accurate'),
(500, 1, 1, 'activity'),
(324, 1, 1, 'adapter'),
(400, 1, 1, 'add'),
(479, 1, 1, 'addition'),
(239, 1, 1, 'advantage'),
(15, 1, 1, 'ahead'),
(166, 1, 1, 'air'),
(686, 1, 1, 'alastic'),
(32, 1, 1, 'all'),
(481, 1, 1, 'allows'),
(33, 1, 1, 'aluminum'),
(24, 1, 1, 'amazing'),
(158, 1, 1, 'anodized'),
(170, 1, 1, 'anything'),
(77, 1, 1, 'apple'),
(347, 1, 1, 'applications'),
(573, 1, 1, 'apply'),
(245, 1, 1, 'are'),
(491, 1, 1, 'armature'),
(262, 1, 1, 'ata'),
(131, 1, 1, 'attachment'),
(371, 1, 1, 'attachments'),
(456, 1, 1, 'audio'),
(326, 1, 1, 'automatically'),
(243, 1, 1, 'available'),
(138, 1, 1, 'badge'),
(490, 1, 1, 'balanced'),
(233, 1, 1, 'battery'),
(560, 1, 1, 'bear'),
(155, 1, 1, 'beat'),
(154, 1, 1, 'beauty'),
(198, 1, 1, 'been'),
(13, 1, 1, 'before'),
(421, 1, 1, 'belkin'),
(135, 1, 1, 'belt'),
(83, 1, 1, 'black'),
(80, 1, 1, 'blue'),
(471, 1, 1, 'both'),
(406, 1, 1, 'box'),
(697, 1, 1, 'boys'),
(41, 1, 1, 'brains'),
(561, 1, 1, 'brand'),
(574, 1, 1, 'branded'),
(183, 1, 1, 'breakthrough'),
(141, 1, 1, 'brilliant'),
(391, 1, 1, 'browser'),
(319, 1, 1, 'built'),
(26, 1, 1, 'but'),
(249, 1, 1, 'buying'),
(409, 1, 1, 'cable'),
(495, 1, 1, 'can'),
(537, 1, 1, 'carrying'),
(318, 1, 1, 'case'),
(424, 1, 1, 'chocolate'),
(482, 1, 1, 'choose'),
(153, 1, 1, 'click'),
(126, 1, 1, 'clips'),
(412, 1, 1, 'cloth'),
(148, 1, 1, 'collection'),
(336, 1, 1, 'collections'),
(352, 1, 1, 'color'),
(157, 1, 1, 'colorful'),
(25, 1, 1, 'colors'),
(546, 1, 1, 'com'),
(63, 1, 1, 'comes'),
(483, 1, 1, 'comfortable'),
(502, 1, 1, 'compatible'),
(159, 1, 1, 'complements'),
(218, 1, 1, 'compromises'),
(78, 1, 1, 'computer'),
(185, 1, 1, 'computing'),
(570, 1, 1, 'conditions'),
(501, 1, 1, 'connector'),
(235, 1, 1, 'considered'),
(576, 1, 1, 'contact'),
(179, 1, 1, 'conventions'),
(330, 1, 1, 'cord'),
(267, 1, 1, 'core'),
(196, 1, 1, 'could'),
(70, 1, 1, 'cover'),
(52, 1, 1, 'creates'),
(16, 1, 1, 'curve'),
(14, 1, 1, 'curved'),
(581, 1, 1, 'customer'),
(548, 1, 1, 'customersupport'),
(338, 1, 1, 'data'),
(461, 1, 1, 'definition'),
(463, 1, 1, 'deliver'),
(454, 1, 1, 'delivers'),
(3, 1, 1, 'demo'),
(499, 1, 1, 'depending'),
(627, 1, 1, 'description'),
(5, 1, 1, 'design'),
(74, 1, 1, 'designed'),
(493, 1, 1, 'detachable'),
(195, 1, 1, 'detail'),
(542, 1, 1, 'details'),
(140, 1, 1, 'devotion'),
(373, 1, 1, 'directions'),
(578, 1, 1, 'directly'),
(205, 1, 1, 'display'),
(410, 1, 1, 'dock'),
(572, 1, 1, 'does'),
(172, 1, 1, 'don'),
(681, 1, 1, 'dots'),
(38, 1, 1, 'down'),
(253, 1, 1, 'downloading'),
(621, 1, 1, 'dress'),
(227, 1, 1, 'drive'),
(492, 1, 1, 'driver'),
(268, 1, 1, 'duo'),
(503, 1, 1, 'earphone'),
(407, 1, 1, 'earphones'),
(528, 1, 1, 'earpiece'),
(311, 1, 1, 'easy'),
(552, 1, 1, 'efs'),
(171, 1, 1, 'else'),
(365, 1, 1, 'email'),
(478, 1, 1, 'end'),
(237, 1, 1, 'engineered'),
(451, 1, 1, 'engineers'),
(144, 1, 1, 'entertainment'),
(464, 1, 1, 'ergonomic'),
(575, 1, 1, 'even'),
(194, 1, 1, 'every'),
(234, 1, 1, 'everything'),
(445, 1, 1, 'evolved'),
(370, 1, 1, 'excel'),
(565, 1, 1, 'exclusively'),
(518, 1, 1, 'extension'),
(242, 1, 1, 'fast'),
(346, 1, 1, 'favorite'),
(44, 1, 1, 'feature'),
(6, 1, 1, 'features'),
(142, 1, 1, 'feed'),
(31, 1, 1, 'feel'),
(257, 1, 1, 'files'),
(54, 1, 1, 'finding'),
(192, 1, 1, 'finger'),
(388, 1, 1, 'fingers'),
(484, 1, 1, 'fit'),
(361, 1, 1, 'five'),
(536, 1, 1, 'flange'),
(533, 1, 1, 'flex'),
(480, 1, 1, 'flexible'),
(387, 1, 1, 'flick'),
(693, 1, 1, 'floral'),
(71, 1, 1, 'flow'),
(682, 1, 1, 'flower'),
(527, 1, 1, 'foam'),
(423, 1, 1, 'folio'),
(17, 1, 1, 'for'),
(457, 1, 1, 'free'),
(507, 1, 1, 'frequency'),
(224, 1, 1, 'from'),
(206, 1, 1, 'full'),
(73, 1, 1, 'games'),
(43, 1, 1, 'genius'),
(372, 1, 1, 'get'),
(624, 1, 1, 'gilrs'),
(21, 1, 1, 'give'),
(34, 1, 1, 'glass'),
(382, 1, 1, 'gorgeous'),
(39, 1, 1, 'great'),
(86, 1, 1, 'green'),
(334, 1, 1, 'growing'),
(415, 1, 1, 'guide'),
(136, 1, 1, 'gym'),
(362, 1, 1, 'hands'),
(226, 1, 1, 'hard'),
(187, 1, 1, 'has'),
(229, 1, 1, 'hidden'),
(49, 1, 1, 'highly'),
(476, 1, 1, 'highs'),
(312, 1, 1, 'hit'),
(401, 1, 1, 'home'),
(150, 1, 1, 'how'),
(550, 1, 1, 'htm'),
(364, 1, 1, 'html'),
(465, 1, 1, 'ideal'),
(510, 1, 1, 'impedance'),
(79, 1, 1, 'inc'),
(202, 1, 1, 'inch'),
(174, 1, 1, 'inches'),
(341, 1, 1, 'include'),
(213, 1, 1, 'incomparably'),
(583, 1, 1, 'incorporated'),
(219, 1, 1, 'incredible'),
(191, 1, 1, 'index'),
(377, 1, 1, 'information'),
(182, 1, 1, 'innovations'),
(321, 1, 1, 'innovative'),
(130, 1, 1, 'instant'),
(266, 1, 1, 'intel'),
(50, 1, 1, 'intelligent'),
(156, 1, 1, 'intensely'),
(351, 1, 1, 'interface'),
(389, 1, 1, 'internet'),
(46, 1, 1, 'into'),
(444, 1, 1, 'iphone'),
(1, 1, 1, 'ipod'),
(76, 1, 1, 'ipods'),
(426, 1, 1, 'ipsum'),
(443, 1, 1, 'isolating'),
(315, 1, 1, 'its'),
(143, 1, 1, 'itunes'),
(149, 1, 1, 'jukebox'),
(208, 1, 1, 'keyboard'),
(680, 1, 1, 'krep'),
(259, 1, 1, 'laptops'),
(209, 1, 1, 'large'),
(331, 1, 1, 'larger'),
(422, 1, 1, 'leather'),
(204, 1, 1, 'led'),
(517, 1, 1, 'length'),
(383, 1, 1, 'lets'),
(56, 1, 1, 'library'),
(452, 1, 1, 'lightweight'),
(11, 1, 1, 'like'),
(541, 1, 1, 'limited'),
(684, 1, 1, 'lines'),
(467, 1, 1, 'listening'),
(247, 1, 1, 'living'),
(151, 1, 1, 'load'),
(497, 1, 1, 'longer'),
(40, 1, 1, 'looks'),
(425, 1, 1, 'lorem'),
(173, 1, 1, 'lose'),
(477, 1, 1, 'low'),
(231, 1, 1, 'lower'),
(165, 1, 1, 'macbook'),
(58, 1, 1, 'made'),
(322, 1, 1, 'magsafe'),
(356, 1, 1, 'mail'),
(496, 1, 1, 'make'),
(310, 1, 1, 'makes'),
(577, 1, 1, 'manufacturer'),
(567, 1, 1, 'manufacturers'),
(360, 1, 1, 'maps'),
(335, 1, 1, 'media'),
(531, 1, 1, 'medium'),
(343, 1, 1, 'memory'),
(82, 1, 1, 'metal'),
(551, 1, 1, 'mfr'),
(488, 1, 1, 'microspeaker'),
(462, 1, 1, 'microspeakers'),
(75, 1, 1, 'mind'),
(184, 1, 1, 'mobile'),
(340, 1, 1, 'models'),
(494, 1, 1, 'modular'),
(446, 1, 1, 'monitor'),
(127, 1, 1, 'more'),
(123, 1, 1, 'most'),
(59, 1, 1, 'move'),
(61, 1, 1, 'moves'),
(251, 1, 1, 'movies'),
(210, 1, 1, 'multi'),
(180, 1, 1, 'multiple'),
(66, 1, 1, 'music'),
(139, 1, 1, 'musical'),
(449, 1, 1, 'musicians'),
(562, 1, 1, 'name'),
(2, 1, 1, 'nano'),
(189, 1, 1, 'nearly'),
(12, 1, 1, 'never'),
(4, 1, 1, 'new'),
(23, 1, 1, 'nine'),
(459, 1, 1, 'noise'),
(559, 1, 1, 'not'),
(553, 1, 1, 'note'),
(359, 1, 1, 'notes'),
(7, 1, 1, 'now'),
(221, 1, 1, 'numerous'),
(468, 1, 1, 'offer'),
(512, 1, 1, 'ohms'),
(152, 1, 1, 'one'),
(252, 1, 1, 'online'),
(28, 1, 1, 'only'),
(269, 1, 1, 'optional'),
(84, 1, 1, 'orange'),
(147, 1, 1, 'organized'),
(161, 1, 1, 'original'),
(398, 1, 1, 'out'),
(458, 1, 1, 'outside'),
(176, 1, 1, 'overnight'),
(48, 1, 1, 'own'),
(571, 1, 1, 'packaged'),
(534, 1, 1, 'pair'),
(526, 1, 1, 'pairs'),
(688, 1, 1, 'panel'),
(261, 1, 1, 'parallel'),
(29, 1, 1, 'part'),
(368, 1, 1, 'pdf'),
(683, 1, 1, 'peach'),
(244, 1, 1, 'people'),
(344, 1, 1, 'perfect'),
(450, 1, 1, 'perfected'),
(51, 1, 1, 'personal'),
(547, 1, 1, 'personalaudio'),
(366, 1, 1, 'photos'),
(384, 1, 1, 'pinch'),
(85, 1, 1, 'pink'),
(72, 1, 1, 'play'),
(125, 1, 1, 'player'),
(53, 1, 1, 'playlists'),
(543, 1, 1, 'please'),
(390, 1, 1, 'pocket'),
(411, 1, 1, 'polishing'),
(317, 1, 1, 'polycarbonate'),
(214, 1, 1, 'portable'),
(230, 1, 1, 'ports'),
(487, 1, 1, 'positions'),
(175, 1, 1, 'pounds'),
(323, 1, 1, 'power'),
(193, 1, 1, 'practically'),
(475, 1, 1, 'precision'),
(466, 1, 1, 'premium'),
(448, 1, 1, 'pro'),
(549, 1, 1, 'productreturnsa'),
(554, 1, 1, 'products'),
(232, 1, 1, 'profile'),
(87, 1, 1, 'purple'),
(37, 1, 1, 'put'),
(402, 1, 1, 'quick'),
(455, 1, 1, 'range'),
(378, 1, 1, 'read'),
(374, 1, 1, 'real'),
(236, 1, 1, 'reconsidered'),
(129, 1, 1, 'red'),
(325, 1, 1, 'releases'),
(250, 1, 1, 'renting'),
(380, 1, 1, 'reports'),
(470, 1, 1, 'reproduction'),
(177, 1, 1, 'result'),
(178, 1, 1, 'rethinking'),
(350, 1, 1, 'revolutionary'),
(363, 1, 1, 'rich'),
(313, 1, 1, 'road'),
(20, 1, 1, 'rock'),
(10, 1, 1, 'rocks'),
(264, 1, 1, 'rpm'),
(345, 1, 1, 'running'),
(354, 1, 1, 'safari'),
(217, 1, 1, 'screen'),
(386, 1, 1, 'scroll'),
(441, 1, 1, 'se210'),
(392, 1, 1, 'see'),
(397, 1, 1, 'seen'),
(513, 1, 1, 'sensitivity'),
(582, 1, 1, 'service'),
(563, 1, 1, 'serviced'),
(64, 1, 1, 'shake'),
(255, 1, 1, 'sharing'),
(223, 1, 1, 'shaving'),
(696, 1, 1, 'shirt'),
(626, 1, 1, 'short'),
(498, 1, 1, 'shorter'),
(137, 1, 1, 'shorts'),
(65, 1, 1, 'shuffle'),
(440, 1, 1, 'shure'),
(68, 1, 1, 'sideways'),
(162, 1, 1, 'silver'),
(160, 1, 1, 'simple'),
(489, 1, 1, 'single'),
(404, 1, 1, 'sites'),
(207, 1, 1, 'size'),
(685, 1, 1, 'skirt'),
(134, 1, 1, 'sleeve'),
(529, 1, 1, 'sleeves'),
(225, 1, 1, 'slimmer'),
(530, 1, 1, 'small'),
(348, 1, 1, 'smoothly'),
(532, 1, 1, 'soft'),
(254, 1, 1, 'software'),
(555, 1, 1, 'sold'),
(271, 1, 1, 'solid'),
(327, 1, 1, 'someone'),
(55, 1, 1, 'songs'),
(442, 1, 1, 'sound'),
(473, 1, 1, 'sources'),
(505, 1, 1, 'speaker'),
(504, 1, 1, 'specifications'),
(516, 1, 1, 'spl'),
(413, 1, 1, 'stand'),
(188, 1, 1, 'standard'),
(414, 1, 1, 'start'),
(272, 1, 1, 'state'),
(472, 1, 1, 'stereo'),
(200, 1, 1, 'still'),
(379, 1, 1, 'stock'),
(357, 1, 1, 'stocks'),
(333, 1, 1, 'store'),
(256, 1, 1, 'storing'),
(30, 1, 1, 'story'),
(228, 1, 1, 'strategically'),
(197, 1, 1, 'streamlined'),
(453, 1, 1, 'stylish'),
(186, 1, 1, 'suddenly'),
(349, 1, 1, 'superdrive'),
(145, 1, 1, 'superstore'),
(580, 1, 1, 'support'),
(564, 1, 1, 'supported'),
(238, 1, 1, 'take'),
(399, 1, 1, 'tap'),
(579, 1, 1, 'technical'),
(320, 1, 1, 'technologies'),
(381, 1, 1, 'technology'),
(569, 1, 1, 'terms'),
(447, 1, 1, 'tested'),
(314, 1, 1, 'thanks'),
(27, 1, 1, 'that'),
(566, 1, 1, 'their'),
(395, 1, 1, 'they'),
(190, 1, 1, 'thin'),
(220, 1, 1, 'thinness'),
(557, 1, 1, 'this'),
(18, 1, 1, 'those'),
(525, 1, 1, 'three'),
(556, 1, 1, 'through'),
(375, 1, 1, 'time'),
(57, 1, 1, 'together'),
(42, 1, 1, 'too'),
(211, 1, 1, 'touch'),
(316, 1, 1, 'tough'),
(212, 1, 1, 'trackpad'),
(376, 1, 1, 'traffic'),
(535, 1, 1, 'triple'),
(329, 1, 1, 'trips'),
(246, 1, 1, 'truly'),
(67, 1, 1, 'turn'),
(45, 1, 1, 'turns'),
(539, 1, 1, 'two'),
(506, 1, 1, 'type'),
(474, 1, 1, 'ultimate'),
(146, 1, 1, 'ultra'),
(168, 1, 1, 'ultraportable'),
(167, 1, 1, 'ultrathin'),
(169, 1, 1, 'unlike'),
(248, 1, 1, 'untethered'),
(408, 1, 1, 'usb'),
(460, 1, 1, 'using'),
(216, 1, 1, 'usual'),
(337, 1, 1, 'valuable'),
(485, 1, 1, 'variety'),
(128, 1, 1, 'vibrant'),
(69, 1, 1, 'view'),
(544, 1, 1, 'visit'),
(36, 1, 1, 'want'),
(538, 1, 1, 'warranty'),
(394, 1, 1, 'way'),
(132, 1, 1, 'wear'),
(124, 1, 1, 'wearable'),
(486, 1, 1, 'wearing'),
(358, 1, 1, 'weather'),
(258, 1, 1, 'web'),
(558, 1, 1, 'website'),
(393, 1, 1, 'websites'),
(222, 1, 1, 'weight'),
(367, 1, 1, 'well'),
(396, 1, 1, 'were'),
(405, 1, 1, 'what'),
(240, 1, 1, 'which'),
(695, 1, 1, 'white'),
(203, 1, 1, 'widescreen'),
(181, 1, 1, 'wireless'),
(60, 1, 1, 'with'),
(215, 1, 1, 'without'),
(35, 1, 1, 'won'),
(369, 1, 1, 'word'),
(122, 1, 1, 'world'),
(545, 1, 1, 'www'),
(540, 1, 1, 'year'),
(81, 1, 1, 'yellow'),
(199, 1, 1, 'yet'),
(22, 1, 1, 'you'),
(47, 1, 1, 'your'),
(355, 1, 1, 'youtube'),
(385, 1, 1, 'zoom'),
(647, 1, 3, '100'),
(301, 1, 3, '160ghz'),
(113, 1, 3, '16gb'),
(309, 1, 3, '180ghz'),
(420, 1, 3, '32gb'),
(299, 1, 3, '4200'),
(306, 1, 3, '64gb'),
(295, 1, 3, '80gb'),
(633, 1, 3, '852364'),
(114, 1, 3, '8gb'),
(439, 1, 3, 'accessories'),
(293, 1, 3, 'air'),
(597, 1, 3, 'and'),
(109, 1, 3, 'apple'),
(297, 1, 3, 'ata'),
(434, 1, 3, 'belkin'),
(117, 1, 3, 'black'),
(112, 1, 3, 'blue'),
(438, 1, 3, 'chocolate'),
(110, 1, 3, 'computer'),
(303, 1, 3, 'core'),
(107, 1, 3, 'demo'),
(298, 1, 3, 'drive'),
(304, 1, 3, 'duo'),
(596, 1, 3, 'earphones'),
(436, 1, 3, 'folio'),
(437, 1, 3, 'for'),
(120, 1, 3, 'green'),
(111, 1, 3, 'inc'),
(599, 1, 3, 'incorporated'),
(302, 1, 3, 'intel'),
(598, 1, 3, 'iphone'),
(105, 1, 3, 'ipod'),
(108, 1, 3, 'ipods'),
(595, 1, 3, 'isolating'),
(294, 1, 3, 'laptops'),
(435, 1, 3, 'leather'),
(292, 1, 3, 'macbook'),
(116, 1, 3, 'metal'),
(106, 1, 3, 'nano'),
(305, 1, 3, 'optional'),
(118, 1, 3, 'orange'),
(296, 1, 3, 'parallel'),
(119, 1, 3, 'pink'),
(121, 1, 3, 'purple'),
(300, 1, 3, 'rpm'),
(593, 1, 3, 'se210'),
(164, 1, 3, 'shuffle'),
(592, 1, 3, 'shure'),
(307, 1, 3, 'solid'),
(594, 1, 3, 'sound'),
(308, 1, 3, 'state'),
(419, 1, 3, 'touch'),
(115, 1, 3, 'yellow'),
(702, 1, 3, 'אדום'),
(674, 1, 3, 'אדומה'),
(652, 1, 3, 'אותו'),
(678, 1, 3, 'אפרסק'),
(690, 1, 3, 'ארוכה'),
(645, 1, 3, 'בגב'),
(692, 1, 3, 'בהירה'),
(672, 1, 3, 'בחום'),
(639, 1, 3, 'בחלק'),
(661, 1, 3, 'במכונה'),
(625, 1, 3, 'בנות'),
(701, 1, 3, 'בנים'),
(636, 1, 3, 'בצבע'),
(669, 1, 3, 'בצל'),
(670, 1, 3, 'גיהוץ'),
(655, 1, 3, 'הבד'),
(656, 1, 3, 'הוראות'),
(671, 1, 3, 'הפוך'),
(654, 1, 3, 'הרכב'),
(665, 1, 3, 'השריה'),
(640, 1, 3, 'התחתון'),
(664, 1, 3, 'ובנפרד'),
(643, 1, 3, 'וחגורה'),
(660, 1, 3, 'ולכבס'),
(704, 1, 3, 'ורוד'),
(691, 1, 3, 'ורודה'),
(635, 1, 3, 'חגיגית'),
(698, 1, 3, 'חולצת'),
(658, 1, 3, 'טיפול'),
(668, 1, 3, 'ייבוש'),
(653, 1, 3, 'כבולט'),
(657, 1, 3, 'כביסה'),
(648, 1, 3, 'כותנה'),
(703, 1, 3, 'כחול'),
(632, 1, 3, 'כחולה'),
(679, 1, 3, 'כסף'),
(707, 1, 3, 'כתום'),
(677, 1, 3, 'כתפיות'),
(637, 1, 3, 'לבן'),
(700, 1, 3, 'לבנה'),
(659, 1, 3, 'להפוך'),
(662, 1, 3, 'ללא'),
(644, 1, 3, 'לקשירה'),
(667, 1, 3, 'מוגבלת'),
(706, 1, 3, 'מיסתובבת'),
(663, 1, 3, 'מלבין'),
(687, 1, 3, 'מסתובבת'),
(642, 1, 3, 'מעוטר'),
(650, 1, 3, 'נושא'),
(673, 1, 3, 'נמוך'),
(675, 1, 3, 'נקודות'),
(666, 1, 3, 'סחיטה'),
(699, 1, 3, 'סיני'),
(649, 1, 3, 'עוד'),
(646, 1, 3, 'עשוייה'),
(676, 1, 3, 'פרח'),
(694, 1, 3, 'פרחונית'),
(705, 1, 3, 'פרחים'),
(638, 1, 3, 'צביעה'),
(641, 1, 3, 'צווארון'),
(689, 1, 3, 'קומות'),
(629, 1, 3, 'קרף'),
(634, 1, 3, 'שמלה'),
(628, 1, 3, 'שמלת'),
(651, 1, 3, 'שנרשום');

-- --------------------------------------------------------

--
-- Table structure for table `ps_sekeyword`
--

CREATE TABLE IF NOT EXISTS `ps_sekeyword` (
  `id_sekeyword` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_sekeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_shop`
--

CREATE TABLE IF NOT EXISTS `ps_shop` (
  `id_shop` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `id_category` int(11) unsigned NOT NULL DEFAULT '1',
  `id_theme` int(1) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_category` (`id_category`),
  KEY `id_theme` (`id_theme`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_shop`
--

INSERT INTO `ps_shop` (`id_shop`, `id_shop_group`, `name`, `id_category`, `id_theme`, `active`, `deleted`) VALUES
(1, 1, 'Shokolada', 2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_shop_group`
--

CREATE TABLE IF NOT EXISTS `ps_shop_group` (
  `id_shop_group` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_shop_group`
--

INSERT INTO `ps_shop_group` (`id_shop_group`, `name`, `share_customer`, `share_order`, `share_stock`, `active`, `deleted`) VALUES
(1, 'Default', 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_shop_url`
--

CREATE TABLE IF NOT EXISTS `ps_shop_url` (
  `id_shop_url` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(64) NOT NULL,
  `virtual_uri` varchar(64) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_shop_url`),
  UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`),
  UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_shop_url`
--

INSERT INTO `ps_shop_url` (`id_shop_url`, `id_shop`, `domain`, `domain_ssl`, `physical_uri`, `virtual_uri`, `main`, `active`) VALUES
(1, 1, 'localhost', 'localhost', '/1561/prestashop/', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price` (
  `id_specific_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  `id_cart` int(11) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(11) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price`),
  KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`),
  KEY `from_quantity` (`from_quantity`),
  KEY `id_specific_price_rule` (`id_specific_price_rule`),
  KEY `id_cart` (`id_cart`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_specific_price`
--

INSERT INTO `ps_specific_price` (`id_specific_price`, `id_specific_price_rule`, `id_cart`, `id_product`, `id_shop`, `id_shop_group`, `id_currency`, `id_country`, `id_group`, `id_customer`, `id_product_attribute`, `price`, `from_quantity`, `reduction`, `reduction_type`, `from`, `to`) VALUES
(1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '-1.000000', 1, '0.050000', 'percentage', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price_priority`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price_priority` (
  `id_specific_price_priority` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `priority` varchar(80) NOT NULL,
  PRIMARY KEY (`id_specific_price_priority`,`id_product`),
  UNIQUE KEY `id_product` (`id_product`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `ps_specific_price_priority`
--

INSERT INTO `ps_specific_price_priority` (`id_specific_price_priority`, `id_product`, `priority`) VALUES
(1, 10, 'id_shop;id_currency;id_country;id_group'),
(3, 11, 'id_shop;id_currency;id_country;id_group'),
(5, 12, 'id_shop;id_currency;id_country;id_group'),
(14, 13, 'id_shop;id_currency;id_country;id_group'),
(15, 14, 'id_shop;id_currency;id_country;id_group'),
(21, 15, 'id_shop;id_currency;id_country;id_group'),
(22, 16, 'id_shop;id_currency;id_country;id_group'),
(33, 17, 'id_shop;id_currency;id_country;id_group'),
(37, 18, 'id_shop;id_currency;id_country;id_group'),
(40, 19, 'id_shop;id_currency;id_country;id_group'),
(42, 20, 'id_shop;id_currency;id_country;id_group'),
(46, 21, 'id_shop;id_currency;id_country;id_group'),
(51, 22, 'id_shop;id_currency;id_country;id_group');

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price_rule`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price_rule` (
  `id_specific_price_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price_rule`),
  KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price_rule_condition`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price_rule_condition` (
  `id_specific_price_rule_condition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition`),
  KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_specific_price_rule_condition_group`
--

CREATE TABLE IF NOT EXISTS `ps_specific_price_rule_condition_group` (
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_state`
--

CREATE TABLE IF NOT EXISTS `ps_state` (
  `id_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `name` (`name`),
  KEY `id_zone` (`id_zone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=313 ;

--
-- Dumping data for table `ps_state`
--

INSERT INTO `ps_state` (`id_state`, `id_country`, `id_zone`, `name`, `iso_code`, `tax_behavior`, `active`) VALUES
(1, 21, 2, 'Alabama', 'AL', 0, 1),
(2, 21, 2, 'Alaska', 'AK', 0, 1),
(3, 21, 2, 'Arizona', 'AZ', 0, 1),
(4, 21, 2, 'Arkansas', 'AR', 0, 1),
(5, 21, 2, 'California', 'CA', 0, 1),
(6, 21, 2, 'Colorado', 'CO', 0, 1),
(7, 21, 2, 'Connecticut', 'CT', 0, 1),
(8, 21, 2, 'Delaware', 'DE', 0, 1),
(9, 21, 2, 'Florida', 'FL', 0, 1),
(10, 21, 2, 'Georgia', 'GA', 0, 1),
(11, 21, 2, 'Hawaii', 'HI', 0, 1),
(12, 21, 2, 'Idaho', 'ID', 0, 1),
(13, 21, 2, 'Illinois', 'IL', 0, 1),
(14, 21, 2, 'Indiana', 'IN', 0, 1),
(15, 21, 2, 'Iowa', 'IA', 0, 1),
(16, 21, 2, 'Kansas', 'KS', 0, 1),
(17, 21, 2, 'Kentucky', 'KY', 0, 1),
(18, 21, 2, 'Louisiana', 'LA', 0, 1),
(19, 21, 2, 'Maine', 'ME', 0, 1),
(20, 21, 2, 'Maryland', 'MD', 0, 1),
(21, 21, 2, 'Massachusetts', 'MA', 0, 1),
(22, 21, 2, 'Michigan', 'MI', 0, 1),
(23, 21, 2, 'Minnesota', 'MN', 0, 1),
(24, 21, 2, 'Mississippi', 'MS', 0, 1),
(25, 21, 2, 'Missouri', 'MO', 0, 1),
(26, 21, 2, 'Montana', 'MT', 0, 1),
(27, 21, 2, 'Nebraska', 'NE', 0, 1),
(28, 21, 2, 'Nevada', 'NV', 0, 1),
(29, 21, 2, 'New Hampshire', 'NH', 0, 1),
(30, 21, 2, 'New Jersey', 'NJ', 0, 1),
(31, 21, 2, 'New Mexico', 'NM', 0, 1),
(32, 21, 2, 'New York', 'NY', 0, 1),
(33, 21, 2, 'North Carolina', 'NC', 0, 1),
(34, 21, 2, 'North Dakota', 'ND', 0, 1),
(35, 21, 2, 'Ohio', 'OH', 0, 1),
(36, 21, 2, 'Oklahoma', 'OK', 0, 1),
(37, 21, 2, 'Oregon', 'OR', 0, 1),
(38, 21, 2, 'Pennsylvania', 'PA', 0, 1),
(39, 21, 2, 'Rhode Island', 'RI', 0, 1),
(40, 21, 2, 'South Carolina', 'SC', 0, 1),
(41, 21, 2, 'South Dakota', 'SD', 0, 1),
(42, 21, 2, 'Tennessee', 'TN', 0, 1),
(43, 21, 2, 'Texas', 'TX', 0, 1),
(44, 21, 2, 'Utah', 'UT', 0, 1),
(45, 21, 2, 'Vermont', 'VT', 0, 1),
(46, 21, 2, 'Virginia', 'VA', 0, 1),
(47, 21, 2, 'Washington', 'WA', 0, 1),
(48, 21, 2, 'West Virginia', 'WV', 0, 1),
(49, 21, 2, 'Wisconsin', 'WI', 0, 1),
(50, 21, 2, 'Wyoming', 'WY', 0, 1),
(51, 21, 2, 'Puerto Rico', 'PR', 0, 1),
(52, 21, 2, 'US Virgin Islands', 'VI', 0, 1),
(53, 21, 2, 'District of Columbia', 'DC', 0, 1),
(54, 145, 2, 'Aguascalientes', 'AGS', 0, 1),
(55, 145, 2, 'Baja California', 'BCN', 0, 1),
(56, 145, 2, 'Baja California Sur', 'BCS', 0, 1),
(57, 145, 2, 'Campeche', 'CAM', 0, 1),
(58, 145, 2, 'Chiapas', 'CHP', 0, 1),
(59, 145, 2, 'Chihuahua', 'CHH', 0, 1),
(60, 145, 2, 'Coahuila', 'COA', 0, 1),
(61, 145, 2, 'Colima', 'COL', 0, 1),
(62, 145, 2, 'Distrito Federal', 'DIF', 0, 1),
(63, 145, 2, 'Durango', 'DUR', 0, 1),
(64, 145, 2, 'Guanajuato', 'GUA', 0, 1),
(65, 145, 2, 'Guerrero', 'GRO', 0, 1),
(66, 145, 2, 'Hidalgo', 'HID', 0, 1),
(67, 145, 2, 'Jalisco', 'JAL', 0, 1),
(68, 145, 2, 'Estado de México', 'MEX', 0, 1),
(69, 145, 2, 'Michoacán', 'MIC', 0, 1),
(70, 145, 2, 'Morelos', 'MOR', 0, 1),
(71, 145, 2, 'Nayarit', 'NAY', 0, 1),
(72, 145, 2, 'Nuevo León', 'NLE', 0, 1),
(73, 145, 2, 'Oaxaca', 'OAX', 0, 1),
(74, 145, 2, 'Puebla', 'PUE', 0, 1),
(75, 145, 2, 'Querétaro', 'QUE', 0, 1),
(76, 145, 2, 'Quintana Roo', 'ROO', 0, 1),
(77, 145, 2, 'San Luis Potosí', 'SLP', 0, 1),
(78, 145, 2, 'Sinaloa', 'SIN', 0, 1),
(79, 145, 2, 'Sonora', 'SON', 0, 1),
(80, 145, 2, 'Tabasco', 'TAB', 0, 1),
(81, 145, 2, 'Tamaulipas', 'TAM', 0, 1),
(82, 145, 2, 'Tlaxcala', 'TLA', 0, 1),
(83, 145, 2, 'Veracruz', 'VER', 0, 1),
(84, 145, 2, 'Yucatán', 'YUC', 0, 1),
(85, 145, 2, 'Zacatecas', 'ZAC', 0, 1),
(86, 4, 2, 'Ontario', 'ON', 0, 1),
(87, 4, 2, 'Quebec', 'QC', 0, 1),
(88, 4, 2, 'British Columbia', 'BC', 0, 1),
(89, 4, 2, 'Alberta', 'AB', 0, 1),
(90, 4, 2, 'Manitoba', 'MB', 0, 1),
(91, 4, 2, 'Saskatchewan', 'SK', 0, 1),
(92, 4, 2, 'Nova Scotia', 'NS', 0, 1),
(93, 4, 2, 'New Brunswick', 'NB', 0, 1),
(94, 4, 2, 'Newfoundland and Labrador', 'NL', 0, 1),
(95, 4, 2, 'Prince Edward Island', 'PE', 0, 1),
(96, 4, 2, 'Northwest Territories', 'NT', 0, 1),
(97, 4, 2, 'Yukon', 'YT', 0, 1),
(98, 4, 2, 'Nunavut', 'NU', 0, 1),
(99, 44, 6, 'Buenos Aires', 'B', 0, 1),
(100, 44, 6, 'Catamarca', 'K', 0, 1),
(101, 44, 6, 'Chaco', 'H', 0, 1),
(102, 44, 6, 'Chubut', 'U', 0, 1),
(103, 44, 6, 'Ciudad de Buenos Aires', 'C', 0, 1),
(104, 44, 6, 'Córdoba', 'X', 0, 1),
(105, 44, 6, 'Corrientes', 'W', 0, 1),
(106, 44, 6, 'Entre Ríos', 'E', 0, 1),
(107, 44, 6, 'Formosa', 'P', 0, 1),
(108, 44, 6, 'Jujuy', 'Y', 0, 1),
(109, 44, 6, 'La Pampa', 'L', 0, 1),
(110, 44, 6, 'La Rioja', 'F', 0, 1),
(111, 44, 6, 'Mendoza', 'M', 0, 1),
(112, 44, 6, 'Misiones', 'N', 0, 1),
(113, 44, 6, 'Neuquén', 'Q', 0, 1),
(114, 44, 6, 'Río Negro', 'R', 0, 1),
(115, 44, 6, 'Salta', 'A', 0, 1),
(116, 44, 6, 'San Juan', 'J', 0, 1),
(117, 44, 6, 'San Luis', 'D', 0, 1),
(118, 44, 6, 'Santa Cruz', 'Z', 0, 1),
(119, 44, 6, 'Santa Fe', 'S', 0, 1),
(120, 44, 6, 'Santiago del Estero', 'G', 0, 1),
(121, 44, 6, 'Tierra del Fuego', 'V', 0, 1),
(122, 44, 6, 'Tucumán', 'T', 0, 1),
(123, 10, 1, 'Agrigento', 'AG', 0, 1),
(124, 10, 1, 'Alessandria', 'AL', 0, 1),
(125, 10, 1, 'Ancona', 'AN', 0, 1),
(126, 10, 1, 'Aosta', 'AO', 0, 1),
(127, 10, 1, 'Arezzo', 'AR', 0, 1),
(128, 10, 1, 'Ascoli Piceno', 'AP', 0, 1),
(129, 10, 1, 'Asti', 'AT', 0, 1),
(130, 10, 1, 'Avellino', 'AV', 0, 1),
(131, 10, 1, 'Bari', 'BA', 0, 1),
(132, 10, 1, 'Barletta-Andria-Trani', 'BT', 0, 1),
(133, 10, 1, 'Belluno', 'BL', 0, 1),
(134, 10, 1, 'Benevento', 'BN', 0, 1),
(135, 10, 1, 'Bergamo', 'BG', 0, 1),
(136, 10, 1, 'Biella', 'BI', 0, 1),
(137, 10, 1, 'Bologna', 'BO', 0, 1),
(138, 10, 1, 'Bolzano', 'BZ', 0, 1),
(139, 10, 1, 'Brescia', 'BS', 0, 1),
(140, 10, 1, 'Brindisi', 'BR', 0, 1),
(141, 10, 1, 'Cagliari', 'CA', 0, 1),
(142, 10, 1, 'Caltanissetta', 'CL', 0, 1),
(143, 10, 1, 'Campobasso', 'CB', 0, 1),
(144, 10, 1, 'Carbonia-Iglesias', 'CI', 0, 1),
(145, 10, 1, 'Caserta', 'CE', 0, 1),
(146, 10, 1, 'Catania', 'CT', 0, 1),
(147, 10, 1, 'Catanzaro', 'CZ', 0, 1),
(148, 10, 1, 'Chieti', 'CH', 0, 1),
(149, 10, 1, 'Como', 'CO', 0, 1),
(150, 10, 1, 'Cosenza', 'CS', 0, 1),
(151, 10, 1, 'Cremona', 'CR', 0, 1),
(152, 10, 1, 'Crotone', 'KR', 0, 1),
(153, 10, 1, 'Cuneo', 'CN', 0, 1),
(154, 10, 1, 'Enna', 'EN', 0, 1),
(155, 10, 1, 'Fermo', 'FM', 0, 1),
(156, 10, 1, 'Ferrara', 'FE', 0, 1),
(157, 10, 1, 'Firenze', 'FI', 0, 1),
(158, 10, 1, 'Foggia', 'FG', 0, 1),
(159, 10, 1, 'Forlì-Cesena', 'FC', 0, 1),
(160, 10, 1, 'Frosinone', 'FR', 0, 1),
(161, 10, 1, 'Genova', 'GE', 0, 1),
(162, 10, 1, 'Gorizia', 'GO', 0, 1),
(163, 10, 1, 'Grosseto', 'GR', 0, 1),
(164, 10, 1, 'Imperia', 'IM', 0, 1),
(165, 10, 1, 'Isernia', 'IS', 0, 1),
(166, 10, 1, 'L''Aquila', 'AQ', 0, 1),
(167, 10, 1, 'La Spezia', 'SP', 0, 1),
(168, 10, 1, 'Latina', 'LT', 0, 1),
(169, 10, 1, 'Lecce', 'LE', 0, 1),
(170, 10, 1, 'Lecco', 'LC', 0, 1),
(171, 10, 1, 'Livorno', 'LI', 0, 1),
(172, 10, 1, 'Lodi', 'LO', 0, 1),
(173, 10, 1, 'Lucca', 'LU', 0, 1),
(174, 10, 1, 'Macerata', 'MC', 0, 1),
(175, 10, 1, 'Mantova', 'MN', 0, 1),
(176, 10, 1, 'Massa', 'MS', 0, 1),
(177, 10, 1, 'Matera', 'MT', 0, 1),
(178, 10, 1, 'Medio Campidano', 'VS', 0, 1),
(179, 10, 1, 'Messina', 'ME', 0, 1),
(180, 10, 1, 'Milano', 'MI', 0, 1),
(181, 10, 1, 'Modena', 'MO', 0, 1),
(182, 10, 1, 'Monza e della Brianza', 'MB', 0, 1),
(183, 10, 1, 'Napoli', 'NA', 0, 1),
(184, 10, 1, 'Novara', 'NO', 0, 1),
(185, 10, 1, 'Nuoro', 'NU', 0, 1),
(186, 10, 1, 'Ogliastra', 'OG', 0, 1),
(187, 10, 1, 'Olbia-Tempio', 'OT', 0, 1),
(188, 10, 1, 'Oristano', 'OR', 0, 1),
(189, 10, 1, 'Padova', 'PD', 0, 1),
(190, 10, 1, 'Palermo', 'PA', 0, 1),
(191, 10, 1, 'Parma', 'PR', 0, 1),
(192, 10, 1, 'Pavia', 'PV', 0, 1),
(193, 10, 1, 'Perugia', 'PG', 0, 1),
(194, 10, 1, 'Pesaro-Urbino', 'PU', 0, 1),
(195, 10, 1, 'Pescara', 'PE', 0, 1),
(196, 10, 1, 'Piacenza', 'PC', 0, 1),
(197, 10, 1, 'Pisa', 'PI', 0, 1),
(198, 10, 1, 'Pistoia', 'PT', 0, 1),
(199, 10, 1, 'Pordenone', 'PN', 0, 1),
(200, 10, 1, 'Potenza', 'PZ', 0, 1),
(201, 10, 1, 'Prato', 'PO', 0, 1),
(202, 10, 1, 'Ragusa', 'RG', 0, 1),
(203, 10, 1, 'Ravenna', 'RA', 0, 1),
(204, 10, 1, 'Reggio Calabria', 'RC', 0, 1),
(205, 10, 1, 'Reggio Emilia', 'RE', 0, 1),
(206, 10, 1, 'Rieti', 'RI', 0, 1),
(207, 10, 1, 'Rimini', 'RN', 0, 1),
(208, 10, 1, 'Roma', 'RM', 0, 1),
(209, 10, 1, 'Rovigo', 'RO', 0, 1),
(210, 10, 1, 'Salerno', 'SA', 0, 1),
(211, 10, 1, 'Sassari', 'SS', 0, 1),
(212, 10, 1, 'Savona', 'SV', 0, 1),
(213, 10, 1, 'Siena', 'SI', 0, 1),
(214, 10, 1, 'Siracusa', 'SR', 0, 1),
(215, 10, 1, 'Sondrio', 'SO', 0, 1),
(216, 10, 1, 'Taranto', 'TA', 0, 1),
(217, 10, 1, 'Teramo', 'TE', 0, 1),
(218, 10, 1, 'Terni', 'TR', 0, 1),
(219, 10, 1, 'Torino', 'TO', 0, 1),
(220, 10, 1, 'Trapani', 'TP', 0, 1),
(221, 10, 1, 'Trento', 'TN', 0, 1),
(222, 10, 1, 'Treviso', 'TV', 0, 1),
(223, 10, 1, 'Trieste', 'TS', 0, 1),
(224, 10, 1, 'Udine', 'UD', 0, 1),
(225, 10, 1, 'Varese', 'VA', 0, 1),
(226, 10, 1, 'Venezia', 'VE', 0, 1),
(227, 10, 1, 'Verbano-Cusio-Ossola', 'VB', 0, 1),
(228, 10, 1, 'Vercelli', 'VC', 0, 1),
(229, 10, 1, 'Verona', 'VR', 0, 1),
(230, 10, 1, 'Vibo Valentia', 'VV', 0, 1),
(231, 10, 1, 'Vicenza', 'VI', 0, 1),
(232, 10, 1, 'Viterbo', 'VT', 0, 1),
(233, 111, 3, 'Aceh', 'AC', 0, 1),
(234, 111, 3, 'Bali', 'BA', 0, 1),
(235, 111, 3, 'Bangka', 'BB', 0, 1),
(236, 111, 3, 'Banten', 'BT', 0, 1),
(237, 111, 3, 'Bengkulu', 'BE', 0, 1),
(238, 111, 3, 'Central Java', 'JT', 0, 1),
(239, 111, 3, 'Central Kalimantan', 'KT', 0, 1),
(240, 111, 3, 'Central Sulawesi', 'ST', 0, 1),
(241, 111, 3, 'Coat of arms of East Java', 'JI', 0, 1),
(242, 111, 3, 'East kalimantan', 'KI', 0, 1),
(243, 111, 3, 'East Nusa Tenggara', 'NT', 0, 1),
(244, 111, 3, 'Lambang propinsi', 'GO', 0, 1),
(245, 111, 3, 'Jakarta', 'JK', 0, 1),
(246, 111, 3, 'Jambi', 'JA', 0, 1),
(247, 111, 3, 'Lampung', 'LA', 0, 1),
(248, 111, 3, 'Maluku', 'MA', 0, 1),
(249, 111, 3, 'North Maluku', 'MU', 0, 1),
(250, 111, 3, 'North Sulawesi', 'SA', 0, 1),
(251, 111, 3, 'North Sumatra', 'SU', 0, 1),
(252, 111, 3, 'Papua', 'PA', 0, 1),
(253, 111, 3, 'Riau', 'RI', 0, 1),
(254, 111, 3, 'Lambang Riau', 'KR', 0, 1),
(255, 111, 3, 'Southeast Sulawesi', 'SG', 0, 1),
(256, 111, 3, 'South Kalimantan', 'KS', 0, 1),
(257, 111, 3, 'South Sulawesi', 'SN', 0, 1),
(258, 111, 3, 'South Sumatra', 'SS', 0, 1),
(259, 111, 3, 'West Java', 'JB', 0, 1),
(260, 111, 3, 'West Kalimantan', 'KB', 0, 1),
(261, 111, 3, 'West Nusa Tenggara', 'NB', 0, 1),
(262, 111, 3, 'Lambang Provinsi Papua Barat', 'PB', 0, 1),
(263, 111, 3, 'West Sulawesi', 'SR', 0, 1),
(264, 111, 3, 'West Sumatra', 'SB', 0, 1),
(265, 111, 3, 'Yogyakarta', 'YO', 0, 1),
(266, 11, 3, 'Aichi', '23', 0, 1),
(267, 11, 3, 'Akita', '05', 0, 1),
(268, 11, 3, 'Aomori', '02', 0, 1),
(269, 11, 3, 'Chiba', '12', 0, 1),
(270, 11, 3, 'Ehime', '38', 0, 1),
(271, 11, 3, 'Fukui', '18', 0, 1),
(272, 11, 3, 'Fukuoka', '40', 0, 1),
(273, 11, 3, 'Fukushima', '07', 0, 1),
(274, 11, 3, 'Gifu', '21', 0, 1),
(275, 11, 3, 'Gunma', '10', 0, 1),
(276, 11, 3, 'Hiroshima', '34', 0, 1),
(277, 11, 3, 'Hokkaido', '01', 0, 1),
(278, 11, 3, 'Hyogo', '28', 0, 1),
(279, 11, 3, 'Ibaraki', '08', 0, 1),
(280, 11, 3, 'Ishikawa', '17', 0, 1),
(281, 11, 3, 'Iwate', '03', 0, 1),
(282, 11, 3, 'Kagawa', '37', 0, 1),
(283, 11, 3, 'Kagoshima', '46', 0, 1),
(284, 11, 3, 'Kanagawa', '14', 0, 1),
(285, 11, 3, 'Kochi', '39', 0, 1),
(286, 11, 3, 'Kumamoto', '43', 0, 1),
(287, 11, 3, 'Kyoto', '26', 0, 1),
(288, 11, 3, 'Mie', '24', 0, 1),
(289, 11, 3, 'Miyagi', '04', 0, 1),
(290, 11, 3, 'Miyazaki', '45', 0, 1),
(291, 11, 3, 'Nagano', '20', 0, 1),
(292, 11, 3, 'Nagasaki', '42', 0, 1),
(293, 11, 3, 'Nara', '29', 0, 1),
(294, 11, 3, 'Niigata', '15', 0, 1),
(295, 11, 3, 'Oita', '44', 0, 1),
(296, 11, 3, 'Okayama', '33', 0, 1),
(297, 11, 3, 'Okinawa', '47', 0, 1),
(298, 11, 3, 'Osaka', '27', 0, 1),
(299, 11, 3, 'Saga', '41', 0, 1),
(300, 11, 3, 'Saitama', '11', 0, 1),
(301, 11, 3, 'Shiga', '25', 0, 1),
(302, 11, 3, 'Shimane', '32', 0, 1),
(303, 11, 3, 'Shizuoka', '22', 0, 1),
(304, 11, 3, 'Tochigi', '09', 0, 1),
(305, 11, 3, 'Tokushima', '36', 0, 1),
(306, 11, 3, 'Tokyo', '13', 0, 1),
(307, 11, 3, 'Tottori', '31', 0, 1),
(308, 11, 3, 'Toyama', '16', 0, 1),
(309, 11, 3, 'Wakayama', '30', 0, 1),
(310, 11, 3, 'Yamagata', '06', 0, 1),
(311, 11, 3, 'Yamaguchi', '35', 0, 1),
(312, 11, 3, 'Yamanashi', '19', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_statssearch`
--

CREATE TABLE IF NOT EXISTS `ps_statssearch` (
  `id_statssearch` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_statssearch`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ps_statssearch`
--

INSERT INTO `ps_statssearch` (`id_statssearch`, `id_shop`, `id_shop_group`, `keywords`, `results`, `date_add`) VALUES
(1, 1, 1, 'description', 1, '2014-01-12 01:07:30'),
(2, 1, 1, 'description', 1, '2014-01-12 01:07:33'),
(3, 1, 1, 'קרפ', 0, '2014-01-15 00:58:13'),
(4, 1, 1, 'בנות', 10, '2014-01-15 18:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock`
--

CREATE TABLE IF NOT EXISTS `ps_stock` (
  `id_stock` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int(11) unsigned NOT NULL,
  `usable_quantity` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_stock`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock_available`
--

CREATE TABLE IF NOT EXISTS `ps_stock_available` (
  `id_stock_available` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `out_of_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_available`),
  UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`,`id_shop_group`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `ps_stock_available`
--

INSERT INTO `ps_stock_available` (`id_stock_available`, `id_product`, `id_product_attribute`, `id_shop`, `id_shop_group`, `quantity`, `depends_on_stock`, `out_of_stock`) VALUES
(1, 1, 0, 1, 0, 160, 0, 2),
(2, 2, 0, 1, 0, 120, 0, 2),
(3, 3, 0, 1, 0, 400, 0, 2),
(4, 4, 0, 1, 0, 75, 0, 2),
(5, 5, 0, 1, 0, 120, 0, 2),
(6, 6, 0, 1, 0, 25, 0, 2),
(7, 7, 0, 1, 0, 15, 0, 2),
(8, 2, 1, 1, 0, 30, 0, 2),
(9, 2, 2, 1, 0, 30, 0, 2),
(10, 2, 3, 1, 0, 30, 0, 2),
(11, 2, 4, 1, 0, 30, 0, 2),
(12, 3, 5, 1, 0, 100, 0, 2),
(13, 3, 6, 1, 0, 100, 0, 2),
(14, 3, 7, 1, 0, 100, 0, 2),
(15, 3, 8, 1, 0, 100, 0, 2),
(16, 5, 9, 1, 0, 40, 0, 2),
(17, 5, 10, 1, 0, 40, 0, 2),
(18, 5, 11, 1, 0, 40, 0, 2),
(19, 1, 12, 1, 0, 10, 0, 2),
(20, 1, 13, 1, 0, 10, 0, 2),
(21, 1, 14, 1, 0, 10, 0, 2),
(22, 1, 15, 1, 0, 10, 0, 2),
(23, 1, 16, 1, 0, 10, 0, 2),
(24, 1, 17, 1, 0, 10, 0, 2),
(25, 1, 18, 1, 0, 10, 0, 2),
(26, 1, 19, 1, 0, 10, 0, 2),
(27, 1, 20, 1, 0, 10, 0, 2),
(28, 1, 21, 1, 0, 10, 0, 2),
(29, 1, 22, 1, 0, 10, 0, 2),
(30, 1, 23, 1, 0, 10, 0, 2),
(31, 1, 24, 1, 0, 10, 0, 2),
(32, 1, 25, 1, 0, 10, 0, 2),
(33, 1, 26, 1, 0, 10, 0, 2),
(34, 1, 27, 1, 0, 10, 0, 2),
(38, 11, 0, 1, 0, 50, 0, 2),
(39, 11, 28, 1, 0, 10, 0, 2),
(40, 11, 29, 1, 0, 10, 0, 2),
(41, 11, 30, 1, 0, 10, 0, 2),
(42, 11, 31, 1, 0, 10, 0, 2),
(43, 11, 32, 1, 0, 10, 0, 2),
(50, 13, 0, 1, 0, 15, 0, 2),
(51, 13, 38, 1, 0, 0, 0, 2),
(52, 13, 39, 1, 0, 5, 0, 2),
(53, 13, 40, 1, 0, 5, 0, 2),
(54, 13, 41, 1, 0, 0, 0, 2),
(55, 13, 42, 1, 0, 5, 0, 2),
(56, 14, 0, 1, 0, 20, 0, 2),
(57, 14, 43, 1, 0, 5, 0, 2),
(58, 14, 44, 1, 0, 5, 0, 2),
(59, 14, 45, 1, 0, 5, 0, 2),
(60, 14, 46, 1, 0, 5, 0, 2),
(61, 14, 47, 1, 0, 0, 0, 2),
(62, 15, 0, 1, 0, 0, 0, 2),
(63, 15, 48, 1, 0, 0, 0, 2),
(64, 15, 49, 1, 0, 0, 0, 2),
(65, 15, 50, 1, 0, 0, 0, 2),
(66, 15, 51, 1, 0, 0, 0, 2),
(67, 15, 52, 1, 0, 0, 0, 2),
(68, 16, 0, 1, 0, 0, 0, 2),
(69, 16, 53, 1, 0, 0, 0, 2),
(70, 16, 54, 1, 0, 0, 0, 2),
(71, 16, 55, 1, 0, 0, 0, 2),
(72, 16, 56, 1, 0, 0, 0, 2),
(73, 16, 57, 1, 0, 0, 0, 2),
(74, 12, 0, 1, 0, 0, 0, 0),
(75, 17, 0, 1, 0, 40, 0, 2),
(81, 17, 63, 1, 0, 10, 0, 2),
(82, 17, 64, 1, 0, 10, 0, 2),
(83, 17, 65, 1, 0, 10, 0, 2),
(84, 17, 66, 1, 0, 10, 0, 2),
(85, 17, 67, 1, 0, 0, 0, 2),
(86, 18, 0, 1, 0, 30, 0, 2),
(87, 18, 68, 1, 0, 10, 0, 2),
(88, 18, 69, 1, 0, 10, 0, 2),
(89, 18, 70, 1, 0, 10, 0, 2),
(90, 18, 71, 1, 0, 0, 0, 2),
(91, 18, 72, 1, 0, 0, 0, 2),
(92, 19, 0, 1, 0, 25, 0, 2),
(93, 19, 73, 1, 0, 5, 0, 2),
(94, 19, 74, 1, 0, 5, 0, 2),
(95, 19, 75, 1, 0, 5, 0, 2),
(96, 19, 76, 1, 0, 5, 0, 2),
(97, 19, 77, 1, 0, 5, 0, 2),
(98, 20, 0, 1, 0, 0, 0, 2),
(99, 20, 78, 1, 0, 0, 0, 2),
(100, 20, 79, 1, 0, 0, 0, 2),
(101, 20, 80, 1, 0, 0, 0, 2),
(102, 20, 81, 1, 0, 0, 0, 2),
(103, 20, 82, 1, 0, 0, 0, 2),
(104, 21, 0, 1, 0, 0, 0, 2),
(105, 21, 83, 1, 0, 0, 0, 2),
(106, 21, 84, 1, 0, 0, 0, 2),
(107, 21, 85, 1, 0, 0, 0, 2),
(108, 21, 86, 1, 0, 0, 0, 2),
(109, 21, 87, 1, 0, 0, 0, 2),
(110, 22, 0, 1, 0, 0, 0, 2),
(111, 22, 88, 1, 0, 0, 0, 2),
(112, 22, 89, 1, 0, 0, 0, 2),
(113, 22, 90, 1, 0, 0, 0, 2),
(114, 22, 91, 1, 0, 0, 0, 2),
(115, 22, 92, 1, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock_mvt`
--

CREATE TABLE IF NOT EXISTS `ps_stock_mvt` (
  `id_stock_mvt` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_stock` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned DEFAULT NULL,
  `id_supply_order` int(11) unsigned DEFAULT NULL,
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `physical_quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_stock_mvt`),
  KEY `id_stock` (`id_stock`),
  KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock_mvt_reason`
--

CREATE TABLE IF NOT EXISTS `ps_stock_mvt_reason` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_mvt_reason`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ps_stock_mvt_reason`
--

INSERT INTO `ps_stock_mvt_reason` (`id_stock_mvt_reason`, `sign`, `date_add`, `date_upd`, `deleted`) VALUES
(1, 1, '2014-01-06 22:17:04', '2014-01-06 22:17:04', 0),
(2, -1, '2014-01-06 22:17:04', '2014-01-06 22:17:04', 0),
(3, -1, '2014-01-06 22:17:04', '2014-01-06 22:17:04', 0),
(4, -1, '2014-01-06 22:17:04', '2014-01-06 22:17:04', 0),
(5, 1, '2014-01-06 22:17:04', '2014-01-06 22:17:04', 0),
(6, -1, '2014-01-06 22:17:05', '2014-01-06 22:17:05', 0),
(7, 1, '2014-01-06 22:17:05', '2014-01-06 22:17:05', 0),
(8, 1, '2014-01-06 22:17:05', '2014-01-06 22:17:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_stock_mvt_reason_lang`
--

CREATE TABLE IF NOT EXISTS `ps_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_stock_mvt_reason_lang`
--

INSERT INTO `ps_stock_mvt_reason_lang` (`id_stock_mvt_reason`, `id_lang`, `name`) VALUES
(1, 1, 'Increase'),
(1, 3, 'Increase'),
(2, 1, 'Decrease'),
(2, 3, 'Decrease'),
(3, 1, 'Customer Order'),
(3, 3, 'Customer Order'),
(4, 1, 'Regulation following an inventory of stock'),
(4, 3, 'Regulation following an inventory of stock'),
(5, 1, 'Regulation following an inventory of stock'),
(5, 3, 'Regulation following an inventory of stock'),
(6, 1, 'Transfer to another warehouse'),
(6, 3, 'Transfer to another warehouse'),
(7, 1, 'Transfer from another warehouse'),
(7, 3, 'Transfer from another warehouse'),
(8, 1, 'Supply Order'),
(8, 3, 'Supply Order');

-- --------------------------------------------------------

--
-- Table structure for table `ps_store`
--

CREATE TABLE IF NOT EXISTS `ps_store` (
  `id_store` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(13,8) DEFAULT NULL,
  `longitude` decimal(13,8) DEFAULT NULL,
  `hours` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_store`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_store`
--

INSERT INTO `ps_store` (`id_store`, `id_country`, `id_state`, `name`, `address1`, `address2`, `city`, `postcode`, `latitude`, `longitude`, `hours`, `phone`, `fax`, `email`, `note`, `active`, `date_add`, `date_upd`) VALUES
(1, 21, 9, 'Dade County', '3030 SW 8th St Miami', '', 'Miami', ' 33135', '25.76500500', '-80.24379700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-01-06 22:20:17', '2014-01-06 22:20:17'),
(2, 21, 9, 'E Fort Lauderdale', '1000 Northeast 4th Ave Fort Lauderdale', '', 'Miami', ' 33304', '26.13793600', '-80.13943500', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-01-06 22:20:17', '2014-01-06 22:20:17'),
(3, 21, 9, 'Pembroke Pines', '11001 Pines Blvd Pembroke Pines', '', 'Miami', '33026', '26.00998700', '-80.29447200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-01-06 22:20:17', '2014-01-06 22:20:17'),
(4, 21, 9, 'Coconut Grove', '2999 SW 32nd Avenue', '', 'Miami', ' 33133', '25.73629600', '-80.24479700', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-01-06 22:20:18', '2014-01-06 22:20:18'),
(5, 21, 9, 'N Miami/Biscayne', '12055 Biscayne Blvd', '', 'Miami', '33181', '25.88674000', '-80.16329200', 'a:7:{i:0;s:13:"09:00 - 19:00";i:1;s:13:"09:00 - 19:00";i:2;s:13:"09:00 - 19:00";i:3;s:13:"09:00 - 19:00";i:4;s:13:"09:00 - 19:00";i:5;s:13:"10:00 - 16:00";i:6;s:13:"10:00 - 16:00";}', '', '', '', '', 1, '2014-01-06 22:20:18', '2014-01-06 22:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `ps_store_shop`
--

CREATE TABLE IF NOT EXISTS `ps_store_shop` (
  `id_store` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_store`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_store_shop`
--

INSERT INTO `ps_store_shop` (`id_store`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_banner`
--

CREATE TABLE IF NOT EXISTS `ps_st_banner` (
  `id_st_banner` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_st_banner_group` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `new_window` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_banner`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ps_st_banner`
--

INSERT INTO `ps_st_banner` (`id_st_banner`, `id_st_banner_group`, `id_currency`, `image`, `new_window`, `active`, `position`) VALUES
(1, 1, 0, '', 0, 1, 0),
(2, 1, 0, '', 0, 1, 1),
(3, 1, 0, '', 0, 1, 2),
(4, 2, 0, '', 0, 0, 0),
(5, 2, 0, '', 0, 1, 1),
(6, 3, 0, '', 0, 1, 0),
(7, 4, 0, '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_banner_group`
--

CREATE TABLE IF NOT EXISTS `ps_st_banner_group` (
  `id_st_banner_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` int(10) unsigned NOT NULL DEFAULT '0',
  `id_category` int(10) unsigned NOT NULL DEFAULT '0',
  `layout` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_on_mobile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hover_effect` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_banner_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ps_st_banner_group`
--

INSERT INTO `ps_st_banner_group` (`id_st_banner_group`, `name`, `location`, `id_category`, `layout`, `hide_on_mobile`, `hover_effect`, `active`, `position`) VALUES
(1, 'Homepage top', 2, 0, 3, 0, 1, 1, 0),
(2, 'Homepage right', 5, 0, 8, 0, 1, 0, 1),
(3, 'category gilrs', 0, 6, 8, 0, 0, 1, 0),
(4, 'category gilrs - skirts', 0, 8, 8, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_banner_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_st_banner_group_shop` (
  `id_st_banner_group` int(10) unsigned NOT NULL,
  `id_shop` int(11) NOT NULL,
  PRIMARY KEY (`id_st_banner_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_banner_group_shop`
--

INSERT INTO `ps_st_banner_group_shop` (`id_st_banner_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_banner_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_banner_lang` (
  `id_st_banner` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image_multi_lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_st_banner`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_banner_lang`
--

INSERT INTO `ps_st_banner_lang` (`id_st_banner`, `id_lang`, `url`, `title`, `image_multi_lang`) VALUES
(1, 1, '/', 'Sample banner', '/1561/prestashop/modules/stbanner/views/img/sample_1.jpg'),
(1, 3, '/', 'Sample banner', '/1561/prestashop/modules/stbanner/views/img/sample_1.jpg'),
(2, 1, '/', 'Sample banner', '/1561/prestashop/modules/stbanner/views/img/sample_2.jpg'),
(2, 3, '/', 'Sample banner', '/1561/prestashop/modules/stbanner/views/img/sample_2.jpg'),
(3, 1, '/', 'Sample banner', '/1561/prestashop/modules/stbanner/views/img/sample_3.jpg'),
(3, 3, '/', 'Sample banner', '/1561/prestashop/modules/stbanner/views/img/sample_3.jpg'),
(4, 1, '/', 'Sample banner', '/1561/prestashop/modules/stbanner/views/img/sample_4.jpg'),
(4, 3, '/', 'Sample banner', '/1561/prestashop/modules/stbanner/views/img/sample_4.jpg'),
(5, 1, '', '', '/1561/prestashop/upload/stbanner/6ee37ef9ed0d1d652e26bdae12d7d105.png'),
(5, 3, '', '', '/1561/prestashop/upload/stbanner/00769e27b11004afe1ead22dfe5bdc46.png'),
(6, 1, '', '', '/1561/prestashop/upload/stbanner/5a411da54e931f8446a76d414b0e8afb.png'),
(6, 3, '', '', '/1561/prestashop/upload/stbanner/5a411da54e931f8446a76d414b0e8afb.png'),
(7, 1, '', '', '/1561/prestashop/upload/stbanner/a064290130bd79d6278c0d952589080a.png'),
(7, 3, '', '', '/1561/prestashop/upload/stbanner/a064290130bd79d6278c0d952589080a.png');

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog` (
  `id_st_blog` int(10) NOT NULL AUTO_INCREMENT,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `comments_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `id_st_blog_category_default` int(10) unsigned DEFAULT NULL,
  `counter` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `accept_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_st_blog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_category`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_category` (
  `id_st_blog_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `nleft` int(10) unsigned NOT NULL DEFAULT '0',
  `nright` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_blog_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_st_blog_category`
--

INSERT INTO `ps_st_blog_category` (`id_st_blog_category`, `id_parent`, `level_depth`, `path`, `nleft`, `nright`, `active`, `is_root_category`, `date_add`, `date_upd`, `position`) VALUES
(1, 0, 1, ',0,1', 0, 0, 1, 1, '2014-01-07 15:43:45', '2014-01-07 15:43:45', 0),
(2, 1, 2, ',0,1,2', 0, 0, 1, 0, '2014-01-07 15:43:46', '2014-01-07 15:43:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_category_blog`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_category_blog` (
  `id_st_blog_category` int(10) unsigned NOT NULL,
  `id_st_blog` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_blog_category`,`id_st_blog`),
  KEY `id_st_blog` (`id_st_blog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_category_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_category_lang` (
  `id_st_blog_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_st_blog_category`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_blog_category_lang`
--

INSERT INTO `ps_st_blog_category_lang` (`id_st_blog_category`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Home', '', 'home', '', '', ''),
(1, 3, 'Home', '', 'home', '', '', ''),
(2, 1, 'First categroy', '', 'first-categroy', '', '', ''),
(2, 3, 'First categroy', '', 'first-categroy', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_category_shop`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_category_shop` (
  `id_st_blog_category` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_blog_category`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_blog_category_shop`
--

INSERT INTO `ps_st_blog_category_shop` (`id_st_blog_category`, `id_shop`, `position`) VALUES
(1, 1, 0),
(2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_comment`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_comment` (
  `id_st_blog_comment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `id_st_blog` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_guest` int(10) unsigned DEFAULT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  `customer_email` varchar(64) DEFAULT NULL,
  `content` text NOT NULL,
  `customer_website` varchar(128) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_st_blog_comment`),
  KEY `id_st_blog` (`id_st_blog`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_image`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_image` (
  `id_st_blog_image` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_st_blog` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT '1',
  `position` smallint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_blog_image`),
  KEY `image_blog` (`id_st_blog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_image_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_image_lang` (
  `id_st_blog_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_st_blog_image`,`id_lang`),
  KEY `id_st_blog_image` (`id_st_blog_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_image_shop`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_image_shop` (
  `id_st_blog_image` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  KEY `id_st_blog_image` (`id_st_blog_image`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_lang` (
  `id_st_blog` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `content_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `video` text,
  PRIMARY KEY (`id_st_blog`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_product_link`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_product_link` (
  `id_st_blog` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_blog`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_shop`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_shop` (
  `id_st_blog` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `id_st_blog_category_default` int(10) unsigned DEFAULT NULL,
  `counter` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_blog`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_tag`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_tag` (
  `id_st_blog_tag` int(10) NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_st_blog_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_blog_tag_map`
--

CREATE TABLE IF NOT EXISTS `ps_st_blog_tag_map` (
  `id_st_blog_tag` int(10) unsigned NOT NULL,
  `id_st_blog` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_st_blog_tag`,`id_st_blog`),
  KEY `id_st_blog_tag` (`id_st_blog_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_brands_slider`
--

CREATE TABLE IF NOT EXISTS `ps_st_brands_slider` (
  `id_manufacturer` int(10) NOT NULL,
  `id_shop` int(11) NOT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_brands_slider`
--

INSERT INTO `ps_st_brands_slider` (`id_manufacturer`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_camera_slideshow`
--

CREATE TABLE IF NOT EXISTS `ps_st_camera_slideshow` (
  `id_st_camera_slideshow` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_st_camera_slideshow_group` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `new_window` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `text_position` varchar(32) DEFAULT NULL,
  `text_align` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `title_color` varchar(7) DEFAULT NULL,
  `title_bg` varchar(7) DEFAULT NULL,
  `title_font_family` varchar(255) DEFAULT NULL,
  `description_color` varchar(7) DEFAULT NULL,
  `description_bg` varchar(7) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `isbanner` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_camera_slideshow`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ps_st_camera_slideshow`
--

INSERT INTO `ps_st_camera_slideshow` (`id_st_camera_slideshow`, `id_st_camera_slideshow_group`, `id_currency`, `image`, `thumb`, `new_window`, `text_position`, `text_align`, `title_color`, `title_bg`, `title_font_family`, `description_color`, `description_bg`, `active`, `position`, `isbanner`) VALUES
(1, 1, 0, '', '', 0, 'left_center', 0, '', '', '0', '', '', 0, 2, 0),
(2, 1, 0, '', '', 0, 'left_center', 0, '', '', '0', '', '', 0, 1, 0),
(3, 2, 0, '', '', 0, '', 0, '', '', '', '', '', 1, 0, 0),
(4, 2, 0, '', '', 0, '', 0, '', '', '', '', '', 1, 1, 0),
(5, 1, 0, '', '', 0, 'left_center', 2, '', '', '0', '', '', 1, 3, 0),
(6, 3, 0, '', '', 0, 'left_center', 2, '', '', '0', '', '', 1, 0, 0),
(7, 3, 0, '', '', 0, 'left_center', 2, '', '', '0', '', '', 1, 1, 0),
(9, 5, 0, '', '', 0, 'left_center', 2, '', '', '0', '', '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_camera_slideshow_group`
--

CREATE TABLE IF NOT EXISTS `ps_st_camera_slideshow_group` (
  `id_st_camera_slideshow_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` int(10) unsigned NOT NULL DEFAULT '0',
  `id_category` int(10) unsigned NOT NULL DEFAULT '0',
  `height_ratio` float(8,2) unsigned NOT NULL DEFAULT '35.00',
  `prev_next` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `prev_next_on_hover` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pag_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hide_on_mobile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `effects` text,
  `easing` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '7000',
  `trans_period` int(10) unsigned NOT NULL DEFAULT '1000',
  `auto_advance` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pause` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `mosaic_rows` int(10) unsigned NOT NULL DEFAULT '4',
  `mosaic_columns` int(10) unsigned NOT NULL DEFAULT '6',
  `blind_rows` int(10) unsigned NOT NULL DEFAULT '8',
  `curtain_columns` int(10) unsigned NOT NULL DEFAULT '12',
  `loader` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bar_position` varchar(32) DEFAULT NULL,
  `pie_position` varchar(32) DEFAULT NULL,
  `loader_bg` varchar(7) DEFAULT NULL,
  `loader_color` varchar(7) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_camera_slideshow_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ps_st_camera_slideshow_group`
--

INSERT INTO `ps_st_camera_slideshow_group` (`id_st_camera_slideshow_group`, `name`, `location`, `id_category`, `height_ratio`, `prev_next`, `prev_next_on_hover`, `pag_nav`, `hide_on_mobile`, `effects`, `easing`, `time`, `trans_period`, `auto_advance`, `pause`, `mosaic_rows`, `mosaic_columns`, `blind_rows`, `curtain_columns`, `loader`, `bar_position`, `pie_position`, `loader_bg`, `loader_color`, `active`, `position`) VALUES
(1, 'Homepage top fullscreen', 1, 0, 28.94, 1, 1, 0, 0, 'random', 0, 7000, 400, 1, 1, 4, 6, 8, 12, 2, 'bottom', '', '', '#333333', 0, 0),
(2, 'Left column', 2, 0, 117.00, 1, 1, 0, 0, 'simpleFade', 0, 7000, 400, 0, 1, 4, 6, 8, 12, 0, '', '', '', '', 0, 1),
(3, 'top', 4, 0, 35.00, 1, 1, 0, 0, 'random', 0, 7000, 400, 1, 1, 4, 6, 8, 12, 0, 'top', 'leftTop', '', '', 1, 0),
(5, 'jj', 0, 3, 35.00, 1, 1, 0, 0, 'random', 0, 7000, 400, 1, 1, 4, 6, 8, 12, 0, 'top', 'leftTop', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_camera_slideshow_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_st_camera_slideshow_group_shop` (
  `id_st_camera_slideshow_group` int(10) unsigned NOT NULL,
  `id_shop` int(11) NOT NULL,
  PRIMARY KEY (`id_st_camera_slideshow_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_camera_slideshow_group_shop`
--

INSERT INTO `ps_st_camera_slideshow_group_shop` (`id_st_camera_slideshow_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_camera_slideshow_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_camera_slideshow_lang` (
  `id_st_camera_slideshow` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `video` text,
  `description` text,
  `button` varchar(255) DEFAULT NULL,
  `image_multi_lang` varchar(255) DEFAULT NULL,
  `thumb_multi_lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_st_camera_slideshow`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_camera_slideshow_lang`
--

INSERT INTO `ps_st_camera_slideshow_lang` (`id_st_camera_slideshow`, `id_lang`, `url`, `video`, `description`, `button`, `image_multi_lang`, `thumb_multi_lang`, `title`) VALUES
(1, 1, '/', '', '', '', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_2.jpg', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_2_thumb.jpg', ''),
(1, 3, '/', '', '', '', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_2.jpg', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_2_thumb.jpg', ''),
(2, 1, '/', '', '', '', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_1.jpg', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_1_thumb.jpg', ''),
(2, 3, '/', '', '', '', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_1.jpg', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_1_thumb.jpg', ''),
(3, 1, '/', '', '', '', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_3.jpg', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_3_thumb.jpg', ''),
(3, 3, '/', '', '', '', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_3.jpg', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_3_thumb.jpg', ''),
(4, 1, '/', '', '', '', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_4.jpg', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_4_thumb.jpg', ''),
(4, 3, '/', '', '', '', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_4.jpg', '/1561/prestashop/modules/stcameraslideshow/views/img/sample_4_thumb.jpg', ''),
(5, 1, 'aa', '', '', '', '/1561/prestashop/upload/stcameraslideshow/ab4bf7c4d5f96852d62a32d49e0bb8ef.jpg', '/1561/prestashop/upload/stcameraslideshow/ab4bf7c4d5f96852d62a32d49e0bb8ef_thumb.jpg', 'aa'),
(5, 3, '', '', '', '', '/1561/prestashop/upload/stcameraslideshow/76892be6e9acc23eb94cffe54ec3eab9.jpg', '/1561/prestashop/upload/stcameraslideshow/76892be6e9acc23eb94cffe54ec3eab9_thumb.jpg', ''),
(6, 1, '', '', '', '', '/1561/prestashop/upload/stcameraslideshow/f5bfc5fe29fadf1a0b19adbe098d7c67.jpg', '/1561/prestashop/upload/stcameraslideshow/f5bfc5fe29fadf1a0b19adbe098d7c67_thumb.jpg', ''),
(6, 3, '', '', '', '', '/1561/prestashop/upload/stcameraslideshow/eea0da04b114de89a1403ff86a7597c0.jpg', '/1561/prestashop/upload/stcameraslideshow/eea0da04b114de89a1403ff86a7597c0_thumb.jpg', ''),
(7, 1, '', '', '', '', '/1561/prestashop/upload/stcameraslideshow/0166dd2e2bd362442543c49076aef063.jpg', '/1561/prestashop/upload/stcameraslideshow/0166dd2e2bd362442543c49076aef063_thumb.jpg', ''),
(7, 3, '', '', '', '', '/1561/prestashop/upload/stcameraslideshow/324e72f6676b60ba586041239738e965.jpg', '/1561/prestashop/upload/stcameraslideshow/324e72f6676b60ba586041239738e965_thumb.jpg', ''),
(9, 1, '', '', '', '', '/1561/prestashop/upload/stcameraslideshow/c37f80686a3ab900e54cb9b89b6a9c8c.png', '/1561/prestashop/upload/stcameraslideshow/c37f80686a3ab900e54cb9b89b6a9c8c_thumb.png', ''),
(9, 3, '', '', '', '', '/1561/prestashop/upload/stcameraslideshow/87e928d5da9139d05ecf92d692d64b35.png', '/1561/prestashop/upload/stcameraslideshow/87e928d5da9139d05ecf92d692d64b35_thumb.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_easy_content`
--

CREATE TABLE IF NOT EXISTS `ps_st_easy_content` (
  `id_st_easy_content` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` int(10) unsigned NOT NULL DEFAULT '0',
  `span` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `hide_on_mobile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_easy_content`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ps_st_easy_content`
--

INSERT INTO `ps_st_easy_content` (`id_st_easy_content`, `location`, `span`, `hide_on_mobile`, `active`, `position`) VALUES
(1, 16, 0, 0, 0, 0),
(2, 13, 0, 0, 1, 1),
(3, 13, 0, 0, 1, 2),
(4, 4, 0, 0, 0, 3),
(5, 6, 0, 0, 1, 4),
(6, 13, 12, 0, 0, 5),
(7, 3, 6, 0, 0, 6),
(8, 16, 0, 0, 0, 7),
(9, 27, 0, 0, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_easy_content_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_easy_content_lang` (
  `id_st_easy_content` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id_st_easy_content`,`id_lang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ps_st_easy_content_lang`
--

INSERT INTO `ps_st_easy_content_lang` (`id_st_easy_content`, `id_lang`, `title`, `url`, `text`) VALUES
(1, 1, '', '', '<div class="row hidden-phone"><div class="span5"><div class="text-right" style="padding: 3em 0 2em 0;"><h1 style="font-size: 2.2em; font-family: ''Fjalla One'';">WELCOME TO THE</h1><h1 style="font-size: 2.2em; font-family: ''Fjalla One'';"><span style="color: #00a161;">TRANSFORMER</span> DEMO STORE</h1></div></div><div class="span6"><div style="padding: 3em 0 2em 0;"><p>Transformer theme is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><a class="button" href="#" title="Buy this theme">Buy this theme</a></div></div></div>'),
(1, 3, '', '', '<div class="row hidden-phone"><div class="span5"><div class="text-right" style="padding: 3em 0 2em 0;"><h1 style="font-size: 2.2em; font-family: ''Fjalla One'';">WELCOME TO THE</h1><h1 style="font-size: 2.2em; font-family: ''Fjalla One'';"><span style="color: #00a161;">TRANSFORMER</span> DEMO STORE</h1></div></div><div class="span6"><div style="padding: 3em 0 2em 0;"><p>Transformer theme is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><a class="button" href="#" title="Buy this theme">Buy this theme</a></div></div></div>'),
(2, 1, 'About us', '', '<p>Transformer theme is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p>\r\n<p>This is a custom block edited from admin panel.You can insert any content here.</p>\r\n<p>Any orders placed through this store will not be honored or fulfilled</p>\r\n<p><a class="go" title="Buy this theme" href="http://www.sunnytoo.com/" target="_blank">Buy this theme</a></p>'),
(2, 3, 'אודות "שוקולדה"', '', '<div style="direction: rtl;">אתר "שוקולדה" מוכר בגדי ילדים מעוצבים במחירים הוגנים.</div>\r\n<div style="direction: rtl;"> </div>\r\n<div style="direction: rtl;">אנחנו צנועים זריזים וחצופים, ולכן מוכרים ישירות לצרכן בגדי ילדים דומים לכאלה שנמכרים ברשתות, ולא מצפים שהוא יממן לנו חנות בקניון.</div>\r\n<div style="direction: rtl;"> </div>\r\n<div style="direction: rtl;">הקנייה בשוקולדה משתלמת, אבל גם מקדמת צרכנות שפויה.</div>\r\n<div style="direction: rtl;"> </div>\r\n<div style="direction: rtl;">קניה מהנה !</div>'),
(3, 1, 'Contact Us', '', '<div class="mar_b4">Call Us +001 123 123 <br /> Fax +001 123 123</div>\r\n<div class="mar_b4">support@sunnytoo.com <br /> support@sunnytoo.com</div>\r\n<div class="mar_b4">Skype: contact_us <br /> skype_support</div>\r\n<div class="mar_b4">From Monday to Friday <br /> 9:00 a.m. to 5:00 p.m.</div>'),
(3, 3, 'צור קשר', '', '<div style="direction: rtl;">שירות לקוחות - 0544909759</div>\r\n<div style="direction: rtl;"> </div>\r\n<div style="direction: rtl;">מייל: info@shokolada-kids.co.il</div>'),
(4, 1, 'Why Shop at Transformer', '', '<h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-credit-card icon-large"> </em>Payment</h6><p class="color_999">We accept Visa, MasterCard and American Express.</p><h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-truck icon-large"> </em>Free shipping</h6><p class="color_999">All orders over $100 free super fast delivery.</p><h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-trophy icon-large"> </em>Best priec guarantee</h6><p class="color_999">The best choice for high quality at good prices.</p><h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-flight icon-large"> </em>Shipping</h6><p class="color_999">We ship to over 100 countries worldwide through fast and reliable delivery partners.</p>'),
(4, 3, 'Why Shop at Transformer', '', '<h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-credit-card icon-large"> </em>Payment</h6><p class="color_999">We accept Visa, MasterCard and American Express.</p><h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-truck icon-large"> </em>Free shipping</h6><p class="color_999">All orders over $100 free super fast delivery.</p><h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-trophy icon-large"> </em>Best priec guarantee</h6><p class="color_999">The best choice for high quality at good prices.</p><h6 class="mar_t1 mar_b4 bold uppercase"><em class="icon-flight icon-large"> </em>Shipping</h6><p class="color_999">We ship to over 100 countries worldwide through fast and reliable delivery partners.</p>'),
(5, 1, '', '', '<h1 style="font-size: 10em;line-height: 1em; font-style: italic;">404</h1>'),
(5, 3, '', '', '<h1 style="font-size: 10em;line-height: 1em; font-style: italic;">404</h1>'),
(6, 1, '', '', '<p><span class="font_3x">PrestaShop</span> comes complete with over 310 features that have been carefully developed to assist business owners in increasing sales with <span class="font_1x">virtually little effort</span>. All features are integrated in the software and are <span class="font_3x">100% free</span>.This is a custom block, You can insert any content here.</p>'),
(6, 3, '', '', '<p><span class="font_3x">PrestaShop</span> comes complete with over 310 features that have been carefully developed to assist business owners in increasing sales with <span class="font_1x">virtually little effort</span>. All features are integrated in the software and are <span class="font_3x">100% free</span>.This is a custom block, You can insert any content here.</p>'),
(7, 1, '', '', '<p><span class="contact_item_large"><em class="icon-phone-squared icon-1x"></em>call +001 123 123</span><span class="contact_item_large"><em class="icon-mail-1 icon-1x" style="margin-top: -4px;"></em>example@mail.com</span></p>'),
(7, 3, '', '', '<p><span class="contact_item_large"><em class="icon-phone-squared icon-1x"></em>call +001 123 123</span><span class="contact_item_large"><em class="icon-mail-1 icon-1x" style="margin-top: -4px;"></em>example@mail.com</span></p>'),
(8, 1, '', '', '<div class="text-center" style="padding: 2em 0;"><h1>Welcome to the Transformer theme demo store</h1><p>Transformer theme is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><p><a class="button" href="#">Buy this theme</a></p></div>'),
(8, 3, '', '', '<div class="text-center" style="padding: 2em 0;"><h1>Welcome to the Transformer theme demo store</h1><p>Transformer theme is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><p><a class="button" href="#">Buy this theme</a></p></div>'),
(9, 1, '', '', '<div style="padding-left: 10px;">The Best E-Commerce Experience</div>'),
(9, 3, '', '', '<div style="padding-left: 10px;">The Best E-Commerce Experience</div>');

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_easy_content_shop`
--

CREATE TABLE IF NOT EXISTS `ps_st_easy_content_shop` (
  `id_st_easy_content` int(10) unsigned NOT NULL,
  `id_shop` int(11) NOT NULL,
  PRIMARY KEY (`id_st_easy_content`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_easy_content_shop`
--

INSERT INTO `ps_st_easy_content_shop` (`id_st_easy_content`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_easy_tabs`
--

CREATE TABLE IF NOT EXISTS `ps_st_easy_tabs` (
  `id_st_easy_tabs` int(10) NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL DEFAULT '0',
  `id_product` int(10) unsigned NOT NULL DEFAULT '0',
  `id_product_specific` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `allitems` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_easy_tabs`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `ps_st_easy_tabs`
--

INSERT INTO `ps_st_easy_tabs` (`id_st_easy_tabs`, `id_shop`, `id_category`, `id_product`, `id_product_specific`, `id_manufacturer`, `allitems`, `active`, `position`) VALUES
(1, 1, 0, 11, 0, 0, 0, 1, 0),
(2, 1, 0, 0, 0, 0, 0, 0, 0),
(4, 1, 0, 0, 0, 0, 0, 0, 0),
(5, 1, 0, 0, 11, 0, 0, 0, 0),
(6, 1, 0, 0, 11, 0, 0, 0, 0),
(9, 1, 0, 0, 11, 0, 0, 0, 0),
(10, 1, 0, 0, 11, 0, 0, 0, 0),
(11, 1, 0, 0, 11, 0, 0, 0, 0),
(12, 1, 0, 0, 11, 0, 0, 0, 0),
(13, 1, 0, 0, 13, 0, 0, 0, 0),
(14, 1, 0, 0, 14, 0, 0, 0, 0),
(15, 1, 0, 0, 15, 0, 0, 0, 0),
(16, 1, 0, 0, 16, 0, 0, 0, 0),
(17, 1, 0, 0, 16, 0, 0, 0, 0),
(18, 1, 0, 0, 17, 0, 0, 0, 0),
(19, 1, 0, 0, 17, 0, 0, 0, 0),
(20, 1, 0, 0, 18, 0, 0, 0, 0),
(21, 1, 0, 0, 18, 0, 0, 0, 0),
(22, 1, 0, 0, 19, 0, 0, 0, 0),
(23, 1, 0, 0, 19, 0, 0, 0, 0),
(24, 1, 0, 0, 20, 0, 0, 0, 0),
(25, 1, 0, 0, 20, 0, 0, 0, 0),
(26, 1, 0, 0, 21, 0, 0, 0, 0),
(27, 1, 0, 0, 16, 0, 0, 0, 0),
(28, 1, 0, 0, 22, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_easy_tabs_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_easy_tabs_lang` (
  `id_st_easy_tabs` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id_st_easy_tabs`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_easy_tabs_lang`
--

INSERT INTO `ps_st_easy_tabs_lang` (`id_st_easy_tabs`, `id_lang`, `title`, `content`) VALUES
(1, 1, 'Custom tab', '<p>This is a custom block edited from admin panel.You can insert any content here.</p>\r\n<p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</p>'),
(1, 3, 'Custom tab', '<p>This is a custom block edited from admin panel.You can insert any content here.</p>'),
(2, 1, '', ''),
(2, 3, '', ''),
(4, 1, '', ''),
(4, 3, '', ''),
(5, 1, '', ''),
(5, 3, '', ''),
(6, 1, '', ''),
(6, 3, '', ''),
(8, 1, 'hhh', '<p><img src="http://localhost/1561/prestashop/img/cms/1.jpg" alt="" width="960" height="642" />777777777777777777777777777</p>'),
(8, 3, '', ''),
(9, 1, '', ''),
(9, 3, '', ''),
(10, 1, '', ''),
(10, 3, '', ''),
(11, 1, '', ''),
(11, 3, '', ''),
(12, 1, '', ''),
(12, 3, '', ''),
(13, 1, '', ''),
(13, 3, '', ''),
(14, 1, '', ''),
(14, 3, '', ''),
(15, 1, '', ''),
(15, 3, '', ''),
(16, 1, '', ''),
(16, 3, '', ''),
(17, 1, '', ''),
(17, 3, '', ''),
(18, 1, '', ''),
(18, 3, '', ''),
(19, 1, '', ''),
(19, 3, '', ''),
(20, 1, '', ''),
(20, 3, '', ''),
(21, 1, '', ''),
(21, 3, '', ''),
(22, 1, '', ''),
(22, 3, '', ''),
(23, 1, '', ''),
(23, 3, '', ''),
(24, 1, '', ''),
(24, 3, '', ''),
(25, 1, '', ''),
(25, 3, '', ''),
(26, 1, '', ''),
(26, 3, '', ''),
(27, 1, '', ''),
(27, 3, '', ''),
(28, 1, '', ''),
(28, 3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_featured_category`
--

CREATE TABLE IF NOT EXISTS `ps_st_featured_category` (
  `id_st_featured_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) NOT NULL DEFAULT '0',
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `txt_color` varchar(7) DEFAULT NULL,
  `txt_color_over` varchar(7) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `auto_sub` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cover` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_st_featured_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_mega_menu`
--

CREATE TABLE IF NOT EXISTS `ps_st_mega_menu` (
  `id_st_mega_menu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) NOT NULL DEFAULT '0',
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nleft` int(10) unsigned NOT NULL DEFAULT '0',
  `nright` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL,
  `shop_id` int(10) unsigned NOT NULL,
  `id_cms` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cms_category` int(10) unsigned NOT NULL DEFAULT '0',
  `id_category` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_product` int(10) unsigned NOT NULL DEFAULT '0',
  `id_icon` int(10) unsigned NOT NULL DEFAULT '0',
  `id_st_blog_category` int(10) unsigned NOT NULL DEFAULT '0',
  `id_st_blog` int(10) unsigned NOT NULL DEFAULT '0',
  `pagename` varchar(255) DEFAULT NULL,
  `spans` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `txt_color` varchar(7) DEFAULT NULL,
  `bg_color` varchar(7) DEFAULT NULL,
  `txt_color_over` varchar(7) DEFAULT NULL,
  `bg_color_over` varchar(7) DEFAULT NULL,
  `tab_content_bg` varchar(7) DEFAULT NULL,
  `height` smallint(7) unsigned DEFAULT NULL,
  `width` smallint(7) unsigned DEFAULT NULL,
  `left` smallint(7) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `style` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `auto_sub` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hide_on_mobile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `alignment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_mega_menu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ps_st_mega_menu`
--

INSERT INTO `ps_st_mega_menu` (`id_st_mega_menu`, `id_parent`, `level_depth`, `nleft`, `nright`, `id_shop`, `shop_id`, `id_cms`, `id_cms_category`, `id_category`, `id_supplier`, `id_manufacturer`, `id_product`, `id_icon`, `id_st_blog_category`, `id_st_blog`, `pagename`, `spans`, `position`, `new_window`, `txt_color`, `bg_color`, `txt_color_over`, `bg_color_over`, `tab_content_bg`, `height`, `width`, `left`, `active`, `style`, `auto_sub`, `hide_on_mobile`, `alignment`) VALUES
(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, 1, 1, 0, 0, 0),
(2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, '', '', '', '', '', NULL, NULL, NULL, 0, 15, 0, 0, 0),
(3, 2, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 4, 0, 0, '', '', '', '', '', NULL, NULL, NULL, 1, 0, 0, 0, 0),
(4, 2, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 4, 1, 0, '', '', '', '', '', NULL, NULL, NULL, 1, 0, 0, 0, 0),
(5, 2, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 4, 2, 0, '', '', '', '', '', NULL, NULL, NULL, 1, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, 0, 1, 0, 0, 0),
(7, 0, 0, 0, 0, 1, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, 1, 10, 1, 0, 0),
(8, 0, 0, 0, 0, 1, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, 1, 10, 1, 0, 0),
(9, 0, 0, 0, 0, 1, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', '', '', '', NULL, NULL, NULL, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_mega_menu_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_mega_menu_lang` (
  `id_st_mega_menu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `html` text,
  PRIMARY KEY (`id_st_mega_menu`,`id_lang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ps_st_mega_menu_lang`
--

INSERT INTO `ps_st_mega_menu_lang` (`id_st_mega_menu`, `id_lang`, `title`, `link`, `html`) VALUES
(1, 1, '', '', ''),
(1, 3, '', '', ''),
(2, 1, 'Custom block', '', ''),
(2, 3, 'Custom block', '', ''),
(3, 1, '', '', '<h3 class="ma_level_1">Transformer</h3><p>Transformer is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><ol style="margin-bottom:20px;"><li>Fully responsive theme</li><li>Unlimited colors</li><li>Customizable design</li><li>Powerfull theme editor</li><li>Built with HTML5 and CSS3</li><li>Google fonts</li><li>Ajax Wishlist and Compare</li></ol>'),
(3, 3, '', '', '<h3 class="ma_level_1">Transformer</h3><p>Transformer is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><ol style="margin-bottom:20px;"><li>Fully responsive theme</li><li>Unlimited colors</li><li>Customizable design</li><li>Powerfull theme editor</li><li>Built with HTML5 and CSS3</li><li>Google fonts</li><li>Ajax Wishlist and Compare</li></ol>'),
(4, 1, '', '', '<p><a href="/" class="ma_level_1" title="mainstore" rel="nofollow">Main Demo</a></p><p><a href="/" title="mainstore" rel="nofollow"><img src="/modules/stmegamenu/views/img/menu_store_1.jpg" alt="Main demo"/></a><p><p>Transformer is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><a class="go" href="/" title="Go to Main demo">Go to Main demo</a>'),
(4, 3, '', '', '<p><a href="/" class="ma_level_1" title="mainstore" rel="nofollow">Main Demo</a></p><p><a href="/" title="mainstore" rel="nofollow"><img src="/modules/stmegamenu/views/img/menu_store_1.jpg" alt="Main demo"/></a><p><p>Transformer is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><a class="go" href="/" title="Go to Main demo">Go to Main demo</a>'),
(5, 1, '', '', '<p><a href="/" class="ma_level_1" title="Go to Store 2" rel="nofollow">Store 2</a></p><p><a href="/" title="Store 2"><img src="/modules/stmegamenu/views/img/menu_store_2.jpg" alt="Store 2"/></a></p><p>Transformer is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><a class="go" href="/" title="Go to Store 2" rel="nofollow">Go to Store 2</a>'),
(5, 3, '', '', '<p><a href="/" class="ma_level_1" title="Go to Store 2" rel="nofollow">Store 2</a></p><p><a href="/" title="Store 2"><img src="/modules/stmegamenu/views/img/menu_store_2.jpg" alt="Store 2"/></a></p><p>Transformer is an elegant, powerful and fully responsive prestashop theme with modern design. Suitable for every type of store.</p><a class="go" href="/" title="Go to Store 2" rel="nofollow">Go to Store 2</a>'),
(6, 1, '', '', ''),
(6, 3, '', '', ''),
(7, 1, '', '', ''),
(7, 3, '', '', ''),
(8, 1, '', '', ''),
(8, 3, '', '', ''),
(9, 1, '', '', ''),
(9, 3, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_multi_link`
--

CREATE TABLE IF NOT EXISTS `ps_st_multi_link` (
  `id_st_multi_link` int(10) NOT NULL AUTO_INCREMENT,
  `id_cms` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cms_category` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `pagename` varchar(255) DEFAULT NULL,
  `new_window` tinyint(1) NOT NULL,
  `id_st_multi_link_group` int(10) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_multi_link`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `ps_st_multi_link`
--

INSERT INTO `ps_st_multi_link` (`id_st_multi_link`, `id_cms`, `id_cms_category`, `id_supplier`, `id_manufacturer`, `pagename`, `new_window`, `id_st_multi_link_group`, `active`, `position`) VALUES
(1, 0, 0, 0, 0, 'contact', 0, 1, 1, 0),
(2, 1, 0, 0, 0, '', 0, 1, 1, 1),
(3, 1, 0, 0, 0, '', 0, 2, 1, 0),
(4, 2, 0, 0, 0, '', 0, 2, 1, 1),
(5, 5, 0, 0, 0, '', 0, 2, 1, 2),
(6, 0, 0, 0, 0, 'prices-drop', 0, 3, 1, 0),
(7, 0, 0, 0, 0, 'new-products', 0, 3, 1, 1),
(8, 0, 0, 0, 0, 'best-sales', 0, 3, 1, 2),
(9, 0, 0, 0, 0, 'stores', 0, 4, 1, 0),
(10, 0, 0, 0, 0, 'contact', 0, 4, 1, 1),
(11, 0, 0, 0, 0, 'sitemap', 0, 4, 1, 2),
(12, 0, 0, 0, 0, 'my-account', 0, 5, 1, 0),
(13, 0, 0, 0, 0, 'history', 0, 5, 1, 1),
(14, 0, 0, 0, 0, 'addresses', 0, 5, 1, 2),
(15, 0, 0, 0, 0, 'prices-drop', 0, 6, 1, 0),
(16, 0, 0, 0, 0, 'new-products', 0, 6, 1, 1),
(17, 0, 0, 0, 0, 'best-sales', 0, 6, 1, 2),
(18, 0, 0, 0, 0, 'stores', 0, 6, 1, 3),
(19, 0, 0, 0, 0, 'contact', 0, 6, 1, 4),
(20, 0, 0, 0, 0, 'sitemap', 0, 6, 1, 5),
(21, 1, 0, 0, 0, '', 0, 6, 1, 6),
(22, 2, 0, 0, 0, '', 0, 6, 1, 7),
(23, 5, 0, 0, 0, '', 0, 6, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_multi_link_group`
--

CREATE TABLE IF NOT EXISTS `ps_st_multi_link_group` (
  `id_st_multi_link_group` int(10) NOT NULL AUTO_INCREMENT,
  `location` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `hide_on_mobile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_st_multi_link_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ps_st_multi_link_group`
--

INSERT INTO `ps_st_multi_link_group` (`id_st_multi_link_group`, `location`, `active`, `position`, `hide_on_mobile`) VALUES
(1, 1, 1, 0, 1),
(2, 5, 0, 1, 0),
(3, 3, 0, 2, 0),
(4, 3, 0, 3, 0),
(5, 5, 0, 4, 0),
(6, 6, 0, 5, 0),
(7, 9, 0, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_multi_link_group_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_multi_link_group_lang` (
  `id_st_multi_link_group` int(10) NOT NULL,
  `id_lang` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_st_multi_link_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_multi_link_group_lang`
--

INSERT INTO `ps_st_multi_link_group_lang` (`id_st_multi_link_group`, `id_lang`, `name`, `url`) VALUES
(1, 1, 'Help', ''),
(1, 3, 'Help', ''),
(2, 1, 'Information', ''),
(2, 3, 'Information', ''),
(3, 1, 'Catalog', ''),
(3, 3, 'Catalog', ''),
(4, 1, 'Support', ''),
(4, 3, 'Support', ''),
(5, 1, 'My Account', ''),
(5, 3, 'My Account', ''),
(6, 1, 'Information', ''),
(6, 3, 'Information', ''),
(7, 1, 'Call +001 1234 4321', ''),
(7, 3, 'Call +001 1234 4321', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_multi_link_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_st_multi_link_group_shop` (
  `id_st_multi_link_group` int(10) NOT NULL,
  `id_shop` int(11) NOT NULL,
  PRIMARY KEY (`id_st_multi_link_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_multi_link_group_shop`
--

INSERT INTO `ps_st_multi_link_group_shop` (`id_st_multi_link_group`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_multi_link_lang`
--

CREATE TABLE IF NOT EXISTS `ps_st_multi_link_lang` (
  `id_st_multi_link` int(10) NOT NULL,
  `id_lang` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_st_multi_link`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_multi_link_lang`
--

INSERT INTO `ps_st_multi_link_lang` (`id_st_multi_link`, `id_lang`, `name`, `url`) VALUES
(1, 1, '', ''),
(1, 3, '', ''),
(2, 1, '', ''),
(2, 3, '', ''),
(3, 1, '', ''),
(3, 3, '', ''),
(4, 1, '', ''),
(4, 3, '', ''),
(5, 1, '', ''),
(5, 3, '', ''),
(6, 1, '', ''),
(6, 3, '', ''),
(7, 1, '', ''),
(7, 3, '', ''),
(8, 1, '', ''),
(8, 3, '', ''),
(9, 1, '', ''),
(9, 3, '', ''),
(10, 1, '', ''),
(10, 3, '', ''),
(11, 1, '', ''),
(11, 3, '', ''),
(12, 1, '', ''),
(12, 3, '', ''),
(13, 1, '', ''),
(13, 3, '', ''),
(14, 1, '', ''),
(14, 3, '', ''),
(15, 1, '', ''),
(15, 3, '', ''),
(16, 1, '', ''),
(16, 3, '', ''),
(17, 1, '', ''),
(17, 3, '', ''),
(18, 1, '', ''),
(18, 3, '', ''),
(19, 1, '', ''),
(19, 3, '', ''),
(20, 1, '', ''),
(20, 3, '', ''),
(21, 1, '', ''),
(21, 3, '', ''),
(22, 1, '', ''),
(22, 3, '', ''),
(23, 1, '', ''),
(23, 3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_product_categories_slider`
--

CREATE TABLE IF NOT EXISTS `ps_st_product_categories_slider` (
  `id_st_product_categories_slider` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_category` int(10) unsigned NOT NULL DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL,
  `product_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `product_order` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `display_on` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_st_product_categories_slider`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_st_product_categories_slider`
--

INSERT INTO `ps_st_product_categories_slider` (`id_st_product_categories_slider`, `id_category`, `id_shop`, `product_nbr`, `product_order`, `active`, `position`, `display_on`) VALUES
(1, 3, 1, 8, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_st_related_products`
--

CREATE TABLE IF NOT EXISTS `ps_st_related_products` (
  `id_product_1` int(10) unsigned NOT NULL DEFAULT '0',
  `id_product_2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_1`,`id_product_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_st_related_products`
--

INSERT INTO `ps_st_related_products` (`id_product_1`, `id_product_2`) VALUES
(11, 13),
(11, 14),
(11, 15),
(11, 16),
(18, 11),
(18, 14),
(18, 16),
(19, 14),
(19, 17);

-- --------------------------------------------------------

--
-- Table structure for table `ps_supplier`
--

CREATE TABLE IF NOT EXISTS `ps_supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_supplier`
--

INSERT INTO `ps_supplier` (`id_supplier`, `name`, `date_add`, `date_upd`, `active`) VALUES
(1, 'AppleStore', '2014-01-06 22:19:15', '2014-01-06 22:19:15', 1),
(2, 'Shure Online Store', '2014-01-06 22:19:16', '2014-01-06 22:19:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_supplier_lang`
--

CREATE TABLE IF NOT EXISTS `ps_supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_supplier_lang`
--

INSERT INTO `ps_supplier_lang` (`id_supplier`, `id_lang`, `description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, '', '', '', ''),
(1, 3, '', '', '', ''),
(2, 1, '', '', '', ''),
(2, 3, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_supplier_shop`
--

CREATE TABLE IF NOT EXISTS `ps_supplier_shop` (
  `id_supplier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_supplier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_supplier_shop`
--

INSERT INTO `ps_supplier_shop` (`id_supplier`, `id_shop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order` (
  `id_supply_order` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(11) unsigned NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_ref_currency` int(11) unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_supply_order`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `reference` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_detail`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_detail` (
  `id_supply_order_detail` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `supplier_reference` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int(11) unsigned NOT NULL,
  `quantity_received` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_supply_order_detail`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_history`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_history` (
  `id_supply_order_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_state` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_history`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_receipt_history`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_receipt_history` (
  `id_supply_order_receipt_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order_detail` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_receipt_history`),
  KEY `id_supply_order_detail` (`id_supply_order_detail`),
  KEY `id_supply_order_state` (`id_supply_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_state`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_state` (
  `id_supply_order_state` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `ps_supply_order_state`
--

INSERT INTO `ps_supply_order_state` (`id_supply_order_state`, `delivery_note`, `editable`, `receipt_state`, `pending_receipt`, `enclosed`, `color`) VALUES
(1, 0, 1, 0, 0, 0, '#faab00'),
(2, 1, 0, 0, 0, 0, '#273cff'),
(3, 0, 0, 0, 1, 0, '#ff37f5'),
(4, 0, 0, 1, 1, 0, '#ff3e33'),
(5, 0, 0, 1, 0, 1, '#00d60c'),
(6, 0, 0, 0, 0, 1, '#666666');

-- --------------------------------------------------------

--
-- Table structure for table `ps_supply_order_state_lang`
--

CREATE TABLE IF NOT EXISTS `ps_supply_order_state_lang` (
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_supply_order_state_lang`
--

INSERT INTO `ps_supply_order_state_lang` (`id_supply_order_state`, `id_lang`, `name`) VALUES
(1, 1, '1 - Creation in progress'),
(1, 3, '1 - Creation in progress'),
(2, 1, '2 - Order validated'),
(2, 3, '2 - Order validated'),
(3, 1, '3 - Pending receipt'),
(3, 3, '3 - Pending receipt'),
(4, 1, '4 - Order received in part'),
(4, 3, '4 - Order received in part'),
(5, 1, '5 - Order received completely'),
(5, 3, '5 - Order received completely'),
(6, 1, '6 - Order canceled'),
(6, 3, '6 - Order canceled');

-- --------------------------------------------------------

--
-- Table structure for table `ps_tab`
--

CREATE TABLE IF NOT EXISTS `ps_tab` (
  `id_tab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `ps_tab`
--

INSERT INTO `ps_tab` (`id_tab`, `id_parent`, `class_name`, `module`, `position`, `active`) VALUES
(1, -1, 'AdminHome', '', 0, 1),
(2, -1, 'AdminCms', '', 1, 1),
(3, -1, 'AdminCmsCategories', '', 2, 1),
(4, -1, 'AdminAttributeGenerator', '', 3, 1),
(5, -1, 'AdminSearch', '', 4, 1),
(6, -1, 'AdminLogin', '', 5, 1),
(7, -1, 'AdminShop', '', 6, 1),
(8, -1, 'AdminShopUrl', '', 7, 1),
(9, 0, 'AdminCatalog', '', 0, 1),
(10, 0, 'AdminParentOrders', '', 1, 1),
(11, 0, 'AdminParentCustomer', '', 2, 1),
(12, 0, 'AdminPriceRule', '', 3, 1),
(13, 0, 'AdminParentShipping', '', 4, 1),
(14, 0, 'AdminParentLocalization', '', 5, 1),
(15, 0, 'AdminParentModules', '', 6, 1),
(16, 0, 'AdminParentPreferences', '', 7, 1),
(17, 0, 'AdminTools', '', 8, 1),
(18, 0, 'AdminAdmin', '', 9, 1),
(19, 0, 'AdminParentStats', '', 10, 1),
(20, 0, 'AdminStock', '', 11, 1),
(21, 9, 'AdminProducts', '', 0, 1),
(22, 9, 'AdminCategories', '', 1, 1),
(23, 9, 'AdminTracking', '', 2, 1),
(24, 9, 'AdminAttributesGroups', '', 3, 1),
(25, 9, 'AdminFeatures', '', 4, 1),
(26, 9, 'AdminManufacturers', '', 5, 1),
(27, 9, 'AdminSuppliers', '', 6, 1),
(28, 9, 'AdminScenes', '', 7, 1),
(29, 9, 'AdminTags', '', 8, 1),
(30, 9, 'AdminAttachments', '', 9, 1),
(31, 10, 'AdminOrders', '', 0, 1),
(32, 10, 'AdminInvoices', '', 1, 1),
(33, 10, 'AdminReturn', '', 2, 1),
(34, 10, 'AdminDeliverySlip', '', 3, 1),
(35, 10, 'AdminSlip', '', 4, 1),
(36, 10, 'AdminStatuses', '', 5, 1),
(37, 10, 'AdminOrderMessage', '', 6, 1),
(38, 11, 'AdminCustomers', '', 0, 1),
(39, 11, 'AdminAddresses', '', 1, 1),
(40, 11, 'AdminGroups', '', 2, 1),
(41, 11, 'AdminCarts', '', 3, 1),
(42, 11, 'AdminCustomerThreads', '', 4, 1),
(43, 11, 'AdminContacts', '', 5, 1),
(44, 11, 'AdminGenders', '', 6, 1),
(45, 11, 'AdminOutstanding', '', 7, 0),
(46, 12, 'AdminCartRules', '', 0, 1),
(47, 12, 'AdminSpecificPriceRule', '', 1, 1),
(48, 12, 'AdminMarketing', '', 2, 1),
(49, 13, 'AdminShipping', '', 0, 1),
(50, 13, 'AdminCarriers', '', 1, 1),
(51, 13, 'AdminCarrierWizard', NULL, 2, 1),
(52, 14, 'AdminLocalization', '', 0, 1),
(53, 14, 'AdminLanguages', '', 1, 1),
(54, 14, 'AdminZones', '', 2, 1),
(55, 14, 'AdminCountries', '', 3, 1),
(56, 14, 'AdminStates', '', 4, 1),
(57, 14, 'AdminCurrencies', '', 5, 1),
(58, 14, 'AdminTaxes', '', 6, 1),
(59, 14, 'AdminTaxRulesGroup', '', 7, 1),
(60, 14, 'AdminTranslations', '', 8, 1),
(61, 15, 'AdminModules', '', 0, 1),
(62, 15, 'AdminAddonsCatalog', '', 1, 1),
(63, 15, 'AdminModulesPositions', '', 2, 1),
(64, 15, 'AdminPayment', '', 3, 1),
(65, 16, 'AdminPreferences', '', 0, 1),
(66, 16, 'AdminOrderPreferences', '', 1, 1),
(67, 16, 'AdminPPreferences', '', 2, 1),
(68, 16, 'AdminCustomerPreferences', '', 3, 1),
(69, 16, 'AdminThemes', '', 4, 1),
(70, 16, 'AdminMeta', '', 5, 1),
(71, 16, 'AdminCmsContent', '', 6, 1),
(72, 16, 'AdminImages', '', 7, 1),
(73, 16, 'AdminStores', '', 8, 1),
(74, 16, 'AdminSearchConf', '', 9, 1),
(75, 16, 'AdminMaintenance', '', 10, 1),
(76, 16, 'AdminGeolocation', '', 11, 1),
(77, 17, 'AdminInformation', '', 0, 1),
(78, 17, 'AdminPerformance', '', 1, 1),
(79, 17, 'AdminEmails', '', 2, 1),
(80, 17, 'AdminShopGroup', '', 3, 0),
(81, 17, 'AdminImport', '', 4, 1),
(82, 17, 'AdminBackup', '', 5, 1),
(83, 17, 'AdminRequestSql', '', 6, 1),
(84, 17, 'AdminLogs', '', 7, 1),
(85, 17, 'AdminWebservice', '', 8, 1),
(86, 18, 'AdminAdminPreferences', '', 0, 1),
(87, 18, 'AdminQuickAccesses', '', 1, 1),
(88, 18, 'AdminEmployees', '', 2, 1),
(89, 18, 'AdminProfiles', '', 3, 1),
(90, 18, 'AdminAccess', '', 4, 1),
(91, 18, 'AdminTabs', '', 5, 1),
(92, 19, 'AdminStats', '', 0, 1),
(93, 19, 'AdminSearchEngines', '', 1, 1),
(94, 19, 'AdminReferrers', '', 2, 1),
(95, 20, 'AdminWarehouses', '', 0, 1),
(96, 20, 'AdminStockManagement', '', 1, 1),
(97, 20, 'AdminStockMvt', '', 2, 1),
(98, 20, 'AdminStockInstantState', '', 3, 1),
(99, 20, 'AdminStockCover', '', 4, 1),
(100, 20, 'AdminSupplyOrders', '', 5, 1),
(101, 20, 'AdminStockConfiguration', '', 6, 1),
(102, 18, 'AdminGamification', 'gamification', 6, 1),
(103, 15, 'AdminStBlog', 'stblog', 4, 1),
(104, 15, 'AdminStBlogCategory', 'stblog', 5, 1),
(105, 15, 'AdminStBlogConfig', 'stblog', 6, 1),
(106, 15, 'AdminStBlogComment', 'stblogcomments', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_tab_advice`
--

CREATE TABLE IF NOT EXISTS `ps_tab_advice` (
  `id_tab` int(11) NOT NULL,
  `id_advice` int(11) NOT NULL,
  PRIMARY KEY (`id_tab`,`id_advice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_tab_advice`
--

INSERT INTO `ps_tab_advice` (`id_tab`, `id_advice`) VALUES
(21, 2),
(21, 3),
(22, 2),
(32, 2),
(52, 1),
(70, 3),
(73, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ps_tab_lang`
--

CREATE TABLE IF NOT EXISTS `ps_tab_lang` (
  `id_tab` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_tab_lang`
--

INSERT INTO `ps_tab_lang` (`id_tab`, `id_lang`, `name`) VALUES
(1, 1, 'Home'),
(1, 3, 'דף הבית'),
(2, 1, 'CMS Pages'),
(2, 3, 'דפי ניהול תוכן'),
(3, 1, 'CMS Categories'),
(3, 3, 'קטגוריות ניהול תוכן'),
(4, 1, 'Combinations Generator'),
(4, 3, 'מחולל צירופים'),
(5, 1, 'Search'),
(5, 3, 'חפש'),
(6, 1, 'Login'),
(6, 3, 'התחבר'),
(7, 1, 'Shops'),
(7, 3, 'חנויות'),
(8, 1, 'Shop URLs'),
(8, 3, 'כתובת חנות URL'),
(9, 1, 'Catalog'),
(9, 3, 'קטלוג'),
(10, 1, 'Orders'),
(10, 3, 'הזמנות'),
(11, 1, 'Customers'),
(11, 3, 'לקוחות'),
(12, 1, 'Price Rules'),
(12, 3, 'חוקי מחיר'),
(13, 1, 'Shipping'),
(13, 3, 'משלוח'),
(14, 1, 'Localization'),
(14, 3, 'לוקליזציה'),
(15, 1, 'Modules'),
(15, 3, 'מודולים'),
(16, 1, 'Preferences'),
(16, 3, 'העדפות'),
(17, 1, 'Advanced Parameters'),
(17, 3, 'הגדרות מתקדמות'),
(18, 1, 'Administration'),
(18, 3, 'ניהול'),
(19, 1, 'Stats'),
(19, 3, 'סטטיסטיקה'),
(20, 1, 'Stock'),
(20, 3, 'מלאי'),
(21, 1, 'Products'),
(21, 3, 'מוצרים'),
(22, 1, 'Categories'),
(22, 3, 'קטגוריות'),
(23, 1, 'Monitoring'),
(23, 3, 'ניטור ובקרה'),
(24, 1, 'Attributes and Values'),
(24, 3, 'מאפיינים וערכים'),
(25, 1, 'Features'),
(25, 3, 'תכונות'),
(26, 1, 'Manufacturers'),
(26, 3, 'יצרנים'),
(27, 1, 'Suppliers'),
(27, 3, 'ספקים'),
(28, 1, 'Image Mapping'),
(28, 3, 'מיפוי תמונה'),
(29, 1, 'Tags'),
(29, 3, 'תגיות'),
(30, 1, 'Attachments'),
(30, 3, 'קבצים מצורפים'),
(31, 1, 'Orders'),
(31, 3, 'הזמנות'),
(32, 1, 'Invoices'),
(32, 3, 'חשבוניות'),
(33, 1, 'Merchandise Returns'),
(33, 3, 'החזרת מוצרים'),
(34, 1, 'Delivery Slips'),
(34, 3, 'תעודות משלוח'),
(35, 1, 'Credit Slips'),
(35, 3, 'שוברי זיכוי'),
(36, 1, 'Statuses'),
(36, 3, 'סטטוסי הזמנה ומלאי'),
(37, 1, 'Order Messages'),
(37, 3, 'תבניות הודעות הזמנה'),
(38, 1, 'Customers'),
(38, 3, 'לקוחות'),
(39, 1, 'Addresses'),
(39, 3, 'כתובות'),
(40, 1, 'Groups'),
(40, 3, 'קבוצות'),
(41, 1, 'Shopping Carts'),
(41, 3, 'עגלות קניות'),
(42, 1, 'Customer Service'),
(42, 3, 'שירות לקוחות'),
(43, 1, 'Contacts'),
(43, 3, 'ממשקי יצירת קשר'),
(44, 1, 'Titles'),
(44, 3, 'מגדר/שמות תואר'),
(45, 1, 'Outstanding'),
(45, 3, 'יוצא מן הכלל'),
(46, 1, 'Cart Rules'),
(46, 3, 'תמחור לפי לקוח'),
(47, 1, 'Catalog Price Rules'),
(47, 3, 'תמחור לפי מוצרים'),
(48, 1, 'Marketing'),
(48, 3, 'אסטרטגיות שיווק'),
(49, 1, 'Preferences'),
(49, 3, 'משלוח'),
(50, 1, 'Carriers'),
(50, 3, 'מובילים'),
(51, 1, NULL),
(51, 3, NULL),
(52, 1, 'Localization'),
(52, 3, 'לוקליזציה'),
(53, 1, 'Languages'),
(53, 3, 'שפות'),
(54, 1, 'Zones'),
(54, 3, 'איזורי משלוח'),
(55, 1, 'Countries'),
(55, 3, 'ארצות'),
(56, 1, 'States'),
(56, 3, 'מדינות'),
(57, 1, 'Currencies'),
(57, 3, 'מטבעות'),
(58, 1, 'Taxes'),
(58, 3, 'מסים'),
(59, 1, 'Tax Rules'),
(59, 3, 'חוקי מס'),
(60, 1, 'Translations'),
(60, 3, 'תרגומים'),
(61, 1, 'Modules'),
(61, 3, 'מודולים'),
(62, 1, 'Modules & Themes Catalog'),
(62, 3, 'קטלוג מודולים וערכות עיצובים'),
(63, 1, 'Positions'),
(63, 3, 'מיקומים'),
(64, 1, 'Payment'),
(64, 3, 'תשלום'),
(65, 1, 'General'),
(65, 3, 'כללי'),
(66, 1, 'Orders'),
(66, 3, 'הזמנות'),
(67, 1, 'Products'),
(67, 3, 'מוצרים'),
(68, 1, 'Customers'),
(68, 3, 'לקוחות'),
(69, 1, 'Themes'),
(69, 3, 'ערכות עיצוב'),
(70, 1, 'SEO & URLs'),
(70, 3, 'קידום אתרים וכתובות'),
(71, 1, 'CMS'),
(71, 3, 'ניהול תוכן'),
(72, 1, 'Images'),
(72, 3, 'תמונות'),
(73, 1, 'Store Contacts'),
(73, 3, 'סניפים ומיקום'),
(74, 1, 'Search'),
(74, 3, 'חפש'),
(75, 1, 'Maintenance'),
(75, 3, 'תחזוקה'),
(76, 1, 'Geolocation'),
(76, 3, 'מיקום גיאוגרפי'),
(77, 1, 'Configuration Information'),
(77, 3, 'מידע תצורה'),
(78, 1, 'Performance'),
(78, 3, 'ביצועים'),
(79, 1, 'E-mail'),
(79, 3, 'אימייל'),
(80, 1, 'Multistore'),
(80, 3, 'ריבוי חנויות'),
(81, 1, 'CSV Import'),
(81, 3, 'יבוא CSV'),
(82, 1, 'DB Backup'),
(82, 3, 'גיבוי מסד נתונים'),
(83, 1, 'SQL Manager'),
(83, 3, 'מנהל SQL'),
(84, 1, 'Logs'),
(84, 3, 'קבצי יומן'),
(85, 1, 'Webservice'),
(85, 3, 'שירותי רשת'),
(86, 1, 'Preferences'),
(86, 3, 'העדפות'),
(87, 1, 'Quick Access'),
(87, 3, 'גישה מהירה'),
(88, 1, 'Employees'),
(88, 3, 'עובדים'),
(89, 1, 'Profiles'),
(89, 3, 'פרופילים'),
(90, 1, 'Permissions'),
(90, 3, 'הרשאות'),
(91, 1, 'Menus'),
(91, 3, 'תפריטים'),
(92, 1, 'Stats'),
(92, 3, 'סטטיסטיקה'),
(93, 1, 'Search Engines'),
(93, 3, 'מנועי חיפוש'),
(94, 1, 'Referrers'),
(94, 3, 'אפילייטס'),
(95, 1, 'Warehouses'),
(95, 3, 'מחסנים'),
(96, 1, 'Stock Management'),
(96, 3, 'ניהול מלאי'),
(97, 1, 'Stock Movement'),
(97, 3, 'תנועות מלאי'),
(98, 1, 'Instant Stock Status'),
(98, 3, 'מצב מלאי עכשווי'),
(99, 1, 'Stock Coverage'),
(99, 3, 'יתרת מלאי'),
(100, 1, 'Supply orders'),
(100, 3, 'הזמנות מלאי'),
(101, 1, 'Configuration'),
(101, 3, 'הגדרות'),
(102, 1, 'Merchant Expertise'),
(102, 3, 'Merchant Expertise'),
(103, 1, 'St Blog Module'),
(103, 3, 'St Blog Module'),
(104, 1, 'St Blog Categories'),
(104, 3, 'St Blog Categories'),
(105, 1, 'St Blog Configuration'),
(105, 3, 'St Blog Configuration'),
(106, 1, 'St Blog Comments'),
(106, 3, 'St Blog Comments');

-- --------------------------------------------------------

--
-- Table structure for table `ps_tab_module_preference`
--

CREATE TABLE IF NOT EXISTS `ps_tab_module_preference` (
  `id_tab_module_preference` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `id_tab` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tab_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`id_tab`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_tag`
--

CREATE TABLE IF NOT EXISTS `ps_tag` (
  `id_tag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `ps_tag`
--

INSERT INTO `ps_tag` (`id_tag`, `id_lang`, `name`) VALUES
(1, 1, 'apple'),
(2, 1, 'ipod'),
(3, 1, 'nano'),
(4, 1, 'superdrive'),
(5, 1, 'Ipod touch'),
(6, 1, 'shuffle'),
(7, 3, 'אדום'),
(8, 3, 'נקודות'),
(9, 3, 'כחול'),
(10, 3, 'ורוד'),
(11, 3, 'מסתובבת'),
(12, 3, 'פרחים'),
(13, 3, 'מיסתובבת'),
(14, 3, 'לבן'),
(15, 3, 'פס-כסף'),
(16, 3, 'כתפיות'),
(17, 3, 'אפרסק'),
(18, 3, 'כתום');

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax`
--

CREATE TABLE IF NOT EXISTS `ps_tax` (
  `id_tax` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tax`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_tax`
--

INSERT INTO `ps_tax` (`id_tax`, `rate`, `active`, `deleted`) VALUES
(1, '18.000', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax_lang`
--

CREATE TABLE IF NOT EXISTS `ps_tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tax`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_tax_lang`
--

INSERT INTO `ps_tax_lang` (`id_tax`, `id_lang`, `name`) VALUES
(1, 1, 'Ma''am IL 18%'),
(1, 3, 'Ma''am IL 18%');

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax_rule`
--

CREATE TABLE IF NOT EXISTS `ps_tax_rule` (
  `id_tax_rule` int(11) NOT NULL AUTO_INCREMENT,
  `id_tax_rules_group` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `behavior` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tax_rule`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_tax` (`id_tax`),
  KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_tax_rule`
--

INSERT INTO `ps_tax_rule` (`id_tax_rule`, `id_tax_rules_group`, `id_country`, `id_state`, `zipcode_from`, `zipcode_to`, `id_tax`, `behavior`, `description`) VALUES
(1, 1, 29, 0, '0', '0', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax_rules_group`
--

CREATE TABLE IF NOT EXISTS `ps_tax_rules_group` (
  `id_tax_rules_group` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ps_tax_rules_group`
--

INSERT INTO `ps_tax_rules_group` (`id_tax_rules_group`, `name`, `active`) VALUES
(1, 'IL Standard Rate (18%)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_tax_rules_group_shop`
--

CREATE TABLE IF NOT EXISTS `ps_tax_rules_group_shop` (
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_tax_rules_group_shop`
--

INSERT INTO `ps_tax_rules_group_shop` (`id_tax_rules_group`, `id_shop`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_theme`
--

CREATE TABLE IF NOT EXISTS `ps_theme` (
  `id_theme` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `directory` varchar(64) NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ps_theme`
--

INSERT INTO `ps_theme` (`id_theme`, `name`, `directory`) VALUES
(1, 'default', 'default'),
(2, 'Transformer', 'transformer');

-- --------------------------------------------------------

--
-- Table structure for table `ps_theme_specific`
--

CREATE TABLE IF NOT EXISTS `ps_theme_specific` (
  `id_theme` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `entity` int(11) unsigned NOT NULL,
  `id_object` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_theme`,`id_shop`,`entity`,`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_timezone`
--

CREATE TABLE IF NOT EXISTS `ps_timezone` (
  `id_timezone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=561 ;

--
-- Dumping data for table `ps_timezone`
--

INSERT INTO `ps_timezone` (`id_timezone`, `name`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Asmera'),
(7, 'Africa/Bamako'),
(8, 'Africa/Bangui'),
(9, 'Africa/Banjul'),
(10, 'Africa/Bissau'),
(11, 'Africa/Blantyre'),
(12, 'Africa/Brazzaville'),
(13, 'Africa/Bujumbura'),
(14, 'Africa/Cairo'),
(15, 'Africa/Casablanca'),
(16, 'Africa/Ceuta'),
(17, 'Africa/Conakry'),
(18, 'Africa/Dakar'),
(19, 'Africa/Dar_es_Salaam'),
(20, 'Africa/Djibouti'),
(21, 'Africa/Douala'),
(22, 'Africa/El_Aaiun'),
(23, 'Africa/Freetown'),
(24, 'Africa/Gaborone'),
(25, 'Africa/Harare'),
(26, 'Africa/Johannesburg'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Timbuktu'),
(51, 'Africa/Tripoli'),
(52, 'Africa/Tunis'),
(53, 'Africa/Windhoek'),
(54, 'America/Adak'),
(55, 'America/Anchorage '),
(56, 'America/Anguilla'),
(57, 'America/Antigua'),
(58, 'America/Araguaina'),
(59, 'America/Argentina/Buenos_Aires'),
(60, 'America/Argentina/Catamarca'),
(61, 'America/Argentina/ComodRivadavia'),
(62, 'America/Argentina/Cordoba'),
(63, 'America/Argentina/Jujuy'),
(64, 'America/Argentina/La_Rioja'),
(65, 'America/Argentina/Mendoza'),
(66, 'America/Argentina/Rio_Gallegos'),
(67, 'America/Argentina/Salta'),
(68, 'America/Argentina/San_Juan'),
(69, 'America/Argentina/San_Luis'),
(70, 'America/Argentina/Tucuman'),
(71, 'America/Argentina/Ushuaia'),
(72, 'America/Aruba'),
(73, 'America/Asuncion'),
(74, 'America/Atikokan'),
(75, 'America/Atka'),
(76, 'America/Bahia'),
(77, 'America/Barbados'),
(78, 'America/Belem'),
(79, 'America/Belize'),
(80, 'America/Blanc-Sablon'),
(81, 'America/Boa_Vista'),
(82, 'America/Bogota'),
(83, 'America/Boise'),
(84, 'America/Buenos_Aires'),
(85, 'America/Cambridge_Bay'),
(86, 'America/Campo_Grande'),
(87, 'America/Cancun'),
(88, 'America/Caracas'),
(89, 'America/Catamarca'),
(90, 'America/Cayenne'),
(91, 'America/Cayman'),
(92, 'America/Chicago'),
(93, 'America/Chihuahua'),
(94, 'America/Coral_Harbour'),
(95, 'America/Cordoba'),
(96, 'America/Costa_Rica'),
(97, 'America/Cuiaba'),
(98, 'America/Curacao'),
(99, 'America/Danmarkshavn'),
(100, 'America/Dawson'),
(101, 'America/Dawson_Creek'),
(102, 'America/Denver'),
(103, 'America/Detroit'),
(104, 'America/Dominica'),
(105, 'America/Edmonton'),
(106, 'America/Eirunepe'),
(107, 'America/El_Salvador'),
(108, 'America/Ensenada'),
(109, 'America/Fort_Wayne'),
(110, 'America/Fortaleza'),
(111, 'America/Glace_Bay'),
(112, 'America/Godthab'),
(113, 'America/Goose_Bay'),
(114, 'America/Grand_Turk'),
(115, 'America/Grenada'),
(116, 'America/Guadeloupe'),
(117, 'America/Guatemala'),
(118, 'America/Guayaquil'),
(119, 'America/Guyana'),
(120, 'America/Halifax'),
(121, 'America/Havana'),
(122, 'America/Hermosillo'),
(123, 'America/Indiana/Indianapolis'),
(124, 'America/Indiana/Knox'),
(125, 'America/Indiana/Marengo'),
(126, 'America/Indiana/Petersburg'),
(127, 'America/Indiana/Tell_City'),
(128, 'America/Indiana/Vevay'),
(129, 'America/Indiana/Vincennes'),
(130, 'America/Indiana/Winamac'),
(131, 'America/Indianapolis'),
(132, 'America/Inuvik'),
(133, 'America/Iqaluit'),
(134, 'America/Jamaica'),
(135, 'America/Jujuy'),
(136, 'America/Juneau'),
(137, 'America/Kentucky/Louisville'),
(138, 'America/Kentucky/Monticello'),
(139, 'America/Knox_IN'),
(140, 'America/La_Paz'),
(141, 'America/Lima'),
(142, 'America/Los_Angeles'),
(143, 'America/Louisville'),
(144, 'America/Maceio'),
(145, 'America/Managua'),
(146, 'America/Manaus'),
(147, 'America/Marigot'),
(148, 'America/Martinique'),
(149, 'America/Mazatlan'),
(150, 'America/Mendoza'),
(151, 'America/Menominee'),
(152, 'America/Merida'),
(153, 'America/Mexico_City'),
(154, 'America/Miquelon'),
(155, 'America/Moncton'),
(156, 'America/Monterrey'),
(157, 'America/Montevideo'),
(158, 'America/Montreal'),
(159, 'America/Montserrat'),
(160, 'America/Nassau'),
(161, 'America/New_York'),
(162, 'America/Nipigon'),
(163, 'America/Nome'),
(164, 'America/Noronha'),
(165, 'America/North_Dakota/Center'),
(166, 'America/North_Dakota/New_Salem'),
(167, 'America/Panama'),
(168, 'America/Pangnirtung'),
(169, 'America/Paramaribo'),
(170, 'America/Phoenix'),
(171, 'America/Port-au-Prince'),
(172, 'America/Port_of_Spain'),
(173, 'America/Porto_Acre'),
(174, 'America/Porto_Velho'),
(175, 'America/Puerto_Rico'),
(176, 'America/Rainy_River'),
(177, 'America/Rankin_Inlet'),
(178, 'America/Recife'),
(179, 'America/Regina'),
(180, 'America/Resolute'),
(181, 'America/Rio_Branco'),
(182, 'America/Rosario'),
(183, 'America/Santarem'),
(184, 'America/Santiago'),
(185, 'America/Santo_Domingo'),
(186, 'America/Sao_Paulo'),
(187, 'America/Scoresbysund'),
(188, 'America/Shiprock'),
(189, 'America/St_Barthelemy'),
(190, 'America/St_Johns'),
(191, 'America/St_Kitts'),
(192, 'America/St_Lucia'),
(193, 'America/St_Thomas'),
(194, 'America/St_Vincent'),
(195, 'America/Swift_Current'),
(196, 'America/Tegucigalpa'),
(197, 'America/Thule'),
(198, 'America/Thunder_Bay'),
(199, 'America/Tijuana'),
(200, 'America/Toronto'),
(201, 'America/Tortola'),
(202, 'America/Vancouver'),
(203, 'America/Virgin'),
(204, 'America/Whitehorse'),
(205, 'America/Winnipeg'),
(206, 'America/Yakutat'),
(207, 'America/Yellowknife'),
(208, 'Antarctica/Casey'),
(209, 'Antarctica/Davis'),
(210, 'Antarctica/DumontDUrville'),
(211, 'Antarctica/Mawson'),
(212, 'Antarctica/McMurdo'),
(213, 'Antarctica/Palmer'),
(214, 'Antarctica/Rothera'),
(215, 'Antarctica/South_Pole'),
(216, 'Antarctica/Syowa'),
(217, 'Antarctica/Vostok'),
(218, 'Arctic/Longyearbyen'),
(219, 'Asia/Aden'),
(220, 'Asia/Almaty'),
(221, 'Asia/Amman'),
(222, 'Asia/Anadyr'),
(223, 'Asia/Aqtau'),
(224, 'Asia/Aqtobe'),
(225, 'Asia/Ashgabat'),
(226, 'Asia/Ashkhabad'),
(227, 'Asia/Baghdad'),
(228, 'Asia/Bahrain'),
(229, 'Asia/Baku'),
(230, 'Asia/Bangkok'),
(231, 'Asia/Beirut'),
(232, 'Asia/Bishkek'),
(233, 'Asia/Brunei'),
(234, 'Asia/Calcutta'),
(235, 'Asia/Choibalsan'),
(236, 'Asia/Chongqing'),
(237, 'Asia/Chungking'),
(238, 'Asia/Colombo'),
(239, 'Asia/Dacca'),
(240, 'Asia/Damascus'),
(241, 'Asia/Dhaka'),
(242, 'Asia/Dili'),
(243, 'Asia/Dubai'),
(244, 'Asia/Dushanbe'),
(245, 'Asia/Gaza'),
(246, 'Asia/Harbin'),
(247, 'Asia/Ho_Chi_Minh'),
(248, 'Asia/Hong_Kong'),
(249, 'Asia/Hovd'),
(250, 'Asia/Irkutsk'),
(251, 'Asia/Istanbul'),
(252, 'Asia/Jakarta'),
(253, 'Asia/Jayapura'),
(254, 'Asia/Jerusalem'),
(255, 'Asia/Kabul'),
(256, 'Asia/Kamchatka'),
(257, 'Asia/Karachi'),
(258, 'Asia/Kashgar'),
(259, 'Asia/Kathmandu'),
(260, 'Asia/Katmandu'),
(261, 'Asia/Kolkata'),
(262, 'Asia/Krasnoyarsk'),
(263, 'Asia/Kuala_Lumpur'),
(264, 'Asia/Kuching'),
(265, 'Asia/Kuwait'),
(266, 'Asia/Macao'),
(267, 'Asia/Macau'),
(268, 'Asia/Magadan'),
(269, 'Asia/Makassar'),
(270, 'Asia/Manila'),
(271, 'Asia/Muscat'),
(272, 'Asia/Nicosia'),
(273, 'Asia/Novosibirsk'),
(274, 'Asia/Omsk'),
(275, 'Asia/Oral'),
(276, 'Asia/Phnom_Penh'),
(277, 'Asia/Pontianak'),
(278, 'Asia/Pyongyang'),
(279, 'Asia/Qatar'),
(280, 'Asia/Qyzylorda'),
(281, 'Asia/Rangoon'),
(282, 'Asia/Riyadh'),
(283, 'Asia/Saigon'),
(284, 'Asia/Sakhalin'),
(285, 'Asia/Samarkand'),
(286, 'Asia/Seoul'),
(287, 'Asia/Shanghai'),
(288, 'Asia/Singapore'),
(289, 'Asia/Taipei'),
(290, 'Asia/Tashkent'),
(291, 'Asia/Tbilisi'),
(292, 'Asia/Tehran'),
(293, 'Asia/Tel_Aviv'),
(294, 'Asia/Thimbu'),
(295, 'Asia/Thimphu'),
(296, 'Asia/Tokyo'),
(297, 'Asia/Ujung_Pandang'),
(298, 'Asia/Ulaanbaatar'),
(299, 'Asia/Ulan_Bator'),
(300, 'Asia/Urumqi'),
(301, 'Asia/Vientiane'),
(302, 'Asia/Vladivostok'),
(303, 'Asia/Yakutsk'),
(304, 'Asia/Yekaterinburg'),
(305, 'Asia/Yerevan'),
(306, 'Atlantic/Azores'),
(307, 'Atlantic/Bermuda'),
(308, 'Atlantic/Canary'),
(309, 'Atlantic/Cape_Verde'),
(310, 'Atlantic/Faeroe'),
(311, 'Atlantic/Faroe'),
(312, 'Atlantic/Jan_Mayen'),
(313, 'Atlantic/Madeira'),
(314, 'Atlantic/Reykjavik'),
(315, 'Atlantic/South_Georgia'),
(316, 'Atlantic/St_Helena'),
(317, 'Atlantic/Stanley'),
(318, 'Australia/ACT'),
(319, 'Australia/Adelaide'),
(320, 'Australia/Brisbane'),
(321, 'Australia/Broken_Hill'),
(322, 'Australia/Canberra'),
(323, 'Australia/Currie'),
(324, 'Australia/Darwin'),
(325, 'Australia/Eucla'),
(326, 'Australia/Hobart'),
(327, 'Australia/LHI'),
(328, 'Australia/Lindeman'),
(329, 'Australia/Lord_Howe'),
(330, 'Australia/Melbourne'),
(331, 'Australia/North'),
(332, 'Australia/NSW'),
(333, 'Australia/Perth'),
(334, 'Australia/Queensland'),
(335, 'Australia/South'),
(336, 'Australia/Sydney'),
(337, 'Australia/Tasmania'),
(338, 'Australia/Victoria'),
(339, 'Australia/West'),
(340, 'Australia/Yancowinna'),
(341, 'Europe/Amsterdam'),
(342, 'Europe/Andorra'),
(343, 'Europe/Athens'),
(344, 'Europe/Belfast'),
(345, 'Europe/Belgrade'),
(346, 'Europe/Berlin'),
(347, 'Europe/Bratislava'),
(348, 'Europe/Brussels'),
(349, 'Europe/Bucharest'),
(350, 'Europe/Budapest'),
(351, 'Europe/Chisinau'),
(352, 'Europe/Copenhagen'),
(353, 'Europe/Dublin'),
(354, 'Europe/Gibraltar'),
(355, 'Europe/Guernsey'),
(356, 'Europe/Helsinki'),
(357, 'Europe/Isle_of_Man'),
(358, 'Europe/Istanbul'),
(359, 'Europe/Jersey'),
(360, 'Europe/Kaliningrad'),
(361, 'Europe/Kiev'),
(362, 'Europe/Lisbon'),
(363, 'Europe/Ljubljana'),
(364, 'Europe/London'),
(365, 'Europe/Luxembourg'),
(366, 'Europe/Madrid'),
(367, 'Europe/Malta'),
(368, 'Europe/Mariehamn'),
(369, 'Europe/Minsk'),
(370, 'Europe/Monaco'),
(371, 'Europe/Moscow'),
(372, 'Europe/Nicosia'),
(373, 'Europe/Oslo'),
(374, 'Europe/Paris'),
(375, 'Europe/Podgorica'),
(376, 'Europe/Prague'),
(377, 'Europe/Riga'),
(378, 'Europe/Rome'),
(379, 'Europe/Samara'),
(380, 'Europe/San_Marino'),
(381, 'Europe/Sarajevo'),
(382, 'Europe/Simferopol'),
(383, 'Europe/Skopje'),
(384, 'Europe/Sofia'),
(385, 'Europe/Stockholm'),
(386, 'Europe/Tallinn'),
(387, 'Europe/Tirane'),
(388, 'Europe/Tiraspol'),
(389, 'Europe/Uzhgorod'),
(390, 'Europe/Vaduz'),
(391, 'Europe/Vatican'),
(392, 'Europe/Vienna'),
(393, 'Europe/Vilnius'),
(394, 'Europe/Volgograd'),
(395, 'Europe/Warsaw'),
(396, 'Europe/Zagreb'),
(397, 'Europe/Zaporozhye'),
(398, 'Europe/Zurich'),
(399, 'Indian/Antananarivo'),
(400, 'Indian/Chagos'),
(401, 'Indian/Christmas'),
(402, 'Indian/Cocos'),
(403, 'Indian/Comoro'),
(404, 'Indian/Kerguelen'),
(405, 'Indian/Mahe'),
(406, 'Indian/Maldives'),
(407, 'Indian/Mauritius'),
(408, 'Indian/Mayotte'),
(409, 'Indian/Reunion'),
(410, 'Pacific/Apia'),
(411, 'Pacific/Auckland'),
(412, 'Pacific/Chatham'),
(413, 'Pacific/Easter'),
(414, 'Pacific/Efate'),
(415, 'Pacific/Enderbury'),
(416, 'Pacific/Fakaofo'),
(417, 'Pacific/Fiji'),
(418, 'Pacific/Funafuti'),
(419, 'Pacific/Galapagos'),
(420, 'Pacific/Gambier'),
(421, 'Pacific/Guadalcanal'),
(422, 'Pacific/Guam'),
(423, 'Pacific/Honolulu'),
(424, 'Pacific/Johnston'),
(425, 'Pacific/Kiritimati'),
(426, 'Pacific/Kosrae'),
(427, 'Pacific/Kwajalein'),
(428, 'Pacific/Majuro'),
(429, 'Pacific/Marquesas'),
(430, 'Pacific/Midway'),
(431, 'Pacific/Nauru'),
(432, 'Pacific/Niue'),
(433, 'Pacific/Norfolk'),
(434, 'Pacific/Noumea'),
(435, 'Pacific/Pago_Pago'),
(436, 'Pacific/Palau'),
(437, 'Pacific/Pitcairn'),
(438, 'Pacific/Ponape'),
(439, 'Pacific/Port_Moresby'),
(440, 'Pacific/Rarotonga'),
(441, 'Pacific/Saipan'),
(442, 'Pacific/Samoa'),
(443, 'Pacific/Tahiti'),
(444, 'Pacific/Tarawa'),
(445, 'Pacific/Tongatapu'),
(446, 'Pacific/Truk'),
(447, 'Pacific/Wake'),
(448, 'Pacific/Wallis'),
(449, 'Pacific/Yap'),
(450, 'Brazil/Acre'),
(451, 'Brazil/DeNoronha'),
(452, 'Brazil/East'),
(453, 'Brazil/West'),
(454, 'Canada/Atlantic'),
(455, 'Canada/Central'),
(456, 'Canada/East-Saskatchewan'),
(457, 'Canada/Eastern'),
(458, 'Canada/Mountain'),
(459, 'Canada/Newfoundland'),
(460, 'Canada/Pacific'),
(461, 'Canada/Saskatchewan'),
(462, 'Canada/Yukon'),
(463, 'CET'),
(464, 'Chile/Continental'),
(465, 'Chile/EasterIsland'),
(466, 'CST6CDT'),
(467, 'Cuba'),
(468, 'EET'),
(469, 'Egypt'),
(470, 'Eire'),
(471, 'EST'),
(472, 'EST5EDT'),
(473, 'Etc/GMT'),
(474, 'Etc/GMT+0'),
(475, 'Etc/GMT+1'),
(476, 'Etc/GMT+10'),
(477, 'Etc/GMT+11'),
(478, 'Etc/GMT+12'),
(479, 'Etc/GMT+2'),
(480, 'Etc/GMT+3'),
(481, 'Etc/GMT+4'),
(482, 'Etc/GMT+5'),
(483, 'Etc/GMT+6'),
(484, 'Etc/GMT+7'),
(485, 'Etc/GMT+8'),
(486, 'Etc/GMT+9'),
(487, 'Etc/GMT-0'),
(488, 'Etc/GMT-1'),
(489, 'Etc/GMT-10'),
(490, 'Etc/GMT-11'),
(491, 'Etc/GMT-12'),
(492, 'Etc/GMT-13'),
(493, 'Etc/GMT-14'),
(494, 'Etc/GMT-2'),
(495, 'Etc/GMT-3'),
(496, 'Etc/GMT-4'),
(497, 'Etc/GMT-5'),
(498, 'Etc/GMT-6'),
(499, 'Etc/GMT-7'),
(500, 'Etc/GMT-8'),
(501, 'Etc/GMT-9'),
(502, 'Etc/GMT0'),
(503, 'Etc/Greenwich'),
(504, 'Etc/UCT'),
(505, 'Etc/Universal'),
(506, 'Etc/UTC'),
(507, 'Etc/Zulu'),
(508, 'Factory'),
(509, 'GB'),
(510, 'GB-Eire'),
(511, 'GMT'),
(512, 'GMT+0'),
(513, 'GMT-0'),
(514, 'GMT0'),
(515, 'Greenwich'),
(516, 'Hongkong'),
(517, 'HST'),
(518, 'Iceland'),
(519, 'Iran'),
(520, 'Israel'),
(521, 'Jamaica'),
(522, 'Japan'),
(523, 'Kwajalein'),
(524, 'Libya'),
(525, 'MET'),
(526, 'Mexico/BajaNorte'),
(527, 'Mexico/BajaSur'),
(528, 'Mexico/General'),
(529, 'MST'),
(530, 'MST7MDT'),
(531, 'Navajo'),
(532, 'NZ'),
(533, 'NZ-CHAT'),
(534, 'Poland'),
(535, 'Portugal'),
(536, 'PRC'),
(537, 'PST8PDT'),
(538, 'ROC'),
(539, 'ROK'),
(540, 'Singapore'),
(541, 'Turkey'),
(542, 'UCT'),
(543, 'Universal'),
(544, 'US/Alaska'),
(545, 'US/Aleutian'),
(546, 'US/Arizona'),
(547, 'US/Central'),
(548, 'US/East-Indiana'),
(549, 'US/Eastern'),
(550, 'US/Hawaii'),
(551, 'US/Indiana-Starke'),
(552, 'US/Michigan'),
(553, 'US/Mountain'),
(554, 'US/Pacific'),
(555, 'US/Pacific-New'),
(556, 'US/Samoa'),
(557, 'UTC'),
(558, 'W-SU'),
(559, 'WET'),
(560, 'Zulu');

-- --------------------------------------------------------

--
-- Table structure for table `ps_warehouse`
--

CREATE TABLE IF NOT EXISTS `ps_warehouse` (
  `id_warehouse` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_currency` int(11) unsigned NOT NULL,
  `id_address` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_warehouse_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_warehouse_carrier` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_carrier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_carrier` (`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_warehouse_product_location`
--

CREATE TABLE IF NOT EXISTS `ps_warehouse_product_location` (
  `id_warehouse_product_location` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `location` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_warehouse_product_location`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_warehouse_shop`
--

CREATE TABLE IF NOT EXISTS `ps_warehouse_shop` (
  `id_shop` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_shop`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_webservice_account`
--

CREATE TABLE IF NOT EXISTS `ps_webservice_account` (
  `id_webservice_account` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint(2) NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_webservice_account`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_webservice_account_shop`
--

CREATE TABLE IF NOT EXISTS `ps_webservice_account_shop` (
  `id_webservice_account` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_webservice_account`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_webservice_permission`
--

CREATE TABLE IF NOT EXISTS `ps_webservice_permission` (
  `id_webservice_permission` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int(11) NOT NULL,
  PRIMARY KEY (`id_webservice_permission`),
  UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  KEY `resource` (`resource`),
  KEY `method` (`method`),
  KEY `id_webservice_account` (`id_webservice_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_web_browser`
--

CREATE TABLE IF NOT EXISTS `ps_web_browser` (
  `id_web_browser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `ps_web_browser`
--

INSERT INTO `ps_web_browser` (`id_web_browser`, `name`) VALUES
(1, 'Safari'),
(2, 'Safari iPad'),
(3, 'Firefox'),
(4, 'Opera'),
(5, 'IE 6'),
(6, 'IE 7'),
(7, 'IE 8'),
(8, 'IE 9'),
(9, 'IE 10'),
(10, 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `ps_wishlist`
--

CREATE TABLE IF NOT EXISTS `ps_wishlist` (
  `id_wishlist` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `token` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `counter` int(10) unsigned DEFAULT NULL,
  `id_shop` int(10) unsigned DEFAULT '1',
  `id_shop_group` int(10) unsigned DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_wishlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_wishlist_email`
--

CREATE TABLE IF NOT EXISTS `ps_wishlist_email` (
  `id_wishlist` int(10) unsigned NOT NULL,
  `email` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_wishlist_product`
--

CREATE TABLE IF NOT EXISTS `ps_wishlist_product` (
  `id_wishlist_product` int(10) NOT NULL AUTO_INCREMENT,
  `id_wishlist` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_wishlist_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ps_wishlist_product_cart`
--

CREATE TABLE IF NOT EXISTS `ps_wishlist_product_cart` (
  `id_wishlist_product` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ps_zone`
--

CREATE TABLE IF NOT EXISTS `ps_zone` (
  `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `ps_zone`
--

INSERT INTO `ps_zone` (`id_zone`, `name`, `active`) VALUES
(1, 'Europe', 1),
(2, 'North America', 1),
(3, 'Asia', 1),
(4, 'Africa', 1),
(5, 'Oceania', 1),
(6, 'South America', 1),
(7, 'Europe (out E.U)', 1),
(8, 'Central America/Antilla', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ps_zone_shop`
--

CREATE TABLE IF NOT EXISTS `ps_zone_shop` (
  `id_zone` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_zone`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ps_zone_shop`
--

INSERT INTO `ps_zone_shop` (`id_zone`, `id_shop`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
