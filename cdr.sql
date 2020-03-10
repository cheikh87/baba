-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 10 mars 2020 à 10:51
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `asterisk`
--

-- --------------------------------------------------------

--
-- Structure de la table `cdr`
--

DROP TABLE IF EXISTS `cdr`;
CREATE TABLE IF NOT EXISTS `cdr` (
  `calldate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clid` varchar(80) NOT NULL DEFAULT '',
  `src` varchar(80) NOT NULL DEFAULT '',
  `dst` varchar(80) NOT NULL DEFAULT '',
  `dcontext` varchar(80) NOT NULL DEFAULT '',
  `channel` varchar(80) NOT NULL DEFAULT '',
  `dstchannel` varchar(80) NOT NULL DEFAULT '',
  `lastapp` varchar(80) NOT NULL DEFAULT '',
  `lastdata` varchar(80) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `billsec` int(11) NOT NULL DEFAULT '0',
  `disposition` varchar(45) NOT NULL DEFAULT '',
  `amaflags` int(11) NOT NULL DEFAULT '0',
  `accountcode` varchar(20) NOT NULL DEFAULT '',
  `uniqueid` varchar(32) NOT NULL DEFAULT '',
  `userfield` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(120) DEFAULT NULL,
  KEY `calldate` (`calldate`),
  KEY `dst` (`dst`),
  KEY `accountcode` (`accountcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cdr`
--

INSERT INTO `cdr` (`calldate`, `clid`, `src`, `dst`, `dcontext`, `channel`, `dstchannel`, `lastapp`, `lastdata`, `duration`, `billsec`, `disposition`, `amaflags`, `accountcode`, `uniqueid`, `userfield`, `filename`) VALUES
('2020-02-25 22:36:59', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000000', 'SIP/6002-00000001', 'Dial', 'SIP/6002,60', 12, 6, 'ANSWERED', 3, '', '1582670219.0', '', NULL),
('2020-02-26 00:47:07', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000002', 'SIP/6002-00000003', 'Dial', 'SIP/6002,60', 25, 13, 'ANSWERED', 3, '', '1582678027.2', '', NULL),
('2020-02-26 00:51:00', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000004', 'SIP/6002-00000005', 'Dial', 'SIP/6002,60', 22, 9, 'ANSWERED', 3, '', '1582678260.4', '', '2020-03-09225755-6002.wav'),
('2020-02-26 00:53:20', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000006', 'SIP/6002-00000007', 'Dial', 'SIP/6002,60', 20, 11, 'ANSWERED', 3, '', '1582678400.6', '', '2020-03-09225825-6002.wav'),
('2020-02-26 01:57:46', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000008', 'SIP/6002-00000009', 'Dial', 'SIP/6002,60', 5, 0, 'NO ANSWER', 3, '', '1582682266.8', '', NULL),
('2020-02-26 01:57:57', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-0000000a', 'SIP/6002-0000000b', 'Dial', 'SIP/6002,60', 36, 23, 'ANSWERED', 3, '', '1582682277.10', '', NULL),
('2020-03-03 17:02:44', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000000', 'SIP/6002-00000001', 'Dial', 'SIP/6002,60', 20, 13, 'ANSWERED', 3, '', '1583254964.0', '', NULL),
('2020-03-03 17:21:41', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000002', 'SIP/6002-00000003', 'Dial', 'SIP/6002,60', 22, 12, 'ANSWERED', 3, '', '1583256101.2', '', NULL),
('2020-03-03 17:24:27', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000004', 'SIP/6002-00000005', 'Dial', 'SIP/6002,60', 20, 9, 'ANSWERED', 3, '', '1583256267.4', '', '2020-03-09111633-6002.wav'),
('2020-03-03 17:34:08', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000006', 'SIP/6002-00000007', 'Dial', 'SIP/6002,60', 18, 11, 'ANSWERED', 3, '', '1583256848.6', '', '2020-03-09111633-6002.wav'),
('2020-03-03 17:50:42', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000008', 'SIP/6002-00000009', 'Dial', 'SIP/6002,60', 12, 7, 'ANSWERED', 3, '', '1583257842.8', '', NULL),
('2020-03-03 17:56:57', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-0000000a', 'SIP/6002-0000000b', 'Dial', 'SIP/6002,60', 18, 9, 'ANSWERED', 3, '', '1583258217.10', '', NULL),
('2020-03-03 17:59:36', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-0000000c', 'SIP/6002-0000000d', 'Dial', 'SIP/6002,60', 15, 4, 'ANSWERED', 3, '', '1583258376.12', '', NULL),
('2020-03-03 18:06:09', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-0000000e', 'SIP/6002-0000000f', 'Dial', 'SIP/6002,60', 22, 10, 'ANSWERED', 3, '', '1583258769.14', '', NULL),
('2020-03-08 13:22:53', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000000', 'SIP/6002-00000001', 'Dial', 'SIP/6002,20', 24, 13, 'ANSWERED', 3, '', '1583673773.0', '', NULL),
('2020-03-08 13:36:27', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000002', 'SIP/6002-00000003', 'Dial', 'SIP/6002', 16, 6, 'ANSWERED', 3, '', '1583674587.2', '', NULL),
('2020-03-08 13:38:13', '\"peace\" <6002>', '6002', '6001', 'work', 'SIP/6002-00000004', 'SIP/6001-00000005', 'Dial', 'SIP/6001', 8, 5, 'ANSWERED', 3, '', '1583674693.4', '', NULL),
('2020-03-08 13:40:44', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000006', 'SIP/6002-00000007', 'Dial', 'SIP/6002', 21, 9, 'ANSWERED', 3, '', '1583674844.6', '', '111236-6002.wav'),
('2020-03-08 13:42:58', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000008', 'SIP/6002-00000009', 'Dial', 'SIP/6002', 25, 7, 'ANSWERED', 3, '', '1583674978.8', '', NULL),
('2020-03-08 13:47:00', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-0000000a', 'SIP/6002-0000000b', 'Dial', 'SIP/6002', 22, 13, 'ANSWERED', 3, '', '1583675220.10', '', NULL),
('2020-03-08 13:57:49', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-0000000c', 'SIP/6002-0000000d', 'Dial', 'SIP/6002,100', 59, 0, 'NO ANSWER', 3, '', '1583675869.12', '', NULL),
('2020-03-08 14:02:15', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-0000000e', 'SIP/6002-0000000f', 'Dial', 'SIP/6002,100', 16, 10, 'ANSWERED', 3, '', '1583676135.14', '', NULL),
('2020-03-08 14:03:28', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000010', 'SIP/6002-00000011', 'Dial', 'SIP/6002,100', 19, 9, 'ANSWERED', 3, '', '1583676208.16', '', NULL),
('2020-03-08 14:08:56', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000012', 'SIP/6002-00000013', 'Dial', 'SIP/6002,20', 27, 12, 'ANSWERED', 3, '', '1583676536.18', '', NULL),
('2020-03-08 14:53:49', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000014', 'SIP/6002-00000015', 'Dial', 'SIP/6002,20', 17, 5, 'ANSWERED', 3, '', '1583679229.20', '', '140856-6002.wav'),
('2020-03-08 15:02:30', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000016', 'SIP/6002-00000017', 'Dial', 'SIP/6002,20', 28, 13, 'ANSWERED', 3, '', '1583679750.22', '', '2020-03-09-230146-6002.wav'),
('2020-03-09 11:12:36', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000003', 'SIP/6002-00000004', 'Dial', 'SIP/6002,20', 23, 12, 'ANSWERED', 3, '', '1583752356.3', '', '1583752356.3-2020-03-09-11_12-6001-6002.wav'),
('2020-03-09 11:16:33', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000005', 'SIP/6002-00000006', 'Dial', 'SIP/6002,20', 22, 10, 'ANSWERED', 3, '', '1583752593.5', '', '1583752593.5-2020-03-09-11_16-6001-6002.wav'),
('2020-03-09 22:57:55', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000000', '', 'Dial', 'SIP/6002,20', 11, 11, 'ANSWERED', 3, '', '1583794675.0', '', '2020-03-09-22_57-6001-6002.wav'),
('2020-03-09 23:01:46', '\"baba\" <6001>', '6001', '6002', 'work', 'SIP/6001-00000003', 'SIP/6002-00000004', 'Dial', 'SIP/6002,20', 25, 16, 'ANSWERED', 3, '', '1583794906.3', '', '2020-03-09-23_01-6001-6002.wav');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
