-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 08, 2012 at 05:41 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Blogger'),
(2, 'Staff');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(155, 1, 22),
(156, 1, 23),
(125, 2, 1),
(126, 2, 2),
(127, 2, 3),
(128, 2, 4),
(129, 2, 5),
(130, 2, 6),
(131, 2, 7),
(132, 2, 8),
(133, 2, 9),
(134, 2, 10),
(135, 2, 11),
(136, 2, 12),
(137, 2, 16),
(138, 2, 17),
(139, 2, 18),
(140, 2, 19),
(141, 2, 20),
(142, 2, 21),
(143, 2, 22),
(144, 2, 23),
(145, 2, 24),
(146, 2, 25),
(147, 2, 26),
(148, 2, 27),
(149, 2, 37),
(150, 2, 38),
(151, 2, 39),
(152, 2, 40),
(153, 2, 41),
(154, 2, 42);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

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
(45, 'Can delete migration history', 15, 'delete_migrationhistory'),
(46, 'Can add kv store', 17, 'add_kvstore'),
(47, 'Can change kv store', 17, 'change_kvstore'),
(48, 'Can delete kv store', 17, 'delete_kvstore');

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
(1, 'tedxuser', 'TEDx', 'NITCalicut', 'piyushroshan@gmail.com', 'pbkdf2_sha256$10000$OCldcYrCcURt$wf2nlCHAE7DIpIjSuefXmfGB/BiMveMpo8N1pUAJFR8=', 1, 1, 1, '2012-09-04 13:06:10', '2012-08-03 17:48:02'),
(2, 'piyushroshan', 'Roshan', 'Piyush', 'piyushroshan@gmail.com', 'pbkdf2_sha256$10000$FwaLO89Gm0OQ$SjGUR+13dFWHV/BX9hGMrTs7kstVtA78oMSzli9WCF8=', 1, 1, 0, '2012-09-08 10:50:54', '2012-08-03 18:12:10'),
(3, 'dummyuser', 'Dummy', 'Piyush', 'anitkumar@gmail.com', 'pbkdf2_sha256$10000$4Yq2bHF2Avk3$XbxxSGipEEoznqA8wXF8bWuYJHGKHkRPMxMaZ27+8FU=', 0, 1, 0, '2012-08-08 10:49:43', '2012-08-08 10:21:58');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(4, 2, 1);

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
  `user_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_blogpost_2ccaea20` (`user_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `blogs_blogpost`
--

INSERT INTO `blogs_blogpost` (`id`, `title`, `name`, `email`, `body`, `created`, `user_id_id`) VALUES
(1, 'As the going gets tough, the tough gets going!', 'TEDx NITCalicut', 'piyushroshan@gmail.com', '<p>Wow! When we look back, we realize that we have indeed come a long way since the first time we were struck by the big idea. We have overcome the mid-semester lull and have actually made a lot of progress these past few months. So much so, that it almost drives us dizzy.</p>\r\n<p>The all-important teaser video is out, so if you haven&rsquo;t checked it out already, I suggest you do.</p>\r\n<p>Our sponsorships got strengthened recently, when Gasotech joined the bandwagon. Hurray and encore! In the publicity front, all the members are working day and night, with much needed zeal, to get some last minute mileage for our TEDx.</p>\r\n<p>And if you haven&rsquo;t been keeping up to date, then you might have missed out the new additions to the speaker list. The speakers look formidable and the whole team is very excited about the latest additions. The speakers themselves have shown a lot of enthusiasm in the event and in what we intend to do socially through TEDx. They are very upbeat about our TEDx.</p>\r\n<p>There&rsquo;s a palpable buzz among the students of our college, which is pretty heartening to see. This given the fact that a couple of months earlier not many would have had any idea that our college was hosting such an event. All said and done, we must keep the buzz going and spread it much beyond the walls of our college.</p>\r\n<p>This January, our college is going to be a vibrant wonderland of ideas and thoughts. Make sure you are there to be a part of it. If you haven&rsquo;t registered already, go and do it immediately. You wouldn&rsquo;t want to miss the train when it&rsquo;s waiting for you, would you?</p>', '2012-08-30 22:43:57', 1),
(3, 'Blog Entry', 'Roshan Piyush', 'piyushroshan@gmail.com', '<p>GitHub is the best place to share code with friends, co-workers, classmates, and complete strangers. Over a million people use GitHub to build amazing things together. With the collaborative features of GitHub.com, our desktop and mobile apps, and GitHub Enterprise, it has never been easier for individuals and teams to write better code, faster.&nbsp;</p>\r\n<p><img style="vertical-align: text-bottom; border: 2px solid black;" src="/media/uploads/546497_272347119538073_1937907035_n.jpg" alt="THIS ONE" width="500" height="500" /></p>', '2012-09-08 11:57:02', 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `blogs_comment`
--

INSERT INTO `blogs_comment` (`id`, `name`, `email`, `created`, `body`, `post_id`) VALUES
(1, 'Admin', 'piyushroshan@gmail.com', '2012-09-01 11:56:19', 'this is trail', 1),
(2, 'Admin', 'piyushros@yahho.com', '2012-09-01 12:20:32', 'wouldn’t want to miss the train when it’s wait', 1),
(3, 'Facebook', 'piyushroshan@gmail.com', '2012-09-05 13:53:59', 'this is message', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `contactus_contactform`
--

INSERT INTO `contactus_contactform` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(1, 'Roshan Piyush', 'anitkumar@gmail.com', '9447884634', 'hello', 'hi how ru'),
(2, 'Roshan Piyush', 'piyushroshan@gmail.com', '919447884634', 'hello', 'Hows u dear....\r\nI was hoping to meet u soon'),
(3, 'Roshan Piyush', 'piyushroshan@gmail.com', '919447884634', 'hello', 'Hows u dear....\r\nI was hoping to meet u soon'),
(4, 'TEDx NITCalicut', 'piyushroshan@gmail.com', '9447884634', 'hello', 'hello sir'),
(5, 'TEDx NITCalicut', 'piyushroshan@gmail.com', '9431539288', 'hello', 'TEDxNITCalicut View! Rate! Comment! Help discover amazing new talent and shape th'),
(6, 'TEDx NITCalicut', 'piyushroshan@gmail.com', '919447884634', 'hello', 'this is good'),
(7, 'Roshan Piyush', 'piyushroshan@gmail.com', '919447884634', 'hello', 'nvjcjvk'),
(8, 'Roshan Piyush', 'piyushroshan@gmail.com', '919447884634', 'hello', ' j .jh j j ');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=112 ;

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
(16, '2012-08-15 07:14:35', 1, 3, '1', 'tedxuser', 2, 'Changed password, first_name and last_name.'),
(17, '2012-08-25 11:09:13', 1, 8, '1', 'Blog Entry: <p><span>.</span><span>&nbsp;</span><span>T</span><span>h</s', 1, ''),
(18, '2012-08-25 11:10:48', 1, 8, '1', 'Blog Entry: <p><span>.</span><span>&nbsp;</span><span>T</span><span>h</s', 2, 'Changed name.'),
(19, '2012-08-25 14:43:51', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'Changed body.'),
(20, '2012-08-25 16:30:18', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'Changed name.'),
(21, '2012-08-25 16:51:54', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 1, ''),
(22, '2012-08-25 16:52:01', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(23, '2012-08-25 16:53:35', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(24, '2012-08-25 16:54:22', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 1, ''),
(25, '2012-08-25 16:54:38', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(26, '2012-08-25 17:01:23', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(27, '2012-08-25 17:01:35', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(28, '2012-08-25 17:52:51', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(29, '2012-08-25 17:52:57', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(30, '2012-08-25 17:53:01', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(31, '2012-08-25 18:04:50', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(32, '2012-08-25 18:05:16', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(33, '2012-08-25 18:09:06', 1, 8, '4', 'Blog Entry: <p><span>It is a long established fact that a reader will be', 1, ''),
(34, '2012-08-25 18:09:15', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(35, '2012-08-25 18:09:28', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(36, '2012-08-25 18:09:28', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'Changed name.'),
(37, '2012-08-25 18:09:36', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(38, '2012-08-25 18:09:40', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'No fields changed.'),
(39, '2012-08-25 18:09:53', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'Changed user_id.'),
(40, '2012-08-25 18:11:11', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(41, '2012-08-25 18:11:17', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'Changed user_id.'),
(42, '2012-08-25 18:11:25', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'Changed name.'),
(43, '2012-08-25 18:11:48', 1, 8, '2', 'Facebook terms: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'Changed user_id.'),
(44, '2012-08-25 18:12:48', 1, 8, '2', 'Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'Changed title.'),
(45, '2012-08-25 18:13:12', 1, 8, '2', 'Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(46, '2012-08-25 18:14:05', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(47, '2012-08-25 18:17:20', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(48, '2012-08-25 18:17:24', 1, 8, '2', 'Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(49, '2012-08-25 18:17:31', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'Changed user_id.'),
(50, '2012-08-25 18:17:36', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'No fields changed.'),
(51, '2012-08-25 18:18:11', 1, 3, '2', 'piyushroshan', 2, 'Changed password, first_name, last_name and email.'),
(52, '2012-08-25 18:18:19', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'No fields changed.'),
(53, '2012-08-25 18:29:22', 1, 8, '2', 'Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(54, '2012-08-25 18:34:38', 1, 8, '2', 'Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(55, '2012-08-25 18:34:41', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'No fields changed.'),
(56, '2012-08-25 18:36:29', 1, 8, '5', 'Organizers: <h3>1914 translation by H. Rackham</h3>\r\n<p>"But I must expl', 1, ''),
(57, '2012-08-25 18:36:46', 1, 8, '5', 'Organizers: <h3>1914 translation by H. Rackham</h3>\r\n<p>"But I must expl', 3, ''),
(58, '2012-08-25 18:37:04', 1, 8, '6', 'Partners: <h3>1914 translation by H. Rackham</h3>\r\n<p>"But I must expl', 1, ''),
(59, '2012-08-25 18:39:40', 1, 8, '6', 'Partners: <h3>1914 translation by H. Rackham</h3>\r\n<p>"But I must expl', 2, 'No fields changed.'),
(60, '2012-08-25 18:39:45', 1, 8, '4', 'Blog Entry: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(61, '2012-08-25 18:39:50', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'No fields changed.'),
(62, '2012-08-25 18:39:55', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'No fields changed.'),
(63, '2012-08-25 18:39:59', 1, 8, '2', 'Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(64, '2012-08-25 18:44:16', 1, 8, '6', 'Partners: <h3>1914 translation by H. Rackham</h3>\r\n<p>"But I must expl', 2, 'No fields changed.'),
(65, '2012-08-25 18:44:25', 1, 8, '6', 'Partners: <h3>1914 translation by H. Rackham</h3>\r\n<p>"But I must expl', 2, 'Changed user_id.'),
(66, '2012-08-25 18:44:41', 1, 8, '4', 'Blog Entry: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(67, '2012-08-25 18:44:46', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(68, '2012-08-29 11:12:14', 1, 8, '6', 'Partners: <p>"But I must explain to you how all this mistaken idea of ', 2, 'Changed body.'),
(69, '2012-08-29 16:40:07', 1, 8, '6', 'Partners: <p>"But I must explain to you how all this mistaken idea of ', 2, 'No fields changed.'),
(70, '2012-08-29 16:40:22', 1, 8, '4', 'Blog Entry: <p><span>It is a long established fact that a reader will be', 2, 'Changed body.'),
(71, '2012-08-29 16:40:32', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'Changed body.'),
(72, '2012-08-29 16:40:44', 1, 8, '2', 'Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'Changed body.'),
(73, '2012-08-29 16:40:56', 1, 8, '2', 'Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'Changed body.'),
(74, '2012-08-29 16:41:05', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'Changed body.'),
(75, '2012-08-29 16:42:05', 1, 8, '4', 'Blog Entry: <p><span>It is a long established fact that a reader will be', 2, 'Changed body.'),
(76, '2012-08-29 16:42:19', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'Changed body.'),
(77, '2012-08-29 16:42:36', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'Changed body.'),
(78, '2012-08-29 17:07:45', 1, 2, '1', 'Blogger', 1, ''),
(79, '2012-08-29 17:07:50', 1, 2, '1', 'Blogger', 2, 'No fields changed.'),
(80, '2012-08-29 17:08:16', 1, 2, '2', 'Admin', 1, ''),
(81, '2012-08-29 17:08:25', 1, 2, '2', 'Admin', 2, 'No fields changed.'),
(82, '2012-08-29 17:09:29', 1, 2, '2', 'Admin', 2, 'Changed permissions.'),
(83, '2012-08-29 17:09:41', 1, 2, '2', 'Staff', 2, 'Changed name.'),
(84, '2012-08-29 17:10:41', 1, 3, '2', 'piyushroshan', 2, 'Changed password, is_staff and groups.'),
(85, '2012-08-29 17:11:21', 1, 3, '2', 'piyushroshan', 2, 'Changed password, first_name, last_name and email.'),
(86, '2012-08-29 17:11:37', 1, 3, '3', 'dummyuser', 2, 'Changed username and password.'),
(87, '2012-08-29 17:11:53', 1, 3, '3', 'dummyuser', 2, 'Changed password and first_name.'),
(88, '2012-08-29 17:13:18', 1, 3, '2', 'piyushroshan', 2, 'Changed password.'),
(89, '2012-08-29 22:09:24', 1, 8, '6', 'Partners: <p>"But I must explain to you how all this mistaken idea of ', 2, 'No fields changed.'),
(90, '2012-08-29 22:09:30', 1, 8, '4', 'Blog Entry: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(91, '2012-08-29 22:09:34', 1, 8, '3', 'TEDx NITCalicut: <p><span>It is a long established fact that a reader will be', 2, 'No fields changed.'),
(92, '2012-08-29 22:09:38', 1, 8, '2', 'Organizers: <p><strong>orem Ipsum</strong><span>&nbsp;is simply dummy te', 2, 'No fields changed.'),
(93, '2012-08-29 22:09:42', 1, 8, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed', 2, 'No fields changed.'),
(94, '2012-08-30 21:44:55', 1, 9, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed: nice1', 1, ''),
(95, '2012-08-30 21:46:44', 1, 9, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed: nice1', 2, 'No fields changed.'),
(96, '2012-08-30 21:51:47', 1, 9, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed: nice1', 2, 'Changed newimage.'),
(97, '2012-08-30 22:23:56', 1, 2, '1', 'Blogger', 2, 'No fields changed.'),
(98, '2012-08-30 22:25:00', 1, 3, '2', 'piyushroshan', 2, 'Changed password.'),
(99, '2012-08-30 22:32:01', 1, 9, '1', 'Blog Entry: <p>. This is a free typing test that tests your typing speed: this is bakwas', 1, ''),
(100, '2012-08-30 22:43:57', 1, 8, '1', 'As the going gets tough, the tough gets going!: <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//E', 1, ''),
(101, '2012-08-30 22:58:00', 1, 8, '1', 'As the going gets tough, the tough gets going!: <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//E', 2, 'Changed body.'),
(102, '2012-08-30 22:58:36', 1, 8, '1', 'As the going gets tough, the tough gets going!: <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//E', 2, 'No fields changed.'),
(103, '2012-08-30 22:59:26', 1, 8, '1', 'As the going gets tough, the tough gets going!: <p>Wow! When we look back, we realize that we have indeed co', 2, 'Changed body.'),
(104, '2012-08-30 23:00:30', 1, 8, '1', 'As the going gets tough, the tough gets going!: <p style="margin: 0px 0px 1em; color: #363636; font-family: ', 2, 'Changed body.'),
(105, '2012-08-30 23:01:48', 1, 8, '1', 'As the going gets tough, the tough gets going!: <p>Wow! When we look back, we realize that we have indeed co', 2, 'Changed body.'),
(106, '2012-08-30 23:03:14', 1, 8, '1', 'As the going gets tough, the tough gets going!: <p>Wow! When we look back, we realize that we have indeed co', 2, 'Changed body.'),
(107, '2012-08-30 23:22:30', 1, 8, '2', 'Blog Entry: <p>hello</p>', 1, ''),
(108, '2012-08-30 23:22:56', 1, 8, '2', 'Blog Entry: <p>hello</p>', 3, ''),
(109, '2012-09-08 11:52:35', 2, 8, '2', 'Blog Entry: <p><img style="vertical-align: middle; border: 2px solid bla', 1, ''),
(110, '2012-09-08 11:57:02', 2, 8, '3', 'Blog Entry: <p style="margin: 15px 0px; padding: 0px; border: 0px; color', 1, ''),
(111, '2012-09-08 12:06:13', 2, 8, '3', 'Blog Entry: <p>GitHub is the best place to share code with friends, co-w', 2, 'Changed body.');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

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
(16, 'flat page', 'flatpages', 'flatpage'),
(17, 'kv store', 'thumbnail', 'kvstore');

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
('06da75cef5722fd402d71e27d92c5d40', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-15 16:45:50'),
('0b36632e086591c042afed9fd21124e8', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-13 18:06:58'),
('0f1af98dce2adb88db414040aee1b2a2', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-09-19 14:16:32'),
('14c817524d60028fac4b8b511320f84a', 'MmI3NDRiODg1YmViNjhmMTM1ODAzODA4MWRiOWE0OTI5YTE2YTg3NTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==\n', '2012-09-22 10:50:54'),
('25ddada73ffbf1c55544f0b780e952e1', 'MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2012-09-16 11:22:16'),
('369f3e29320030384bff4c845759fda6', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-09-11 04:55:59'),
('3f0b88bd752870633b83fa7599b12193', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-26 06:07:44'),
('413ee1ad3cc46d958fd5b669308ad187', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-26 12:22:28'),
('4aaa5b41bd454de03d5e76bf3154ddff', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-26 11:53:04'),
('5284add807d6629b774de987f8206246', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-26 18:26:16'),
('52d002de04c665f777f87195e899b1ed', 'MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2012-09-10 09:55:34'),
('5593d1a9fa44072d125ba17a6adcff32', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-28 16:13:42'),
('5cfa5f46ab466ca4c2f30e638d189c13', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-28 16:23:37'),
('5e19b8007eb784e0e7a5724604a84136', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-28 16:25:28'),
('5f0c1fdc76ddabc72a8f4c0feae10a05', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-09 11:18:36'),
('65f5e6d2d37c1d531f18cfe6055288ae', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-12 17:05:44'),
('6b438e51389c174ad608c5ef04f9eb30', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-09-15 15:02:28'),
('74e1304e70101fc97fee8913dcc6b2c7', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-08-28 16:20:50'),
('775aa37e8223685afb2079854986d67e', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-10 11:06:13'),
('7b610694fc0ac6346a81bf65d032f6ef', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-13 18:10:53'),
('835e7c33b041c4524d33e6fbe52ed9e9', 'MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2012-09-10 07:18:47'),
('8f09fd2ff22d0970d7524917f8cb30a2', 'MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2012-09-11 07:02:56'),
('8fdaffb201d3991daf4ed2967f31e016', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-13 17:41:19'),
('967431332e5e128afdd41d7dd4750e32', 'MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2012-09-12 09:33:11'),
('9d729ae9ccaaacff3649684ecd10b650', 'MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2012-09-11 07:14:41'),
('a4cf65fa2ae9ae11eda05052f8ecf879', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-10 15:38:36'),
('adc9ad9c73a844dd0bf69b3b0b1aee18', 'MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2012-09-11 06:43:47'),
('b225b9480b3df635413f1eec0ff4ef14', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-08-28 16:14:31'),
('b9d953e4ced89fd4ec8fef64b36808bc', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-09-10 07:54:59'),
('bd8d105636f15712379dce0a2cc16d0b', 'MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2012-09-11 06:32:27'),
('ceb86a2e75a868f6c971b727e713f793', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-12 16:39:42'),
('d2d8c52fe562011648b30bde5e9ac137', 'MDI0OGJiOWVhMWI2YTRmYWZjODczNTlkYTJjOWFhZmMwZDE0YmE3ODqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2012-09-12 16:09:58'),
('dd99082c43c00e6afc09a9ab18cfe479', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-09-10 18:49:38'),
('e30f0125e33823f9b76ccb4e21f4b593', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-08-28 16:18:54'),
('e76cef962bad2244926f3900b2a4b9ce', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-22 16:37:00'),
('f4d230d35df3c9e930c89635d355862e', 'ZThiOGIwOTA3MWJlNDkyZDU1NmI3NzgwMDUwZDZkMzgzMjU3MmE5NzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2012-08-28 19:39:25'),
('fcdbc0ae102ed484c4f8d7855686f927', 'MDJiMzk4MzYyZGU0ZDIxMmJhZDc0ODk5N2ExZmU2NDhhZTYxYzc3MzqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2012-09-10 07:54:57');

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
  `slug` varchar(50) NOT NULL,
  `nominated_on` datetime NOT NULL,
  `nominator_phone` varchar(25) NOT NULL,
  `nominator_email` varchar(128) NOT NULL,
  `nominator_name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nominations_nominee_a951d5d6` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nominations_nominee`
--

INSERT INTO `nominations_nominee` (`id`, `fullname`, `email`, `phone`, `description`, `support`, `reference1`, `slug`, `nominated_on`, `nominator_phone`, `nominator_email`, `nominator_name`) VALUES
(1, 'Roshan Piyush', 'piyushroshan@gmail.com', '919447884634', 'Occupation? Honors or Distinctions? Recent Work?', 'Occupation? Honors or Distinctions? Recent Work?', 'Occupation? Honors or Distinctions? Recent Work?', '2012-09-01-153225372782-piyushroshangmailcom', '2012-09-01 10:02:25', '919447884634', 'ssss@gmail.com', 'Roshan Piyush');

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
-- Table structure for table `thumbnail_kvstore`
--

CREATE TABLE IF NOT EXISTS `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Constraints for table `blogs_blogpost`
--
ALTER TABLE `blogs_blogpost`
  ADD CONSTRAINT `user_id_id_refs_id_e451c366` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blogs_comment`
--
ALTER TABLE `blogs_comment`
  ADD CONSTRAINT `post_id_refs_id_a9aae433` FOREIGN KEY (`post_id`) REFERENCES `blogs_blogpost` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
