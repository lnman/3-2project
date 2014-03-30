-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2014 at 01:04 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add poll', 7, 'add_poll'),
(20, 'Can change poll', 7, 'change_poll'),
(21, 'Can delete poll', 7, 'delete_poll'),
(22, 'Can add choice', 8, 'add_choice'),
(23, 'Can change choice', 8, 'change_choice'),
(24, 'Can delete choice', 8, 'delete_choice'),
(28, 'Can add user', 10, 'add_user'),
(29, 'Can change user', 10, 'change_user'),
(30, 'Can delete user', 10, 'delete_user'),
(31, 'Can add notification', 11, 'add_notification'),
(32, 'Can change notification', 11, 'change_notification'),
(33, 'Can delete notification', 11, 'delete_notification'),
(34, 'Can add player', 12, 'add_player'),
(35, 'Can change player', 12, 'change_player'),
(36, 'Can delete player', 12, 'delete_player'),
(37, 'Can add team', 13, 'add_team'),
(38, 'Can change team', 13, 'change_team'),
(39, 'Can delete team', 13, 'delete_team'),
(40, 'Can add match', 14, 'add_match'),
(41, 'Can change match', 14, 'change_match'),
(42, 'Can delete match', 14, 'delete_match'),
(43, 'Can add batstat', 15, 'add_batstat'),
(44, 'Can change batstat', 15, 'change_batstat'),
(45, 'Can delete batstat', 15, 'delete_batstat'),
(46, 'Can add bowlstat', 16, 'add_bowlstat'),
(47, 'Can change bowlstat', 16, 'change_bowlstat'),
(48, 'Can delete bowlstat', 16, 'delete_bowlstat'),
(49, 'Can add score', 17, 'add_score'),
(50, 'Can change score', 17, 'change_score'),
(51, 'Can delete score', 17, 'delete_score'),
(52, 'Can add tournament', 18, 'add_tournament'),
(53, 'Can change tournament', 18, 'change_tournament'),
(54, 'Can delete tournament', 18, 'delete_tournament'),
(55, 'Can add vote', 19, 'add_vote'),
(56, 'Can change vote', 19, 'change_vote'),
(57, 'Can delete vote', 19, 'delete_vote'),
(58, 'Can add news', 20, 'add_news'),
(59, 'Can change news', 20, 'change_news'),
(60, 'Can delete news', 20, 'delete_news'),
(61, 'Can add comment', 21, 'add_comment'),
(62, 'Can change comment', 21, 'change_comment'),
(63, 'Can delete comment', 21, 'delete_comment'),
(64, 'Can add rating', 22, 'add_rating'),
(65, 'Can change rating', 22, 'change_rating'),
(66, 'Can delete rating', 22, 'delete_rating'),
(67, 'Can add photo', 23, 'add_photo'),
(68, 'Can change photo', 23, 'change_photo'),
(69, 'Can delete photo', 23, 'delete_photo');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$W6oAfiP2PQhg$smGRPaV5TGBfEQjfF4Ea9xGLV3w9vV99HRATTCoYd9c=', '2014-03-28 13:03:49', 1, 'admin', '', '', 'momen_bhuiyan@yahoo.com', 1, 1, '2014-03-06 16:51:56'),
(2, 'pbkdf2_sha256$12000$du5EXiViL5op$1jc7GwdU3xQ+SWZChYhCanut3YknrMjpo4MT18ncIOw=', '2014-03-27 18:54:32', 0, 'emon', '', '', 'lnman000666@gmail.com', 0, 1, '2014-03-13 14:49:15'),
(3, 'pbkdf2_sha256$12000$OgjjOY1Mpy9C$koWeZdR43yygPT4h2FAhblQvIpVF+87A3jJE2yg4l88=', '2014-03-28 12:01:44', 0, 'turash', '', '', 'mturash@yahoo.com', 0, 1, '2014-03-28 11:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2014-03-06 16:55:13', 1, 7, '1', 'Who will win in ukraine?', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'poll', 'polls', 'poll'),
(8, 'choice', 'polls', 'choice'),
(10, 'user', 'Guest', 'user'),
(11, 'notification', 'Guest', 'notification'),
(12, 'player', 'Guest', 'player'),
(13, 'team', 'Guest', 'team'),
(14, 'match', 'Guest', 'match'),
(15, 'batstat', 'Guest', 'batstat'),
(16, 'bowlstat', 'Guest', 'bowlstat'),
(17, 'score', 'Guest', 'score'),
(18, 'tournament', 'Guest', 'tournament'),
(19, 'vote', 'Guest', 'vote'),
(20, 'news', 'Guest', 'news'),
(21, 'comment', 'Guest', 'comment'),
(22, 'rating', 'Guest', 'rating'),
(23, 'photo', 'Guest', 'photo');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6mtl4jd9tj6usgok9dqjli4ftodknr46', 'NjViNGNjMmRiZTBkNjg1YWNmNDBlYTg5YzczZGM0Y2M5N2YzOWQ1Nzp7fQ==', '2014-03-27 14:56:30'),
('8hlas2z5vnt0ykwykb03bltn4u4eid6o', 'Y2RiNThkODA3YzIwZjlmNWQwY2NkZDYyYWJjYTY5NmUyYzBiMzNmNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-04-11 13:03:49'),
('clyc23349b4zss69xx9ougipf4zw3gld', 'NjViNGNjMmRiZTBkNjg1YWNmNDBlYTg5YzczZGM0Y2M5N2YzOWQ1Nzp7fQ==', '2014-03-27 14:57:53'),
('l89y3zsmumhj0qfrwu2wpazydz84eult', 'NjViNGNjMmRiZTBkNjg1YWNmNDBlYTg5YzczZGM0Y2M5N2YzOWQ1Nzp7fQ==', '2014-03-27 14:37:02'),
('v0ajqtzogocmz830zfg8wita1gg50pcj', 'NjViNGNjMmRiZTBkNjg1YWNmNDBlYTg5YzczZGM0Y2M5N2YzOWQ1Nzp7fQ==', '2014-03-27 14:56:36'),
('x4b2biwidwdl7q3exovmgpo654ylvqyt', 'NjQwNzU1MzM5YjY2MGQ3Yjg1ZWQ3NDcxNTZhNzExOWIxZGMxNjZjNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6Mn0=', '2014-04-10 18:54:32'),
('yp7bqdpvlwcgzcqnpss6v4g0jpr4k4oy', 'NjViNGNjMmRiZTBkNjg1YWNmNDBlYTg5YzczZGM0Y2M5N2YzOWQ1Nzp7fQ==', '2014-03-27 14:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `guest_batstat`
--

CREATE TABLE IF NOT EXISTS `guest_batstat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matchid_id` int(11) NOT NULL,
  `inningsid` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `outtype` varchar(200) NOT NULL,
  `run` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `ball` int(11) NOT NULL,
  `four` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `strikerate` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Guest_batstat_7289db2a` (`matchid_id`),
  KEY `Guest_batstat_4da47e07` (`name_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=327 ;

--
-- Dumping data for table `guest_batstat`
--

INSERT INTO `guest_batstat` (`id`, `matchid_id`, `inningsid`, `name_id`, `outtype`, `run`, `minute`, `ball`, `four`, `six`, `strikerate`) VALUES
(1, 42, 1, 91, 'c â€ Ronchi b Mills  ', 4, 12, 8, 0, 0, 50),
(2, 42, 1, 92, 'c & b Anderson  ', 41, 56, 40, 2, 0, 102.5),
(3, 42, 1, 93, 'c NL McCullum b Southee  ', 13, 9, 8, 2, 0, 162.5),
(4, 42, 1, 94, ' b NL McCullum  ', 5, 7, 6, 1, 0, 83.33),
(5, 42, 1, 95, 'not out  ', 86, 57, 43, 10, 3, 200),
(6, 42, 1, 96, 'c & b Anderson  ', 6, 16, 6, 1, 0, 100),
(7, 42, 1, 97, ' b Southee  ', 13, 11, 8, 0, 1, 162.5),
(8, 42, 1, 98, 'not out  ', 1, 4, 1, 0, 0, 100),
(9, 42, 1, 99, '(w 1)', 1, 0, 0, 0, 0, 0),
(10, 42, 1, 100, '(6 wickets; 20 overs; 86 mins)', 170, 0, 0, 0, 0, 0),
(11, 42, 1, 101, 'c â€ de Kock b JA Morkel  ', 22, 31, 25, 3, 0, 88),
(12, 42, 1, 102, 'c de Villiers b Steyn  ', 51, 63, 35, 5, 2, 145.71),
(13, 42, 1, 103, 'st â€ de Kock b Imran Tahir  ', 4, 4, 4, 0, 0, 100),
(14, 42, 1, 104, 'run out (Steyn)  ', 62, 68, 37, 4, 3, 167.56),
(15, 42, 1, 105, 'c Amla b Imran Tahir  ', 7, 8, 8, 1, 0, 87.5),
(16, 42, 1, 106, 'c Miller b Steyn  ', 7, 4, 4, 1, 0, 175),
(17, 42, 1, 107, 'c â€ de Kock b Steyn  ', 5, 12, 3, 1, 0, 166.66),
(18, 42, 1, 108, 'c du Plessis b Steyn  ', 4, 3, 4, 1, 0, 100),
(19, 42, 1, 109, 'not out  ', 0, 1, 0, 0, 0, 0),
(20, 42, 1, 99, '(lb 2, w 4)', 6, 0, 0, 0, 0, 0),
(21, 42, 1, 100, '(8 wickets; 20 overs; 107 mins)', 168, 0, 0, 0, 0, 0),
(22, 25, 1, 3, 'c Mahmudullah b Mashrafe Mortaza  ', 0, 1, 1, 0, 0, 0),
(23, 25, 1, 115, 'c Nasir Hossain b Shakib Al Hasan  ', 7, 27, 11, 1, 0, 63.63),
(24, 25, 1, 116, 'c Sabbir Rahman b Shakib Al Hasan  ', 21, 25, 22, 3, 1, 95.45),
(25, 25, 1, 117, 'run out (Sabbir Rahman)  ', 0, 7, 1, 0, 0, 0),
(26, 25, 1, 3, 'lbw b Abdur Razzak  ', 3, 16, 9, 0, 0, 33.33),
(27, 25, 1, 118, 'run out (Farhad Reza)  ', 10, 20, 23, 0, 0, 43.47),
(28, 25, 1, 26, 'c â€ Mushfiqur Rahim b Mahmudullah  ', 16, 17, 16, 2, 0, 100),
(29, 25, 1, 119, 'lbw b Abdur Razzak  ', 1, 7, 3, 0, 0, 33.33),
(30, 25, 1, 120, 'c Mahmudullah b Farhad Reza  ', 1, 10, 6, 0, 0, 16.66),
(31, 25, 1, 121, ' b Shakib Al Hasan  ', 1, 13, 11, 0, 0, 9.09),
(32, 25, 1, 122, 'not out  ', 0, 4, 1, 0, 0, 0),
(33, 25, 1, 99, '(b 2, lb 5, w 3, nb 2)', 12, 0, 0, 0, 0, 0),
(34, 25, 1, 100, '(all out; 17.1 overs)', 72, 0, 0, 0, 0, 0),
(35, 25, 1, 12, 'lbw b Samiullah Shenwari  ', 21, 27, 2, 0, 78, 33),
(36, 25, 1, 123, 'not out  ', 44, 4, 3, 133, 12, 1),
(37, 41, 1, 125, 'c & b Ashwin  ', 11, 31, 29, 2, 0, 37.93),
(38, 41, 1, 126, 'run out (â€ Dhoni/Mohammed Shami)  ', 34, 49, 33, 1, 2, 103.03),
(39, 41, 1, 127, 'st â€ Dhoni b Mishra  ', 18, 21, 22, 3, 0, 81.81),
(40, 41, 1, 128, 'c Dhawan b Jadeja  ', 27, 27, 22, 1, 2, 122.72),
(41, 41, 1, 129, 'lbw b Mishra  ', 0, 1, 1, 0, 0, 0),
(42, 41, 1, 130, 'c Sharma b Jadeja  ', 11, 13, 7, 2, 0, 157.14),
(43, 41, 1, 131, 'c Kohli b Jadeja  ', 7, 4, 5, 0, 1, 140),
(44, 41, 1, 132, 'not out  ', 7, 3, 2, 0, 1, 350),
(45, 41, 1, 133, 'not out  ', 0, 1, 0, 0, 0, 0),
(46, 41, 1, 99, '(lb 1, w 12, nb 1)', 14, 0, 0, 0, 0, 0),
(47, 41, 1, 100, '(7 wickets; 20 overs)', 129, 0, 0, 0, 0, 0),
(48, 41, 1, 134, 'not out  ', 62, 83, 55, 5, 2, 112.72),
(49, 41, 1, 135, 'lbw b Badree  ', 0, 10, 3, 0, 0, 0),
(50, 41, 1, 136, ' b Russell  ', 54, 51, 41, 5, 1, 131.7),
(51, 41, 1, 137, 'c Gayle b Samuels  ', 10, 19, 19, 1, 0, 52.63),
(52, 41, 1, 138, 'not out  ', 1, 2, 1, 0, 0, 100),
(53, 41, 1, 99, '(w 2, nb 1)', 3, 0, 0, 0, 0, 0),
(54, 41, 1, 100, '(3 wickets; 19.4 overs)', 130, 0, 0, 0, 0, 0),
(55, 39, 1, 145, 'c Anderson b McClenaghan  ', 33, 42, 24, 4, 1, 137.5),
(56, 39, 1, 146, 'c Anderson b Mills  ', 0, 1, 2, 0, 0, 0),
(57, 39, 1, 147, 'c McClenaghan b Anderson  ', 36, 35, 23, 6, 1, 156.52),
(58, 39, 1, 148, 'c BB McCullum b Southee  ', 12, 22, 15, 1, 0, 80),
(59, 39, 1, 149, ' b Anderson  ', 32, 35, 23, 4, 0, 139.13),
(60, 39, 1, 150, 'not out  ', 24, 37, 19, 0, 1, 126.31),
(61, 39, 1, 151, 'c Southee b NL McCullum  ', 8, 9, 6, 0, 1, 133.33),
(62, 39, 1, 152, 'not out  ', 17, 9, 8, 2, 1, 212.5),
(63, 39, 1, 99, '(lb 4, w 6)', 10, 0, 0, 0, 0, 0),
(64, 39, 1, 100, '(6 wickets; 20 overs; 96 mins)', 172, 0, 0, 0, 0, 0),
(65, 39, 1, 101, 'c Jordan b Dernbach  ', 11, 14, 9, 2, 0, 122.22),
(66, 39, 1, 102, 'not out  ', 24, 27, 17, 4, 0, 141.17),
(67, 39, 1, 103, 'not out  ', 16, 13, 6, 1, 2, 266.66),
(68, 39, 1, 99, '(lb 1)', 1, 0, 0, 0, 0, 0),
(69, 39, 1, 100, '(1 wicket; 5.2 overs; 27 mins)', 52, 0, 0, 0, 0, 0),
(70, 37, 1, 155, 'run out (Kumar)  ', 8, 8, 10, 2, 0, 80),
(71, 37, 1, 156, 'st â€ Dhoni b Mishra  ', 22, 31, 17, 2, 0, 129.41),
(72, 37, 1, 3, 'c Kumar b Jadeja  ', 15, 22, 22, 1, 0, 68.18),
(73, 37, 1, 157, 'c Raina b Mohammed Shami  ', 33, 34, 30, 2, 0, 110),
(74, 37, 1, 158, 'c Raina b Mishra  ', 18, 23, 20, 1, 1, 90),
(75, 37, 1, 159, 'c Raina b Kumar  ', 8, 14, 10, 1, 0, 80),
(76, 37, 1, 160, 'run out (Jadeja/â€ Dhoni)  ', 21, 12, 11, 2, 1, 190.9),
(77, 37, 1, 161, 'not out  ', 0, 4, 0, 0, 0, 0),
(78, 37, 1, 99, '(lb 2, w 3)', 5, 0, 0, 0, 0, 0),
(79, 37, 1, 100, '(7 wickets; 20 overs)', 130, 0, 0, 0, 0, 0),
(80, 37, 1, 134, ' b Saeed Ajmal  ', 24, 41, 21, 1, 2, 114.28),
(81, 37, 1, 135, 'c Saeed Ajmal b Umar Gul  ', 30, 35, 28, 5, 0, 107.14),
(82, 37, 1, 136, 'not out  ', 36, 45, 32, 4, 1, 112.5),
(83, 37, 1, 137, ' b Bilawal Bhatti  ', 1, 3, 2, 0, 0, 50),
(84, 37, 1, 138, 'not out  ', 35, 34, 28, 4, 1, 125),
(85, 37, 1, 99, '(w 5)', 5, 0, 0, 0, 0, 0),
(86, 37, 1, 100, '(3 wickets; 18.3 overs)', 131, 0, 0, 0, 0, 0),
(87, 36, 1, 164, ' b Jamil  ', 47, 36, 32, 5, 2, 146.87),
(88, 36, 1, 165, 'c Borren b van der Gugten  ', 7, 14, 9, 1, 0, 77.77),
(89, 36, 1, 166, 'run out (â€ Barresi)  ', 28, 35, 25, 1, 1, 112),
(90, 36, 1, 167, 'c van Beek b Jamil  ', 57, 46, 38, 4, 4, 150),
(91, 36, 1, 168, 'not out  ', 42, 31, 16, 2, 4, 262.5),
(92, 36, 1, 99, '(lb 6, w 2)', 8, 0, 0, 0, 0, 0),
(93, 36, 1, 100, '(4 wickets; 20 overs)', 189, 0, 0, 0, 0, 0),
(94, 36, 1, 169, 'c Dockrell b O''Brien  ', 31, 25, 15, 4, 2, 206.66),
(95, 36, 1, 170, 'c Joyce b Dockrell  ', 63, 29, 23, 4, 7, 273.91),
(96, 36, 1, 171, 'not out  ', 40, 35, 22, 3, 3, 181.81),
(97, 36, 1, 172, 'c Porterfield b O''Brien  ', 1, 4, 3, 0, 0, 33.33),
(98, 36, 1, 173, 'c O''Brien b Murtagh  ', 45, 15, 15, 1, 6, 300),
(99, 36, 1, 174, 'not out  ', 9, 11, 5, 0, 1, 180),
(100, 36, 1, 99, '(lb 4)', 4, 0, 0, 0, 0, 0),
(101, 36, 1, 100, '(4 wickets; 13.5 overs)', 193, 0, 0, 0, 0, 0),
(102, 40, 1, 156, 'c & b Bollinger  ', 5, 8, 5, 1, 0, 100),
(103, 40, 1, 155, 'c Warner b Coulter-Nile  ', 31, 61, 31, 4, 0, 100),
(104, 40, 1, 3, ' b Watson  ', 13, 13, 10, 2, 0, 130),
(105, 40, 1, 157, 'c Maxwell b Starc  ', 94, 70, 54, 9, 4, 174.07),
(106, 40, 1, 160, ' b Coulter-Nile  ', 5, 13, 7, 0, 0, 71.42),
(107, 40, 1, 159, 'not out  ', 20, 20, 11, 2, 1, 181.81),
(108, 40, 1, 158, 'not out  ', 6, 3, 3, 1, 0, 200),
(109, 40, 1, 99, '(b 4, lb 3, w 9, nb 1)', 17, 0, 0, 0, 0, 0),
(110, 40, 1, 100, '(5 wickets; 20 overs)', 191, 0, 0, 0, 0, 0),
(111, 40, 1, 179, ' b Zulfiqar Babar  ', 4, 1, 2, 1, 0, 200),
(112, 40, 1, 180, ' b Saeed Ajmal  ', 65, 79, 54, 7, 2, 120.37),
(113, 40, 1, 181, 'c â€ Kamran Akmal b Zulfiqar Babar  ', 4, 3, 4, 1, 0, 100),
(114, 40, 1, 182, 'c Ahmed Shehzad b Shahid Afridi  ', 74, 48, 33, 7, 6, 224.24),
(115, 40, 1, 183, ' b Shahid Afridi  ', 4, 13, 9, 0, 0, 44.44),
(116, 40, 1, 184, 'c Saeed Ajmal b Umar Gul  ', 2, 6, 3, 0, 0, 66.66),
(117, 40, 1, 185, 'c Shoaib Malik b Bilawal Bhatti  ', 8, 20, 8, 0, 0, 100),
(118, 40, 1, 186, ' b Umar Gul  ', 0, 3, 3, 0, 0, 0),
(119, 40, 1, 187, 'run out (â€ Kamran Akmal/Shahid Afridi)  ', 3, 6, 2, 0, 0, 150),
(120, 40, 1, 188, ' b Bilawal Bhatti  ', 3, 3, 3, 0, 0, 100),
(121, 40, 1, 189, 'not out  ', 0, 1, 0, 0, 0, 0),
(122, 40, 1, 99, '(lb 3, nb 5)', 8, 0, 0, 0, 0, 0),
(123, 40, 1, 100, '(all out; 20 overs)', 175, 0, 0, 0, 0, 0),
(124, 38, 1, 191, 'c de Villiers b Imran Tahir  ', 61, 63, 40, 6, 3, 152.5),
(125, 38, 1, 192, ' b Steyn  ', 0, 4, 1, 0, 0, 0),
(126, 38, 1, 193, 'c Steyn b M Morkel  ', 9, 16, 9, 1, 0, 100),
(127, 38, 1, 194, 'c Tsotsobe b Imran Tahir  ', 14, 23, 18, 1, 0, 77.77),
(128, 38, 1, 195, ' b Steyn  ', 43, 50, 32, 3, 1, 134.37),
(129, 38, 1, 196, 'st â€ de Kock b Imran Tahir  ', 12, 15, 9, 1, 0, 133.33),
(130, 38, 1, 197, ' b M Morkel  ', 8, 8, 6, 1, 0, 133.33),
(131, 38, 1, 198, 'not out  ', 7, 8, 4, 1, 0, 175),
(132, 38, 1, 199, 'not out  ', 1, 1, 1, 0, 0, 100),
(133, 38, 1, 99, '(lb 3, w 7)', 10, 0, 0, 0, 0, 0),
(134, 38, 1, 100, '(7 wickets; 20 overs)', 165, 0, 0, 0, 0, 0),
(135, 38, 1, 91, ' b Malinga  ', 25, 18, 18, 4, 1, 138.88),
(136, 38, 1, 92, 'c Dilshan b Senanayake  ', 23, 41, 26, 2, 0, 88.46),
(137, 38, 1, 95, 'c Dilshan b Senanayake  ', 39, 45, 30, 3, 2, 130),
(138, 38, 1, 94, 'c â€ Sangakkara b Mathews  ', 24, 14, 16, 3, 0, 150),
(139, 38, 1, 96, 'run out (NLTC Perera/â€ Sangakkara)  ', 19, 33, 16, 1, 0, 118.75),
(140, 38, 1, 97, 'c Chandimal b Mendis  ', 12, 5, 4, 0, 2, 300),
(141, 38, 1, 200, 'c Jayawardene b Kulasekara  ', 5, 10, 4, 0, 0, 125),
(142, 38, 1, 98, 'run out (Mathews/Malinga)  ', 0, 6, 2, 0, 0, 0),
(143, 38, 1, 113, 'not out  ', 0, 4, 0, 0, 0, 0),
(144, 38, 1, 114, 'not out  ', 8, 2, 4, 0, 1, 200),
(145, 38, 1, 99, '(lb 3, w 2)', 5, 0, 0, 0, 0, 0),
(146, 38, 1, 100, '(8 wickets; 20 overs)', 160, 0, 0, 0, 0, 0),
(147, 34, 1, 12, ' b Tanwir Afzal  ', 0, 2, 2, 0, 0, 0),
(148, 34, 1, 123, ' b Nadeem Ahmed  ', 26, 30, 17, 3, 1, 152.94),
(149, 34, 1, 203, 'lbw b Tanwir Afzal  ', 2, 4, 4, 0, 0, 50),
(150, 34, 1, 14, 'c Nizakat Khan b Irfan Ahmed  ', 34, 42, 27, 6, 0, 125.92),
(151, 34, 1, 204, 'c Munir Dar b Nizakat Khan  ', 23, 25, 18, 3, 0, 127.77),
(152, 34, 1, 205, 'not out  ', 14, 28, 17, 0, 0, 82.35),
(153, 34, 1, 206, ' b Nadeem Ahmed  ', 2, 5, 3, 0, 0, 66.66),
(154, 34, 1, 18, 'c â€ Atkinson b Nizakat Khan  ', 0, 4, 2, 0, 0, 0),
(155, 34, 1, 1, 'c â€ Atkinson b Nizakat Khan  ', 0, 1, 1, 0, 0, 0),
(156, 34, 1, 207, ' b Nadeem Ahmed  ', 0, 2, 3, 0, 0, 0),
(157, 34, 1, 23, 'c Babar Hayat b Nadeem Ahmed  ', 1, 8, 5, 0, 0, 20),
(158, 34, 1, 99, '(lb 1, w 5)', 6, 0, 0, 0, 0, 0),
(159, 34, 1, 100, '(all out; 16.3 overs)', 108, 0, 0, 0, 0, 0),
(160, 34, 1, 208, 'st â€ Mushfiqur Rahim b Shakib Al Hasan  ', 0, 6, 2, 0, 0, 0),
(161, 34, 1, 209, 'lbw b Shakib Al Hasan  ', 34, 32, 28, 3, 3, 121.42),
(162, 34, 1, 210, 'lbw b Shakib Al Hasan  ', 7, 30, 14, 0, 0, 50),
(163, 34, 1, 211, ' b Mahmudullah  ', 5, 12, 7, 0, 0, 71.42),
(164, 34, 1, 212, 'c â€ Mushfiqur Rahim b Al-Amin Hossain  ', 1, 5, 4, 0, 0, 25),
(165, 34, 1, 213, 'c sub (Mominul Haque) b Mahmudullah  ', 12, 37, 21, 0, 0, 57.14),
(166, 34, 1, 214, 'lbw b Abdur Razzak  ', 36, 45, 27, 3, 1, 133.33),
(167, 34, 1, 215, ' b Sabbir Rahman  ', 0, 13, 7, 0, 0, 0),
(168, 34, 1, 216, 'not out  ', 12, 9, 6, 0, 1, 200),
(169, 34, 1, 217, 'not out  ', 2, 5, 2, 0, 0, 100),
(170, 34, 1, 99, '(lb 2, w 3)', 5, 0, 0, 0, 0, 0),
(171, 34, 1, 100, '(8 wickets; 19.4 overs)', 114, 0, 0, 0, 0, 0),
(172, 33, 1, 219, 'c Asghar Stanikzai b Shapoor Zadran  ', 56, 76, 53, 6, 1, 105.66),
(173, 33, 1, 220, 'c Mohammad Nabi b Dawlat Zadran  ', 8, 18, 11, 1, 0, 72.72),
(174, 33, 1, 221, 'c Nawroz Mangal b Mohammad Nabi  ', 22, 17, 13, 3, 1, 169.23),
(175, 33, 1, 222, ' b Mirwais Ashraf  ', 1, 5, 5, 0, 0, 20),
(176, 33, 1, 223, 'c â€ Mohammad Shahzad b Shapoor Zadran  ', 37, 38, 32, 5, 0, 115.62),
(177, 33, 1, 224, 'not out  ', 4, 6, 6, 1, 0, 66.66),
(178, 33, 1, 225, 'not out  ', 2, 5, 3, 0, 0, 66.66),
(179, 33, 1, 99, '(lb 5, w 3, nb 3)', 11, 0, 0, 0, 0, 0),
(180, 33, 1, 100, '(5 wickets; 20 overs)', 141, 0, 0, 0, 0, 0),
(181, 33, 1, 3, 'c Sompal Kami b Mukhiya  ', 6, 19, 17, 1, 0, 35.29),
(182, 33, 1, 118, ' b Sompal Kami  ', 8, 12, 7, 2, 0, 114.28),
(183, 33, 1, 226, 'c Vesawkar b Mukhiya  ', 5, 8, 4, 1, 0, 125),
(184, 33, 1, 117, 'c Khadka b Gauchan  ', 5, 16, 7, 1, 0, 71.42),
(185, 33, 1, 26, 'c Sagar Pun b Regmi  ', 36, 38, 32, 3, 1, 112.5),
(186, 33, 1, 3, 'lbw b Gauchan  ', 1, 3, 2, 0, 0, 50),
(187, 33, 1, 227, 'c Malla b Sompal Kami  ', 49, 48, 36, 4, 1, 136.11),
(188, 33, 1, 119, 'c Khadka b Mukhiya  ', 15, 20, 13, 1, 0, 115.38),
(189, 33, 1, 228, 'not out  ', 2, 9, 2, 0, 0, 100),
(190, 33, 1, 120, 'not out  ', 0, 1, 0, 0, 0, 0),
(191, 33, 1, 99, '(b 4, lb 1)', 5, 0, 0, 0, 0, 0),
(192, 33, 1, 100, '(8 wickets; 20 overs)', 132, 0, 0, 0, 0, 0),
(193, 32, 1, 233, 'c Dockrell b Stirling  ', 20, 25, 19, 4, 0, 105.26),
(194, 32, 1, 234, 'run out (Murtagh/â€ Wilson)  ', 11, 20, 15, 1, 0, 73.33),
(195, 32, 1, 235, 'c Joyce b Murtagh  ', 16, 41, 21, 1, 0, 76.19),
(196, 32, 1, 236, 'c Porterfield b Stirling  ', 0, 2, 3, 0, 0, 0),
(197, 32, 1, 237, 'c & b O''Brien  ', 30, 29, 28, 0, 2, 107.14),
(198, 32, 1, 233, 'c Joyce b O''Brien  ', 19, 21, 21, 3, 0, 90.47),
(199, 32, 1, 238, 'not out  ', 13, 23, 13, 0, 0, 100),
(200, 32, 1, 239, 'not out  ', 1, 4, 1, 0, 0, 100),
(201, 32, 1, 99, '(b 2, lb 3, w 7, nb 1)', 13, 0, 0, 0, 0, 0),
(202, 32, 1, 100, '(6 wickets; 20 overs)', 123, 0, 0, 0, 0, 0),
(203, 32, 1, 164, 'not out  ', 33, 65, 35, 2, 1, 94.28),
(204, 32, 1, 165, 'retired hurt  ', 8, 12, 5, 2, 0, 160),
(205, 32, 1, 166, 'c Khurram Khan b Sharif Asadullah  ', 43, 41, 38, 4, 1, 113.15),
(206, 32, 1, 168, 'c Shetty b Sharif Asadullah  ', 0, 3, 2, 0, 0, 0),
(207, 32, 1, 167, ' b Amjad Javed  ', 4, 4, 5, 1, 0, 80),
(208, 32, 1, 240, 'not out  ', 1, 3, 1, 0, 0, 100),
(209, 32, 1, 99, '(lb 2, w 7, pen 5)', 14, 0, 0, 0, 0, 0),
(210, 32, 1, 100, '(3 wickets; 14.2 overs)', 103, 0, 0, 0, 0, 0),
(211, 30, 1, 219, 'c Abdur Razzak b Farhad Reza  ', 8, 20, 13, 0, 0, 61.53),
(212, 30, 1, 220, 'c Shakib Al Hasan b Al-Amin Hossain  ', 12, 32, 19, 2, 0, 63.15),
(213, 30, 1, 221, 'lbw b Al-Amin Hossain  ', 13, 15, 6, 2, 0, 216.66),
(214, 30, 1, 222, ' b Mashrafe Mortaza  ', 41, 59, 35, 5, 0, 117.14),
(215, 30, 1, 223, 'run out (â€ Mushfiqur Rahim)  ', 40, 63, 43, 5, 0, 93.02),
(216, 30, 1, 224, 'not out  ', 0, 5, 4, 0, 0, 0),
(217, 30, 1, 99, '(lb 3, w 9)', 12, 0, 0, 0, 0, 0),
(218, 30, 1, 100, '(5 wickets; 20 overs)', 126, 0, 0, 0, 0, 0),
(219, 30, 1, 12, 'c Sagar Pun b Regmi  ', 30, 32, 22, 2, 1, 136.36),
(220, 30, 1, 123, 'run out (Sagar Pun/â€ Khakurel)  ', 42, 48, 33, 5, 2, 127.27),
(221, 30, 1, 203, 'not out  ', 21, 39, 20, 1, 1, 105),
(222, 30, 1, 14, 'not out  ', 37, 23, 18, 1, 4, 205.55),
(223, 30, 1, 99, '(lb 2)', 2, 0, 0, 0, 0, 0),
(224, 30, 1, 100, '(2 wickets; 15.3 overs)', 132, 0, 0, 0, 0, 0),
(225, 28, 1, 233, ' b van der Gugten  ', 5, 9, 6, 1, 0, 83.33),
(226, 28, 1, 234, 'c Jamil b Swart  ', 6, 3, 4, 0, 1, 150),
(227, 28, 1, 235, ' b TLW Cooper  ', 31, 44, 25, 4, 0, 124),
(228, 28, 1, 236, ' b TLW Cooper  ', 23, 39, 28, 2, 0, 82.14),
(229, 28, 1, 237, ' b van der Gugten  ', 32, 24, 19, 4, 1, 168.42),
(230, 28, 1, 238, 'run out (Borren)  ', 20, 20, 14, 2, 0, 142.85),
(231, 28, 1, 233, 'c Seelaar b Jamil  ', 2, 3, 2, 0, 0, 100),
(232, 28, 1, 239, 'c & b Jamil  ', 10, 16, 12, 1, 0, 83.33),
(233, 28, 1, 245, 'run out (TLW Cooper)  ', 3, 10, 6, 0, 0, 50),
(234, 28, 1, 155, 'c van Beek b Jamil  ', 0, 4, 2, 0, 0, 0),
(235, 28, 1, 246, 'not out  ', 1, 1, 1, 0, 0, 100),
(236, 28, 1, 99, '(lb 7, w 11)', 18, 0, 0, 0, 0, 0),
(237, 28, 1, 100, '(all out; 19.5 overs)', 151, 0, 0, 0, 0, 0),
(238, 28, 1, 170, 'run out (â€ Patil)  ', 55, 43, 36, 7, 2, 152.77),
(239, 28, 1, 175, 'c Amjad Javed b Kamran Shazad  ', 26, 27, 16, 3, 1, 162.5),
(240, 28, 1, 171, ' b Silva  ', 24, 32, 21, 1, 1, 114.28),
(241, 28, 1, 173, 'not out  ', 34, 34, 26, 4, 1, 130.76),
(242, 28, 1, 169, 'c Silva b Kamran Shazad  ', 3, 12, 8, 0, 0, 37.5),
(243, 28, 1, 174, 'not out  ', 6, 4, 6, 1, 0, 100),
(244, 28, 1, 99, '(lb 4)', 4, 0, 0, 0, 0, 0),
(245, 28, 1, 100, '(4 wickets; 18.5 overs)', 152, 0, 0, 0, 0, 0),
(246, 31, 1, 175, 'run out (Chatara)  ', 3, 15, 8, 0, 0, 37.5),
(247, 31, 1, 170, 'lbw b Utseya  ', 0, 2, 1, 0, 0, 0),
(248, 31, 1, 171, ' b Panyangara  ', 12, 6, 6, 3, 0, 200),
(249, 31, 1, 169, 'c Chigumbura b Utseya  ', 8, 12, 7, 2, 0, 114.28),
(250, 31, 1, 173, 'not out  ', 72, 62, 58, 9, 1, 124.13),
(251, 31, 1, 174, 'c Panyangara b Mushangwe  ', 20, 13, 24, 1, 0, 83.33),
(252, 31, 1, 178, 'not out  ', 14, 25, 16, 0, 0, 87.5),
(253, 31, 1, 99, '(b 4, lb 3, w 4)', 11, 0, 0, 0, 0, 0),
(254, 31, 1, 100, '(5 wickets; 20 overs)', 140, 0, 0, 0, 0, 0),
(255, 31, 1, 248, ' b Seelaar  ', 43, 53, 45, 3, 1, 95.55),
(256, 31, 1, 249, 'c Seelaar b Jamil  ', 13, 19, 12, 2, 0, 108.33),
(257, 31, 1, 250, 'c Borren b van der Gugten  ', 49, 57, 39, 2, 1, 125.64),
(258, 31, 1, 251, 'c Borren b Seelaar  ', 0, 2, 2, 0, 0, 0),
(259, 31, 1, 252, 'run out (Jamil)  ', 26, 29, 19, 2, 0, 136.84),
(260, 31, 1, 253, 'not out  ', 9, 9, 3, 0, 1, 300),
(261, 31, 1, 254, 'not out  ', 0, 1, 0, 0, 0, 0),
(262, 31, 1, 99, '(b 1, lb 1, w 4)', 6, 0, 0, 0, 0, 0),
(263, 31, 1, 100, '(5 wickets; 20 overs)', 146, 0, 0, 0, 0, 0),
(264, 29, 1, 209, ' b Shapoor Zadran  ', 0, 2, 1, 0, 0, 0),
(265, 29, 1, 208, 'c Dawlat Zadran b Mohammad Nabi  ', 32, 67, 32, 3, 0, 100),
(266, 29, 1, 210, 'lbw b Hamza Hotak  ', 31, 24, 20, 5, 1, 155),
(267, 29, 1, 211, ' b Dawlat Zadran  ', 38, 55, 43, 3, 1, 88.37),
(268, 29, 1, 212, 'c Asghar Stanikzai b Mohammad Nabi  ', 5, 9, 3, 1, 0, 166.66),
(269, 29, 1, 213, 'c Mohammad Nabi b Hamza Hotak  ', 9, 11, 4, 0, 1, 225),
(270, 29, 1, 214, 'run out (Najeeb Tarakai)  ', 3, 11, 6, 0, 0, 50),
(271, 29, 1, 215, 'c Gulbadin Naib b Shapoor Zadran  ', 11, 10, 6, 1, 1, 183.33),
(272, 29, 1, 216, 'not out  ', 7, 10, 6, 1, 0, 116.66),
(273, 29, 1, 259, 'not out  ', 1, 5, 1, 0, 0, 100),
(274, 29, 1, 99, '(b 1, lb 2, w 8, nb 5)', 16, 0, 0, 0, 0, 0),
(275, 29, 1, 100, '(8 wickets; 20 overs)', 153, 0, 0, 0, 0, 0),
(276, 29, 1, 115, 'c Nadeem Ahmed b Tanwir Afzal  ', 7, 11, 6, 1, 0, 116.66),
(277, 29, 1, 3, 'c Irfan Ahmed b Haseeb Amjad  ', 68, 69, 53, 6, 3, 128.3),
(278, 29, 1, 227, 'c Babar Hayat b Aizaz Khan  ', 13, 31, 21, 0, 0, 61.9),
(279, 29, 1, 26, 'not out  ', 51, 39, 24, 5, 3, 212.5),
(280, 29, 1, 3, 'not out  ', 6, 12, 5, 0, 0, 120),
(281, 29, 1, 99, '(lb 1, w 7, nb 1)', 9, 0, 0, 0, 0, 0),
(282, 29, 1, 100, '(3 wickets; 18 overs)', 154, 0, 0, 0, 0, 0),
(283, 27, 1, 248, 'c Porterfield b McBrine  ', 21, 23, 17, 3, 0, 123.52),
(284, 27, 1, 249, 'c Sorensen b Cusack  ', 10, 7, 8, 2, 0, 125),
(285, 27, 1, 250, 'c Joyce b Dockrell  ', 59, 57, 46, 6, 2, 128.26),
(286, 27, 1, 252, 'st â€ Wilson b McBrine  ', 16, 9, 9, 1, 1, 177.77),
(287, 27, 1, 253, 'c Sorensen b Dockrell  ', 16, 19, 18, 1, 0, 88.88),
(288, 27, 1, 251, 'not out  ', 22, 20, 13, 0, 2, 169.23),
(289, 27, 1, 254, 'not out  ', 13, 11, 9, 0, 1, 144.44),
(290, 27, 1, 99, '(b 1, lb 4, w 1)', 6, 0, 0, 0, 0, 0),
(291, 27, 1, 100, '(5 wickets; 20 overs)', 163, 0, 0, 0, 0, 0),
(292, 27, 1, 164, 'c Maruma b Williams  ', 31, 33, 23, 3, 1, 134.78),
(293, 27, 1, 165, 'c Sikandar Raza b Chatara  ', 60, 42, 34, 9, 1, 176.47),
(294, 27, 1, 166, ' b Panyangara  ', 22, 50, 28, 0, 0, 78.57),
(295, 27, 1, 167, 'c Chigumbura b Panyangara  ', 23, 18, 15, 3, 0, 153.33),
(296, 27, 1, 240, 'c Masakadza b Panyangara  ', 0, 1, 2, 0, 0, 0),
(297, 27, 1, 168, 'c Williams b Panyangara  ', 17, 12, 10, 2, 1, 170),
(298, 27, 1, 261, 'not out  ', 3, 12, 6, 0, 0, 50),
(299, 27, 1, 241, 'run out (Williams)  ', 0, 1, 1, 0, 0, 0),
(300, 27, 1, 243, 'not out  ', 0, 2, 1, 0, 0, 0),
(301, 27, 1, 99, '(b 1, lb 4, w 3)', 8, 0, 0, 0, 0, 0),
(302, 27, 1, 100, '(7 wickets; 20 overs)', 164, 0, 0, 0, 0, 0),
(303, 26, 1, 219, 'c Aizaz Khan b Nadeem Ahmed  ', 22, 23, 16, 4, 0, 137.5),
(304, 26, 1, 220, 'c Waqas Barkat b Haseeb Amjad  ', 13, 19, 13, 2, 0, 100),
(305, 26, 1, 221, 'c & b Haseeb Amjad  ', 48, 64, 41, 4, 1, 117.07),
(306, 26, 1, 222, 'c Nizakat Khan b Najeeb Amar  ', 41, 47, 37, 4, 0, 110.81),
(307, 26, 1, 224, 'c Waqas Barkat b Nadeem Ahmed  ', 1, 3, 2, 0, 0, 50),
(308, 26, 1, 223, 'run out (Aizaz Khan/â€ Atkinson)  ', 14, 10, 9, 2, 0, 155.55),
(309, 26, 1, 229, 'not out  ', 0, 3, 0, 0, 0, 0),
(310, 26, 1, 225, ' b Haseeb Amjad  ', 0, 1, 1, 0, 0, 0),
(311, 26, 1, 232, 'run out (Haseeb Amjad)  ', 0, 1, 1, 0, 0, 0),
(312, 26, 1, 99, '(lb 2, w 8)', 10, 0, 0, 0, 0, 0),
(313, 26, 1, 100, '(8 wickets; 20 overs)', 149, 0, 0, 0, 0, 0),
(314, 26, 1, 209, 'c â€ Khakurel b Khadka  ', 0, 1, 1, 0, 0, 0),
(315, 26, 1, 208, 'c Mukhiya b Gauchan  ', 18, 27, 19, 3, 0, 94.73),
(316, 26, 1, 210, ' b Sompal Kami  ', 6, 6, 7, 1, 0, 85.71),
(317, 26, 1, 212, ' b Gauchan  ', 20, 38, 25, 2, 0, 80),
(318, 26, 1, 211, ' b Regmi  ', 13, 14, 12, 1, 0, 108.33),
(319, 26, 1, 213, ' b Regmi  ', 0, 1, 1, 0, 0, 0),
(320, 26, 1, 215, 'c Khadka b Regmi  ', 0, 10, 5, 0, 0, 0),
(321, 26, 1, 259, ' b Gauchan  ', 0, 2, 3, 0, 0, 0),
(322, 26, 1, 115, 'c â€ Khakurel b Sompal Kami  ', 2, 10, 9, 0, 0, 22.22),
(323, 26, 1, 216, 'not out  ', 4, 15, 9, 0, 0, 44.44),
(324, 26, 1, 217, ' b Mukhiya  ', 5, 10, 11, 0, 0, 45.45),
(325, 26, 1, 99, '(lb 1)', 1, 0, 0, 0, 0, 0),
(326, 26, 1, 100, '(all out; 17 overs)', 69, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `guest_bowlstat`
--

CREATE TABLE IF NOT EXISTS `guest_bowlstat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matchid_id` int(11) NOT NULL,
  `inningsid` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `over` int(11) NOT NULL,
  `maiden` int(11) NOT NULL,
  `run` int(11) NOT NULL,
  `wicket` int(11) NOT NULL,
  `economy` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Guest_bowlstat_7289db2a` (`matchid_id`),
  KEY `Guest_bowlstat_4da47e07` (`name_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=174 ;

--
-- Dumping data for table `guest_bowlstat`
--

INSERT INTO `guest_bowlstat` (`id`, `matchid_id`, `inningsid`, `name_id`, `over`, `maiden`, `run`, `wicket`, `economy`) VALUES
(1, 42, 1, 110, 4, 0, 29, 1, 7.25),
(2, 42, 1, 111, 4, 0, 30, 0, 7.5),
(3, 42, 1, 109, 0, 4, 0, 46, 2),
(4, 42, 1, 108, 12, 4, 0, 24, 1),
(5, 42, 1, 106, 6, 3, 0, 28, 2),
(6, 42, 1, 102, 9, 1, 0, 13, 0),
(7, 42, 1, 95, 3, 0, 30, 0, 10),
(8, 42, 1, 112, 4, 0, 29, 0, 7.25),
(9, 42, 1, 98, 0, 4, 0, 17, 4),
(10, 42, 1, 113, 4, 3, 0, 50, 0),
(11, 42, 1, 97, 17, 0, 2, 0, 13),
(12, 42, 1, 114, 1, 7, 4, 0, 27),
(13, 41, 1, 139, 3, 0, 3, 0, 1),
(14, 41, 1, 3, 0, 3, 0, 27, 0),
(15, 41, 1, 140, 9, 0, 4, 0, 24),
(16, 41, 1, 141, 1, 6, 0, 4, 0),
(17, 41, 1, 138, 18, 2, 5, 0, 2),
(18, 41, 1, 142, 0, 8, 0, 4, 0),
(19, 41, 1, 143, 4, 0, 28, 1, 7),
(20, 41, 1, 144, 4, 0, 27, 0, 6.75),
(21, 41, 1, 132, 4, 0, 20, 0, 5),
(22, 41, 1, 129, 0, 1, 0, 12, 0),
(23, 41, 1, 130, 12, 1, 0, 9, 0),
(24, 41, 1, 127, 9, 3, 0, 22, 1),
(25, 41, 1, 131, 6, 2, 0, 12, 1),
(26, 39, 1, 110, 4, 0, 36, 1, 9),
(27, 39, 1, 111, 0, 4, 0, 22, 1),
(28, 39, 1, 109, 6, 4, 0, 46, 1),
(29, 39, 1, 106, 12, 0, 4, 0, 32),
(30, 39, 1, 108, 2, 8, 0, 4, 0),
(31, 39, 1, 147, 1, 0, 7, 0, 7),
(32, 39, 1, 153, 2, 0, 13, 1, 6.5),
(33, 39, 1, 152, 1, 0, 10, 0, 10),
(34, 39, 1, 154, 1, 0, 16, 0, 16),
(35, 39, 1, 151, 0, 0, 5, 0, 15),
(36, 37, 1, 140, 4, 0, 23, 0, 5.75),
(37, 37, 1, 139, 3, 0, 21, 1, 7),
(38, 37, 1, 3, 0, 4, 0, 31, 1),
(39, 37, 1, 141, 8, 4, 1, 22, 2),
(40, 37, 1, 142, 6, 4, 0, 18, 1),
(41, 37, 1, 137, 5, 0, 1, 0, 13),
(42, 37, 1, 3, 3, 0, 14, 0, 4.66),
(43, 37, 1, 162, 3, 0, 23, 0, 7.66),
(44, 37, 1, 163, 4, 0, 18, 1, 4.5),
(45, 37, 1, 157, 3, 0, 35, 1, 10),
(46, 37, 1, 159, 0, 3, 0, 24, 0),
(47, 37, 1, 161, 8, 0, 2, 0, 17),
(48, 36, 1, 175, 4, 0, 39, 0, 9.75),
(49, 36, 1, 176, 3, 0, 32, 1, 10.66),
(50, 36, 1, 177, 4, 0, 26, 2, 6.5),
(51, 36, 1, 178, 3, 0, 26, 0, 8.66),
(52, 36, 1, 173, 0, 1, 0, 8, 0),
(53, 36, 1, 169, 8, 2, 0, 19, 0),
(54, 40, 1, 187, 4, 0, 35, 1, 8.75),
(55, 40, 1, 189, 0, 4, 0, 28, 1),
(56, 40, 1, 181, 7, 4, 0, 38, 1),
(57, 40, 1, 186, 10, 0, 4, 0, 36),
(58, 40, 1, 188, 2, 9, 0, 3, 0),
(59, 40, 1, 180, 29, 0, 10, 0, 1),
(60, 40, 1, 190, 4, 0, 26, 2, 6.5),
(61, 40, 1, 3, 2, 0, 18, 0, 9),
(62, 40, 1, 157, 4, 0, 29, 2, 7.25),
(63, 40, 1, 163, 4, 0, 33, 1, 8.25),
(64, 40, 1, 159, 4, 0, 30, 2, 7.5),
(65, 40, 1, 161, 2, 0, 36, 2, 18),
(66, 38, 1, 98, 4, 0, 37, 2, 9.25),
(67, 38, 1, 112, 0, 4, 0, 31, 0),
(68, 38, 1, 113, 8, 0, 4, 0, 31),
(69, 38, 1, 95, 2, 8, 0, 2, 0),
(70, 38, 1, 97, 13, 0, 7, 0, 2),
(71, 38, 1, 114, 0, 24, 0, 12, 0),
(72, 38, 1, 198, 3, 0, 23, 1, 7.66),
(73, 38, 1, 195, 3, 0, 21, 1, 7),
(74, 38, 1, 199, 0, 4, 0, 22, 2),
(75, 38, 1, 201, 6, 4, 0, 29, 1),
(76, 38, 1, 197, 7, 0, 2, 0, 18),
(77, 38, 1, 202, 0, 9, 4, 0, 44),
(78, 34, 1, 215, 4, 0, 24, 2, 6),
(79, 34, 1, 216, 0, 2, 0, 16, 0),
(80, 34, 1, 217, 8, 3, 0, 21, 4),
(81, 34, 1, 209, 6, 2, 0, 17, 1),
(82, 34, 1, 218, 9, 1, 0, 10, 0),
(83, 34, 1, 213, 10, 4, 0, 19, 3),
(84, 34, 1, 23, 4, 0, 26, 1, 6.5),
(85, 34, 1, 14, 0, 4, 0, 9, 3),
(86, 34, 1, 1, 2, 0, 3, 1, 31),
(87, 34, 1, 206, 1, 8, 4, 0, 13),
(88, 34, 1, 18, 2, 3, 2, 0, 23),
(89, 34, 1, 207, 0, 12, 1, 0, 7),
(90, 34, 1, 203, 0, 7, 1, 0, 3),
(91, 33, 1, 121, 4, 0, 19, 2, 4.75),
(92, 33, 1, 120, 3, 0, 23, 1, 7.66),
(93, 33, 1, 119, 0, 3, 0, 40, 0),
(94, 33, 1, 228, 13, 0, 4, 0, 14),
(95, 33, 1, 3, 1, 4, 4, 0, 25),
(96, 33, 1, 118, 1, 6, 2, 0, 15),
(97, 33, 1, 229, 3, 0, 28, 1, 9.33),
(98, 33, 1, 230, 4, 1, 32, 2, 8),
(99, 33, 1, 231, 4, 0, 18, 3, 4.5),
(100, 33, 1, 222, 3, 0, 14, 0, 4.66),
(101, 33, 1, 232, 3, 0, 25, 2, 8.33),
(102, 33, 1, 220, 3, 0, 10, 0, 3.33),
(103, 32, 1, 165, 3, 1, 12, 2, 4),
(104, 32, 1, 241, 0, 3, 0, 24, 0),
(105, 32, 1, 242, 8, 4, 0, 20, 1),
(106, 32, 1, 243, 5, 0, 4, 0, 30),
(107, 32, 1, 244, 0, 8, 0, 1, 0),
(108, 30, 1, 10, 4, 0, 23, 1, 5.75),
(109, 30, 1, 23, 4, 0, 17, 2, 4.25),
(110, 30, 1, 18, 0, 3, 0, 27, 1),
(111, 30, 1, 14, 9, 0, 4, 0, 22),
(112, 30, 1, 205, 0, 6, 3, 0, 22),
(113, 30, 1, 1, 0, 7, 0, 2, 0),
(114, 30, 1, 230, 2, 0, 21, 0, 10.5),
(115, 30, 1, 222, 3, 0, 23, 0, 7.66),
(116, 30, 1, 232, 4, 0, 40, 0, 10),
(117, 30, 1, 231, 2, 0, 16, 0, 8),
(118, 30, 1, 229, 3, 0, 14, 1, 4.66),
(119, 30, 1, 220, 1, 0, 16, 0, 10.66),
(120, 28, 1, 175, 2, 0, 19, 1, 9.5),
(121, 28, 1, 176, 0, 4, 0, 24, 2),
(122, 28, 1, 178, 6, 0, 3, 0, 24),
(123, 28, 1, 172, 0, 8, 0, 3, 0),
(124, 28, 1, 247, 30, 0, 10, 0, 2),
(125, 31, 1, 255, 4, 0, 24, 2, 6),
(126, 31, 1, 256, 4, 0, 38, 1, 9.5),
(127, 31, 1, 257, 0, 3, 0, 14, 0),
(128, 31, 1, 258, 5, 4, 0, 24, 1),
(129, 31, 1, 252, 6, 0, 4, 0, 22),
(130, 31, 1, 248, 0, 6, 1, 0, 11),
(131, 31, 1, 178, 4, 0, 26, 0, 6.5),
(132, 31, 1, 176, 4, 0, 22, 1, 5.5),
(133, 31, 1, 177, 4, 0, 30, 1, 7.5),
(134, 31, 1, 172, 0, 3, 0, 32, 0),
(135, 31, 1, 169, 11, 0, 2, 0, 12),
(136, 31, 1, 247, 0, 6, 2, 0, 9),
(137, 31, 1, 173, 2, 5, 1, 0, 13),
(138, 29, 1, 121, 4, 0, 27, 2, 6.75),
(139, 29, 1, 116, 2, 0, 23, 0, 11.5),
(140, 29, 1, 260, 0, 4, 0, 32, 2),
(141, 29, 1, 119, 8, 0, 3, 0, 17),
(142, 29, 1, 120, 0, 6, 3, 0, 24),
(143, 29, 1, 3, 1, 8, 0, 4, 0),
(144, 29, 1, 215, 3, 0, 19, 1, 6.33),
(145, 29, 1, 216, 4, 0, 35, 1, 8.75),
(146, 29, 1, 217, 0, 3, 0, 22, 0),
(147, 29, 1, 209, 7, 0, 3, 0, 15),
(148, 29, 1, 213, 0, 5, 2, 0, 23),
(149, 29, 1, 259, 0, 12, 0, 3, 0),
(150, 27, 1, 165, 4, 0, 24, 0, 6),
(151, 27, 1, 243, 0, 4, 0, 53, 1),
(152, 27, 1, 241, 13, 1, 0, 11, 0),
(153, 27, 1, 244, 11, 4, 0, 18, 2),
(154, 27, 1, 262, 5, 4, 0, 26, 2),
(155, 27, 1, 168, 7, 3, 0, 26, 0),
(156, 27, 1, 255, 4, 0, 38, 0, 9.5),
(157, 27, 1, 263, 0, 2, 0, 17, 0),
(158, 27, 1, 257, 9, 4, 0, 20, 1),
(159, 27, 1, 256, 5, 0, 4, 1, 37),
(160, 27, 1, 252, 4, 9, 4, 0, 27),
(161, 27, 1, 248, 1, 7, 0, 2, 0),
(162, 26, 1, 215, 2, 0, 15, 0, 7.5),
(163, 26, 1, 216, 4, 0, 25, 3, 6.25),
(164, 26, 1, 115, 0, 3, 0, 29, 1),
(165, 26, 1, 217, 10, 4, 0, 26, 2),
(166, 26, 1, 209, 7, 0, 4, 0, 34),
(167, 26, 1, 259, 0, 9, 0, 3, 0),
(168, 26, 1, 222, 2, 0, 7, 1, 3.5),
(169, 26, 1, 230, 3, 0, 13, 2, 4.33),
(170, 26, 1, 231, 2, 0, 12, 1, 6),
(171, 26, 1, 229, 4, 0, 14, 3, 3.5),
(172, 26, 1, 232, 4, 0, 9, 3, 2.25),
(173, 26, 1, 220, 2, 0, 13, 0, 6.5);

-- --------------------------------------------------------

--
-- Table structure for table `guest_comment`
--

CREATE TABLE IF NOT EXISTS `guest_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid_id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `newsid_id` int(11) NOT NULL,
  `numlike` int(11) NOT NULL,
  `numdislike` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Guest_comment_936913d1` (`userid_id`),
  KEY `Guest_comment_5779a8d4` (`newsid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `guest_comment`
--

INSERT INTO `guest_comment` (`id`, `userid_id`, `message`, `newsid_id`, `numlike`, `numdislike`) VALUES
(1, 2, 'asdsa', 188, 4, 0),
(2, 2, 'asdasdsadadad', 188, 1, 1),
(3, 2, 'asdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 188, 0, 1),
(4, 2, 'guygyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyuunuy7gftuyyyyyyyyiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiutiuuuuuyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyym', 188, 1, 0),
(5, 3, 'news kisu nai kan???', 187, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `guest_match`
--

CREATE TABLE IF NOT EXISTS `guest_match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team1_id` int(11) NOT NULL,
  `team2_id` int(11) NOT NULL,
  `venue` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `mtype` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Guest_match_bfb2ba20` (`team1_id`),
  KEY `Guest_match_bdec4cfd` (`team2_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `guest_match`
--

INSERT INTO `guest_match` (`id`, `team1_id`, `team2_id`, `venue`, `date`, `mtype`) VALUES
(25, 14, 4, '\nShere Bangla Nation', 'Sun Mar 1609:30 GMT ', 'T20'),
(26, 11, 12, '\nZahur Ahmed Chowdhu', 'Sun Mar 1613:30 GMT ', 'T20'),
(27, 10, 3, '\nSylhet Stadium\n', 'Mon Mar 1709:30 GMT ', 'T20'),
(28, 9, 1, '\nSylhet Stadium\n', 'Mon Mar 1713:30 GMT ', 'T20'),
(29, 4, 11, '\nZahur Ahmed Chowdhu', 'Tue Mar 1809:30 GMT ', 'T20'),
(30, 14, 12, '\nZahur Ahmed Chowdhu', 'Tue Mar 1813:30 GMT ', 'T20'),
(31, 9, 3, '\nSylhet Stadium\n', 'Wed Mar 1909:30 GMT ', 'T20'),
(32, 10, 1, '\nSylhet Stadium\n', 'Wed Mar 1913:30 GMT ', 'T20'),
(33, 4, 12, '\nZahur Ahmed Chowdhu', 'Thu Mar 2009:30 GMT ', 'T20'),
(34, 14, 11, '\nZahur Ahmed Chowdhu', 'Thu Mar 2013:30 GMT ', 'T20'),
(35, 3, 1, '\nSylhet Stadium\n', 'Fri Mar 2105:30 GMT ', 'T20'),
(36, 10, 9, '\nSylhet Stadium\n', 'Fri Mar 2109:30 GMT ', 'T20'),
(37, 16, 8, '\nShere Bangla Nation', 'Fri Mar 2113:30 GMT ', 'T20'),
(38, 2, 5, '\nZahur Ahmed Chowdhu', 'Sat Mar 2209:30 GMT ', 'T20'),
(39, 13, 7, '\nZahur Ahmed Chowdhu', 'Sat Mar 2213:30 GMT ', 'T20'),
(40, 15, 8, '\nShere Bangla Nation', 'Sun Mar 2309:30 GMT ', 'T20'),
(41, 16, 6, '\nShere Bangla Nation', 'Sun Mar 2313:30 GMT ', 'T20'),
(42, 7, 2, '\nZahur Ahmed Chowdhu', 'Mon Mar 2409:30 GMT ', 'T20'),
(43, 13, 5, '\nZahur Ahmed Chowdhu', 'Thu Mar 2713:30 GMT ', 'T20'),
(44, 15, 6, '\nShere Bangla Nation', 'Fri Mar 2809:30 GMT ', 'T20'),
(45, 13, 2, '\nZahur Ahmed Chowdhu', 'Sat Mar 2913:30 GMT ', 'T20'),
(46, 15, 16, '\nShere Bangla Nation', 'Sun Mar 3013:30 GMT ', 'T20'),
(47, 7, 5, '\nZahur Ahmed Chowdhu', 'Mon Mar 3113:30 GMT ', 'T20'),
(48, 8, 6, '\nShere Bangla Nation', 'Tue Apr 113:30 GMT  ', 'T20'),
(49, 4, 5, 'Sher Bangla', 'Sun March 1201:30', 'T20'),
(50, 4, 5, 'Sher Bangla', 'Sun March 1201:30', 'T20');

-- --------------------------------------------------------

--
-- Table structure for table `guest_news`
--

CREATE TABLE IF NOT EXISTS `guest_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `body` varchar(3000) NOT NULL,
  `date` varchar(40) NOT NULL,
  `photoURL` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=208 ;

--
-- Dumping data for table `guest_news`
--

INSERT INTO `guest_news` (`id`, `caption`, `body`, `date`, `photoURL`) VALUES
(187, 'India spinners complete whitewash', 'India Women 82 for 3 (Kumari 36) beat ', 'March 13, 2014', 'a'),
(188, 'Sensational Afridi seals final berth', 'Pakistan 329 for 7 (Shehzad 103, Alam 74, Afridi 59, Hafeez 52) beat ', 'March 4, 2014', 'a'),
(189, 'Bangladesh batsmen show bite', '\nAt the halfway stage, Bangladesh had erected their highest ODI total, and were on a high after lashing 121 runs in the final 10 overs. Their bowling, however, brought them back to earth as everything came undone in the face of a Shahid Afridi onslaught.\n\nThe required run-rate was a shade under 11 when the final 10 overs began. Mushfiqur Rahim had banked on his spinners to coax it upward but Mahmudullah leaked 16 in the 42nd over and Shakib Al Hasan, their best bowler, was flayed for three sixes in the 43rd. The switch to pace proved just as disastrous as Shafiul Islam was carved for 16 in the 45th. Abdur Razzak''s experience proved for little as he was slogged for 18 in the 48th. And by now Pakistan''s equation was a very manageable 13 off 12 balls. \n', 'March 5, 2014', 'a'),
(190, 'Need to focus on our own problems - Anamul', '\nBangladesh will look to improve on their bowling and fielding in their last Asia Cup match, against Sri Lanka. Anamul Haque', 'March 5, 2014', 'a'),
(191, 'Ahmed, Mondal set up Bangladesh win', 'Bangladesh Women 152 (Ahmed 44, Jalil 3-26) beat ', 'March 4, 2014', 'a'),
(192, 'Bangladesh take low scorer to seal series', 'Bangladesh Women 88 for 7 (Rahman 29, Mir 4-36) beat ', 'March 6, 2014', 'a'),
(193, 'Mathews overcomes the finisher''s jinx', '\nPressing forward to a length ball from Shakib Al Hasan, Angelo Mathews', 'March 6, 2014', 'a'),
(194, 'Pakistan nearly through, India nearly out', '\nWith Sri Lanka having qualified for the Asia Cup finals with their win against Afghanistan, there is only one place left for the other teams to vie for. Pakistan, with two wins under their belt and a game left, are the most likely team to face Sri Lanka in the finals on Saturday. A win for Pakistan against Bangladesh will put all doubts to rest. Pakistan will go through and the others will be out of the Asia Cup. But should they lose to Bangladesh in their next match, all the other teams will also be in with a chance - however remote - for a place in the finals. The following is what the teams need to do, and also what they need others to do for them, to find a place in the final.\n\nPakistan can only be eliminated under the following scenarios, which on Bangladesh''s current form look highly unlikely - (i) Bangladesh win both their remaining matches with bonus points and with ten points they go through to the final. (ii) Bangladesh win both their matches and get one bonus point against either of the teams. Then it will be a two-way tie on points with Pakistan, in which case Pakistan will be relegated. \n', 'March 3, 2014', 'a'),
(195, 'Mathews keeps Bangladesh winless', 'Sri Lanka 208 for 7 (Mathews 74*, Al-Amin 2-42) beat ', 'March 6, 2014', 'a'),
(196, 'Bangladesh devoid of form, balance and confidence', '\nBangladesh''s loss to Sri Lanka in their last Asia Cup game was their seventh consecutive ODI defeat. Given their impressive form in the home series against New Zealand, this slump is a drastic downturn in form. Worryingly for Bangladesh there has been a massive drop in confidence among the players.\n\nThe last time they suffered this long a losing streak was between March and August 2011, beginning from their last World Cup game. After being bowled out for 78 against South Africa, Bangladesh were crushed 0-3 by Australia and then Zimbabwe took a 3-0 lead in a five-match series. This time they lost 3-0 to Sri Lanka and were blanked in all four Asia Cup matches.\n', 'March 6, 2014', 'a'),
(197, 'Records tumble as Afridi gives an encore', '', 'March 4, 2014', 'a'),
(198, 'Bangladesh look to Shakib for turnaround', '\nMarch 4, 2014\nStart time 1400 local (0800 GMT)\n', 'March 3, 2014', 'a'),
(199, 'Raj, Naidu set up India win', 'India Women 101 for 1 (Mithali Raj 55*, Poonam Raut 42*) beat ', 'March 9, 2014', 'a'),
(200, 'Javeria stars in Pakistan win', 'Pakistan Women 126 for 4 (Javeria 58, Maroof 39) beat ', 'March 8, 2014', 'a'),
(201, 'Mushfiqur eyes revenge against Afghanistan', '\nBangladesh captain Mushfiqur Rahim', 'March 9, 2014', 'a'),
(202, 'Bangladesh desperate for slump to end', '\nMarch 6, 2014Start time 1400 local (0800 GMT)\n', 'March 5, 2014', 'a'),
(203, 'Bowlers set up India''s big win', 'India Women 66 for 2 (Mehta 23, Goswami 18*) beat ', 'March 11, 2014', 'a'),
(204, 'Nasir, Razzak look for turnaround', '\nBangladesh batsman Nasir Hossain', 'March 10, 2014', 'a'),
(205, 'Mortaza in race to get fit for World T20', 'Mashrafe Mortaza is in a race against time to get fit ahead of Bangladesh''s World T20 opener against Afghanistan on Sunday. He is recovering from a ', 'March 11, 2014', 'a'),
(206, '''Tone down'' World T20 expectations, Shakib tells home fans', 'Shakib Al Hasan has urged Bangladesh''s fans to be reasonable about their team''s chances in the World T20. Similarly, he wants to be remain sensible and calm on the field, and expects the same from his team-mates.\n', 'March 10, 2014', 'a'),
(207, 'Bangladesh Wins', 'Last night bangladesh won by 5 wicket', '28.03.2014', 'news1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guest_notification`
--

CREATE TABLE IF NOT EXISTS `guest_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(500) NOT NULL,
  `receiverid_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Guest_notification_c3bf5b0b` (`receiverid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `guest_photo`
--

CREATE TABLE IF NOT EXISTS `guest_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `guest_photo`
--

INSERT INTO `guest_photo` (`id`, `caption`, `url`) VALUES
(1, 'Bangladesh V_s Newzeland - 2013 1', '/albums/Bangladesh V_s Newzeland - 2013/00_1001587_1406295426271051_1891710638_n.jpg'),
(2, 'Bangladesh V_s Newzeland - 2013 2', '/albums/Bangladesh V_s Newzeland - 2013/00_1001587_1406295429604384_95402641_n.jpg'),
(3, 'Bangladesh V_s Newzeland - 2013 3', '/albums/Bangladesh V_s Newzeland - 2013/00_1001587_1406295439604383_216540525_n.jpg'),
(4, 'Bangladesh V_s Newzeland - 2013 4', '/albums/Bangladesh V_s Newzeland - 2013/00_1001587_1406295442937716_1450896698_a.jpg'),
(5, 'Bangladesh V_s Newzeland - 2013 5', '/albums/Bangladesh V_s Newzeland - 2013/00_1383713_1408603326040261_989006645_n.jpg'),
(6, 'Bangladesh V_s Newzeland - 2013 6', '/albums/Bangladesh V_s Newzeland - 2013/00_1383713_1408603332706927_1706415178_n.jpg'),
(7, 'Bangladesh V_s Newzeland - 2013 7', '/albums/Bangladesh V_s Newzeland - 2013/00_1383713_1408603336040260_138534949_n.jpg'),
(8, 'Bangladesh V_s Newzeland - 2013 8', '/albums/Bangladesh V_s Newzeland - 2013/00_1394225_1409255915975002_1821267966_n.jpg'),
(9, 'Bangladesh V_s Newzeland - 2013 9', '/albums/Bangladesh V_s Newzeland - 2013/00_1394225_1409255919308335_1116555132_n.jpg'),
(10, 'Bangladesh V_s Newzeland - 2013 10', '/albums/Bangladesh V_s Newzeland - 2013/00_1394225_1409255922641668_735660500_n.jpg'),
(11, 'Bangladesh V_s Newzeland - 2013 11', '/albums/Bangladesh V_s Newzeland - 2013/00_1398380_1408603339373593_334576563_o.jpg'),
(12, 'Bangladesh V_s Newzeland - 2013 12', '/albums/Bangladesh V_s Newzeland - 2013/00_1404621_1406295436271050_2031741534_o.jpg'),
(13, 'Bangladesh V_s Newzeland - 2013 13', '/albums/Bangladesh V_s Newzeland - 2013/00_1404671_1409255909308336_1110436205_o.jpg'),
(14, 'Bangladesh V_s Newzeland - 2013 14', '/albums/Bangladesh V_s Newzeland - 2013/00_1404671_1409255912641669_1118109299_o.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guest_player`
--

CREATE TABLE IF NOT EXISTS `guest_player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `imageURL` varchar(200) NOT NULL,
  `birthdate` varchar(200) NOT NULL,
  `teams` varchar(200) NOT NULL,
  `roll` varchar(200) NOT NULL,
  `batstyle` varchar(20) NOT NULL,
  `bowlstyle` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=293 ;

--
-- Dumping data for table `guest_player`
--

INSERT INTO `guest_player` (`id`, `name`, `imageURL`, `birthdate`, `teams`, `roll`, `batstyle`, `bowlstyle`) VALUES
(1, 'Abdur Razzak', 'a', '\nJune 15, 1982, Khulna ', 'Bangladesh,Asia XI,Khulna Division,Rangpur Riders,Royal Challengers Bangalore,South Zone (Bangladesh)', 'Bowler', 'Left-hand bat', 'Slow left-arm orthod'),
(2, 'Sajedul Islam', 'a', '\nJanuary 18, 1988, Rangpur ', 'Bangladesh,Bangladesh A,Barisal Division,North Zone (Bangladesh),Rangpur Division,Victoria Sporting Club', 'Allrounder', 'Left-hand bat', 'Left-arm medium'),
(3, 'Mohammad Nasir Hossain', 'a', '\nNovember 30, 1991 ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Barisal Division,North Zone (Bangladesh),Rajshahi Division,Rangpur Division,Rangpur Riders', '', 'Right-hand bat', 'Right-arm offbreak'),
(4, 'SK Robiul Islam', 'a', '\nOctober 20, 1986, Satkhira ', 'Bangladesh,Australian Institute of Sports,Bangladesh A,Khulna Division,South Zone (Bangladesh)', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(5, 'Mohammed Naeem Islam', 'a', '\nDecember 31, 1986, Gaibandha ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Chittagong Kings,North Zone (Bangladesh),Rajshahi Division,Rangpur Division', 'Allrounder', 'Right-hand bat', 'Right-arm offbreak'),
(6, 'Mohammad Mushfiqur Rahim', 'a', '\nSeptember 1, 1988, Bogra ', 'Bangladesh,Bangladesh Under-19s,North Zone (Bangladesh),Rajshahi Division,Sylhet Division,Sylhet Royals', 'Wicketkeeper batsman', 'Right-hand bat', ''),
(7, 'Mominul Haque', 'a', '\nSeptember 29, 1991, Cox''s Bazar ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Chittagong Division,Dhaka Division,East Zone (Bangladesh),Sylhet Royals', '', 'Left-hand bat', 'Slow left-arm orthod'),
(8, 'Mohammad Ashraful', 'a', '\nJuly 7, 1984, Dhaka ', 'Bangladesh,Asia XI,Bangladesh A,Central Zone (Bangladesh),Dhaka Division,Dhaka Gladiators,Dhaka Gladiators,Dhaka Metropolis,Mumbai Indians', 'Middle-order batsman', 'Right-hand bat', 'Right-arm offbreak, '),
(9, 'Mohammad Mithun Ali', 'a', '\nFebruary 13, 1990 ', 'Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Bangladesh Under-23s,Kalabagan Krira Chakra,Khulna Division,Khulna Royal Bengals,South Zone (Bangladesh),Sylhet Division', '', 'Right-hand bat', ''),
(10, 'Mashrafe Bin Mortaza', 'a', '\nOctober 5, 1983, Norail, Jessore ', 'Bangladesh,Asia XI,Dhaka Gladiators,Khulna Division,Kolkata Knight Riders', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(11, 'Ziaur Rahman', 'a', '\nDecember 2, 1986 ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Bangladesh XI,Barisal Division,Chittagong Kings,Duronto Rajshahi,Khulna Division,South Zone (Bangladesh)', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(12, 'Tamim Iqbal Khan', 'a', '\nMarch 20, 1989, Chittagong ', 'Bangladesh,Asia XI,Bangladesh A,Bangladesh Under-19s,Chittagong Division,Duronto Rajshahi,Nottinghamshire,Pune Warriors,St Lucia Zouks,Wellington', 'Opening batsman', 'Left-hand bat', ''),
(13, 'Sohag Gazi', 'a', '\nAugust 5, 1991, Barisal ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Barisal Division,South Zone (Bangladesh),Sylhet Royals', '', 'Right-hand bat', 'Right-arm offbreak'),
(14, 'Shakib Al Hasan', 'a', '\nMarch 24, 1987, Magura, Jessore ', 'Bangladesh,Adelaide Strikers,Bangladesh A,Bangladesh Cricket Board XI,Barbados Tridents,Dhaka Gladiators,Khulna Division,Kolkata Knight Riders,Worcestershire', 'Allrounder', 'Left-hand bat', 'Slow left-arm orthod'),
(15, 'Mohammad Mahmudullah', 'a', '\nFebruary 4, 1986, Mymensingh ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Central Zone (Bangladesh),Chittagong Kings,Dhaka Division', 'Allrounder', 'Right-hand bat', 'Right-arm offbreak'),
(16, 'Marshall Ayub', 'a', '\nDecember 5, 1988, Dhaka ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Barisal Division,Central Zone (Bangladesh),Chittagong Division,Chittagong Kings,Dhaka Metropolis,Kalabagan Cricket Academy', '', 'Right-hand bat', 'Legbreak'),
(17, 'Imrul Kayes', 'a', '\nFebruary 2, 1987, Meherpur, Kushtia ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board XI,Khulna Division,Rangpur Riders,South Zone (Bangladesh)', 'Opening batsman', 'Left-hand bat', ''),
(18, 'Farhad Reza', 'a', '\nJune 16, 1986, Rajshahi ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Dhaka Warriors,Khulna Royal Bengals,North Zone (Bangladesh),Rajshahi Division', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(19, 'Mohammad Jahurul Islam', 'a', '\nDecember 12, 1986, Rajshahi ', 'Bangladesh,Bangladesh A,BCB Development Squad,Dhaka Division,Duronto Rajshahi,North Zone (Bangladesh),Rajshahi Division', '', 'Right-hand bat', 'Right-arm offbreak'),
(20, 'Enamul Haque jnr', 'a', '\nDecember 5, 1986, Sylhet, Bangladesh ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Chittagong Kings,East Zone (Bangladesh),Sylhet Division', '', 'Right-hand bat', 'Slow left-arm orthod'),
(21, 'Arafat Sunny', 'a', '\nSeptember 29, 1986 ', 'Bangladesh Under-19s,Barisal Division,Central Zone (Bangladesh),Chittagong Kings,Dhaka Division,Dhaka Metropolis,UCB-BCB Eleven', '', 'Left-hand bat', 'Slow left-arm orthod'),
(22, 'Mohammad Anamul Haque Bijoy', 'a', '\nDecember 16, 1992, Kushtia, Khulna ', 'Bangladesh,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Dhaka Division,Dhaka Gladiators,Khulna Division,South Zone (Bangladesh)', 'Wicketkeeper', 'Right-hand bat', ''),
(23, 'Al-Amin Hossain', 'a', '\nJanuary 1, 1990, Jhenidah ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Barisal Burners,Khulna Division,South Zone (Bangladesh)', '', 'Right-hand bat', 'Right-arm medium-fas'),
(24, 'Mohammed Abul Hasan', 'a', '\nAugust 5, 1992 ', 'Bangladesh,Bangladesh Under-19s,Duronto Rajshahi,East Zone (Bangladesh),Sylhet Division,Sylhet Royals', '', 'Left-hand bat', 'Right-arm medium-fas'),
(25, 'Mohammad Rubel Hossain', 'a', '\nJanuary 1, 1990 ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Chittagong Division,Chittagong Kings,Khulna Division,South Zone (Bangladesh)', 'Bowler', 'Right-hand bat', 'Right-arm medium-fas'),
(26, 'Shafiul Islam', 'a', '\nOctober 6, 1989, Bogra ', 'Bangladesh,Barisal Burners,North Zone (Bangladesh),Rajshahi Division', 'Bowler', 'Right-hand bat', 'Right-arm fast-mediu'),
(27, 'Shahriar Nafees Ahmed', 'a', '\nMay 1, 1985, Dhaka, Bangladesh ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Bangladesh Under-23s,Barisal Burners,Barisal Division,Dhaka Warriors,Khulna Royal Bengals', 'Top-order batsman', 'Left-hand bat', ''),
(28, 'Mohammad Sabbir Rahman', 'a', '\nAugust 20, 1991, Rajsahi ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Bangladesh Under-23s,Barisal Burners,Barisal Division,Rajshahi Division', '', 'Right-hand bat', 'Legbreak'),
(29, 'Mohammad Shamsur Rahman', 'a', '\nJune 5, 1988, Comilla ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Cricket Board XI,Bangladesh Under-19s,Central Zone (Bangladesh),Dhaka Division,Dhaka Metropolis,Mohammedan Sporting Club,Rangpur Rid', '', 'Right-hand bat', ''),
(30, 'Kazi Shahadat Hossain', 'a', '\nAugust 7, 1986, Dhaka ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Green,Bangladesh Under-19s,Central Zone (Bangladesh),Dhaka Division,Khulna Royal Bengals,Khulna Royal Bengals', '', 'Right-hand bat', 'Right-arm medium-fas'),
(31, 'Shahriar Nafees Ahmed', 'a', '\nMay 1, 1985, Dhaka, Bangladesh ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Bangladesh Under-23s,Barisal Burners,Barisal Division,Dhaka Warriors,Khulna Royal Bengals', 'Top-order batsman', 'Left-hand bat', ''),
(32, 'Abdur Razzak', 'a', '\nJune 15, 1982, Khulna ', 'Bangladesh,Asia XI,Khulna Division,Rangpur Riders,Royal Challengers Bangalore,South Zone (Bangladesh)', 'Bowler', 'Left-hand bat', 'Slow left-arm orthod'),
(33, 'Kazi Shahadat Hossain', 'a', '\nAugust 7, 1986, Dhaka ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Green,Bangladesh Under-19s,Central Zone (Bangladesh),Dhaka Division,Khulna Royal Bengals,Khulna Royal Bengals', '', 'Right-hand bat', 'Right-arm medium-fas'),
(34, 'Sohag Gazi', 'a', '\nAugust 5, 1991, Barisal ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Barisal Division,South Zone (Bangladesh),Sylhet Royals', '', 'Right-hand bat', 'Right-arm offbreak'),
(35, 'Shafiul Islam', 'a', '\nOctober 6, 1989, Bogra ', 'Bangladesh,Barisal Burners,North Zone (Bangladesh),Rajshahi Division', 'Bowler', 'Right-hand bat', 'Right-arm fast-mediu'),
(36, 'Mohammad Sabbir Rahman', 'a', '\nAugust 20, 1991, Rajsahi ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Bangladesh Under-23s,Barisal Burners,Barisal Division,Rajshahi Division', '', 'Right-hand bat', 'Legbreak'),
(37, 'SK Robiul Islam', 'a', '\nOctober 20, 1986, Satkhira ', 'Bangladesh,Australian Institute of Sports,Bangladesh A,Khulna Division,South Zone (Bangladesh)', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(38, 'Mohammed Naeem Islam', 'a', '\nDecember 31, 1986, Gaibandha ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Chittagong Kings,North Zone (Bangladesh),Rajshahi Division,Rangpur Division', 'Allrounder', 'Right-hand bat', 'Right-arm offbreak'),
(39, 'Mohammad Ashraful', 'a', '\nJuly 7, 1984, Dhaka ', 'Bangladesh,Asia XI,Bangladesh A,Central Zone (Bangladesh),Dhaka Division,Dhaka Gladiators,Dhaka Gladiators,Dhaka Metropolis,Mumbai Indians', 'Middle-order batsman', 'Right-hand bat', 'Right-arm offbreak, '),
(40, 'Mohammad Nasir Hossain', 'a', '\nNovember 30, 1991 ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Barisal Division,North Zone (Bangladesh),Rajshahi Division,Rangpur Division,Rangpur Riders', '', 'Right-hand bat', 'Right-arm offbreak'),
(41, 'Tamim Iqbal Khan', 'a', '\nMarch 20, 1989, Chittagong ', 'Bangladesh,Asia XI,Bangladesh A,Bangladesh Under-19s,Chittagong Division,Duronto Rajshahi,Nottinghamshire,Pune Warriors,St Lucia Zouks,Wellington', 'Opening batsman', 'Left-hand bat', ''),
(42, 'Mohammad Mithun Ali', 'a', '\nFebruary 13, 1990 ', 'Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Bangladesh Under-23s,Kalabagan Krira Chakra,Khulna Division,Khulna Royal Bengals,South Zone (Bangladesh),Sylhet Division', '', 'Right-hand bat', ''),
(43, 'Shakib Al Hasan', 'a', '\nMarch 24, 1987, Magura, Jessore ', 'Bangladesh,Adelaide Strikers,Bangladesh A,Bangladesh Cricket Board XI,Barbados Tridents,Dhaka Gladiators,Khulna Division,Kolkata Knight Riders,Worcestershire', 'Allrounder', 'Left-hand bat', 'Slow left-arm orthod'),
(44, 'Marshall Ayub', 'a', '\nDecember 5, 1988, Dhaka ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Barisal Division,Central Zone (Bangladesh),Chittagong Division,Chittagong Kings,Dhaka Metropolis,Kalabagan Cricket Academy', '', 'Right-hand bat', 'Legbreak'),
(45, 'Mominul Haque', 'a', '\nSeptember 29, 1991, Cox''s Bazar ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Chittagong Division,Dhaka Division,East Zone (Bangladesh),Sylhet Royals', '', 'Left-hand bat', 'Slow left-arm orthod'),
(46, 'Sajedul Islam', 'a', '\nJanuary 18, 1988, Rangpur ', 'Bangladesh,Bangladesh A,Barisal Division,North Zone (Bangladesh),Rangpur Division,Victoria Sporting Club', 'Allrounder', 'Left-hand bat', 'Left-arm medium'),
(47, 'Mohammad Jahurul Islam', 'a', '\nDecember 12, 1986, Rajshahi ', 'Bangladesh,Bangladesh A,BCB Development Squad,Dhaka Division,Duronto Rajshahi,North Zone (Bangladesh),Rajshahi Division', '', 'Right-hand bat', 'Right-arm offbreak'),
(48, 'Mohammad Mahmudullah', 'a', '\nFebruary 4, 1986, Mymensingh ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Central Zone (Bangladesh),Chittagong Kings,Dhaka Division', 'Allrounder', 'Right-hand bat', 'Right-arm offbreak'),
(49, 'Mohammad Shamsur Rahman', 'a', '\nJune 5, 1988, Comilla ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Cricket Board XI,Bangladesh Under-19s,Central Zone (Bangladesh),Dhaka Division,Dhaka Metropolis,Mohammedan Sporting Club,Rangpur Rid', '', 'Right-hand bat', ''),
(50, 'Mohammad Mushfiqur Rahim', 'a', '\nSeptember 1, 1988, Bogra ', 'Bangladesh,Bangladesh Under-19s,North Zone (Bangladesh),Rajshahi Division,Sylhet Division,Sylhet Royals', 'Wicketkeeper batsman', 'Right-hand bat', ''),
(51, 'Farhad Reza', 'a', '\nJune 16, 1986, Rajshahi ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Dhaka Warriors,Khulna Royal Bengals,North Zone (Bangladesh),Rajshahi Division', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(52, 'Ziaur Rahman', 'a', '\nDecember 2, 1986 ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Bangladesh XI,Barisal Division,Chittagong Kings,Duronto Rajshahi,Khulna Division,South Zone (Bangladesh)', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(53, 'Al-Amin Hossain', 'a', '\nJanuary 1, 1990, Jhenidah ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Barisal Burners,Khulna Division,South Zone (Bangladesh)', '', 'Right-hand bat', 'Right-arm medium-fas'),
(54, 'Mohammed Abul Hasan', 'a', '\nAugust 5, 1992 ', 'Bangladesh,Bangladesh Under-19s,Duronto Rajshahi,East Zone (Bangladesh),Sylhet Division,Sylhet Royals', '', 'Left-hand bat', 'Right-arm medium-fas'),
(55, 'Mashrafe Bin Mortaza', 'a', '\nOctober 5, 1983, Norail, Jessore ', 'Bangladesh,Asia XI,Dhaka Gladiators,Khulna Division,Kolkata Knight Riders', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(56, 'Mohammad Rubel Hossain', 'a', '\nJanuary 1, 1990 ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Chittagong Division,Chittagong Kings,Khulna Division,South Zone (Bangladesh)', 'Bowler', 'Right-hand bat', 'Right-arm medium-fas'),
(57, 'Arafat Sunny', 'a', '\nSeptember 29, 1986 ', 'Bangladesh Under-19s,Barisal Division,Central Zone (Bangladesh),Chittagong Kings,Dhaka Division,Dhaka Metropolis,UCB-BCB Eleven', '', 'Left-hand bat', 'Slow left-arm orthod'),
(58, 'Mohammad Anamul Haque Bijoy', 'a', '\nDecember 16, 1992, Kushtia, Khulna ', 'Bangladesh,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Dhaka Division,Dhaka Gladiators,Khulna Division,South Zone (Bangladesh)', 'Wicketkeeper', 'Right-hand bat', ''),
(59, 'Imrul Kayes', 'a', '\nFebruary 2, 1987, Meherpur, Kushtia ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board XI,Khulna Division,Rangpur Riders,South Zone (Bangladesh)', 'Opening batsman', 'Left-hand bat', ''),
(60, 'Enamul Haque jnr', 'a', '\nDecember 5, 1986, Sylhet, Bangladesh ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Chittagong Kings,East Zone (Bangladesh),Sylhet Division', '', 'Right-hand bat', 'Slow left-arm orthod'),
(61, 'Shakib Al Hasan', 'a', '\nMarch 24, 1987, Magura, Jessore ', 'Bangladesh,Adelaide Strikers,Bangladesh A,Bangladesh Cricket Board XI,Barbados Tridents,Dhaka Gladiators,Khulna Division,Kolkata Knight Riders,Worcestershire', 'Allrounder', 'Left-hand bat', 'Slow left-arm orthod'),
(62, 'Sohag Gazi', 'a', '\nAugust 5, 1991, Barisal ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Barisal Division,South Zone (Bangladesh),Sylhet Royals', '', 'Right-hand bat', 'Right-arm offbreak'),
(63, 'Tamim Iqbal Khan', 'a', '\nMarch 20, 1989, Chittagong ', 'Bangladesh,Asia XI,Bangladesh A,Bangladesh Under-19s,Chittagong Division,Duronto Rajshahi,Nottinghamshire,Pune Warriors,St Lucia Zouks,Wellington', 'Opening batsman', 'Left-hand bat', ''),
(64, 'Ziaur Rahman', 'a', '\nDecember 2, 1986 ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Bangladesh XI,Barisal Division,Chittagong Kings,Duronto Rajshahi,Khulna Division,South Zone (Bangladesh)', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(65, 'Mohammad Sabbir Rahman', 'a', '\nAugust 20, 1991, Rajsahi ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Bangladesh Under-23s,Barisal Burners,Barisal Division,Rajshahi Division', '', 'Right-hand bat', 'Legbreak'),
(66, 'Mohammad Shamsur Rahman', 'a', '\nJune 5, 1988, Comilla ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Cricket Board XI,Bangladesh Under-19s,Central Zone (Bangladesh),Dhaka Division,Dhaka Metropolis,Mohammedan Sporting Club,Rangpur Rid', '', 'Right-hand bat', ''),
(67, 'Abdur Razzak', 'a', '\nJune 15, 1982, Khulna ', 'Bangladesh,Asia XI,Khulna Division,Rangpur Riders,Royal Challengers Bangalore,South Zone (Bangladesh)', 'Bowler', 'Left-hand bat', 'Slow left-arm orthod'),
(68, 'Shahriar Nafees Ahmed', 'a', '\nMay 1, 1985, Dhaka, Bangladesh ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Bangladesh Under-23s,Barisal Burners,Barisal Division,Dhaka Warriors,Khulna Royal Bengals', 'Top-order batsman', 'Left-hand bat', ''),
(69, 'Kazi Shahadat Hossain', 'a', '\nAugust 7, 1986, Dhaka ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Green,Bangladesh Under-19s,Central Zone (Bangladesh),Dhaka Division,Khulna Royal Bengals,Khulna Royal Bengals', '', 'Right-hand bat', 'Right-arm medium-fas'),
(70, 'Mohammad Rubel Hossain', 'a', '\nJanuary 1, 1990 ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Chittagong Division,Chittagong Kings,Khulna Division,South Zone (Bangladesh)', 'Bowler', 'Right-hand bat', 'Right-arm medium-fas'),
(71, 'Sajedul Islam', 'a', '\nJanuary 18, 1988, Rangpur ', 'Bangladesh,Bangladesh A,Barisal Division,North Zone (Bangladesh),Rangpur Division,Victoria Sporting Club', 'Allrounder', 'Left-hand bat', 'Left-arm medium'),
(72, 'SK Robiul Islam', 'a', '\nOctober 20, 1986, Satkhira ', 'Bangladesh,Australian Institute of Sports,Bangladesh A,Khulna Division,South Zone (Bangladesh)', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(73, 'Mashrafe Bin Mortaza', 'a', '\nOctober 5, 1983, Norail, Jessore ', 'Bangladesh,Asia XI,Dhaka Gladiators,Khulna Division,Kolkata Knight Riders', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(74, 'Mohammad Mushfiqur Rahim', 'a', '\nSeptember 1, 1988, Bogra ', 'Bangladesh,Bangladesh Under-19s,North Zone (Bangladesh),Rajshahi Division,Sylhet Division,Sylhet Royals', 'Wicketkeeper batsman', 'Right-hand bat', ''),
(75, 'Mohammad Ashraful', 'a', '\nJuly 7, 1984, Dhaka ', 'Bangladesh,Asia XI,Bangladesh A,Central Zone (Bangladesh),Dhaka Division,Dhaka Gladiators,Dhaka Gladiators,Dhaka Metropolis,Mumbai Indians', 'Middle-order batsman', 'Right-hand bat', 'Right-arm offbreak, '),
(76, 'Mohammed Naeem Islam', 'a', '\nDecember 31, 1986, Gaibandha ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Chittagong Kings,North Zone (Bangladesh),Rajshahi Division,Rangpur Division', 'Allrounder', 'Right-hand bat', 'Right-arm offbreak'),
(77, 'Marshall Ayub', 'a', '\nDecember 5, 1988, Dhaka ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Barisal Division,Central Zone (Bangladesh),Chittagong Division,Chittagong Kings,Dhaka Metropolis,Kalabagan Cricket Academy', '', 'Right-hand bat', 'Legbreak'),
(78, 'Mohammad Mithun Ali', 'a', '\nFebruary 13, 1990 ', 'Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Bangladesh Under-23s,Kalabagan Krira Chakra,Khulna Division,Khulna Royal Bengals,South Zone (Bangladesh),Sylhet Division', '', 'Right-hand bat', ''),
(79, 'Mohammad Mahmudullah', 'a', '\nFebruary 4, 1986, Mymensingh ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Central Zone (Bangladesh),Chittagong Kings,Dhaka Division', 'Allrounder', 'Right-hand bat', 'Right-arm offbreak'),
(80, 'Shafiul Islam', 'a', '\nOctober 6, 1989, Bogra ', 'Bangladesh,Barisal Burners,North Zone (Bangladesh),Rajshahi Division', 'Bowler', 'Right-hand bat', 'Right-arm fast-mediu'),
(81, 'Mohammad Jahurul Islam', 'a', '\nDecember 12, 1986, Rajshahi ', 'Bangladesh,Bangladesh A,BCB Development Squad,Dhaka Division,Duronto Rajshahi,North Zone (Bangladesh),Rajshahi Division', '', 'Right-hand bat', 'Right-arm offbreak'),
(82, 'Imrul Kayes', 'a', '\nFebruary 2, 1987, Meherpur, Kushtia ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board XI,Khulna Division,Rangpur Riders,South Zone (Bangladesh)', 'Opening batsman', 'Left-hand bat', ''),
(83, 'Mohammad Nasir Hossain', 'a', '\nNovember 30, 1991 ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Barisal Division,North Zone (Bangladesh),Rajshahi Division,Rangpur Division,Rangpur Riders', '', 'Right-hand bat', 'Right-arm offbreak'),
(84, 'Farhad Reza', 'a', '\nJune 16, 1986, Rajshahi ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Dhaka Warriors,Khulna Royal Bengals,North Zone (Bangladesh),Rajshahi Division', '', 'Right-hand bat', 'Right-arm fast-mediu'),
(85, 'Mohammad Anamul Haque Bijoy', 'a', '\nDecember 16, 1992, Kushtia, Khulna ', 'Bangladesh,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Dhaka Division,Dhaka Gladiators,Khulna Division,South Zone (Bangladesh)', 'Wicketkeeper', 'Right-hand bat', ''),
(86, 'Arafat Sunny', 'a', '\nSeptember 29, 1986 ', 'Bangladesh Under-19s,Barisal Division,Central Zone (Bangladesh),Chittagong Kings,Dhaka Division,Dhaka Metropolis,UCB-BCB Eleven', '', 'Left-hand bat', 'Slow left-arm orthod'),
(87, 'Enamul Haque jnr', 'a', '\nDecember 5, 1986, Sylhet, Bangladesh ', 'Bangladesh,Bangladesh A,Bangladesh Under-19s,Chittagong Kings,East Zone (Bangladesh),Sylhet Division', '', 'Right-hand bat', 'Slow left-arm orthod'),
(88, 'Al-Amin Hossain', 'a', '\nJanuary 1, 1990, Jhenidah ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Barisal Burners,Khulna Division,South Zone (Bangladesh)', '', 'Right-hand bat', 'Right-arm medium-fas'),
(89, 'Mohammed Abul Hasan', 'a', '\nAugust 5, 1992 ', 'Bangladesh,Bangladesh Under-19s,Duronto Rajshahi,East Zone (Bangladesh),Sylhet Division,Sylhet Royals', '', 'Left-hand bat', 'Right-arm medium-fas'),
(90, 'Mominul Haque', 'a', '\nSeptember 29, 1991, Cox''s Bazar ', 'Bangladesh,Bangladesh A,Bangladesh Cricket Board Academy,Bangladesh Under-19s,Chittagong Division,Dhaka Division,East Zone (Bangladesh),Sylhet Royals', '', 'Left-hand bat', 'Slow left-arm orthod'),
(91, 'Q de Kock', 'a', ' ', ' ', ' ', ' ', ' '),
(92, 'HM Amla', 'a', ' ', ' ', ' ', ' ', ' '),
(93, 'F du Plessis', 'a', ' ', ' ', ' ', ' ', ' '),
(94, 'AB de Villiers', 'a', ' ', ' ', ' ', ' ', ' '),
(95, 'JP Duminy', 'a', ' ', ' ', ' ', ' ', ' '),
(96, 'DA Miller', 'a', ' ', ' ', ' ', ' ', ' '),
(97, 'JA Morkel', 'a', ' ', ' ', ' ', ' ', ' '),
(98, 'DW Steyn', 'a', ' ', ' ', ' ', ' ', ' '),
(99, 'Extras', 'a', ' ', ' ', ' ', ' ', ' '),
(100, 'Total', 'a', ' ', ' ', ' ', ' ', ' '),
(101, 'MJ Guptill', 'a', ' ', ' ', ' ', ' ', ' '),
(102, 'KS Williamson', 'a', ' ', ' ', ' ', ' ', ' '),
(103, 'BB McCullum', 'a', ' ', ' ', ' ', ' ', ' '),
(104, 'LRPL Taylor', 'a', ' ', ' ', ' ', ' ', ' '),
(105, 'C Munro', 'a', ' ', ' ', ' ', ' ', ' '),
(106, 'CJ Anderson', 'a', ' ', ' ', ' ', ' ', ' '),
(107, 'L Ronchi', 'a', ' ', ' ', ' ', ' ', ' '),
(108, 'NL McCullum', 'a', ' ', ' ', ' ', ' ', ' '),
(109, 'TG Southee', 'a', ' ', ' ', ' ', ' ', ' '),
(110, 'KD Mills', 'a', ' ', ' ', ' ', ' ', ' '),
(111, 'MJ McClenaghan', 'a', ' ', ' ', ' ', ' ', ' '),
(112, 'LL Tsotsobe', 'a', ' ', ' ', ' ', ' ', ' '),
(113, 'M Morkel', 'a', ' ', ' ', ' ', ' ', ' '),
(114, 'Imran Tahir', 'a', ' ', ' ', ' ', ' ', ' '),
(115, 'Najeeb Tarakai', 'a', ' ', ' ', ' ', ' ', ' '),
(116, 'Gulbadin Naib', 'a', ' ', ' ', ' ', ' ', ' '),
(117, 'Nawroz Mangal', 'a', ' ', ' ', ' ', ' ', ' '),
(118, 'Karim Sadiq', 'a', ' ', ' ', ' ', ' ', ' '),
(119, 'Samiullah Shenwari', 'a', ' ', ' ', ' ', ' ', ' '),
(120, 'Dawlat Zadran', 'a', ' ', ' ', ' ', ' ', ' '),
(121, 'Shapoor Zadran', 'a', ' ', ' ', ' ', ' ', ' '),
(122, 'Aftab Alam', 'a', ' ', ' ', ' ', ' ', ' '),
(123, 'Anamul Haque', 'a', ' ', ' ', ' ', ' ', ' '),
(124, 'Shakib Al Hasan', 'a', ' ', ' ', ' ', ' ', ' '),
(125, 'DR Smith', 'a', ' ', ' ', ' ', ' ', ' '),
(126, 'CH Gayle', 'a', ' ', ' ', ' ', ' ', ' '),
(127, 'MN Samuels', 'a', ' ', ' ', ' ', ' ', ' '),
(128, 'LMP Simmons', 'a', ' ', ' ', ' ', ' ', ' '),
(129, 'DJ Bravo', 'a', ' ', ' ', ' ', ' ', ' '),
(130, 'DJG Sammy', 'a', ' ', ' ', ' ', ' ', ' '),
(131, 'AD Russell', 'a', ' ', ' ', ' ', ' ', ' '),
(132, 'SP Narine', 'a', ' ', ' ', ' ', ' ', ' '),
(133, 'D Ramdin', 'a', ' ', ' ', ' ', ' ', ' '),
(134, 'RG Sharma', 'a', ' ', ' ', ' ', ' ', ' '),
(135, 'S Dhawan', 'a', ' ', ' ', ' ', ' ', ' '),
(136, 'V Kohli', 'a', ' ', ' ', ' ', ' ', ' '),
(137, 'Yuvraj Singh', 'a', ' ', ' ', ' ', ' ', ' '),
(138, 'SK Raina', 'a', ' ', ' ', ' ', ' ', ' '),
(139, 'B Kumar', 'a', ' ', ' ', ' ', ' ', ' '),
(140, 'R Ashwin', 'a', ' ', ' ', ' ', ' ', ' '),
(141, 'A Mishra', 'a', ' ', ' ', ' ', ' ', ' '),
(142, 'RA Jadeja', 'a', ' ', ' ', ' ', ' ', ' '),
(143, 'S Badree', 'a', ' ', ' ', ' ', ' ', ' '),
(144, 'K Santokie', 'a', ' ', ' ', ' ', ' ', ' '),
(145, 'MJ Lumb', 'a', ' ', ' ', ' ', ' ', ' '),
(146, 'AD Hales', 'a', ' ', ' ', ' ', ' ', ' '),
(147, 'MM Ali', 'a', ' ', ' ', ' ', ' ', ' '),
(148, 'EJG Morgan', 'a', ' ', ' ', ' ', ' ', ' '),
(149, 'JC Buttler', 'a', ' ', ' ', ' ', ' ', ' '),
(150, 'RS Bopara', 'a', ' ', ' ', ' ', ' ', ' '),
(151, 'CJ Jordan', 'a', ' ', ' ', ' ', ' ', ' '),
(152, 'TT Bresnan', 'a', ' ', ' ', ' ', ' ', ' '),
(153, 'JW Dernbach', 'a', ' ', ' ', ' ', ' ', ' '),
(154, 'SCJ Broad', 'a', ' ', ' ', ' ', ' ', ' '),
(155, 'Kamran Akmal', 'a', ' ', ' ', ' ', ' ', ' '),
(156, 'Ahmed Shehzad', 'a', ' ', ' ', ' ', ' ', ' '),
(157, 'Umar Akmal', 'a', ' ', ' ', ' ', ' ', ' '),
(158, 'Shoaib Malik', 'a', ' ', ' ', ' ', ' ', ' '),
(159, 'Shahid Afridi', 'a', ' ', ' ', ' ', ' ', ' '),
(160, 'Sohaib Maqsood', 'a', ' ', ' ', ' ', ' ', ' '),
(161, 'Bilawal Bhatti', 'a', ' ', ' ', ' ', ' ', ' '),
(162, 'Junaid Khan', 'a', ' ', ' ', ' ', ' ', ' '),
(163, 'Saeed Ajmal', 'a', ' ', ' ', ' ', ' ', ' '),
(164, 'WTS Porterfield', 'a', ' ', ' ', ' ', ' ', ' '),
(165, 'PR Stirling', 'a', ' ', ' ', ' ', ' ', ' '),
(166, 'EC Joyce', 'a', ' ', ' ', ' ', ' ', ' '),
(167, 'AD Poynter', 'a', ' ', ' ', ' ', ' ', ' '),
(168, 'KJ O''Brien', 'a', ' ', ' ', ' ', ' ', ' '),
(169, 'PW Borren', 'a', ' ', ' ', ' ', ' ', ' '),
(170, 'SJ Myburgh', 'a', ' ', ' ', ' ', ' ', ' '),
(171, 'W Barresi', 'a', ' ', ' ', ' ', ' ', ' '),
(172, 'LV van Beek', 'a', ' ', ' ', ' ', ' ', ' '),
(173, 'TLW Cooper', 'a', ' ', ' ', ' ', ' ', ' '),
(174, 'BN Cooper', 'a', ' ', ' ', ' ', ' ', ' '),
(175, 'MR Swart', 'a', ' ', ' ', ' ', ' ', ' '),
(176, 'T van der Gugten', 'a', ' ', ' ', ' ', ' ', ' '),
(177, 'MAA Jamil', 'a', ' ', ' ', ' ', ' ', ' '),
(178, 'Mudassar Bukhari', 'a', ' ', ' ', ' ', ' ', ' '),
(179, 'DA Warner', 'a', ' ', ' ', ' ', ' ', ' '),
(180, 'AJ Finch', 'a', ' ', ' ', ' ', ' ', ' '),
(181, 'SR Watson', 'a', ' ', ' ', ' ', ' ', ' '),
(182, 'GJ Maxwell', 'a', ' ', ' ', ' ', ' ', ' '),
(183, 'GJ Bailey', 'a', ' ', ' ', ' ', ' ', ' '),
(184, 'BJ Hodge', 'a', ' ', ' ', ' ', ' ', ' '),
(185, 'BJ Haddin', 'a', ' ', ' ', ' ', ' ', ' '),
(186, 'NM Coulter-Nile', 'a', ' ', ' ', ' ', ' ', ' '),
(187, 'MA Starc', 'a', ' ', ' ', ' ', ' ', ' '),
(188, 'GB Hogg', 'a', ' ', ' ', ' ', ' ', ' '),
(189, 'DE Bollinger', 'a', ' ', ' ', ' ', ' ', ' '),
(190, 'Zulfiqar Babar', 'a', ' ', ' ', ' ', ' ', ' '),
(191, 'MDKJ Perera', 'a', ' ', ' ', ' ', ' ', ' '),
(192, 'TM Dilshan', 'a', ' ', ' ', ' ', ' ', ' '),
(193, 'DPMD Jayawardene', 'a', ' ', ' ', ' ', ' ', ' '),
(194, 'KC Sangakkara', 'a', ' ', ' ', ' ', ' ', ' '),
(195, 'AD Mathews', 'a', ' ', ' ', ' ', ' ', ' '),
(196, 'LD Chandimal', 'a', ' ', ' ', ' ', ' ', ' '),
(197, 'NLTC Perera', 'a', ' ', ' ', ' ', ' ', ' '),
(198, 'KMDN Kulasekara', 'a', ' ', ' ', ' ', ' ', ' '),
(199, 'SMSM Senanayake', 'a', ' ', ' ', ' ', ' ', ' '),
(200, 'F Behardien', 'a', ' ', ' ', ' ', ' ', ' '),
(201, 'SL Malinga', 'a', ' ', ' ', ' ', ' ', ' '),
(202, 'BAW Mendis', 'a', ' ', ' ', ' ', ' ', ' '),
(203, 'Sabbir Rahman', 'a', ' ', ' ', ' ', ' ', ' '),
(204, 'Mushfiqur Rahim', 'a', ' ', ' ', ' ', ' ', ' '),
(205, 'Nasir Hossain', 'a', ' ', ' ', ' ', ' ', ' '),
(206, 'Mahmudullah', 'a', ' ', ' ', ' ', ' ', ' '),
(207, 'Rubel Hossain', 'a', ' ', ' ', ' ', ' ', ' '),
(208, 'Waqas Barkat', 'a', ' ', ' ', ' ', ' ', ' '),
(209, 'Irfan Ahmed', 'a', ' ', ' ', ' ', ' ', ' '),
(210, 'JJ Atkinson', 'a', ' ', ' ', ' ', ' ', ' '),
(211, 'MS Chapman', 'a', ' ', ' ', ' ', ' ', ' '),
(212, 'Babar Hayat', 'a', ' ', ' ', ' ', ' ', ' '),
(213, 'Nizakat Khan', 'a', ' ', ' ', ' ', ' ', ' '),
(214, 'Munir Dar', 'a', ' ', ' ', ' ', ' ', ' '),
(215, 'Tanwir Afzal', 'a', ' ', ' ', ' ', ' ', ' '),
(216, 'Haseeb Amjad', 'a', ' ', ' ', ' ', ' ', ' '),
(217, 'Nadeem Ahmed', 'a', ' ', ' ', ' ', ' ', ' '),
(218, 'Ehsan Nawaz', 'a', ' ', ' ', ' ', ' ', ' '),
(219, 'SP Khakurel', 'a', ' ', ' ', ' ', ' ', ' '),
(220, 'Sagar Pun', 'a', ' ', ' ', ' ', ' ', ' '),
(221, 'G Malla', 'a', ' ', ' ', ' ', ' ', ' '),
(222, 'P Khadka', 'a', ' ', ' ', ' ', ' ', ' '),
(223, 'S Vesawkar', 'a', ' ', ' ', ' ', ' ', ' '),
(224, 'B Bhandari', 'a', ' ', ' ', ' ', ' ', ' '),
(225, 'NB Budayair', 'a', ' ', ' ', ' ', ' ', ' '),
(226, 'Najibullah Zadran', 'a', ' ', ' ', ' ', ' ', ' '),
(227, 'Asghar Stanikzai', 'a', ' ', ' ', ' ', ' ', ' '),
(228, 'Mirwais Ashraf', 'a', ' ', ' ', ' ', ' ', ' '),
(229, 'B Regmi', 'a', ' ', ' ', ' ', ' ', ' '),
(230, 'Sompal Kami', 'a', ' ', ' ', ' ', ' ', ' '),
(231, 'JK Mukhiya', 'a', ' ', ' ', ' ', ' ', ' '),
(232, 'SP Gauchan', 'a', ' ', ' ', ' ', ' ', ' '),
(233, 'Amjad Ali', 'a', ' ', ' ', ' ', ' ', ' '),
(234, 'Faizan Asif', 'a', ' ', ' ', ' ', ' ', ' '),
(235, 'Khurram Khan', 'a', ' ', ' ', ' ', ' ', ' '),
(236, 'SP Patil', 'a', ' ', ' ', ' ', ' ', ' '),
(237, 'Shaiman Anwar', 'a', ' ', ' ', ' ', ' ', ' '),
(238, 'Rohan Mustafa', 'a', ' ', ' ', ' ', ' ', ' '),
(239, 'V Shetty', 'a', ' ', ' ', ' ', ' ', ' '),
(240, 'GC Wilson', 'a', ' ', ' ', ' ', ' ', ' '),
(241, 'MC Sorensen', 'a', ' ', ' ', ' ', ' ', ' '),
(242, 'TJ Murtagh', 'a', ' ', ' ', ' ', ' ', ' '),
(243, 'AR Cusack', 'a', ' ', ' ', ' ', ' ', ' '),
(244, 'GH Dockrell', 'a', ' ', ' ', ' ', ' ', ' '),
(245, 'EHSN Silva', 'a', ' ', ' ', ' ', ' ', ' '),
(246, 'AM Guruge', 'a', ' ', ' ', ' ', ' ', ' '),
(247, 'PM Seelaar', 'a', ' ', ' ', ' ', ' ', ' '),
(248, 'H Masakadza', 'a', ' ', ' ', ' ', ' ', ' '),
(249, 'Sikandar Raza', 'a', ' ', ' ', ' ', ' ', ' '),
(250, 'BRM Taylor', 'a', ' ', ' ', ' ', ' ', ' '),
(251, 'E Chigumbura', 'a', ' ', ' ', ' ', ' ', ' '),
(252, 'SC Williams', 'a', ' ', ' ', ' ', ' ', ' '),
(253, 'V Sibanda', 'a', ' ', ' ', ' ', ' ', ' '),
(254, 'T Maruma', 'a', ' ', ' ', ' ', ' ', ' '),
(255, 'P Utseya', 'a', ' ', ' ', ' ', ' ', ' '),
(256, 'T Panyangara', 'a', ' ', ' ', ' ', ' ', ' '),
(257, 'TL Chatara', 'a', ' ', ' ', ' ', ' ', ' '),
(258, 'N Mushangwe', 'a', ' ', ' ', ' ', ' ', ' '),
(259, 'Aizaz Khan', 'a', ' ', ' ', ' ', ' ', ' '),
(260, 'Hamza Hotak', 'a', ' ', ' ', ' ', ' ', ' '),
(261, 'SR Thompson', 'a', ' ', ' ', ' ', ' ', ' '),
(262, 'AR McBrine', 'a', ' ', ' ', ' ', ' ', ' '),
(263, 'T Kamungozi', 'a', ' ', ' ', ' ', ' ', ' '),
(264, 'Dipu Sarkar', 'dipu.png', '10.3.1990', 'Bangladesh', 'Batsman', 'Lefthand', 'Off-spin'),
(266, 'Abdur Razzak', './guest/albums/Ban/Abdur Razzak.jpg', 'June 15, 1982', 'Bangladesh, Asia XI, Khulna Division, Rangpur Riders, Royal Challengers Bangalore, South Zone (Bangladesh)', ' Bowler', ' Left-hand bat', ''),
(268, 'Al-Amin Hossain', './guest/albums/Al-Amin Hossain.jpg', ' January 1, 1990', ' Bangladesh, Bangladesh A, Bangladesh Cricket Board Academy, Barisal Burners, Khulna Division, South Zone (Bangladesh)', 'Baller', 'Right-hand bat', ''),
(269, 'Anamul Haque', './guest/albums/Anamul Haque.jpg', ' December 16, 1992', 'Bangladesh, Bangladesh Cricket Board Academy, Bangladesh Under-19s, Dhaka Division, Dhaka Gladiators, Khulna Division, South Zone (Bangladesh)', 'Wicketkeeper', 'Right-hand bat', 'Wicketkeeper'),
(277, 'Farhad Reza', './guest/albums/Farhad Reza.jpg', ' June 16, 1986', ' Bangladesh, Bangladesh A, Bangladesh Under-19s, Dhaka Warriors, Khulna Royal Bengals, North Zone (Bangladesh), Rajshahi Division', 'All-Rounder', 'Right-hand bat', ''),
(278, 'Mahmudullah', './guest/albums/Mahmudullah.jpg', ' February 4, 1986', 'Bangladesh, Bangladesh A, Bangladesh Under-19s, Central Zone (Bangladesh), Chittagong Kings, Dhaka Division', 'Allrounder', 'Right-hand bat', 'Right-arm offbreak'),
(292, 'Mominul Haque', './guest/albums/Mominul Haque.jpg', 'September 29, 1991', 'Bangladesh, Bangladesh A, Bangladesh Cricket Board Academy, Bangladesh Under-19s, Chittagong Division, Dhaka Division, East Zone (Bangladesh), Sylhet Royals', '', 'Left-hand bat', ' Slow left-arm');

-- --------------------------------------------------------

--
-- Table structure for table `guest_rating`
--

CREATE TABLE IF NOT EXISTS `guest_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid_id` int(11) NOT NULL,
  `commentid_id` int(11) NOT NULL,
  `likeordislike` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Guest_rating_936913d1` (`userid_id`),
  KEY `Guest_rating_efc2d818` (`commentid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `guest_rating`
--

INSERT INTO `guest_rating` (`id`, `userid_id`, `commentid_id`, `likeordislike`) VALUES
(4, 2, 1, 1),
(5, 2, 2, 1),
(6, 2, 3, 2),
(7, 2, 4, 1),
(8, 3, 5, 1),
(9, 3, 1, 1),
(10, 3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `guest_score`
--

CREATE TABLE IF NOT EXISTS `guest_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matchid_id` int(11) NOT NULL,
  `result` varchar(100) NOT NULL,
  `toss_id` int(11) NOT NULL,
  `event` varchar(100) NOT NULL,
  `mom_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Guest_score_7289db2a` (`matchid_id`),
  KEY `Guest_score_8bfc04f1` (`toss_id`),
  KEY `Guest_score_86ba6c3a` (`mom_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `guest_score`
--

INSERT INTO `guest_score` (`id`, `matchid_id`, `result`, `toss_id`, `event`, `mom_id`) VALUES
(1, 25, 'Bangladesh won by 9 wickets (with 48 balls remaining)', 4, 'Debut : \n\n ', 14),
(2, 37, 'India won by 7 wickets (with 9 balls remaining)', 8, 'Debut : \n\n ', 141),
(3, 41, 'India won by 7 wickets (with 2 balls remaining)', 6, '', 141),
(4, 38, 'Sri Lanka won by 5 runs', 5, '', 191),
(5, 33, 'Nepal won by 9 runs', 12, '', 231),
(6, 36, 'Netherlands won by 6 wickets (with 37 balls remaining)', 9, '', 170),
(7, 42, 'South Africa won by 2 runs', 2, '', 95),
(8, 30, 'Bangladesh won by 8 wickets (with 27 balls remaining)', 12, '', 23),
(9, 40, 'Pakistan won by 16 runs', 8, '', 157),
(10, 34, 'Hong Kong won by 2 wickets (with 2 balls remaining)', 11, 'Debut : \n\n ', 217),
(11, 39, 'New Zealand won by 9 runs (D/L method)', 7, '', 106),
(12, 27, 'Ireland won by 3 wickets (with 0 balls remaining)', 3, '', 165),
(13, 29, 'Afghanistan won by 7 wickets (with 12 balls remaining)', 11, 'Debut : \n\n ', 3),
(14, 28, 'Netherlands won by 6 wickets (with 7 balls remaining)', 1, '', 173),
(15, 32, 'Ireland won by 21 runs (D/L method)', 1, '', 166),
(16, 31, 'Zimbabwe won by 5 wickets (with 0 balls remaining)', 3, '', 250),
(17, 26, 'Nepal won by 80 runs', 12, '', 232);

-- --------------------------------------------------------

--
-- Table structure for table `guest_team`
--

CREATE TABLE IF NOT EXISTS `guest_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `squad` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `guest_team`
--

INSERT INTO `guest_team` (`id`, `name`, `squad`) VALUES
(1, 'United Arab Emirates Squad', 'Khurram Khan,Ahmed Raza,Amjad Ali,Amjad Javed,Faizan Asif,Manjula Guruge,Kamran Shazad,Moaaz Qazi,Swapnil Patil,Rohan Mustafa,Rohit Singh,Shaiman Anwar,Sharif Asadullah,Vikrant Shetty,Shadeep Silva,'),
(2, 'South Africa Squad', 'Faf du Plessis,Hashim Amla,Farhaan Behardien,Quinton de Kock,AB de Villiers,Jean-Paul Duminy,Beuran Hendricks,Imran Tahir,David Miller,Albie Morkel,Morne Morkel,Wayne Parnell,Aaron Phangiso,Dale Steyn,Lonwabo Tsotsobe,'),
(3, 'Zimbabwe Squad', 'Brendan Taylor,Tendai Chatara,Elton Chigumbura,Tafadzwa Kamungozi,Timycen Maruma,Hamilton Masakadza,Shingi Masakadza,Natsai M''shangwe,Tinashe Panyangara,Vusi Sibanda,Sikandar Raza,Prosper Utseya,Brian Vitori,Malcolm Waller,Sean Williams,'),
(4, 'Afghanistan Squad', 'Mohammad Nabi,Aftab Alam,Asghar Stanikzai,Dawlat Zadran,Gulbadin Naib,Hamza Hotak,Karim Sadiq,Mirwais Ashraf,Mohammad Shahzad,Najeeb Tarakai,Najibullah Zadran,Nawroz Mangal,Samiullah Shenwari,Shafiqullah,Shapoor Zadran,Hamid Hassan,'),
(5, 'Sri Lanka Squad', 'Dinesh Chandimal,Lasith Malinga,Chaturanga de Silva,Tillakaratne Dilshan,Rangana Herath,Mahela Jayawardene,Nuwan Kulasekara,Suranga Lakmal,Angelo Mathews,Ajantha Mendis,Kusal Perera,Thisara Perera,Seekkuge Prasanna,Kumar Sangakkara,Sachithra Senanayake,Lahiru Thirimanne,'),
(6, 'West Indies Squad', 'Darren Sammy,Samuel Badree,Dwayne Bravo,Johnson Charles,Sheldon Cottrell,Andre Fletcher,Chris Gayle,Sunil Narine,Denesh Ramdin,Ravi Rampaul,Andre Russell,Marlon Samuels,Krishmar Santokie,Lendl Simmons,Dwayne Smith,'),
(7, 'New Zealand Squad', 'Brendon McCullum,Corey Anderson,Trent Boult,Anton Devcich,Martin Guptill,Ronnie Hira,Mitchell McClenaghan,Nathan McCullum,Kyle Mills,Colin Munro,Jimmy Neesham,Luke Ronchi,Tim Southee,Ross Taylor,Kane Williamson,'),
(8, 'Pakistan Squad', 'Mohammad Hafeez,Ahmed Shehzad,Bilawal Bhatti,Junaid Khan,Kamran Akmal,Mohammad Talha,Saeed Ajmal,Shahid Afridi,Sharjeel Khan,Shoaib Malik,Sohaib Maqsood,Sohail Tanvir,Umar Akmal,Umar Gul,Zulfiqar Babar,'),
(9, 'Netherlands Squad', 'Peter Borren,Wesley Barresi,Mudassar Bukhari,Ben Cooper,Tim Gruijters,Tom Heggelman,Ahsan Malik,Vivian Kingma,Stephan Myburgh,Michael Rippon,Pieter Seelaar,Michael Swart,Eric Szwarczynski,Logan van Beek,Timm van der Gugten,'),
(10, 'Ireland Squad', 'William Porterfield,Alex Cusack,George Dockrell,Ed Joyce,Andy McBrine,Tim Murtagh,Kevin O''Brien,Niall O''Brien,Andrew Poynter,James Shannon,Max Sorensen,Paul Stirling,Stuart Thompson,Gary Wilson,Craig Young,'),
(11, 'Hong Kong Squad', 'Jamie Atkinson,Waqas Barkat,Aizaz Khan,Babar Hayat,Mark Chapman,Ehsan Nawaz,Haseeb Amjad,Irfan Ahmed,Roy Lamsam,Munir Dar,Nadeem Ahmed,Najeeb Amar,Nizakat Khan,Kinchit Shah,Tanwir Afzal,'),
(12, 'Nepal Squad', 'Paras Khadka,Pradeep Airee,Binod Bhandari,Amrit Bhattarai,Naresh Budayair,Shakti Gauchan,Avinash Karn,Subash Khakurel,Gyanendra Malla,Jitendra Mukhiya,Basant Regmi,Sagar Pun,Sompal Kami,Sharad Vesawkar,Rahul Vishwakarma,Prithu Baskota,'),
(13, 'England Squad', 'Stuart Broad,Eoin Morgan,Moeen Ali,Ian Bell,Ravi Bopara,Tim Bresnan,Jos Buttler,Jade Dernbach,Alex Hales,Chris Jordan,Michael Lumb,Stephen Parry,Ben Stokes,James Tredwell,Luke Wright,Joe Root,'),
(14, 'Bangladesh Squad', 'Mushfiqur Rahim,Abdur Razzak,Al-Amin Hossain,Anamul Haque,Farhad Reza,Mahmudullah,Mashrafe Mortaza,Mominul Haque,Nasir Hossain,Rubel Hossain,Sabbir Rahman,Shamsur Rahman,Shakib Al Hasan,Sohag Gazi,Tamim Iqbal,'),
(15, 'Australia Squad', 'George Bailey,Daniel Christian,Nathan Coulter-Nile,James Faulkner,Aaron Finch,Brad Haddin,Brad Hodge,Brad Hogg,Mitchell Johnson,Glenn Maxwell,James Muirhead,Mitchell Starc,David Warner,Shane Watson,Cameron White,'),
(16, 'India Squad', 'MS Dhoni,Varun Aaron,Ravichandran Ashwin,Stuart Binny,Shikhar Dhawan,Ravindra Jadeja,Virat Kohli,Bhuvneshwar Kumar,Amit Mishra,Mohammed Shami,Ajinkya Rahane,Suresh Raina,Mohit Sharma,Rohit Sharma,Yuvraj Singh,'),
(17, 'Afghanistan Squad', 'Mohammad Nabi,Aftab Alam,Asghar Stanikzai,Dawlat Zadran,Gulbadin Naib,Hamza Hotak,Karim Sadiq,Mirwais Ashraf,Mohammad Shahzad,Najeeb Tarakai,Najibullah Zadran,Nawroz Mangal,Samiullah Shenwari,Shafiqullah,Shapoor Zadran,Hamid Hassan,'),
(18, 'Zimbabwe Squad', 'Brendan Taylor,Tendai Chatara,Elton Chigumbura,Tafadzwa Kamungozi,Timycen Maruma,Hamilton Masakadza,Shingi Masakadza,Natsai M''shangwe,Tinashe Panyangara,Vusi Sibanda,Sikandar Raza,Prosper Utseya,Brian Vitori,Malcolm Waller,Sean Williams,'),
(19, 'Sri Lanka Squad', 'Dinesh Chandimal,Lasith Malinga,Chaturanga de Silva,Tillakaratne Dilshan,Rangana Herath,Mahela Jayawardene,Nuwan Kulasekara,Suranga Lakmal,Angelo Mathews,Ajantha Mendis,Kusal Perera,Thisara Perera,Seekkuge Prasanna,Kumar Sangakkara,Sachithra Senanayake,Lahiru Thirimanne,'),
(20, 'United Arab Emirates Squad', 'Khurram Khan,Ahmed Raza,Amjad Ali,Amjad Javed,Faizan Asif,Manjula Guruge,Kamran Shazad,Moaaz Qazi,Swapnil Patil,Rohan Mustafa,Rohit Singh,Shaiman Anwar,Sharif Asadullah,Vikrant Shetty,Shadeep Silva,'),
(21, 'Pakistan Squad', 'Mohammad Hafeez,Ahmed Shehzad,Bilawal Bhatti,Junaid Khan,Kamran Akmal,Mohammad Talha,Saeed Ajmal,Shahid Afridi,Sharjeel Khan,Shoaib Malik,Sohaib Maqsood,Sohail Tanvir,Umar Akmal,Umar Gul,Zulfiqar Babar,'),
(22, 'South Africa Squad', 'Faf du Plessis,Hashim Amla,Farhaan Behardien,Quinton de Kock,AB de Villiers,Jean-Paul Duminy,Beuran Hendricks,Imran Tahir,David Miller,Albie Morkel,Morne Morkel,Wayne Parnell,Aaron Phangiso,Dale Steyn,Lonwabo Tsotsobe,'),
(23, 'Hong Kong Squad', 'Jamie Atkinson,Waqas Barkat,Aizaz Khan,Babar Hayat,Mark Chapman,Ehsan Nawaz,Haseeb Amjad,Irfan Ahmed,Roy Lamsam,Munir Dar,Nadeem Ahmed,Najeeb Amar,Nizakat Khan,Kinchit Shah,Tanwir Afzal,'),
(24, 'India Squad', 'MS Dhoni,Varun Aaron,Ravichandran Ashwin,Stuart Binny,Shikhar Dhawan,Ravindra Jadeja,Virat Kohli,Bhuvneshwar Kumar,Amit Mishra,Mohammed Shami,Ajinkya Rahane,Suresh Raina,Mohit Sharma,Rohit Sharma,Yuvraj Singh,'),
(25, 'Netherlands Squad', 'Peter Borren,Wesley Barresi,Mudassar Bukhari,Ben Cooper,Tim Gruijters,Tom Heggelman,Ahsan Malik,Vivian Kingma,Stephan Myburgh,Michael Rippon,Pieter Seelaar,Michael Swart,Eric Szwarczynski,Logan van Beek,Timm van der Gugten,'),
(26, 'New Zealand Squad', 'Brendon McCullum,Corey Anderson,Trent Boult,Anton Devcich,Martin Guptill,Ronnie Hira,Mitchell McClenaghan,Nathan McCullum,Kyle Mills,Colin Munro,Jimmy Neesham,Luke Ronchi,Tim Southee,Ross Taylor,Kane Williamson,'),
(27, 'West Indies Squad', 'Darren Sammy,Samuel Badree,Dwayne Bravo,Johnson Charles,Sheldon Cottrell,Andre Fletcher,Chris Gayle,Sunil Narine,Denesh Ramdin,Ravi Rampaul,Andre Russell,Marlon Samuels,Krishmar Santokie,Lendl Simmons,Dwayne Smith,'),
(28, 'Ireland Squad', 'William Porterfield,Alex Cusack,George Dockrell,Ed Joyce,Andy McBrine,Tim Murtagh,Kevin O''Brien,Niall O''Brien,Andrew Poynter,James Shannon,Max Sorensen,Paul Stirling,Stuart Thompson,Gary Wilson,Craig Young,'),
(29, 'Nepal Squad', 'Paras Khadka,Pradeep Airee,Binod Bhandari,Amrit Bhattarai,Naresh Budayair,Shakti Gauchan,Avinash Karn,Subash Khakurel,Gyanendra Malla,Jitendra Mukhiya,Basant Regmi,Sagar Pun,Sompal Kami,Sharad Vesawkar,Rahul Vishwakarma,Prithu Baskota,'),
(30, 'Bangladesh Squad', 'Mushfiqur Rahim,Abdur Razzak,Al-Amin Hossain,Anamul Haque,Farhad Reza,Mahmudullah,Mashrafe Mortaza,Mominul Haque,Nasir Hossain,Rubel Hossain,Sabbir Rahman,Shamsur Rahman,Shakib Al Hasan,Sohag Gazi,Tamim Iqbal,'),
(31, 'England Squad', 'Stuart Broad,Eoin Morgan,Moeen Ali,Ian Bell,Ravi Bopara,Tim Bresnan,Jos Buttler,Jade Dernbach,Alex Hales,Chris Jordan,Michael Lumb,Stephen Parry,Ben Stokes,James Tredwell,Luke Wright,Joe Root,'),
(32, 'Australia Squad', 'George Bailey,Daniel Christian,Nathan Coulter-Nile,James Faulkner,Aaron Finch,Brad Haddin,Brad Hodge,Brad Hogg,Mitchell Johnson,Glenn Maxwell,James Muirhead,Mitchell Starc,David Warner,Shane Watson,Cameron White,');

-- --------------------------------------------------------

--
-- Table structure for table `guest_tournament`
--

CREATE TABLE IF NOT EXISTS `guest_tournament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `result` varchar(100) NOT NULL,
  `team` varchar(400) NOT NULL,
  `event` varchar(100) NOT NULL,
  `mos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Guest_tournament_45de4503` (`mos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `guest_user`
--

CREATE TABLE IF NOT EXISTS `guest_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `guest_vote`
--

CREATE TABLE IF NOT EXISTS `guest_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid_id` int(11) NOT NULL,
  `players` varchar(500) NOT NULL,
  `time` varchar(20) NOT NULL,
  `matchid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Guest_vote_936913d1` (`userid_id`),
  KEY `Guest_vote_7289db2a` (`matchid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `polls_choice`
--

CREATE TABLE IF NOT EXISTS `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_70f78e6b` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `polls_choice`
--

INSERT INTO `polls_choice` (`id`, `poll_id`, `choice_text`, `votes`) VALUES
(1, 1, 'Obama', 1),
(2, 1, 'Putin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `polls_poll`
--

CREATE TABLE IF NOT EXISTS `polls_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  `pub_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `polls_poll`
--

INSERT INTO `polls_poll` (`id`, `question`, `pub_date`) VALUES
(1, 'Who will win in ukraine?', '2014-03-06 04:15:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `guest_batstat`
--
ALTER TABLE `guest_batstat`
  ADD CONSTRAINT `matchid_id_refs_id_25f979a5` FOREIGN KEY (`matchid_id`) REFERENCES `guest_match` (`id`),
  ADD CONSTRAINT `name_id_refs_id_fd0102cd` FOREIGN KEY (`name_id`) REFERENCES `guest_player` (`id`);

--
-- Constraints for table `guest_bowlstat`
--
ALTER TABLE `guest_bowlstat`
  ADD CONSTRAINT `matchid_id_refs_id_8eb883b3` FOREIGN KEY (`matchid_id`) REFERENCES `guest_match` (`id`),
  ADD CONSTRAINT `name_id_refs_id_44b3ade3` FOREIGN KEY (`name_id`) REFERENCES `guest_player` (`id`);

--
-- Constraints for table `guest_comment`
--
ALTER TABLE `guest_comment`
  ADD CONSTRAINT `newsid_id_refs_id_753da739` FOREIGN KEY (`newsid_id`) REFERENCES `guest_news` (`id`),
  ADD CONSTRAINT `userid_id_refs_id_4fc4c030` FOREIGN KEY (`userid_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `guest_match`
--
ALTER TABLE `guest_match`
  ADD CONSTRAINT `team1_id_refs_id_11b8c96e` FOREIGN KEY (`team1_id`) REFERENCES `guest_team` (`id`),
  ADD CONSTRAINT `team2_id_refs_id_11b8c96e` FOREIGN KEY (`team2_id`) REFERENCES `guest_team` (`id`);

--
-- Constraints for table `guest_notification`
--
ALTER TABLE `guest_notification`
  ADD CONSTRAINT `receiverid_id_refs_id_cb577616` FOREIGN KEY (`receiverid_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `guest_rating`
--
ALTER TABLE `guest_rating`
  ADD CONSTRAINT `commentid_id_refs_id_cd13a98c` FOREIGN KEY (`commentid_id`) REFERENCES `guest_comment` (`id`),
  ADD CONSTRAINT `userid_id_refs_id_f2e5bcf0` FOREIGN KEY (`userid_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `guest_score`
--
ALTER TABLE `guest_score`
  ADD CONSTRAINT `matchid_id_refs_id_47d959aa` FOREIGN KEY (`matchid_id`) REFERENCES `guest_match` (`id`),
  ADD CONSTRAINT `mom_id_refs_id_47e5743e` FOREIGN KEY (`mom_id`) REFERENCES `guest_player` (`id`),
  ADD CONSTRAINT `toss_id_refs_id_1269ef33` FOREIGN KEY (`toss_id`) REFERENCES `guest_team` (`id`);

--
-- Constraints for table `guest_tournament`
--
ALTER TABLE `guest_tournament`
  ADD CONSTRAINT `mos_id_refs_id_ad0384e4` FOREIGN KEY (`mos_id`) REFERENCES `guest_player` (`id`);

--
-- Constraints for table `guest_vote`
--
ALTER TABLE `guest_vote`
  ADD CONSTRAINT `matchid_id_refs_id_2b06fa7f` FOREIGN KEY (`matchid_id`) REFERENCES `guest_match` (`id`),
  ADD CONSTRAINT `userid_id_refs_id_2a3486ca` FOREIGN KEY (`userid_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `polls_choice`
--
ALTER TABLE `polls_choice`
  ADD CONSTRAINT `poll_id_refs_id_3aa09835` FOREIGN KEY (`poll_id`) REFERENCES `polls_poll` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
