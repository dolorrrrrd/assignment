-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 10, 2022 at 03:34 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vueassignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `commenterId` int(11) DEFAULT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `pid` (`pid`,`commenterId`),
  KEY `commenterId` (`commenterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `url` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pid`, `uid`, `url`, `content`) VALUES
(1, 1, 'http://localhost:8080/postID=1', 'Chuck duis buffalo ipsum incididunt ut eiusmod pork chop andouille. Reprehenderit ribeye filet mignon anim irure, exercitation laboris shankle do. Id kevin cupim ullamco salami, et pariatur cow short loin adipisicing turkey. Cillum labore nostrud salami occaecat burgdoggen boudin, short ribs dolore incididunt ham id ball tip.\r\n\r\nMeatloaf short loin chicken veniam. Kielbasa non labore officia shank excepteur pork chop commodo proident bacon picanha. Rump lorem short loin swine cupim ham hock. Commodo deserunt ad dolore sirloin elit t-bone ham hock veniam.,Velit dolore capicola tenderloin. Meatloaf deserunt swine porchetta qui rump shankle commodo short loin. Bacon shoulder ham eiusmod, aliquip kielbasa et leberkas turducken eu chicken aliqua pig excepteur burgdoggen. Culpa picanha tongue consectetur, irure alcatra spare ribs veniam.,Minim short loin excepteur strip steak. Strip steak laboris id salami boudin ut, capicola rump buffalo bacon. T-bone pastrami voluptate quis tempor, in ullamco andouille adipisicing. Proident consequat swine ham alcatra flank fatback qui. Nisi adipisicing veniam id short ribs exercitation.,Excepteur voluptate enim pancetta buffalo boudin flank aute. Cow tempor aliquip elit strip steak pork loin. Bacon officia aliquip sed, fugiat duis excepteur pork loin andouille ball tip. Kielbasa quis anim cupim tenderloin consectetur picanha esse turkey kevin. Ut irure hamburger, aliquip fatback spare ribs andouille aliqua salami aute est chicken ham meatball laborum. Burgdoggen tri-tip aliqua pork, aute ut in landjaeger strip steak.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `acctype` enum('admin','user','guest','') NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uname` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `acctype`, `fname`, `lname`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin'),
(2, 'user1', 'user1', 'user', 'user1', 'user1'),
(3, 'guest1', 'guest1', 'guest', 'guest1', 'guest1'),
(4, 'user2', 'user2', 'user', 'user2', 'user2'),
(5, ' user3', 'user3', 'user', ' user3', ' user3'),
(6, 'admin1', 'admin1', 'user', 'admin1', 'admin1'),
(9, 'admin2', 'admin2', 'user', 'admin2', 'admin2'),
(10, 'admin3', 'admin3', 'user', 'admin3', 'admin3'),
(12, 'admin4', 'admin4', 'user', 'admin4', 'admin4'),
(16, 'admin5', 'admin5', 'admin', 'admin5', 'admin5'),
(18, 'rey', 'rey', 'admin', 'rey', 'rey'),
(23, 'rey1', 'rey1', 'admin', 'rey1', 'rey1'),
(25, 'asdf', 'asdf', 'user', 'asdf', 'asdf'),
(27, 'asdffdsa', 'asdf', 'admin', 'asdf', 'asdf'),
(28, 'rey2', 'rey2', 'admin', 'rey2', 'rey2');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`commenterId`) REFERENCES `users` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `posts` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
