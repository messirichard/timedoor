-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2020 at 04:02 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timedoor`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Seorang Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-13 16:24:11', '2020-01-13 16:24:11', 'Hai, ini sebuah komentar.\nUntuk mulai memoderasi, mengedit, dan menghapus komentar, silakan kunjungi laman Komentar di dasbor.\nAvatar komentator diambil dari <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/timedoor', 'yes'),
(2, 'home', 'http://localhost/timedoor', 'yes'),
(3, 'blogname', 'Timedoor', 'yes'),
(4, 'blogdescription', 'Moto situs Anda bisa diletakkan di sini', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'richardofay@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:124:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"slider/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"slider/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"slider/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"slider/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"slider/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"slider/([^/]+)/embed/?$\";s:39:\"index.php?slider=$matches[1]&embed=true\";s:27:\"slider/([^/]+)/trackback/?$\";s:33:\"index.php?slider=$matches[1]&tb=1\";s:35:\"slider/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&paged=$matches[2]\";s:42:\"slider/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?slider=$matches[1]&cpage=$matches[2]\";s:31:\"slider/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?slider=$matches[1]&page=$matches[2]\";s:23:\"slider/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"slider/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"slider/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"slider/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"slider/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=14&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:5;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:7;s:71:\"yikes-inc-easy-mailchimp-extender/yikes-inc-easy-mailchimp-extender.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'timedoor', 'yes'),
(41, 'stylesheet', 'timedoor', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:12:\"Contact Form\";s:4:\"text\";s:41:\"[contact-form-7 id=\"88\" title=\"Form tes\"]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:71:\"yikes-inc-easy-mailchimp-extender/yikes-inc-easy-mailchimp-extender.php\";s:43:\"uninstall_yikes_inc_easy_mailchimp_extender\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '14', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1594484644', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'id_ID', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:1:{i:0;s:22:\"yikes_easy_mc_widget-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1579191853;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579191855;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579191874;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579191884;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579276745;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578933245;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(128, 'current_theme', 'Timedoor', 'yes'),
(129, 'theme_mods_timedoor', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(130, 'theme_switched', '', 'yes'),
(135, 'recently_activated', 'a:3:{s:33:\"duplicate-post/duplicate-post.php\";i:1579190367;s:33:\"acf-theme-code/acf_theme_code.php\";i:1579190352;s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";i:1579110492;}', 'yes'),
(136, 'acf_version', '5.8.7', 'yes'),
(144, '_site_transient_timeout_browser_09f454857cbf37627aacee60db0bd6fc', '1579541349', 'no'),
(145, '_site_transient_browser_09f454857cbf37627aacee60db0bd6fc', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.117\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(146, '_site_transient_timeout_php_check_20c231c3d6703efba5d948822e1d1da6', '1579541350', 'no'),
(147, '_site_transient_php_check_20c231c3d6703efba5d948822e1d1da6', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(156, 'cptui_new_install', 'false', 'yes'),
(157, 'cptui_post_types', 'a:2:{s:9:\"portfolio\";a:30:{s:4:\"name\";s:9:\"portfolio\";s:5:\"label\";s:10:\"Portofolio\";s:14:\"singular_label\";s:9:\"portfolio\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"slider\";a:30:{s:4:\"name\";s:6:\"slider\";s:5:\"label\";s:6:\"Slider\";s:14:\"singular_label\";s:6:\"slider\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(166, 'recovery_mode_email_last_sent', '1578972105', 'yes'),
(188, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"richardofay@gmail.com\";s:7:\"version\";s:5:\"5.3.2\";s:9:\"timestamp\";i:1579010247;}', 'no'),
(191, 'category_children', 'a:0:{}', 'yes'),
(199, 'duplicate_post_copytitle', '1', 'yes'),
(200, 'duplicate_post_copydate', '', 'yes'),
(201, 'duplicate_post_copystatus', '', 'yes'),
(202, 'duplicate_post_copyslug', '', 'yes'),
(203, 'duplicate_post_copyexcerpt', '1', 'yes'),
(204, 'duplicate_post_copycontent', '1', 'yes'),
(205, 'duplicate_post_copythumbnail', '1', 'yes'),
(206, 'duplicate_post_copytemplate', '1', 'yes'),
(207, 'duplicate_post_copyformat', '1', 'yes'),
(208, 'duplicate_post_copyauthor', '', 'yes'),
(209, 'duplicate_post_copypassword', '', 'yes'),
(210, 'duplicate_post_copyattachments', '', 'yes'),
(211, 'duplicate_post_copychildren', '', 'yes'),
(212, 'duplicate_post_copycomments', '', 'yes'),
(213, 'duplicate_post_copymenuorder', '1', 'yes'),
(214, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(215, 'duplicate_post_blacklist', '', 'yes'),
(216, 'duplicate_post_types_enabled', 'a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:9:\"portfolio\";}', 'yes'),
(217, 'duplicate_post_show_row', '1', 'yes'),
(218, 'duplicate_post_show_adminbar', '1', 'yes'),
(219, 'duplicate_post_show_submitbox', '1', 'yes'),
(220, 'duplicate_post_show_bulkactions', '1', 'yes'),
(221, 'duplicate_post_show_original_column', '', 'yes'),
(222, 'duplicate_post_show_original_in_post_states', '', 'yes'),
(223, 'duplicate_post_show_original_meta_box', '', 'yes'),
(224, 'duplicate_post_version', '3.2.4', 'yes'),
(225, 'duplicate_post_show_notice', '0', 'no'),
(226, 'duplicate_post_title_prefix', '', 'yes'),
(227, 'duplicate_post_title_suffix', '', 'yes'),
(228, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(229, 'duplicate_post_roles', 'a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}', 'yes'),
(234, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1579202291', 'no'),
(235, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:13:\"WordCamp Asia\";s:3:\"url\";s:31:\"https://2020.asia.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2020-02-21 00:00:00\";s:8:\"end_date\";s:19:\"2020-02-23 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:17:\"Bangkok, Thailand\";s:7:\"country\";s:2:\"TH\";s:8:\"latitude\";d:13.7248934;s:9:\"longitude\";d:100.492683;}}}}', 'no'),
(250, 'widget_mc4wp_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'mc4wp_version', '4.7.4', 'yes'),
(252, '_transient_timeout_plugin_slugs', '1579276768', 'no'),
(253, '_transient_plugin_slugs', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:5;s:33:\"duplicate-post/duplicate-post.php\";i:6;s:71:\"yikes-inc-easy-mailchimp-extender/yikes-inc-easy-mailchimp-extender.php\";}', 'no'),
(254, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(257, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1579108768;s:7:\"version\";s:5:\"5.1.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(258, '_transient_timeout_mc4wp_mailchimp_lists', '1579195989', 'no'),
(259, '_transient_mc4wp_mailchimp_lists', 'a:1:{s:10:\"2bacfc213e\";O:8:\"stdClass\":4:{s:2:\"id\";s:10:\"2bacfc213e\";s:6:\"web_id\";i:354929;s:4:\"name\";s:8:\"Timedoor\";s:5:\"stats\";O:8:\"stdClass\":16:{s:12:\"member_count\";i:1;s:17:\"unsubscribe_count\";i:0;s:13:\"cleaned_count\";i:0;s:23:\"member_count_since_send\";i:1;s:28:\"unsubscribe_count_since_send\";i:0;s:24:\"cleaned_count_since_send\";i:0;s:14:\"campaign_count\";i:0;s:18:\"campaign_last_sent\";s:0:\"\";s:17:\"merge_field_count\";i:5;s:12:\"avg_sub_rate\";i:0;s:14:\"avg_unsub_rate\";i:0;s:15:\"target_sub_rate\";i:0;s:9:\"open_rate\";i:0;s:10:\"click_rate\";i:0;s:13:\"last_sub_date\";s:25:\"2020-01-15T17:32:37+00:00\";s:15:\"last_unsub_date\";s:0:\"\";}}}', 'no'),
(260, 'mc4wp', 'a:6:{s:19:\"grecaptcha_site_key\";s:0:\"\";s:21:\"grecaptcha_secret_key\";s:0:\"\";s:7:\"api_key\";s:36:\"ccf87e2b07e1dc18cdc16ae609b5204e-us4\";s:20:\"allow_usage_tracking\";i:0;s:15:\"debug_log_level\";s:7:\"warning\";s:18:\"first_activated_on\";i:1579109012;}', 'yes'),
(264, 'mc4wp_default_form_id', '79', 'yes'),
(265, '_transient_timeout_mc4wp_list_2bacfc213e_mf', '1579196008', 'no'),
(266, '_transient_mc4wp_list_2bacfc213e_mf', 'a:6:{i:0;O:8:\"stdClass\":6:{s:3:\"tag\";s:5:\"EMAIL\";s:4:\"name\";s:13:\"Email address\";s:8:\"required\";b:1;s:4:\"type\";s:5:\"email\";s:7:\"options\";a:0:{}s:6:\"public\";b:1;}i:1;O:8:\"stdClass\":7:{s:3:\"tag\";s:7:\"ADDRESS\";s:4:\"name\";s:7:\"Address\";s:4:\"type\";s:7:\"address\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:0;s:7:\"options\";O:8:\"stdClass\":1:{s:15:\"default_country\";i:164;}}i:2;O:8:\"stdClass\":7:{s:3:\"tag\";s:8:\"BIRTHDAY\";s:4:\"name\";s:8:\"Birthday\";s:4:\"type\";s:8:\"birthday\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:1;s:7:\"options\";O:8:\"stdClass\":1:{s:11:\"date_format\";s:5:\"MM/DD\";}}i:3;O:8:\"stdClass\":7:{s:3:\"tag\";s:5:\"FNAME\";s:4:\"name\";s:10:\"First Name\";s:4:\"type\";s:4:\"text\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:1;s:7:\"options\";O:8:\"stdClass\":1:{s:4:\"size\";i:25;}}i:4;O:8:\"stdClass\":7:{s:3:\"tag\";s:5:\"LNAME\";s:4:\"name\";s:9:\"Last Name\";s:4:\"type\";s:4:\"text\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:1;s:7:\"options\";O:8:\"stdClass\":1:{s:4:\"size\";i:25;}}i:5;O:8:\"stdClass\":7:{s:3:\"tag\";s:5:\"PHONE\";s:4:\"name\";s:12:\"Phone Number\";s:4:\"type\";s:5:\"phone\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:0;s:7:\"options\";O:8:\"stdClass\":0:{}}}', 'no'),
(267, '_transient_timeout_mc4wp_list_2bacfc213e_ic', '1579196009', 'no'),
(268, '_transient_mc4wp_list_2bacfc213e_ic', 'a:0:{}', 'no'),
(269, 'mc4wp_integrations', 'a:15:{s:13:\"ninja-forms-2\";a:0:{}s:15:\"wp-comment-form\";a:0:{}s:20:\"wp-registration-form\";a:0:{}s:10:\"buddypress\";a:0:{}s:11:\"woocommerce\";a:0:{}s:22:\"easy-digital-downloads\";a:0:{}s:14:\"contact-form-7\";a:0:{}s:14:\"events-manager\";a:0:{}s:11:\"memberpress\";a:0:{}s:11:\"affiliatewp\";a:0:{}s:4:\"give\";a:0:{}s:6:\"custom\";a:4:{s:5:\"lists\";a:1:{i:1;s:10:\"2bacfc213e\";}s:12:\"double_optin\";s:1:\"1\";s:15:\"update_existing\";s:1:\"1\";s:17:\"replace_interests\";s:1:\"1\";}s:11:\"ninja-forms\";a:0:{}s:7:\"wpforms\";a:0:{}s:13:\"gravity-forms\";a:0:{}}', 'yes'),
(276, 'yikes_easy_mailchimp_activation_date', '1579110564', 'yes'),
(277, 'yikes_easy_mailchimp_extender_forms', 'a:1:{i:1;a:17:{s:13:\"custom_fields\";a:0:{}s:20:\"custom_notifications\";s:0:\"\";s:13:\"custom_styles\";s:0:\"\";s:15:\"custom_template\";i:0;s:14:\"error_messages\";a:10:{s:7:\"success\";s:0:\"\";s:20:\"success-single-optin\";s:0:\"\";s:20:\"success-resubscribed\";s:0:\"\";s:13:\"general-error\";s:0:\"\";s:18:\"already-subscribed\";s:0:\"\";s:11:\"update-link\";s:0:\"\";s:13:\"email-subject\";s:0:\"\";s:10:\"email-body\";s:635:\"Greetings,\r\n\r\nA request has been made to update your Mailchimp account profile information. To do so please use the following link: [link]Update Mailchimp Profile Info[/link]\r\n\r\nIf you did not request this update, please disregard this email.\r\n\r\n&nbsp;\r\n\r\nThis email was sent from: [url]\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n<p style=\"font-size: 13px; margin-top: 5em;\"><em>This email was generated by the <a href=\"http://www.wordpress.org/plugins/yikes-inc-easy-mailchimp-extender/\" target=\"_blank\" rel=\"noopener\">Easy Forms for Mailchimp</a> plugin, created by <a href=\"http://www.yikesinc.com\" target=\"_blank\" rel=\"noopener\">YIKES Inc.</a></em></p>\";s:20:\"update-email-success\";s:0:\"\";s:20:\"update-email-failure\";s:0:\"\";}s:6:\"fields\";a:1:{s:5:\"EMAIL\";a:9:{s:5:\"label\";s:13:\"Email Address\";s:4:\"type\";s:5:\"email\";s:5:\"merge\";s:5:\"EMAIL\";s:8:\"position\";s:1:\"1\";s:2:\"id\";s:1:\"0\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"description\";s:0:\"\";s:18:\"additional-classes\";s:0:\"\";}}s:16:\"form_description\";s:0:\"\";s:9:\"form_name\";s:4:\"Tess\";s:13:\"form_settings\";a:13:{s:30:\"yikes-easy-mc-form-class-names\";s:0:\"\";s:25:\"yikes-easy-mc-inline-form\";s:1:\"0\";s:32:\"yikes-easy-mc-submit-button-type\";s:4:\"text\";s:32:\"yikes-easy-mc-submit-button-text\";s:8:\"Subcribe\";s:33:\"yikes-easy-mc-submit-button-image\";s:0:\"\";s:35:\"yikes-easy-mc-submit-button-classes\";s:15:\"subcribe-button\";s:27:\"yikes-easy-mc-form-schedule\";s:1:\"0\";s:36:\"yikes-easy-mc-form-restriction-start\";i:1579110600;s:34:\"yikes-easy-mc-form-restriction-end\";i:1579110600;s:46:\"yikes-easy-mc-form-restriction-pending-message\";s:108:\"Signup is not yet open, and will be available on 15 January 2020 at 5:50PM. Please come back then to signup.\";s:46:\"yikes-easy-mc-form-restriction-expired-message\";s:61:\"This signup for this form ended on 16 January 2020 at 5:50PM.\";s:33:\"yikes-easy-mc-form-login-required\";s:1:\"0\";s:44:\"yikes-easy-mc-form-restriction-login-message\";s:58:\"You need to be logged in to sign up for this mailing list.\";}s:2:\"id\";i:1;s:11:\"impressions\";i:45;s:7:\"list_id\";s:10:\"2bacfc213e\";s:14:\"optin_settings\";a:3:{s:5:\"optin\";s:1:\"1\";s:20:\"update_existing_user\";s:1:\"1\";s:17:\"send_update_email\";s:1:\"1\";}s:13:\"redirect_page\";s:1:\"1\";s:23:\"redirect_user_on_submit\";s:1:\"0\";s:19:\"submission_settings\";a:7:{s:4:\"ajax\";s:1:\"1\";s:22:\"redirect_on_submission\";s:1:\"0\";s:13:\"redirect_page\";s:1:\"1\";s:21:\"hide_form_post_signup\";s:1:\"0\";s:19:\"custom_redirect_url\";s:0:\"\";s:19:\"redirect_new_window\";s:1:\"0\";s:17:\"replace_interests\";s:1:\"1\";}s:11:\"submissions\";i:0;}}', 'yes'),
(278, 'yikes_easy_mailchimp_extender_version', '6.6.2', 'yes'),
(279, 'yikes_mc_database_version', '1.0', 'yes'),
(280, 'widget_yikes_easy_mc_widget', 'a:2:{i:2;a:4:{s:5:\"title\";s:21:\"Mailchimp Signup Form\";s:7:\"form_id\";s:1:\"1\";s:16:\"form_description\";s:1:\"1\";s:11:\"submit_text\";s:6:\"Submit\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(281, 'yikes-easy-mc-active-addons', 'a:0:{}', 'yes'),
(282, '_transient_timeout_yikes_eme_account', '1579114194', 'no'),
(283, '_transient_yikes_eme_account', 'a:19:{s:10:\"account_id\";s:25:\"1e9138423249b3d0c82192830\";s:8:\"login_id\";s:9:\"140346542\";s:12:\"account_name\";s:8:\"Timedoor\";s:5:\"email\";s:21:\"richardofay@gmail.com\";s:10:\"first_name\";s:7:\"Messiah\";s:9:\"last_name\";s:7:\"Faykusa\";s:8:\"username\";s:9:\"messirich\";s:10:\"avatar_url\";s:151:\"https://secure.gravatar.com/avatar/47fb2533edd010521ab7c35941a1416b.jpg?s=300&d=https%3A%2F%2Fcdn-images.mailchimp.com%2Ficons%2Fletter-avatars%2Fm.png\";s:4:\"role\";s:5:\"owner\";s:12:\"member_since\";s:25:\"2020-01-15T17:27:38+00:00\";s:17:\"pricing_plan_type\";s:12:\"forever_free\";s:13:\"first_payment\";s:0:\"\";s:16:\"account_timezone\";s:10:\"US/Eastern\";s:16:\"account_industry\";s:0:\"\";s:7:\"contact\";a:7:{s:7:\"company\";s:8:\"Timedoor\";s:5:\"addr1\";s:19:\"Dreaming Land D3/16\";s:5:\"addr2\";s:0:\"\";s:4:\"city\";s:8:\"Surabaya\";s:5:\"state\";s:0:\"\";s:3:\"zip\";s:5:\"60161\";s:7:\"country\";s:2:\"ID\";}s:11:\"pro_enabled\";b:0;s:10:\"last_login\";s:25:\"2020-01-15T17:30:54+00:00\";s:17:\"total_subscribers\";i:1;s:6:\"_links\";a:14:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:34:\"https://us4.api.mailchimp.com/3.0/\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:50:\"https://us4.api.mailchimp.com/schema/3.0/Root.json\";}i:1;a:5:{s:3:\"rel\";s:5:\"lists\";s:4:\"href\";s:39:\"https://us4.api.mailchimp.com/3.0/lists\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:62:\"https://us4.api.mailchimp.com/schema/3.0/Lists/Collection.json\";s:6:\"schema\";s:67:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists.json\";}i:2;a:5:{s:3:\"rel\";s:7:\"reports\";s:4:\"href\";s:41:\"https://us4.api.mailchimp.com/3.0/reports\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:64:\"https://us4.api.mailchimp.com/schema/3.0/Reports/Collection.json\";s:6:\"schema\";s:69:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Reports.json\";}i:3;a:5:{s:3:\"rel\";s:13:\"conversations\";s:4:\"href\";s:47:\"https://us4.api.mailchimp.com/3.0/conversations\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:70:\"https://us4.api.mailchimp.com/schema/3.0/Conversations/Collection.json\";s:6:\"schema\";s:75:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Conversations.json\";}i:4;a:5:{s:3:\"rel\";s:9:\"campaigns\";s:4:\"href\";s:43:\"https://us4.api.mailchimp.com/3.0/campaigns\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:66:\"https://us4.api.mailchimp.com/schema/3.0/Campaigns/Collection.json\";s:6:\"schema\";s:71:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Campaigns.json\";}i:5;a:5:{s:3:\"rel\";s:11:\"automations\";s:4:\"href\";s:45:\"https://us4.api.mailchimp.com/3.0/automations\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:68:\"https://us4.api.mailchimp.com/schema/3.0/Automations/Collection.json\";s:6:\"schema\";s:73:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Automations.json\";}i:6;a:5:{s:3:\"rel\";s:9:\"templates\";s:4:\"href\";s:43:\"https://us4.api.mailchimp.com/3.0/templates\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:66:\"https://us4.api.mailchimp.com/schema/3.0/Templates/Collection.json\";s:6:\"schema\";s:71:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Templates.json\";}i:7;a:4:{s:3:\"rel\";s:12:\"file-manager\";s:4:\"href\";s:46:\"https://us4.api.mailchimp.com/3.0/file-manager\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:67:\"https://us4.api.mailchimp.com/schema/3.0/FileManager/Namespace.json\";}i:8;a:4:{s:3:\"rel\";s:15:\"authorized-apps\";s:4:\"href\";s:49:\"https://us4.api.mailchimp.com/3.0/authorized-apps\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:71:\"https://us4.api.mailchimp.com/schema/3.0/AuthorizedApps/Collection.json\";}i:9;a:4:{s:3:\"rel\";s:7:\"batches\";s:4:\"href\";s:41:\"https://us4.api.mailchimp.com/3.0/batches\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:64:\"https://us4.api.mailchimp.com/schema/3.0/Batches/Collection.json\";}i:10;a:4:{s:3:\"rel\";s:16:\"template-folders\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/template-folders\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:72:\"https://us4.api.mailchimp.com/schema/3.0/TemplateFolders/Collection.json\";}i:11;a:4:{s:3:\"rel\";s:16:\"campaign-folders\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/campaign-folders\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:72:\"https://us4.api.mailchimp.com/schema/3.0/CampaignFolders/Collection.json\";}i:12;a:4:{s:3:\"rel\";s:9:\"ecommerce\";s:4:\"href\";s:43:\"https://us4.api.mailchimp.com/3.0/ecommerce\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:65:\"https://us4.api.mailchimp.com/schema/3.0/Ecommerce/Namespace.json\";}i:13;a:4:{s:3:\"rel\";s:4:\"ping\";s:4:\"href\";s:38:\"https://us4.api.mailchimp.com/3.0/ping\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:60:\"https://us4.api.mailchimp.com/schema/3.0/Ping/Namespace.json\";}}}', 'no'),
(284, 'yikes-mc-api-validation', 'valid_api_key', 'yes'),
(285, 'yikes-mc-api-key', 'ccf87e2b07e1dc18cdc16ae609b5204e-us4', 'yes'),
(286, 'yikes-mailchimp-use-nonce', '1', 'yes'),
(287, '_transient_timeout_settings_errors', '1579110624', 'no'),
(288, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:26:\"Pengaturan telah disimpan.\";s:4:\"type\";s:7:\"success\";}}', 'no'),
(291, '_transient_timeout_yikes_eme_merge_variables_2bacfc213e', '1579114212', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(292, '_transient_yikes_eme_merge_variables_2bacfc213e', 'a:4:{s:7:\"list_id\";s:10:\"2bacfc213e\";s:11:\"total_items\";i:5;s:6:\"_links\";a:3:{i:0;a:5:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/MergeFields.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"create\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields\";s:6:\"method\";s:4:\"POST\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";s:6:\"schema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/POST.json\";}i:2;a:4:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:72:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Response.json\";}}s:12:\"merge_fields\";a:6:{i:0;a:11:{s:8:\"merge_id\";i:0;s:3:\"tag\";s:5:\"EMAIL\";s:4:\"name\";s:13:\"Email Address\";s:4:\"type\";s:5:\"email\";s:8:\"required\";b:1;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:1;s:13:\"display_order\";i:1;s:7:\"options\";a:1:{s:4:\"size\";i:25;}s:7:\"list_id\";s:10:\"2bacfc213e\";s:6:\"_links\";a:0:{}}i:1;a:12:{s:8:\"merge_id\";i:3;s:3:\"tag\";s:7:\"ADDRESS\";s:4:\"name\";s:7:\"Address\";s:4:\"type\";s:7:\"address\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:0;s:13:\"display_order\";i:4;s:7:\"options\";a:1:{s:15:\"default_country\";i:164;}s:9:\"help_text\";s:0:\"\";s:7:\"list_id\";s:10:\"2bacfc213e\";s:6:\"_links\";a:4:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/3\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/MergeFields.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/3\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";s:6:\"schema\";s:81:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/PATCH.json\";}i:3;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/3\";s:6:\"method\";s:6:\"DELETE\";}}}i:2;a:12:{s:8:\"merge_id\";i:5;s:3:\"tag\";s:8:\"BIRTHDAY\";s:4:\"name\";s:8:\"Birthday\";s:4:\"type\";s:8:\"birthday\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:1;s:13:\"display_order\";i:6;s:7:\"options\";a:1:{s:11:\"date_format\";s:5:\"MM/DD\";}s:9:\"help_text\";s:0:\"\";s:7:\"list_id\";s:10:\"2bacfc213e\";s:6:\"_links\";a:4:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/5\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/MergeFields.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/5\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";s:6:\"schema\";s:81:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/PATCH.json\";}i:3;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/5\";s:6:\"method\";s:6:\"DELETE\";}}}i:3;a:12:{s:8:\"merge_id\";i:1;s:3:\"tag\";s:5:\"FNAME\";s:4:\"name\";s:10:\"First Name\";s:4:\"type\";s:4:\"text\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:1;s:13:\"display_order\";i:2;s:7:\"options\";a:1:{s:4:\"size\";i:25;}s:9:\"help_text\";s:0:\"\";s:7:\"list_id\";s:10:\"2bacfc213e\";s:6:\"_links\";a:4:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/1\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/MergeFields.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/1\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";s:6:\"schema\";s:81:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/PATCH.json\";}i:3;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/1\";s:6:\"method\";s:6:\"DELETE\";}}}i:4;a:12:{s:8:\"merge_id\";i:2;s:3:\"tag\";s:5:\"LNAME\";s:4:\"name\";s:9:\"Last Name\";s:4:\"type\";s:4:\"text\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:1;s:13:\"display_order\";i:3;s:7:\"options\";a:1:{s:4:\"size\";i:25;}s:9:\"help_text\";s:0:\"\";s:7:\"list_id\";s:10:\"2bacfc213e\";s:6:\"_links\";a:4:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/2\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/MergeFields.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/2\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";s:6:\"schema\";s:81:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/PATCH.json\";}i:3;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/2\";s:6:\"method\";s:6:\"DELETE\";}}}i:5;a:12:{s:8:\"merge_id\";i:4;s:3:\"tag\";s:5:\"PHONE\";s:4:\"name\";s:12:\"Phone Number\";s:4:\"type\";s:5:\"phone\";s:8:\"required\";b:0;s:13:\"default_value\";s:0:\"\";s:6:\"public\";b:0;s:13:\"display_order\";i:5;s:7:\"options\";a:0:{}s:9:\"help_text\";s:0:\"\";s:7:\"list_id\";s:10:\"2bacfc213e\";s:6:\"_links\";a:4:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/4\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/MergeFields.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/4\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:84:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/Response.json\";s:6:\"schema\";s:81:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/PATCH.json\";}i:3;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields/4\";s:6:\"method\";s:6:\"DELETE\";}}}}}', 'no'),
(293, '_transient_timeout_yikes_eme_interest_categories_2bacfc213e', '1579114213', 'no'),
(294, '_transient_yikes_eme_interest_categories_2bacfc213e', 'a:0:{}', 'no'),
(295, '_transient_timeout_yikes_eme_segments_2bacfc213e_static', '1579114213', 'no'),
(296, '_transient_yikes_eme_segments_2bacfc213e_static', 'a:0:{}', 'no'),
(299, '_transient_timeout_yikes_eme_list_2bacfc213e', '1579114393', 'no'),
(300, '_transient_yikes_eme_list_2bacfc213e', 'a:22:{s:2:\"id\";s:10:\"2bacfc213e\";s:6:\"web_id\";i:354929;s:4:\"name\";s:8:\"Timedoor\";s:7:\"contact\";a:8:{s:7:\"company\";s:8:\"Timedoor\";s:8:\"address1\";s:19:\"Dreaming Land D3/16\";s:8:\"address2\";s:0:\"\";s:4:\"city\";s:8:\"Surabaya\";s:5:\"state\";s:0:\"\";s:3:\"zip\";s:5:\"60161\";s:7:\"country\";s:2:\"ID\";s:5:\"phone\";s:0:\"\";}s:19:\"permission_reminder\";s:66:\"You are receiving this email because you opted in via our website.\";s:15:\"use_archive_bar\";b:1;s:17:\"campaign_defaults\";a:4:{s:9:\"from_name\";s:7:\"Messiah\";s:10:\"from_email\";s:21:\"richardofay@gmail.com\";s:7:\"subject\";s:0:\"\";s:8:\"language\";s:2:\"en\";}s:19:\"notify_on_subscribe\";s:0:\"\";s:21:\"notify_on_unsubscribe\";s:0:\"\";s:12:\"date_created\";s:25:\"2020-01-15T17:32:37+00:00\";s:11:\"list_rating\";i:0;s:17:\"email_type_option\";b:0;s:19:\"subscribe_url_short\";s:24:\"http://eepurl.com/gPZh5f\";s:18:\"subscribe_url_long\";s:85:\"https://gmail.us4.list-manage.com/subscribe?u=1e9138423249b3d0c82192830&id=2bacfc213e\";s:14:\"beamer_address\";s:47:\"us4-1e42547d35-37462ea841@inbound.mailchimp.com\";s:10:\"visibility\";s:3:\"pub\";s:12:\"double_optin\";b:0;s:11:\"has_welcome\";b:0;s:21:\"marketing_permissions\";b:0;s:7:\"modules\";a:0:{}s:5:\"stats\";a:16:{s:12:\"member_count\";i:1;s:17:\"unsubscribe_count\";i:0;s:13:\"cleaned_count\";i:0;s:23:\"member_count_since_send\";i:1;s:28:\"unsubscribe_count_since_send\";i:0;s:24:\"cleaned_count_since_send\";i:0;s:14:\"campaign_count\";i:0;s:18:\"campaign_last_sent\";s:0:\"\";s:17:\"merge_field_count\";i:5;s:12:\"avg_sub_rate\";i:0;s:14:\"avg_unsub_rate\";i:0;s:15:\"target_sub_rate\";i:0;s:9:\"open_rate\";i:0;s:10:\"click_rate\";i:0;s:13:\"last_sub_date\";s:25:\"2020-01-15T17:32:37+00:00\";s:15:\"last_unsub_date\";s:0:\"\";}s:6:\"_links\";a:16:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:72:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:39:\"https://us4.api.mailchimp.com/3.0/lists\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:82:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/CollectionResponse.json\";s:6:\"schema\";s:67:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:72:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Response.json\";s:6:\"schema\";s:69:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/PATCH.json\";}i:3;a:5:{s:3:\"rel\";s:23:\"batch-sub-unsub-members\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e\";s:6:\"method\";s:4:\"POST\";s:12:\"targetSchema\";s:82:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/BatchPOST-Response.json\";s:6:\"schema\";s:73:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/BatchPOST.json\";}i:4;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e\";s:6:\"method\";s:6:\"DELETE\";}i:5;a:5:{s:3:\"rel\";s:13:\"abuse-reports\";s:4:\"href\";s:64:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/abuse-reports\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:88:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Abuse/CollectionResponse.json\";s:6:\"schema\";s:73:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Abuse.json\";}i:6;a:4:{s:3:\"rel\";s:8:\"activity\";s:4:\"href\";s:59:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/activity\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:81:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Activity/Response.json\";}i:7;a:4:{s:3:\"rel\";s:7:\"clients\";s:4:\"href\";s:58:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/clients\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Clients/Response.json\";}i:8;a:5:{s:3:\"rel\";s:14:\"growth-history\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/growth-history\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:89:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Growth/CollectionResponse.json\";s:6:\"schema\";s:74:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Growth.json\";}i:9;a:5:{s:3:\"rel\";s:19:\"interest-categories\";s:4:\"href\";s:70:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/interest-categories\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:101:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/InterestCategories/CollectionResponse.json\";s:6:\"schema\";s:86:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/InterestCategories.json\";}i:10;a:5:{s:3:\"rel\";s:7:\"members\";s:4:\"href\";s:58:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:90:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/CollectionResponse.json\";s:6:\"schema\";s:75:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Members.json\";}i:11;a:5:{s:3:\"rel\";s:12:\"merge-fields\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/MergeFields.json\";}i:12;a:5:{s:3:\"rel\";s:8:\"segments\";s:4:\"href\";s:59:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/segments\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:91:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Segments/CollectionResponse.json\";s:6:\"schema\";s:76:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Segments.json\";}i:13;a:5:{s:3:\"rel\";s:8:\"webhooks\";s:4:\"href\";s:59:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/webhooks\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:91:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Webhooks/CollectionResponse.json\";s:6:\"schema\";s:76:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Webhooks.json\";}i:14;a:5:{s:3:\"rel\";s:12:\"signup-forms\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/signup-forms\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/SignupForms/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/SignupForms.json\";}i:15;a:5:{s:3:\"rel\";s:9:\"locations\";s:4:\"href\";s:60:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/locations\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:92:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Locations/CollectionResponse.json\";s:6:\"schema\";s:77:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Locations.json\";}}}', 'no'),
(301, '_transient_timeout_yikes_eme_segments_2bacfc213e_saved', '1579114394', 'no'),
(302, '_transient_yikes_eme_segments_2bacfc213e_saved', 'a:0:{}', 'no'),
(303, '_transient_timeout_yikes_eme_members_2bacfc213e', '1579114395', 'no'),
(304, '_transient_yikes_eme_members_2bacfc213e', 'a:1:{s:21:\"richardofay@gmail.com\";a:23:{s:2:\"id\";s:32:\"47fb2533edd010521ab7c35941a1416b\";s:13:\"email_address\";s:21:\"richardofay@gmail.com\";s:15:\"unique_email_id\";s:10:\"1e88a65506\";s:6:\"web_id\";i:332052193;s:10:\"email_type\";s:4:\"html\";s:6:\"status\";s:10:\"subscribed\";s:12:\"merge_fields\";a:5:{s:5:\"FNAME\";s:7:\"Messiah\";s:5:\"LNAME\";s:7:\"Faykusa\";s:7:\"ADDRESS\";a:6:{s:5:\"addr1\";s:0:\"\";s:5:\"addr2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:7:\"country\";s:2:\"US\";}s:5:\"PHONE\";s:0:\"\";s:8:\"BIRTHDAY\";s:0:\"\";}s:5:\"stats\";a:2:{s:13:\"avg_open_rate\";i:0;s:14:\"avg_click_rate\";i:0;}s:9:\"ip_signup\";s:0:\"\";s:16:\"timestamp_signup\";s:0:\"\";s:6:\"ip_opt\";s:14:\"114.125.124.51\";s:13:\"timestamp_opt\";s:25:\"2020-01-15T17:32:37+00:00\";s:13:\"member_rating\";i:2;s:12:\"last_changed\";s:25:\"2020-01-15T17:32:37+00:00\";s:8:\"language\";s:0:\"\";s:3:\"vip\";b:0;s:12:\"email_client\";s:0:\"\";s:8:\"location\";a:6:{s:8:\"latitude\";i:0;s:9:\"longitude\";i:0;s:6:\"gmtoff\";i:0;s:6:\"dstoff\";i:0;s:12:\"country_code\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}s:6:\"source\";s:9:\"Admin Add\";s:10:\"tags_count\";i:0;s:4:\"tags\";a:0:{}s:7:\"list_id\";s:10:\"2bacfc213e\";s:6:\"_links\";a:10:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:58:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:90:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/CollectionResponse.json\";s:6:\"schema\";s:75:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Members.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\";s:6:\"schema\";s:77:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/PATCH.json\";}i:3;a:5:{s:3:\"rel\";s:6:\"upsert\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:3:\"PUT\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\";s:6:\"schema\";s:75:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/PUT.json\";}i:4;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:6:\"DELETE\";}i:5;a:4:{s:3:\"rel\";s:8:\"activity\";s:4:\"href\";s:100:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/activity\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:89:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Activity/Response.json\";}i:6;a:4:{s:3:\"rel\";s:5:\"goals\";s:4:\"href\";s:97:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/goals\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:86:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Goals/Response.json\";}i:7;a:4:{s:3:\"rel\";s:5:\"notes\";s:4:\"href\";s:97:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/notes\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:96:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Notes/CollectionResponse.json\";}i:8;a:4:{s:3:\"rel\";s:6:\"events\";s:4:\"href\";s:98:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/events\";s:6:\"method\";s:4:\"POST\";s:12:\"targetSchema\";s:83:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Events/POST.json\";}i:9;a:3:{s:3:\"rel\";s:16:\"delete_permanent\";s:4:\"href\";s:116:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/actions/delete-permanent\";s:6:\"method\";s:4:\"POST\";}}}}', 'no'),
(307, '_transient_timeout_yikes_eme_member_2bacfc213e_47fb2533edd010521ab7c35941a1416b', '1579115532', 'no'),
(308, '_transient_yikes_eme_member_2bacfc213e_47fb2533edd010521ab7c35941a1416b', 'a:23:{s:2:\"id\";s:32:\"47fb2533edd010521ab7c35941a1416b\";s:13:\"email_address\";s:21:\"richardofay@gmail.com\";s:15:\"unique_email_id\";s:10:\"1e88a65506\";s:6:\"web_id\";i:332052193;s:10:\"email_type\";s:4:\"html\";s:6:\"status\";s:10:\"subscribed\";s:12:\"merge_fields\";a:5:{s:5:\"FNAME\";s:7:\"Messiah\";s:5:\"LNAME\";s:7:\"Faykusa\";s:7:\"ADDRESS\";a:6:{s:5:\"addr1\";s:0:\"\";s:5:\"addr2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:7:\"country\";s:2:\"US\";}s:5:\"PHONE\";s:0:\"\";s:8:\"BIRTHDAY\";s:0:\"\";}s:5:\"stats\";a:2:{s:13:\"avg_open_rate\";i:0;s:14:\"avg_click_rate\";i:0;}s:9:\"ip_signup\";s:0:\"\";s:16:\"timestamp_signup\";s:0:\"\";s:6:\"ip_opt\";s:14:\"114.125.124.51\";s:13:\"timestamp_opt\";s:25:\"2020-01-15T17:32:37+00:00\";s:13:\"member_rating\";i:2;s:12:\"last_changed\";s:25:\"2020-01-15T17:32:37+00:00\";s:8:\"language\";s:0:\"\";s:3:\"vip\";b:0;s:12:\"email_client\";s:0:\"\";s:8:\"location\";a:6:{s:8:\"latitude\";i:0;s:9:\"longitude\";i:0;s:6:\"gmtoff\";i:0;s:6:\"dstoff\";i:0;s:12:\"country_code\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}s:6:\"source\";s:9:\"Admin Add\";s:10:\"tags_count\";i:0;s:4:\"tags\";a:0:{}s:7:\"list_id\";s:10:\"2bacfc213e\";s:6:\"_links\";a:10:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:58:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:90:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/CollectionResponse.json\";s:6:\"schema\";s:75:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Members.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\";s:6:\"schema\";s:77:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/PATCH.json\";}i:3;a:5:{s:3:\"rel\";s:6:\"upsert\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:3:\"PUT\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\";s:6:\"schema\";s:75:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/PUT.json\";}i:4;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:6:\"DELETE\";}i:5;a:4:{s:3:\"rel\";s:8:\"activity\";s:4:\"href\";s:100:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/activity\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:89:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Activity/Response.json\";}i:6;a:4:{s:3:\"rel\";s:5:\"goals\";s:4:\"href\";s:97:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/goals\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:86:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Goals/Response.json\";}i:7;a:4:{s:3:\"rel\";s:5:\"notes\";s:4:\"href\";s:97:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/notes\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:96:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Notes/CollectionResponse.json\";}i:8;a:4:{s:3:\"rel\";s:6:\"events\";s:4:\"href\";s:98:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/events\";s:6:\"method\";s:4:\"POST\";s:12:\"targetSchema\";s:83:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Events/POST.json\";}i:9;a:3:{s:3:\"rel\";s:16:\"delete_permanent\";s:4:\"href\";s:116:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/actions/delete-permanent\";s:6:\"method\";s:4:\"POST\";}}}', 'no'),
(309, '_transient_timeout_yikes_eme_lists_lists.id,total_items', '1579115532', 'no'),
(310, '_transient_yikes_eme_lists_lists.id,total_items', 'a:1:{s:10:\"2bacfc213e\";a:1:{s:2:\"id\";s:10:\"2bacfc213e\";}}', 'no'),
(311, '_transient_timeout_yikesinc_eme_list_ids', '1579115532', 'no'),
(312, '_transient_yikesinc_eme_list_ids', 'a:1:{i:0;s:10:\"2bacfc213e\";}', 'no'),
(313, '_transient_timeout_yikes_eme_member_lists_47fb2533edd010521ab7c35941a1416b', '1579115532', 'no'),
(314, '_transient_yikes_eme_member_lists_47fb2533edd010521ab7c35941a1416b', 'a:1:{s:10:\"2bacfc213e\";a:23:{s:2:\"id\";s:32:\"47fb2533edd010521ab7c35941a1416b\";s:13:\"email_address\";s:21:\"richardofay@gmail.com\";s:15:\"unique_email_id\";s:10:\"1e88a65506\";s:6:\"web_id\";i:332052193;s:10:\"email_type\";s:4:\"html\";s:6:\"status\";s:10:\"subscribed\";s:12:\"merge_fields\";a:5:{s:5:\"FNAME\";s:7:\"Messiah\";s:5:\"LNAME\";s:7:\"Faykusa\";s:7:\"ADDRESS\";a:6:{s:5:\"addr1\";s:0:\"\";s:5:\"addr2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:0:\"\";s:3:\"zip\";s:0:\"\";s:7:\"country\";s:2:\"US\";}s:5:\"PHONE\";s:0:\"\";s:8:\"BIRTHDAY\";s:0:\"\";}s:5:\"stats\";a:2:{s:13:\"avg_open_rate\";i:0;s:14:\"avg_click_rate\";i:0;}s:9:\"ip_signup\";s:0:\"\";s:16:\"timestamp_signup\";s:0:\"\";s:6:\"ip_opt\";s:14:\"114.125.124.51\";s:13:\"timestamp_opt\";s:25:\"2020-01-15T17:32:37+00:00\";s:13:\"member_rating\";i:2;s:12:\"last_changed\";s:25:\"2020-01-15T17:32:37+00:00\";s:8:\"language\";s:0:\"\";s:3:\"vip\";b:0;s:12:\"email_client\";s:0:\"\";s:8:\"location\";a:6:{s:8:\"latitude\";i:0;s:9:\"longitude\";i:0;s:6:\"gmtoff\";i:0;s:6:\"dstoff\";i:0;s:12:\"country_code\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}s:6:\"source\";s:9:\"Admin Add\";s:10:\"tags_count\";i:0;s:4:\"tags\";a:0:{}s:7:\"list_id\";s:10:\"2bacfc213e\";s:6:\"_links\";a:10:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:58:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:90:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/CollectionResponse.json\";s:6:\"schema\";s:75:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Members.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\";s:6:\"schema\";s:77:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/PATCH.json\";}i:3;a:5:{s:3:\"rel\";s:6:\"upsert\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:3:\"PUT\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Response.json\";s:6:\"schema\";s:75:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/PUT.json\";}i:4;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:91:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b\";s:6:\"method\";s:6:\"DELETE\";}i:5;a:4:{s:3:\"rel\";s:8:\"activity\";s:4:\"href\";s:100:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/activity\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:89:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Activity/Response.json\";}i:6;a:4:{s:3:\"rel\";s:5:\"goals\";s:4:\"href\";s:97:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/goals\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:86:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Goals/Response.json\";}i:7;a:4:{s:3:\"rel\";s:5:\"notes\";s:4:\"href\";s:97:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/notes\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:96:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Notes/CollectionResponse.json\";}i:8;a:4:{s:3:\"rel\";s:6:\"events\";s:4:\"href\";s:98:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/events\";s:6:\"method\";s:4:\"POST\";s:12:\"targetSchema\";s:83:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/Events/POST.json\";}i:9;a:3:{s:3:\"rel\";s:16:\"delete_permanent\";s:4:\"href\";s:116:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members/47fb2533edd010521ab7c35941a1416b/actions/delete-permanent\";s:6:\"method\";s:4:\"POST\";}}}}', 'no'),
(318, '_transient_timeout_dash_v2_be061a787773cc7f8c0b12037a967a37', '1579196915', 'no'),
(319, '_transient_dash_v2_be061a787773cc7f8c0b12037a967a37', '<div class=\"rss-widget\"><p><strong>Masalah RSS:</strong> WP HTTP Error: URL yang sah tidak diberikan.</p></div><div class=\"rss-widget\"><p><strong>Masalah RSS:</strong> WP HTTP Error: URL yang sah tidak diberikan.</p></div>', 'no'),
(321, '_transient_timeout_yikes_eme_list_2bacfc213e_stats.member_count', '1579192855', 'no'),
(322, '_transient_yikes_eme_list_2bacfc213e_stats.member_count', 'a:22:{s:2:\"id\";s:10:\"2bacfc213e\";s:6:\"web_id\";i:354929;s:4:\"name\";s:8:\"Timedoor\";s:7:\"contact\";a:8:{s:7:\"company\";s:8:\"Timedoor\";s:8:\"address1\";s:19:\"Dreaming Land D3/16\";s:8:\"address2\";s:0:\"\";s:4:\"city\";s:8:\"Surabaya\";s:5:\"state\";s:0:\"\";s:3:\"zip\";s:5:\"60161\";s:7:\"country\";s:2:\"ID\";s:5:\"phone\";s:0:\"\";}s:19:\"permission_reminder\";s:66:\"You are receiving this email because you opted in via our website.\";s:15:\"use_archive_bar\";b:1;s:17:\"campaign_defaults\";a:4:{s:9:\"from_name\";s:7:\"Messiah\";s:10:\"from_email\";s:21:\"richardofay@gmail.com\";s:7:\"subject\";s:0:\"\";s:8:\"language\";s:2:\"en\";}s:19:\"notify_on_subscribe\";s:0:\"\";s:21:\"notify_on_unsubscribe\";s:0:\"\";s:12:\"date_created\";s:25:\"2020-01-15T17:32:37+00:00\";s:11:\"list_rating\";i:0;s:17:\"email_type_option\";b:0;s:19:\"subscribe_url_short\";s:24:\"http://eepurl.com/gPZh5f\";s:18:\"subscribe_url_long\";s:85:\"https://gmail.us4.list-manage.com/subscribe?u=1e9138423249b3d0c82192830&id=2bacfc213e\";s:14:\"beamer_address\";s:47:\"us4-1e42547d35-37462ea841@inbound.mailchimp.com\";s:10:\"visibility\";s:3:\"pub\";s:12:\"double_optin\";b:0;s:11:\"has_welcome\";b:0;s:21:\"marketing_permissions\";b:0;s:7:\"modules\";a:0:{}s:5:\"stats\";a:16:{s:12:\"member_count\";i:1;s:17:\"unsubscribe_count\";i:0;s:13:\"cleaned_count\";i:0;s:23:\"member_count_since_send\";i:1;s:28:\"unsubscribe_count_since_send\";i:0;s:24:\"cleaned_count_since_send\";i:0;s:14:\"campaign_count\";i:0;s:18:\"campaign_last_sent\";s:0:\"\";s:17:\"merge_field_count\";i:5;s:12:\"avg_sub_rate\";i:0;s:14:\"avg_unsub_rate\";i:0;s:15:\"target_sub_rate\";i:0;s:9:\"open_rate\";i:0;s:10:\"click_rate\";i:0;s:13:\"last_sub_date\";s:25:\"2020-01-15T17:32:37+00:00\";s:15:\"last_unsub_date\";s:0:\"\";}s:6:\"_links\";a:16:{i:0;a:4:{s:3:\"rel\";s:4:\"self\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:72:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Response.json\";}i:1;a:5:{s:3:\"rel\";s:6:\"parent\";s:4:\"href\";s:39:\"https://us4.api.mailchimp.com/3.0/lists\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:82:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/CollectionResponse.json\";s:6:\"schema\";s:67:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists.json\";}i:2;a:5:{s:3:\"rel\";s:6:\"update\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e\";s:6:\"method\";s:5:\"PATCH\";s:12:\"targetSchema\";s:72:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Response.json\";s:6:\"schema\";s:69:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/PATCH.json\";}i:3;a:5:{s:3:\"rel\";s:23:\"batch-sub-unsub-members\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e\";s:6:\"method\";s:4:\"POST\";s:12:\"targetSchema\";s:82:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/BatchPOST-Response.json\";s:6:\"schema\";s:73:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/BatchPOST.json\";}i:4;a:3:{s:3:\"rel\";s:6:\"delete\";s:4:\"href\";s:50:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e\";s:6:\"method\";s:6:\"DELETE\";}i:5;a:5:{s:3:\"rel\";s:13:\"abuse-reports\";s:4:\"href\";s:64:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/abuse-reports\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:88:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Abuse/CollectionResponse.json\";s:6:\"schema\";s:73:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Abuse.json\";}i:6;a:4:{s:3:\"rel\";s:8:\"activity\";s:4:\"href\";s:59:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/activity\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:81:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Activity/Response.json\";}i:7;a:4:{s:3:\"rel\";s:7:\"clients\";s:4:\"href\";s:58:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/clients\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:80:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Clients/Response.json\";}i:8;a:5:{s:3:\"rel\";s:14:\"growth-history\";s:4:\"href\";s:65:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/growth-history\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:89:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Growth/CollectionResponse.json\";s:6:\"schema\";s:74:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Growth.json\";}i:9;a:5:{s:3:\"rel\";s:19:\"interest-categories\";s:4:\"href\";s:70:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/interest-categories\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:101:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/InterestCategories/CollectionResponse.json\";s:6:\"schema\";s:86:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/InterestCategories.json\";}i:10;a:5:{s:3:\"rel\";s:7:\"members\";s:4:\"href\";s:58:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/members\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:90:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Members/CollectionResponse.json\";s:6:\"schema\";s:75:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Members.json\";}i:11;a:5:{s:3:\"rel\";s:12:\"merge-fields\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/merge-fields\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/MergeFields/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/MergeFields.json\";}i:12;a:5:{s:3:\"rel\";s:8:\"segments\";s:4:\"href\";s:59:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/segments\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:91:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Segments/CollectionResponse.json\";s:6:\"schema\";s:76:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Segments.json\";}i:13;a:5:{s:3:\"rel\";s:8:\"webhooks\";s:4:\"href\";s:59:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/webhooks\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:91:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Webhooks/CollectionResponse.json\";s:6:\"schema\";s:76:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Webhooks.json\";}i:14;a:5:{s:3:\"rel\";s:12:\"signup-forms\";s:4:\"href\";s:63:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/signup-forms\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:94:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/SignupForms/CollectionResponse.json\";s:6:\"schema\";s:79:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/SignupForms.json\";}i:15;a:5:{s:3:\"rel\";s:9:\"locations\";s:4:\"href\";s:60:\"https://us4.api.mailchimp.com/3.0/lists/2bacfc213e/locations\";s:6:\"method\";s:3:\"GET\";s:12:\"targetSchema\";s:92:\"https://us4.api.mailchimp.com/schema/3.0/Definitions/Lists/Locations/CollectionResponse.json\";s:6:\"schema\";s:77:\"https://us4.api.mailchimp.com/schema/3.0/CollectionLinks/Lists/Locations.json\";}}}', 'no'),
(323, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1579201074', 'no'),
(324, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4657;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3865;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2657;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2537;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1950;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1784;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1767;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1478;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1463;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1458;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1444;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1402;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1380;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1296;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1167;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1159;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1116;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1081;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1080;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:976;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:864;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:861;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:856;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:836;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:774;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:757;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:749;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:745;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:739;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:729;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:710;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:695;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:692;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:689;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:674;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:657;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:642;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:639;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:632;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:624;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:622;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:609;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:581;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:571;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:569;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:566;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:551;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:541;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:539;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:538;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:533;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:527;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:526;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:526;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:516;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:507;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:492;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:491;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:489;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:483;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:482;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:473;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:470;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:462;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:454;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:435;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:434;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:429;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:421;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:421;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:414;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:409;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:407;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:400;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:390;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:389;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:388;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:383;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:376;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:373;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:373;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:373;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:367;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:364;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:357;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:353;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:350;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:343;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:335;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:333;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:330;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:329;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:323;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:321;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:320;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:320;}}', 'no'),
(326, '_site_transient_timeout_theme_roots', '1579192236', 'no'),
(327, '_site_transient_theme_roots', 'a:1:{s:8:\"timedoor\";s:7:\"/themes\";}', 'no'),
(328, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"id_ID\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1579190337;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(329, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1579190342;s:7:\"checked\";a:8:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:33:\"acf-theme-code/acf_theme_code.php\";s:5:\"1.4.1\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.14\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.2\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.0\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.4\";s:71:\"yikes-inc-easy-mailchimp-extender/yikes-inc-easy-mailchimp-extender.php\";s:5:\"6.6.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"acf-theme-code/acf_theme_code.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/acf-theme-code\";s:4:\"slug\";s:14:\"acf-theme-code\";s:6:\"plugin\";s:33:\"acf-theme-code/acf_theme_code.php\";s:11:\"new_version\";s:5:\"1.4.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/acf-theme-code/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/acf-theme-code.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/acf-theme-code/assets/icon-256x256.png?rev=1458037\";s:2:\"1x\";s:67:\"https://ps.w.org/acf-theme-code/assets/icon-128x128.png?rev=1458037\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/acf-theme-code/assets/banner-1544x500.png?rev=1458042\";s:2:\"1x\";s:69:\"https://ps.w.org/acf-theme-code/assets/banner-772x250.png?rev=1458042\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.14\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2202552\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2202552\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2202552\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2202552\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:71:\"yikes-inc-easy-mailchimp-extender/yikes-inc-easy-mailchimp-extender.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:47:\"w.org/plugins/yikes-inc-easy-mailchimp-extender\";s:4:\"slug\";s:33:\"yikes-inc-easy-mailchimp-extender\";s:6:\"plugin\";s:71:\"yikes-inc-easy-mailchimp-extender/yikes-inc-easy-mailchimp-extender.php\";s:11:\"new_version\";s:5:\"6.6.2\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/yikes-inc-easy-mailchimp-extender/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/yikes-inc-easy-mailchimp-extender.6.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/yikes-inc-easy-mailchimp-extender/assets/icon-256x256.png?rev=2040824\";s:2:\"1x\";s:86:\"https://ps.w.org/yikes-inc-easy-mailchimp-extender/assets/icon-128x128.png?rev=2040824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/yikes-inc-easy-mailchimp-extender/assets/banner-1544x500.png?rev=2040824\";s:2:\"1x\";s:88:\"https://ps.w.org/yikes-inc-easy-mailchimp-extender/assets/banner-772x250.png?rev=2040824\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(330, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579190342;s:7:\"checked\";a:5:{s:8:\"timedoor\";s:3:\"0.1\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(331, 'ai1wm_secret_key', 'gRLaub0eqaml', 'yes'),
(332, 'ai1wm_updater', 'a:0:{}', 'yes'),
(333, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:302:\"<a href=\"http://localhost/timedoor/wp-content/ai1wm-backups/localhost-timedoor-20200116-160111-267.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-timedoor-20200116-160111-267.wpress\"><span>Unduh localhost</span> <em>Ukuran: 18 MB</em></a>\";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1579110170:1'),
(7, 10, '_edit_lock', '1578934299:1'),
(8, 11, '_edit_lock', '1578934366:1'),
(9, 12, '_edit_lock', '1578934386:1'),
(10, 14, '_edit_last', '1'),
(11, 14, '_edit_lock', '1579148203:1'),
(12, 14, 'title', 'Let\'s Create an Incredible Service Needed around the World'),
(13, 14, '_title', 'field_5e1c9d2bea78d'),
(14, 14, 'content', 'PT. Timedoor Indonesia adalah salah satu perusahaan IT terbesar di Denpasar, Bali. CEO kami, Yutaka Tokunaga, tumbuh dan sekolah di Jepang, yang dimana terkenal dengan orang-orang pekerja keras yang membuat produk dan layanan kualitas terbaik. Yutaka Tokunaga adalah bisnisman yang profesional dengan pengalaman bisnis internet yang sangat luas dan bahagia menggunakan kemampuannya untuk membantu klien dari Timedoor yang berada di Indonesia.Di Timedoor, layanan website dan games smartphone kami adalah kualitas international, sangat sulit ditemukan di Indonesia sekarang. Kami menciptakan layanan terbaik yang dibutuhkan di seluruh dunia dan mengarahkan reputasi kami sebagai perusahaan Internet yang ada di Bali.'),
(15, 14, '_content', 'field_5e1c9dbeea78e'),
(16, 14, 'picture', '39'),
(17, 14, '_picture', 'field_5e1c9dd8ea78f'),
(18, 16, 'title', 'tes'),
(19, 16, '_title', 'field_5e1c9d2bea78d'),
(20, 16, 'content', 'huhu'),
(21, 16, '_content', 'field_5e1c9dbeea78e'),
(22, 16, 'picture', ''),
(23, 16, '_picture', 'field_5e1c9dd8ea78f'),
(24, 17, 'title', 'tes'),
(25, 17, '_title', 'field_5e1c9d2bea78d'),
(26, 17, 'content', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(27, 17, '_content', 'field_5e1c9dbeea78e'),
(28, 17, 'picture', ''),
(29, 17, '_picture', 'field_5e1c9dd8ea78f'),
(30, 18, 'title', 'Let\'s Create an Incredible Service Needed around the World'),
(31, 18, '_title', 'field_5e1c9d2bea78d'),
(32, 18, 'content', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(33, 18, '_content', 'field_5e1c9dbeea78e'),
(34, 18, 'picture', ''),
(35, 18, '_picture', 'field_5e1c9dd8ea78f'),
(36, 19, 'title', 'Let\'s Create an Incredible Service Needed around the World'),
(37, 19, '_title', 'field_5e1c9d2bea78d'),
(38, 19, 'content', 'PT. Timedoor Indonesia adalah salah satu perusahaan IT terbesar di Denpasar, Bali. CEO kami, Yutaka Tokunaga, tumbuh dan sekolah di Jepang, yang dimana terkenal dengan orang-orang pekerja keras yang membuat produk dan layanan kualitas terbaik. Yutaka Tokunaga adalah bisnisman yang profesional dengan pengalaman bisnis internet yang sangat luas dan bahagia menggunakan kemampuannya untuk membantu klien dari Timedoor yang berada di Indonesia.Di Timedoor, layanan website dan games smartphone kami adalah kualitas international, sangat sulit ditemukan di Indonesia sekarang. Kami menciptakan layanan terbaik yang dibutuhkan di seluruh dunia dan mengarahkan reputasi kami sebagai perusahaan Internet yang ada di Bali.'),
(39, 19, '_content', 'field_5e1c9dbeea78e'),
(40, 19, 'picture', ''),
(41, 19, '_picture', 'field_5e1c9dd8ea78f'),
(44, 21, 'title', 'Let\'s Create an Incredible Service Needed around the World'),
(45, 21, '_title', 'field_5e1c9d2bea78d'),
(46, 21, 'content', 'PT. Timedoor Indonesia adalah salah satu perusahaan IT terbesar di Denpasar, Bali. CEO kami, Yutaka Tokunaga, tumbuh dan sekolah di Jepang, yang dimana terkenal dengan orang-orang pekerja keras yang membuat produk dan layanan kualitas terbaik. Yutaka Tokunaga adalah bisnisman yang profesional dengan pengalaman bisnis internet yang sangat luas dan bahagia menggunakan kemampuannya untuk membantu klien dari Timedoor yang berada di Indonesia.Di Timedoor, layanan website dan games smartphone kami adalah kualitas international, sangat sulit ditemukan di Indonesia sekarang. Kami menciptakan layanan terbaik yang dibutuhkan di seluruh dunia dan mengarahkan reputasi kami sebagai perusahaan Internet yang ada di Bali.'),
(47, 21, '_content', 'field_5e1c9dbeea78e'),
(48, 21, 'picture', '20'),
(49, 21, '_picture', 'field_5e1c9dd8ea78f'),
(52, 23, 'title', 'Let\'s Create an Incredible Service Needed around the World'),
(53, 23, '_title', 'field_5e1c9d2bea78d'),
(54, 23, 'content', 'PT. Timedoor Indonesia adalah salah satu perusahaan IT terbesar di Denpasar, Bali. CEO kami, Yutaka Tokunaga, tumbuh dan sekolah di Jepang, yang dimana terkenal dengan orang-orang pekerja keras yang membuat produk dan layanan kualitas terbaik. Yutaka Tokunaga adalah bisnisman yang profesional dengan pengalaman bisnis internet yang sangat luas dan bahagia menggunakan kemampuannya untuk membantu klien dari Timedoor yang berada di Indonesia.Di Timedoor, layanan website dan games smartphone kami adalah kualitas international, sangat sulit ditemukan di Indonesia sekarang. Kami menciptakan layanan terbaik yang dibutuhkan di seluruh dunia dan mengarahkan reputasi kami sebagai perusahaan Internet yang ada di Bali.'),
(55, 23, '_content', 'field_5e1c9dbeea78e'),
(56, 23, 'picture', '22'),
(57, 23, '_picture', 'field_5e1c9dd8ea78f'),
(58, 24, 'title', 'Let\'s Create an Incredible Service Needed around the World'),
(59, 24, '_title', 'field_5e1c9d2bea78d'),
(60, 24, 'content', 'PT. Timedoor Indonesia adalah salah satu perusahaan IT terbesar di Denpasar, Bali. CEO kami, Yutaka Tokunaga, tumbuh dan sekolah di Jepang, yang dimana terkenal dengan orang-orang pekerja keras yang membuat produk dan layanan kualitas terbaik. Yutaka Tokunaga adalah bisnisman yang profesional dengan pengalaman bisnis internet yang sangat luas dan bahagia menggunakan kemampuannya untuk membantu klien dari Timedoor yang berada di Indonesia.Di Timedoor, layanan website dan games smartphone kami adalah kualitas international, sangat sulit ditemukan di Indonesia sekarang. Kami menciptakan layanan terbaik yang dibutuhkan di seluruh dunia dan mengarahkan reputasi kami sebagai perusahaan Internet yang ada di Bali.'),
(61, 24, '_content', 'field_5e1c9dbeea78e'),
(62, 24, 'picture', '20'),
(63, 24, '_picture', 'field_5e1c9dd8ea78f'),
(64, 28, '_edit_lock', '1579116243:1'),
(65, 28, '_edit_last', '1'),
(66, 38, '_edit_last', '1'),
(67, 38, '_edit_lock', '1579013187:1'),
(68, 38, 'title_portofolio', 'Timedoor Company Profile Website Development'),
(69, 38, '_title_portofolio', 'field_5e1d2cc3942f9'),
(70, 38, 'content_portofolio', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(71, 38, '_content_portofolio', 'field_5e1d2cc3946e2'),
(72, 38, 'picture_portofolio', '46'),
(73, 38, '_picture_portofolio', 'field_5e1d2cc394ac2'),
(74, 39, '_wp_attached_file', '2020/01/about.jpg'),
(75, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:428;s:4:\"file\";s:17:\"2020/01/about.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"about-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"about-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 14, '_wp_page_template', 'default'),
(77, 14, 'call_portfolio', '38'),
(78, 14, '_call_portfolio', 'field_5e1d2e20877a0'),
(79, 40, 'title', 'Let\'s Create an Incredible Service Needed around the World'),
(80, 40, '_title', 'field_5e1c9d2bea78d'),
(81, 40, 'content', 'PT. Timedoor Indonesia adalah salah satu perusahaan IT terbesar di Denpasar, Bali. CEO kami, Yutaka Tokunaga, tumbuh dan sekolah di Jepang, yang dimana terkenal dengan orang-orang pekerja keras yang membuat produk dan layanan kualitas terbaik. Yutaka Tokunaga adalah bisnisman yang profesional dengan pengalaman bisnis internet yang sangat luas dan bahagia menggunakan kemampuannya untuk membantu klien dari Timedoor yang berada di Indonesia.Di Timedoor, layanan website dan games smartphone kami adalah kualitas international, sangat sulit ditemukan di Indonesia sekarang. Kami menciptakan layanan terbaik yang dibutuhkan di seluruh dunia dan mengarahkan reputasi kami sebagai perusahaan Internet yang ada di Bali.'),
(82, 40, '_content', 'field_5e1c9dbeea78e'),
(83, 40, 'picture', '39'),
(84, 40, '_picture', 'field_5e1c9dd8ea78f'),
(85, 40, 'call_portfolio', '38'),
(86, 40, '_call_portfolio', 'field_5e1d2e20877a0'),
(87, 42, '_wp_attached_file', '2020/01/img-6.jpg'),
(88, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:451;s:4:\"file\";s:17:\"2020/01/img-6.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-6-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 43, '_wp_attached_file', '2020/01/img-3.jpg'),
(90, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:451;s:4:\"file\";s:17:\"2020/01/img-3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-3-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 44, '_wp_attached_file', '2020/01/img-4.jpg'),
(92, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:451;s:4:\"file\";s:17:\"2020/01/img-4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-4-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 45, '_wp_attached_file', '2020/01/img-5.jpg'),
(94, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:451;s:4:\"file\";s:17:\"2020/01/img-5.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-5-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 46, '_wp_attached_file', '2020/01/img-1.jpg'),
(96, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:451;s:4:\"file\";s:17:\"2020/01/img-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-1-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 47, '_wp_attached_file', '2020/01/img-2.jpg'),
(98, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:451;s:4:\"file\";s:17:\"2020/01/img-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"img-2-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"img-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 48, 'title_portofolio', 'Tora Devasya Website Development'),
(100, 48, '_title_portofolio', 'field_5e1d2cc3942f9'),
(101, 48, 'content_portofolio', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(102, 48, '_content_portofolio', 'field_5e1d2cc3946e2'),
(103, 48, 'picture_portofolio', '44'),
(104, 48, '_picture_portofolio', 'field_5e1d2cc394ac2'),
(105, 48, '_dp_original', '38'),
(106, 49, 'title_portofolio', 'Timedoor Company Profile Website Development'),
(107, 49, '_title_portofolio', 'field_5e1d2cc3942f9'),
(108, 49, 'content_portofolio', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(109, 49, '_content_portofolio', 'field_5e1d2cc3946e2'),
(110, 49, 'picture_portofolio', '46'),
(111, 49, '_picture_portofolio', 'field_5e1d2cc394ac2'),
(113, 49, '_dp_original', '48'),
(114, 50, 'title_portofolio', 'Tora Devasya Website Development'),
(115, 50, '_title_portofolio', 'field_5e1d2cc3942f9'),
(116, 50, 'content_portofolio', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(117, 50, '_content_portofolio', 'field_5e1d2cc3946e2'),
(118, 50, 'picture_portofolio', '45'),
(119, 50, '_picture_portofolio', 'field_5e1d2cc394ac2'),
(121, 50, '_dp_original', '49'),
(122, 51, 'title_portofolio', 'Timedoor Company Profile Website Development'),
(123, 51, '_title_portofolio', 'field_5e1d2cc3942f9'),
(124, 51, 'content_portofolio', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(125, 51, '_content_portofolio', 'field_5e1d2cc3946e2'),
(126, 51, 'picture_portofolio', '46'),
(127, 51, '_picture_portofolio', 'field_5e1d2cc394ac2'),
(129, 51, '_dp_original', '50'),
(130, 52, 'title_portofolio', 'Tora Devasya Website Development'),
(131, 52, '_title_portofolio', 'field_5e1d2cc3942f9'),
(132, 52, 'content_portofolio', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(133, 52, '_content_portofolio', 'field_5e1d2cc3946e2'),
(134, 52, 'picture_portofolio', '47'),
(135, 52, '_picture_portofolio', 'field_5e1d2cc394ac2'),
(137, 52, '_dp_original', '51'),
(138, 48, '_edit_last', '1'),
(139, 48, '_edit_lock', '1579015133:1'),
(140, 49, '_edit_last', '1'),
(141, 49, '_edit_lock', '1579013188:1'),
(142, 50, '_edit_lock', '1579015132:1'),
(143, 50, '_edit_last', '1'),
(144, 51, '_edit_last', '1'),
(145, 51, '_edit_lock', '1579013188:1'),
(146, 52, '_edit_last', '1'),
(147, 52, '_edit_lock', '1579148249:1'),
(148, 48, '_wp_old_slug', 'timedoor-company-profile-website-development'),
(149, 50, '_wp_old_slug', 'timedoor-company-profile-website-development-3'),
(150, 52, '_wp_old_slug', 'timedoor-company-profile-website-development-5'),
(151, 1, '_edit_lock', '1579015019:1'),
(152, 55, '_edit_lock', '1579014809:1'),
(153, 55, '_edit_last', '1'),
(154, 1, '_edit_last', '1'),
(157, 1, 'title_blog', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama'),
(158, 1, '_title_blog', 'field_5e1dd83d4c4ad'),
(159, 1, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(160, 1, '_content_blog', 'field_5e1dd83d4c8fa'),
(161, 1, 'picture_blog', '45'),
(162, 1, '_picture_blog', 'field_5e1dd83d4cc75'),
(163, 59, 'title_blog', 'Halo dunia!'),
(164, 59, '_title_blog', 'field_5e1dd83d4c4ad'),
(165, 59, 'content_blog', 'Halo dunia!'),
(166, 59, '_content_blog', 'field_5e1dd83d4c8fa'),
(167, 59, 'picture_blog', '45'),
(168, 59, '_picture_blog', 'field_5e1dd83d4cc75'),
(171, 60, 'title_blog', 'Halo dunia!'),
(172, 60, '_title_blog', 'field_5e1dd83d4c4ad'),
(173, 60, 'content_blog', 'Halo dunia!'),
(174, 60, '_content_blog', 'field_5e1dd83d4c8fa'),
(175, 60, 'picture_blog', '45'),
(176, 60, '_picture_blog', 'field_5e1dd83d4cc75'),
(179, 61, 'title_blog', 'Halo dunia!'),
(180, 61, '_title_blog', 'field_5e1dd83d4c4ad'),
(181, 61, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(182, 61, '_content_blog', 'field_5e1dd83d4c8fa'),
(183, 61, 'picture_blog', '45'),
(184, 61, '_picture_blog', 'field_5e1dd83d4cc75'),
(187, 62, 'title_blog', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama'),
(188, 62, '_title_blog', 'field_5e1dd83d4c4ad'),
(189, 62, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(190, 62, '_content_blog', 'field_5e1dd83d4c8fa'),
(191, 62, 'picture_blog', '45'),
(192, 62, '_picture_blog', 'field_5e1dd83d4cc75'),
(193, 63, 'title_blog', 'Pentingnya Membuat Website yang Mobile Friendly'),
(194, 63, '_title_blog', 'field_5e1dd83d4c4ad'),
(195, 63, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(196, 63, '_content_blog', 'field_5e1dd83d4c8fa'),
(197, 63, 'picture_blog', '44'),
(198, 63, '_picture_blog', 'field_5e1dd83d4cc75'),
(199, 63, '_dp_original', '1'),
(200, 64, 'title_blog', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama'),
(201, 64, '_title_blog', 'field_5e1dd83d4c4ad'),
(202, 64, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(203, 64, '_content_blog', 'field_5e1dd83d4c8fa'),
(204, 64, 'picture_blog', '45'),
(205, 64, '_picture_blog', 'field_5e1dd83d4cc75'),
(207, 64, '_dp_original', '63'),
(208, 65, 'title_blog', 'Pentingnya Membuat Website yang Mobile Friendly'),
(209, 65, '_title_blog', 'field_5e1dd83d4c4ad'),
(210, 65, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(211, 65, '_content_blog', 'field_5e1dd83d4c8fa'),
(212, 65, 'picture_blog', '42'),
(213, 65, '_picture_blog', 'field_5e1dd83d4cc75'),
(215, 65, '_dp_original', '64'),
(216, 66, 'title_blog', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama'),
(217, 66, '_title_blog', 'field_5e1dd83d4c4ad'),
(218, 66, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(219, 66, '_content_blog', 'field_5e1dd83d4c8fa'),
(220, 66, 'picture_blog', '45'),
(221, 66, '_picture_blog', 'field_5e1dd83d4cc75'),
(223, 66, '_dp_original', '63'),
(224, 67, 'title_blog', 'Pentingnya Membuat Website yang Mobile Friendly'),
(225, 67, '_title_blog', 'field_5e1dd83d4c4ad'),
(226, 67, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(227, 67, '_content_blog', 'field_5e1dd83d4c8fa'),
(228, 67, 'picture_blog', '46'),
(229, 67, '_picture_blog', 'field_5e1dd83d4cc75'),
(231, 67, '_dp_original', '63'),
(232, 63, '_edit_last', '1'),
(235, 63, '_edit_lock', '1579018028:1'),
(236, 65, '_edit_last', '1'),
(239, 65, '_edit_lock', '1579018027:1'),
(240, 67, '_edit_last', '1'),
(243, 67, '_edit_lock', '1579018027:1'),
(244, 66, '_edit_last', '1'),
(247, 66, '_edit_lock', '1579015227:1'),
(248, 64, '_edit_last', '1'),
(251, 64, '_edit_lock', '1579015233:1'),
(254, 74, 'title_blog', 'Pentingnya Membuat Website yang Mobile Friendly'),
(255, 74, '_title_blog', 'field_5e1dd83d4c4ad'),
(256, 74, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(257, 74, '_content_blog', 'field_5e1dd83d4c8fa'),
(258, 74, 'picture_blog', '44'),
(259, 74, '_picture_blog', 'field_5e1dd83d4cc75'),
(262, 75, 'title_blog', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama'),
(263, 75, '_title_blog', 'field_5e1dd83d4c4ad'),
(264, 75, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(265, 75, '_content_blog', 'field_5e1dd83d4c8fa'),
(266, 75, 'picture_blog', '42'),
(267, 75, '_picture_blog', 'field_5e1dd83d4cc75'),
(270, 76, 'title_blog', 'Pentingnya Membuat Website yang Mobile Friendly'),
(271, 76, '_title_blog', 'field_5e1dd83d4c4ad'),
(272, 76, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(273, 76, '_content_blog', 'field_5e1dd83d4c8fa'),
(274, 76, 'picture_blog', '46'),
(275, 76, '_picture_blog', 'field_5e1dd83d4cc75'),
(278, 77, 'title_blog', 'Pentingnya Membuat Website yang Mobile Friendly'),
(279, 77, '_title_blog', 'field_5e1dd83d4c4ad'),
(280, 77, 'content_blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(281, 77, '_content_blog', 'field_5e1dd83d4c8fa'),
(282, 77, 'picture_blog', '42'),
(283, 77, '_picture_blog', 'field_5e1dd83d4cc75'),
(284, 78, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(285, 78, '_mail', 'a:8:{s:7:\"subject\";s:25:\"Timedoor \"[your-subject]\"\";s:6:\"sender\";s:32:\"Timedoor <richardofay@gmail.com>\";s:4:\"body\";s:172:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Timedoor (http://localhost/timedoor)\";s:9:\"recipient\";s:21:\"richardofay@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(286, 78, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Timedoor \"[your-subject]\"\";s:6:\"sender\";s:32:\"Timedoor <richardofay@gmail.com>\";s:4:\"body\";s:114:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Timedoor (http://localhost/timedoor)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:31:\"Reply-To: richardofay@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(287, 78, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(288, 78, '_additional_settings', NULL),
(289, 78, '_locale', 'id_ID'),
(290, 79, '_mc4wp_settings', 'a:1:{s:5:\"lists\";a:1:{s:10:\"2bacfc213e\";s:10:\"2bacfc213e\";}}'),
(291, 14, 'mailchimp', '[mc4wp_form id=\"79\"]'),
(292, 14, '_mailchimp', 'field_5e1f4ef9389a9'),
(293, 82, 'title', 'Let\'s Create an Incredible Service Needed around the World'),
(294, 82, '_title', 'field_5e1c9d2bea78d'),
(295, 82, 'content', 'PT. Timedoor Indonesia adalah salah satu perusahaan IT terbesar di Denpasar, Bali. CEO kami, Yutaka Tokunaga, tumbuh dan sekolah di Jepang, yang dimana terkenal dengan orang-orang pekerja keras yang membuat produk dan layanan kualitas terbaik. Yutaka Tokunaga adalah bisnisman yang profesional dengan pengalaman bisnis internet yang sangat luas dan bahagia menggunakan kemampuannya untuk membantu klien dari Timedoor yang berada di Indonesia.Di Timedoor, layanan website dan games smartphone kami adalah kualitas international, sangat sulit ditemukan di Indonesia sekarang. Kami menciptakan layanan terbaik yang dibutuhkan di seluruh dunia dan mengarahkan reputasi kami sebagai perusahaan Internet yang ada di Bali.'),
(296, 82, '_content', 'field_5e1c9dbeea78e'),
(297, 82, 'picture', '39'),
(298, 82, '_picture', 'field_5e1c9dd8ea78f'),
(299, 82, 'call_portfolio', '38'),
(300, 82, '_call_portfolio', 'field_5e1d2e20877a0'),
(301, 82, 'mailchimp', '[mc4wp_form id=\"79\"]'),
(302, 82, '_mailchimp', 'field_5e1f4ef9389a9'),
(303, 83, '_edit_last', '1'),
(304, 83, '_edit_lock', '1579116537:1'),
(305, 86, '_edit_last', '1'),
(306, 86, '_edit_lock', '1579116011:1'),
(307, 87, '_wp_attached_file', '2020/01/main.jpg'),
(308, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:768;s:4:\"file\";s:16:\"2020/01/main.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"main-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"main-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"main-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"main-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 86, 'image', '87'),
(310, 86, '_image', 'field_5e1f61d24512c'),
(311, 86, 'content_slider', 'web design, mobile apps, online marketing in bali & jakarta'),
(312, 86, '_content_slider', 'field_5e1f61ee4512d'),
(313, 86, 'image_slider', '87'),
(314, 86, '_image_slider', 'field_5e1f61d24512c'),
(315, 88, '_form', '<div class=\"row\">\n    <div class=\"col-md-12\">\n        [text* text-334 class:name_contact placeholder \"Name\"]\n    </div>\n    <div class=\"col-md-6\">\n        [email* email-742 class:email_contact placeholder \"Email\"]\n    </div>\n    <div class=\"col-md-6\">\n        [tel* tel-726 class:phone_contact placeholder \"Phone\"]\n    </div>\n    <div class=\"col-md-12\">\n        [textarea* textarea-745 class:message_contact placeholder \"Message\"]\n    </div>\n    <div class=\"col-md-4\">\n        [submit class:send_contact \"Send Message\"]\n    </div>\n</div>'),
(316, 88, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"Timedoor \"[your-subject]\"\";s:6:\"sender\";s:32:\"Timedoor <richardofay@gmail.com>\";s:9:\"recipient\";s:21:\"richardofay@gmail.com\";s:4:\"body\";s:172:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Timedoor (http://localhost/timedoor)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(317, 88, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"Timedoor \"[your-subject]\"\";s:6:\"sender\";s:32:\"Timedoor <richardofay@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:114:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Timedoor (http://localhost/timedoor)\";s:18:\"additional_headers\";s:31:\"Reply-To: richardofay@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(318, 88, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(319, 88, '_additional_settings', ''),
(320, 88, '_locale', 'id_ID');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-13 16:24:11', '2020-01-13 16:24:11', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'publish', 'open', 'open', '', 'halo-dunia', '', '', '2020-01-14 15:16:00', '2020-01-14 15:16:00', '', 0, 'http://localhost/timedoor/?p=1', 0, 'post', '', 1),
(4, 1, '2020-01-13 16:24:44', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-13 16:24:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?p=4', 0, 'post', '', 0),
(6, 1, '2020-01-13 16:44:06', '2020-01-13 16:44:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"14\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5e1c9d19ea792', '', '', '2020-01-15 17:45:06', '2020-01-15 17:45:06', '', 0, 'http://localhost/timedoor/?post_type=acf-field-group&#038;p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2020-01-13 16:44:06', '2020-01-13 16:44:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:15:\"Section 1 Title\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:1:\"0\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5e1c9d2bea78d', '', '', '2020-01-13 17:31:52', '2020-01-13 17:31:52', '', 6, 'http://localhost/timedoor/?post_type=acf-field&#038;p=7', 0, 'acf-field', '', 0),
(8, 1, '2020-01-13 16:44:07', '2020-01-13 16:44:07', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:7:\"Content\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5e1c9dbeea78e', '', '', '2020-01-13 17:34:15', '2020-01-13 17:34:15', '', 6, 'http://localhost/timedoor/?post_type=acf-field&#038;p=8', 1, 'acf-field', '', 0),
(9, 1, '2020-01-13 16:44:07', '2020-01-13 16:44:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:6:\"Gambar\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Picture', 'picture', 'publish', 'closed', 'closed', '', 'field_5e1c9dd8ea78f', '', '', '2020-01-13 17:57:35', '2020-01-13 17:57:35', '', 6, 'http://localhost/timedoor/?post_type=acf-field&#038;p=9', 2, 'acf-field', '', 0),
(10, 1, '2020-01-13 16:51:39', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-13 16:51:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-01-13 16:52:45', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-13 16:52:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-01-13 16:53:05', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-13 16:53:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-01-13 16:54:53', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-13 16:54:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-01-13 17:02:13', '2020-01-13 17:02:13', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-01-15 17:43:16', '2020-01-15 17:43:16', '', 0, 'http://localhost/timedoor/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-01-13 17:02:13', '2020-01-13 17:02:13', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-13 17:02:13', '2020-01-13 17:02:13', '', 14, 'http://localhost/timedoor/2020/01/13/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-01-13 17:06:41', '2020-01-13 17:06:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-13 17:06:41', '2020-01-13 17:06:41', '', 14, 'http://localhost/timedoor/2020/01/13/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-01-13 17:30:55', '2020-01-13 17:30:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-13 17:30:55', '2020-01-13 17:30:55', '', 14, 'http://localhost/timedoor/2020/01/13/14-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-01-13 17:33:11', '2020-01-13 17:33:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-13 17:33:11', '2020-01-13 17:33:11', '', 14, 'http://localhost/timedoor/2020/01/13/14-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-01-13 17:34:08', '2020-01-13 17:34:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-13 17:34:08', '2020-01-13 17:34:08', '', 14, 'http://localhost/timedoor/2020/01/13/14-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-01-13 17:43:11', '2020-01-13 17:43:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-13 17:43:11', '2020-01-13 17:43:11', '', 14, 'http://localhost/timedoor/2020/01/13/14-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-01-13 17:52:15', '2020-01-13 17:52:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-13 17:52:15', '2020-01-13 17:52:15', '', 14, 'http://localhost/timedoor/2020/01/13/14-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-01-13 17:57:32', '2020-01-13 17:57:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-13 17:57:32', '2020-01-13 17:57:32', '', 14, 'http://localhost/timedoor/2020/01/13/14-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-01-13 18:01:35', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-13 18:01:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?post_type=portfolio&p=25', 0, 'portfolio', '', 0),
(26, 1, '2020-01-13 18:01:51', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-13 18:01:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?post_type=acf-field-group&p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2020-01-14 02:51:25', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-14 02:51:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?post_type=acf-field-group&p=27', 0, 'acf-field-group', '', 0),
(28, 1, '2020-01-14 02:51:47', '2020-01-14 02:51:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Portfolio', 'portfolio', 'publish', 'closed', 'closed', '', 'group_5e1d2cc30de4e', '', '', '2020-01-14 14:16:47', '2020-01-14 14:16:47', '', 0, 'http://localhost/timedoor/?p=28', 0, 'acf-field-group', '', 0),
(29, 1, '2020-01-14 02:51:47', '2020-01-14 02:51:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:1:\"0\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title_portofolio', 'publish', 'closed', 'closed', '', 'field_5e1d2cc3942f9', '', '', '2020-01-14 02:52:34', '2020-01-14 02:52:34', '', 28, 'http://localhost/timedoor/?post_type=acf-field&#038;p=29', 0, 'acf-field', '', 0),
(30, 1, '2020-01-14 02:51:47', '2020-01-14 02:51:47', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:7:\"Content\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Content', 'content_portofolio', 'publish', 'closed', 'closed', '', 'field_5e1d2cc3946e2', '', '', '2020-01-14 02:52:34', '2020-01-14 02:52:34', '', 28, 'http://localhost/timedoor/?post_type=acf-field&#038;p=30', 1, 'acf-field', '', 0),
(31, 1, '2020-01-14 02:51:47', '2020-01-14 02:51:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:6:\"Gambar\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Picture', 'picture_portofolio', 'publish', 'closed', 'closed', '', 'field_5e1d2cc394ac2', '', '', '2020-01-14 02:52:34', '2020-01-14 02:52:34', '', 28, 'http://localhost/timedoor/?post_type=acf-field&#038;p=31', 2, 'acf-field', '', 0),
(32, 1, '2020-01-14 02:53:00', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-14 02:53:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?post_type=portfolio&p=32', 0, 'portfolio', '', 0),
(34, 1, '2020-01-14 03:00:38', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-14 03:00:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?post_type=portfolio&p=34', 0, 'portfolio', '', 0),
(35, 1, '2020-01-14 03:01:07', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-14 03:01:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?post_type=portfolio&p=35', 0, 'portfolio', '', 0),
(36, 1, '2020-01-14 03:01:12', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-14 03:01:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?post_type=portfolio&p=36', 0, 'portfolio', '', 0),
(37, 1, '2020-01-14 03:01:39', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-14 03:01:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?post_type=portfolio&p=37', 0, 'portfolio', '', 0),
(38, 1, '2020-01-14 03:02:00', '2020-01-14 03:02:00', '', 'Timedoor Company Profile Website Development', '', 'publish', 'closed', 'closed', '', 'tes', '', '', '2020-01-14 14:48:26', '2020-01-14 14:48:26', '', 0, 'http://localhost/timedoor/?post_type=portfolio&#038;p=38', 0, 'portfolio', '', 0),
(39, 1, '2020-01-14 13:57:58', '2020-01-14 13:57:58', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2020-01-14 13:57:58', '2020-01-14 13:57:58', '', 14, 'http://localhost/timedoor/wp-content/uploads/2020/01/about.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-01-14 13:58:32', '2020-01-14 13:58:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-14 13:58:32', '2020-01-14 13:58:32', '', 14, 'http://localhost/timedoor/2020/01/14/14-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-01-14 14:21:34', '2020-01-14 14:21:34', '', 'Timedoor Company Profile Website Development', '', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2020-01-14 14:21:34', '2020-01-14 14:21:34', '', 38, 'http://localhost/timedoor/2020/01/14/38-autosave-v1/', 0, 'revision', '', 0),
(42, 1, '2020-01-14 14:24:46', '2020-01-14 14:24:46', '', 'img-6', '', 'inherit', 'open', 'closed', '', 'img-6', '', '', '2020-01-14 14:24:46', '2020-01-14 14:24:46', '', 38, 'http://localhost/timedoor/wp-content/uploads/2020/01/img-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-01-14 14:24:47', '2020-01-14 14:24:47', '', 'img-3', '', 'inherit', 'open', 'closed', '', 'img-3', '', '', '2020-01-14 14:24:47', '2020-01-14 14:24:47', '', 38, 'http://localhost/timedoor/wp-content/uploads/2020/01/img-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-01-14 14:24:48', '2020-01-14 14:24:48', '', 'img-4', '', 'inherit', 'open', 'closed', '', 'img-4', '', '', '2020-01-14 14:24:48', '2020-01-14 14:24:48', '', 38, 'http://localhost/timedoor/wp-content/uploads/2020/01/img-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-01-14 14:24:49', '2020-01-14 14:24:49', '', 'img-5', '', 'inherit', 'open', 'closed', '', 'img-5', '', '', '2020-01-14 14:24:49', '2020-01-14 14:24:49', '', 38, 'http://localhost/timedoor/wp-content/uploads/2020/01/img-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-01-14 14:24:50', '2020-01-14 14:24:50', '', 'img-1', '', 'inherit', 'open', 'closed', '', 'img-1', '', '', '2020-01-14 14:24:50', '2020-01-14 14:24:50', '', 38, 'http://localhost/timedoor/wp-content/uploads/2020/01/img-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-01-14 14:24:50', '2020-01-14 14:24:50', '', 'img-2', '', 'inherit', 'open', 'closed', '', 'img-2', '', '', '2020-01-14 14:24:50', '2020-01-14 14:24:50', '', 38, 'http://localhost/timedoor/wp-content/uploads/2020/01/img-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2020-01-14 14:26:38', '2020-01-14 14:26:38', '', 'Tora Devasya Website Development', '', 'publish', 'closed', 'closed', '', 'tora-devasya-website-development', '', '', '2020-01-14 15:21:13', '2020-01-14 15:21:13', '', 0, 'http://localhost/timedoor/?post_type=portfolio&#038;p=48', 0, 'portfolio', '', 0),
(49, 1, '2020-01-14 14:26:42', '2020-01-14 14:26:42', '', 'Timedoor Company Profile Website Development', '', 'publish', 'closed', 'closed', '', 'timedoor-company-profile-website-development-2', '', '', '2020-01-14 14:48:35', '2020-01-14 14:48:35', '', 0, 'http://localhost/timedoor/?post_type=portfolio&#038;p=49', 0, 'portfolio', '', 0),
(50, 1, '2020-01-14 14:26:46', '2020-01-14 14:26:46', '', 'Tora Devasya Website Development', '', 'publish', 'closed', 'closed', '', 'tora-devasya-website-development-2', '', '', '2020-01-14 15:21:04', '2020-01-14 15:21:04', '', 0, 'http://localhost/timedoor/?post_type=portfolio&#038;p=50', 0, 'portfolio', '', 0),
(51, 1, '2020-01-14 14:26:49', '2020-01-14 14:26:49', '', 'Timedoor Company Profile Website Development', '', 'publish', 'closed', 'closed', '', 'timedoor-company-profile-website-development-4', '', '', '2020-01-14 14:48:42', '2020-01-14 14:48:42', '', 0, 'http://localhost/timedoor/?post_type=portfolio&#038;p=51', 0, 'portfolio', '', 0),
(52, 1, '2020-01-14 14:26:52', '2020-01-14 14:26:52', '', 'Tora Devasya Website Development', '', 'publish', 'closed', 'closed', '', 'tora-devasya-website-development-3', '', '', '2020-01-14 14:56:04', '2020-01-14 14:56:04', '', 0, 'http://localhost/timedoor/?post_type=portfolio&#038;p=52', 0, 'portfolio', '', 0),
(53, 1, '2020-01-14 14:45:22', '2020-01-14 14:45:22', '', 'Tora Devasya Website Development', '', 'inherit', 'closed', 'closed', '', '48-autosave-v1', '', '', '2020-01-14 14:45:22', '2020-01-14 14:45:22', '', 48, 'http://localhost/timedoor/2020/01/14/48-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2020-01-14 15:03:12', '0000-00-00 00:00:00', '', 'Konsep Otomatis', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-14 15:03:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/timedoor/?post_type=acf-field-group&p=54', 0, 'acf-field-group', '', 0),
(55, 1, '2020-01-14 15:03:25', '2020-01-14 15:03:25', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:13:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:15:\"page_attributes\";i:9;s:14:\"featured_image\";i:10;s:10:\"categories\";i:11;s:4:\"tags\";i:12;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Blog', 'blog', 'publish', 'closed', 'closed', '', 'group_5e1dd83d08354', '', '', '2020-01-14 15:04:16', '2020-01-14 15:04:16', '', 0, 'http://localhost/timedoor/?p=55', 0, 'acf-field-group', '', 0),
(56, 1, '2020-01-14 15:03:25', '2020-01-14 15:03:25', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:1:\"0\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title_blog', 'publish', 'closed', 'closed', '', 'field_5e1dd83d4c4ad', '', '', '2020-01-14 15:04:16', '2020-01-14 15:04:16', '', 55, 'http://localhost/timedoor/?post_type=acf-field&#038;p=56', 0, 'acf-field', '', 0),
(57, 1, '2020-01-14 15:03:25', '2020-01-14 15:03:25', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:7:\"Content\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Content', 'content_blog', 'publish', 'closed', 'closed', '', 'field_5e1dd83d4c8fa', '', '', '2020-01-14 15:04:16', '2020-01-14 15:04:16', '', 55, 'http://localhost/timedoor/?post_type=acf-field&#038;p=57', 1, 'acf-field', '', 0),
(58, 1, '2020-01-14 15:03:25', '2020-01-14 15:03:25', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:6:\"Gambar\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Picture', 'picture_blog', 'publish', 'closed', 'closed', '', 'field_5e1dd83d4cc75', '', '', '2020-01-14 15:04:16', '2020-01-14 15:04:16', '', 55, 'http://localhost/timedoor/?post_type=acf-field&#038;p=58', 2, 'acf-field', '', 0),
(59, 1, '2020-01-14 15:09:59', '2020-01-14 15:09:59', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Halo dunia!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-01-14 15:09:59', '2020-01-14 15:09:59', '', 1, 'http://localhost/timedoor/2020/01/14/1-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-01-14 15:11:15', '2020-01-14 15:11:15', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-01-14 15:11:15', '2020-01-14 15:11:15', '', 1, 'http://localhost/timedoor/2020/01/14/1-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-01-14 15:11:31', '2020-01-14 15:11:31', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-01-14 15:11:31', '2020-01-14 15:11:31', '', 1, 'http://localhost/timedoor/2020/01/14/1-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-01-14 15:16:00', '2020-01-14 15:16:00', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-01-14 15:16:00', '2020-01-14 15:16:00', '', 1, 'http://localhost/timedoor/2020/01/14/1-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-01-14 15:19:27', '2020-01-14 15:19:27', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Pentingnya Membuat Website yang Mobile Friendly', '', 'publish', 'open', 'open', '', 'seo-atau-google-adwords-cara-pertama-agar-website-anda-di-halaman-pertama', '', '', '2020-01-14 15:22:25', '2020-01-14 15:22:25', '', 0, 'http://localhost/timedoor/?p=63', 0, 'post', '', 0),
(64, 1, '2020-01-14 15:19:32', '2020-01-14 15:19:32', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'publish', 'open', 'open', '', 'seo-atau-google-adwords-cara-pertama-agar-website-anda-di-halaman-pertama-5', '', '', '2020-01-14 15:20:33', '2020-01-14 15:20:33', '', 0, 'http://localhost/timedoor/?p=64', 0, 'post', '', 0),
(65, 1, '2020-01-14 15:19:35', '2020-01-14 15:19:35', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Pentingnya Membuat Website yang Mobile Friendly', '', 'publish', 'open', 'open', '', 'seo-atau-google-adwords-cara-pertama-agar-website-anda-di-halaman-pertama-2', '', '', '2020-01-14 15:22:54', '2020-01-14 15:22:54', '', 0, 'http://localhost/timedoor/?p=65', 0, 'post', '', 0),
(66, 1, '2020-01-14 15:19:39', '2020-01-14 15:19:39', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'publish', 'open', 'open', '', 'seo-atau-google-adwords-cara-pertama-agar-website-anda-di-halaman-pertama-4', '', '', '2020-01-14 15:20:26', '2020-01-14 15:20:26', '', 0, 'http://localhost/timedoor/?p=66', 0, 'post', '', 0),
(67, 1, '2020-01-14 15:19:43', '2020-01-14 15:19:43', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Pentingnya Membuat Website yang Mobile Friendly', '', 'publish', 'open', 'open', '', 'seo-atau-google-adwords-cara-pertama-agar-website-anda-di-halaman-pertama-3', '', '', '2020-01-14 15:22:49', '2020-01-14 15:22:49', '', 0, 'http://localhost/timedoor/?p=67', 0, 'post', '', 0),
(68, 1, '2020-01-14 15:20:00', '2020-01-14 15:20:00', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-01-14 15:20:00', '2020-01-14 15:20:00', '', 63, 'http://localhost/timedoor/2020/01/14/63-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-01-14 15:20:06', '2020-01-14 15:20:06', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-01-14 15:20:06', '2020-01-14 15:20:06', '', 65, 'http://localhost/timedoor/2020/01/14/65-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-01-14 15:20:11', '2020-01-14 15:20:11', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-01-14 15:20:11', '2020-01-14 15:20:11', '', 67, 'http://localhost/timedoor/2020/01/14/67-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-01-14 15:20:26', '2020-01-14 15:20:26', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-01-14 15:20:26', '2020-01-14 15:20:26', '', 66, 'http://localhost/timedoor/2020/01/14/66-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-01-14 15:20:33', '2020-01-14 15:20:33', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-14 15:20:33', '2020-01-14 15:20:33', '', 64, 'http://localhost/timedoor/2020/01/14/64-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-01-14 15:22:25', '2020-01-14 15:22:25', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Pentingnya Membuat Website yang Mobile Friendly', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-01-14 15:22:25', '2020-01-14 15:22:25', '', 63, 'http://localhost/timedoor/2020/01/14/63-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-01-14 15:22:37', '2020-01-14 15:22:37', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Seo atau Google Adwords? Cara pertama agar Website anda di Halaman Pertama', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-01-14 15:22:37', '2020-01-14 15:22:37', '', 65, 'http://localhost/timedoor/2020/01/14/65-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2020-01-14 15:22:49', '2020-01-14 15:22:49', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Pentingnya Membuat Website yang Mobile Friendly', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2020-01-14 15:22:49', '2020-01-14 15:22:49', '', 67, 'http://localhost/timedoor/2020/01/14/67-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-01-14 15:22:54', '2020-01-14 15:22:54', '<!-- wp:paragraph -->\r\n<p>Selamt datang di WordPress. Ini adalah pos pertama Anda. Sunting atau hapus, kemudian mulai menulis!</p>\r\n<!-- /wp:paragraph -->', 'Pentingnya Membuat Website yang Mobile Friendly', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-01-14 15:22:54', '2020-01-14 15:22:54', '', 65, 'http://localhost/timedoor/2020/01/14/65-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-01-15 17:19:27', '2020-01-15 17:19:27', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nTimedoor \"[your-subject]\"\nTimedoor <richardofay@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Timedoor (http://localhost/timedoor)\nrichardofay@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nTimedoor \"[your-subject]\"\nTimedoor <richardofay@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Timedoor (http://localhost/timedoor)\n[your-email]\nReply-To: richardofay@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-01-15 17:19:27', '2020-01-15 17:19:27', '', 0, 'http://localhost/timedoor/?post_type=wpcf7_contact_form&p=78', 0, 'wpcf7_contact_form', '', 0),
(79, 1, '2020-01-15 17:33:25', '2020-01-15 17:33:25', '<p>\n	<label>Email address: \n		<input type=\"email\" name=\"EMAIL\" placeholder=\"Your email address\" required />\n</label>\n</p>\n\n<p>\n	<input type=\"submit\" value=\"Sign up\" />\n</p>', 'Tes', '', 'publish', 'closed', 'closed', '', 'tes', '', '', '2020-01-15 17:33:25', '2020-01-15 17:33:25', '', 0, 'http://localhost/timedoor/mc4wp-form/tes/', 0, 'mc4wp-form', '', 0),
(82, 1, '2020-01-15 17:43:16', '2020-01-15 17:43:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-01-15 17:43:16', '2020-01-15 17:43:16', '', 14, 'http://localhost/timedoor/2020/01/15/14-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-01-15 19:03:48', '2020-01-15 19:03:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Slider', 'slider', 'publish', 'closed', 'closed', '', 'group_5e1f61cea9b59', '', '', '2020-01-15 19:28:57', '2020-01-15 19:28:57', '', 0, 'http://localhost/timedoor/?post_type=acf-field-group&#038;p=83', 0, 'acf-field-group', '', 0),
(84, 1, '2020-01-15 19:03:48', '2020-01-15 19:03:48', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image_slider', 'publish', 'closed', 'closed', '', 'field_5e1f61d24512c', '', '', '2020-01-15 19:28:57', '2020-01-15 19:28:57', '', 83, 'http://localhost/timedoor/?post_type=acf-field&#038;p=84', 0, 'acf-field', '', 0),
(85, 1, '2020-01-15 19:03:48', '2020-01-15 19:03:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'content', 'content_slider', 'publish', 'closed', 'closed', '', 'field_5e1f61ee4512d', '', '', '2020-01-15 19:03:48', '2020-01-15 19:03:48', '', 83, 'http://localhost/timedoor/?post_type=acf-field&p=85', 1, 'acf-field', '', 0),
(86, 1, '2020-01-15 19:07:15', '2020-01-15 19:07:15', '', 'slide1', '', 'publish', 'closed', 'closed', '', 'slide1', '', '', '2020-01-15 19:15:00', '2020-01-15 19:15:00', '', 0, 'http://localhost/timedoor/?post_type=slider&#038;p=86', 0, 'slider', '', 0),
(87, 1, '2020-01-15 19:06:31', '2020-01-15 19:06:31', '', 'main', '', 'inherit', 'open', 'closed', '', 'main', '', '', '2020-01-15 19:06:31', '2020-01-15 19:06:31', '', 86, 'http://localhost/timedoor/wp-content/uploads/2020/01/main.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2020-01-16 05:51:22', '2020-01-16 05:51:22', '<div class=\"row\">\r\n    <div class=\"col-md-12\">\r\n        [text* text-334 class:name_contact placeholder \"Name\"]\r\n    </div>\r\n    <div class=\"col-md-6\">\r\n        [email* email-742 class:email_contact placeholder \"Email\"]\r\n    </div>\r\n    <div class=\"col-md-6\">\r\n        [tel* tel-726 class:phone_contact placeholder \"Phone\"]\r\n    </div>\r\n    <div class=\"col-md-12\">\r\n        [textarea* textarea-745 class:message_contact placeholder \"Message\"]\r\n    </div>\r\n    <div class=\"col-md-4\">\r\n        [submit class:send_contact \"Send Message\"]\r\n    </div>\r\n</div>\n1\nTimedoor \"[your-subject]\"\nTimedoor <richardofay@gmail.com>\nrichardofay@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Timedoor (http://localhost/timedoor)\n\n\n\n\n\nTimedoor \"[your-subject]\"\nTimedoor <richardofay@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Timedoor (http://localhost/timedoor)\nReply-To: richardofay@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Form tes', '', 'publish', 'closed', 'closed', '', 'form-tes', '', '', '2020-01-16 15:45:27', '2020-01-16 15:45:27', '', 0, 'http://localhost/timedoor/?post_type=wpcf7_contact_form&#038;p=88', 0, 'wpcf7_contact_form', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Tak Berkategori', 'tak-berkategori', 0),
(2, 'port', 'port', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(28, 1, 0),
(55, 1, 0),
(63, 1, 0),
(64, 1, 0),
(65, 1, 0),
(66, 1, 0),
(67, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"0eb5a89624680d3c08c07cea7d9c633a3c903957c5b77ab91c2c0b2ad710e722\";a:4:{s:10:\"expiration\";i:1579321104;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579148304;}s:64:\"c36e44fa983cbc31bb12129a5bb1864bc5f2f7ef46758e145ce8c3659577e0d8\";a:4:{s:10:\"expiration\";i:1579326512;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579153712;}s:64:\"bbd4d7f6e958b32042550791a0ed2903f12a4aa4d1519178837ce3de9c51cd50\";a:4:{s:10:\"expiration\";i:1579347561;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579174761;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(19, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1579189386'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:23:\"add-post-type-portfolio\";i:1;s:20:\"add-post-type-slider\";i:2;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$ByLKuOEDsaP8OWRkIwrjMK0qsScSTu/', 'admin', 'richardofay@gmail.com', '', '2020-01-13 16:24:10', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yikes_easy_mc_forms`
--

CREATE TABLE `wp_yikes_easy_mc_forms` (
  `id` int(11) NOT NULL,
  `list_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_styles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_welcome_email` int(11) NOT NULL,
  `redirect_user_on_submit` int(11) NOT NULL,
  `redirect_page` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission_settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `optin_settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_messages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_notifications` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `impressions` int(11) NOT NULL,
  `submissions` int(11) NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yikes_easy_mc_forms`
--
ALTER TABLE `wp_yikes_easy_mc_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yikes_easy_mc_forms`
--
ALTER TABLE `wp_yikes_easy_mc_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
