-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2012 at 06:00 PM
-- Server version: 5.5.24
-- PHP Version: 5.3.10-1ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tedxnitc13`
--

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
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
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
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add contactform', 7, 'add_contactform'),
(20, 'Can change contactform', 7, 'change_contactform'),
(21, 'Can delete contactform', 7, 'delete_contactform'),
(22, 'Can add blogpost', 8, 'add_blogpost'),
(23, 'Can change blogpost', 8, 'change_blogpost'),
(24, 'Can delete blogpost', 8, 'delete_blogpost'),
(25, 'Can add comment', 9, 'add_comment'),
(26, 'Can change comment', 9, 'change_comment'),
(27, 'Can delete comment', 9, 'delete_comment'),
(28, 'Can add registration profile', 10, 'add_registrationprofile'),
(29, 'Can change registration profile', 10, 'change_registrationprofile'),
(30, 'Can delete registration profile', 10, 'delete_registrationprofile'),
(31, 'Can add user profile', 11, 'add_userprofile'),
(32, 'Can change user profile', 11, 'change_userprofile'),
(33, 'Can delete user profile', 11, 'delete_userprofile'),
(34, 'Can add vote', 12, 'add_vote'),
(35, 'Can change vote', 12, 'change_vote'),
(36, 'Can delete vote', 12, 'delete_vote'),
(37, 'Can add nominee', 13, 'add_nominee'),
(38, 'Can change nominee', 13, 'change_nominee'),
(39, 'Can delete nominee', 13, 'delete_nominee'),
(40, 'Can add log entry', 14, 'add_logentry'),
(41, 'Can change log entry', 14, 'change_logentry'),
(42, 'Can delete log entry', 14, 'delete_logentry'),
(43, 'Can add migration history', 15, 'add_migrationhistory'),
(44, 'Can change migration history', 15, 'change_migrationhistory'),
(45, 'Can delete migration history', 15, 'delete_migrationhistory');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'tedxuser', 'TEDx', 'NITCalicut', 'piyushroshan@gmail.com', 'pbkdf2_sha256$10000$OCldcYrCcURt$wf2nlCHAE7DIpIjSuefXmfGB/BiMveMpo8N1pUAJFR8=', 1, 1, 1, '2012-08-14 19:39:25', '2012-08-03 17:48:02'),
(2, 'piyushroshan', '', '', '', 'pbkdf2_sha256$10000$FwaLO89Gm0OQ$SjGUR+13dFWHV/BX9hGMrTs7kstVtA78oMSzli9WCF8=', 0, 1, 0, '2012-08-12 11:52:50', '2012-08-03 18:12:10'),
(3, 'piyushroshans', 'Roshan', 'Piyush', 'anitkumar@gmail.com', 'pbkdf2_sha256$10000$4Yq2bHF2Avk3$XbxxSGipEEoznqA8wXF8bWuYJHGKHkRPMxMaZ27+8FU=', 0, 1, 0, '2012-08-08 10:49:43', '2012-08-08 10:21:58');

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
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
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
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blogs_blogpost`
--

