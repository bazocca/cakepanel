-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2015 at 04:16 PM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cakepanel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_accounts`
--

CREATE TABLE IF NOT EXISTS `cms_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` tinyint(4) NOT NULL,
  `username` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `modified_by` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_accounts`
--

INSERT INTO `cms_accounts` (`id`, `user_id`, `role_id`, `username`, `email`, `password`, `last_login`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 1, 1, 'admin', 'admin@yahoo.com', '169e781bd52860b584879cbe117085da596238f3', '2013-02-18 18:12:14', '2013-01-04 00:00:00', 1, '2013-01-04 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_entries`
--

CREATE TABLE IF NOT EXISTS `cms_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_type` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text,
  `main_image` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `count` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) unsigned NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `modified_by` int(11) unsigned NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `lang_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_entries`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_entry_metas`
--

CREATE TABLE IF NOT EXISTS `cms_entry_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cms_entry_metas`
--


-- --------------------------------------------------------

--
-- Table structure for table `cms_roles`
--

CREATE TABLE IF NOT EXISTS `cms_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `description` text,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cms_roles`
--

INSERT INTO `cms_roles` (`id`, `name`, `description`, `count`) VALUES
(1, 'Super Admin', 'Administrator who has all access for the web without exceptions.', 1),
(2, 'Admin', 'Administrator from the clients.', NULL),
(3, 'Regular User', 'Anyone with no access to admin panel.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE IF NOT EXISTS `cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `key`, `value`) VALUES
(1, 'title', 'Creazi Citra Cemerlang'),
(2, 'tagline', 'Creative , Business , Solution'),
(3, 'description', 'Our Company Description here.'),
(4, 'date_format', 'd F Y'),
(5, 'time_format', 'h:i A'),
(6, 'header', ''),
(7, 'top_insert', ''),
(8, 'bottom_insert', ''),
(9, 'google_analytics_code', ''),
(10, 'display_width', '3200'),
(11, 'display_height', '1800'),
(12, 'display_crop', '0'),
(13, 'thumb_width', '120'),
(14, 'thumb_height', '120'),
(15, 'thumb_crop', '0'),
(16, 'language', 'en_english'),
(17, 'table_view', 'complex'),
(18, 'usd_sell', '9732.00'),
(19, 'custom-pagination', '10'),
(20, 'custom-email_contact', 'andybasuki88@gmail.com'),
(21, 'custom-overwrite_image', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `cms_types`
--

CREATE TABLE IF NOT EXISTS `cms_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int(11) unsigned NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `modified_by` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cms_types`
--

INSERT INTO `cms_types` (`id`, `name`, `slug`, `description`, `parent_id`, `count`, `created`, `created_by`, `modified`, `modified_by`) VALUES
(1, 'Media Library', 'media', 'All media image is stored here.', 0, 0, '2013-01-15 03:35:14', 1, '2013-01-15 03:35:14', 1),
(3, 'Slideshow', 'slideshow', 'Home slideshow with details.', 0, 0, '2014-09-03 10:35:08', 1, '2015-03-05 16:15:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_type_metas`
--

CREATE TABLE IF NOT EXISTS `cms_type_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text,
  `input_type` varchar(500) DEFAULT NULL,
  `validation` text,
  `instruction` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cms_type_metas`
--

INSERT INTO `cms_type_metas` (`id`, `type_id`, `key`, `value`, `input_type`, `validation`, `instruction`) VALUES
(2, 3, 'category', 'home', NULL, NULL, NULL),
(3, 3, 'form-url_link', '', 'text', 'is_url|', 'Example: http://www.yourdomain.com');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(500) NOT NULL,
  `lastname` varchar(500) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) unsigned NOT NULL DEFAULT '1',
  `modified` datetime NOT NULL,
  `modified_by` int(11) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `firstname`, `lastname`, `created`, `created_by`, `modified`, `modified_by`, `status`) VALUES
(1, 'admin', 'zpanel', '2013-01-04 00:00:00', 1, '2014-02-06 10:50:29', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_user_metas`
--

CREATE TABLE IF NOT EXISTS `cms_user_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(500) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `cms_user_metas`
--

INSERT INTO `cms_user_metas` (`id`, `user_id`, `key`, `value`) VALUES
(1, 1, 'gender', 'male'),
(2, 1, 'address', 'Jl. Dharmahusada Indah 43'),
(3, 1, 'zip_code', '60258'),
(4, 1, 'city', 'Surabaya, Indonesia'),
(5, 1, 'mobile_phone', '089 67367 1110'),
(6, 1, 'dob_day', '28'),
(7, 1, 'dob_month', '10'),
(8, 1, 'dob_year', '1988'),
(9, 1, 'job', 'Web Developer'),
(10, 1, 'company', 'PT. Creazi'),
(11, 1, 'company_address', 'Jl. Nginden Semolo 101');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;