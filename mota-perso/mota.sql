-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2025 at 08:46 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mota`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur ou commentatrice WordPress', 'wapuu@wordpress.example', 'https://fr.wordpress.org/', '', '2024-01-26 14:23:23', '2024-01-26 13:23:23', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://fr.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/mota', 'yes'),
(2, 'home', 'http://localhost/mota', 'yes'),
(3, 'blogname', 'Mota', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'deniseden.c@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
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
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:113:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:50:\"categorie/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categorie=$matches[1]&feed=$matches[2]\";s:45:\"categorie/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?categorie=$matches[1]&feed=$matches[2]\";s:26:\"categorie/([^/]+)/embed/?$\";s:42:\"index.php?categorie=$matches[1]&embed=true\";s:38:\"categorie/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?categorie=$matches[1]&paged=$matches[2]\";s:20:\"categorie/([^/]+)/?$\";s:31:\"index.php?categorie=$matches[1]\";s:47:\"format/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?format=$matches[1]&feed=$matches[2]\";s:42:\"format/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?format=$matches[1]&feed=$matches[2]\";s:23:\"format/([^/]+)/embed/?$\";s:39:\"index.php?format=$matches[1]&embed=true\";s:35:\"format/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?format=$matches[1]&paged=$matches[2]\";s:17:\"format/([^/]+)/?$\";s:28:\"index.php?format=$matches[1]\";s:31:\"photo/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"photo/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"photo/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"photo/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"photo/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"photo/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"photo/(.+?)/embed/?$\";s:38:\"index.php?photo=$matches[1]&embed=true\";s:24:\"photo/(.+?)/trackback/?$\";s:32:\"index.php?photo=$matches[1]&tb=1\";s:32:\"photo/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?photo=$matches[1]&paged=$matches[2]\";s:39:\"photo/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?photo=$matches[1]&cpage=$matches[2]\";s:28:\"photo/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?photo=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=63&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:58:\"C:\\MAMP\\htdocs\\mota/wp-content/themes/mota-perso/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'mota-perso', 'yes'),
(41, 'stylesheet', 'mota-perso', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '56657', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '63', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1756476903', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'WPLANG', 'fr_FR', 'yes'),
(104, 'user_count', '1', 'no'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:11:{i:1742114433;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1742131403;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1742131404;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1742131608;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1742131609;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1742131611;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1742134522;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1742157976;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1742563410;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1742649803;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.4.2\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"query/style-rtl.css\";i:357;s:23:\"query/style-rtl.min.css\";i:358;s:15:\"query/style.css\";i:359;s:19:\"query/style.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(124, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1706798985;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(144, 'can_compress_scripts', '0', 'yes'),
(159, 'finished_updating_comment_type', '1', 'yes'),
(168, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:28:\"La demande HTTPS a échoué.\";}}', 'yes'),
(171, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":6,\"critical\":2}', 'yes'),
(205, 'current_theme', 'Mota-perso', 'yes'),
(206, 'theme_mods_mota-perso', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"footer\";i:14;s:4:\"main\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(207, 'theme_switched', '', 'yes'),
(208, 'recovery_mode_email_last_sent', '1741874926', 'yes'),
(213, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(247, 'recently_activated', 'a:0:{}', 'yes'),
(257, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.9.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1706875247;s:7:\"version\";s:5:\"5.8.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(336, 'secret_key', ';_{xD=[!L*^L=lvr~_ZoBAArAXv)@M;%4%zNN Y)~t~gZQ!24_m^F|8gerTcwP?R', 'no'),
(407, 'cptui_new_install', 'false', 'yes'),
(410, 'acf_version', '6.3.12', 'yes'),
(412, 'cptui_post_types', 'a:1:{s:5:\"photo\";a:34:{s:4:\"name\";s:5:\"photo\";s:5:\"label\";s:6:\"Photos\";s:14:\"singular_label\";s:5:\"Photo\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:10:\"can_export\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:1:\"6\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:21:\"dashicons-embed-photo\";s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";i:3;s:15:\"page-attributes\";i:4;s:12:\"post-formats\";}s:10:\"taxonomies\";a:2:{i:0;s:9:\"categorie\";i:1;s:6:\"format\";}s:6:\"labels\";a:31:{s:9:\"menu_name\";s:9:\"My Photos\";s:9:\"all_items\";s:10:\"All Photos\";s:7:\"add_new\";s:7:\"Add new\";s:12:\"add_new_item\";s:13:\"Add new Photo\";s:9:\"edit_item\";s:10:\"Edit Photo\";s:8:\"new_item\";s:9:\"New Photo\";s:9:\"view_item\";s:10:\"View Photo\";s:10:\"view_items\";s:11:\"View Photos\";s:12:\"search_items\";s:13:\"Search Photos\";s:9:\"not_found\";s:15:\"No Photos found\";s:18:\"not_found_in_trash\";s:24:\"No Photos found in trash\";s:6:\"parent\";s:13:\"Parent Photo:\";s:14:\"featured_image\";s:29:\"Featured image for this Photo\";s:18:\"set_featured_image\";s:33:\"Set featured image for this Photo\";s:21:\"remove_featured_image\";s:36:\"Remove featured image for this Photo\";s:18:\"use_featured_image\";s:36:\"Use as featured image for this Photo\";s:8:\"archives\";s:14:\"Photo archives\";s:16:\"insert_into_item\";s:17:\"Insert into Photo\";s:21:\"uploaded_to_this_item\";s:20:\"Upload to this Photo\";s:17:\"filter_items_list\";s:18:\"Filter Photos list\";s:21:\"items_list_navigation\";s:22:\"Photos list navigation\";s:10:\"items_list\";s:11:\"Photos list\";s:10:\"attributes\";s:17:\"Photos attributes\";s:14:\"name_admin_bar\";s:5:\"Photo\";s:14:\"item_published\";s:15:\"Photo published\";s:24:\"item_published_privately\";s:26:\"Photo published privately.\";s:22:\"item_reverted_to_draft\";s:24:\"Photo reverted to draft.\";s:12:\"item_trashed\";s:14:\"Photo trashed.\";s:14:\"item_scheduled\";s:15:\"Photo scheduled\";s:12:\"item_updated\";s:14:\"Photo updated.\";s:17:\"parent_item_colon\";s:13:\"Parent Photo:\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:9:\"Add Photo\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(417, 'cptui_taxonomies', 'a:2:{s:9:\"categorie\";a:28:{s:4:\"name\";s:9:\"categorie\";s:5:\"label\";s:11:\"Catégories\";s:14:\"singular_label\";s:10:\"Catégorie\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:5:\"photo\";}}s:6:\"format\";a:28:{s:4:\"name\";s:6:\"format\";s:5:\"label\";s:7:\"Formats\";s:14:\"singular_label\";s:6:\"Format\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:13:\"show_tagcloud\";s:5:\"false\";s:4:\"sort\";s:5:\"false\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"default_term\";s:0:\"\";s:12:\"object_types\";a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:5:\"photo\";}}}', 'yes'),
(438, 'new_admin_email', 'deniseden.c@gmail.com', 'yes'),
(1169, 'category_children', 'a:0:{}', 'yes'),
(1216, 'categorie_children', 'a:0:{}', 'yes'),
(1217, 'format_children', 'a:0:{}', 'yes'),
(1323, 'ai1wm_secret_key', 'V0WxdxO1mYJ2', 'yes'),
(1324, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:309:\"<a href=\"http://localhost/mota/wp-content/ai1wm-backups/localhost-mota-20250302-151537-354jml1q8q84.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"localhost\" download=\"localhost-mota-20250302-151537-354jml1q8q84.wpress\"><span>Download localhost</span><em>Size: 165 Mo</em></a>\";}', 'yes'),
(1327, '_site_transient_ai1wm_last_check_for_updates', '1742111205', 'no'),
(1328, 'ai1wm_updater', 'a:0:{}', 'yes'),
(1703, 'acf_site_health', '{\"version\":\"6.3.12\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.4.2\",\"mysql_version\":\"5.7.24\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Mota-perso\",\"version\":\"2024\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.12\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"all-in-one-wp-migration\\/all-in-one-wp-migration.php\":{\"name\":\"All-in-One WP Migration\",\"version\":\"7.89\",\"plugin_uri\":\"https:\\/\\/servmask.com\\/\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"5.9.8\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"custom-post-type-ui\\/custom-post-type-ui.php\":{\"name\":\"Custom Post Type UI\",\"version\":\"1.15.1\",\"plugin_uri\":\"https:\\/\\/github.com\\/WebDevStudios\\/custom-post-type-ui\\/\"}},\"ui_field_groups\":\"1\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"text\":1,\"number\":2,\"taxonomy\":2,\"select\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"5\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"5\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":true,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"last_updated\":1741554215}', 'no'),
(1745, '_site_transient_timeout_browser_3fa31b52dd6ebc517e5492d43d77e61c', '1742478354', 'no'),
(1746, '_site_transient_browser_3fa31b52dd6ebc517e5492d43d77e61c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"134.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1747, '_site_transient_timeout_php_check_33fe6d8f3148d10c2ff7ce3ff095dd41', '1742478355', 'no'),
(1748, '_site_transient_php_check_33fe6d8f3148d10c2ff7ce3ff095dd41', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(1780, '_site_transient_timeout_theme_roots', '1742112990', 'no'),
(1781, '_site_transient_theme_roots', 'a:1:{s:10:\"mota-perso\";s:7:\"/themes\";}', 'no'),
(1783, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:7:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.2\";s:7:\"version\";s:5:\"6.7.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.7.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.6.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.5.5.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.5.5.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.5\";s:7:\"version\";s:5:\"6.5.5\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.4.5.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-6.4.5.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.4.5\";s:7:\"version\";s:5:\"6.4.5\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1742111207;s:15:\"version_checked\";s:5:\"6.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1784, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1742111207;s:7:\"checked\";a:1:{s:10:\"mota-perso\";s:4:\"2024\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1785, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1742111208;s:8:\"response\";a:0:{}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"6.3.12\";s:7:\"updated\";s:19:\"2025-02-12 20:30:38\";s:7:\"package\";s:90:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/6.3.12/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:4:\"7.90\";s:7:\"updated\";s:19:\"2025-02-07 08:48:06\";s:7:\"package\";s:89:\"https://downloads.wordpress.org/translation/plugin/all-in-one-wp-migration/7.90/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.9.8\";s:7:\"updated\";s:19:\"2024-10-17 17:27:10\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.9.8/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:6:\"1.15.1\";s:7:\"updated\";s:19:\"2024-02-03 00:40:44\";s:7:\"package\";s:87:\"https://downloads.wordpress.org/translation/plugin/custom-post-type-ui/1.15.1/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"6.3.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.12.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.90\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=3209691\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=3209691\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.0.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.6.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.17.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.17.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.5\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"6.3.12\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.90\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.9.8\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.15.1\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(58, 21, '_form', '<label> NOM\n    [text* your-name autocomplete:name] </label>\n\n<label> E-MAIL\n    [email* your-email autocomplete:email] </label>\n\n<label> RÉF. PHOTO\n    [text* your-ref id:reference] </label>\n\n<label> MESSAGE \n    [textarea* your-message id:message] </label>\n\n[submit id:button-submit \"Envoyer\"]'),
(59, 21, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <deniseden.c@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:187:\"From: [your-name] [your-email]\nSubject: [your-ref]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(60, 21, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:37:\"[_site_title] <deniseden.c@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(61, 21, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(62, 21, '_additional_settings', ''),
(63, 21, '_locale', 'fr_FR'),
(64, 21, '_hash', 'b1992bf097b192f82aa56489152c640046541777'),
(118, 48, '_customize_changeset_uuid', '66eb9d55-3d7d-4386-b307-447f590f2891'),
(120, 49, '_customize_changeset_uuid', '66eb9d55-3d7d-4386-b307-447f590f2891'),
(175, 49, '_edit_lock', '1707382804:1'),
(176, 48, '_edit_lock', '1741880521:1'),
(178, 63, '_customize_changeset_uuid', '8f5fdd20-d7db-4654-a4a4-1f3bbf0feb24'),
(187, 67, '_menu_item_type', 'post_type'),
(188, 67, '_menu_item_menu_item_parent', '0'),
(189, 67, '_menu_item_object_id', '63'),
(190, 67, '_menu_item_object', 'page'),
(191, 67, '_menu_item_target', ''),
(192, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 67, '_menu_item_xfn', ''),
(194, 67, '_menu_item_url', ''),
(202, 71, '_edit_lock', '1711789408:1'),
(203, 72, '_edit_lock', '1727254764:1'),
(204, 74, '_edit_last', '1'),
(205, 74, '_edit_lock', '1727254693:1'),
(208, 84, '_wp_attached_file', '2024/02/nathalie-0-scaled.webp'),
(209, 84, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2024/02/nathalie-0-scaled.webp\";s:8:\"filesize\";i:243698;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-0-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14034;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-0-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:62992;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-0-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7238;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-0-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:43554;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-0-1536x1024.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:107248;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-0-2048x1365.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:162086;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-0.webp\";}'),
(210, 85, '_wp_attached_file', '2024/02/nathalie-1-scaled.webp'),
(211, 85, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2024/02/nathalie-1-scaled.webp\";s:8:\"filesize\";i:507322;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-1-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20142;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-1-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:124286;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8796;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-1-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:82086;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-1-1536x1024.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:218872;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-1-2048x1365.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:339928;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-1.webp\";}'),
(212, 86, '_wp_attached_file', '2024/02/nathalie-2-scaled.webp'),
(213, 86, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1544;s:4:\"file\";s:30:\"2024/02/nathalie-2-scaled.webp\";s:8:\"filesize\";i:875664;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-2-300x181.webp\";s:5:\"width\";i:300;s:6:\"height\";i:181;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:24262;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-2-1024x617.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:617;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:211102;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-2-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:12354;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-2-768x463.webp\";s:5:\"width\";i:768;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:129510;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"nathalie-2-1536x926.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:926;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:409616;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-2-2048x1235.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1235;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:633180;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-2.webp\";}'),
(214, 87, '_wp_attached_file', '2024/02/nathalie-3-scaled.webp'),
(215, 87, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2024/02/nathalie-3-scaled.webp\";s:8:\"filesize\";i:136350;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-3-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8518;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-3-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:39772;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-3-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:4168;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-3-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:45836;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-3-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:64764;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-3-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:98558;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-3.webp\";}'),
(216, 88, '_wp_attached_file', '2024/02/nathalie-4-scaled.webp'),
(217, 88, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1706;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2024/02/nathalie-4-scaled.webp\";s:8:\"filesize\";i:532346;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-4-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20800;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-4-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:150934;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-4-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:8780;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-4-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:175816;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-4-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:265002;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-4-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:400442;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-4.webp\";}'),
(218, 89, '_wp_attached_file', '2024/02/nathalie-5-scaled.webp'),
(219, 89, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2024/02/nathalie-5-scaled.webp\";s:8:\"filesize\";i:849358;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-5-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:21954;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-5-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:164224;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-5-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9300;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-5-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:200298;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-5-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:326810;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-5-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:561064;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-5.webp\";}'),
(220, 90, '_wp_attached_file', '2024/02/nathalie-6-scaled.webp'),
(221, 90, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:2048;s:4:\"file\";s:30:\"2024/02/nathalie-6-scaled.webp\";s:8:\"filesize\";i:542720;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-6-300x240.webp\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14390;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-6-1024x819.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:819;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:101920;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-6-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6058;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-6-768x614.webp\";s:5:\"width\";i:768;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:61102;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-6-1536x1229.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1229;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:218764;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-6-2048x1638.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1638;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:369634;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-6.webp\";}'),
(222, 91, '_wp_attached_file', '2024/02/nathalie-7-scaled.webp'),
(223, 91, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:30:\"2024/02/nathalie-7-scaled.webp\";s:8:\"filesize\";i:203522;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-7-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:13674;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-7-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:66878;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-7-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:6424;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-7-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:47890;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-7-1536x1024.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:110726;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-7-2048x1365.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:155088;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-7.webp\";}'),
(224, 92, '_wp_attached_file', '2024/02/nathalie-8-scaled.webp'),
(225, 92, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1709;s:6:\"height\";i:2560;s:4:\"file\";s:30:\"2024/02/nathalie-8-scaled.webp\";s:8:\"filesize\";i:301174;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-8-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:16992;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-8-684x1024.webp\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:93374;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-8-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9262;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-8-768x1150.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:106086;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-8-1025x1536.webp\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:155244;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-8-1367x2048.webp\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:226432;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-8.webp\";}'),
(226, 93, '_wp_attached_file', '2024/02/nathalie-9-scaled.webp'),
(227, 93, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:30:\"2024/02/nathalie-9-scaled.webp\";s:8:\"filesize\";i:447896;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"nathalie-9-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14902;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"nathalie-9-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:101770;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"nathalie-9-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7570;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"nathalie-9-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:65154;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"nathalie-9-1536x1024.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:192274;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:25:\"nathalie-9-2048x1365.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:308706;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:15:\"nathalie-9.webp\";}'),
(228, 94, '_wp_attached_file', '2024/02/nathalie-10-scaled.webp'),
(229, 94, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:31:\"2024/02/nathalie-10-scaled.webp\";s:8:\"filesize\";i:1394952;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-10-300x225.webp\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:31772;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-10-1024x768.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:305964;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-10-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11228;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-10-768x576.webp\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:180918;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-10-1536x1152.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:615450;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-10-2048x1536.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:981722;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-10.webp\";}'),
(230, 95, '_wp_attached_file', '2024/02/nathalie-11-scaled.webp'),
(231, 95, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:31:\"2024/02/nathalie-11-scaled.webp\";s:8:\"filesize\";i:202116;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-11-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:14684;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-11-1024x684.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:65086;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-11-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:7604;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-11-768x513.webp\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:45852;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-11-1536x1025.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:103188;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-11-2048x1367.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:149956;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-11.webp\";}'),
(232, 96, '_wp_attached_file', '2024/02/nathalie-12-scaled.webp'),
(233, 96, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:31:\"2024/02/nathalie-12-scaled.webp\";s:8:\"filesize\";i:328804;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-12-300x200.webp\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:20684;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-12-1024x683.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:108274;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-12-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:10266;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"nathalie-12-768x512.webp\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:75628;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-12-1536x1024.webp\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:173352;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-12-2048x1365.webp\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:245632;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-12.webp\";}'),
(234, 97, '_wp_attached_file', '2024/02/nathalie-13-scaled.webp'),
(235, 97, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2024/02/nathalie-13-scaled.webp\";s:8:\"filesize\";i:154452;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-13-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9332;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-13-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:46986;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-13-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5410;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-13-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:54544;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-13-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:77846;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-13-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:115326;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-13.webp\";}'),
(236, 98, '_wp_attached_file', '2024/02/nathalie-14-scaled.webp'),
(237, 98, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2024/02/nathalie-14-scaled.webp\";s:8:\"filesize\";i:384796;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-14-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:11390;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-14-683x1024.webp\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:90952;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-14-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:5538;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-14-768x1152.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:109856;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-14-1024x1536.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:172976;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-14-1365x2048.webp\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:275338;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-14.webp\";}'),
(238, 99, '_wp_attached_file', '2024/02/nathalie-15-scaled.webp'),
(239, 99, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1709;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2024/02/nathalie-15-scaled.webp\";s:8:\"filesize\";i:505040;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"nathalie-15-200x300.webp\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:22108;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"nathalie-15-684x1024.webp\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:150632;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"nathalie-15-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:9162;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"nathalie-15-768x1150.webp\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:177660;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"nathalie-15-1025x1536.webp\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:264082;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"nathalie-15-1367x2048.webp\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:388402;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"nathalie-15.webp\";}'),
(240, 101, '_edit_last', '1'),
(241, 101, '_edit_lock', '1711272033:1'),
(242, 84, '_wp_attachment_image_alt', 'lève le verre'),
(243, 101, '_thumbnail_id', '84'),
(244, 71, '_edit_last', '1'),
(254, 101, 'photos', '84'),
(255, 101, '_photos', 'field_65c1f5f9ffb67'),
(256, 101, 'titre', 'Santé !'),
(257, 101, '_titre', 'field_65c1fe5a3ba01'),
(258, 101, 'reference', '2385'),
(259, 101, '_reference', 'field_65c1ff293ba02'),
(260, 101, 'categorie', '11'),
(261, 101, '_categorie', 'field_65c200073ba03'),
(262, 101, 'annee', '2019'),
(263, 101, '_annee', 'field_65c201453ba04'),
(264, 101, 'format', '12'),
(265, 101, '_format', 'field_65c2017c3ba05'),
(266, 101, 'type', 'Argentique'),
(267, 101, '_type', 'field_65c201d23ba06'),
(284, 85, '_wp_attachment_image_alt', 'photo de la table ambiance nuit'),
(285, 108, '_edit_last', '1'),
(286, 108, '_thumbnail_id', '85'),
(287, 108, 'photos', '85'),
(288, 108, '_photos', 'field_65c1f5f9ffb67'),
(289, 108, 'titre', 'Et bon anniversaire !'),
(290, 108, '_titre', 'field_65c1fe5a3ba01'),
(291, 108, 'reference', '2386'),
(292, 108, '_reference', 'field_65c1ff293ba02'),
(293, 108, 'categorie', '11'),
(294, 108, '_categorie', 'field_65c200073ba03'),
(295, 108, 'annee', '2020'),
(296, 108, '_annee', 'field_65c201453ba04'),
(297, 108, 'format', '12'),
(298, 108, '_format', 'field_65c2017c3ba05'),
(299, 108, 'type', 'Argentique'),
(300, 108, '_type', 'field_65c201d23ba06'),
(301, 108, '_edit_lock', '1708026004:1'),
(305, 109, '_edit_last', '1'),
(306, 109, '_edit_lock', '1707217961:1'),
(307, 86, '_wp_attachment_image_alt', 'c\'est la fête'),
(308, 109, '_thumbnail_id', '86'),
(309, 109, 'photos', '86'),
(310, 109, '_photos', 'field_65c1f5f9ffb67'),
(311, 109, 'titre', 'Let\'s party !'),
(312, 109, '_titre', 'field_65c1fe5a3ba01'),
(313, 109, 'reference', '2387'),
(314, 109, '_reference', 'field_65c1ff293ba02'),
(315, 109, 'categorie', '9'),
(316, 109, '_categorie', 'field_65c200073ba03'),
(317, 109, 'annee', '2021'),
(318, 109, '_annee', 'field_65c201453ba04'),
(319, 109, 'format', '12'),
(320, 109, '_format', 'field_65c2017c3ba05'),
(321, 109, 'type', 'Numérique'),
(322, 109, '_type', 'field_65c201d23ba06'),
(323, 110, '_edit_last', '1'),
(324, 110, '_edit_lock', '1708001909:1'),
(325, 87, '_wp_attachment_image_alt', 'salle de réception'),
(326, 110, '_thumbnail_id', '87'),
(327, 110, 'photos', '87'),
(328, 110, '_photos', 'field_65c1f5f9ffb67'),
(329, 110, 'titre', 'Tout est installé'),
(330, 110, '_titre', 'field_65c1fe5a3ba01'),
(331, 110, 'reference', '2388'),
(332, 110, '_reference', 'field_65c1ff293ba02'),
(333, 110, 'categorie', '8'),
(334, 110, '_categorie', 'field_65c200073ba03'),
(335, 110, 'annee', '2019'),
(336, 110, '_annee', 'field_65c201453ba04'),
(337, 110, 'format', '13'),
(338, 110, '_format', 'field_65c2017c3ba05'),
(339, 110, 'type', 'Argentique'),
(340, 110, '_type', 'field_65c201d23ba06'),
(341, 111, '_edit_last', '1'),
(342, 111, '_edit_lock', '1707218215:1'),
(343, 88, '_wp_attachment_image_alt', 'allée cérémonie'),
(344, 111, '_thumbnail_id', '88'),
(345, 111, 'photos', '88'),
(346, 111, '_photos', 'field_65c1f5f9ffb67'),
(347, 111, 'titre', 'Vers l\'éternité'),
(348, 111, '_titre', 'field_65c1fe5a3ba01'),
(349, 111, 'reference', '2389'),
(350, 111, '_reference', 'field_65c1ff293ba02'),
(351, 111, 'categorie', '8'),
(352, 111, '_categorie', 'field_65c200073ba03'),
(353, 111, 'annee', '2020'),
(354, 111, '_annee', 'field_65c201453ba04'),
(355, 111, 'format', '13'),
(356, 111, '_format', 'field_65c2017c3ba05'),
(357, 111, 'type', 'Numérique'),
(358, 111, '_type', 'field_65c201d23ba06'),
(359, 112, '_edit_last', '1'),
(360, 112, '_edit_lock', '1707218365:1'),
(361, 89, '_wp_attachment_image_alt', 'Embrassez la mariée'),
(362, 112, '_thumbnail_id', '89'),
(363, 112, 'photos', '89'),
(364, 112, '_photos', 'field_65c1f5f9ffb67'),
(365, 112, 'titre', 'Embrassez la mariée'),
(366, 112, '_titre', 'field_65c1fe5a3ba01'),
(367, 112, 'reference', '2390'),
(368, 112, '_reference', 'field_65c1ff293ba02'),
(369, 112, 'categorie', '8'),
(370, 112, '_categorie', 'field_65c200073ba03'),
(371, 112, 'annee', '2021'),
(372, 112, '_annee', 'field_65c201453ba04'),
(373, 112, 'format', '13'),
(374, 112, '_format', 'field_65c2017c3ba05'),
(375, 112, 'type', 'Numérique'),
(376, 112, '_type', 'field_65c201d23ba06'),
(377, 113, '_edit_last', '1'),
(378, 113, '_edit_lock', '1707218431:1'),
(379, 90, '_wp_attachment_image_alt', 'Dansons ensemble'),
(380, 113, '_thumbnail_id', '90'),
(381, 113, 'photos', '90'),
(382, 113, '_photos', 'field_65c1f5f9ffb67'),
(383, 113, 'titre', 'Dansons ensemble'),
(384, 113, '_titre', 'field_65c1fe5a3ba01'),
(385, 113, 'reference', '2391'),
(386, 113, '_reference', 'field_65c1ff293ba02'),
(387, 113, 'categorie', '8'),
(388, 113, '_categorie', 'field_65c200073ba03'),
(389, 113, 'annee', '2020'),
(390, 113, '_annee', 'field_65c201453ba04'),
(391, 113, 'format', '12'),
(392, 113, '_format', 'field_65c2017c3ba05'),
(393, 113, 'type', 'Numérique'),
(394, 113, '_type', 'field_65c201d23ba06'),
(395, 114, '_edit_last', '1'),
(396, 114, '_edit_lock', '1707218509:1'),
(397, 91, '_wp_attachment_image_alt', 'passer à table'),
(398, 114, '_thumbnail_id', '91'),
(399, 114, 'photos', '91'),
(400, 114, '_photos', 'field_65c1f5f9ffb67'),
(401, 114, 'titre', 'Le menu'),
(402, 114, '_titre', 'field_65c1fe5a3ba01'),
(403, 114, 'reference', '2392'),
(404, 114, '_reference', 'field_65c1ff293ba02'),
(405, 114, 'categorie', '8'),
(406, 114, '_categorie', 'field_65c200073ba03'),
(407, 114, 'annee', '2019'),
(408, 114, '_annee', 'field_65c201453ba04'),
(409, 114, 'format', '12'),
(410, 114, '_format', 'field_65c2017c3ba05'),
(411, 114, 'type', 'Numérique'),
(412, 114, '_type', 'field_65c201d23ba06'),
(413, 115, '_edit_last', '1'),
(414, 115, '_edit_lock', '1710412216:1'),
(415, 92, '_wp_attachment_image_alt', 'Au bal masqué'),
(416, 115, '_thumbnail_id', '92'),
(417, 115, 'photos', '92'),
(418, 115, '_photos', 'field_65c1f5f9ffb67'),
(419, 115, 'titre', 'Au bal masqué'),
(420, 115, '_titre', 'field_65c1fe5a3ba01'),
(421, 115, 'reference', '2393'),
(422, 115, '_reference', 'field_65c1ff293ba02'),
(423, 115, 'categorie', '9'),
(424, 115, '_categorie', 'field_65c200073ba03'),
(425, 115, 'annee', '2021'),
(426, 115, '_annee', 'field_65c201453ba04'),
(427, 115, 'format', '13'),
(428, 115, '_format', 'field_65c2017c3ba05'),
(429, 115, 'type', 'Numérique'),
(430, 115, '_type', 'field_65c201d23ba06'),
(431, 116, '_edit_last', '1'),
(432, 116, '_edit_lock', '1707218666:1'),
(433, 93, '_wp_attachment_image_alt', 'dansons'),
(434, 116, '_thumbnail_id', '93'),
(435, 116, 'photos', '93'),
(436, 116, '_photos', 'field_65c1f5f9ffb67'),
(437, 116, 'titre', 'Let\'s dance !'),
(438, 116, '_titre', 'field_65c1fe5a3ba01'),
(439, 116, 'reference', '2394'),
(440, 116, '_reference', 'field_65c1ff293ba02'),
(441, 116, 'categorie', '8'),
(442, 116, '_categorie', 'field_65c200073ba03'),
(443, 116, 'annee', '2022'),
(444, 116, '_annee', 'field_65c201453ba04'),
(445, 116, 'format', '12'),
(446, 116, '_format', 'field_65c2017c3ba05'),
(447, 116, 'type', 'Numérique'),
(448, 116, '_type', 'field_65c201d23ba06'),
(449, 117, '_edit_last', '1'),
(450, 117, '_edit_lock', '1707220366:1'),
(451, 94, '_wp_attachment_image_alt', 'Jour de match'),
(452, 117, '_thumbnail_id', '94'),
(453, 117, 'photos', '94'),
(454, 117, '_photos', 'field_65c1f5f9ffb67'),
(455, 117, 'titre', 'Jour de match'),
(456, 117, '_titre', 'field_65c1fe5a3ba01'),
(457, 117, 'reference', '2395'),
(458, 117, '_reference', 'field_65c1ff293ba02'),
(459, 117, 'categorie', '10'),
(460, 117, '_categorie', 'field_65c200073ba03'),
(461, 117, 'annee', '2022'),
(462, 117, '_annee', 'field_65c201453ba04'),
(463, 117, 'format', '12'),
(464, 117, '_format', 'field_65c2017c3ba05'),
(465, 117, 'type', 'Numérique'),
(466, 117, '_type', 'field_65c201d23ba06'),
(467, 118, '_edit_last', '1'),
(468, 118, '_edit_lock', '1711313166:1'),
(469, 95, '_wp_attachment_image_alt', 'arrivée des invités'),
(470, 118, '_thumbnail_id', '95'),
(471, 118, 'photos', '95'),
(472, 118, '_photos', 'field_65c1f5f9ffb67'),
(473, 118, 'titre', 'Préparation'),
(474, 118, '_titre', 'field_65c1fe5a3ba01'),
(475, 118, 'reference', '2396'),
(476, 118, '_reference', 'field_65c1ff293ba02'),
(477, 118, 'categorie', '9'),
(478, 118, '_categorie', 'field_65c200073ba03'),
(479, 118, 'annee', '2022'),
(480, 118, '_annee', 'field_65c201453ba04'),
(481, 118, 'format', '12'),
(482, 118, '_format', 'field_65c2017c3ba05'),
(483, 118, 'type', 'Argentique'),
(484, 118, '_type', 'field_65c201d23ba06'),
(485, 119, '_edit_last', '1'),
(486, 119, '_edit_lock', '1711790091:1'),
(487, 96, '_wp_attachment_image_alt', 'un couple d\'invité'),
(488, 119, '_thumbnail_id', '96'),
(489, 119, 'photos', '96'),
(490, 119, '_photos', 'field_65c1f5f9ffb67'),
(491, 119, 'titre', 'Bière ou eau plate ?'),
(492, 119, '_titre', 'field_65c1fe5a3ba01'),
(493, 119, 'reference', '2397'),
(494, 119, '_reference', 'field_65c1ff293ba02'),
(495, 119, 'categorie', '9'),
(496, 119, '_categorie', 'field_65c200073ba03'),
(497, 119, 'annee', '2022'),
(498, 119, '_annee', 'field_65c201453ba04'),
(499, 119, 'format', '12'),
(500, 119, '_format', 'field_65c2017c3ba05'),
(501, 119, 'type', 'Numérique'),
(502, 119, '_type', 'field_65c201d23ba06'),
(503, 125, '_edit_last', '1'),
(504, 125, '_edit_lock', '1708091495:1'),
(505, 97, '_wp_attachment_image_alt', 'Bouquet final'),
(506, 125, '_thumbnail_id', '97'),
(507, 125, 'photos', '97'),
(508, 125, '_photos', 'field_65c1f5f9ffb67'),
(509, 125, 'titre', 'Bouquet final'),
(510, 125, '_titre', 'field_65c1fe5a3ba01'),
(511, 125, 'reference', '2398'),
(512, 125, '_reference', 'field_65c1ff293ba02'),
(513, 125, 'categorie', '8'),
(514, 125, '_categorie', 'field_65c200073ba03'),
(515, 125, 'annee', '2022'),
(516, 125, '_annee', 'field_65c201453ba04'),
(517, 125, 'format', '13'),
(518, 125, '_format', 'field_65c2017c3ba05'),
(519, 125, 'type', 'Numérique'),
(520, 125, '_type', 'field_65c201d23ba06'),
(521, 126, '_edit_last', '1'),
(522, 126, '_edit_lock', '1708091488:1'),
(523, 98, '_wp_attachment_image_alt', 'coucher de soleil'),
(524, 126, '_thumbnail_id', '98'),
(525, 126, 'photos', '98'),
(526, 126, '_photos', 'field_65c1f5f9ffb67'),
(527, 126, 'titre', 'Du soir au matin'),
(528, 126, '_titre', 'field_65c1fe5a3ba01'),
(529, 126, 'reference', '2399'),
(530, 126, '_reference', 'field_65c1ff293ba02'),
(531, 126, 'categorie', '8'),
(532, 126, '_categorie', 'field_65c200073ba03'),
(533, 126, 'annee', '2022'),
(534, 126, '_annee', 'field_65c201453ba04'),
(535, 126, 'format', '13'),
(536, 126, '_format', 'field_65c2017c3ba05'),
(537, 126, 'type', 'Argentique'),
(538, 126, '_type', 'field_65c201d23ba06'),
(539, 127, '_edit_last', '1'),
(540, 127, '_edit_lock', '1708091478:1'),
(541, 99, '_wp_attachment_image_alt', 'Team mariée'),
(542, 127, '_thumbnail_id', '99'),
(543, 127, 'photos', '99'),
(544, 127, '_photos', 'field_65c1f5f9ffb67'),
(545, 127, 'titre', 'Team mariée'),
(546, 127, '_titre', 'field_65c1fe5a3ba01'),
(547, 127, 'reference', '2400'),
(548, 127, '_reference', 'field_65c1ff293ba02'),
(549, 127, 'categorie', '8'),
(550, 127, '_categorie', 'field_65c200073ba03'),
(551, 127, 'annee', '2022'),
(552, 127, '_annee', 'field_65c201453ba04'),
(553, 127, 'format', '13'),
(554, 127, '_format', 'field_65c2017c3ba05'),
(555, 127, 'type', 'Numérique'),
(556, 127, '_type', 'field_65c201d23ba06'),
(557, 84, '_edit_lock', '1707228948:1'),
(580, 67, '_wp_old_date', '2024-02-05'),
(584, 136, '_customize_changeset_uuid', '0d6359a7-4c01-496d-afaa-779db1002c70'),
(586, 137, '_customize_changeset_uuid', '0d6359a7-4c01-496d-afaa-779db1002c70'),
(603, 143, '_menu_item_type', 'post_type'),
(604, 143, '_menu_item_menu_item_parent', '0'),
(605, 143, '_menu_item_object_id', '136'),
(606, 143, '_menu_item_object', 'page'),
(607, 143, '_menu_item_target', ''),
(608, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(609, 143, '_menu_item_xfn', ''),
(610, 143, '_menu_item_url', ''),
(611, 144, '_menu_item_type', 'post_type'),
(612, 144, '_menu_item_menu_item_parent', '0'),
(613, 144, '_menu_item_object_id', '137'),
(614, 144, '_menu_item_object', 'page'),
(615, 144, '_menu_item_target', ''),
(616, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(617, 144, '_menu_item_xfn', ''),
(618, 144, '_menu_item_url', ''),
(622, 145, '_customize_changeset_uuid', '17790dcf-6425-4e2d-839a-82ccaf4cdd41'),
(633, 137, '_edit_lock', '1707382174:1'),
(643, 72, '_edit_last', '1'),
(644, 143, '_wp_old_date', '2024-02-07'),
(645, 144, '_wp_old_date', '2024-02-07'),
(647, 137, '_edit_last', '1'),
(648, 137, '_wp_page_template', 'templates-part/privacy.php'),
(651, 136, '_edit_lock', '1741877399:1'),
(652, 136, '_wp_page_template', 'templates-part/mentions-legales.php'),
(655, 161, '_acf_changed', ''),
(656, 161, 'footnotes', ''),
(657, 145, '_edit_lock', '1707386107:1'),
(658, 163, '_acf_changed', ''),
(659, 163, 'footnotes', ''),
(664, 67, '_wp_old_date', '2024-02-07'),
(666, 143, '_wp_old_date', '2024-02-08'),
(667, 144, '_wp_old_date', '2024-02-08'),
(668, 73, '_edit_lock', '1727254755:1'),
(669, 165, '_edit_lock', '1741874810:1'),
(670, 165, '_customize_restore_dismissed', '1'),
(671, 166, '_wp_trash_meta_status', 'publish'),
(672, 166, '_wp_trash_meta_time', '1741875765'),
(683, 168, '_wp_trash_meta_status', 'publish'),
(684, 168, '_wp_trash_meta_time', '1741877213'),
(685, 170, '_wp_trash_meta_status', 'publish'),
(686, 170, '_wp_trash_meta_time', '1741877310'),
(687, 48, '_edit_last', '1'),
(688, 48, '_wp_page_template', 'templates-part/apropos.php');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-01-26 14:23:23', '2024-01-26 13:23:23', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2024-01-26 14:23:23', '2024-01-26 13:23:23', '', 0, 'http://localhost/mota/?p=1', 0, 'post', '', 1),
(4, 0, '2024-01-26 14:23:27', '2024-01-26 13:23:27', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-01-26 14:23:27', '2024-01-26 13:23:27', '', 0, 'http://localhost/mota/2024/01/26/navigation/', 0, 'wp_navigation', '', 0),
(21, 1, '2024-02-02 13:00:47', '2024-02-02 12:00:47', '<label> NOM\r\n    [text* your-name autocomplete:name] </label>\r\n\r\n<label> E-MAIL\r\n    [email* your-email autocomplete:email] </label>\r\n\r\n<label> RÉF. PHOTO\r\n    [text* your-ref id:reference] </label>\r\n\r\n<label> MESSAGE \r\n    [textarea* your-message id:message] </label>\r\n\r\n[submit id:button-submit \"Envoyer\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <deniseden.c@gmail.com>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-ref]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <deniseden.c@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2024-02-14 16:38:51', '2024-02-14 15:38:51', '', 0, 'http://localhost/mota/?post_type=wpcf7_contact_form&#038;p=21', 0, 'wpcf7_contact_form', '', 0),
(48, 1, '2024-02-05 10:01:38', '2024-02-05 09:01:38', '', 'À propos', '', 'publish', 'closed', 'closed', '', 'a-propos', '', '', '2025-03-13 15:52:44', '2025-03-13 14:52:44', '', 0, 'http://localhost/mota/?page_id=48', 0, 'page', '', 0),
(49, 1, '2024-02-05 10:01:39', '2024-02-05 09:01:39', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2024-02-08 09:53:46', '2024-02-08 08:53:46', '', 0, 'http://localhost/mota/?page_id=49', 0, 'page', '', 0),
(52, 1, '2024-02-05 10:01:38', '2024-02-05 09:01:38', '', 'À propos', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2024-02-05 10:01:38', '2024-02-05 09:01:38', '', 48, 'http://localhost/mota/?p=52', 0, 'revision', '', 0),
(54, 1, '2024-02-05 10:01:39', '2024-02-05 09:01:39', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2024-02-05 10:01:39', '2024-02-05 09:01:39', '', 49, 'http://localhost/mota/?p=54', 0, 'revision', '', 0),
(61, 1, '2024-02-05 10:13:57', '2024-02-05 09:13:57', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">TEST</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2024-02-05 10:13:57', '2024-02-05 09:13:57', '', 49, 'http://localhost/mota/?p=61', 0, 'revision', '', 0),
(62, 1, '2024-02-05 10:14:53', '2024-02-05 09:14:53', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading -->\n<h2 class=\"wp-block-heading\">TEST A PROPOS</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'À propos', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2024-02-05 10:14:53', '2024-02-05 09:14:53', '', 48, 'http://localhost/mota/?p=62', 0, 'revision', '', 0),
(63, 1, '2024-02-05 10:15:57', '2024-02-05 09:15:57', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2024-02-05 10:15:57', '2024-02-05 09:15:57', '', 0, 'http://localhost/mota/?page_id=63', 0, 'page', '', 0),
(66, 1, '2024-02-05 10:15:57', '2024-02-05 09:15:57', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2024-02-05 10:15:57', '2024-02-05 09:15:57', '', 63, 'http://localhost/mota/?p=66', 0, 'revision', '', 0),
(67, 1, '2024-02-08 18:13:10', '2024-02-05 09:15:57', ' ', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2024-02-08 18:13:10', '2024-02-08 17:13:10', '', 0, 'http://localhost/mota/67/', 1, 'nav_menu_item', '', 0),
(71, 1, '2024-02-06 09:38:21', '2024-02-06 08:38:21', 'a:35:{s:9:\"post_type\";s:5:\"photo\";s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:5:\"cptui\";s:11:\"import_date\";i:1707209040;s:6:\"labels\";a:33:{s:4:\"name\";s:6:\"Photos\";s:13:\"singular_name\";s:5:\"Photo\";s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:14:\"filter_by_date\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";s:9:\"item_link\";s:0:\"\";s:21:\"item_link_description\";s:0:\"\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:1;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:13:\"menu_position\";i:6;s:9:\"menu_icon\";s:0:\"\";s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:15:\"page-attributes\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";i:4;s:12:\"post-formats\";}s:10:\"taxonomies\";a:2:{i:0;s:9:\"categorie\";i:1;s:6:\"format\";}s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:0;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Photos', 'photos', 'publish', 'closed', 'closed', '', 'post_type_65c1effd914b0', '', '', '2024-02-06 11:17:00', '2024-02-06 10:17:00', '', 0, 'http://localhost/mota/?post_type=acf-post-type&#038;p=71', 0, 'acf-post-type', '', 0),
(72, 1, '2024-02-06 09:38:21', '2024-02-06 08:38:21', 'a:29:{s:8:\"taxonomy\";s:9:\"categorie\";s:11:\"object_type\";a:1:{i:0;s:5:\"photo\";}s:22:\"advanced_configuration\";i:1;s:13:\"import_source\";s:5:\"cptui\";s:11:\"import_date\";i:1707209040;s:6:\"labels\";a:25:{s:4:\"name\";s:11:\"Catégories\";s:13:\"singular_name\";s:10:\"Catégorie\";s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:9:\"item_link\";s:0:\"\";s:21:\"item_link_description\";s:0:\"\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:13:\"show_tagcloud\";i:0;s:18:\"show_in_quick_edit\";i:0;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}', 'Catégories', 'categories', 'publish', 'closed', 'closed', '', 'taxonomy_65c1effd96548', '', '', '2024-02-07 19:03:31', '2024-02-07 18:03:31', '', 0, 'http://localhost/mota/?post_type=acf-taxonomy&#038;p=72', 0, 'acf-taxonomy', '', 0),
(73, 1, '2024-02-06 09:38:21', '2024-02-06 08:38:21', 'a:29:{s:8:\"taxonomy\";s:6:\"format\";s:11:\"object_type\";a:1:{i:0;s:5:\"photo\";}s:22:\"advanced_configuration\";b:1;s:13:\"import_source\";s:5:\"cptui\";s:11:\"import_date\";i:1707209040;s:6:\"labels\";a:29:{s:13:\"singular_name\";s:6:\"Format\";s:4:\"name\";s:7:\"Formats\";s:9:\"menu_name\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:14:\"filter_by_item\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:9:\"most_used\";s:0:\"\";s:13:\"back_to_items\";s:0:\"\";s:9:\"item_link\";s:0:\"\";s:21:\"item_link_description\";s:0:\"\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:13:\"show_tagcloud\";b:0;s:18:\"show_in_quick_edit\";s:0:\"\";s:17:\"show_admin_column\";b:0;s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:4:\"slug\";s:0:\"\";s:10:\"with_front\";b:1;s:20:\"rewrite_hierarchical\";b:0;}s:9:\"query_var\";s:12:\"taxonomy_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:4:{s:20:\"default_term_enabled\";b:0;s:17:\"default_term_name\";s:0:\"\";s:17:\"default_term_slug\";s:0:\"\";s:24:\"default_term_description\";s:0:\"\";}s:4:\"sort\";b:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}', 'Formats', 'formats', 'publish', 'closed', 'closed', '', 'taxonomy_65c1effd993e1', '', '', '2024-02-06 09:44:00', '2024-02-06 08:44:00', '', 0, 'http://localhost/mota/?post_type=acf-taxonomy&#038;p=73', 0, 'acf-taxonomy', '', 0),
(74, 1, '2024-02-06 10:06:50', '2024-02-06 09:06:50', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"photo\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Mes photos', 'mes-photos', 'publish', 'closed', 'closed', '', 'group_65c1f5f879166', '', '', '2024-02-09 14:12:20', '2024-02-09 13:12:20', '', 0, 'http://localhost/mota/?post_type=acf-field-group&#038;p=74', 0, 'acf-field-group', '', 0),
(76, 1, '2024-02-06 10:55:34', '2024-02-06 09:55:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:11:\"title-photo\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";i:70;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Titre', 'titre', 'publish', 'closed', 'closed', '', 'field_65c1fe5a3ba01', '', '', '2024-02-09 14:12:20', '2024-02-09 13:12:20', '', 74, 'http://localhost/mota/?post_type=acf-field&#038;p=76', 0, 'acf-field', '', 0),
(77, 1, '2024-02-06 10:55:34', '2024-02-06 09:55:34', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:107:\"La valeur s\'incrémente de 1 par rapport à la référence précédente. La photo a une référence unique.\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:9:\"ref-photo\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:2385;s:3:\"min\";i:2385;s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";i:1;s:7:\"prepend\";s:2:\"bf\";s:6:\"append\";s:0:\"\";}', 'Référence', 'reference', 'publish', 'closed', 'closed', '', 'field_65c1ff293ba02', '', '', '2024-02-09 14:12:20', '2024-02-09 13:12:20', '', 74, 'http://localhost/mota/?post_type=acf-field&#038;p=77', 1, 'acf-field', '', 0),
(78, 1, '2024-02-06 10:55:34', '2024-02-06 09:55:34', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:9:\"categorie\";s:8:\"add_term\";i:0;s:10:\"save_terms\";i:1;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:10:\"field_type\";s:6:\"select\";s:10:\"allow_null\";i:0;s:13:\"bidirectional\";i:0;s:8:\"multiple\";i:0;s:20:\"bidirectional_target\";a:0:{}}', 'Catégorie', 'categorie', 'publish', 'closed', 'closed', '', 'field_65c200073ba03', '', '', '2024-02-09 14:12:20', '2024-02-09 13:12:20', '', 74, 'http://localhost/mota/?post_type=acf-field&#038;p=78', 2, 'acf-field', '', 0),
(79, 1, '2024-02-06 10:55:34', '2024-02-06 09:55:34', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";i:4;s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Année', 'annee', 'publish', 'closed', 'closed', '', 'field_65c201453ba04', '', '', '2024-02-09 14:12:20', '2024-02-09 13:12:20', '', 74, 'http://localhost/mota/?post_type=acf-field&#038;p=79', 3, 'acf-field', '', 0),
(80, 1, '2024-02-06 10:55:34', '2024-02-06 09:55:34', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:6:\"format\";s:8:\"add_term\";i:0;s:10:\"save_terms\";i:1;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:2:\"id\";s:10:\"field_type\";s:6:\"select\";s:10:\"allow_null\";i:0;s:13:\"bidirectional\";i:0;s:8:\"multiple\";i:0;s:20:\"bidirectional_target\";a:0:{}}', 'Format', 'format', 'publish', 'closed', 'closed', '', 'field_65c2017c3ba05', '', '', '2024-02-09 14:12:20', '2024-02-09 13:12:20', '', 74, 'http://localhost/mota/?post_type=acf-field&#038;p=80', 4, 'acf-field', '', 0),
(81, 1, '2024-02-06 10:55:34', '2024-02-06 09:55:34', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:10:\"Argentique\";s:10:\"Argentique\";s:10:\"Numérique\";s:10:\"Numérique\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"label\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_65c201d23ba06', '', '', '2024-02-09 14:12:20', '2024-02-09 13:12:20', '', 74, 'http://localhost/mota/?post_type=acf-field&#038;p=81', 5, 'acf-field', '', 0),
(84, 1, '2024-02-06 10:59:21', '2024-02-06 09:59:21', '', 'Santé', '', 'inherit', 'open', 'closed', '', 'nathalie-0', '', '', '2024-02-06 11:13:03', '2024-02-06 10:13:03', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-0.webp', 0, 'attachment', 'image/webp', 0),
(85, 1, '2024-02-06 10:59:28', '2024-02-06 09:59:28', '', 'Et bon anniversaire !', '', 'inherit', 'open', 'closed', '', 'nathalie-1', '', '', '2024-02-06 12:05:00', '2024-02-06 11:05:00', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-1.webp', 0, 'attachment', 'image/webp', 0),
(86, 1, '2024-02-06 10:59:34', '2024-02-06 09:59:34', '', 'Let\'s party !', '', 'inherit', 'open', 'closed', '', 'nathalie-2', '', '', '2024-02-06 12:14:15', '2024-02-06 11:14:15', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-2.webp', 0, 'attachment', 'image/webp', 0),
(87, 1, '2024-02-06 10:59:37', '2024-02-06 09:59:37', '', 'Tout est installé', '', 'inherit', 'open', 'closed', '', 'nathalie-3', '', '', '2024-02-06 12:15:48', '2024-02-06 11:15:48', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-3.webp', 0, 'attachment', 'image/webp', 0),
(88, 1, '2024-02-06 10:59:42', '2024-02-06 09:59:42', '', 'Vers l\'éternité', '', 'inherit', 'open', 'closed', '', 'nathalie-4', '', '', '2024-02-06 12:18:33', '2024-02-06 11:18:33', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-4.webp', 0, 'attachment', 'image/webp', 0),
(89, 1, '2024-02-06 10:59:46', '2024-02-06 09:59:46', '', 'Embrassez la mariée', '', 'inherit', 'open', 'closed', '', 'nathalie-5', '', '', '2024-02-06 12:19:47', '2024-02-06 11:19:47', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-5.webp', 0, 'attachment', 'image/webp', 0),
(90, 1, '2024-02-06 10:59:51', '2024-02-06 09:59:51', '', 'Dansons ensemble', '', 'inherit', 'open', 'closed', '', 'nathalie-6', '', '', '2024-02-06 12:22:13', '2024-02-06 11:22:13', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-6.webp', 0, 'attachment', 'image/webp', 0),
(91, 1, '2024-02-06 10:59:56', '2024-02-06 09:59:56', '', 'Le menu', '', 'inherit', 'open', 'closed', '', 'nathalie-7', '', '', '2024-02-06 12:23:21', '2024-02-06 11:23:21', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-7.webp', 0, 'attachment', 'image/webp', 0),
(92, 1, '2024-02-06 10:59:59', '2024-02-06 09:59:59', '', 'Au bal masqué', '', 'inherit', 'open', 'closed', '', 'nathalie-8', '', '', '2024-02-06 12:24:38', '2024-02-06 11:24:38', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-8.webp', 0, 'attachment', 'image/webp', 0),
(93, 1, '2024-02-06 11:00:04', '2024-02-06 10:00:04', '', 'Let\'s dance !', '', 'inherit', 'open', 'closed', '', 'nathalie-9', '', '', '2024-02-06 12:26:06', '2024-02-06 11:26:06', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-9.webp', 0, 'attachment', 'image/webp', 0),
(94, 1, '2024-02-06 11:00:09', '2024-02-06 10:00:09', '', 'Jour de match', '', 'inherit', 'open', 'closed', '', 'nathalie-10', '', '', '2024-02-06 12:27:15', '2024-02-06 11:27:15', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-10.webp', 0, 'attachment', 'image/webp', 0),
(95, 1, '2024-02-06 11:00:14', '2024-02-06 10:00:14', '', 'Préparation', '', 'inherit', 'open', 'closed', '', 'nathalie-11', '', '', '2024-02-06 12:56:04', '2024-02-06 11:56:04', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-11.webp', 0, 'attachment', 'image/webp', 0),
(96, 1, '2024-02-06 11:00:19', '2024-02-06 10:00:19', '', 'Bière ou eau plate ?', '', 'inherit', 'open', 'closed', '', 'nathalie-12', '', '', '2024-02-06 12:57:35', '2024-02-06 11:57:35', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-12.webp', 0, 'attachment', 'image/webp', 0),
(97, 1, '2024-02-06 11:00:24', '2024-02-06 10:00:24', '', 'Bouquet final', '', 'inherit', 'open', 'closed', '', 'nathalie-13', '', '', '2024-02-06 13:07:37', '2024-02-06 12:07:37', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-13.webp', 0, 'attachment', 'image/webp', 0),
(98, 1, '2024-02-06 11:00:29', '2024-02-06 10:00:29', '', 'Du soir au matin', '', 'inherit', 'open', 'closed', '', 'nathalie-14', '', '', '2024-02-06 13:10:00', '2024-02-06 12:10:00', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-14.webp', 0, 'attachment', 'image/webp', 0),
(99, 1, '2024-02-06 11:00:33', '2024-02-06 10:00:33', '', 'Team mariée', '', 'inherit', 'open', 'closed', '', 'nathalie-15', '', '', '2024-02-06 13:10:48', '2024-02-06 12:10:48', '', 0, 'http://localhost/mota/wp-content/uploads/2024/02/nathalie-15.webp', 0, 'attachment', 'image/webp', 0),
(101, 1, '2024-02-06 11:25:30', '2024-02-06 10:25:30', '', 'Santé !', '', 'publish', 'closed', 'closed', '', 'sante', '', '', '2024-02-06 13:12:01', '2024-02-06 12:12:01', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=101', 0, 'photo', '', 0),
(108, 1, '2024-02-06 12:06:31', '2024-02-06 11:06:31', '', 'Et bon anniversaire !', '', 'publish', 'closed', 'closed', '', 'bon-anniversaire', '', '', '2024-02-06 12:13:00', '2024-02-06 11:13:00', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=108', 0, 'photo', '', 0),
(109, 1, '2024-02-06 12:15:03', '2024-02-06 11:15:03', '', 'Let\'s party !', '', 'publish', 'closed', 'closed', '', 'lets-party', '', '', '2024-02-06 12:15:03', '2024-02-06 11:15:03', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=109', 0, 'photo', '', 0),
(110, 1, '2024-02-06 12:17:06', '2024-02-06 11:17:06', '', 'Tout est installé', '', 'publish', 'closed', 'closed', '', 'tout-est-installe', '', '', '2024-02-06 12:17:06', '2024-02-06 11:17:06', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=110', 0, 'photo', '', 0),
(111, 1, '2024-02-06 12:19:13', '2024-02-06 11:19:13', '', 'Vers l\'éternité', '', 'publish', 'closed', 'closed', '', 'vers-leternite', '', '', '2024-02-06 12:19:13', '2024-02-06 11:19:13', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=111', 0, 'photo', '', 0),
(112, 1, '2024-02-06 12:20:24', '2024-02-06 11:20:24', '', 'Embrassez la mariée', '', 'publish', 'closed', 'closed', '', 'embrassez-la-mariee', '', '', '2024-02-06 12:20:24', '2024-02-06 11:20:24', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=112', 0, 'photo', '', 0),
(113, 1, '2024-02-06 12:22:49', '2024-02-06 11:22:49', '', 'Dansons ensemble', '', 'publish', 'closed', 'closed', '', 'dansons-ensemble', '', '', '2024-02-06 12:22:49', '2024-02-06 11:22:49', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=113', 0, 'photo', '', 0),
(114, 1, '2024-02-06 12:24:01', '2024-02-06 11:24:01', '', 'Le menu', '', 'publish', 'closed', 'closed', '', 'le-menu', '', '', '2024-02-06 12:24:01', '2024-02-06 11:24:01', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=114', 0, 'photo', '', 0),
(115, 1, '2024-02-06 12:25:25', '2024-02-06 11:25:25', '', 'Au bal masqué', '', 'publish', 'closed', 'closed', '', 'au-bal-masque', '', '', '2024-03-14 11:32:29', '2024-03-14 10:32:29', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=115', 9, 'photo', '', 0),
(116, 1, '2024-02-06 12:26:41', '2024-02-06 11:26:41', '', 'Let\'s dance !', '', 'publish', 'closed', 'closed', '', 'lets-dance', '', '', '2024-02-06 12:26:41', '2024-02-06 11:26:41', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=116', 0, 'photo', '', 0),
(117, 1, '2024-02-06 12:27:50', '2024-02-06 11:27:50', '', 'Jour de match', '', 'publish', 'closed', 'closed', '', 'jour-de-match', '', '', '2024-02-06 12:27:50', '2024-02-06 11:27:50', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=117', 0, 'photo', '', 0),
(118, 1, '2024-02-06 12:56:37', '2024-02-06 11:56:37', '', 'Préparation', '', 'publish', 'closed', 'closed', '', 'preparation', '', '', '2024-02-06 12:56:37', '2024-02-06 11:56:37', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=118', 0, 'photo', '', 0),
(119, 1, '2024-02-06 12:58:30', '2024-02-06 11:58:30', '', 'Bière ou eau plate ?', '', 'publish', 'closed', 'closed', '', 'biere-ou-eau-plate', '', '', '2024-03-24 10:24:16', '2024-03-24 09:24:16', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=119', 0, 'photo', '', 0),
(125, 1, '2024-02-06 13:08:08', '2024-02-06 12:08:08', '', 'Bouquet final', '', 'publish', 'closed', 'closed', '', 'bouquet-final', '', '', '2024-02-06 13:08:08', '2024-02-06 12:08:08', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=125', 0, 'photo', '', 0),
(126, 1, '2024-02-06 13:10:16', '2024-02-06 12:10:16', '', 'Du soir au matin', '', 'publish', 'closed', 'closed', '', 'du-soir-au-matin', '', '', '2024-02-06 13:10:16', '2024-02-06 12:10:16', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=126', 0, 'photo', '', 0),
(127, 1, '2024-02-06 13:11:35', '2024-02-06 12:11:35', '', 'Team mariée', '', 'publish', 'closed', 'closed', '', 'team-mariee', '', '', '2024-02-16 14:53:40', '2024-02-16 13:53:40', '', 0, 'http://localhost/mota/?post_type=photo&#038;p=127', 0, 'photo', '', 0),
(128, 1, '2024-02-07 09:18:10', '2024-02-07 08:18:10', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"></div>\n<!-- /wp:columns -->', 'À propos', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2024-02-07 09:18:10', '2024-02-07 08:18:10', '', 48, 'http://localhost/mota/?p=128', 0, 'revision', '', 0),
(129, 1, '2024-02-07 09:18:25', '2024-02-07 08:18:25', '<!-- wp:columns -->\n<div class=\"wp-block-columns\"></div>\n<!-- /wp:columns -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2024-02-07 09:18:25', '2024-02-07 08:18:25', '', 49, 'http://localhost/mota/?p=129', 0, 'revision', '', 0),
(136, 1, '2024-02-07 14:29:21', '2024-02-07 13:29:21', '<!-- wp:paragraph {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}},\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\" style=\"font-style:normal;font-weight:700\"><strong>Mentions légales</strong></p>\n<!-- /wp:paragraph -->', 'Mentions légales', '', 'publish', 'closed', 'closed', '', 'mentions-legales', '', '', '2024-02-08 09:47:16', '2024-02-08 08:47:16', '', 0, 'http://localhost/mota/?page_id=136', 0, 'page', '', 0),
(137, 1, '2024-02-07 14:29:21', '2024-02-07 13:29:21', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"><strong>Vie privée</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qui sommes-nous ?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adresse de notre site est : https://mota</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Commentaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici&nbsp;: https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Médias</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez «&nbsp;Se souvenir de moi&nbsp;», votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenu embarqué depuis d’autres sites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Où vos données sont envoyées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->', 'Vie privée', '', 'publish', 'closed', 'closed', '', 'vie-privee', '', '', '2024-02-08 09:48:19', '2024-02-08 08:48:19', '', 0, 'http://localhost/mota/?page_id=137', 0, 'page', '', 0),
(140, 1, '2024-02-07 14:29:21', '2024-02-07 13:29:21', '', 'Mentions légales', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2024-02-07 14:29:21', '2024-02-07 13:29:21', '', 136, 'http://localhost/mota/?p=140', 0, 'revision', '', 0),
(142, 1, '2024-02-07 14:29:21', '2024-02-07 13:29:21', '', 'Vie privée', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2024-02-07 14:29:21', '2024-02-07 13:29:21', '', 137, 'http://localhost/mota/?p=142', 0, 'revision', '', 0),
(143, 1, '2024-02-28 08:32:02', '2024-02-07 13:29:21', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2024-02-28 08:32:02', '2024-02-28 07:32:02', '', 0, 'http://localhost/mota/143/', 1, 'nav_menu_item', '', 0),
(144, 1, '2024-02-28 08:32:02', '2024-02-07 13:29:21', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2024-02-28 08:32:02', '2024-02-28 07:32:02', '', 0, 'http://localhost/mota/144/', 2, 'nav_menu_item', '', 0),
(145, 1, '2024-02-07 14:35:41', '2024-02-07 13:35:41', '', 'Tous droits réservés', '', 'publish', 'closed', 'closed', '', 'tous-droits-reserves', '', '', '2024-02-08 10:54:22', '2024-02-08 09:54:22', '', 0, 'http://localhost/mota/?page_id=145', 0, 'page', '', 0),
(147, 1, '2024-02-07 14:35:41', '2024-02-07 13:35:41', '', 'Tous droits réservés', '', 'inherit', 'closed', 'closed', '', '145-revision-v1', '', '', '2024-02-07 14:35:41', '2024-02-07 13:35:41', '', 145, 'http://localhost/mota/?p=147', 0, 'revision', '', 0),
(149, 1, '2024-02-07 14:37:08', '2024-02-07 13:37:08', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qui sommes-nous&nbsp;?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adresse de notre site est : https://mota.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Commentaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici&nbsp;: https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Médias</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez «&nbsp;Se souvenir de moi&nbsp;», votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenu embarqué depuis d’autres sites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Où vos données sont envoyées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->', 'Vie privée', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2024-02-07 14:37:08', '2024-02-07 13:37:08', '', 137, 'http://localhost/mota/?p=149', 0, 'revision', '', 0),
(154, 1, '2024-02-08 09:27:25', '2024-02-08 08:27:25', '<!-- wp:paragraph -->\n<p>PAGE CONTACT</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2024-02-08 09:27:25', '2024-02-08 08:27:25', '', 49, 'http://localhost/mota/?p=154', 0, 'revision', '', 0),
(155, 1, '2024-02-08 09:33:43', '2024-02-08 08:33:43', '<!-- wp:paragraph -->\n<p>PAGE A PROPOS</p>\n<!-- /wp:paragraph -->', 'À propos', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2024-02-08 09:33:43', '2024-02-08 08:33:43', '', 48, 'http://localhost/mota/?p=155', 0, 'revision', '', 0),
(156, 1, '2024-02-08 09:43:13', '2024-02-08 08:43:13', '', 'À propos', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2024-02-08 09:43:13', '2024-02-08 08:43:13', '', 48, 'http://localhost/mota/?p=156', 0, 'revision', '', 0),
(158, 1, '2024-02-08 09:47:16', '2024-02-08 08:47:16', '<!-- wp:paragraph {\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}},\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\" style=\"font-style:normal;font-weight:700\"><strong>Mentions légales</strong></p>\n<!-- /wp:paragraph -->', 'Mentions légales', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2024-02-08 09:47:16', '2024-02-08 08:47:16', '', 136, 'http://localhost/mota/?p=158', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(159, 1, '2024-02-08 09:47:58', '2024-02-08 08:47:58', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"><strong>Vie privée</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qui sommes-nous ?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adresse de notre site est&nbsp;: https://mota.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Commentaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici&nbsp;: https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Médias</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez «&nbsp;Se souvenir de moi&nbsp;», votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenu embarqué depuis d’autres sites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Où vos données sont envoyées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->', 'Vie privée', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2024-02-08 09:47:58', '2024-02-08 08:47:58', '', 137, 'http://localhost/mota/?p=159', 0, 'revision', '', 0),
(160, 1, '2024-02-08 09:48:19', '2024-02-08 08:48:19', '<!-- wp:paragraph {\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"><strong>Vie privée</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Qui sommes-nous ?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adresse de notre site est : https://mota</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Commentaires</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici&nbsp;: https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Médias</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez «&nbsp;Se souvenir de moi&nbsp;», votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Contenu embarqué depuis d’autres sites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Utilisation et transmission de vos données personnelles</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Durées de stockage de vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Les droits que vous avez sur vos données</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Où vos données sont envoyées</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p>\n<!-- /wp:paragraph -->', 'Vie privée', '', 'inherit', 'closed', 'closed', '', '137-revision-v1', '', '', '2024-02-08 09:48:19', '2024-02-08 08:48:19', '', 137, 'http://localhost/mota/?p=160', 0, 'revision', '', 0),
(161, 1, '2024-02-08 09:50:44', '2024-02-08 08:50:44', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '49-autosave-v1', '', '', '2024-02-08 09:50:44', '2024-02-08 08:50:44', '', 49, 'http://localhost/mota/?p=161', 0, 'revision', '', 0),
(162, 1, '2024-02-08 09:53:46', '2024-02-08 08:53:46', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2024-02-08 09:53:46', '2024-02-08 08:53:46', '', 49, 'http://localhost/mota/?p=162', 0, 'revision', '', 0),
(163, 1, '2024-02-08 10:55:07', '2024-02-08 09:55:07', '', 'Tous droits réservés', '', 'inherit', 'closed', 'closed', '', '145-autosave-v1', '', '', '2024-02-08 10:55:07', '2024-02-08 09:55:07', '', 145, 'http://localhost/mota/?p=163', 0, 'revision', '', 0),
(164, 1, '2025-03-13 14:45:55', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-03-13 14:45:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/mota/?p=164', 0, 'post', '', 0),
(165, 1, '2025-03-13 15:05:56', '0000-00-00 00:00:00', '{\n    \"nav_menu_item[-645211712139167700]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-03-13 14:04:56\"\n    },\n    \"nav_menu_item[-1282757222394712000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-03-13 14:05:56\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '35c3ae24-5eef-48ca-961a-1e526ef439c3', '', '', '2025-03-13 15:05:56', '2025-03-13 14:05:56', '', 0, 'http://localhost/mota/?p=165', 0, 'customize_changeset', '', 0),
(166, 1, '2025-03-13 15:22:45', '2025-03-13 14:22:45', '{\n    \"nav_menu_item[51]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-03-13 14:22:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4f8c8fa9-1d1a-49ad-ab3c-db54d8148a2a', '', '', '2025-03-13 15:22:45', '2025-03-13 14:22:45', '', 0, 'http://localhost/mota/4f8c8fa9-1d1a-49ad-ab3c-db54d8148a2a/', 0, 'customize_changeset', '', 0),
(168, 1, '2025-03-13 15:46:53', '2025-03-13 14:46:53', '{\n    \"nav_menu_item[-6659795683814599000]\": {\n        \"value\": {\n            \"object_id\": 48,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u00c0 propos\",\n            \"url\": \"http://localhost/mota/mentions-legales/a-propos/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u00c0 propos\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-03-13 14:46:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b8ddb224-5f78-41b6-b0f0-14aa9c4641c2', '', '', '2025-03-13 15:46:53', '2025-03-13 14:46:53', '', 0, 'http://localhost/mota/b8ddb224-5f78-41b6-b0f0-14aa9c4641c2/', 0, 'customize_changeset', '', 0),
(170, 1, '2025-03-13 15:48:30', '2025-03-13 14:48:30', '{\n    \"nav_menu_item[169]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-03-13 14:48:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '254a2bd0-49e0-4415-bca5-3b49bd41eb29', '', '', '2025-03-13 15:48:30', '2025-03-13 14:48:30', '', 0, 'http://localhost/mota/254a2bd0-49e0-4415-bca5-3b49bd41eb29/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu', 'menu', 0),
(8, 'Mariage', 'mariage', 0),
(9, 'Concert', 'concert', 0),
(10, 'Télévision', 'television', 0),
(11, 'Réception', 'reception', 0),
(12, 'paysage', 'paysage', 0),
(13, 'portrait', 'portrait', 0),
(14, 'Footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(67, 2, 0),
(101, 11, 0),
(101, 12, 0),
(106, 11, 0),
(106, 12, 0),
(108, 11, 0),
(108, 12, 0),
(109, 9, 0),
(109, 12, 0),
(110, 8, 0),
(110, 13, 0),
(111, 8, 0),
(111, 13, 0),
(112, 8, 0),
(112, 13, 0),
(113, 8, 0),
(113, 12, 0),
(114, 8, 0),
(114, 12, 0),
(115, 9, 0),
(115, 13, 0),
(116, 8, 0),
(116, 12, 0),
(117, 10, 0),
(117, 12, 0),
(118, 9, 0),
(118, 12, 0),
(119, 9, 0),
(119, 12, 0),
(125, 8, 0),
(125, 13, 0),
(126, 8, 0),
(126, 13, 0),
(127, 8, 0),
(127, 13, 0),
(143, 14, 0),
(144, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 1),
(8, 8, 'categorie', '', 0, 9),
(9, 9, 'categorie', '', 0, 4),
(10, 10, 'categorie', '', 0, 1),
(11, 11, 'categorie', '', 0, 2),
(12, 12, 'format', '', 0, 9),
(13, 13, 'format', '', 0, 7),
(14, 14, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'DeniseMota'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"0da2491c7eccba082c5a5406d0ae256a0fbdf35843e0c680ded4f7d0b781b22c\";a:4:{s:10:\"expiration\";i:1742046353;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36\";s:5:\"login\";i:1741873553;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1706275605'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '164'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(23, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(24, 1, 'acf_user_settings', 'a:2:{s:20:\"taxonomies-first-run\";b:1;s:19:\"post-type-first-run\";b:1;}'),
(25, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(26, 1, 'nav_menu_recently_edited', '2'),
(27, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(29, 1, 'wp_persisted_preferences', 'a:5:{s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-03-13T14:43:27.940Z\";s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";}}s:4:\"core\";a:2:{s:10:\"openPanels\";a:5:{i:0;s:16:\"discussion-panel\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:15:\"page-attributes\";i:3;s:11:\"post-status\";i:4;s:14:\"featured-image\";}s:29:\"isTemplatePartMoveHintVisible\";b:0;}s:14:\"core/edit-site\";a:2:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:1;}}'),
(30, 1, 'closedpostboxes_photo', 'a:0:{}'),
(31, 1, 'metaboxhidden_photo', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'DeniseMota', '$P$BWP/o.RGfVZxuoarkd0Ft9zmcBk.1k1', 'denisemota', 'deniseden.c@gmail.com', 'http://localhost/mota', '2024-01-26 13:23:23', '', 0, 'DeniseMota');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1786;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=689;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