CREATE TABLE IF NOT EXISTS `blogs_blogpost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `body` longtext NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `blogs_blogpost`
--

INSERT INTO `blogs_blogpost` (`id`, `title`, `name`, `email`, `body`, `created`) VALUES
(1, 'Facebook terms', 'Roshan Piyush', 'anitkumar@gmail.com', '<p>run through the entire history of migrations for each app, rather than just using syncdb. This helps keep things consistent, and lets you write migrations that put in complex initial data, but it does mean that doing all migrations for an app, one after the other, should take a database from blank to the most recent schema.</p>\r\n<p>Specifically, this means that&nbsp;<tt>./manage.py migrate</tt>&nbsp;replaces&nbsp;<tt>./manage.py syncdb</tt>&nbsp;for applications with migrations; the effect of syncdb is recreated by the migrations. You should not run<tt>syncdb</tt>&nbsp;on an application before you migrate it, if it is a new app (if you are converting an existing app, see&nbsp;<a class="wiki" href="http://south.aeracode.org/wiki/ConvertingAnApp">ConvertingAnApp</a>).</p>', '2012-08-12 12:58:42'),
(2, 'TEDx NITCalicut', 'TEDxNITCalicut', 'piyushroshan@gmail.com', '<p class="node-title">It was past six and the people were slowly filing out of Chanakya Hall. The speakers hadn&rsquo;t left though, most were thronged with excited audience members. But all in all, it was over. <strong>TEDxNITCalicut</strong> had reached its conclusion, though Puneet would have begged to differ citing formalities that were yet to be completed. Now that this was the end, my mind was filled with pride to have been part of an event of such eminence; the pride tinged with sadness, now that all was over.</p>', '2012-08-12 18:27:35'),
(3, 'cloggg Entry', 'Amit', 'amusma@gmail.com', '<p>Specifically, this means that&nbsp;<tt>./manage.py migrate</tt>&nbsp;replaces&nbsp;<tt>./manage.py syncdb</tt>&nbsp;for applications with migrations; the effect of syncdb is recreated by the migrations. You should not run<tt>syncdb</tt>&nbsp;on an application before you migrate it, if it is a new app (if you are converting an existing app, see&nbsp;<a class="wiki" href="http://south.aeracode.org/wiki/ConvertingAnApp">ConvertingAnApp</a>).</p>\r\n<p>For this reason, the first migration has to be one that creates all the models you currently have.<tt>startmigration</tt>&nbsp;accepts a&nbsp;<tt>--model</tt>&nbsp;parameter, which tells it to make a migration that&nbsp;<em>creates the named model</em>, so we could do this:</p>\r\n<pre class="wiki">./manage.py startmigration southdemo initial --model Lizard --model Adopter\r\n</pre>\r\n<p><em>(The arguments to startmigration are, in order, app name, migration name, and then parameters)</em></p>\r\n<p>However, there is a shortcut for adding all models currently in the models.py file, which is&nbsp;<tt>--initial</tt>:</p>', '2012-08-12 18:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_comment`
--

CREATE TABLE IF NOT EXISTS `blogs_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(75) NOT NULL,
  `created` datetime NOT NULL,
  `body` longtext NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_comment_699ae8ca` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `blogs_comment`
--

INSERT INTO `blogs_comment` (`id`, `name`, `email`, `created`, `body`, `post_id`) VALUES
(1, 'Roshan Piyush', 'piyushroshan@gmail.com', '2012-08-12 13:00:31', ' you have a database that does not support running\r\n ! schema-altering statements in transactions,', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactus_contactform`
--

CREATE TABLE IF NOT EXISTS `contactus_contactform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `contactus_contactform`
--

INSERT INTO `contactus_contactform` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'Roshan Piyush', 'anitkumar@gmail.com', '9447884634', 'hello', 'hi how ru'),
(2, 'Roshan Piyush', 'piyushroshan@gmail.com', '919447884634', 'hello', 'Hows u dear....\r\nI was hoping to meet u soon'),
(3, 'Roshan Piyush', 'piyushroshan@gmail.com', '919447884634', 'hello', 'Hows u dear....\r\nI was hoping to meet u soon');

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
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2012-08-03 18:12:10', 1, 3, '2', 'piyushroshan', 1, ''),
(2, '2012-08-03 21:04:15', 1, 11, '1', 'UserProfile object', 1, ''),
(3, '2012-08-08 10:34:54', 1, 8, '1', 'Blogpost object', 1, ''),
(4, '2012-08-11 17:29:53', 1, 8, '1', 'Blogpost object', 1, ''),
(5, '2012-08-12 06:25:31', 1, 13, '3', 'Roshan Piyush: piyushroshan@gmail.com', 1, ''),
(6, '2012-08-12 10:39:12', 1, 8, '2', 'Blogpost object', 1, ''),
(7, '2012-08-12 12:58:42', 1, 8, '1', 'Blogpost object', 1, ''),
(8, '2012-08-12 18:27:35', 1, 8, '2', 'Blogpost object', 1, ''),
(9, '2012-08-12 18:29:07', 1, 8, '3', 'Blogpost object', 1, ''),
(10, '2012-08-14 18:21:55', 1, 12, '64', 'piyushroshan: -1 on None', 3, ''),
(11, '2012-08-14 18:21:55', 1, 12, '63', 'piyushroshan: -1 on None', 3, ''),
(12, '2012-08-14 18:21:55', 1, 12, '56', 'piyushroshan: 1 on None', 3, ''),
(13, '2012-08-14 18:21:55', 1, 12, '50', 'piyushroshans: -1 on None', 3, ''),
(14, '2012-08-14 18:21:55', 1, 12, '45', 'piyushroshan: 1 on None', 3, ''),
(15, '2012-08-14 18:21:55', 1, 12, '40', 'tedxuser: 1 on None', 3, ''),
(16, '2012-08-15 07:14:35', 1, 3, '1', 'tedxuser', 2, 'Changed password, first_name and last_name.');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'contactform', 'contactus', 'contactform'),
(8, 'blogpost', 'blogs', 'blogpost'),
(9, 'comment', 'blogs', 'comment'),
(10, 'registration profile', 'registration', 'registrationprofile'),
(11, 'user profile', 'registration', 'userprofile'),
(12, 'vote', 'voting', 'vote'),
(13, 'nominee', 'nominations', 'nominee'),
(14, 'log entry', 'admin', 'logentry'),
(15, 'migration history', 'south', 'migrationhistory'),
(16, 'flat page', 'flatpages', 'flatpage');

