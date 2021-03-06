-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 12, 2018 at 05:05 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooperstuff`
--

-- --------------------------------------------------------

--
-- Table structure for table `mainmodel`
--

DROP TABLE IF EXISTS `mainmodel`;
CREATE TABLE IF NOT EXISTS `mainmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(10) NOT NULL,
  `modelName` varchar(20) NOT NULL,
  `pricing` varchar(8) NOT NULL,
  `modelDetails` text NOT NULL,
  `imgPath` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model` (`model`),
  UNIQUE KEY `modelDesc` (`modelName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmodel`
--

INSERT INTO `mainmodel` (`id`, `model`, `modelName`, `pricing`, `modelDetails`, `imgPath`) VALUES
(0, 'F55', 'Mini Cooper F55', '27,790', 'It’s the turbocharged motoring icon, with more handles to love. The MINI 5 door boasts the same iconic good looks as its 3 door brother, but features an extra pair of passenger doors for practical access to its spacious cabin. And despite its slightly longer frame, the MINI 5 door’s wide, athletic stance and wheels-pushed-out design deliver the corner-carving agility you’d expect from any MINI.', 'F55.jpg'),
(2, 'R58', 'Mini Cooper R58', '40,590', 'It’s almost time to re-discover the redesigned, re-engineered, and completely revamped MINI Convertible. From feistier more fuel-efficient engines, to smarter innovations that let you stay open at every point along the way, this all-new MINI Convertible brings an array of enhancements to get excited about. And although the next iteration of this sun-seeking MINI will look and feel more refined than its predecessor, the open-air exhilaration that awaits you behind the wheel remains the same. We can’t wait for you to experience it in person. Until then... stay open.', 'R57.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(12) NOT NULL,
  `path` varchar(40) NOT NULL,
  `placeholder` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `model`, `path`, `placeholder`) VALUES
(1, 'F55', 'mini_1.mp4', 'vid1.jpg'),
(2, 'F55', 'mini_2.mp4', 'vid2.jpg'),
(3, 'F56', 'mini_3.mp4', 'vid3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `videos_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `videos_title` varchar(100) NOT NULL,
  `videos_year` varchar(4) NOT NULL,
  `videos_desc` text NOT NULL,
  `videos_thumbnail` varchar(100) NOT NULL,
  `videos_category` varchar(110) NOT NULL,
  `videos_source` varchar(110) NOT NULL,
  `videos_background` varchar(100) NOT NULL,
  PRIMARY KEY (`videos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`videos_id`, `videos_title`, `videos_year`, `videos_desc`, `videos_thumbnail`, `videos_category`, `videos_source`, `videos_background`) VALUES
(1, 'Stranger Things', '2016', 'This thrilling Netflix original drama stars Golden Globe-winning actress Winona Ryder as Joyce Byers, who lives in a small Indiana town in 1983', 'st_thumbnail.png', 'thriller', 'stranger_things.mp4', 'st_background.jpg'),
(2, 'Black Mirror', '2011', '\"Black Mirror\" is a contemporary reworking of \"The Twilight Zone\" with stories that tap into the collective unease about the modern world.', 'bm_thumbnail.jpg', 'thriller', 'black_mirror.mp4', 'black_mirror.jpg'),
(3, 'baywatch', '2017', 'When a dangerous crime wave hits the beach, the legendary Mitch Buchannon leads his elite squad of lifeguards on a mission to prove that you don\'t have to wear a badge to save the bay.', 'baywatch_thumbnail.jpg', 'comedy', 'baywatch.mp4', 'baywatch_background.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
