-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 02:25 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_db`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-08-25 12:55:40', '2021-08-25 15:55:40', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

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
(1, 'siteurl', 'http://localhost/origamid/testewp', 'yes'),
(2, 'home', 'http://localhost/origamid/testewp', 'yes'),
(3, 'blogname', 'Rest', 'yes'),
(4, 'blogdescription', 'Site do restaurante Rest', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'gibapacce@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:39:\"disable-gutenberg/disable-gutenberg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'rest', 'yes'),
(41, 'stylesheet', 'rest', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
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
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1645458939', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1630414541;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1630425341;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630425355;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630425356;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1630598141;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1629935202;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(129, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.8.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1630410760;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1630410760;s:7:\"checked\";a:1:{s:4:\"rest\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(132, '_site_transient_timeout_browser_e7357045893787cf46d83798320778c0', '1630511755', 'no'),
(133, '_site_transient_browser_e7357045893787cf46d83798320778c0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"93.0.4577.51\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89', '1630511756', 'no'),
(135, '_site_transient_php_check_472f71d2a071d463a95f84346288dc89', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(143, 'can_compress_scripts', '1', 'no'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(161, '_site_transient_timeout_browser_c78f5492efd49a40e1dcb29eeddb03f9', '1630539707', 'no'),
(162, '_site_transient_browser_c78f5492efd49a40e1dcb29eeddb03f9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"93.0.4577.58\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(164, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(165, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'current_theme', 'Rest', 'yes'),
(177, 'theme_mods_rest', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(178, 'theme_switched', '', 'yes'),
(181, 'new_admin_email', 'gibapacce@gmail.com', 'yes'),
(195, 'acf_version', '5.8.2', 'yes'),
(197, 'category_children', 'a:0:{}', 'yes'),
(219, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":6,\"critical\":1}', 'yes'),
(248, '_transient_timeout_acf_plugin_updates', '1630583418', 'no'),
(249, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.10.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.2\";}}', 'no'),
(250, '_site_transient_timeout_theme_roots', '1630412418', 'no'),
(251, '_site_transient_theme_roots', 'a:1:{s:4:\"rest\";s:7:\"/themes\";}', 'no'),
(252, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1630410758;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.10.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.8\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}}', 'no'),
(254, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');

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
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_wp_trash_meta_status', 'publish'),
(4, 1, '_wp_trash_meta_time', '1629907027'),
(5, 1, '_wp_desired_post_slug', 'ola-mundo'),
(6, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(7, 2, '_wp_trash_meta_status', 'publish'),
(8, 2, '_wp_trash_meta_time', '1629907034'),
(9, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(10, 3, '_wp_trash_meta_status', 'draft'),
(11, 3, '_wp_trash_meta_time', '1629907036'),
(12, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(13, 8, '_edit_lock', '1629907012:1'),
(14, 9, '_edit_lock', '1629935138:1'),
(15, 10, '_edit_last', '1'),
(16, 10, '_wp_page_template', 'page-home.php'),
(17, 10, '_edit_lock', '1630080509:1'),
(18, 12, '_edit_last', '1'),
(19, 12, '_wp_page_template', 'page-contato.php'),
(20, 12, '_edit_lock', '1630080825:1'),
(21, 14, '_edit_last', '1'),
(22, 14, '_wp_page_template', 'page-sobre.php'),
(23, 14, '_edit_lock', '1630080684:1'),
(26, 17, '_edit_last', '1'),
(27, 17, '_edit_lock', '1629939639:1'),
(28, 14, 'titulo_historia', 'História'),
(29, 14, '_titulo_historia', 'field_6126def6ef901'),
(30, 14, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(31, 14, '_texto_da_historia', 'field_6126dd99ef900'),
(32, 20, 'titulo_historia', 'História'),
(33, 20, '_titulo_historia', 'field_6126def6ef901'),
(34, 20, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(35, 20, '_texto_da_historia', 'field_6126dd99ef900'),
(36, 21, 'titulo_historia', 'História'),
(37, 21, '_titulo_historia', 'field_6126def6ef901'),
(38, 21, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(39, 21, '_texto_da_historia', 'field_6126dd99ef900'),
(40, 22, 'titulo_historia', 'História'),
(41, 22, '_titulo_historia', 'field_6126def6ef901'),
(42, 22, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(43, 22, '_texto_da_historia', 'field_6126dd99ef900'),
(44, 14, 'titulo_visao', 'VIsão'),
(45, 14, '_titulo_visao', 'field_6126e1c4289c7'),
(46, 14, 'texto_da_visao', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(47, 14, '_texto_da_visao', 'field_6126e1e9289c8'),
(48, 26, 'titulo_historia', 'História'),
(49, 26, '_titulo_historia', 'field_6126def6ef901'),
(50, 26, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(51, 26, '_texto_da_historia', 'field_6126dd99ef900'),
(52, 26, 'titulo_visao', 'VIsão'),
(53, 26, '_titulo_visao', 'field_6126e1c4289c7'),
(54, 26, 'texto_da_visao', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(55, 26, '_texto_da_visao', 'field_6126e1e9289c8'),
(56, 14, 'titulo_valores', 'Valores'),
(57, 14, '_titulo_valores', 'field_6126e291cc79c'),
(58, 14, 'texto_de_valores', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(59, 14, '_texto_de_valores', 'field_6126e29ecc79d'),
(60, 29, 'titulo_historia', 'História'),
(61, 29, '_titulo_historia', 'field_6126def6ef901'),
(62, 29, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(63, 29, '_texto_da_historia', 'field_6126dd99ef900'),
(64, 29, 'titulo_visao', 'VIsão'),
(65, 29, '_titulo_visao', 'field_6126e1c4289c7'),
(66, 29, 'texto_da_visao', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(67, 29, '_texto_da_visao', 'field_6126e1e9289c8'),
(68, 29, 'titulo_valores', 'Valores'),
(69, 29, '_titulo_valores', 'field_6126e291cc79c'),
(70, 29, 'texto_de_valores', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(71, 29, '_texto_de_valores', 'field_6126e29ecc79d'),
(72, 30, 'titulo_historia', 'História'),
(73, 30, '_titulo_historia', 'field_6126def6ef901'),
(74, 30, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(75, 30, '_texto_da_historia', 'field_6126dd99ef900'),
(76, 30, 'titulo_visao', 'VIsão'),
(77, 30, '_titulo_visao', 'field_6126e1c4289c7'),
(78, 30, 'texto_da_visao', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(79, 30, '_texto_da_visao', 'field_6126e1e9289c8'),
(80, 30, 'titulo_valores', 'Valores'),
(81, 30, '_titulo_valores', 'field_6126e291cc79c'),
(82, 30, 'texto_de_valores', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(83, 30, '_texto_de_valores', 'field_6126e29ecc79d'),
(84, 33, '_wp_attached_file', '2021/08/rest-fachada.jpg'),
(85, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:690;s:6:\"height\";i:940;s:4:\"file\";s:24:\"2021/08/rest-fachada.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"rest-fachada-220x300.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"rest-fachada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 14, 'foto_rest', '33'),
(87, 14, '_foto_rest', 'field_6126e3b92bea3'),
(88, 14, 'foto_rest_descricao', 'Fachada do Rest'),
(89, 14, '_foto_rest_descricao', 'field_6126e4532bea4'),
(90, 34, 'titulo_historia', 'História'),
(91, 34, '_titulo_historia', 'field_6126def6ef901'),
(92, 34, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(93, 34, '_texto_da_historia', 'field_6126dd99ef900'),
(94, 34, 'titulo_visao', 'VIsão'),
(95, 34, '_titulo_visao', 'field_6126e1c4289c7'),
(96, 34, 'texto_da_visao', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(97, 34, '_texto_da_visao', 'field_6126e1e9289c8'),
(98, 34, 'titulo_valores', 'Valores'),
(99, 34, '_titulo_valores', 'field_6126e291cc79c'),
(100, 34, 'texto_de_valores', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(101, 34, '_texto_de_valores', 'field_6126e29ecc79d'),
(102, 34, 'foto_rest', '33'),
(103, 34, '_foto_rest', 'field_6126e3b92bea3'),
(104, 34, 'foto_rest_descricao', 'Fachada do Rest'),
(105, 34, '_foto_rest_descricao', 'field_6126e4532bea4'),
(106, 14, 'conteudo_sobre_0_titulo_sobre', 'História'),
(107, 14, '_conteudo_sobre_0_titulo_sobre', 'field_6126e72e826ad'),
(108, 14, 'conteudo_sobre_0_texto_sobre', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n'),
(109, 14, '_conteudo_sobre_0_texto_sobre', 'field_6126e74a826ae'),
(110, 14, 'conteudo_sobre_1_titulo_sobre', 'Visão'),
(111, 14, '_conteudo_sobre_1_titulo_sobre', 'field_6126e72e826ad'),
(112, 14, 'conteudo_sobre_1_texto_sobre', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(113, 14, '_conteudo_sobre_1_texto_sobre', 'field_6126e74a826ae'),
(114, 14, 'conteudo_sobre_2_titulo_sobre', 'Valores'),
(115, 14, '_conteudo_sobre_2_titulo_sobre', 'field_6126e72e826ad'),
(116, 14, 'conteudo_sobre_2_texto_sobre', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(117, 14, '_conteudo_sobre_2_texto_sobre', 'field_6126e74a826ae'),
(118, 14, 'conteudo_sobre', '4'),
(119, 14, '_conteudo_sobre', 'field_6126e70f826ac'),
(120, 38, 'titulo_historia', 'História'),
(121, 38, '_titulo_historia', 'field_6126def6ef901'),
(122, 38, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(123, 38, '_texto_da_historia', 'field_6126dd99ef900'),
(124, 38, 'titulo_visao', 'VIsão'),
(125, 38, '_titulo_visao', 'field_6126e1c4289c7'),
(126, 38, 'texto_da_visao', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(127, 38, '_texto_da_visao', 'field_6126e1e9289c8'),
(128, 38, 'titulo_valores', 'Valores'),
(129, 38, '_titulo_valores', 'field_6126e291cc79c'),
(130, 38, 'texto_de_valores', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(131, 38, '_texto_de_valores', 'field_6126e29ecc79d'),
(132, 38, 'foto_rest', '33'),
(133, 38, '_foto_rest', 'field_6126e3b92bea3'),
(134, 38, 'foto_rest_descricao', 'Fachada do Rest'),
(135, 38, '_foto_rest_descricao', 'field_6126e4532bea4'),
(136, 38, 'conteudo_sobre_0_titulo_sobre', 'História'),
(137, 38, '_conteudo_sobre_0_titulo_sobre', 'field_6126e72e826ad'),
(138, 38, 'conteudo_sobre_0_texto_sobre', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(139, 38, '_conteudo_sobre_0_texto_sobre', 'field_6126e74a826ae'),
(140, 38, 'conteudo_sobre_1_titulo_sobre', 'Visão'),
(141, 38, '_conteudo_sobre_1_titulo_sobre', 'field_6126e72e826ad'),
(142, 38, 'conteudo_sobre_1_texto_sobre', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(143, 38, '_conteudo_sobre_1_texto_sobre', 'field_6126e74a826ae'),
(144, 38, 'conteudo_sobre_2_titulo_sobre', 'Valores'),
(145, 38, '_conteudo_sobre_2_titulo_sobre', 'field_6126e72e826ad'),
(146, 38, 'conteudo_sobre_2_texto_sobre', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(147, 38, '_conteudo_sobre_2_texto_sobre', 'field_6126e74a826ae'),
(148, 38, 'conteudo_sobre', '3'),
(149, 38, '_conteudo_sobre', 'field_6126e70f826ac'),
(150, 14, 'conteudo_sobre_3_titulo_sobre', 'Missão'),
(151, 14, '_conteudo_sobre_3_titulo_sobre', 'field_6126e72e826ad'),
(152, 14, 'conteudo_sobre_3_texto_sobre', 'Gostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(153, 14, '_conteudo_sobre_3_texto_sobre', 'field_6126e74a826ae'),
(154, 39, 'titulo_historia', 'História'),
(155, 39, '_titulo_historia', 'field_6126def6ef901'),
(156, 39, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(157, 39, '_texto_da_historia', 'field_6126dd99ef900'),
(158, 39, 'titulo_visao', 'VIsão'),
(159, 39, '_titulo_visao', 'field_6126e1c4289c7'),
(160, 39, 'texto_da_visao', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(161, 39, '_texto_da_visao', 'field_6126e1e9289c8'),
(162, 39, 'titulo_valores', 'Valores'),
(163, 39, '_titulo_valores', 'field_6126e291cc79c'),
(164, 39, 'texto_de_valores', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(165, 39, '_texto_de_valores', 'field_6126e29ecc79d'),
(166, 39, 'foto_rest', '33'),
(167, 39, '_foto_rest', 'field_6126e3b92bea3'),
(168, 39, 'foto_rest_descricao', 'Fachada do Rest'),
(169, 39, '_foto_rest_descricao', 'field_6126e4532bea4'),
(170, 39, 'conteudo_sobre_0_titulo_sobre', 'História'),
(171, 39, '_conteudo_sobre_0_titulo_sobre', 'field_6126e72e826ad'),
(172, 39, 'conteudo_sobre_0_texto_sobre', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n'),
(173, 39, '_conteudo_sobre_0_texto_sobre', 'field_6126e74a826ae'),
(174, 39, 'conteudo_sobre_1_titulo_sobre', 'Visão'),
(175, 39, '_conteudo_sobre_1_titulo_sobre', 'field_6126e72e826ad'),
(176, 39, 'conteudo_sobre_1_texto_sobre', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(177, 39, '_conteudo_sobre_1_texto_sobre', 'field_6126e74a826ae'),
(178, 39, 'conteudo_sobre_2_titulo_sobre', 'Valores'),
(179, 39, '_conteudo_sobre_2_titulo_sobre', 'field_6126e72e826ad'),
(180, 39, 'conteudo_sobre_2_texto_sobre', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(181, 39, '_conteudo_sobre_2_texto_sobre', 'field_6126e74a826ae'),
(182, 39, 'conteudo_sobre', '4'),
(183, 39, '_conteudo_sobre', 'field_6126e70f826ac'),
(184, 39, 'conteudo_sobre_3_titulo_sobre', 'Missão'),
(185, 39, '_conteudo_sobre_3_titulo_sobre', 'field_6126e72e826ad'),
(186, 39, 'conteudo_sobre_3_texto_sobre', '\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(187, 39, '_conteudo_sobre_3_texto_sobre', 'field_6126e74a826ae'),
(188, 40, '_edit_last', '1'),
(189, 40, '_edit_lock', '1629941220:1'),
(190, 10, 'categoria_menu_0_nome_categoria', 'Carnes'),
(191, 10, '_categoria_menu_0_nome_categoria', 'field_6126ec64ad48f'),
(192, 10, 'categoria_menu_0_prato_menu_0_preco_prato', '159'),
(193, 10, '_categoria_menu_0_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(194, 10, 'categoria_menu_0_prato_menu_0_nome_prato', 'Hamburger Artesanal'),
(195, 10, '_categoria_menu_0_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(196, 10, 'categoria_menu_0_prato_menu_0_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(197, 10, '_categoria_menu_0_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(198, 10, 'categoria_menu_0_prato_menu_1_preco_prato', '125'),
(199, 10, '_categoria_menu_0_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(200, 10, 'categoria_menu_0_prato_menu_1_nome_prato', 'Picanha na brasa'),
(201, 10, '_categoria_menu_0_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(202, 10, 'categoria_menu_0_prato_menu_1_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(203, 10, '_categoria_menu_0_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(204, 10, 'categoria_menu_0_prato_menu_2_preco_prato', '89'),
(205, 10, '_categoria_menu_0_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(206, 10, 'categoria_menu_0_prato_menu_2_nome_prato', 'Cupim no Bafo'),
(207, 10, '_categoria_menu_0_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(208, 10, 'categoria_menu_0_prato_menu_2_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(209, 10, '_categoria_menu_0_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(210, 10, 'categoria_menu_0_prato_menu', '3'),
(211, 10, '_categoria_menu_0_prato_menu', 'field_6126ed1c0301f'),
(212, 10, 'categoria_menu_1_nome_categoria', 'Peixes'),
(213, 10, '_categoria_menu_1_nome_categoria', 'field_6126ec64ad48f'),
(214, 10, 'categoria_menu_1_prato_menu_0_preco_prato', '139'),
(215, 10, '_categoria_menu_1_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(216, 10, 'categoria_menu_1_prato_menu_0_nome_prato', 'Camarão Grelhado'),
(217, 10, '_categoria_menu_1_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(218, 10, 'categoria_menu_1_prato_menu_0_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(219, 10, '_categoria_menu_1_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(220, 10, 'categoria_menu_1_prato_menu_1_preco_prato', '65'),
(221, 10, '_categoria_menu_1_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(222, 10, 'categoria_menu_1_prato_menu_1_nome_prato', 'Salmão ao alho e óleo'),
(223, 10, '_categoria_menu_1_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(224, 10, 'categoria_menu_1_prato_menu_1_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(225, 10, '_categoria_menu_1_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(226, 10, 'categoria_menu_1_prato_menu_2_preco_prato', '49'),
(227, 10, '_categoria_menu_1_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(228, 10, 'categoria_menu_1_prato_menu_2_nome_prato', 'Sardinha na Cerveja'),
(229, 10, '_categoria_menu_1_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(230, 10, 'categoria_menu_1_prato_menu_2_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(231, 10, '_categoria_menu_1_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(232, 10, 'categoria_menu_1_prato_menu', '3'),
(233, 10, '_categoria_menu_1_prato_menu', 'field_6126ed1c0301f'),
(234, 10, 'categoria_menu', '4'),
(235, 10, '_categoria_menu', 'field_6126ec47ad48e'),
(236, 48, 'categoria_menu_0_nome_categoria', 'Carnes'),
(237, 48, '_categoria_menu_0_nome_categoria', 'field_6126ec64ad48f'),
(238, 48, 'categoria_menu_0_prato_menu_0_preco_prato', '125'),
(239, 48, '_categoria_menu_0_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(240, 48, 'categoria_menu_0_prato_menu_0_nome_prato', 'Picanha na brasa'),
(241, 48, '_categoria_menu_0_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(242, 48, 'categoria_menu_0_prato_menu_0_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(243, 48, '_categoria_menu_0_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(244, 48, 'categoria_menu_0_prato_menu_1_preco_prato', '89'),
(245, 48, '_categoria_menu_0_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(246, 48, 'categoria_menu_0_prato_menu_1_nome_prato', 'Cupim no Bafo'),
(247, 48, '_categoria_menu_0_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(248, 48, 'categoria_menu_0_prato_menu_1_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(249, 48, '_categoria_menu_0_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(250, 48, 'categoria_menu_0_prato_menu_2_preco_prato', '159'),
(251, 48, '_categoria_menu_0_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(252, 48, 'categoria_menu_0_prato_menu_2_nome_prato', 'Hamburger Artesanal'),
(253, 48, '_categoria_menu_0_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(254, 48, 'categoria_menu_0_prato_menu_2_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(255, 48, '_categoria_menu_0_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(256, 48, 'categoria_menu_0_prato_menu', '3'),
(257, 48, '_categoria_menu_0_prato_menu', 'field_6126ed1c0301f'),
(258, 48, 'categoria_menu_1_nome_categoria', 'Peixes'),
(259, 48, '_categoria_menu_1_nome_categoria', 'field_6126ec64ad48f'),
(260, 48, 'categoria_menu_1_prato_menu_0_preco_prato', '65'),
(261, 48, '_categoria_menu_1_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(262, 48, 'categoria_menu_1_prato_menu_0_nome_prato', 'Salmão ao alho e óleo'),
(263, 48, '_categoria_menu_1_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(264, 48, 'categoria_menu_1_prato_menu_0_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(265, 48, '_categoria_menu_1_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(266, 48, 'categoria_menu_1_prato_menu_1_preco_prato', '49'),
(267, 48, '_categoria_menu_1_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(268, 48, 'categoria_menu_1_prato_menu_1_nome_prato', 'Sardinha na Cerveja'),
(269, 48, '_categoria_menu_1_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(270, 48, 'categoria_menu_1_prato_menu_1_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(271, 48, '_categoria_menu_1_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(272, 48, 'categoria_menu_1_prato_menu_2_preco_prato', '139'),
(273, 48, '_categoria_menu_1_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(274, 48, 'categoria_menu_1_prato_menu_2_nome_prato', 'Camarão Grelhado'),
(275, 48, '_categoria_menu_1_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(276, 48, 'categoria_menu_1_prato_menu_2_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(277, 48, '_categoria_menu_1_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(278, 48, 'categoria_menu_1_prato_menu', '3'),
(279, 48, '_categoria_menu_1_prato_menu', 'field_6126ed1c0301f'),
(280, 48, 'categoria_menu', '2'),
(281, 48, '_categoria_menu', 'field_6126ec47ad48e'),
(282, 10, 'categoria_menu_2_nome_categoria', 'Queijos'),
(283, 10, '_categoria_menu_2_nome_categoria', 'field_6126ec64ad48f'),
(284, 10, 'categoria_menu_2_prato_menu_0_preco_prato', '29'),
(285, 10, '_categoria_menu_2_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(286, 10, 'categoria_menu_2_prato_menu_0_nome_prato', 'Parmesão Assado'),
(287, 10, '_categoria_menu_2_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(288, 10, 'categoria_menu_2_prato_menu_0_descricao_prato', 'Parmesão assado na chapa.'),
(289, 10, '_categoria_menu_2_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(290, 10, 'categoria_menu_2_prato_menu', '1'),
(291, 10, '_categoria_menu_2_prato_menu', 'field_6126ed1c0301f'),
(292, 49, 'categoria_menu_0_nome_categoria', 'Carnes'),
(293, 49, '_categoria_menu_0_nome_categoria', 'field_6126ec64ad48f'),
(294, 49, 'categoria_menu_0_prato_menu_0_preco_prato', '125'),
(295, 49, '_categoria_menu_0_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(296, 49, 'categoria_menu_0_prato_menu_0_nome_prato', 'Picanha na brasa'),
(297, 49, '_categoria_menu_0_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(298, 49, 'categoria_menu_0_prato_menu_0_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(299, 49, '_categoria_menu_0_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(300, 49, 'categoria_menu_0_prato_menu_1_preco_prato', '89'),
(301, 49, '_categoria_menu_0_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(302, 49, 'categoria_menu_0_prato_menu_1_nome_prato', 'Cupim no Bafo'),
(303, 49, '_categoria_menu_0_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(304, 49, 'categoria_menu_0_prato_menu_1_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(305, 49, '_categoria_menu_0_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(306, 49, 'categoria_menu_0_prato_menu_2_preco_prato', '159'),
(307, 49, '_categoria_menu_0_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(308, 49, 'categoria_menu_0_prato_menu_2_nome_prato', 'Hamburger Artesanal'),
(309, 49, '_categoria_menu_0_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(310, 49, 'categoria_menu_0_prato_menu_2_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(311, 49, '_categoria_menu_0_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(312, 49, 'categoria_menu_0_prato_menu', '3'),
(313, 49, '_categoria_menu_0_prato_menu', 'field_6126ed1c0301f'),
(314, 49, 'categoria_menu_1_nome_categoria', 'Peixes'),
(315, 49, '_categoria_menu_1_nome_categoria', 'field_6126ec64ad48f'),
(316, 49, 'categoria_menu_1_prato_menu_0_preco_prato', '65'),
(317, 49, '_categoria_menu_1_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(318, 49, 'categoria_menu_1_prato_menu_0_nome_prato', 'Salmão ao alho e óleo'),
(319, 49, '_categoria_menu_1_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(320, 49, 'categoria_menu_1_prato_menu_0_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(321, 49, '_categoria_menu_1_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(322, 49, 'categoria_menu_1_prato_menu_1_preco_prato', '49'),
(323, 49, '_categoria_menu_1_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(324, 49, 'categoria_menu_1_prato_menu_1_nome_prato', 'Sardinha na Cerveja'),
(325, 49, '_categoria_menu_1_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(326, 49, 'categoria_menu_1_prato_menu_1_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(327, 49, '_categoria_menu_1_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(328, 49, 'categoria_menu_1_prato_menu_2_preco_prato', '139'),
(329, 49, '_categoria_menu_1_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(330, 49, 'categoria_menu_1_prato_menu_2_nome_prato', 'Camarão Grelhado'),
(331, 49, '_categoria_menu_1_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(332, 49, 'categoria_menu_1_prato_menu_2_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(333, 49, '_categoria_menu_1_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(334, 49, 'categoria_menu_1_prato_menu', '3'),
(335, 49, '_categoria_menu_1_prato_menu', 'field_6126ed1c0301f'),
(336, 49, 'categoria_menu', '3'),
(337, 49, '_categoria_menu', 'field_6126ec47ad48e'),
(338, 49, 'categoria_menu_2_nome_categoria', 'Queijos'),
(339, 49, '_categoria_menu_2_nome_categoria', 'field_6126ec64ad48f'),
(340, 49, 'categoria_menu_2_prato_menu_0_preco_prato', '29'),
(341, 49, '_categoria_menu_2_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(342, 49, 'categoria_menu_2_prato_menu_0_nome_prato', 'Parmesão Assado'),
(343, 49, '_categoria_menu_2_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(344, 49, 'categoria_menu_2_prato_menu_0_descricao_prato', 'Parmesão assado na chapa.'),
(345, 49, '_categoria_menu_2_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(346, 49, 'categoria_menu_2_prato_menu', '1'),
(347, 49, '_categoria_menu_2_prato_menu', 'field_6126ed1c0301f'),
(348, 10, 'categoria_menu_3_nome_categoria', 'Bebidas'),
(349, 10, '_categoria_menu_3_nome_categoria', 'field_6126ec64ad48f'),
(350, 10, 'categoria_menu_3_prato_menu_0_preco_prato', '9'),
(351, 10, '_categoria_menu_3_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(352, 10, 'categoria_menu_3_prato_menu_0_nome_prato', 'Suco Natural'),
(353, 10, '_categoria_menu_3_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(354, 10, 'categoria_menu_3_prato_menu_0_descricao_prato', 'Suco natural, consulte sabores.'),
(355, 10, '_categoria_menu_3_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(356, 10, 'categoria_menu_3_prato_menu_1_preco_prato', '10'),
(357, 10, '_categoria_menu_3_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(358, 10, 'categoria_menu_3_prato_menu_1_nome_prato', 'Água'),
(359, 10, '_categoria_menu_3_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(360, 10, 'categoria_menu_3_prato_menu_1_descricao_prato', 'Água da torneira'),
(361, 10, '_categoria_menu_3_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(362, 10, 'categoria_menu_3_prato_menu_2_preco_prato', '22'),
(363, 10, '_categoria_menu_3_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(364, 10, 'categoria_menu_3_prato_menu_2_nome_prato', 'Chopp Artesanal'),
(365, 10, '_categoria_menu_3_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(366, 10, 'categoria_menu_3_prato_menu_2_descricao_prato', 'Várias torneiras de chopp artesanal'),
(367, 10, '_categoria_menu_3_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(368, 10, 'categoria_menu_3_prato_menu', '3'),
(369, 10, '_categoria_menu_3_prato_menu', 'field_6126ed1c0301f'),
(370, 50, 'categoria_menu_0_nome_categoria', 'Carnes'),
(371, 50, '_categoria_menu_0_nome_categoria', 'field_6126ec64ad48f'),
(372, 50, 'categoria_menu_0_prato_menu_0_preco_prato', '125'),
(373, 50, '_categoria_menu_0_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(374, 50, 'categoria_menu_0_prato_menu_0_nome_prato', 'Picanha na brasa'),
(375, 50, '_categoria_menu_0_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(376, 50, 'categoria_menu_0_prato_menu_0_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(377, 50, '_categoria_menu_0_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(378, 50, 'categoria_menu_0_prato_menu_1_preco_prato', '89'),
(379, 50, '_categoria_menu_0_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(380, 50, 'categoria_menu_0_prato_menu_1_nome_prato', 'Cupim no Bafo'),
(381, 50, '_categoria_menu_0_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(382, 50, 'categoria_menu_0_prato_menu_1_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(383, 50, '_categoria_menu_0_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(384, 50, 'categoria_menu_0_prato_menu_2_preco_prato', '159'),
(385, 50, '_categoria_menu_0_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(386, 50, 'categoria_menu_0_prato_menu_2_nome_prato', 'Hamburger Artesanal'),
(387, 50, '_categoria_menu_0_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(388, 50, 'categoria_menu_0_prato_menu_2_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(389, 50, '_categoria_menu_0_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(390, 50, 'categoria_menu_0_prato_menu', '3'),
(391, 50, '_categoria_menu_0_prato_menu', 'field_6126ed1c0301f'),
(392, 50, 'categoria_menu_1_nome_categoria', 'Peixes'),
(393, 50, '_categoria_menu_1_nome_categoria', 'field_6126ec64ad48f'),
(394, 50, 'categoria_menu_1_prato_menu_0_preco_prato', '65'),
(395, 50, '_categoria_menu_1_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(396, 50, 'categoria_menu_1_prato_menu_0_nome_prato', 'Salmão ao alho e óleo'),
(397, 50, '_categoria_menu_1_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(398, 50, 'categoria_menu_1_prato_menu_0_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(399, 50, '_categoria_menu_1_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(400, 50, 'categoria_menu_1_prato_menu_1_preco_prato', '49'),
(401, 50, '_categoria_menu_1_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(402, 50, 'categoria_menu_1_prato_menu_1_nome_prato', 'Sardinha na Cerveja'),
(403, 50, '_categoria_menu_1_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(404, 50, 'categoria_menu_1_prato_menu_1_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(405, 50, '_categoria_menu_1_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(406, 50, 'categoria_menu_1_prato_menu_2_preco_prato', '139'),
(407, 50, '_categoria_menu_1_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(408, 50, 'categoria_menu_1_prato_menu_2_nome_prato', 'Camarão Grelhado'),
(409, 50, '_categoria_menu_1_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(410, 50, 'categoria_menu_1_prato_menu_2_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(411, 50, '_categoria_menu_1_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(412, 50, 'categoria_menu_1_prato_menu', '3'),
(413, 50, '_categoria_menu_1_prato_menu', 'field_6126ed1c0301f'),
(414, 50, 'categoria_menu', '4'),
(415, 50, '_categoria_menu', 'field_6126ec47ad48e'),
(416, 50, 'categoria_menu_2_nome_categoria', 'Queijos'),
(417, 50, '_categoria_menu_2_nome_categoria', 'field_6126ec64ad48f'),
(418, 50, 'categoria_menu_2_prato_menu_0_preco_prato', '29'),
(419, 50, '_categoria_menu_2_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(420, 50, 'categoria_menu_2_prato_menu_0_nome_prato', 'Parmesão Assado'),
(421, 50, '_categoria_menu_2_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(422, 50, 'categoria_menu_2_prato_menu_0_descricao_prato', 'Parmesão assado na chapa.'),
(423, 50, '_categoria_menu_2_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(424, 50, 'categoria_menu_2_prato_menu', '1'),
(425, 50, '_categoria_menu_2_prato_menu', 'field_6126ed1c0301f'),
(426, 50, 'categoria_menu_3_nome_categoria', 'Bebidas'),
(427, 50, '_categoria_menu_3_nome_categoria', 'field_6126ec64ad48f'),
(428, 50, 'categoria_menu_3_prato_menu_0_preco_prato', '10'),
(429, 50, '_categoria_menu_3_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(430, 50, 'categoria_menu_3_prato_menu_0_nome_prato', 'Água'),
(431, 50, '_categoria_menu_3_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(432, 50, 'categoria_menu_3_prato_menu_0_descricao_prato', 'Água da torneira'),
(433, 50, '_categoria_menu_3_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(434, 50, 'categoria_menu_3_prato_menu_1_preco_prato', '22'),
(435, 50, '_categoria_menu_3_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(436, 50, 'categoria_menu_3_prato_menu_1_nome_prato', 'Chopp Artesanal'),
(437, 50, '_categoria_menu_3_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(438, 50, 'categoria_menu_3_prato_menu_1_descricao_prato', 'Várias torneiras de chopp artesanal'),
(439, 50, '_categoria_menu_3_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(440, 50, 'categoria_menu_3_prato_menu_2_preco_prato', '9'),
(441, 50, '_categoria_menu_3_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(442, 50, 'categoria_menu_3_prato_menu_2_nome_prato', 'Suco Natural'),
(443, 50, '_categoria_menu_3_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(444, 50, 'categoria_menu_3_prato_menu_2_descricao_prato', 'Suco natural, consulte sabores.'),
(445, 50, '_categoria_menu_3_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(446, 50, 'categoria_menu_3_prato_menu', '3'),
(447, 50, '_categoria_menu_3_prato_menu', 'field_6126ed1c0301f'),
(448, 51, 'categoria_menu_0_nome_categoria', 'Carnes'),
(449, 51, '_categoria_menu_0_nome_categoria', 'field_6126ec64ad48f'),
(450, 51, 'categoria_menu_0_prato_menu_0_preco_prato', '159'),
(451, 51, '_categoria_menu_0_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(452, 51, 'categoria_menu_0_prato_menu_0_nome_prato', 'Hamburger Artesanal'),
(453, 51, '_categoria_menu_0_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(454, 51, 'categoria_menu_0_prato_menu_0_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(455, 51, '_categoria_menu_0_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(456, 51, 'categoria_menu_0_prato_menu_1_preco_prato', '125'),
(457, 51, '_categoria_menu_0_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(458, 51, 'categoria_menu_0_prato_menu_1_nome_prato', 'Picanha na brasa'),
(459, 51, '_categoria_menu_0_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(460, 51, 'categoria_menu_0_prato_menu_1_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(461, 51, '_categoria_menu_0_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(462, 51, 'categoria_menu_0_prato_menu_2_preco_prato', '89'),
(463, 51, '_categoria_menu_0_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(464, 51, 'categoria_menu_0_prato_menu_2_nome_prato', 'Cupim no Bafo'),
(465, 51, '_categoria_menu_0_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(466, 51, 'categoria_menu_0_prato_menu_2_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(467, 51, '_categoria_menu_0_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(468, 51, 'categoria_menu_0_prato_menu', '3'),
(469, 51, '_categoria_menu_0_prato_menu', 'field_6126ed1c0301f'),
(470, 51, 'categoria_menu_1_nome_categoria', 'Peixes'),
(471, 51, '_categoria_menu_1_nome_categoria', 'field_6126ec64ad48f'),
(472, 51, 'categoria_menu_1_prato_menu_0_preco_prato', '139'),
(473, 51, '_categoria_menu_1_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(474, 51, 'categoria_menu_1_prato_menu_0_nome_prato', 'Camarão Grelhado'),
(475, 51, '_categoria_menu_1_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(476, 51, 'categoria_menu_1_prato_menu_0_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(477, 51, '_categoria_menu_1_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(478, 51, 'categoria_menu_1_prato_menu_1_preco_prato', '65'),
(479, 51, '_categoria_menu_1_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(480, 51, 'categoria_menu_1_prato_menu_1_nome_prato', 'Salmão ao alho e óleo'),
(481, 51, '_categoria_menu_1_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(482, 51, 'categoria_menu_1_prato_menu_1_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(483, 51, '_categoria_menu_1_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(484, 51, 'categoria_menu_1_prato_menu_2_preco_prato', '49'),
(485, 51, '_categoria_menu_1_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(486, 51, 'categoria_menu_1_prato_menu_2_nome_prato', 'Sardinha na Cerveja'),
(487, 51, '_categoria_menu_1_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(488, 51, 'categoria_menu_1_prato_menu_2_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(489, 51, '_categoria_menu_1_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(490, 51, 'categoria_menu_1_prato_menu', '3'),
(491, 51, '_categoria_menu_1_prato_menu', 'field_6126ed1c0301f'),
(492, 51, 'categoria_menu', '4'),
(493, 51, '_categoria_menu', 'field_6126ec47ad48e'),
(494, 51, 'categoria_menu_2_nome_categoria', 'Queijos'),
(495, 51, '_categoria_menu_2_nome_categoria', 'field_6126ec64ad48f'),
(496, 51, 'categoria_menu_2_prato_menu_0_preco_prato', '29'),
(497, 51, '_categoria_menu_2_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(498, 51, 'categoria_menu_2_prato_menu_0_nome_prato', 'Parmesão Assado'),
(499, 51, '_categoria_menu_2_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(500, 51, 'categoria_menu_2_prato_menu_0_descricao_prato', 'Parmesão assado na chapa.'),
(501, 51, '_categoria_menu_2_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(502, 51, 'categoria_menu_2_prato_menu', '1'),
(503, 51, '_categoria_menu_2_prato_menu', 'field_6126ed1c0301f'),
(504, 51, 'categoria_menu_3_nome_categoria', 'Bebidas'),
(505, 51, '_categoria_menu_3_nome_categoria', 'field_6126ec64ad48f'),
(506, 51, 'categoria_menu_3_prato_menu_0_preco_prato', '9'),
(507, 51, '_categoria_menu_3_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(508, 51, 'categoria_menu_3_prato_menu_0_nome_prato', 'Suco Natural'),
(509, 51, '_categoria_menu_3_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(510, 51, 'categoria_menu_3_prato_menu_0_descricao_prato', 'Suco natural, consulte sabores.'),
(511, 51, '_categoria_menu_3_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(512, 51, 'categoria_menu_3_prato_menu_1_preco_prato', '10'),
(513, 51, '_categoria_menu_3_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(514, 51, 'categoria_menu_3_prato_menu_1_nome_prato', 'Água'),
(515, 51, '_categoria_menu_3_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(516, 51, 'categoria_menu_3_prato_menu_1_descricao_prato', 'Água da torneira'),
(517, 51, '_categoria_menu_3_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(518, 51, 'categoria_menu_3_prato_menu_2_preco_prato', '22'),
(519, 51, '_categoria_menu_3_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(520, 51, 'categoria_menu_3_prato_menu_2_nome_prato', 'Chopp Artesanal'),
(521, 51, '_categoria_menu_3_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(522, 51, 'categoria_menu_3_prato_menu_2_descricao_prato', 'Várias torneiras de chopp artesanal'),
(523, 51, '_categoria_menu_3_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(524, 51, 'categoria_menu_3_prato_menu', '3'),
(525, 51, '_categoria_menu_3_prato_menu', 'field_6126ed1c0301f'),
(526, 52, '_edit_last', '1'),
(527, 52, '_edit_lock', '1630074024:1'),
(528, 12, 'endereco_header', 'Rua da Praia, 666 - Centro - RS'),
(529, 12, '_endereco_header', 'field_6126f4e0ce45d'),
(530, 12, 'telefone_header', '9974-8999'),
(531, 12, '_telefone_header', 'field_6126f50bce45e'),
(532, 55, 'endereco_header', 'Rua da Praia, 666 - Centro - RS'),
(533, 55, '_endereco_header', 'field_6126f4e0ce45d'),
(534, 55, 'telefone_header', '9974-8999'),
(535, 55, '_telefone_header', 'field_6126f50bce45e'),
(536, 57, '_wp_attached_file', '2021/08/rest-mapa.jpg'),
(537, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:940;s:6:\"height\";i:260;s:4:\"file\";s:21:\"2021/08/rest-mapa.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"rest-mapa-300x83.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:83;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"rest-mapa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"rest-mapa-768x212.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(538, 12, 'foto_maps_rest', '57'),
(539, 12, '_foto_maps_rest', 'field_6127a234f816c'),
(540, 58, 'endereco_header', 'Rua da Praia, 666 - Centro - RS'),
(541, 58, '_endereco_header', 'field_6126f4e0ce45d'),
(542, 58, 'telefone_header', '9974-8999'),
(543, 58, '_telefone_header', 'field_6126f50bce45e'),
(544, 58, 'foto_maps_rest', '57'),
(545, 58, '_foto_maps_rest', 'field_6127a234f816c'),
(546, 12, 'descricao_maps_rest', 'Localização do Rest no google maps.'),
(547, 12, '_descricao_maps_rest', 'field_6127a2cade532'),
(548, 60, 'endereco_header', 'Rua da Praia, 666 - Centro - RS'),
(549, 60, '_endereco_header', 'field_6126f4e0ce45d'),
(550, 60, 'telefone_header', '9974-8999'),
(551, 60, '_telefone_header', 'field_6126f50bce45e'),
(552, 60, 'foto_maps_rest', '57'),
(553, 60, '_foto_maps_rest', 'field_6127a234f816c'),
(554, 60, 'descricao_maps_rest', 'Localização do Rest no google maps.'),
(555, 60, '_descricao_maps_rest', 'field_6127a2cade532'),
(556, 12, 'informacao_contato_0_titulo_contato', 'Dados'),
(557, 12, '_informacao_contato_0_titulo_contato', 'field_6127aad7f992e'),
(558, 12, 'informacao_contato_0_dados_contato_0_dado_contato', '51 2422-9999'),
(559, 12, '_informacao_contato_0_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(560, 12, 'informacao_contato_0_dados_contato_1_dado_contato', 'contato@rest.com'),
(561, 12, '_informacao_contato_0_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(562, 12, 'informacao_contato_0_dados_contato_2_dado_contato', 'facebook.com/rest/'),
(563, 12, '_informacao_contato_0_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(564, 12, 'informacao_contato_0_dados_contato', '3'),
(565, 12, '_informacao_contato_0_dados_contato', 'field_6127abcef992f'),
(566, 12, 'informacao_contato_1_titulo_contato', 'Horários'),
(567, 12, '_informacao_contato_1_titulo_contato', 'field_6127aad7f992e'),
(568, 12, 'informacao_contato_1_dados_contato_0_dado_contato', 'Segunda à Sexta: 10 às 23'),
(569, 12, '_informacao_contato_1_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(570, 12, 'informacao_contato_1_dados_contato_1_dado_contato', 'Sábado: 14 às 23'),
(571, 12, '_informacao_contato_1_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(572, 12, 'informacao_contato_1_dados_contato_2_dado_contato', 'Domingo: 14 às 22'),
(573, 12, '_informacao_contato_1_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(574, 12, 'informacao_contato_1_dados_contato', '3'),
(575, 12, '_informacao_contato_1_dados_contato', 'field_6127abcef992f'),
(576, 12, 'informacao_contato_2_titulo_contato', 'Endereço'),
(577, 12, '_informacao_contato_2_titulo_contato', 'field_6127aad7f992e'),
(578, 12, 'informacao_contato_2_dados_contato_0_dado_contato', 'Rua da Praia, 666'),
(579, 12, '_informacao_contato_2_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(580, 12, 'informacao_contato_2_dados_contato_1_dado_contato', 'Centro Histórico - Porto Alegre'),
(581, 12, '_informacao_contato_2_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(582, 12, 'informacao_contato_2_dados_contato_2_dado_contato', 'Brasil - Terra - Via Láctea'),
(583, 12, '_informacao_contato_2_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(584, 12, 'informacao_contato_2_dados_contato', '3'),
(585, 12, '_informacao_contato_2_dados_contato', 'field_6127abcef992f'),
(586, 12, 'informacao_contato', '3'),
(587, 12, '_informacao_contato', 'field_6127aa4ff992d'),
(588, 65, 'endereco_header', 'Rua da Praia, 666 - Centro - RS'),
(589, 65, '_endereco_header', 'field_6126f4e0ce45d'),
(590, 65, 'telefone_header', '9974-8999'),
(591, 65, '_telefone_header', 'field_6126f50bce45e'),
(592, 65, 'foto_maps_rest', '57'),
(593, 65, '_foto_maps_rest', 'field_6127a234f816c'),
(594, 65, 'descricao_maps_rest', 'Localização do Rest no google maps.'),
(595, 65, '_descricao_maps_rest', 'field_6127a2cade532'),
(596, 65, 'informacao_contato_0_titulo_contato', 'Dados'),
(597, 65, '_informacao_contato_0_titulo_contato', 'field_6127aad7f992e'),
(598, 65, 'informacao_contato_0_dados_contato_0_dado_contato', '51 2422-9999'),
(599, 65, '_informacao_contato_0_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(600, 65, 'informacao_contato_0_dados_contato_1_dado_contato', 'contato@rest.com'),
(601, 65, '_informacao_contato_0_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(602, 65, 'informacao_contato_0_dados_contato_2_dado_contato', 'facebook.com/rest/'),
(603, 65, '_informacao_contato_0_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(604, 65, 'informacao_contato_0_dados_contato', '3'),
(605, 65, '_informacao_contato_0_dados_contato', 'field_6127abcef992f'),
(606, 65, 'informacao_contato_1_titulo_contato', 'Horários'),
(607, 65, '_informacao_contato_1_titulo_contato', 'field_6127aad7f992e'),
(608, 65, 'informacao_contato_1_dados_contato_0_dado_contato', 'Segunda à Sexta: 10 às 23'),
(609, 65, '_informacao_contato_1_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(610, 65, 'informacao_contato_1_dados_contato_1_dado_contato', 'Sábado: 14 às 23'),
(611, 65, '_informacao_contato_1_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(612, 65, 'informacao_contato_1_dados_contato_2_dado_contato', 'Domingo: 14 às 22'),
(613, 65, '_informacao_contato_1_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(614, 65, 'informacao_contato_1_dados_contato', '3'),
(615, 65, '_informacao_contato_1_dados_contato', 'field_6127abcef992f'),
(616, 65, 'informacao_contato_2_titulo_contato', 'Endereço'),
(617, 65, '_informacao_contato_2_titulo_contato', 'field_6127aad7f992e'),
(618, 65, 'informacao_contato_2_dados_contato_0_dado_contato', 'Rua da Praia, 666'),
(619, 65, '_informacao_contato_2_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(620, 65, 'informacao_contato_2_dados_contato_1_dado_contato', 'Centro Histórico - Porto Alegre'),
(621, 65, '_informacao_contato_2_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(622, 65, 'informacao_contato_2_dados_contato_2_dado_contato', 'Brasil - Terra - Via Láctea'),
(623, 65, '_informacao_contato_2_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(624, 65, 'informacao_contato_2_dados_contato', '3'),
(625, 65, '_informacao_contato_2_dados_contato', 'field_6127abcef992f'),
(626, 65, 'informacao_contato', '3'),
(627, 65, '_informacao_contato', 'field_6127aa4ff992d'),
(628, 12, 'link_mapa', 'https://www.google.com.br/maps/place/JUSTO/@-30.0336877,-51.2312643,16.5z/data=!4m5!3m4!1s0x0:0x622aa82ea3acb0ef!8m2!3d-30.0330856!4d-51.2280307'),
(629, 12, '_link_mapa', 'field_6127a2cade532'),
(630, 66, 'endereco_header', 'Rua da Praia, 666 - Centro - RS'),
(631, 66, '_endereco_header', 'field_6126f4e0ce45d'),
(632, 66, 'telefone_header', '9974-8999'),
(633, 66, '_telefone_header', 'field_6126f50bce45e'),
(634, 66, 'foto_maps_rest', '57'),
(635, 66, '_foto_maps_rest', 'field_6127a234f816c'),
(636, 66, 'descricao_maps_rest', 'Localização do Rest no google maps.'),
(637, 66, '_descricao_maps_rest', 'field_6127a2cade532'),
(638, 66, 'informacao_contato_0_titulo_contato', 'Dados'),
(639, 66, '_informacao_contato_0_titulo_contato', 'field_6127aad7f992e'),
(640, 66, 'informacao_contato_0_dados_contato_0_dado_contato', '51 2422-9999');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(641, 66, '_informacao_contato_0_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(642, 66, 'informacao_contato_0_dados_contato_1_dado_contato', 'contato@rest.com'),
(643, 66, '_informacao_contato_0_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(644, 66, 'informacao_contato_0_dados_contato_2_dado_contato', 'facebook.com/rest/'),
(645, 66, '_informacao_contato_0_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(646, 66, 'informacao_contato_0_dados_contato', '3'),
(647, 66, '_informacao_contato_0_dados_contato', 'field_6127abcef992f'),
(648, 66, 'informacao_contato_1_titulo_contato', 'Horários'),
(649, 66, '_informacao_contato_1_titulo_contato', 'field_6127aad7f992e'),
(650, 66, 'informacao_contato_1_dados_contato_0_dado_contato', 'Segunda à Sexta: 10 às 23'),
(651, 66, '_informacao_contato_1_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(652, 66, 'informacao_contato_1_dados_contato_1_dado_contato', 'Sábado: 14 às 23'),
(653, 66, '_informacao_contato_1_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(654, 66, 'informacao_contato_1_dados_contato_2_dado_contato', 'Domingo: 14 às 22'),
(655, 66, '_informacao_contato_1_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(656, 66, 'informacao_contato_1_dados_contato', '3'),
(657, 66, '_informacao_contato_1_dados_contato', 'field_6127abcef992f'),
(658, 66, 'informacao_contato_2_titulo_contato', 'Endereço'),
(659, 66, '_informacao_contato_2_titulo_contato', 'field_6127aad7f992e'),
(660, 66, 'informacao_contato_2_dados_contato_0_dado_contato', 'Rua da Praia, 666'),
(661, 66, '_informacao_contato_2_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(662, 66, 'informacao_contato_2_dados_contato_1_dado_contato', 'Centro Histórico - Porto Alegre'),
(663, 66, '_informacao_contato_2_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(664, 66, 'informacao_contato_2_dados_contato_2_dado_contato', 'Brasil - Terra - Via Láctea'),
(665, 66, '_informacao_contato_2_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(666, 66, 'informacao_contato_2_dados_contato', '3'),
(667, 66, '_informacao_contato_2_dados_contato', 'field_6127abcef992f'),
(668, 66, 'informacao_contato', '3'),
(669, 66, '_informacao_contato', 'field_6127aa4ff992d'),
(670, 66, 'link_mapa', 'https://www.google.com.br/maps/place/JUSTO/@-30.0336877,-51.2312643,16.5z/data=!4m5!3m4!1s0x0:0x622aa82ea3acb0ef!8m2!3d-30.0330856!4d-51.2280307'),
(671, 66, '_link_mapa', 'field_6127a2cade532'),
(672, 67, '_edit_last', '1'),
(673, 67, '_edit_lock', '1630076292:1'),
(674, 10, 'title_seo', 'O melhor restaurante de Porto Alegre.'),
(675, 10, '_title_seo', 'field_6128fd9389342'),
(676, 10, 'description_seo', 'O melhor restaurante de Porto Alegre. Todos os tipos de comidas, carnes, peixes, massas, sushi, sorvete, chocolate.'),
(677, 10, '_description_seo', 'field_6128fd9b89343'),
(678, 70, 'categoria_menu_0_nome_categoria', 'Carnes'),
(679, 70, '_categoria_menu_0_nome_categoria', 'field_6126ec64ad48f'),
(680, 70, 'categoria_menu_0_prato_menu_0_preco_prato', '159'),
(681, 70, '_categoria_menu_0_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(682, 70, 'categoria_menu_0_prato_menu_0_nome_prato', 'Hamburger Artesanal'),
(683, 70, '_categoria_menu_0_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(684, 70, 'categoria_menu_0_prato_menu_0_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(685, 70, '_categoria_menu_0_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(686, 70, 'categoria_menu_0_prato_menu_1_preco_prato', '125'),
(687, 70, '_categoria_menu_0_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(688, 70, 'categoria_menu_0_prato_menu_1_nome_prato', 'Picanha na brasa'),
(689, 70, '_categoria_menu_0_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(690, 70, 'categoria_menu_0_prato_menu_1_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(691, 70, '_categoria_menu_0_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(692, 70, 'categoria_menu_0_prato_menu_2_preco_prato', '89'),
(693, 70, '_categoria_menu_0_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(694, 70, 'categoria_menu_0_prato_menu_2_nome_prato', 'Cupim no Bafo'),
(695, 70, '_categoria_menu_0_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(696, 70, 'categoria_menu_0_prato_menu_2_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(697, 70, '_categoria_menu_0_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(698, 70, 'categoria_menu_0_prato_menu', '3'),
(699, 70, '_categoria_menu_0_prato_menu', 'field_6126ed1c0301f'),
(700, 70, 'categoria_menu_1_nome_categoria', 'Peixes'),
(701, 70, '_categoria_menu_1_nome_categoria', 'field_6126ec64ad48f'),
(702, 70, 'categoria_menu_1_prato_menu_0_preco_prato', '139'),
(703, 70, '_categoria_menu_1_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(704, 70, 'categoria_menu_1_prato_menu_0_nome_prato', 'Camarão Grelhado'),
(705, 70, '_categoria_menu_1_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(706, 70, 'categoria_menu_1_prato_menu_0_descricao_prato', 'Grandes camarões grelhados, servidos ao molho de camarão com catupiri.'),
(707, 70, '_categoria_menu_1_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(708, 70, 'categoria_menu_1_prato_menu_1_preco_prato', '65'),
(709, 70, '_categoria_menu_1_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(710, 70, 'categoria_menu_1_prato_menu_1_nome_prato', 'Salmão ao alho e óleo'),
(711, 70, '_categoria_menu_1_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(712, 70, 'categoria_menu_1_prato_menu_1_descricao_prato', 'Pequenas tiras de salmão feitas no alho e óleo.'),
(713, 70, '_categoria_menu_1_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(714, 70, 'categoria_menu_1_prato_menu_2_preco_prato', '49'),
(715, 70, '_categoria_menu_1_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(716, 70, 'categoria_menu_1_prato_menu_2_nome_prato', 'Sardinha na Cerveja'),
(717, 70, '_categoria_menu_1_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(718, 70, 'categoria_menu_1_prato_menu_2_descricao_prato', 'Sardinhas escolhidas a dedo e fritas em cerveja Premium.'),
(719, 70, '_categoria_menu_1_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(720, 70, 'categoria_menu_1_prato_menu', '3'),
(721, 70, '_categoria_menu_1_prato_menu', 'field_6126ed1c0301f'),
(722, 70, 'categoria_menu', '4'),
(723, 70, '_categoria_menu', 'field_6126ec47ad48e'),
(724, 70, 'categoria_menu_2_nome_categoria', 'Queijos'),
(725, 70, '_categoria_menu_2_nome_categoria', 'field_6126ec64ad48f'),
(726, 70, 'categoria_menu_2_prato_menu_0_preco_prato', '29'),
(727, 70, '_categoria_menu_2_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(728, 70, 'categoria_menu_2_prato_menu_0_nome_prato', 'Parmesão Assado'),
(729, 70, '_categoria_menu_2_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(730, 70, 'categoria_menu_2_prato_menu_0_descricao_prato', 'Parmesão assado na chapa.'),
(731, 70, '_categoria_menu_2_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(732, 70, 'categoria_menu_2_prato_menu', '1'),
(733, 70, '_categoria_menu_2_prato_menu', 'field_6126ed1c0301f'),
(734, 70, 'categoria_menu_3_nome_categoria', 'Bebidas'),
(735, 70, '_categoria_menu_3_nome_categoria', 'field_6126ec64ad48f'),
(736, 70, 'categoria_menu_3_prato_menu_0_preco_prato', '9'),
(737, 70, '_categoria_menu_3_prato_menu_0_preco_prato', 'field_6126ed5603020'),
(738, 70, 'categoria_menu_3_prato_menu_0_nome_prato', 'Suco Natural'),
(739, 70, '_categoria_menu_3_prato_menu_0_nome_prato', 'field_6126edaa03021'),
(740, 70, 'categoria_menu_3_prato_menu_0_descricao_prato', 'Suco natural, consulte sabores.'),
(741, 70, '_categoria_menu_3_prato_menu_0_descricao_prato', 'field_6126edc303022'),
(742, 70, 'categoria_menu_3_prato_menu_1_preco_prato', '10'),
(743, 70, '_categoria_menu_3_prato_menu_1_preco_prato', 'field_6126ed5603020'),
(744, 70, 'categoria_menu_3_prato_menu_1_nome_prato', 'Água'),
(745, 70, '_categoria_menu_3_prato_menu_1_nome_prato', 'field_6126edaa03021'),
(746, 70, 'categoria_menu_3_prato_menu_1_descricao_prato', 'Água da torneira'),
(747, 70, '_categoria_menu_3_prato_menu_1_descricao_prato', 'field_6126edc303022'),
(748, 70, 'categoria_menu_3_prato_menu_2_preco_prato', '22'),
(749, 70, '_categoria_menu_3_prato_menu_2_preco_prato', 'field_6126ed5603020'),
(750, 70, 'categoria_menu_3_prato_menu_2_nome_prato', 'Chopp Artesanal'),
(751, 70, '_categoria_menu_3_prato_menu_2_nome_prato', 'field_6126edaa03021'),
(752, 70, 'categoria_menu_3_prato_menu_2_descricao_prato', 'Várias torneiras de chopp artesanal'),
(753, 70, '_categoria_menu_3_prato_menu_2_descricao_prato', 'field_6126edc303022'),
(754, 70, 'categoria_menu_3_prato_menu', '3'),
(755, 70, '_categoria_menu_3_prato_menu', 'field_6126ed1c0301f'),
(756, 70, 'title_seo', 'O melhor restaurante de Porto Alegre.'),
(757, 70, '_title_seo', 'field_6128fd9389342'),
(758, 70, 'description_seo', 'O melhor restaurante de Porto Alegre. Todos os tipos de comidas, carnes, peixes, massas, sushi, sorvete, chocolate.'),
(759, 70, '_description_seo', 'field_6128fd9b89343'),
(760, 14, 'title_seo', '2422-99999'),
(761, 14, '_title_seo', 'field_6128fd9389342'),
(762, 14, 'description_seo', ''),
(763, 14, '_description_seo', 'field_6128fd9b89343'),
(764, 71, 'titulo_historia', 'História'),
(765, 71, '_titulo_historia', 'field_6126def6ef901'),
(766, 71, 'texto_da_historia', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n\r\nGostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(767, 71, '_texto_da_historia', 'field_6126dd99ef900'),
(768, 71, 'titulo_visao', 'VIsão'),
(769, 71, '_titulo_visao', 'field_6126e1c4289c7'),
(770, 71, 'texto_da_visao', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(771, 71, '_texto_da_visao', 'field_6126e1e9289c8'),
(772, 71, 'titulo_valores', 'Valores'),
(773, 71, '_titulo_valores', 'field_6126e291cc79c'),
(774, 71, 'texto_de_valores', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(775, 71, '_texto_de_valores', 'field_6126e29ecc79d'),
(776, 71, 'foto_rest', '33'),
(777, 71, '_foto_rest', 'field_6126e3b92bea3'),
(778, 71, 'foto_rest_descricao', 'Fachada do Rest'),
(779, 71, '_foto_rest_descricao', 'field_6126e4532bea4'),
(780, 71, 'conteudo_sobre_0_titulo_sobre', 'História'),
(781, 71, '_conteudo_sobre_0_titulo_sobre', 'field_6126e72e826ad'),
(782, 71, 'conteudo_sobre_0_texto_sobre', 'O incentivo ao avanço tecnológico, assim como a mobilidade dos capitais internacionais auxilia a preparação e a composição dos níveis de motivação departamental.\r\n'),
(783, 71, '_conteudo_sobre_0_texto_sobre', 'field_6126e74a826ae'),
(784, 71, 'conteudo_sobre_1_titulo_sobre', 'Visão'),
(785, 71, '_conteudo_sobre_1_titulo_sobre', 'field_6126e72e826ad'),
(786, 71, 'conteudo_sobre_1_texto_sobre', 'Não obstante, a expansão dos mercados mundiais faz parte de um processo de gerenciamento de alternativas às soluções ortodoxas.'),
(787, 71, '_conteudo_sobre_1_texto_sobre', 'field_6126e74a826ae'),
(788, 71, 'conteudo_sobre_2_titulo_sobre', 'Valores'),
(789, 71, '_conteudo_sobre_2_titulo_sobre', 'field_6126e72e826ad'),
(790, 71, 'conteudo_sobre_2_texto_sobre', 'O empenho em analisar a consolidação das estruturas apresenta tendências no sentido de aprovar a manutenção dos índices pretendidos.'),
(791, 71, '_conteudo_sobre_2_texto_sobre', 'field_6126e74a826ae'),
(792, 71, 'conteudo_sobre', '4'),
(793, 71, '_conteudo_sobre', 'field_6126e70f826ac'),
(794, 71, 'conteudo_sobre_3_titulo_sobre', 'Missão'),
(795, 71, '_conteudo_sobre_3_titulo_sobre', 'field_6126e72e826ad'),
(796, 71, 'conteudo_sobre_3_texto_sobre', 'Gostaria de enfatizar que o desenvolvimento contínuo de distintas formas de atuação prepara-nos para enfrentar situações atípicas decorrentes do remanejamento dos quadros funcionais.\r\n'),
(797, 71, '_conteudo_sobre_3_texto_sobre', 'field_6126e74a826ae'),
(798, 71, 'title_seo', '2422-99999'),
(799, 71, '_title_seo', 'field_6128fd9389342'),
(800, 71, 'description_seo', ''),
(801, 71, '_description_seo', 'field_6128fd9b89343'),
(802, 12, 'title_seo', 'Contato 51 2422-9999'),
(803, 12, '_title_seo', 'field_6128fd9389342'),
(804, 12, 'description_seo', ''),
(805, 12, '_description_seo', 'field_6128fd9b89343'),
(806, 72, 'endereco_header', 'Rua da Praia, 666 - Centro - RS'),
(807, 72, '_endereco_header', 'field_6126f4e0ce45d'),
(808, 72, 'telefone_header', '9974-8999'),
(809, 72, '_telefone_header', 'field_6126f50bce45e'),
(810, 72, 'foto_maps_rest', '57'),
(811, 72, '_foto_maps_rest', 'field_6127a234f816c'),
(812, 72, 'descricao_maps_rest', 'Localização do Rest no google maps.'),
(813, 72, '_descricao_maps_rest', 'field_6127a2cade532'),
(814, 72, 'informacao_contato_0_titulo_contato', 'Dados'),
(815, 72, '_informacao_contato_0_titulo_contato', 'field_6127aad7f992e'),
(816, 72, 'informacao_contato_0_dados_contato_0_dado_contato', '51 2422-9999'),
(817, 72, '_informacao_contato_0_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(818, 72, 'informacao_contato_0_dados_contato_1_dado_contato', 'contato@rest.com'),
(819, 72, '_informacao_contato_0_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(820, 72, 'informacao_contato_0_dados_contato_2_dado_contato', 'facebook.com/rest/'),
(821, 72, '_informacao_contato_0_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(822, 72, 'informacao_contato_0_dados_contato', '3'),
(823, 72, '_informacao_contato_0_dados_contato', 'field_6127abcef992f'),
(824, 72, 'informacao_contato_1_titulo_contato', 'Horários'),
(825, 72, '_informacao_contato_1_titulo_contato', 'field_6127aad7f992e'),
(826, 72, 'informacao_contato_1_dados_contato_0_dado_contato', 'Segunda à Sexta: 10 às 23'),
(827, 72, '_informacao_contato_1_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(828, 72, 'informacao_contato_1_dados_contato_1_dado_contato', 'Sábado: 14 às 23'),
(829, 72, '_informacao_contato_1_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(830, 72, 'informacao_contato_1_dados_contato_2_dado_contato', 'Domingo: 14 às 22'),
(831, 72, '_informacao_contato_1_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(832, 72, 'informacao_contato_1_dados_contato', '3'),
(833, 72, '_informacao_contato_1_dados_contato', 'field_6127abcef992f'),
(834, 72, 'informacao_contato_2_titulo_contato', 'Endereço'),
(835, 72, '_informacao_contato_2_titulo_contato', 'field_6127aad7f992e'),
(836, 72, 'informacao_contato_2_dados_contato_0_dado_contato', 'Rua da Praia, 666'),
(837, 72, '_informacao_contato_2_dados_contato_0_dado_contato', 'field_6127c53c25af7'),
(838, 72, 'informacao_contato_2_dados_contato_1_dado_contato', 'Centro Histórico - Porto Alegre'),
(839, 72, '_informacao_contato_2_dados_contato_1_dado_contato', 'field_6127c53c25af7'),
(840, 72, 'informacao_contato_2_dados_contato_2_dado_contato', 'Brasil - Terra - Via Láctea'),
(841, 72, '_informacao_contato_2_dados_contato_2_dado_contato', 'field_6127c53c25af7'),
(842, 72, 'informacao_contato_2_dados_contato', '3'),
(843, 72, '_informacao_contato_2_dados_contato', 'field_6127abcef992f'),
(844, 72, 'informacao_contato', '3'),
(845, 72, '_informacao_contato', 'field_6127aa4ff992d'),
(846, 72, 'link_mapa', 'https://www.google.com.br/maps/place/JUSTO/@-30.0336877,-51.2312643,16.5z/data=!4m5!3m4!1s0x0:0x622aa82ea3acb0ef!8m2!3d-30.0330856!4d-51.2280307'),
(847, 72, '_link_mapa', 'field_6127a2cade532'),
(848, 72, 'title_seo', 'Contato 51 2422-9999'),
(849, 72, '_title_seo', 'field_6128fd9389342'),
(850, 72, 'description_seo', ''),
(851, 72, '_description_seo', 'field_6128fd9b89343'),
(852, 73, '_menu_item_type', 'post_type'),
(853, 73, '_menu_item_menu_item_parent', '0'),
(854, 73, '_menu_item_object_id', '14'),
(855, 73, '_menu_item_object', 'page'),
(856, 73, '_menu_item_target', ''),
(857, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(858, 73, '_menu_item_xfn', ''),
(859, 73, '_menu_item_url', ''),
(861, 74, '_menu_item_type', 'post_type'),
(862, 74, '_menu_item_menu_item_parent', '0'),
(863, 74, '_menu_item_object_id', '12'),
(864, 74, '_menu_item_object', 'page'),
(865, 74, '_menu_item_target', ''),
(866, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(867, 74, '_menu_item_xfn', ''),
(868, 74, '_menu_item_url', ''),
(870, 75, '_menu_item_type', 'post_type'),
(871, 75, '_menu_item_menu_item_parent', '0'),
(872, 75, '_menu_item_object_id', '10'),
(873, 75, '_menu_item_object', 'page'),
(874, 75, '_menu_item_target', ''),
(875, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(876, 75, '_menu_item_xfn', ''),
(877, 75, '_menu_item_url', '');

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
(1, 1, '2021-08-25 12:55:40', '2021-08-25 15:55:40', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2021-08-25 12:57:07', '2021-08-25 15:57:07', '', 0, 'http://localhost/origamid/testewp/?p=1', 0, 'post', '', 1),
(2, 1, '2021-08-25 12:55:40', '2021-08-25 15:55:40', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/origamid/testewp/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2021-08-25 12:57:14', '2021-08-25 15:57:14', '', 0, 'http://localhost/origamid/testewp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-08-25 12:55:40', '2021-08-25 15:55:40', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/origamid/testewp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2021-08-25 12:57:16', '2021-08-25 15:57:16', '', 0, 'http://localhost/origamid/testewp/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-08-25 12:55:56', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-08-25 12:55:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/origamid/testewp/?p=4', 0, 'post', '', 0),
(5, 1, '2021-08-25 12:57:07', '2021-08-25 15:57:07', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-08-25 12:57:07', '2021-08-25 15:57:07', '', 1, 'http://localhost/origamid/testewp/?p=5', 0, 'revision', '', 0),
(6, 1, '2021-08-25 12:57:14', '2021-08-25 15:57:14', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/origamid/testewp/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-08-25 12:57:14', '2021-08-25 15:57:14', '', 2, 'http://localhost/origamid/testewp/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-08-25 12:57:16', '2021-08-25 15:57:16', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/origamid/testewp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-08-25 12:57:16', '2021-08-25 15:57:16', '', 3, 'http://localhost/origamid/testewp/?p=7', 0, 'revision', '', 0),
(8, 1, '2021-08-25 12:59:13', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-25 12:59:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/origamid/testewp/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-08-25 20:47:57', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-25 20:47:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/origamid/testewp/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-08-25 20:48:21', '2021-08-25 23:48:21', '', 'Menu da Semana', '', 'publish', 'closed', 'closed', '', 'menu-da-semana', '', '', '2021-08-27 13:09:46', '2021-08-27 16:09:46', '', 0, 'http://localhost/origamid/testewp/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-08-25 20:48:21', '2021-08-25 23:48:21', '', 'Menu da Semana', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-08-25 20:48:21', '2021-08-25 23:48:21', '', 10, 'http://localhost/origamid/testewp/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-08-25 20:48:28', '2021-08-25 23:48:28', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2021-08-27 13:11:54', '2021-08-27 16:11:54', '', 0, 'http://localhost/origamid/testewp/?page_id=12', 0, 'page', '', 0),
(13, 1, '2021-08-25 20:48:28', '2021-08-25 23:48:28', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-08-25 20:48:28', '2021-08-25 23:48:28', '', 12, 'http://localhost/origamid/testewp/?p=13', 0, 'revision', '', 0),
(14, 1, '2021-08-25 20:48:35', '2021-08-25 23:48:35', '', 'Sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2021-08-27 13:11:24', '2021-08-27 16:11:24', '', 0, 'http://localhost/origamid/testewp/?page_id=14', 0, 'page', '', 0),
(15, 1, '2021-08-25 20:48:35', '2021-08-25 23:48:35', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 20:48:35', '2021-08-25 23:48:35', '', 14, 'http://localhost/origamid/testewp/?p=15', 0, 'revision', '', 0),
(17, 1, '2021-08-25 21:28:07', '2021-08-26 00:28:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"page-sobre.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Sobre', 'sobre', 'publish', 'closed', 'closed', '', 'group_6126dd794bd21', '', '', '2021-08-25 22:02:55', '2021-08-26 01:02:55', '', 0, 'http://localhost/origamid/testewp/?post_type=acf-field-group&#038;p=17', 0, 'acf-field-group', '', 0),
(20, 1, '2021-08-25 21:29:11', '2021-08-26 00:29:11', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 21:29:11', '2021-08-26 00:29:11', '', 14, 'http://localhost/origamid/testewp/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-08-25 21:29:30', '2021-08-26 00:29:30', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 21:29:30', '2021-08-26 00:29:30', '', 14, 'http://localhost/origamid/testewp/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-08-25 21:29:50', '2021-08-26 00:29:50', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 21:29:50', '2021-08-26 00:29:50', '', 14, 'http://localhost/origamid/testewp/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-08-25 21:35:06', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-08-25 21:35:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/origamid/testewp/?post_type=acf-field-group&p=23', 0, 'acf-field-group', '', 0),
(26, 1, '2021-08-25 21:38:35', '2021-08-26 00:38:35', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 21:38:35', '2021-08-26 00:38:35', '', 14, 'http://localhost/origamid/testewp/?p=26', 0, 'revision', '', 0),
(29, 1, '2021-08-25 21:40:47', '2021-08-26 00:40:47', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 21:40:47', '2021-08-26 00:40:47', '', 14, 'http://localhost/origamid/testewp/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-08-25 21:43:29', '2021-08-26 00:43:29', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 21:43:29', '2021-08-26 00:43:29', '', 14, 'http://localhost/origamid/testewp/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-08-25 21:47:42', '2021-08-26 00:47:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:32:\"Coloque uma foto com 690x940 px.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Foto Rest', 'foto_rest', 'publish', 'closed', 'closed', '', 'field_6126e3b92bea3', '', '', '2021-08-25 22:02:55', '2021-08-26 01:02:55', '', 17, 'http://localhost/origamid/testewp/?post_type=acf-field&#038;p=31', 0, 'acf-field', '', 0),
(32, 1, '2021-08-25 21:47:42', '2021-08-26 00:47:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:19:\"Descrição da foto\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Foto Rest Descrição', 'foto_rest_descricao', 'publish', 'closed', 'closed', '', 'field_6126e4532bea4', '', '', '2021-08-25 21:59:43', '2021-08-26 00:59:43', '', 17, 'http://localhost/origamid/testewp/?post_type=acf-field&#038;p=32', 1, 'acf-field', '', 0),
(33, 1, '2021-08-25 21:48:11', '2021-08-26 00:48:11', '', 'rest-fachada', '', 'inherit', 'open', 'closed', '', 'rest-fachada', '', '', '2021-08-25 21:48:11', '2021-08-26 00:48:11', '', 14, 'http://localhost/origamid/testewp/wp-content/uploads/2021/08/rest-fachada.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2021-08-25 21:48:49', '2021-08-26 00:48:49', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 21:48:49', '2021-08-26 00:48:49', '', 14, 'http://localhost/origamid/testewp/?p=34', 0, 'revision', '', 0),
(35, 1, '2021-08-25 21:59:43', '2021-08-26 00:59:43', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:68:\"Aqui é a parte para colocar História, Visão e valores da empresa.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:25:\"Adicionar Conteúdo Sobre\";}', 'Conteúdo Sobre', 'conteudo_sobre', 'publish', 'closed', 'closed', '', 'field_6126e70f826ac', '', '', '2021-08-25 22:01:26', '2021-08-26 01:01:26', '', 17, 'http://localhost/origamid/testewp/?post_type=acf-field&#038;p=35', 2, 'acf-field', '', 0),
(36, 1, '2021-08-25 21:59:44', '2021-08-26 00:59:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título Sobre', 'titulo_sobre', 'publish', 'closed', 'closed', '', 'field_6126e72e826ad', '', '', '2021-08-25 21:59:44', '2021-08-26 00:59:44', '', 35, 'http://localhost/origamid/testewp/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2021-08-25 21:59:44', '2021-08-26 00:59:44', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:7:\"wpautop\";}', 'Texto Sobre', 'texto_sobre', 'publish', 'closed', 'closed', '', 'field_6126e74a826ae', '', '', '2021-08-25 21:59:44', '2021-08-26 00:59:44', '', 35, 'http://localhost/origamid/testewp/?post_type=acf-field&p=37', 1, 'acf-field', '', 0),
(38, 1, '2021-08-25 22:02:28', '2021-08-26 01:02:28', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 22:02:28', '2021-08-26 01:02:28', '', 14, 'http://localhost/origamid/testewp/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-08-25 22:03:39', '2021-08-26 01:03:39', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-25 22:03:39', '2021-08-26 01:03:39', '', 14, 'http://localhost/origamid/testewp/?p=39', 0, 'revision', '', 0),
(40, 1, '2021-08-25 22:22:00', '2021-08-26 01:22:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Menu da Semana', 'menu-da-semana', 'publish', 'closed', 'closed', '', 'group_6126e94cf3e71', '', '', '2021-08-25 22:29:16', '2021-08-26 01:29:16', '', 0, 'http://localhost/origamid/testewp/?post_type=acf-field-group&#038;p=40', 0, 'acf-field-group', '', 0),
(41, 1, '2021-08-25 22:22:00', '2021-08-26 01:22:00', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:19:\"Adicionar Categoria\";}', 'Categoria Menu', 'categoria_menu', 'publish', 'closed', 'closed', '', 'field_6126ec47ad48e', '', '', '2021-08-25 22:29:16', '2021-08-26 01:29:16', '', 40, 'http://localhost/origamid/testewp/?post_type=acf-field&#038;p=41', 0, 'acf-field', '', 0),
(42, 1, '2021-08-25 22:22:01', '2021-08-26 01:22:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nome Categoria', 'nome_categoria', 'publish', 'closed', 'closed', '', 'field_6126ec64ad48f', '', '', '2021-08-25 22:22:01', '2021-08-26 01:22:01', '', 41, 'http://localhost/origamid/testewp/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(44, 1, '2021-08-25 22:29:16', '2021-08-26 01:29:16', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:15:\"Adicionar Prato\";}', 'Prato Menu', 'prato_menu', 'publish', 'closed', 'closed', '', 'field_6126ed1c0301f', '', '', '2021-08-25 22:29:16', '2021-08-26 01:29:16', '', 41, 'http://localhost/origamid/testewp/?post_type=acf-field&p=44', 1, 'acf-field', '', 0),
(45, 1, '2021-08-25 22:29:16', '2021-08-26 01:29:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:19:\"Não precisa do R$.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Preço Prato', 'preco_prato', 'publish', 'closed', 'closed', '', 'field_6126ed5603020', '', '', '2021-08-25 22:29:16', '2021-08-26 01:29:16', '', 44, 'http://localhost/origamid/testewp/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 1, '2021-08-25 22:29:16', '2021-08-26 01:29:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nome Prato', 'nome_prato', 'publish', 'closed', 'closed', '', 'field_6126edaa03021', '', '', '2021-08-25 22:29:16', '2021-08-26 01:29:16', '', 44, 'http://localhost/origamid/testewp/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 1, '2021-08-25 22:29:16', '2021-08-26 01:29:16', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:7:\"wpautop\";}', 'Descrição Prato', 'descricao_prato', 'publish', 'closed', 'closed', '', 'field_6126edc303022', '', '', '2021-08-25 22:29:16', '2021-08-26 01:29:16', '', 44, 'http://localhost/origamid/testewp/?post_type=acf-field&p=47', 2, 'acf-field', '', 0),
(48, 1, '2021-08-25 22:35:33', '2021-08-26 01:35:33', '', 'Menu da Semana', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-08-25 22:35:33', '2021-08-26 01:35:33', '', 10, 'http://localhost/origamid/testewp/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-08-25 22:37:35', '2021-08-26 01:37:35', '', 'Menu da Semana', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-08-25 22:37:35', '2021-08-26 01:37:35', '', 10, 'http://localhost/origamid/testewp/?p=49', 0, 'revision', '', 0),
(50, 1, '2021-08-25 22:39:50', '2021-08-26 01:39:50', '', 'Menu da Semana', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-08-25 22:39:50', '2021-08-26 01:39:50', '', 10, 'http://localhost/origamid/testewp/?p=50', 0, 'revision', '', 0),
(51, 1, '2021-08-25 22:40:55', '2021-08-26 01:40:55', '', 'Menu da Semana', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-08-25 22:40:55', '2021-08-26 01:40:55', '', 10, 'http://localhost/origamid/testewp/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-08-25 22:58:19', '2021-08-26 01:58:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-contato.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Contato', 'contato', 'publish', 'closed', 'closed', '', 'group_6126f4cdd9e67', '', '', '2021-08-27 11:22:44', '2021-08-27 14:22:44', '', 0, 'http://localhost/origamid/testewp/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2021-08-25 22:58:19', '2021-08-26 01:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:60:\"Este aqui é o endereço que se repete no cabeçalho do site\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Endereço Header', 'endereco_header', 'publish', 'closed', 'closed', '', 'field_6126f4e0ce45d', '', '', '2021-08-25 22:58:19', '2021-08-26 01:58:19', '', 52, 'http://localhost/origamid/testewp/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2021-08-25 22:58:19', '2021-08-26 01:58:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone Header', 'telefone_header', 'publish', 'closed', 'closed', '', 'field_6126f50bce45e', '', '', '2021-08-25 22:58:19', '2021-08-26 01:58:19', '', 52, 'http://localhost/origamid/testewp/?post_type=acf-field&p=54', 1, 'acf-field', '', 0),
(55, 1, '2021-08-25 22:59:56', '2021-08-26 01:59:56', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-08-25 22:59:56', '2021-08-26 01:59:56', '', 12, 'http://localhost/origamid/testewp/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-08-26 11:17:23', '2021-08-26 14:17:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:46:\"Imagem do google maps da localização do Rest\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Foto Maps Rest', 'foto_maps_rest', 'publish', 'closed', 'closed', '', 'field_6127a234f816c', '', '', '2021-08-27 11:22:44', '2021-08-27 14:22:44', '', 52, 'http://localhost/origamid/testewp/?post_type=acf-field&#038;p=56', 3, 'acf-field', '', 0),
(57, 1, '2021-08-26 11:17:53', '2021-08-26 14:17:53', '', 'rest-mapa', '', 'inherit', 'open', 'closed', '', 'rest-mapa', '', '', '2021-08-26 11:17:53', '2021-08-26 14:17:53', '', 12, 'http://localhost/origamid/testewp/wp-content/uploads/2021/08/rest-mapa.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2021-08-26 11:18:10', '2021-08-26 14:18:10', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-08-26 11:18:10', '2021-08-26 14:18:10', '', 12, 'http://localhost/origamid/testewp/?p=58', 0, 'revision', '', 0),
(59, 1, '2021-08-26 11:19:09', '2021-08-26 14:19:09', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link Mapa', 'link_mapa', 'publish', 'closed', 'closed', '', 'field_6127a2cade532', '', '', '2021-08-27 11:22:44', '2021-08-27 14:22:44', '', 52, 'http://localhost/origamid/testewp/?post_type=acf-field&#038;p=59', 2, 'acf-field', '', 0),
(60, 1, '2021-08-26 11:19:39', '2021-08-26 14:19:39', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-08-26 11:19:39', '2021-08-26 14:19:39', '', 12, 'http://localhost/origamid/testewp/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-08-26 11:59:08', '2021-08-26 14:59:08', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:23:\"Adicionar informações\";}', 'Informação contato', 'informacao_contato', 'publish', 'closed', 'closed', '', 'field_6127aa4ff992d', '', '', '2021-08-26 12:00:07', '2021-08-26 15:00:07', '', 52, 'http://localhost/origamid/testewp/?post_type=acf-field&#038;p=61', 4, 'acf-field', '', 0),
(62, 1, '2021-08-26 11:59:08', '2021-08-26 14:59:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo Contato', 'titulo_contato', 'publish', 'closed', 'closed', '', 'field_6127aad7f992e', '', '', '2021-08-26 11:59:08', '2021-08-26 14:59:08', '', 61, 'http://localhost/origamid/testewp/?post_type=acf-field&p=62', 0, 'acf-field', '', 0),
(63, 1, '2021-08-26 11:59:08', '2021-08-26 14:59:08', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:15:\"Adicionar dados\";}', 'Dados contato', 'dados_contato', 'publish', 'closed', 'closed', '', 'field_6127abcef992f', '', '', '2021-08-26 13:51:47', '2021-08-26 16:51:47', '', 61, 'http://localhost/origamid/testewp/?post_type=acf-field&#038;p=63', 1, 'acf-field', '', 0),
(64, 1, '2021-08-26 13:46:12', '2021-08-26 16:46:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Dado Contato', 'dado_contato', 'publish', 'closed', 'closed', '', 'field_6127c53c25af7', '', '', '2021-08-26 13:46:12', '2021-08-26 16:46:12', '', 63, 'http://localhost/origamid/testewp/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2021-08-26 13:55:00', '2021-08-26 16:55:00', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-08-26 13:55:00', '2021-08-26 16:55:00', '', 12, 'http://localhost/origamid/testewp/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-08-27 11:23:32', '2021-08-27 14:23:32', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-08-27 11:23:32', '2021-08-27 14:23:32', '', 12, 'http://localhost/origamid/testewp/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-08-27 12:00:08', '2021-08-27 15:00:08', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:10:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:15:\"page_attributes\";i:8;s:14:\"featured_image\";i:9;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'SEO', 'seo', 'publish', 'closed', 'closed', '', 'group_6128fd8e102d6', '', '', '2021-08-27 12:00:08', '2021-08-27 15:00:08', '', 0, 'http://localhost/origamid/testewp/?post_type=acf-field-group&#038;p=67', 0, 'acf-field-group', '', 0),
(68, 1, '2021-08-27 12:00:08', '2021-08-27 15:00:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title SEO', 'title_seo', 'publish', 'closed', 'closed', '', 'field_6128fd9389342', '', '', '2021-08-27 12:00:08', '2021-08-27 15:00:08', '', 67, 'http://localhost/origamid/testewp/?post_type=acf-field&p=68', 0, 'acf-field', '', 0),
(69, 1, '2021-08-27 12:00:08', '2021-08-27 15:00:08', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:2;s:9:\"new_lines\";s:0:\"\";}', 'Description SEO', 'description_seo', 'publish', 'closed', 'closed', '', 'field_6128fd9b89343', '', '', '2021-08-27 12:00:08', '2021-08-27 15:00:08', '', 67, 'http://localhost/origamid/testewp/?post_type=acf-field&p=69', 1, 'acf-field', '', 0),
(70, 1, '2021-08-27 13:09:46', '2021-08-27 16:09:46', '', 'Menu da Semana', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2021-08-27 13:09:46', '2021-08-27 16:09:46', '', 10, 'http://localhost/origamid/testewp/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-08-27 13:11:24', '2021-08-27 16:11:24', '', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2021-08-27 13:11:24', '2021-08-27 16:11:24', '', 14, 'http://localhost/origamid/testewp/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-08-27 13:11:54', '2021-08-27 16:11:54', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-08-27 13:11:54', '2021-08-27 16:11:54', '', 12, 'http://localhost/origamid/testewp/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-08-31 08:59:47', '2021-08-31 11:59:17', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2021-08-31 08:59:47', '2021-08-31 11:59:47', '', 0, 'http://localhost/origamid/testewp/?p=73', 2, 'nav_menu_item', '', 0),
(74, 1, '2021-08-31 08:59:47', '2021-08-31 11:59:17', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2021-08-31 08:59:47', '2021-08-31 11:59:47', '', 0, 'http://localhost/origamid/testewp/?p=74', 3, 'nav_menu_item', '', 0),
(75, 1, '2021-08-31 08:59:47', '2021-08-31 11:59:47', '', 'Menu', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2021-08-31 08:59:47', '2021-08-31 11:59:47', '', 0, 'http://localhost/origamid/testewp/?p=75', 1, 'nav_menu_item', '', 0);

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
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Menu Principal', 'menu-principal', 0);

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
(73, 2, 0),
(74, 2, 0),
(75, 2, 0);

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
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3);

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
(1, 1, 'nickname', 'Gilberto'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"d949c455df077b68d5ca11c95befdba51dd88ba690603c0f5ce46436dfee16c8\";a:4:{s:10:\"expiration\";i:1631116554;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.51 Safari/537.36\";s:5:\"login\";i:1629906954;}}'),
(17, 1, 'wp_user-settings', 'posts_list_mode=excerpt&libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1629938926'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

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
(1, 'Gilberto', '$P$BimiMQWOh9x1Ft5k7QtaeJYVaz1dPN.', 'gilberto', 'gibapacce@gmail.com', 'http://localhost/origamid/testewp', '2021-08-25 15:55:40', '', 0, 'Gilberto');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=879;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