-- --------------------------------------------------------

--
-- Table structure for table `django_flatpage`
--

CREATE TABLE IF NOT EXISTS `django_flatpage` (
  `id` int(11) NOT NULL,
  `url` char(1) NOT NULL,
  `title` char(1) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(100) NOT NULL,
  `registration_required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3f0b88bd752870633b83fa7599b12193', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-26 06:07:44'),
('413ee1ad3cc46d958fd5b669308ad187', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-26 12:22:28'),
('4aaa5b41bd454de03d5e76bf3154ddff', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-26 11:53:04'),
('5284add807d6629b774de987f8206246', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-26 18:26:16'),
('5593d1a9fa44072d125ba17a6adcff32', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-28 16:13:42'),
('5cfa5f46ab466ca4c2f30e638d189c13', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-28 16:23:37'),
('5e19b8007eb784e0e7a5724604a84136', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-28 16:25:28'),
('74e1304e70101fc97fee8913dcc6b2c7', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-08-28 16:20:50'),
('b225b9480b3df635413f1eec0ff4ef14', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-08-28 16:14:31'),
('e30f0125e33823f9b76ccb4e21f4b593', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-08-28 16:18:54'),
('e76cef962bad2244926f3900b2a4b9ce', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-22 16:37:00'),
('f4d230d35df3c9e930c89635d355862e', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-28 19:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `nominations_nominee`
--

CREATE TABLE IF NOT EXISTS `nominations_nominee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `description` longtext NOT NULL,
  `support` longtext NOT NULL,
  `reference1` longtext NOT NULL,
  `nominator_id` int(11) DEFAULT NULL,
  `slug` varchar(50) NOT NULL,
  `nominated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nominations_nominee_86fe09a2` (`nominator_id`),
  KEY `nominations_nominee_a951d5d6` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `registration_registrationprofile`
--

CREATE TABLE IF NOT EXISTS `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  `key_generated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `registration_registrationprofile`
--

INSERT INTO `registration_registrationprofile` (`id`, `user_id`, `activation_key`, `key_generated`) VALUES
(1, 3, '3e60a404d7fe59f34e5e18b43ec653b83439be10', '2012-08-08 10:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `registration_userprofile`
--

CREATE TABLE IF NOT EXISTS `registration_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `home_address` longtext NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `south_migrationhistory`
--

CREATE TABLE IF NOT EXISTS `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `south_migrationhistory`
--

INSERT INTO `south_migrationhistory` (`id`, `app_name`, `migration`, `applied`) VALUES
(1, 'blogs', '0001_initial', '2012-08-12 12:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `vote` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`content_type_id`,`object_id`),
  KEY `votes_fbfc09f1` (`user_id`),
  KEY `votes_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `user_id`, `content_type_id`, `object_id`, `vote`) VALUES
(66, 2, 13, 1, 1),
(78, 1, 13, 3, 1),
(79, 1, 13, 1, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blogs_comment`
--
ALTER TABLE `blogs_comment`
  ADD CONSTRAINT `post_id_refs_id_e6139c5a9aae433` FOREIGN KEY (`post_id`) REFERENCES `blogs_blogpost` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `nominations_nominee`
--
ALTER TABLE `nominations_nominee`
  ADD CONSTRAINT `nominator_id_refs_id_6accc4fe` FOREIGN KEY (`nominator_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
  ADD CONSTRAINT `user_id_refs_id_cecd7f3c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `registration_userprofile`
--
ALTER TABLE `registration_userprofile`
  ADD CONSTRAINT `user_id_refs_id_9dd3e85e` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `content_type_id_refs_id_e1387e86` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_f86a5ef6` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
