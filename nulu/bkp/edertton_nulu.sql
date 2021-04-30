-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 23-Nov-2020 às 03:58
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `edertton_nulu`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-11-06 23:20:14', '2020-11-07 02:20:14', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/nulu', 'yes'),
(2, 'home', 'http://localhost/nulu', 'yes'),
(3, 'blogname', 'Nulu Alimentos', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'edertton@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:115:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"produtos/?$\";s:28:\"index.php?post_type=produtos\";s:41:\"produtos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=produtos&feed=$matches[1]\";s:36:\"produtos/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=produtos&feed=$matches[1]\";s:28:\"produtos/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=produtos&paged=$matches[1]\";s:40:\"./(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:35:\"./(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:16:\"./(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:28:\"./(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:10:\"./(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"produtos/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"produtos/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"produtos/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"produtos/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"produtos/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"produtos/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"produtos/(.+?)/embed/?$\";s:41:\"index.php?produtos=$matches[1]&embed=true\";s:27:\"produtos/(.+?)/trackback/?$\";s:35:\"index.php?produtos=$matches[1]&tb=1\";s:47:\"produtos/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?produtos=$matches[1]&feed=$matches[2]\";s:42:\"produtos/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?produtos=$matches[1]&feed=$matches[2]\";s:35:\"produtos/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&paged=$matches[2]\";s:42:\"produtos/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?produtos=$matches[1]&cpage=$matches[2]\";s:31:\"produtos/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?produtos=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '/.', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'nulu', 'yes'),
(41, 'stylesheet', 'nulu', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '18', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1620267613', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'pt_BR', 'yes'),
(99, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1606105216;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1606141216;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1606184414;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606184554;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606184556;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606616415;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.5.3.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1606098999;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606099008;s:7:\"checked\";a:1:{s:4:\"nulu\";s:0:\"\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(168, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":8,\"critical\":1}', 'yes'),
(271, '_site_transient_timeout_theme_roots', '1606100807', 'no'),
(272, '_site_transient_theme_roots', 'a:1:{s:4:\"nulu\";s:7:\"/themes\";}', 'no'),
(265, '_site_transient_timeout_php_check_7772753a7ea0fe5c6dd1e8406c9ba6ba', '1606106785', 'no'),
(266, '_site_transient_php_check_7772753a7ea0fe5c6dd1e8406c9ba6ba', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(146, 'finished_updating_comment_type', '1', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(249, 'category_children', 'a:0:{}', 'yes'),
(147, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604715905;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(148, 'current_theme', '', 'yes'),
(149, 'theme_mods_nulu', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(152, 'acf_version', '5.9.1', 'yes'),
(269, '_transient_timeout_acf_plugin_updates', '1606271806', 'no'),
(270, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.1\";}}', 'no'),
(273, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606099008;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.1\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_last', '1'),
(4, 2, '_edit_lock', '1604715965:1'),
(5, 6, '_menu_item_type', 'custom'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 6, '_menu_item_object_id', '6'),
(8, 6, '_menu_item_object', 'custom'),
(9, 6, '_menu_item_target', ''),
(10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 6, '_menu_item_xfn', ''),
(12, 6, '_menu_item_url', 'http://localhost/nulu/'),
(13, 6, '_menu_item_orphaned', '1604866710'),
(14, 7, '_menu_item_type', 'post_type'),
(15, 7, '_menu_item_menu_item_parent', '0'),
(16, 7, '_menu_item_object_id', '2'),
(17, 7, '_menu_item_object', 'page'),
(18, 7, '_menu_item_target', ''),
(19, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 7, '_menu_item_xfn', ''),
(21, 7, '_menu_item_url', ''),
(22, 7, '_menu_item_orphaned', '1604866710'),
(23, 8, '_menu_item_type', 'custom'),
(24, 8, '_menu_item_menu_item_parent', '0'),
(25, 8, '_menu_item_object_id', '8'),
(26, 8, '_menu_item_object', 'custom'),
(27, 8, '_menu_item_target', ''),
(28, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 8, '_menu_item_xfn', ''),
(30, 8, '_menu_item_url', 'http://localhost/nulu/'),
(31, 8, '_menu_item_orphaned', '1604866998'),
(32, 9, '_menu_item_type', 'post_type'),
(33, 9, '_menu_item_menu_item_parent', '0'),
(34, 9, '_menu_item_object_id', '2'),
(35, 9, '_menu_item_object', 'page'),
(36, 9, '_menu_item_target', ''),
(37, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 9, '_menu_item_xfn', ''),
(39, 9, '_menu_item_url', ''),
(40, 9, '_menu_item_orphaned', '1604866998'),
(41, 10, '_menu_item_type', 'custom'),
(42, 10, '_menu_item_menu_item_parent', '0'),
(43, 10, '_menu_item_object_id', '10'),
(44, 10, '_menu_item_object', 'custom'),
(45, 10, '_menu_item_target', ''),
(46, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 10, '_menu_item_xfn', ''),
(48, 10, '_menu_item_url', 'http://localhost/nulu/'),
(49, 10, '_menu_item_orphaned', '1604867013'),
(50, 11, '_menu_item_type', 'post_type'),
(51, 11, '_menu_item_menu_item_parent', '0'),
(52, 11, '_menu_item_object_id', '2'),
(53, 11, '_menu_item_object', 'page'),
(54, 11, '_menu_item_target', ''),
(55, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 11, '_menu_item_xfn', ''),
(57, 11, '_menu_item_url', ''),
(58, 11, '_menu_item_orphaned', '1604867013'),
(59, 12, '_menu_item_type', 'custom'),
(60, 12, '_menu_item_menu_item_parent', '0'),
(61, 12, '_menu_item_object_id', '12'),
(62, 12, '_menu_item_object', 'custom'),
(63, 12, '_menu_item_target', ''),
(64, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 12, '_menu_item_xfn', ''),
(66, 12, '_menu_item_url', 'http://localhost/nulu/'),
(67, 12, '_menu_item_orphaned', '1604867018'),
(68, 13, '_menu_item_type', 'post_type'),
(69, 13, '_menu_item_menu_item_parent', '0'),
(70, 13, '_menu_item_object_id', '2'),
(71, 13, '_menu_item_object', 'page'),
(72, 13, '_menu_item_target', ''),
(73, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 13, '_menu_item_xfn', ''),
(75, 13, '_menu_item_url', ''),
(76, 13, '_menu_item_orphaned', '1604867018'),
(77, 14, '_edit_lock', '1605153586:1'),
(78, 16, '_edit_lock', '1604867267:1'),
(79, 18, '_edit_lock', '1604878156:1'),
(80, 20, '_menu_item_type', 'post_type'),
(81, 20, '_menu_item_menu_item_parent', '0'),
(82, 20, '_menu_item_object_id', '16'),
(83, 20, '_menu_item_object', 'page'),
(84, 20, '_menu_item_target', ''),
(85, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 20, '_menu_item_xfn', ''),
(87, 20, '_menu_item_url', ''),
(109, 25, '_menu_item_menu_item_parent', '0'),
(89, 21, '_menu_item_type', 'post_type'),
(90, 21, '_menu_item_menu_item_parent', '0'),
(91, 21, '_menu_item_object_id', '14'),
(92, 21, '_menu_item_object', 'page'),
(93, 21, '_menu_item_target', ''),
(94, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 21, '_menu_item_xfn', ''),
(96, 21, '_menu_item_url', ''),
(108, 25, '_menu_item_type', 'post_type'),
(98, 22, '_menu_item_type', 'post_type'),
(99, 22, '_menu_item_menu_item_parent', '0'),
(100, 22, '_menu_item_object_id', '18'),
(101, 22, '_menu_item_object', 'page'),
(102, 22, '_menu_item_target', ''),
(103, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 22, '_menu_item_xfn', ''),
(105, 22, '_menu_item_url', ''),
(107, 23, '_edit_lock', '1605154246:1'),
(110, 25, '_menu_item_object_id', '23'),
(111, 25, '_menu_item_object', 'page'),
(112, 25, '_menu_item_target', ''),
(113, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 25, '_menu_item_xfn', ''),
(115, 25, '_menu_item_url', ''),
(127, 27, '_edit_lock', '1605144365:1'),
(117, 26, '_menu_item_type', 'custom'),
(118, 26, '_menu_item_menu_item_parent', '0'),
(119, 26, '_menu_item_object_id', '26'),
(120, 26, '_menu_item_object', 'custom'),
(121, 26, '_menu_item_target', ''),
(122, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 26, '_menu_item_xfn', ''),
(124, 26, '_menu_item_url', '#'),
(126, 27, '_edit_last', '1'),
(128, 28, '_edit_last', '1'),
(129, 28, '_edit_lock', '1605144390:1'),
(130, 29, '_edit_last', '1'),
(131, 29, '_edit_lock', '1605145079:1'),
(132, 14, '_edit_last', '1'),
(133, 23, '_edit_last', '1'),
(134, 32, '_edit_lock', '1605154945:1'),
(135, 34, '_edit_lock', '1605156014:1'),
(136, 1, '_edit_last', '1'),
(141, 37, '_edit_lock', '1605178629:1'),
(139, 1, '_wp_old_slug', 'ola-mundo'),
(140, 1, '_edit_lock', '1605156129:1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-11-06 23:20:14', '2020-11-07 02:20:14', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', '5 Formas de cuidar de si mesmo', '', 'publish', 'open', 'open', '', '5-formas-de-cuidar-de-si-mesmo', '', '', '2020-11-12 01:43:38', '2020-11-12 04:43:38', '', 0, 'http://localhost/nulu/?p=1', 0, 'post', '', 1),
(2, 1, '2020-11-06 23:20:14', '2020-11-07 02:20:14', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/nulu/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-11-06 23:26:05', '2020-11-07 02:26:05', '', 0, 'http://localhost/nulu/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-11-06 23:20:14', '2020-11-07 02:20:14', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/nulu.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2020-11-06 23:20:14', '2020-11-07 02:20:14', '', 0, 'http://localhost/nulu/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-11-06 23:26:05', '2020-11-07 02:26:05', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/nulu/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-11-06 23:26:05', '2020-11-07 02:26:05', '', 2, 'http://localhost/nulu/2020/11/06/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2020-11-08 17:18:29', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-08 17:18:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/nulu/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2020-11-08 17:18:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-08 17:18:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/nulu/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2020-11-08 17:23:18', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-08 17:23:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/nulu/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2020-11-08 17:23:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-08 17:23:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/nulu/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2020-11-08 17:23:33', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-08 17:23:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/nulu/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2020-11-08 17:23:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-08 17:23:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/nulu/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2020-11-08 17:23:38', '0000-00-00 00:00:00', '', 'Início', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-08 17:23:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/nulu/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2020-11-08 17:23:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-11-08 17:23:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/nulu/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2020-11-08 17:29:05', '2020-11-08 20:29:05', '', 'Nulu por um mundo melhor', '', 'publish', 'closed', 'closed', '', 'quem-somos', '', '', '2020-11-12 00:59:46', '2020-11-12 03:59:46', '', 0, 'http://localhost/nulu/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-11-08 17:29:05', '2020-11-08 20:29:05', '', 'Quem Somos', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-11-08 17:29:05', '2020-11-08 20:29:05', '', 14, 'http://localhost/nulu/sem-categoria/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-11-08 17:30:05', '2020-11-08 20:30:05', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2020-11-08 17:30:05', '2020-11-08 20:30:05', '', 0, 'http://localhost/nulu/?page_id=16', 0, 'page', '', 0),
(17, 1, '2020-11-08 17:30:05', '2020-11-08 20:30:05', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-11-08 17:30:05', '2020-11-08 20:30:05', '', 16, 'http://localhost/nulu/sem-categoria/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-11-08 17:32:09', '2020-11-08 20:32:09', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-11-08 17:32:09', '2020-11-08 20:32:09', '', 0, 'http://localhost/nulu/?page_id=18', 0, 'page', '', 0),
(19, 1, '2020-11-08 17:32:09', '2020-11-08 20:32:09', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2020-11-08 17:32:09', '2020-11-08 20:32:09', '', 18, 'http://localhost/nulu/sem-categoria/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-11-08 20:31:37', '2020-11-08 23:31:37', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-11-12 01:50:00', '2020-11-12 04:50:00', '', 0, 'http://localhost/nulu/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2020-11-08 20:31:37', '2020-11-08 23:31:37', '', 'Quem Somos', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-11-12 01:50:00', '2020-11-12 04:50:00', '', 0, 'http://localhost/nulu/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2020-11-08 20:31:37', '2020-11-08 23:31:37', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-11-12 01:50:00', '2020-11-12 04:50:00', '', 0, 'http://localhost/nulu/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2020-11-08 20:31:49', '2020-11-08 23:31:49', '', 'Fale conosco', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2020-11-12 01:10:46', '2020-11-12 04:10:46', '', 0, 'http://localhost/nulu/?page_id=23', 0, 'page', '', 0),
(24, 1, '2020-11-08 20:31:49', '2020-11-08 23:31:49', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-11-08 20:31:49', '2020-11-08 23:31:49', '', 23, 'http://localhost/nulu/sem-categoria/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-11-08 20:32:26', '2020-11-08 23:32:26', '', 'Contato', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-11-12 01:50:00', '2020-11-12 04:50:00', '', 0, 'http://localhost/nulu/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2020-11-08 20:32:26', '2020-11-08 23:32:26', '', 'Entrar', '', 'publish', 'closed', 'closed', '', 'entrar', '', '', '2020-11-12 01:50:00', '2020-11-12 04:50:00', '', 0, 'http://localhost/nulu/?p=26', 5, 'nav_menu_item', '', 0),
(27, 1, '2020-11-11 22:28:04', '2020-11-12 01:28:04', '', 'Manteiga Vegana', '', 'publish', 'closed', 'closed', '', 'manteiga-vegana', '', '', '2020-11-11 22:28:04', '2020-11-12 01:28:04', '', 0, 'http://localhost/nulu/?post_type=produtos&#038;p=27', 0, 'produtos', '', 0),
(28, 1, '2020-11-11 22:28:36', '2020-11-12 01:28:36', '', 'Mussarela Vegana', '', 'publish', 'closed', 'closed', '', 'mussarela-vegana', '', '', '2020-11-11 22:28:43', '2020-11-12 01:28:43', '', 0, 'http://localhost/nulu/?post_type=produtos&#038;p=28', 0, 'produtos', '', 0),
(29, 1, '2020-11-11 22:28:58', '2020-11-12 01:28:58', '', 'Queijo de Akaîu', '', 'publish', 'closed', 'closed', '', 'queijo-de-akaiu', '', '', '2020-11-11 22:28:58', '2020-11-12 01:28:58', '', 0, 'http://localhost/nulu/?post_type=produtos&#038;p=29', 0, 'produtos', '', 0),
(30, 1, '2020-11-12 00:59:46', '2020-11-12 03:59:46', '', 'Nulu por um mundo melhor', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-11-12 00:59:46', '2020-11-12 03:59:46', '', 14, 'http://localhost/nulu/sem-categoria/14-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-11-12 01:10:46', '2020-11-12 04:10:46', '', 'Fale conosco', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-11-12 01:10:46', '2020-11-12 04:10:46', '', 23, 'http://localhost/nulu/sem-categoria/23-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-11-12 01:24:48', '2020-11-12 04:24:48', '', 'Parcerias', '', 'publish', 'closed', 'closed', '', 'parcerias', '', '', '2020-11-12 01:24:48', '2020-11-12 04:24:48', '', 0, 'http://localhost/nulu/?page_id=32', 0, 'page', '', 0),
(33, 1, '2020-11-12 01:24:48', '2020-11-12 04:24:48', '', 'Parcerias', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-11-12 01:24:48', '2020-11-12 04:24:48', '', 32, 'http://localhost/nulu/sem-categoria/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-11-12 01:25:01', '2020-11-12 04:25:01', '', 'Trabalhe Conosco', '', 'publish', 'closed', 'closed', '', 'trabalhe-conosco', '', '', '2020-11-12 01:25:01', '2020-11-12 04:25:01', '', 0, 'http://localhost/nulu/?page_id=34', 0, 'page', '', 0),
(35, 1, '2020-11-12 01:25:01', '2020-11-12 04:25:01', '', 'Trabalhe Conosco', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-11-12 01:25:01', '2020-11-12 04:25:01', '', 34, 'http://localhost/nulu/sem-categoria/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-11-12 01:43:38', '2020-11-12 04:43:38', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', '5 Formas de cuidar de si mesmo', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-11-12 01:43:38', '2020-11-12 04:43:38', '', 1, 'http://localhost/nulu/sem-categoria/1-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-11-12 02:30:29', '2020-11-12 05:30:29', '', 'Cookie sem glúten e plant based', '', 'publish', 'open', 'open', '', 'cookie-sem-gluten-e-plant-based', '', '', '2020-11-12 02:30:29', '2020-11-12 05:30:29', '', 0, 'http://localhost/nulu/?p=37', 0, 'post', '', 0),
(38, 1, '2020-11-12 02:30:29', '2020-11-12 05:30:29', '', 'Cookie sem glúten e plant based', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2020-11-12 02:30:29', '2020-11-12 05:30:29', '', 37, 'http://localhost/nulu/estilo-de-vida/37-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'estilo de vida', 'estilo-de-vida', 0),
(2, 'header', 'header', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(25, 2, 0),
(26, 2, 0),
(37, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ederton'),
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
(16, 1, 'session_tokens', 'a:3:{s:64:\"48d1da368f99ce84880ca42977144e9bb465ceab42637b43c7466e0ffe91732b\";a:4:{s:10:\"expiration\";i:1605925353;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604715753;}s:64:\"e062705592a036dd689488ffdd5a611285b9ac47c0a556b4ba00b44d31336751\";a:4:{s:10:\"expiration\";i:1605317155;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0\";s:5:\"login\";i:1605144355;}s:64:\"60638922fbdd759b3b7bd027507de9bf2f1ba30194d841739f36ce52582f1375\";a:4:{s:10:\"expiration\";i:1605319582;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:83.0) Gecko/20100101 Firefox/83.0\";s:5:\"login\";i:1605146782;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ederton', '$P$BxFUzVhXg0yJgKGJccakjEzEs057Kl1', 'ederton', 'edertton@gmail.com', 'http://localhost/nulu', '2020-11-07 02:20:14', '', 0, 'ederton');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
