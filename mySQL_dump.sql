-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 22 2020 г., 08:43
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp-test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_commentmeta`
--

CREATE TABLE `wp_test_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_comments`
--

CREATE TABLE `wp_test_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_test_comments`
--

INSERT INTO `wp_test_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-06 08:29:26', '2020-01-06 08:29:26', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'admin', 'it@orfi.ru', '', '127.0.0.1', '2020-01-20 13:13:29', '2020-01-20 13:13:29', 'test', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', '', 1, 1),
(3, 1, 'admin', 'it@orfi.ru', '', '127.0.0.1', '2020-01-21 12:41:09', '2020-01-21 12:41:09', 'REply test', 0, '1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', '', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_links`
--

CREATE TABLE `wp_test_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_options`
--

CREATE TABLE `wp_test_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_test_options`
--

INSERT INTO `wp_test_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp-test', 'yes'),
(2, 'home', 'http://wp-test', 'yes'),
(3, 'blogname', 'Барбершоп Бородински', 'yes'),
(4, 'blogdescription', 'истинно мужская классика', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'it@orfi.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 's08', 'yes'),
(15, 'mailserver_login', 'smtp@orfi.ru', 'yes'),
(16, 'mailserver_pass', '', 'yes'),
(17, 'mailserver_port', '25', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'closed', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '4', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=33&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:21:\"safe-svg/safe-svg.php\";i:3;s:27:\"theme-check/theme-check.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:68:\"D:\\MyDoc\\Work\\www\\wp_test/wp-content/themes/bardershop/functions.php\";i:1;s:64:\"D:\\MyDoc\\Work\\www\\wp_test/wp-content/themes/bardershop/index.php\";i:2;s:64:\"D:\\MyDoc\\Work\\www\\wp_test/wp-content/themes/bardershop/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'barbershop', 'yes'),
(41, 'stylesheet', 'barbershop', 'yes'),
(42, 'comment_whitelist', '', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
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
(63, 'avatar_default', 'blank', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '33', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '23', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '', 'yes'),
(93, 'admin_email_lifespan', '1593851357', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_test_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1579674570;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1579681768;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579681770;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1579682078;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579682079;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1579692316;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579341937;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}}', 'yes'),
(115, 'recovery_keys', 'a:2:{s:22:\"ptutRLmkGIoUCnsueomTdY\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BTjNOBMAb1XHrNg2mdKfCg.ZK6q6rg/\";s:10:\"created_at\";i:1579511874;}s:22:\"6Inzo6WQh7p0DY9rFijCBm\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BEe50Xh6U5zcKj3Kjv/l5iNrWcINYs0\";s:10:\"created_at\";i:1579607804;}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1579667802;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(120, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1579663866;s:7:\"checked\";a:5:{s:10:\"barbershop\";s:5:\"0.0.1\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(121, 'can_compress_scripts', '1', 'no'),
(132, 'current_theme', 'Barbershop', 'yes'),
(133, 'theme_mods_test_custom', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578406876;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}}}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(152, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578407684;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(154, 'theme_mods_bardershop', 'a:5:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:4:\"user\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579341922;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}}}s:11:\"custom_logo\";s:0:\"\";s:16:\"header_textcolor\";s:0:\"\";}', 'yes'),
(156, 'theme_switched_via_customizer', '', 'yes'),
(157, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(163, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"4\",\"critical\":\"1\"}', 'yes'),
(172, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(217, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578576977;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(248, 'recently_activated', 'a:0:{}', 'yes'),
(255, 'bodhi_svgs_plugin_version', '2.3.15', 'yes'),
(257, 'bodhi_svgs_settings', 'a:1:{s:10:\"css_target\";s:0:\"\";}', 'yes'),
(278, 'acf_version', '5.8.7', 'yes'),
(386, 'recovery_mode_email_last_sent', '1579607804', 'yes'),
(410, 'theme_mods_barbershop', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(444, 'category_children', 'a:0:{}', 'yes'),
(467, '_transient_timeout_plugin_slugs', '1579758072', 'no'),
(468, '_transient_plugin_slugs', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:9:\"hello.php\";i:3;s:31:\"query-monitor/query-monitor.php\";i:4;s:21:\"safe-svg/safe-svg.php\";i:5;s:27:\"theme-check/theme-check.php\";}', 'no'),
(472, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1579671671;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"query-monitor/query-monitor.php\";s:5:\"3.5.2\";s:21:\"safe-svg/safe-svg.php\";s:5:\"1.9.7\";s:27:\"theme-check/theme-check.php\";s:10:\"20190801.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/query-monitor.3.5.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2056073\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=1629576\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=1731469\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"1.9.7\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.1.9.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"theme-check/theme-check.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/theme-check\";s:4:\"slug\";s:11:\"theme-check\";s:6:\"plugin\";s:27:\"theme-check/theme-check.php\";s:11:\"new_version\";s:10:\"20190801.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/theme-check/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/theme-check.20190801.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/theme-check/assets/icon-128x128.png?rev=972579\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/theme-check/assets/banner-1544x500.png?rev=904294\";s:2:\"1x\";s:65:\"https://ps.w.org/theme-check/assets/banner-772x250.png?rev=904294\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(474, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1579620845', 'no'),
(475, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4659;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3870;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2656;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2538;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1950;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1785;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1770;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1479;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1464;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1458;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1446;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1404;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1380;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1297;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1168;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1158;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1116;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1082;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1082;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:976;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:864;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:862;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:856;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:838;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:776;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:756;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:750;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:746;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:739;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:729;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:711;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:696;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:692;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:689;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:674;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:658;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:642;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:640;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:632;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:624;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:623;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:610;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:581;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:571;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:569;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:567;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:550;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:541;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:539;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:538;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:533;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:527;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:526;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:526;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:516;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:508;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:493;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:491;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:491;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:484;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:483;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:473;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:470;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:462;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:454;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:436;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:435;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:429;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:422;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:420;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:420;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:414;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:410;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:407;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:400;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:391;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:389;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:389;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:383;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:377;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:374;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:373;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:373;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:368;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:364;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:358;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:354;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:350;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:343;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:334;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:333;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:330;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:329;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:324;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:321;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:320;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:320;}}', 'no'),
(476, '_site_transient_timeout_browser_5b9416d1777133ee4eb4911051b2ca3d', '1580214881', 'no'),
(477, '_site_transient_browser_5b9416d1777133ee4eb4911051b2ca3d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.117\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(478, '_site_transient_timeout_php_check_b3655adab148a1a6c8391bd3893ea554', '1580214882', 'no'),
(479, '_site_transient_php_check_b3655adab148a1a6c8391bd3893ea554', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(497, '_site_transient_timeout_theme_roots', '1579669560', 'no'),
(498, '_site_transient_theme_roots', 'a:5:{s:10:\"barbershop\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(499, '_site_transient_timeout_browser_5f76c2e57f444265893fb658ba211f6b', '1580272573', 'no'),
(500, '_site_transient_browser_5f76c2e57f444265893fb658ba211f6b', 'a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(501, '_site_transient_timeout_available_translations', '1579678918', 'no');
INSERT INTO `wp_test_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(502, '_site_transient_available_translations', 'a:121:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-05 08:33:42\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-03 13:14:07\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.13/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-06 10:37:03\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"4.8.12\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.8.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-23 02:24:08\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-18 19:20:00\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 19:05:13\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-29 07:15:52\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-10 11:38:15\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 20:45:17\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 08:02:09\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 11:15:22\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-14 11:38:17\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 08:02:56\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.3.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-03 13:57:52\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-10 10:14:21\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 21:30:20\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.4/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:04:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 21:29:53\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:31:58\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-16 16:42:18\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-04 06:34:28\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-11 03:56:06\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-14 16:08:46\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-12-07 04:01:34\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-04 17:46:33\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-09 12:35:27\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-09 21:52:48\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-08 17:55:03\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-15 23:45:20\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 09:08:55\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 12:30:18\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-18 16:37:38\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-01 17:58:42\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-20 16:09:08\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 16:22:28\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-11-28 17:22:10\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-04 22:54:51\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-20 17:02:39\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-02 04:22:13\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-11-04 08:57:25\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.4/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.13\";s:7:\"updated\";s:19:\"2019-12-04 12:22:34\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.13/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-11-05 01:54:57\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.11/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-19 02:18:44\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 20:22:22\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 19:42:41\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-12 09:57:15\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-01 08:53:00\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-22 13:20:49\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-08 13:01:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-14 08:20:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-22 00:32:52\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-20 15:23:24\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-15 11:15:31\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-17 16:11:46\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:3:\"5.3\";s:7:\"updated\";s:19:\"2019-11-12 04:37:38\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/5.3/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:2:\"sd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-02 07:46:23\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-14 22:44:44\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-15 22:50:02\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-12 07:05:13\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.5\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.5/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 08:19:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-18 12:53:53\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-12 14:06:20\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.4\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-07 15:52:24\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-29 17:33:44\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-01-16 03:03:10\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2019-12-08 21:26:25\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_postmeta`
--

CREATE TABLE `wp_test_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_test_postmeta`
--

INSERT INTO `wp_test_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(31, 17, '_wp_trash_meta_status', 'publish'),
(32, 17, '_wp_trash_meta_time', '1578407685'),
(33, 18, '_edit_lock', '1578464840:1'),
(34, 18, '_wp_trash_meta_status', 'publish'),
(35, 18, '_wp_trash_meta_time', '1578464859'),
(36, 19, '_wp_attached_file', '2020/01/favicon.ico'),
(37, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:19:\"2020/01/favicon.ico\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 20, '_wp_attached_file', '2020/01/favicon-16x16-1.png'),
(39, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:16;s:6:\"height\";i:16;s:4:\"file\";s:27:\"2020/01/favicon-16x16-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 21, '_wp_attached_file', '2020/01/favicon-32x32-1.png'),
(41, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:27:\"2020/01/favicon-32x32-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 22, '_wp_attached_file', '2020/01/favicon-64x64-1.png'),
(43, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:27:\"2020/01/favicon-64x64-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 23, '_wp_attached_file', '2020/01/favicon-96x96-1.png'),
(45, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:96;s:6:\"height\";i:96;s:4:\"file\";s:27:\"2020/01/favicon-96x96-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 24, '_edit_lock', '1578470199:1'),
(47, 24, '_wp_trash_meta_status', 'publish'),
(48, 24, '_wp_trash_meta_time', '1578470207'),
(49, 2, '_edit_lock', '1578726218:1'),
(50, 26, '_menu_item_type', 'custom'),
(51, 26, '_menu_item_menu_item_parent', '0'),
(52, 26, '_menu_item_object_id', '26'),
(53, 26, '_menu_item_object', 'custom'),
(54, 26, '_menu_item_target', ''),
(55, 26, '_menu_item_classes', 'a:1:{i:0;s:14:\"main-nav__item\";}'),
(56, 26, '_menu_item_xfn', ''),
(57, 26, '_menu_item_url', 'http://wp-test/'),
(95, 31, '_menu_item_type', 'custom'),
(96, 31, '_menu_item_menu_item_parent', '0'),
(97, 31, '_menu_item_object_id', '31'),
(98, 31, '_menu_item_object', 'custom'),
(99, 31, '_menu_item_target', ''),
(100, 31, '_menu_item_classes', 'a:1:{i:0;s:19:\"main-nav__user-item\";}'),
(101, 31, '_menu_item_xfn', ''),
(102, 31, '_menu_item_url', '#'),
(105, 33, '_edit_lock', '1579273310:1'),
(106, 35, '_edit_lock', '1578726198:1'),
(107, 35, '_edit_last', '1'),
(108, 37, '_edit_lock', '1579010903:1'),
(109, 39, '_edit_lock', '1579336509:1'),
(110, 41, '_edit_lock', '1578726225:1'),
(111, 37, '_edit_last', '1'),
(112, 39, '_edit_last', '1'),
(113, 43, '_menu_item_type', 'post_type'),
(114, 43, '_menu_item_menu_item_parent', '0'),
(115, 43, '_menu_item_object_id', '41'),
(116, 43, '_menu_item_object', 'page'),
(117, 43, '_menu_item_target', ''),
(118, 43, '_menu_item_classes', 'a:1:{i:0;s:14:\"main-nav__item\";}'),
(119, 43, '_menu_item_xfn', ''),
(120, 43, '_menu_item_url', ''),
(122, 44, '_menu_item_type', 'post_type'),
(123, 44, '_menu_item_menu_item_parent', '0'),
(124, 44, '_menu_item_object_id', '39'),
(125, 44, '_menu_item_object', 'page'),
(126, 44, '_menu_item_target', ''),
(127, 44, '_menu_item_classes', 'a:1:{i:0;s:14:\"main-nav__item\";}'),
(128, 44, '_menu_item_xfn', ''),
(129, 44, '_menu_item_url', ''),
(131, 45, '_menu_item_type', 'post_type'),
(132, 45, '_menu_item_menu_item_parent', '0'),
(133, 45, '_menu_item_object_id', '37'),
(134, 45, '_menu_item_object', 'page'),
(135, 45, '_menu_item_target', ''),
(136, 45, '_menu_item_classes', 'a:1:{i:0;s:14:\"main-nav__item\";}'),
(137, 45, '_menu_item_xfn', ''),
(138, 45, '_menu_item_url', ''),
(149, 33, '_wp_page_template', 'default'),
(150, 35, '_wp_page_template', 'templates/tpl_default.php'),
(151, 37, '_wp_page_template', 'default'),
(152, 39, '_wp_page_template', 'templates/tpl_default.php'),
(153, 41, '_edit_last', '1'),
(154, 41, '_wp_page_template', 'templates/tpl_default.php'),
(155, 33, '_edit_last', '1'),
(156, 1, '_edit_lock', '1579611160:1'),
(159, 56, '_wp_attached_file', '2020/01/cropped-photo-2-tablet.jpg'),
(160, 56, '_wp_attachment_context', 'custom-logo'),
(161, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:270;s:4:\"file\";s:34:\"2020/01/cropped-photo-2-tablet.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-photo-2-tablet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 57, '_edit_lock', '1578717727:1'),
(163, 57, '_wp_trash_meta_status', 'publish'),
(164, 57, '_wp_trash_meta_time', '1578717734'),
(167, 59, '_wp_trash_meta_status', 'publish'),
(168, 59, '_wp_trash_meta_time', '1578719253'),
(171, 61, '_wp_attached_file', '2020/01/logotype-desktop.svg'),
(172, 61, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:369;s:6:\"height\";i:153;s:4:\"file\";s:29:\"/2020/01/logotype-desktop.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:20:\"logotype-desktop.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logotype-desktop.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logotype-desktop.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:20:\"logotype-desktop.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:20:\"logotype-desktop.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:20:\"logotype-desktop.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(173, 62, '_wp_attached_file', '2020/01/logotype-mobile.svg'),
(174, 62, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:225;s:6:\"height\";i:30;s:4:\"file\";s:28:\"/2020/01/logotype-mobile.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:19:\"logotype-mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"logotype-mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"logotype-mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"logotype-mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:19:\"logotype-mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:19:\"logotype-mobile.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(175, 63, '_wp_attached_file', '2020/01/logotype-tablet.svg'),
(176, 63, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:369;s:6:\"height\";i:100;s:4:\"file\";s:28:\"/2020/01/logotype-tablet.svg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:19:\"logotype-tablet.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"logotype-tablet.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"logotype-tablet.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:19:\"logotype-tablet.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:19:\"logotype-tablet.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:19:\"logotype-tablet.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(177, 64, '_wp_trash_meta_status', 'publish'),
(178, 64, '_wp_trash_meta_time', '1578724040'),
(179, 65, '_wp_trash_meta_status', 'publish'),
(180, 65, '_wp_trash_meta_time', '1578724624'),
(181, 23, '_edit_lock', '1578725493:1'),
(182, 2, '_edit_last', '1'),
(184, 68, '_edit_lock', '1579668475:1'),
(186, 70, '_menu_item_type', 'taxonomy'),
(187, 70, '_menu_item_menu_item_parent', '0'),
(188, 70, '_menu_item_object_id', '4'),
(189, 70, '_menu_item_object', 'category'),
(190, 70, '_menu_item_target', ''),
(191, 70, '_menu_item_classes', 'a:1:{i:0;s:14:\"main-nav__item\";}'),
(192, 70, '_menu_item_xfn', ''),
(193, 70, '_menu_item_url', ''),
(197, 72, '_edit_last', '1'),
(198, 72, '_edit_lock', '1578729052:1'),
(199, 75, '_edit_last', '1'),
(200, 75, '_edit_lock', '1578742747:1'),
(201, 77, '_wp_attached_file', '2020/01/photo-1-desktop.jpg'),
(202, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:27:\"2020/01/photo-1-desktop.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"photo-1-desktop-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"photo-1-desktop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 68, '_edit_last', '1'),
(205, 68, 'haircut', ''),
(206, 68, '_haircut', 'field_5e197a5bcdffd'),
(207, 68, 'shave', ''),
(208, 68, '_shave', 'field_5e197aabcdffe'),
(209, 68, 'photo_work', '77'),
(210, 68, '_photo_work', 'field_5e197c42d717d'),
(211, 78, 'haircut', ''),
(212, 78, '_haircut', 'field_5e197a5bcdffd'),
(213, 78, 'shave', ''),
(214, 78, '_shave', 'field_5e197aabcdffe'),
(215, 78, 'photo_work', '77'),
(216, 78, '_photo_work', 'field_5e197c42d717d'),
(218, 79, 'haircut', ''),
(219, 79, '_haircut', 'field_5e197a5bcdffd'),
(220, 79, 'shave', ''),
(221, 79, '_shave', 'field_5e197aabcdffe'),
(222, 79, 'photo_work', '77'),
(223, 79, '_photo_work', 'field_5e197c42d717d'),
(225, 68, 'type_works', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"test2\";}'),
(226, 68, '_type_works', 'field_5e197a5bcdffd'),
(227, 80, 'haircut', ''),
(228, 80, '_haircut', 'field_5e197a5bcdffd'),
(229, 80, 'shave', ''),
(230, 80, '_shave', 'field_5e197aabcdffe'),
(231, 80, 'photo_work', '77'),
(232, 80, '_photo_work', 'field_5e197c42d717d'),
(233, 80, 'type_works', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"test2\";}'),
(234, 80, '_type_works', 'field_5e197a5bcdffd'),
(235, 72, '_wp_trash_meta_status', 'publish'),
(236, 72, '_wp_trash_meta_time', '1578729200'),
(237, 72, '_wp_desired_post_slug', 'group_5e197a0a7cbcf'),
(238, 74, '_wp_trash_meta_status', 'publish'),
(239, 74, '_wp_trash_meta_time', '1578729200'),
(240, 74, '_wp_desired_post_slug', 'field_5e197aabcdffe'),
(242, 68, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:8:\"mustache\";}'),
(243, 68, '_work_type', 'field_5e197a5bcdffd'),
(244, 68, 'work_photo', '77'),
(245, 68, '_work_photo', 'field_5e197c42d717d'),
(246, 68, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(247, 68, '_work_description', 'field_5e197f78f4b48'),
(248, 82, 'haircut', ''),
(249, 82, '_haircut', 'field_5e197a5bcdffd'),
(250, 82, 'shave', ''),
(251, 82, '_shave', 'field_5e197aabcdffe'),
(252, 82, 'photo_work', '77'),
(253, 82, '_photo_work', 'field_5e197c42d717d'),
(254, 82, 'type_works', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"test2\";}'),
(255, 82, '_type_works', 'field_5e197a5bcdffd'),
(256, 82, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"shave\";}'),
(257, 82, '_work_type', 'field_5e197a5bcdffd'),
(258, 82, 'work_photo', '77'),
(259, 82, '_work_photo', 'field_5e197c42d717d'),
(260, 82, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(261, 82, '_work_description', 'field_5e197f78f4b48'),
(262, 77, '_wp_attachment_image_alt', 'Пример нашей работы'),
(264, 83, 'haircut', ''),
(265, 83, '_haircut', 'field_5e197a5bcdffd'),
(266, 83, 'shave', ''),
(267, 83, '_shave', 'field_5e197aabcdffe'),
(268, 83, 'photo_work', '77'),
(269, 83, '_photo_work', 'field_5e197c42d717d'),
(270, 83, 'type_works', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"test2\";}'),
(271, 83, '_type_works', 'field_5e197a5bcdffd'),
(272, 83, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"shave\";}'),
(273, 83, '_work_type', 'field_5e197a5bcdffd'),
(274, 83, 'work_photo', '77'),
(275, 83, '_work_photo', 'field_5e197c42d717d'),
(276, 83, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(277, 83, '_work_description', 'field_5e197f78f4b48'),
(279, 84, 'haircut', ''),
(280, 84, '_haircut', 'field_5e197a5bcdffd'),
(281, 84, 'shave', ''),
(282, 84, '_shave', 'field_5e197aabcdffe'),
(283, 84, 'photo_work', '77'),
(284, 84, '_photo_work', 'field_5e197c42d717d'),
(285, 84, 'type_works', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"test2\";}'),
(286, 84, '_type_works', 'field_5e197a5bcdffd'),
(287, 84, 'work_type', 'a:4:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";i:2;s:5:\"beard\";i:3;s:8:\"mustache\";}'),
(288, 84, '_work_type', 'field_5e197a5bcdffd'),
(289, 84, 'work_photo', '77'),
(290, 84, '_work_photo', 'field_5e197c42d717d'),
(291, 84, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(292, 84, '_work_description', 'field_5e197f78f4b48'),
(293, 85, '_edit_lock', '1578735251:1'),
(294, 86, '_wp_attached_file', '2020/01/photo-2-desktop.jpg'),
(295, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:294;s:6:\"height\";i:294;s:4:\"file\";s:27:\"2020/01/photo-2-desktop.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"photo-2-desktop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 86, '_wp_attachment_image_alt', 'Пример нашей работы'),
(298, 85, '_edit_last', '1'),
(299, 85, 'work_type', 'a:4:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";i:2;s:5:\"beard\";i:3;s:8:\"mustache\";}'),
(300, 85, '_work_type', 'field_5e197a5bcdffd'),
(301, 85, 'work_photo', '86'),
(302, 85, '_work_photo', 'field_5e197c42d717d'),
(303, 85, 'work_description', 'Попросил омолодить и омолодили! Кто теперь скажет, что мне 45?'),
(304, 85, '_work_description', 'field_5e197f78f4b48'),
(305, 88, 'work_type', 'a:4:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";i:2;s:5:\"beard\";i:3;s:8:\"mustache\";}'),
(306, 88, '_work_type', 'field_5e197a5bcdffd'),
(307, 88, 'work_photo', '86'),
(308, 88, '_work_photo', 'field_5e197c42d717d'),
(309, 88, 'work_description', 'Попросил омолодить и омолодили! Кто теперь скажет, что мне 45?'),
(310, 88, '_work_description', 'field_5e197f78f4b48'),
(312, 68, 'дополнительно', 'a:1:{i:0;s:10:\"work_month\";}'),
(313, 68, '_дополнительно', 'field_5e19961b625e7'),
(314, 90, 'haircut', ''),
(315, 90, '_haircut', 'field_5e197a5bcdffd'),
(316, 90, 'shave', ''),
(317, 90, '_shave', 'field_5e197aabcdffe'),
(318, 90, 'photo_work', '77'),
(319, 90, '_photo_work', 'field_5e197c42d717d'),
(320, 90, 'type_works', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"test2\";}'),
(321, 90, '_type_works', 'field_5e197a5bcdffd'),
(322, 90, 'work_type', 'a:4:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";i:2;s:5:\"beard\";i:3;s:8:\"mustache\";}'),
(323, 90, '_work_type', 'field_5e197a5bcdffd'),
(324, 90, 'work_photo', '77'),
(325, 90, '_work_photo', 'field_5e197c42d717d'),
(326, 90, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(327, 90, '_work_description', 'field_5e197f78f4b48'),
(328, 90, 'дополнительно', 'a:1:{i:0;s:10:\"work_month\";}'),
(329, 90, '_дополнительно', 'field_5e19961b625e7'),
(331, 68, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(332, 68, '_additionally', 'field_5e19961b625e7'),
(333, 91, 'haircut', ''),
(334, 91, '_haircut', 'field_5e197a5bcdffd'),
(335, 91, 'shave', ''),
(336, 91, '_shave', 'field_5e197aabcdffe'),
(337, 91, 'photo_work', '77'),
(338, 91, '_photo_work', 'field_5e197c42d717d'),
(339, 91, 'type_works', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"test2\";}'),
(340, 91, '_type_works', 'field_5e197a5bcdffd'),
(341, 91, 'work_type', 'a:4:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";i:2;s:5:\"beard\";i:3;s:8:\"mustache\";}'),
(342, 91, '_work_type', 'field_5e197a5bcdffd'),
(343, 91, 'work_photo', '77'),
(344, 91, '_work_photo', 'field_5e197c42d717d'),
(345, 91, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(346, 91, '_work_description', 'field_5e197f78f4b48'),
(347, 91, 'дополнительно', 'a:1:{i:0;s:10:\"work_month\";}'),
(348, 91, '_дополнительно', 'field_5e19961b625e7'),
(349, 91, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(350, 91, '_additionally', 'field_5e19961b625e7'),
(352, 92, 'haircut', ''),
(353, 92, '_haircut', 'field_5e197a5bcdffd'),
(354, 92, 'shave', ''),
(355, 92, '_shave', 'field_5e197aabcdffe'),
(356, 92, 'photo_work', '77'),
(357, 92, '_photo_work', 'field_5e197c42d717d'),
(358, 92, 'type_works', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"test2\";}'),
(359, 92, '_type_works', 'field_5e197a5bcdffd'),
(360, 92, 'work_type', 'a:4:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";i:2;s:5:\"beard\";i:3;s:8:\"mustache\";}'),
(361, 92, '_work_type', 'field_5e197a5bcdffd'),
(362, 92, 'work_photo', '77'),
(363, 92, '_work_photo', 'field_5e197c42d717d'),
(364, 92, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(365, 92, '_work_description', 'field_5e197f78f4b48'),
(366, 92, 'дополнительно', 'a:1:{i:0;s:10:\"work_month\";}'),
(367, 92, '_дополнительно', 'field_5e19961b625e7'),
(368, 92, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(369, 92, '_additionally', 'field_5e19961b625e7'),
(371, 93, 'haircut', ''),
(372, 93, '_haircut', 'field_5e197a5bcdffd'),
(373, 93, 'shave', ''),
(374, 93, '_shave', 'field_5e197aabcdffe'),
(375, 93, 'photo_work', '77'),
(376, 93, '_photo_work', 'field_5e197c42d717d'),
(377, 93, 'type_works', 'a:2:{i:0;s:7:\"haircut\";i:1;s:5:\"test2\";}'),
(378, 93, '_type_works', 'field_5e197a5bcdffd'),
(379, 93, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:8:\"mustache\";}'),
(380, 93, '_work_type', 'field_5e197a5bcdffd'),
(381, 93, 'work_photo', '77'),
(382, 93, '_work_photo', 'field_5e197c42d717d'),
(383, 93, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(384, 93, '_work_description', 'field_5e197f78f4b48'),
(385, 93, 'дополнительно', 'a:1:{i:0;s:10:\"work_month\";}'),
(386, 93, '_дополнительно', 'field_5e19961b625e7'),
(387, 93, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(388, 93, '_additionally', 'field_5e19961b625e7'),
(389, 94, '_edit_lock', '1578738941:1'),
(391, 94, '_edit_last', '1'),
(392, 94, 'work_type', 'a:1:{i:0;s:7:\"haircut\";}'),
(393, 94, '_work_type', 'field_5e197a5bcdffd'),
(394, 94, 'work_photo', '104'),
(395, 94, '_work_photo', 'field_5e197c42d717d'),
(396, 94, 'work_description', 'Как только заростаю и волосы начинают мешать видеть — бегом в Бородинский!'),
(397, 94, '_work_description', 'field_5e197f78f4b48'),
(398, 94, 'additionally', ''),
(399, 94, '_additionally', 'field_5e19961b625e7'),
(400, 96, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:8:\"mustache\";}'),
(401, 96, '_work_type', 'field_5e197a5bcdffd'),
(402, 96, 'work_photo', '77'),
(403, 96, '_work_photo', 'field_5e197c42d717d'),
(404, 96, 'work_description', 'Как только заростаю и волосы начинают мешать видеть — бегом в Бородинский!'),
(405, 96, '_work_description', 'field_5e197f78f4b48'),
(406, 96, 'additionally', ''),
(407, 96, '_additionally', 'field_5e19961b625e7'),
(409, 98, '_edit_lock', '1579005628:1'),
(411, 98, '_edit_last', '1'),
(412, 98, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";}'),
(413, 98, '_work_type', 'field_5e197a5bcdffd'),
(414, 98, 'work_photo', '141'),
(415, 98, '_work_photo', 'field_5e197c42d717d'),
(416, 98, 'work_description', 'К зимнему сезону — готов!'),
(417, 98, '_work_description', 'field_5e197f78f4b48'),
(418, 98, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(419, 98, '_additionally', 'field_5e19961b625e7'),
(420, 100, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";}'),
(421, 100, '_work_type', 'field_5e197a5bcdffd'),
(422, 100, 'work_photo', '77'),
(423, 100, '_work_photo', 'field_5e197c42d717d'),
(424, 100, 'work_description', 'К зимнему сезону — готов!'),
(425, 100, '_work_description', 'field_5e197f78f4b48'),
(426, 100, 'additionally', ''),
(427, 100, '_additionally', 'field_5e19961b625e7'),
(428, 101, '_wp_attached_file', 'photo-3-desktop.jpg'),
(429, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:294;s:6:\"height\";i:294;s:4:\"file\";s:19:\"photo-3-desktop.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"photo-3-desktop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(430, 101, '_wp_attachment_image_alt', 'Пример нашей работы'),
(432, 102, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";}'),
(433, 102, '_work_type', 'field_5e197a5bcdffd'),
(434, 102, 'work_photo', '101'),
(435, 102, '_work_photo', 'field_5e197c42d717d'),
(436, 102, 'work_description', 'К зимнему сезону — готов!'),
(437, 102, '_work_description', 'field_5e197f78f4b48'),
(438, 102, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(439, 102, '_additionally', 'field_5e19961b625e7'),
(441, 103, 'work_type', 'a:2:{i:0;s:5:\"beard\";i:1;s:8:\"mustache\";}'),
(442, 103, '_work_type', 'field_5e197a5bcdffd'),
(443, 103, 'work_photo', '101'),
(444, 103, '_work_photo', 'field_5e197c42d717d'),
(445, 103, 'work_description', 'К зимнему сезону — готов!'),
(446, 103, '_work_description', 'field_5e197f78f4b48'),
(447, 103, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(448, 103, '_additionally', 'field_5e19961b625e7'),
(449, 104, '_wp_attached_file', 'photo-4-desktop.jpg'),
(450, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:294;s:6:\"height\";i:294;s:4:\"file\";s:19:\"photo-4-desktop.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"photo-4-desktop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(451, 104, '_wp_attachment_image_alt', 'Пример нашей работы'),
(453, 105, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:8:\"mustache\";}'),
(454, 105, '_work_type', 'field_5e197a5bcdffd'),
(455, 105, 'work_photo', '104'),
(456, 105, '_work_photo', 'field_5e197c42d717d'),
(457, 105, 'work_description', 'Как только заростаю и волосы начинают мешать видеть — бегом в Бородинский!'),
(458, 105, '_work_description', 'field_5e197f78f4b48'),
(459, 105, 'additionally', ''),
(460, 105, '_additionally', 'field_5e19961b625e7'),
(462, 106, 'work_type', 'a:1:{i:0;s:7:\"haircut\";}'),
(463, 106, '_work_type', 'field_5e197a5bcdffd'),
(464, 106, 'work_photo', '104'),
(465, 106, '_work_photo', 'field_5e197c42d717d'),
(466, 106, 'work_description', 'Как только заростаю и волосы начинают мешать видеть — бегом в Бородинский!'),
(467, 106, '_work_description', 'field_5e197f78f4b48'),
(468, 106, 'additionally', ''),
(469, 106, '_additionally', 'field_5e19961b625e7'),
(471, 107, 'work_type', 'a:2:{i:0;s:5:\"beard\";i:1;s:8:\"mustache\";}'),
(472, 107, '_work_type', 'field_5e197a5bcdffd'),
(473, 107, 'work_photo', '101'),
(474, 107, '_work_photo', 'field_5e197c42d717d'),
(475, 107, 'work_description', 'К зимнему сезону — готов!'),
(476, 107, '_work_description', 'field_5e197f78f4b48'),
(477, 107, 'additionally', ''),
(478, 107, '_additionally', 'field_5e19961b625e7'),
(480, 108, 'work_type', 'a:2:{i:0;s:5:\"beard\";i:1;s:8:\"mustache\";}'),
(481, 108, '_work_type', 'field_5e197a5bcdffd'),
(482, 108, 'work_photo', '101'),
(483, 108, '_work_photo', 'field_5e197c42d717d'),
(484, 108, 'work_description', 'К зимнему сезону — готов!'),
(485, 108, '_work_description', 'field_5e197f78f4b48'),
(486, 108, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(487, 108, '_additionally', 'field_5e19961b625e7'),
(488, 109, '_edit_lock', '1578740169:1'),
(490, 109, '_edit_last', '1'),
(491, 109, 'work_type', 'a:1:{i:0;s:7:\"haircut\";}'),
(492, 109, '_work_type', 'field_5e197a5bcdffd'),
(493, 109, 'work_photo', '77'),
(494, 109, '_work_photo', 'field_5e197c42d717d'),
(495, 109, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(496, 109, '_work_description', 'field_5e197f78f4b48'),
(497, 109, 'additionally', ''),
(498, 109, '_additionally', 'field_5e19961b625e7'),
(499, 111, 'work_type', 'a:1:{i:0;s:7:\"haircut\";}'),
(500, 111, '_work_type', 'field_5e197a5bcdffd'),
(501, 111, 'work_photo', '77'),
(502, 111, '_work_photo', 'field_5e197c42d717d'),
(503, 111, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(504, 111, '_work_description', 'field_5e197f78f4b48'),
(505, 111, 'additionally', ''),
(506, 111, '_additionally', 'field_5e19961b625e7'),
(507, 112, '_edit_lock', '1579669545:1'),
(509, 112, '_edit_last', '1'),
(510, 112, 'work_type', 'a:2:{i:0;s:5:\"beard\";i:1;s:8:\"mustache\";}'),
(511, 112, '_work_type', 'field_5e197a5bcdffd'),
(512, 112, 'work_photo', '101'),
(513, 112, '_work_photo', 'field_5e197c42d717d'),
(514, 112, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(515, 112, '_work_description', 'field_5e197f78f4b48'),
(516, 112, 'additionally', ''),
(517, 112, '_additionally', 'field_5e19961b625e7'),
(518, 114, 'work_type', 'a:2:{i:0;s:5:\"beard\";i:1;s:8:\"mustache\";}'),
(519, 114, '_work_type', 'field_5e197a5bcdffd'),
(520, 114, 'work_photo', '101'),
(521, 114, '_work_photo', 'field_5e197c42d717d'),
(522, 114, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(523, 114, '_work_description', 'field_5e197f78f4b48'),
(524, 114, 'additionally', ''),
(525, 114, '_additionally', 'field_5e19961b625e7'),
(526, 116, '_edit_last', '1'),
(527, 116, '_edit_lock', '1578746906:1'),
(528, 119, '_edit_lock', '1578743402:1'),
(530, 119, '_edit_last', '1'),
(531, 119, 'price_options', 'a:1:{i:0;s:12:\"washing_head\";}'),
(532, 119, '_price_options', 'field_5e19b57c496c3'),
(533, 119, 'price', '1 500 руб.'),
(534, 119, '_price', 'field_5e19b5f9496c4'),
(535, 121, 'price_options', 'a:1:{i:0;s:12:\"washing_head\";}'),
(536, 121, '_price_options', 'field_5e19b57c496c3'),
(537, 121, 'price', '1 500 руб.'),
(538, 121, '_price', 'field_5e19b5f9496c4'),
(539, 122, '_edit_lock', '1579667972:1'),
(541, 122, '_edit_last', '1'),
(542, 122, 'price_options', 'a:1:{i:0;s:12:\"washing_head\";}'),
(543, 122, '_price_options', 'field_5e19b57c496c3'),
(544, 122, 'price', '1 500 руб.'),
(545, 122, '_price', 'field_5e19b5f9496c4'),
(546, 124, 'price_options', 'a:1:{i:0;s:12:\"washing_head\";}'),
(547, 124, '_price_options', 'field_5e19b57c496c3'),
(548, 124, 'price', '1 500 руб.'),
(549, 124, '_price', 'field_5e19b5f9496c4'),
(551, 126, '_edit_lock', '1578743485:1'),
(553, 126, '_edit_last', '1'),
(554, 126, 'price_options', 'a:1:{i:0;s:12:\"washing_head\";}'),
(555, 126, '_price_options', 'field_5e19b57c496c3'),
(556, 126, 'price', '2 000 руб.'),
(557, 126, '_price', 'field_5e19b5f9496c4'),
(558, 128, 'price_options', 'a:1:{i:0;s:12:\"washing_head\";}'),
(559, 128, '_price_options', 'field_5e19b57c496c3'),
(560, 128, 'price', '2 000 руб.'),
(561, 128, '_price', 'field_5e19b5f9496c4'),
(562, 129, '_edit_lock', '1579669834:1'),
(564, 129, '_edit_last', '1'),
(565, 129, 'price_options', ''),
(566, 129, '_price_options', 'field_5e19b57c496c3'),
(567, 129, 'price', '500 руб.'),
(568, 129, '_price', 'field_5e19b5f9496c4'),
(569, 131, 'price_options', ''),
(570, 131, '_price_options', 'field_5e19b57c496c3'),
(571, 131, 'price', '500 руб.'),
(572, 131, '_price', 'field_5e19b5f9496c4'),
(573, 132, '_edit_lock', '1578745301:1'),
(575, 132, '_edit_last', '1'),
(576, 132, 'price_options', 'a:1:{i:0;s:12:\"washing_head\";}'),
(577, 132, '_price_options', 'field_5e19b57c496c3'),
(578, 132, 'price', '1 000 руб.'),
(579, 132, '_price', 'field_5e19b5f9496c4'),
(580, 134, 'price_options', 'a:1:{i:0;s:12:\"washing_head\";}'),
(581, 134, '_price_options', 'field_5e19b57c496c3'),
(582, 134, 'price', '1 000 руб.'),
(583, 134, '_price', 'field_5e19b5f9496c4'),
(584, 135, '_edit_lock', '1579669483:1'),
(586, 135, '_edit_last', '1'),
(587, 135, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";}'),
(588, 135, '_work_type', 'field_5e197a5bcdffd'),
(589, 135, 'work_photo', '77'),
(590, 135, '_work_photo', 'field_5e197c42d717d'),
(591, 135, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(592, 135, '_work_description', 'field_5e197f78f4b48'),
(593, 135, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(594, 135, '_additionally', 'field_5e19961b625e7'),
(595, 137, 'work_type', 'a:3:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";i:2;s:8:\"mustache\";}'),
(596, 137, '_work_type', 'field_5e197a5bcdffd'),
(597, 137, 'work_photo', '77'),
(598, 137, '_work_photo', 'field_5e197c42d717d'),
(599, 137, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(600, 137, '_work_description', 'field_5e197f78f4b48'),
(601, 137, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(602, 137, '_additionally', 'field_5e19961b625e7'),
(605, 138, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";}'),
(606, 138, '_work_type', 'field_5e197a5bcdffd'),
(607, 138, 'work_photo', '77'),
(608, 138, '_work_photo', 'field_5e197c42d717d'),
(609, 138, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(610, 138, '_work_description', 'field_5e197f78f4b48'),
(611, 138, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(612, 138, '_additionally', 'field_5e19961b625e7'),
(613, 35, '_wp_trash_meta_status', 'publish'),
(614, 35, '_wp_trash_meta_time', '1578752132'),
(615, 35, '_wp_desired_post_slug', 'works'),
(617, 139, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";}'),
(618, 139, '_work_type', 'field_5e197a5bcdffd'),
(619, 139, 'work_photo', '77'),
(620, 139, '_work_photo', 'field_5e197c42d717d'),
(621, 139, 'work_description', 'Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\r\nГде я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!'),
(622, 139, '_work_description', 'field_5e197f78f4b48'),
(623, 139, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(624, 139, '_additionally', 'field_5e19961b625e7'),
(625, 140, '_wp_attached_file', 'barber-935324_640.jpg'),
(626, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:426;s:4:\"file\";s:21:\"barber-935324_640.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"barber-935324_640-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"barber-935324_640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(627, 141, '_wp_attached_file', 'barber-935324_640-1.jpg'),
(628, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:497;s:6:\"height\";i:426;s:4:\"file\";s:23:\"barber-935324_640-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"barber-935324_640-1-300x257.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:257;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"barber-935324_640-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(630, 142, 'work_type', 'a:2:{i:0;s:5:\"beard\";i:1;s:8:\"mustache\";}'),
(631, 142, '_work_type', 'field_5e197a5bcdffd'),
(632, 142, 'work_photo', '141'),
(633, 142, '_work_photo', 'field_5e197c42d717d'),
(634, 142, 'work_description', 'К зимнему сезону — готов!'),
(635, 142, '_work_description', 'field_5e197f78f4b48'),
(636, 142, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(637, 142, '_additionally', 'field_5e19961b625e7'),
(639, 143, 'work_type', 'a:2:{i:0;s:7:\"haircut\";i:1;s:7:\"shaving\";}'),
(640, 143, '_work_type', 'field_5e197a5bcdffd'),
(641, 143, 'work_photo', '141'),
(642, 143, '_work_photo', 'field_5e197c42d717d'),
(643, 143, 'work_description', 'К зимнему сезону — готов!'),
(644, 143, '_work_description', 'field_5e197f78f4b48'),
(645, 143, 'additionally', 'a:1:{i:0;s:10:\"work_month\";}'),
(646, 143, '_additionally', 'field_5e19961b625e7'),
(649, 147, '_wp_trash_meta_status', 'publish'),
(650, 147, '_wp_trash_meta_time', '1579274100'),
(651, 148, '_wp_trash_meta_status', 'publish'),
(652, 148, '_wp_trash_meta_time', '1579337018'),
(653, 149, '_wp_trash_meta_status', 'publish'),
(654, 149, '_wp_trash_meta_time', '1579337077'),
(655, 150, '_edit_last', '1'),
(656, 150, '_edit_lock', '1579668452:1'),
(659, 151, '_edit_last', '1'),
(661, 151, '_edit_lock', '1579603451:1'),
(662, 152, '_edit_lock', '1579603338:1'),
(665, 154, '_edit_lock', '1579603447:1'),
(668, 156, '_wp_trash_meta_status', 'publish'),
(669, 156, '_wp_trash_meta_time', '1579603839'),
(670, 156, '_wp_desired_post_slug', '%d0%b8%d0%b2%d0%b0%d0%bd-%d1%81%d0%b8%d0%b4%d0%be%d1%80%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87'),
(671, 157, '_wp_trash_meta_status', 'publish'),
(672, 157, '_wp_trash_meta_time', '1579603840'),
(673, 157, '_wp_desired_post_slug', '%d0%b8%d0%b2%d0%b0%d0%bd-%d1%81%d0%b8%d0%b4%d0%be%d1%80%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87'),
(674, 154, '_wp_trash_meta_status', 'publish'),
(675, 154, '_wp_trash_meta_time', '1579603840'),
(676, 154, '_wp_desired_post_slug', '%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87'),
(677, 155, '_wp_trash_meta_status', 'publish'),
(678, 155, '_wp_trash_meta_time', '1579603841'),
(679, 155, '_wp_desired_post_slug', '%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87-2'),
(680, 152, '_wp_trash_meta_status', 'publish'),
(681, 152, '_wp_trash_meta_time', '1579603841'),
(682, 152, '_wp_desired_post_slug', '%d0%b8%d0%bc%d1%8f-%d1%84%d0%b0%d0%bc%d0%b8%d0%bb%d0%b8%d1%8f-%d0%be%d1%82%d1%87%d0%b5%d1%82%d1%81%d0%be%d0%b2'),
(683, 151, '_wp_trash_meta_status', 'publish'),
(684, 151, '_wp_trash_meta_time', '1579603842'),
(685, 151, '_wp_desired_post_slug', '2-1-3'),
(690, 166, '_edit_lock', '1579667897:1'),
(693, 165, '_wp_trash_meta_status', 'publish'),
(694, 165, '_wp_trash_meta_time', '1579610175'),
(695, 165, '_wp_desired_post_slug', '%d1%82%d0%b5%d1%81%d1%82-%d1%82%d0%b5%d1%81%d1%82%d0%be-%d0%be%d1%82%d1%87%d0%b5%d1%82%d1%87%d1%82%d1%81%d1%82%d0%be%d0%b210239102%d0%bb%e2%84%96'),
(696, 164, '_wp_trash_meta_status', 'publish'),
(697, 164, '_wp_trash_meta_time', '1579610176'),
(698, 164, '_wp_desired_post_slug', 'ntcn-fdsaf-fgdsf'),
(701, 176, '_edit_lock', '1579669210:1'),
(702, 176, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_posts`
--

CREATE TABLE `wp_test_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_test_posts`
--

INSERT INTO `wp_test_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-06 08:29:26', '2020-01-06 08:29:26', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-01-06 08:29:26', '2020-01-06 08:29:26', '', 0, 'http://wp-test/?p=1', 0, 'post', '', 3),
(2, 1, '2020-01-06 08:29:26', '2020-01-06 08:29:26', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wp-test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'closed', '', 'sample-page', '', '', '2020-01-11 07:03:38', '2020-01-11 07:03:38', '', 0, 'http://wp-test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-06 08:29:26', '2020-01-06 08:29:26', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://wp-test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-01-06 08:29:26', '2020-01-06 08:29:26', '', 0, 'http://wp-test/?page_id=3', 0, 'page', '', 0),
(17, 1, '2020-01-07 14:34:44', '2020-01-07 14:34:44', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"text-2\",\n                \"text-3\",\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"sidebar-1\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-07 14:34:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '98deea8e-e6d9-4247-821e-76677e985fb1', '', '', '2020-01-07 14:34:44', '2020-01-07 14:34:44', '', 0, 'http://wp-test/2020/01/07/98deea8e-e6d9-4247-821e-76677e985fb1/', 0, 'customize_changeset', '', 0),
(18, 1, '2020-01-08 06:27:39', '2020-01-08 06:27:39', '{\n    \"blogname\": {\n        \"value\": \"\\u0411\\u0430\\u0440\\u0431\\u0435\\u0440\\u0448\\u043e\\u043f \\u0411\\u043e\\u0440\\u043e\\u0434\\u0438\\u043d\\u0441\\u043a\\u0438\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-08 06:26:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8411e2eb-55b2-41b7-9187-e0ce199a76ba', '', '', '2020-01-08 06:27:39', '2020-01-08 06:27:39', '', 0, 'http://wp-test/?p=18', 0, 'customize_changeset', '', 0),
(19, 1, '2020-01-08 07:54:36', '2020-01-08 07:54:36', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2020-01-08 07:54:36', '2020-01-08 07:54:36', '', 0, 'http://wp-test/wp-content/uploads/2020/01/favicon.ico', 0, 'attachment', 'image/x-icon', 0),
(20, 1, '2020-01-08 07:54:38', '2020-01-08 07:54:38', '', 'favicon-16x16', '', 'inherit', 'open', 'closed', '', 'favicon-16x16', '', '', '2020-01-08 07:54:38', '2020-01-08 07:54:38', '', 0, 'http://wp-test/wp-content/uploads/2020/01/favicon-16x16-1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2020-01-08 07:54:40', '2020-01-08 07:54:40', '', 'favicon-32x32', '', 'inherit', 'open', 'closed', '', 'favicon-32x32', '', '', '2020-01-08 07:54:40', '2020-01-08 07:54:40', '', 0, 'http://wp-test/wp-content/uploads/2020/01/favicon-32x32-1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2020-01-08 07:54:42', '2020-01-08 07:54:42', '', 'favicon-64x64', '', 'inherit', 'open', 'closed', '', 'favicon-64x64', '', '', '2020-01-08 07:54:42', '2020-01-08 07:54:42', '', 0, 'http://wp-test/wp-content/uploads/2020/01/favicon-64x64-1.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2020-01-08 07:54:44', '2020-01-08 07:54:44', '', 'favicon-96x96', '', 'inherit', 'open', 'closed', '', 'favicon-96x96', '', '', '2020-01-08 07:54:44', '2020-01-08 07:54:44', '', 0, 'http://wp-test/wp-content/uploads/2020/01/favicon-96x96-1.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2020-01-08 07:56:46', '2020-01-08 07:56:46', '{\n    \"site_icon\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-08 07:56:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0092afa9-a0fe-41c8-9041-7d486f59323f', '', '', '2020-01-08 07:56:46', '2020-01-08 07:56:46', '', 0, 'http://wp-test/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2020-01-08 07:58:32', '2020-01-08 07:58:32', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wp-test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2020-01-08 07:58:32', '2020-01-08 07:58:32', '', 2, 'http://wp-test/2020/01/08/2-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2020-01-08 09:35:26', '2020-01-08 09:35:26', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-01-11 07:14:47', '2020-01-11 07:14:47', '', 0, 'http://wp-test/?p=26', 1, 'nav_menu_item', '', 0),
(31, 1, '2020-01-08 10:34:05', '2020-01-08 10:34:05', '', 'Вход', 'Войти', 'publish', 'closed', 'closed', '', '%d0%b2%d1%85%d0%be%d0%b4', '', '', '2020-01-08 11:01:43', '2020-01-08 11:01:43', '', 0, 'http://wp-test/?p=31', 1, 'nav_menu_item', '', 0),
(33, 1, '2020-01-08 11:27:54', '2020-01-08 11:27:54', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2020-01-14 14:21:37', '2020-01-14 14:21:37', '', 0, 'http://wp-test/?page_id=33', 0, 'page', '', 0),
(34, 1, '2020-01-08 11:26:18', '2020-01-08 11:26:18', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-01-08 11:26:18', '2020-01-08 11:26:18', '', 33, 'http://wp-test/2020/01/08/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-01-08 11:29:02', '2020-01-08 11:29:02', '', 'Наши работы', '', 'trash', 'closed', 'closed', '', 'works__trashed', '', '', '2020-01-11 14:15:32', '2020-01-11 14:15:32', '', 0, 'http://wp-test/?page_id=35', 0, 'page', '', 0),
(36, 1, '2020-01-08 11:29:02', '2020-01-08 11:29:02', '', 'Наши работы', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-01-08 11:29:02', '2020-01-08 11:29:02', '', 35, 'http://wp-test/2020/01/08/35-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-01-08 11:30:08', '2020-01-08 11:30:08', '', 'Записаться', '', 'publish', 'closed', 'closed', '', 'registration', '', '', '2020-01-14 14:08:23', '2020-01-14 14:08:23', '', 0, 'http://wp-test/?page_id=37', 0, 'page', '', 0),
(38, 1, '2020-01-08 11:30:08', '2020-01-08 11:30:08', '', 'Записаться', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-01-08 11:30:08', '2020-01-08 11:30:08', '', 37, 'http://wp-test/2020/01/08/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-01-08 11:30:25', '2020-01-08 11:30:25', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:paragraph -->\n<p><strong>БАРБЕРШОП БОРОДИНСКИЙ</strong></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>г. Санкт-Петербург, ул. Большая Конюшенная 19/8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"tel:+78125556666\">Тел.:&nbsp;+7 (812) 555-66-66</a></p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2020-01-11 07:03:13', '2020-01-11 07:03:13', '', 0, 'http://wp-test/?page_id=39', 0, 'page', '', 0),
(40, 1, '2020-01-08 11:30:25', '2020-01-08 11:30:25', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-01-08 11:30:25', '2020-01-08 11:30:25', '', 39, 'http://wp-test/2020/01/08/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-01-08 11:30:49', '2020-01-08 11:30:49', '', 'HTML Academy', '', 'publish', 'closed', 'closed', '', 'html-academy', '', '', '2020-01-11 07:03:45', '2020-01-11 07:03:45', '', 0, 'http://wp-test/?page_id=41', 0, 'page', '', 0),
(42, 1, '2020-01-08 11:30:49', '2020-01-08 11:30:49', '', 'HTML Academy', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2020-01-08 11:30:49', '2020-01-08 11:30:49', '', 41, 'http://wp-test/2020/01/08/41-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-01-08 11:32:26', '2020-01-08 11:32:26', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2020-01-11 07:14:47', '2020-01-11 07:14:47', '', 0, 'http://wp-test/?p=43', 5, 'nav_menu_item', '', 0),
(44, 1, '2020-01-08 11:32:27', '2020-01-08 11:32:27', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2020-01-11 07:14:47', '2020-01-11 07:14:47', '', 0, 'http://wp-test/?p=44', 4, 'nav_menu_item', '', 0),
(45, 1, '2020-01-08 11:32:27', '2020-01-08 11:32:27', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-01-11 07:14:47', '2020-01-11 07:14:47', '', 0, 'http://wp-test/?p=45', 3, 'nav_menu_item', '', 0),
(47, 1, '2020-01-08 12:06:41', '2020-01-08 12:06:41', '<!-- wp:heading -->\n<h2>Наши работы</h2>\n<!-- /wp:heading -->', 'Наши работы', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-01-08 12:06:41', '2020-01-08 12:06:41', '', 35, 'http://wp-test/2020/01/08/35-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-01-08 12:12:11', '2020-01-08 12:12:11', '<!-- wp:html -->\n    <section class=\"works\">\n      <div class=\"works__wrapper\">\n        <h2 class=\"works__title\">Наши работы</h2>\n        <a class=\"btn  works__return  works__return--show\" href=\"index.html\">На главную</a>\n        <ul class=\"works__list\">\n          <li class=\"works-item  works-item--work-of-month\">\n            <div class=\"works-item__img-wrapper\">\n              <picture>\n                <source media=\"(min-width: 1200px)\" srcset=\"img/photo-1-desktop.jpg\">\n                <source media=\"(min-width: 768px)\" srcset=\"img/photo-1-tablet.jpg\">\n                <img class=\"works-item__img\" src=\"img/photo-1-mobile.jpg\" alt=\"Пример нашей работы\">\n              </picture>\n            </div>\n            <div class=\"works-item__review\">\n              <div class=\"works-item__review-text\">\n                <h3 class=\"works-item__title\">Лжепётр Мчиславский</h3>\n                <blockquote class=\"works-item__blockquote\">\n                  Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\n                </blockquote>\n              </div>\n              <ul class=\"works-item__parameter-list\">\n                <li class=\"works-item__parameter-item  works-item__parameter-item--haircut\">Стрижка</li>\n                <li class=\"works-item__parameter-item  works-item__parameter-item--shaving\">Бритьё</li>\n                <li class=\"works-item__parameter-item  works-item__parameter-item--mustache\">Усы</li>\n              </ul>\n            </div>\n          </li>\n          <li class=\"works-item\">\n            <div class=\"works-item__img-wrapper\">\n              <picture>\n                <source media=\"(min-width: 1200px)\" srcset=\"img/photo-2-desktop.jpg\">\n                <source media=\"(min-width: 768px)\" srcset=\"img/photo-2-tablet.jpg\">\n                <img class=\"works-item__img\" src=\"img/photo-2-mobile.jpg\" alt=\"Пример нашей работы\">\n              </picture>\n            </div>\n            <div class=\"works-item__review\">\n              <div class=\"works-item__review-text\">\n                <h3 class=\"works-item__title\">Саша Мальцев</h3>\n                <blockquote class=\"works-item__blockquote\">\n                  Попросил омолодить и омолодили! Кто теперь скажет, что мне 45?\n                </blockquote>\n              </div>\n              <ul class=\"works-item__parameter-list\">\n                <li class=\"works-item__parameter-item  works-item__parameter-item--haircut\">Стрижка</li>\n              </ul>\n            </div>\n          </li>\n          <li class=\"works-item\">\n            <div class=\"works-item__img-wrapper\">\n              <picture>\n                <source media=\"(min-width: 1200px)\" srcset=\"img/photo-3-desktop.jpg\">\n                <source media=\"(min-width: 768px)\" srcset=\"img/photo-3-tablet.jpg\">\n                <img class=\"works-item__img\" src=\"img/photo-3-mobile.jpg\" alt=\"Пример нашей работы\">\n              </picture>\n            </div>\n            <div class=\"works-item__review\">\n              <div class=\"works-item__review-text\">\n                <h3 class=\"works-item__title\">Владимир Иваныч</h3>\n                <blockquote class=\"works-item__blockquote\">\n                  К зимнему сезону — готов!\n                </blockquote>\n              </div>\n              <ul class=\"works-item__parameter-list\">\n                <li class=\"works-item__parameter-item  works-item__parameter-item--shaving\">Борода</li>\n                <li class=\"works-item__parameter-item  works-item__parameter-item--mustache\">Усы</li>\n              </ul>\n            </div>\n          </li>\n          <li class=\"works-item\">\n            <div class=\"works-item__img-wrapper\">\n              <picture>\n                <source media=\"(min-width: 1200px)\" srcset=\"img/photo-4-desktop.jpg\">\n                <source media=\"(min-width: 768px)\" srcset=\"img/photo-4-tablet.jpg\">\n                <img class=\"works-item__img\" src=\"img/photo-4-mobile.jpg\" alt=\"Пример нашей работы\">\n              </picture>\n            </div>\n            <div class=\"works-item__review\">\n              <div class=\"works-item__review-text\">\n                <h3 class=\"works-item__title\">Винстон Синий</h3>\n                <blockquote class=\"works-item__blockquote\">\n                  Как только заростаю и волосы начинают мешать видеть — бегом в Бородинский!\n                </blockquote>\n              </div>\n              <ul class=\"works-item__parameter-list\">\n                <li class=\"works-item__parameter-item  works-item__parameter-item--haircut\">Стрижка</li>\n              </ul>\n            </div>\n          </li>\n        </ul>\n      </div>\n    </section>\n    <section class=\"price\">\n      <div class=\"price__wrapper\">\n        <h2 class=\"price__header\">Прейскурант</h1>\n        <div class=\"price__columns\">\n          <table class=\"price__table\">\n            <tr>\n              <td class=\"col-1\">1</td>\n              <td class=\"col-2\">Классическая стрижка</td>\n              <td class=\"col-3\">(с мытьём головы)</td>\n              <td class=\"col-4\">1 500 руб.</td>\n            </tr>\n            <tr>\n              <td class=\"col-1\">2</td>\n              <td class=\"col-2\">Современный вариант</td>\n              <td class=\"col-3\">(с мытьём головы)</td>\n              <td class=\"col-4\">1 500 руб.</td>\n            </tr>\n            <tr>\n              <td class=\"col-1\">3</td>\n              <td class=\"col-2\">Индивидуальный подход</td>\n              <td class=\"col-3\">(с мытьём головы)</td>\n              <td class=\"col-4\">2 000 руб.</td>\n            </tr>\n            <tr>\n              <td class=\"col-1\">4</td>\n              <td class=\"col-2\">Бритьё бороды</td>\n              <td class=\"col-3\">(без мытья)</td>\n              <td class=\"col-4\">500 руб.</td>\n            </tr>\n            <tr>\n              <td class=\"col-1\">5</td>\n              <td class=\"col-2\">Бритьё бороды</td>\n              <td class=\"col-3\">(с мытьём головы)</td>\n              <td class=\"col-4\">1 000 руб.</td>\n            </tr>\n          </table>\n          <p class=\"price__discount\">С 10:00 до 14:00 скидка 20%</p>\n        </div>\n      </div>\n    </section>\n<!-- /wp:html -->', 'Наши работы', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-01-08 12:12:11', '2020-01-08 12:12:11', '', 35, 'http://wp-test/2020/01/08/35-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-01-08 12:57:35', '2020-01-08 12:57:35', '<!-- wp:html -->\n<section class=\"works\">\n      <div class=\"works__wrapper\">\n        <h2 class=\"works__title\">Наши работы</h2>\n        <a class=\"btn  works__return  works__return--show\" href=\"index.html\">На главную</a>\n        <ul class=\"works__list\">\n          <li class=\"works-item  works-item--work-of-month\">\n            <div class=\"works-item__img-wrapper\">\n              <picture>\n                <source media=\"(min-width: 1200px)\" srcset=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-1-desktop.jpg\">\n                <source media=\"(min-width: 768px)\" srcset=\"img/photo-1-tablet.jpg\">\n                <img class=\"works-item__img\" src=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-1-mobile.jpg\" alt=\"Пример нашей работы\">\n              </picture>\n            </div>\n            <div class=\"works-item__review\">\n              <div class=\"works-item__review-text\">\n                <h3 class=\"works-item__title\">Лжепётр Мчиславский</h3>\n                <blockquote class=\"works-item__blockquote\">\n                  Где я только не стригся, но так как делаете это вы — не умеет никто другой! Еще раз спасибо и до скорого!\n                </blockquote>\n              </div>\n              <ul class=\"works-item__parameter-list\">\n                <li class=\"works-item__parameter-item  works-item__parameter-item--haircut\">Стрижка</li>\n                <li class=\"works-item__parameter-item  works-item__parameter-item--shaving\">Бритьё</li>\n                <li class=\"works-item__parameter-item  works-item__parameter-item--mustache\">Усы</li>\n              </ul>\n            </div>\n          </li>\n          <li class=\"works-item\">\n            <div class=\"works-item__img-wrapper\">\n              <picture>\n                <source media=\"(min-width: 1200px)\" srcset=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-2-desktop.jpg\">\n                <source media=\"(min-width: 768px)\" srcset=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-2-tablet.jpg\">\n                <img class=\"works-item__img\" src=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-2-mobile.jpg\" alt=\"Пример нашей работы\">\n              </picture>\n            </div>\n            <div class=\"works-item__review\">\n              <div class=\"works-item__review-text\">\n                <h3 class=\"works-item__title\">Саша Мальцев</h3>\n                <blockquote class=\"works-item__blockquote\">\n                  Попросил омолодить и омолодили! Кто теперь скажет, что мне 45?\n                </blockquote>\n              </div>\n              <ul class=\"works-item__parameter-list\">\n                <li class=\"works-item__parameter-item  works-item__parameter-item--haircut\">Стрижка</li>\n              </ul>\n            </div>\n          </li>\n          <li class=\"works-item\">\n            <div class=\"works-item__img-wrapper\">\n              <picture>\n                <source media=\"(min-width: 1200px)\" srcset=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-3-desktop.jpg\">\n                <source media=\"(min-width: 768px)\" srcset=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-3-tablet.jpg\">\n                <img class=\"works-item__img\" src=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-3-mobile.jpg\" alt=\"Пример нашей работы\">\n              </picture>\n            </div>\n            <div class=\"works-item__review\">\n              <div class=\"works-item__review-text\">\n                <h3 class=\"works-item__title\">Владимир Иваныч</h3>\n                <blockquote class=\"works-item__blockquote\">\n                  К зимнему сезону — готов!\n                </blockquote>\n              </div>\n              <ul class=\"works-item__parameter-list\">\n                <li class=\"works-item__parameter-item  works-item__parameter-item--shaving\">Борода</li>\n                <li class=\"works-item__parameter-item  works-item__parameter-item--mustache\">Усы</li>\n              </ul>\n            </div>\n          </li>\n          <li class=\"works-item\">\n            <div class=\"works-item__img-wrapper\">\n              <picture>\n                <source media=\"(min-width: 1200px)\" srcset=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-4-desktop.jpg\">\n                <source media=\"(min-width: 768px)\" srcset=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-4-tablet.jpg\">\n                <img class=\"works-item__img\" src=\"<?php echo get_template_directory_uri(); ?>/assets/img/photo-4-mobile.jpg\" alt=\"Пример нашей работы\">\n              </picture>\n            </div>\n            <div class=\"works-item__review\">\n              <div class=\"works-item__review-text\">\n                <h3 class=\"works-item__title\">Винстон Синий</h3>\n                <blockquote class=\"works-item__blockquote\">\n                  Как только заростаю и волосы начинают мешать видеть — бегом в Бородинский!\n                </blockquote>\n              </div>\n              <ul class=\"works-item__parameter-list\">\n                <li class=\"works-item__parameter-item  works-item__parameter-item--haircut\">Стрижка</li>\n              </ul>\n            </div>\n          </li>\n        </ul>\n      </div>\n    </section>\n    <section class=\"price\">\n      <div class=\"price__wrapper\">\n        <h2 class=\"price__header\">Прейскурант</h1>\n        <div class=\"price__columns\">\n          <table class=\"price__table\">\n            <tr>\n              <td class=\"col-1\">1</td>\n              <td class=\"col-2\">Классическая стрижка</td>\n              <td class=\"col-3\">(с мытьём головы)</td>\n              <td class=\"col-4\">1 500 руб.</td>\n            </tr>\n            <tr>\n              <td class=\"col-1\">2</td>\n              <td class=\"col-2\">Современный вариант</td>\n              <td class=\"col-3\">(с мытьём головы)</td>\n              <td class=\"col-4\">1 500 руб.</td>\n            </tr>\n            <tr>\n              <td class=\"col-1\">3</td>\n              <td class=\"col-2\">Индивидуальный подход</td>\n              <td class=\"col-3\">(с мытьём головы)</td>\n              <td class=\"col-4\">2 000 руб.</td>\n            </tr>\n            <tr>\n              <td class=\"col-1\">4</td>\n              <td class=\"col-2\">Бритьё бороды</td>\n              <td class=\"col-3\">(без мытья)</td>\n              <td class=\"col-4\">500 руб.</td>\n            </tr>\n            <tr>\n              <td class=\"col-1\">5</td>\n              <td class=\"col-2\">Бритьё бороды</td>\n              <td class=\"col-3\">(с мытьём головы)</td>\n              <td class=\"col-4\">1 000 руб.</td>\n            </tr>\n          </table>\n          <p class=\"price__discount\">С 10:00 до 14:00 скидка 20%</p>\n        </div>\n      </div>\n    </section>\n<!-- /wp:html -->', 'Наши работы', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-01-08 12:57:35', '2020-01-08 12:57:35', '', 35, 'http://wp-test/2020/01/08/35-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-01-09 05:13:50', '2020-01-09 05:13:50', '', 'Наши работы', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-01-09 05:13:50', '2020-01-09 05:13:50', '', 35, 'http://wp-test/2020/01/09/35-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-01-09 05:27:33', '2020-01-09 05:27:33', '<!-- wp:paragraph -->\n<p><strong>БАРБЕРШОП БОРОДИНСКИЙ</strong>г. Санкт-Петербург, ул. Большая Конюшенная 19/8<a href=\"tel:+78125556666\">Тел.:&nbsp;+7 (812) 555-66-66</a></p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-01-09 05:27:33', '2020-01-09 05:27:33', '', 39, 'http://wp-test/2020/01/09/39-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-01-09 05:30:58', '2020-01-09 05:30:58', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:paragraph -->\n<p><strong>БАРБЕРШОП БОРОДИНСКИЙ</strong></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p>г. Санкт-Петербург, ул. Большая Конюшенная 19/8</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"tel:+78125556666\">Тел.:&nbsp;+7 (812) 555-66-66</a></p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-01-09 05:30:58', '2020-01-09 05:30:58', '', 39, 'http://wp-test/2020/01/09/39-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2020-01-10 14:59:14', '2020-01-10 14:59:14', 'http://wp-test/data/uploads/2020/01/cropped-photo-2-tablet.jpg', 'cropped-photo-2-tablet.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-photo-2-tablet-jpg', '', '', '2020-01-10 14:59:14', '2020-01-10 14:59:14', '', 0, 'http://wp-test/data/uploads/2020/01/cropped-photo-2-tablet.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-01-11 04:42:14', '2020-01-11 04:42:14', '{\n    \"site_icon\": {\n        \"value\": 23,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-10 15:00:16\"\n    },\n    \"bardershop::custom_logo\": {\n        \"value\": 56,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-10 15:00:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c1db25b5-d9fa-4d7e-9e77-01f864ebc66e', '', '', '2020-01-11 04:42:14', '2020-01-11 04:42:14', '', 0, 'http://wp-test/?p=57', 0, 'customize_changeset', '', 0),
(59, 1, '2020-01-11 05:07:33', '2020-01-11 05:07:33', '{\n    \"bardershop::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-11 05:07:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '56e88009-8fac-4246-9995-53466c571cd8', '', '', '2020-01-11 05:07:33', '2020-01-11 05:07:33', '', 0, 'http://wp-test/2020/01/11/56e88009-8fac-4246-9995-53466c571cd8/', 0, 'customize_changeset', '', 0),
(61, 1, '2020-01-11 06:25:59', '2020-01-11 06:25:59', '', 'logotype-desktop', '', 'inherit', 'open', 'closed', '', 'logotype-desktop', '', '', '2020-01-11 06:25:59', '2020-01-11 06:25:59', '', 0, 'http://wp-test/data/uploads/2020/01/logotype-desktop.svg', 0, 'attachment', 'image/svg+xml', 0),
(62, 1, '2020-01-11 06:26:25', '2020-01-11 06:26:25', '', 'logotype-mobile', '', 'inherit', 'open', 'closed', '', 'logotype-mobile', '', '', '2020-01-11 06:26:25', '2020-01-11 06:26:25', '', 0, 'http://wp-test/data/uploads/2020/01/logotype-mobile.svg', 0, 'attachment', 'image/svg+xml', 0),
(63, 1, '2020-01-11 06:26:27', '2020-01-11 06:26:27', '', 'logotype-tablet', '', 'inherit', 'open', 'closed', '', 'logotype-tablet', '', '', '2020-01-11 06:26:27', '2020-01-11 06:26:27', '', 0, 'http://wp-test/data/uploads/2020/01/logotype-tablet.svg', 0, 'attachment', 'image/svg+xml', 0),
(64, 1, '2020-01-11 06:27:19', '2020-01-11 06:27:19', '{\n    \"bardershop::custom_logo\": {\n        \"value\": 61,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-11 06:27:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a84676d0-babb-4d84-b760-fa8428368c02', '', '', '2020-01-11 06:27:19', '2020-01-11 06:27:19', '', 0, 'http://wp-test/2020/01/11/a84676d0-babb-4d84-b760-fa8428368c02/', 0, 'customize_changeset', '', 0),
(65, 1, '2020-01-11 06:37:03', '2020-01-11 06:37:03', '{\n    \"bardershop::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-11 06:37:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '40f929aa-9862-4cb5-ab9a-13e1d4aa40df', '', '', '2020-01-11 06:37:03', '2020-01-11 06:37:03', '', 0, 'http://wp-test/2020/01/11/40f929aa-9862-4cb5-ab9a-13e1d4aa40df/', 0, 'customize_changeset', '', 0),
(66, 1, '2020-01-11 07:03:38', '2020-01-11 07:03:38', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://wp-test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-01-11 07:03:38', '2020-01-11 07:03:38', '', 2, 'http://wp-test/2020/01/11/2-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-01-11 07:08:50', '2020-01-11 07:08:50', '', 'Лжепётр Мчиславский', '', 'publish', 'open', 'open', '', '%d0%bb%d0%b6%d0%b5%d0%bf%d1%91%d1%82%d1%80-%d0%bc%d1%87%d0%b8%d1%81%d0%bb%d0%b0%d0%b2%d1%81%d0%ba%d0%b8%d0%b9', '', '', '2020-01-11 10:16:31', '2020-01-11 10:16:31', '', 0, 'http://wp-test/?p=68', 0, 'post', '', 0),
(69, 1, '2020-01-11 07:08:50', '2020-01-11 07:08:50', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 07:08:50', '2020-01-11 07:08:50', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-01-11 07:14:26', '2020-01-11 07:14:26', 'Наши работы', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2020-01-11 07:14:47', '2020-01-11 07:14:47', '', 0, 'http://wp-test/?p=70', 2, 'nav_menu_item', '', 0),
(72, 1, '2020-01-11 07:38:36', '2020-01-11 07:38:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"category:works\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Виды работ', '%d0%b2%d0%b8%d0%b4%d1%8b-%d1%80%d0%b0%d0%b1%d0%be%d1%82', 'trash', 'closed', 'closed', '', 'group_5e197a0a7cbcf__trashed', '', '', '2020-01-11 07:53:20', '2020-01-11 07:53:20', '', 0, 'http://wp-test/?post_type=acf-field-group&#038;p=72', 0, 'acf-field-group', '', 0),
(73, 1, '2020-01-11 07:38:37', '2020-01-11 07:38:37', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:4:{s:7:\"haircut\";s:14:\"Стрижка\";s:7:\"shaving\";s:12:\"Бритьё\";s:5:\"beard\";s:12:\"Борода\";s:8:\"mustache\";s:6:\"Усы\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"array\";s:11:\"save_custom\";i:0;}', 'Виды работ', 'work_type', 'publish', 'closed', 'closed', '', 'field_5e197a5bcdffd', '', '', '2020-01-11 08:52:10', '2020-01-11 08:52:10', '', 75, 'http://wp-test/?post_type=acf-field&#038;p=73', 0, 'acf-field', '', 0),
(74, 1, '2020-01-11 07:38:37', '2020-01-11 07:38:37', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:0:{}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"value\";s:11:\"save_custom\";i:0;}', 'Бритьё', 'shave', 'trash', 'closed', 'closed', '', 'field_5e197aabcdffe__trashed', '', '', '2020-01-11 07:53:20', '2020-01-11 07:53:20', '', 72, 'http://wp-test/?post_type=acf-field&#038;p=74', 1, 'acf-field', '', 0),
(75, 1, '2020-01-11 07:41:51', '2020-01-11 07:41:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"category:works\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Параметры наших работ', '%d0%bf%d0%b0%d1%80%d0%b0%d0%bc%d0%b5%d1%82%d1%80%d1%8b-%d0%bd%d0%b0%d1%88%d0%b8%d1%85-%d1%80%d0%b0%d0%b1%d0%be%d1%82', 'publish', 'closed', 'closed', '', 'group_5e197c2c2e6b6', '', '', '2020-01-11 09:49:48', '2020-01-11 09:49:48', '', 0, 'http://wp-test/?post_type=acf-field-group&#038;p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2020-01-11 07:42:34', '2020-01-11 07:42:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:15:\"works-item__img\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фото', 'work_photo', 'publish', 'closed', 'closed', '', 'field_5e197c42d717d', '', '', '2020-01-11 08:50:48', '2020-01-11 08:50:48', '', 75, 'http://wp-test/?post_type=acf-field&#038;p=76', 1, 'acf-field', '', 0),
(77, 1, '2020-01-11 07:43:43', '2020-01-11 07:43:43', '', 'Пример нашей работы', '', 'inherit', 'open', 'closed', '', 'photo-1-desktop', '', '', '2020-01-11 08:35:37', '2020-01-11 08:35:37', '', 68, 'http://wp-test/data/uploads/2020/01/photo-1-desktop.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2020-01-11 07:43:57', '2020-01-11 07:43:57', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 07:43:57', '2020-01-11 07:43:57', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-01-11 07:44:41', '2020-01-11 07:44:41', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 07:44:41', '2020-01-11 07:44:41', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-01-11 07:51:40', '2020-01-11 07:51:40', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 07:51:40', '2020-01-11 07:51:40', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-01-11 07:56:23', '2020-01-11 07:56:23', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:29:\"Описание работы\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Описание', 'work_description', 'publish', 'closed', 'closed', '', 'field_5e197f78f4b48', '', '', '2020-01-11 08:50:48', '2020-01-11 08:50:48', '', 75, 'http://wp-test/?post_type=acf-field&#038;p=81', 2, 'acf-field', '', 0),
(82, 1, '2020-01-11 07:58:29', '2020-01-11 07:58:29', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 07:58:29', '2020-01-11 07:58:29', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-01-11 08:35:43', '2020-01-11 08:35:43', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 08:35:43', '2020-01-11 08:35:43', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-01-11 08:54:43', '2020-01-11 08:54:43', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 08:54:43', '2020-01-11 08:54:43', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-01-11 09:00:11', '2020-01-11 09:00:11', '', 'Саша Мальцев', '', 'publish', 'open', 'open', '', '%d1%81%d0%b0%d1%88%d0%b0-%d0%bc%d0%b0%d0%bb%d1%8c%d1%86%d0%b5%d0%b2', '', '', '2020-01-11 09:00:15', '2020-01-11 09:00:15', '', 0, 'http://wp-test/?p=85', 0, 'post', '', 0),
(86, 1, '2020-01-11 08:59:34', '2020-01-11 08:59:34', '', 'Пример нашей работы', '', 'inherit', 'open', 'closed', '', 'photo-2-desktop', '', '', '2020-01-11 08:59:51', '2020-01-11 08:59:51', '', 85, 'http://wp-test/data/uploads/2020/01/photo-2-desktop.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2020-01-11 09:00:11', '2020-01-11 09:00:11', '', 'Саша Мальцев', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-01-11 09:00:11', '2020-01-11 09:00:11', '', 85, 'http://wp-test/2020/01/11/85-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-01-11 09:00:15', '2020-01-11 09:00:15', '', 'Саша Мальцев', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-01-11 09:00:15', '2020-01-11 09:00:15', '', 85, 'http://wp-test/2020/01/11/85-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-01-11 09:32:56', '2020-01-11 09:32:56', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:10:\"work_month\";s:25:\"Работа месяца\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"array\";s:11:\"save_custom\";i:0;}', 'Дополнительно', 'additionally', 'publish', 'closed', 'closed', '', 'field_5e19961b625e7', '', '', '2020-01-11 09:38:20', '2020-01-11 09:38:20', '', 75, 'http://wp-test/?post_type=acf-field&#038;p=89', 3, 'acf-field', '', 0),
(90, 1, '2020-01-11 09:34:30', '2020-01-11 09:34:30', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 09:34:30', '2020-01-11 09:34:30', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-01-11 09:38:35', '2020-01-11 09:38:35', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 09:38:35', '2020-01-11 09:38:35', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-01-11 09:49:57', '2020-01-11 09:49:57', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 09:49:57', '2020-01-11 09:49:57', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-01-11 10:16:31', '2020-01-11 10:16:31', '', 'Лжепётр Мчиславский', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-11 10:16:31', '2020-01-11 10:16:31', '', 68, 'http://wp-test/2020/01/11/68-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-01-11 10:32:54', '2020-01-11 10:32:54', '', 'Винстон Синий', '', 'publish', 'open', 'open', '', '%d0%b2%d0%b8%d0%bd%d1%81%d1%82%d0%be%d0%bd-%d1%81%d0%b8%d0%bd%d0%b8%d0%b9', '', '', '2020-01-11 10:37:42', '2020-01-11 10:37:42', '', 0, 'http://wp-test/?p=94', 0, 'post', '', 0),
(95, 1, '2020-01-11 10:32:54', '2020-01-11 10:32:54', '', 'Винстон Синий', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-01-11 10:32:54', '2020-01-11 10:32:54', '', 94, 'http://wp-test/2020/01/11/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-01-11 10:32:57', '2020-01-11 10:32:57', '', 'Винстон Синий', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-01-11 10:32:57', '2020-01-11 10:32:57', '', 94, 'http://wp-test/2020/01/11/94-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-01-11 10:33:42', '2020-01-11 10:33:42', '', 'Владимир Иваныч', '', 'publish', 'open', 'open', '', '%d0%b2%d0%bb%d0%b0%d0%b4%d0%b8%d0%bc%d0%b8%d1%80-%d0%b8%d0%b2%d0%b0%d0%bd%d1%8b%d1%87', '', '', '2020-01-14 12:32:04', '2020-01-14 12:32:04', '', 0, 'http://wp-test/?p=98', 0, 'post', '', 0),
(99, 1, '2020-01-11 10:33:42', '2020-01-11 10:33:42', '', 'Владимир Иваныч', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-01-11 10:33:42', '2020-01-11 10:33:42', '', 98, 'http://wp-test/2020/01/11/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2020-01-11 10:33:45', '2020-01-11 10:33:45', '', 'Владимир Иваныч', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-01-11 10:33:45', '2020-01-11 10:33:45', '', 98, 'http://wp-test/2020/01/11/98-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2020-01-11 10:35:36', '2020-01-11 10:35:36', '', 'Пример нашей работы', '', 'inherit', 'open', 'closed', '', 'photo-3-desktop', '', '', '2020-01-11 10:35:46', '2020-01-11 10:35:46', '', 98, 'http://wp-test/data/uploads/photo-3-desktop.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2020-01-11 10:35:52', '2020-01-11 10:35:52', '', 'Владимир Иваныч', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-01-11 10:35:52', '2020-01-11 10:35:52', '', 98, 'http://wp-test/2020/01/11/98-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2020-01-11 10:36:03', '2020-01-11 10:36:03', '', 'Владимир Иваныч', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-01-11 10:36:03', '2020-01-11 10:36:03', '', 98, 'http://wp-test/2020/01/11/98-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-01-11 10:37:16', '2020-01-11 10:37:16', '', 'Пример нашей работы', '', 'inherit', 'open', 'closed', '', 'photo-4-desktop', '', '', '2020-01-11 10:37:27', '2020-01-11 10:37:27', '', 94, 'http://wp-test/data/uploads/photo-4-desktop.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_test_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(105, 1, '2020-01-11 10:37:33', '2020-01-11 10:37:33', '', 'Винстон Синий', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-01-11 10:37:33', '2020-01-11 10:37:33', '', 94, 'http://wp-test/2020/01/11/94-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2020-01-11 10:37:42', '2020-01-11 10:37:42', '', 'Винстон Синий', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-01-11 10:37:42', '2020-01-11 10:37:42', '', 94, 'http://wp-test/2020/01/11/94-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-01-11 10:38:21', '2020-01-11 10:38:21', '', 'Владимир Иваныч', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-01-11 10:38:21', '2020-01-11 10:38:21', '', 98, 'http://wp-test/2020/01/11/98-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2020-01-11 10:51:35', '2020-01-11 10:51:35', '', 'Владимир Иваныч', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-01-11 10:51:35', '2020-01-11 10:51:35', '', 98, 'http://wp-test/2020/01/11/98-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-01-11 10:56:04', '2020-01-11 10:56:04', '', 'Тест Иванович', '', 'publish', 'open', 'open', '', '%d1%82%d0%b5%d1%81%d1%82-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2%d0%b8%d1%87', '', '', '2020-01-11 10:56:07', '2020-01-11 10:56:07', '', 0, 'http://wp-test/?p=109', 0, 'post', '', 0),
(110, 1, '2020-01-11 10:56:04', '2020-01-11 10:56:04', '', 'Тест Иванович', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2020-01-11 10:56:04', '2020-01-11 10:56:04', '', 109, 'http://wp-test/2020/01/11/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-01-11 10:56:07', '2020-01-11 10:56:07', '', 'Тест Иванович', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2020-01-11 10:56:07', '2020-01-11 10:56:07', '', 109, 'http://wp-test/2020/01/11/109-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2020-01-11 10:56:37', '2020-01-11 10:56:37', '', 'Иван Тестович', '', 'publish', 'open', 'open', '', '%d0%b8%d0%b2%d0%b0%d0%bd-%d1%82%d0%b5%d1%81%d1%82%d0%be%d0%b2%d0%b8%d1%87', '', '', '2020-01-11 10:56:41', '2020-01-11 10:56:41', '', 0, 'http://wp-test/?p=112', 0, 'post', '', 0),
(113, 1, '2020-01-11 10:56:37', '2020-01-11 10:56:37', '', 'Иван Тестович', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2020-01-11 10:56:37', '2020-01-11 10:56:37', '', 112, 'http://wp-test/2020/01/11/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-01-11 10:56:41', '2020-01-11 10:56:41', '', 'Иван Тестович', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2020-01-11 10:56:41', '2020-01-11 10:56:41', '', 112, 'http://wp-test/2020/01/11/112-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-01-11 11:48:14', '2020-01-11 11:48:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"category:price\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Прейскурант', '%d0%bf%d1%80%d0%b5%d0%b9%d1%81%d0%ba%d1%83%d1%80%d0%b0%d0%bd%d1%82', 'publish', 'closed', 'closed', '', 'group_5e19b56ea0c92', '', '', '2020-01-11 12:44:55', '2020-01-11 12:44:55', '', 0, 'http://wp-test/?post_type=acf-field-group&#038;p=116', 0, 'acf-field-group', '', 0),
(117, 1, '2020-01-11 11:48:15', '2020-01-11 11:48:15', 'a:12:{s:4:\"type\";s:8:\"checkbox\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:1:{s:12:\"washing_head\";s:23:\"Мытьё головы\";}s:12:\"allow_custom\";i:0;s:13:\"default_value\";a:0:{}s:6:\"layout\";s:8:\"vertical\";s:6:\"toggle\";i:0;s:13:\"return_format\";s:5:\"array\";s:11:\"save_custom\";i:0;}', 'Опции', 'price_options', 'publish', 'closed', 'closed', '', 'field_5e19b57c496c3', '', '', '2020-01-11 12:44:55', '2020-01-11 12:44:55', '', 116, 'http://wp-test/?post_type=acf-field&#038;p=117', 0, 'acf-field', '', 0),
(118, 1, '2020-01-11 11:48:15', '2020-01-11 11:48:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Цена', 'price', 'publish', 'closed', 'closed', '', 'field_5e19b5f9496c4', '', '', '2020-01-11 11:48:54', '2020-01-11 11:48:54', '', 116, 'http://wp-test/?post_type=acf-field&#038;p=118', 1, 'acf-field', '', 0),
(119, 1, '2020-01-11 11:49:56', '2020-01-11 11:49:56', '', 'Классическая стрижка', '', 'publish', 'open', 'open', '', '%d0%ba%d0%bb%d0%b0%d1%81%d1%81%d0%b8%d1%87%d0%b5%d1%81%d0%ba%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b8%d0%b6%d0%ba%d0%b0', '', '', '2020-01-11 11:49:59', '2020-01-11 11:49:59', '', 0, 'http://wp-test/?p=119', 0, 'post', '', 0),
(120, 1, '2020-01-11 11:49:56', '2020-01-11 11:49:56', '', 'Классическая стрижка', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2020-01-11 11:49:56', '2020-01-11 11:49:56', '', 119, 'http://wp-test/2020/01/11/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2020-01-11 11:49:59', '2020-01-11 11:49:59', '', 'Классическая стрижка', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2020-01-11 11:49:59', '2020-01-11 11:49:59', '', 119, 'http://wp-test/2020/01/11/119-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2020-01-11 11:50:24', '2020-01-11 11:50:24', '', 'Современный вариант', '', 'publish', 'open', 'open', '', '%d1%81%d0%be%d0%b2%d1%80%d0%b5%d0%bc%d0%b5%d0%bd%d0%bd%d1%8b%d0%b9-%d0%b2%d0%b0%d1%80%d0%b8%d0%b0%d0%bd%d1%82', '', '', '2020-01-11 11:50:27', '2020-01-11 11:50:27', '', 0, 'http://wp-test/?p=122', 0, 'post', '', 0),
(123, 1, '2020-01-11 11:50:24', '2020-01-11 11:50:24', '', 'Современный вариант', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2020-01-11 11:50:24', '2020-01-11 11:50:24', '', 122, 'http://wp-test/2020/01/11/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2020-01-11 11:50:27', '2020-01-11 11:50:27', '', 'Современный вариант', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2020-01-11 11:50:27', '2020-01-11 11:50:27', '', 122, 'http://wp-test/2020/01/11/122-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2020-01-11 11:51:20', '2020-01-11 11:51:20', '', 'Индивидуальный подход', '', 'publish', 'open', 'open', '', '%d0%b8%d0%bd%d0%b4%d0%b8%d0%b2%d0%b8%d0%b4%d1%83%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d0%b9-%d0%bf%d0%be%d0%b4%d1%85%d0%be%d0%b4', '', '', '2020-01-11 11:51:23', '2020-01-11 11:51:23', '', 0, 'http://wp-test/?p=126', 0, 'post', '', 0),
(127, 1, '2020-01-11 11:51:20', '2020-01-11 11:51:20', '', 'Индивидуальный подход', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2020-01-11 11:51:20', '2020-01-11 11:51:20', '', 126, 'http://wp-test/2020/01/11/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2020-01-11 11:51:23', '2020-01-11 11:51:23', '', 'Индивидуальный подход', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2020-01-11 11:51:23', '2020-01-11 11:51:23', '', 126, 'http://wp-test/2020/01/11/126-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2020-01-11 11:52:09', '2020-01-11 11:52:09', '', 'Бритьё бороды', '', 'publish', 'open', 'open', '', '%d0%b1%d1%80%d0%b8%d1%82%d1%8c%d1%91-%d0%b1%d0%be%d1%80%d0%be%d0%b4%d1%8b', '', '', '2020-01-11 11:52:13', '2020-01-11 11:52:13', '', 0, 'http://wp-test/?p=129', 0, 'post', '', 0),
(130, 1, '2020-01-11 11:52:09', '2020-01-11 11:52:09', '', 'Бритьё бороды', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2020-01-11 11:52:09', '2020-01-11 11:52:09', '', 129, 'http://wp-test/2020/01/11/129-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2020-01-11 11:52:13', '2020-01-11 11:52:13', '', 'Бритьё бороды', '', 'inherit', 'closed', 'closed', '', '129-revision-v1', '', '', '2020-01-11 11:52:13', '2020-01-11 11:52:13', '', 129, 'http://wp-test/2020/01/11/129-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2020-01-11 12:09:47', '2020-01-11 12:09:47', '', 'Бритьё бороды', '', 'publish', 'open', 'open', '', '%d0%b1%d1%80%d0%b8%d1%82%d1%8c%d1%91-%d0%b1%d0%be%d1%80%d0%be%d0%b4%d1%8b-2', '', '', '2020-01-11 12:09:51', '2020-01-11 12:09:51', '', 0, 'http://wp-test/?p=132', 0, 'post', '', 0),
(133, 1, '2020-01-11 12:09:47', '2020-01-11 12:09:47', '', 'Бритьё бороды', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2020-01-11 12:09:47', '2020-01-11 12:09:47', '', 132, 'http://wp-test/2020/01/11/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2020-01-11 12:09:51', '2020-01-11 12:09:51', '', 'Бритьё бороды', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2020-01-11 12:09:51', '2020-01-11 12:09:51', '', 132, 'http://wp-test/2020/01/11/132-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2020-01-11 12:52:23', '2020-01-11 12:52:23', '', 'Модник Гопник', '', 'publish', 'open', 'open', '', '%d0%bc%d0%be%d0%b4%d0%bd%d0%b8%d0%ba-%d0%b3%d0%be%d0%bf%d0%bd%d0%b8%d0%ba', '', '', '2020-01-14 12:11:33', '2020-01-14 12:11:33', '', 0, 'http://wp-test/?p=135', 0, 'post', '', 0),
(136, 1, '2020-01-11 12:52:23', '2020-01-11 12:52:23', '', 'Модник Гопник', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2020-01-11 12:52:23', '2020-01-11 12:52:23', '', 135, 'http://wp-test/2020/01/11/135-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2020-01-11 12:52:26', '2020-01-11 12:52:26', '', 'Модник Гопник', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2020-01-11 12:52:26', '2020-01-11 12:52:26', '', 135, 'http://wp-test/2020/01/11/135-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2020-01-11 13:51:06', '2020-01-11 13:51:06', '', 'Модник Гопник', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2020-01-11 13:51:06', '2020-01-11 13:51:06', '', 135, 'http://wp-test/2020/01/11/135-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2020-01-14 12:11:33', '2020-01-14 12:11:33', '', 'Модник Гопник', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2020-01-14 12:11:33', '2020-01-14 12:11:33', '', 135, 'http://wp-test/135-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2020-01-14 12:26:27', '2020-01-14 12:26:27', '', 'barber-935324_640', '', 'inherit', 'open', 'closed', '', 'barber-935324_640', '', '', '2020-01-14 12:26:27', '2020-01-14 12:26:27', '', 0, 'http://wp-test/data/uploads/barber-935324_640.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2020-01-14 12:28:21', '2020-01-14 12:28:21', '', 'barber-935324_640', '', 'inherit', 'open', 'closed', '', 'barber-935324_640-2', '', '', '2020-01-14 12:31:14', '2020-01-14 12:31:14', '', 98, 'http://wp-test/data/uploads/barber-935324_640-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2020-01-14 12:31:14', '2020-01-14 12:31:14', '', 'Владимир Иваныч', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-01-14 12:31:14', '2020-01-14 12:31:14', '', 98, 'http://wp-test/98-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2020-01-14 12:32:04', '2020-01-14 12:32:04', '', 'Владимир Иваныч', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2020-01-14 12:32:04', '2020-01-14 12:32:04', '', 98, 'http://wp-test/98-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2020-01-17 14:58:06', '2020-01-17 14:58:06', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2020-01-17 14:58:06', '2020-01-17 14:58:06', '', 33, 'http://wp-test/33-autosave-v1/', 0, 'revision', '', 0),
(147, 1, '2020-01-17 15:14:59', '2020-01-17 15:14:59', '{\n    \"blogdescription\": {\n        \"value\": \"\\u0438\\u0441\\u0442\\u0438\\u043d\\u043d\\u043e \\u043c\\u0443\\u0436\\u0441\\u043a\\u0430\\u044f \\u043a\\u043b\\u0430\\u0441\\u0441\\u0438\\u043a\\u0430\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-17 15:14:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f70e035a-3e7f-4e59-8a57-1e0cb4a42e9b', '', '', '2020-01-17 15:14:59', '2020-01-17 15:14:59', '', 0, 'http://wp-test/f70e035a-3e7f-4e59-8a57-1e0cb4a42e9b/', 0, 'customize_changeset', '', 0),
(148, 1, '2020-01-18 08:43:38', '2020-01-18 08:43:38', '{\n    \"bardershop::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-18 08:43:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f54a26d0-88c8-4222-a34f-4824facef173', '', '', '2020-01-18 08:43:38', '2020-01-18 08:43:38', '', 0, 'http://wp-test/f54a26d0-88c8-4222-a34f-4824facef173/', 0, 'customize_changeset', '', 0),
(149, 1, '2020-01-18 08:44:37', '2020-01-18 08:44:37', '{\n    \"bardershop::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-18 08:44:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '53d67a21-d03a-40bd-b957-0e158cb0f47e', '', '', '2020-01-18 08:44:37', '2020-01-18 08:44:37', '', 0, 'http://wp-test/53d67a21-d03a-40bd-b957-0e158cb0f47e/', 0, 'customize_changeset', '', 0),
(150, 1, '2020-01-21 04:07:42', '2020-01-21 04:07:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:21:\"category:registration\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Запись к мастеру', '%d0%b7%d0%b0%d0%bf%d0%b8%d1%81%d1%8c-%d0%ba-%d0%bc%d0%b0%d1%81%d1%82%d0%b5%d1%80%d1%83', 'publish', 'closed', 'closed', '', 'group_5e2678f75b9ab', '', '', '2020-01-21 04:07:58', '2020-01-21 04:07:58', '', 0, 'http://wp-test/?post_type=acf-field-group&#038;p=150', 0, 'acf-field-group', '', 0),
(151, 1, '2020-01-21 10:42:56', '2020-01-21 10:42:56', '8(987)880-39-65 888@mail.ru', '2 1 3', '', 'trash', 'closed', 'closed', '', '2-1-3__trashed', '', '', '2020-01-21 10:50:42', '2020-01-21 10:50:42', '', 0, 'http://wp-test/2-1-3/', 0, 'post', '', 0),
(152, 1, '2020-01-21 10:43:52', '2020-01-21 10:43:52', '8(987)880-39-65 888@mail.ru выфвфыв', 'Имя Фамилия Отчетсов', '', 'trash', 'closed', 'closed', '', '%d0%b8%d0%bc%d1%8f-%d1%84%d0%b0%d0%bc%d0%b8%d0%bb%d0%b8%d1%8f-%d0%be%d1%82%d1%87%d0%b5%d1%82%d1%81%d0%be%d0%b2__trashed', '', '', '2020-01-21 10:50:41', '2020-01-21 10:50:41', '', 0, 'http://wp-test/%d0%b8%d0%bc%d1%8f-%d1%84%d0%b0%d0%bc%d0%b8%d0%bb%d0%b8%d1%8f-%d0%be%d1%82%d1%87%d0%b5%d1%82%d1%81%d0%be%d0%b2/', 0, 'post', '', 0),
(153, 1, '2020-01-21 10:44:10', '2020-01-21 10:44:10', '8(987)880-39-65 888@mail.ru', '2 1 3', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2020-01-21 10:44:10', '2020-01-21 10:44:10', '', 151, 'http://wp-test/151-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2020-01-21 10:45:57', '2020-01-21 10:45:57', '8(987)880-39-65 1@sad.dd Сделать меня красивым!', 'Иван Иванов Робертович', '', 'trash', 'closed', 'closed', '', '%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87__trashed', '', '', '2020-01-21 10:50:40', '2020-01-21 10:50:40', '', 0, 'http://wp-test/%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87/', 0, 'post', '', 0),
(155, 1, '2020-01-21 10:45:57', '2020-01-21 10:45:57', '8(987)880-39-65 1@sad.dd Сделать меня красивым!', 'Иван Иванов Робертович', '', 'trash', 'closed', 'closed', '', '%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87-2__trashed', '', '', '2020-01-21 10:50:41', '2020-01-21 10:50:41', '', 0, 'http://wp-test/%d0%b8%d0%b2%d0%b0%d0%bd-%d0%b8%d0%b2%d0%b0%d0%bd%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87-2/', 0, 'post', '', 0),
(156, 1, '2020-01-21 10:47:20', '2020-01-21 10:47:20', '8(987)880-39-65 1@sad.dd Сделать меня красивым!', 'Иван Сидоров Робертович', '', 'trash', 'closed', 'closed', '', '%d0%b8%d0%b2%d0%b0%d0%bd-%d1%81%d0%b8%d0%b4%d0%be%d1%80%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87__trashed', '', '', '2020-01-21 10:50:39', '2020-01-21 10:50:39', '', 0, 'http://wp-test/%d0%b8%d0%b2%d0%b0%d0%bd-%d1%81%d0%b8%d0%b4%d0%be%d1%80%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87/', 0, 'post', '', 0),
(157, 1, '2020-01-21 10:47:20', '2020-01-21 10:47:20', '8(987)880-39-65 1@sad.dd Сделать меня красивым!', 'Иван Сидоров Робертович', '', 'trash', 'closed', 'closed', '', '%d0%b8%d0%b2%d0%b0%d0%bd-%d1%81%d0%b8%d0%b4%d0%be%d1%80%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87__trashed-2', '', '', '2020-01-21 10:50:40', '2020-01-21 10:50:40', '', 0, 'http://wp-test/%d0%b8%d0%b2%d0%b0%d0%bd-%d1%81%d0%b8%d0%b4%d0%be%d1%80%d0%be%d0%b2-%d1%80%d0%be%d0%b1%d0%b5%d1%80%d1%82%d0%be%d0%b2%d0%b8%d1%87/', 0, 'post', '', 0),
(158, 1, '2020-01-21 10:50:39', '2020-01-21 10:50:39', '8(987)880-39-65 1@sad.dd Сделать меня красивым!', 'Иван Сидоров Робертович', '', 'inherit', 'closed', 'closed', '', '156-revision-v1', '', '', '2020-01-21 10:50:39', '2020-01-21 10:50:39', '', 156, 'http://wp-test/156-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2020-01-21 10:50:40', '2020-01-21 10:50:40', '8(987)880-39-65 1@sad.dd Сделать меня красивым!', 'Иван Сидоров Робертович', '', 'inherit', 'closed', 'closed', '', '157-revision-v1', '', '', '2020-01-21 10:50:40', '2020-01-21 10:50:40', '', 157, 'http://wp-test/157-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2020-01-21 10:50:40', '2020-01-21 10:50:40', '8(987)880-39-65 1@sad.dd Сделать меня красивым!', 'Иван Иванов Робертович', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2020-01-21 10:50:40', '2020-01-21 10:50:40', '', 154, 'http://wp-test/154-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2020-01-21 10:50:41', '2020-01-21 10:50:41', '8(987)880-39-65 1@sad.dd Сделать меня красивым!', 'Иван Иванов Робертович', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2020-01-21 10:50:41', '2020-01-21 10:50:41', '', 155, 'http://wp-test/155-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2020-01-21 10:50:41', '2020-01-21 10:50:41', '8(987)880-39-65 888@mail.ru выфвфыв', 'Имя Фамилия Отчетсов', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2020-01-21 10:50:41', '2020-01-21 10:50:41', '', 152, 'http://wp-test/152-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2020-01-21 10:55:07', '2020-01-21 10:55:07', '8(888)888-88-88 888@mail.ru', 'Пуделев Сабак Сабакеевич', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%83%d0%b4%d0%b5%d0%bb%d0%b5%d0%b2-%d1%81%d0%b0%d0%b1%d0%b0%d0%ba-%d1%81%d0%b0%d0%b1%d0%b0%d0%ba%d0%b5%d0%b5%d0%b2%d0%b8%d1%87', '', '', '2020-01-21 10:55:07', '2020-01-21 10:55:07', '', 0, 'http://wp-test/%d0%bf%d1%83%d0%b4%d0%b5%d0%bb%d0%b5%d0%b2-%d1%81%d0%b0%d0%b1%d0%b0%d0%ba-%d1%81%d0%b0%d0%b1%d0%b0%d0%ba%d0%b5%d0%b5%d0%b2%d0%b8%d1%87/', 0, 'post', '', 0),
(164, 1, '2020-01-21 11:17:56', '2020-01-21 11:17:56', '8(888)888-88-88 888@mail.ru fdsf', 'ntcn fdsaf fgdsf', '', 'trash', 'closed', 'closed', '', 'ntcn-fdsaf-fgdsf__trashed', '', '', '2020-01-21 12:36:16', '2020-01-21 12:36:16', '', 0, 'http://wp-test/ntcn-fdsaf-fgdsf/', 0, 'post', '', 0),
(165, 1, '2020-01-21 11:22:16', '2020-01-21 11:22:16', '(987) 880-39-65 1@sad.dd выфв', 'Тест Тесто ОТчетчтстов10239102л((*:;\\\"№\\\"\\\"', '', 'trash', 'closed', 'closed', '', '%d1%82%d0%b5%d1%81%d1%82-%d1%82%d0%b5%d1%81%d1%82%d0%be-%d0%be%d1%82%d1%87%d0%b5%d1%82%d1%87%d1%82%d1%81%d1%82%d0%be%d0%b210239102%d0%bb%e2%84%96__trashed', '', '', '2020-01-21 12:36:16', '2020-01-21 12:36:16', '', 0, 'http://wp-test/%d1%82%d0%b5%d1%81%d1%82-%d1%82%d0%b5%d1%81%d1%82%d0%be-%d0%be%d1%82%d1%87%d0%b5%d1%82%d1%87%d1%82%d1%81%d1%82%d0%be%d0%b210239102%d0%bb%e2%84%96/', 0, 'post', '', 0),
(166, 1, '2020-01-21 11:57:32', '2020-01-21 11:57:32', '\r\n    <p>Контактный телефон: 8(888)888-88-88</p>\r\n    <p>Контактный e-mail: 888@mail.ru</p>\r\n    <p>Доп. информация для мастера: коммент</p>\r\n    ', 'Фамилия Имя Отчество', '', 'publish', 'closed', 'closed', '', '%d1%84%d0%b0%d0%bc%d0%b8%d0%bb%d0%b8%d1%8f-%d0%b8%d0%bc%d1%8f-%d0%be%d1%82%d1%87%d0%b5%d1%81%d1%82%d0%b2%d0%be', '', '', '2020-01-21 11:57:32', '2020-01-21 11:57:32', '', 0, 'http://wp-test/%d1%84%d0%b0%d0%bc%d0%b8%d0%bb%d0%b8%d1%8f-%d0%b8%d0%bc%d1%8f-%d0%be%d1%82%d1%87%d0%b5%d1%81%d1%82%d0%b2%d0%be/', 0, 'post', '', 0),
(168, 1, '2020-01-21 12:02:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-01-21 12:02:33', '0000-00-00 00:00:00', '', 0, 'http://wp-test/?p=168', 0, 'post', '', 0),
(169, 1, '2020-01-21 12:36:16', '2020-01-21 12:36:16', '(987) 880-39-65 1@sad.dd выфв', 'Тест Тесто ОТчетчтстов10239102л((*:;\\\"№\\\"\\\"', '', 'inherit', 'closed', 'closed', '', '165-revision-v1', '', '', '2020-01-21 12:36:16', '2020-01-21 12:36:16', '', 165, 'http://wp-test/165-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2020-01-21 12:36:16', '2020-01-21 12:36:16', '8(888)888-88-88 888@mail.ru fdsf', 'ntcn fdsaf fgdsf', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2020-01-21 12:36:16', '2020-01-21 12:36:16', '', 164, 'http://wp-test/164-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2020-01-21 13:58:43', '2020-01-21 13:58:43', 'Контактный телефон: 8(888)888-88-88\n\nКонтактный e-mail: 888@mail.ru\n\nДоп. информация для мастера: Хочу мастра Эдика', 'Петров Александр Александрович', '', 'draft', 'closed', 'closed', '', '%d0%bf%d0%b5%d1%82%d1%80%d0%be%d0%b2-%d0%b0%d0%bb%d0%b5%d0%ba%d1%81%d0%b0%d0%bd%d0%b4%d1%80-%d0%b0%d0%bb%d0%b5%d0%ba%d1%81%d0%b0%d0%bd%d0%b4%d1%80%d0%be%d0%b2%d0%b8%d1%87', '', '', '2020-01-22 04:44:04', '2020-01-22 04:44:04', '', 0, 'http://wp-test/%d0%bf%d0%b5%d1%82%d1%80%d0%be%d0%b2-%d0%b0%d0%bb%d0%b5%d0%ba%d1%81%d0%b0%d0%bd%d0%b4%d1%80-%d0%b0%d0%bb%d0%b5%d0%ba%d1%81%d0%b0%d0%bd%d0%b4%d1%80%d0%be%d0%b2%d0%b8%d1%87/', 0, 'post', '', 0),
(177, 1, '2020-01-22 04:44:02', '2020-01-22 04:44:02', 'Контактный телефон: 8(888)888-88-88\n\nКонтактный e-mail: 888@mail.ru\n\nДоп. информация для мастера: Хочу мастра Эдика', 'Петров Александр Александрович', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2020-01-22 04:44:02', '2020-01-22 04:44:02', '', 176, 'http://wp-test/176-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_termmeta`
--

CREATE TABLE `wp_test_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_terms`
--

CREATE TABLE `wp_test_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_test_terms`
--

INSERT INTO `wp_test_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary', 'primary', 0),
(3, 'User', 'user', 0),
(4, 'Наши работы', 'works', 0),
(5, 'Прейскурант', 'price', 0),
(6, 'Запись к мастеру', 'registration', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_term_relationships`
--

CREATE TABLE `wp_test_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_test_term_relationships`
--

INSERT INTO `wp_test_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 2, 0),
(31, 3, 0),
(43, 2, 0),
(44, 2, 0),
(45, 2, 0),
(68, 4, 0),
(70, 2, 0),
(85, 4, 0),
(94, 4, 0),
(98, 4, 0),
(109, 4, 0),
(112, 4, 0),
(119, 5, 0),
(122, 5, 0),
(126, 5, 0),
(129, 5, 0),
(132, 5, 0),
(135, 4, 0),
(151, 6, 0),
(152, 6, 0),
(154, 6, 0),
(155, 6, 0),
(156, 6, 0),
(157, 6, 0),
(163, 6, 0),
(164, 6, 0),
(165, 6, 0),
(166, 6, 0),
(175, 6, 0),
(176, 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_term_taxonomy`
--

CREATE TABLE `wp_test_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_test_term_taxonomy`
--

INSERT INTO `wp_test_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'category', 'Наши работы', 0, 7),
(5, 5, 'category', '', 0, 5),
(6, 6, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_usermeta`
--

CREATE TABLE `wp_test_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_test_usermeta`
--

INSERT INTO `wp_test_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wp_test_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_test_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_test_dashboard_quick_press_last_post_id', '168'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"64bf8c1a78eb4b277c5c4021bccafd5ce9a80668b3b0327257c78bd42470c985\";a:4:{s:10:\"expiration\";i:1579840366;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579667566;}}'),
(19, 1, 'wp_test_user-settings', 'libraryContent=browse&posts_list_mode=excerpt'),
(20, 1, 'wp_test_user-settings-time', '1579669378'),
(21, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(25, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_primary,dashboard_quick_press\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:0:{}'),
(28, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(29, 1, 'enable_custom_fields', ''),
(30, 1, 'edit_post_per_page', '20'),
(31, 1, 'manageedit-postcolumnshidden', 'a:3:{i:0;s:6:\"author\";i:1;s:4:\"tags\";i:2;s:8:\"comments\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_test_users`
--

CREATE TABLE `wp_test_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_test_users`
--

INSERT INTO `wp_test_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B/5uuTUUDDOzns95waYbSeI0edY9kU/', 'admin', 'it@orfi.ru', '', '2020-01-06 08:29:24', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_test_commentmeta`
--
ALTER TABLE `wp_test_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_test_comments`
--
ALTER TABLE `wp_test_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_test_links`
--
ALTER TABLE `wp_test_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_test_options`
--
ALTER TABLE `wp_test_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_test_postmeta`
--
ALTER TABLE `wp_test_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_test_posts`
--
ALTER TABLE `wp_test_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_test_termmeta`
--
ALTER TABLE `wp_test_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_test_terms`
--
ALTER TABLE `wp_test_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_test_term_relationships`
--
ALTER TABLE `wp_test_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_test_term_taxonomy`
--
ALTER TABLE `wp_test_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_test_usermeta`
--
ALTER TABLE `wp_test_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_test_users`
--
ALTER TABLE `wp_test_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_test_commentmeta`
--
ALTER TABLE `wp_test_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_test_comments`
--
ALTER TABLE `wp_test_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_test_links`
--
ALTER TABLE `wp_test_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_test_options`
--
ALTER TABLE `wp_test_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- AUTO_INCREMENT для таблицы `wp_test_postmeta`
--
ALTER TABLE `wp_test_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT для таблицы `wp_test_posts`
--
ALTER TABLE `wp_test_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT для таблицы `wp_test_termmeta`
--
ALTER TABLE `wp_test_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_test_terms`
--
ALTER TABLE `wp_test_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_test_term_taxonomy`
--
ALTER TABLE `wp_test_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_test_usermeta`
--
ALTER TABLE `wp_test_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `wp_test_users`
--
ALTER TABLE `wp_test_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
