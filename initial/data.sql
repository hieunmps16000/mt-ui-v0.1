-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2025 at 12:09 PM
-- Server version: 10.5.15-MariaDB-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tk18974dt41_vi`
--

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_assets`
--

CREATE TABLE `z0djb_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_assets`
--

INSERT INTO `z0djb_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 364, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1,\"6\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"6\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1},\"core.edit.state\":{\"6\":1},\"core.edit.own\":{\"6\":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(4, 1, 4, 5, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"6\":0},\"core.manage\":{\"6\":0}}'),
(5, 1, 6, 7, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"6\":0},\"core.manage\":{\"6\":0}}'),
(6, 1, 8, 9, 1, 'com_config', 'com_config', '{}'),
(8, 1, 10, 253, 1, 'com_content', 'com_content', '{\"core.admin\":{\"1\":1,\"6\":0},\"core.manage\":{\"1\":1,\"6\":0},\"core.create\":{\"1\":1,\"6\":0},\"core.delete\":{\"1\":1,\"6\":0},\"core.edit\":{\"1\":1,\"6\":0},\"core.edit.state\":{\"1\":1,\"6\":0},\"core.edit.own\":{\"1\":1,\"6\":0}}'),
(9, 1, 254, 255, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 256, 257, 1, 'com_installer', 'com_installer', '{\"core.admin\":{\"6\":0},\"core.manage\":{\"6\":0},\"core.delete\":{\"6\":0},\"core.edit.state\":{\"6\":0}}'),
(11, 1, 258, 259, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"1\":1,\"6\":0},\"core.manage\":{\"1\":1,\"6\":0},\"core.create\":{\"1\":1,\"6\":0},\"core.delete\":{\"1\":1,\"6\":0},\"core.edit\":{\"1\":1,\"6\":0},\"core.edit.state\":{\"1\":1,\"6\":0}}'),
(12, 1, 260, 261, 1, 'com_login', 'com_login', '{}'),
(13, 1, 262, 263, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 264, 265, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 266, 267, 1, 'com_media', 'com_media', '{\"core.admin\":{\"6\":0},\"core.manage\":{\"6\":0},\"core.create\":{\"6\":0},\"core.delete\":{\"6\":0}}'),
(16, 1, 268, 269, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"6\":0},\"core.manage\":{\"6\":0},\"core.create\":{\"6\":0},\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0},\"core.edit.state\":{\"6\":0}}'),
(18, 1, 272, 273, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"6\":0},\"core.manage\":{\"6\":0},\"core.create\":{\"6\":0},\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0},\"core.edit.state\":{\"6\":0}}'),
(20, 1, 274, 275, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"1\":1,\"6\":0},\"core.manage\":{\"1\":1,\"6\":0},\"core.edit\":{\"1\":1,\"6\":0},\"core.edit.state\":{\"1\":1,\"6\":0}}'),
(23, 1, 276, 277, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"1\":1,\"6\":0},\"core.manage\":{\"1\":1,\"6\":0},\"core.create\":{\"1\":1,\"6\":0},\"core.delete\":{\"1\":1,\"6\":0},\"core.edit\":{\"1\":1,\"6\":0},\"core.edit.state\":{\"1\":1,\"6\":0}}'),
(24, 1, 278, 279, 1, 'com_users', 'com_users', '{\"core.admin\":{\"6\":0},\"core.manage\":{\"6\":0},\"core.create\":{\"6\":0},\"core.delete\":{\"6\":0},\"core.edit\":{\"6\":0},\"core.edit.state\":{\"6\":0}}'),
(26, 1, 280, 281, 1, 'com_wrapper', 'com_wrapper', '{}'),
(39, 8, 41, 178, 2, 'com_content.category.14', 'Sample Data-Articles', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(34, 8, 27, 40, 2, 'com_content.category.9', 'Chưa phân loại', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(44, 39, 42, 139, 3, 'com_content.category.19', 'Joomla!', '{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(45, 44, 43, 120, 4, 'com_content.category.20', 'Extensions', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(46, 45, 44, 53, 5, 'com_content.category.21', 'Components', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(47, 45, 54, 97, 5, 'com_content.category.22', 'Modules', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(48, 45, 98, 109, 5, 'com_content.category.23', 'Templates', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(49, 45, 110, 111, 5, 'com_content.category.24', 'Languages', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(50, 45, 112, 119, 5, 'com_content.category.25', 'Plugins', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(51, 39, 140, 163, 3, 'com_content.category.26', 'Park Site', '{\"core.create\":{\"10\":0,\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(52, 51, 141, 144, 4, 'com_content.category.27', 'Park Blog', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(53, 51, 145, 162, 4, 'com_content.category.28', 'Photo Gallery', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(54, 39, 164, 173, 3, 'com_content.category.29', 'Fruit Shop Site', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(55, 54, 165, 170, 4, 'com_content.category.30', 'Growers', '{\"core.create\":{\"12\":0},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(93, 47, 55, 64, 6, 'com_content.category.64', 'Content Modules', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(94, 47, 65, 72, 6, 'com_content.category.65', 'User Modules', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(95, 47, 73, 78, 6, 'com_content.category.66', 'Display Modules', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(96, 47, 79, 90, 6, 'com_content.category.67', 'Utility Modules', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(97, 48, 99, 100, 6, 'com_content.category.68', 'Atomic', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(98, 48, 101, 102, 6, 'com_content.category.69', 'Beez 20', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(99, 48, 103, 104, 6, 'com_content.category.70', 'Beez5', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(100, 48, 105, 106, 6, 'com_content.category.71', 'Milky Way', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(108, 53, 146, 155, 5, 'com_content.category.72', 'Animals', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(109, 53, 156, 161, 5, 'com_content.category.73', 'Scenery', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(116, 52, 142, 143, 5, 'com_content.article.18', 'Second Blog Post', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(236, 34, 38, 39, 3, 'com_content.article.97', 'Liên hệ', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(234, 211, 224, 225, 3, 'com_content.article.96', 'Hướng dẫn chọn size', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(120, 44, 121, 122, 4, 'com_content.article.22', 'Getting Started', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(121, 55, 166, 167, 5, 'com_content.article.23', 'Happy Orange Orchard', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(122, 44, 123, 124, 4, 'com_content.article.24', 'Joomla!', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(123, 108, 147, 148, 6, 'com_content.article.25', 'Koala', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(124, 96, 80, 81, 7, 'com_content.article.26', 'Language Switcher', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(125, 93, 56, 57, 7, 'com_content.article.27', 'Latest Articles Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(126, 94, 66, 67, 7, 'com_content.article.28', 'Login Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(127, 166, 94, 95, 7, 'com_content.article.29', 'Menu Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(128, 93, 58, 59, 7, 'com_content.article.30', 'Most Read Content', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(129, 93, 60, 61, 7, 'com_content.article.31', 'News Flash', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(130, 44, 125, 126, 4, 'com_content.article.32', 'Parameters', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(131, 108, 149, 150, 6, 'com_content.article.33', 'Phyllopteryx', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(132, 109, 157, 158, 6, 'com_content.article.34', 'Pinnacles', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(133, 44, 127, 128, 4, 'com_content.article.35', 'Professionals', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(134, 95, 74, 75, 7, 'com_content.article.36', 'Random Image Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(135, 93, 62, 63, 7, 'com_content.article.37', 'Related Items Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(136, 44, 129, 130, 4, 'com_content.article.38', 'Sample Sites', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(137, 46, 45, 46, 6, 'com_content.article.39', 'Search', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(138, 96, 82, 83, 7, 'com_content.article.40', 'Search Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(139, 50, 113, 114, 6, 'com_content.article.41', 'Search ', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(140, 39, 174, 175, 3, 'com_content.article.42', 'Site Map', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(141, 108, 151, 152, 6, 'com_content.article.43', 'Spotted Quoll', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(142, 96, 84, 85, 7, 'com_content.article.44', 'Statistics Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(143, 96, 86, 87, 7, 'com_content.article.45', 'Syndicate Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(144, 50, 115, 116, 6, 'com_content.article.46', 'System', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(145, 44, 131, 132, 4, 'com_content.article.47', 'The Joomla! Community', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(146, 44, 133, 134, 4, 'com_content.article.48', 'The Joomla! Project', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(147, 48, 107, 108, 6, 'com_content.article.49', 'Typography', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(148, 44, 135, 136, 4, 'com_content.article.50', 'Upgraders', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(149, 50, 117, 118, 6, 'com_content.article.51', 'User', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(150, 46, 47, 48, 6, 'com_content.article.52', 'Users', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(151, 44, 137, 138, 4, 'com_content.article.53', 'Using Joomla!', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(152, 46, 49, 50, 6, 'com_content.article.54', 'Weblinks', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(153, 95, 76, 77, 7, 'com_content.article.55', 'Weblinks Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(154, 94, 68, 69, 7, 'com_content.article.56', 'Who\'s Online', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(155, 108, 153, 154, 6, 'com_content.article.57', 'Wobbegone', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(156, 55, 168, 169, 5, 'com_content.article.58', 'Wonderful Watermelon', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(157, 96, 88, 89, 7, 'com_content.article.59', 'Wrapper Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(158, 46, 51, 52, 6, 'com_content.article.60', 'News Feeds', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(163, 109, 159, 160, 6, 'com_content.article.65', 'Ormiston Pound', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(165, 94, 70, 71, 7, 'com_content.article.66', 'Latest Users Module', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(166, 47, 93, 96, 6, 'com_content.category.75', 'Menu Module', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(167, 54, 171, 172, 4, 'com_content.category.76', 'Recipes', '{\"core.create\":{\"12\":1},\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(168, 34, 28, 29, 3, 'com_content.article.67', 'What\'s New in 1.5?', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(170, 176, 180, 181, 3, 'com_content.article.70', 'Joomla 2.5 template going social', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(171, 176, 182, 183, 3, 'com_content.article.71', 'Its time to get template Joomla 2.5 ', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(173, 34, 36, 37, 3, 'com_content.article.73', 'Trang chủ', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(174, 34, 30, 31, 3, 'com_content.article.74', 'Typography', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(176, 8, 179, 186, 2, 'com_content.category.78', 'Trang chủ', '{\"core.create\":{\"1\":1},\"core.delete\":{\"1\":1},\"core.edit\":{\"1\":1},\"core.edit.state\":{\"1\":1},\"core.edit.own\":{\"1\":1}}'),
(177, 34, 32, 33, 3, 'com_content.article.75', 'What\'s New in J! 2.5?', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(178, 8, 187, 198, 2, 'com_content.category.79', 'Slideshow', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(179, 178, 188, 189, 3, 'com_content.article.76', 'Neque porro quisquam est qui dolorem ipsum quia', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(180, 178, 190, 191, 3, 'com_content.article.77', 'Social gathering: Good or Bad?', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(181, 178, 192, 193, 3, 'com_content.article.78', 'White iPhone 4 preorder is \'unavailable.\' But why?', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(182, 178, 194, 195, 3, 'com_content.article.79', 'Joomsocial Launch Credit Card Processing ', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(183, 34, 34, 35, 3, 'com_content.article.80', 'đang cập nhật', '{\"core.delete\":{\"1\":1},\"core.edit\":{\"1\":1},\"core.edit.state\":{\"1\":1}}'),
(184, 8, 199, 210, 2, 'com_content.category.80', 'My blog ', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(185, 184, 200, 201, 3, 'com_content.article.81', 'Linkswitch #33: Photo Manipulation, Investing, WordPress SEO', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(186, 184, 202, 203, 3, 'com_content.article.82', 'International Freelancers Day: A Free Online Conference for Freelancers', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(187, 184, 204, 205, 3, 'com_content.article.83', 'Meaningful Work: Lessons from Eat, Pray, Love', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(188, 184, 206, 207, 3, 'com_content.article.84', 'How to Find New Customers', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(191, 184, 208, 209, 3, 'com_content.article.87', 'In non ipsum ut lorem montes tortor et', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(193, 178, 196, 197, 3, 'com_content.article.88', 'Joomla 2.5 template wins Tech Talk prize', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(198, 176, 184, 185, 3, 'com_content.article.90', 'Is it possible to change A Menu Item\'s Type? ', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(200, 8, 211, 220, 2, 'com_content.category.81', 'JA Social Features', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(202, 200, 212, 213, 3, 'com_content.article.92', 'Green Theme', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(203, 200, 214, 215, 3, 'com_content.article.93', 'Grey Theme', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(204, 200, 216, 217, 3, 'com_content.article.94', 'Orange Theme', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(205, 200, 218, 219, 3, 'com_content.article.95', 'Purple Theme', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),
(206, 1, 350, 351, 1, 'com_jce', 'jce', '{}'),
(210, 8, 221, 222, 2, 'com_content.category.83', 'Sản phẩm', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(211, 8, 223, 226, 2, 'com_content.category.84', 'Hướng dẫn', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(212, 8, 227, 228, 2, 'com_content.category.85', 'Tin tức', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(215, 8, 229, 230, 2, 'com_content.category.86', 'Căn hộ chung cư', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(216, 8, 231, 232, 2, 'com_content.category.87', 'Biệt Thự', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(217, 8, 233, 234, 2, 'com_content.category.88', 'Nhà Phố', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(218, 8, 235, 236, 2, 'com_content.category.89', 'Văn Phòng', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(219, 8, 237, 238, 2, 'com_content.category.90', 'Khách Sạn - Resort', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(220, 8, 239, 240, 2, 'com_content.category.91', 'Cafe - Karaoke - Spa', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(221, 8, 241, 242, 2, 'com_content.category.92', 'Cửa Hàng - Showroom', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(222, 8, 243, 244, 2, 'com_content.category.93', 'Công Trình Khác', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(223, 8, 245, 246, 2, 'com_content.category.94', 'Hình Thi Công Thực Tế', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(224, 8, 247, 248, 2, 'com_content.category.95', 'Vật Dụng Nội Thất', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(225, 8, 249, 250, 2, 'com_content.category.96', 'Gỗ Công Nghiệp', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(226, 8, 251, 252, 2, 'com_content.category.97', 'Gỗ Tự Nhiên', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),
(227, 1, 352, 353, 1, 'com_k2', 'com_k2', '{\"core.admin\":{\"1\":1,\"6\":1},\"core.manage\":{\"1\":1,\"6\":1},\"core.create\":{\"1\":1,\"6\":1},\"core.delete\":{\"1\":1,\"6\":1},\"core.edit\":{\"1\":1,\"6\":1},\"core.edit.state\":{\"1\":1,\"6\":1},\"core.edit.own\":{\"1\":1,\"6\":1}}'),
(231, 1, 354, 355, 1, 'com_virtuemart', 'virtuemart', '{\"core.admin\":{\"6\":1},\"core.manage\":{\"6\":1}}'),
(235, 1, 356, 357, 1, 'com_rsform', 'rsform', '{\"core.admin\":{\"1\":1},\"core.manage\":{\"1\":1}}'),
(238, 1, 358, 359, 1, 'com_nivoslider', 'com_nivoslider', '{}'),
(240, 1, 360, 361, 1, 'com_sh404sef', 'sh404sef', '{}'),
(245, 1, 362, 363, 1, 'com_mtcomment', 'mtcomment', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_associations`
--

CREATE TABLE `z0djb_associations` (
  `id` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_categories`
--

CREATE TABLE `z0djb_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the j1d880_assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_categories`
--

INSERT INTO `z0djb_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(9, 34, 1, 133, 134, 1, 'chua-phan-loai', 'com_content', 'Chưa phân loại', 'chua-phan-loai', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2010-07-10 13:52:03', 42, '2013-09-15 06:24:08', 0, '*'),
(84, 211, 1, 149, 150, 1, 'huong-dan', 'com_content', 'Hướng dẫn', 'huong-dan', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2013-09-15 06:24:51', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_contact_details`
--

CREATE TABLE `z0djb_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `imagepos` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_contact_details`
--

INSERT INTO `z0djb_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Contact Name Here', 'name', 'Position', 'Street Address', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Information about or by the contact.</p>', 'images/powered_by.png', 'top', 'email@email.com', 1, -2, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"Twitter\",\"linka\":\"http:\\/\\/twitter.com\\/joomla\",\"linkb_name\":\"YouTube\",\"linkb\":\"http:\\/\\/www.youtube.com\\/user\\/joomla\",\"linkc_name\":\"Ustream\",\"linkc\":\"http:\\/\\/www.ustream.tv\\/joomla\",\"linkd_name\":\"FriendFeed\",\"linkd\":\"http:\\/\\/friendfeed.com\\/joomla\",\"linke_name\":\"Scribed\",\"linke\":\"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 16, 1, '', '', 'last', 'first', 'middle', 'en-GB', '0000-00-00 00:00:00', 0, '', '2010-12-27 07:19:15', 42, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Webmaster', 'webmaster', '', '', '', '', '', '', '', '', '', '', NULL, 'webmaster@example.com', 0, -2, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 34, 1, '', '', '', '', '', 'en-GB', '0000-00-00 00:00:00', 0, '', '2010-08-23 03:03:54', 42, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Owner', 'owner', '', '', '', '', '', '', '', '', '<p>I\'m the owner of this store.</p>', '', NULL, '', 0, -2, 0, '0000-00-00 00:00:00', 2, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 36, 1, '', '', '', '', '', '*', '0000-00-00 00:00:00', 0, '', '2010-07-11 13:07:22', 42, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Buyer', 'buyer', '', '', '', '', '', '', '', '', '<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>', '', NULL, '', 0, -2, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"0\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 36, 1, '', '', '', '', '', '*', '0000-00-00 00:00:00', 0, '', '2010-07-10 23:48:49', 42, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bananas', 'bananas', '', '', '', '', '', '', '', '', '<p>Bananas are a great source of potassium.</p><p>ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â </p>', 'images/sampledata/fruitshop/bananas_2.jpg', NULL, '', 0, -2, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"0\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 39, 1, '', 'http://en.wikipedia.org/wiki/Banana', '', '', '', '*', '0000-00-00 00:00:00', 0, '', '2010-07-10 23:49:11', 42, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Apples', 'apples', '', '', '', '', '', '', '', '', '<p>Applies are a versatile fruit, used for eating, cooking, and preserving.</p><p>There are more that 7500 different kinds of apples grown around the world.</p>', 'images/sampledata/fruitshop/apple.jpg', NULL, '', 0, -2, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"0\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 38, 1, '', 'http://en.wikipedia.org/wiki/Apple', '', '', '', '*', '0000-00-00 00:00:00', 0, '', '2010-07-10 23:49:11', 42, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Tamarind', 'tamarind', '', '', '', '', '', '', '', '', '<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many freshing drinks.</p><p>ÃƒÆ’Ã¢â‚¬Å¡Ãƒâ€šÃ‚Â </p>', 'images/sampledata/fruitshop/tamarind.jpg', NULL, '', 0, -2, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"plain\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 57, 1, '', 'http://en.wikipedia.org/wiki/Tamarind', '', '', '', '*', '0000-00-00 00:00:00', 0, '', '2010-07-10 23:49:11', 42, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Shop Address', 'shop-address', '', '', 'Our City', 'Our Province', 'Our Country', '', '555-555-5555', '', '<p>Here are directions for how to get to our shop.</p>', '', NULL, '', 0, -2, 0, '0000-00-00 00:00:00', 1, '{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_misc\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":\"\",\"linkb_name\":\"\",\"linkb\":\"\",\"linkc_name\":\"\",\"linkc\":\"\",\"linkd_name\":\"\",\"linkd\":\"\",\"linke_name\":\"\",\"linke\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 35, 1, '', '', '', '', '', '*', '0000-00-00 00:00:00', 0, '', '2010-08-23 03:03:54', 42, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Liên hệ', 'lien-he', '', 'CÔNG TY TNHH QUẢNG CÁO MINH THUẬN', 'HCM', 'HCM', 'HCM', 'HCM', '09 4774 1199 - 09 4749 3366 ', '(08) 6679 8083', '<div class=\"bgfooter\">\n\n<div class=\"footerleft\">\n\n<div id=\"Mod139\" class=\"ja-modulefooter   clearfix\">\n\n<div class=\"footer-content clearfix\">\n\n<div class=\"custom\">\n\n<p style=\"text-align: center;\">CÔNG TY TNHH PHÁT TRIỂN XÂY DỰNG AN KHANG<br />MST : 0312243752</p>\n\n<p style=\"text-align: center;\">LIÊN HỆ : 090 567 1168</p>\n\n<p style=\"text-align: center;\">TRỤ SỞ : 580 ĐIỆN BIÊN PHỦ, P.22, Q.BÌNH THẠNH, TP.HCM</p>\n\n<p style=\"text-align: center;\">VPGD : 566/17 ĐIỆN BIÊN PHỦ, P.22, Q.BÌNH THẠNH, TP.HCM<br />Email : <a href=\"mailto:ankhangxaydung@gmail.com\">&nbsp;</a><a href=\"mailto:ankhangxaydung@gmail.com\">ankhangxaydung@gmail.com</a> - Web: <a href=\"http://xaydungankhang.com\">http://xaydungankhang.com</a></p>\n\n</div>\n\n</div>\n\n</div>\n\n</div>\n\n</div>', '', NULL, 'chukyso@chukyso.com', 0, 1, 0, '0000-00-00 00:00:00', 3, '{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"\",\"show_name\":\"0\",\"show_position\":\"0\",\"show_email\":\"0\",\"show_street_address\":\"0\",\"show_suburb\":\"0\",\"show_state\":\"0\",\"show_postcode\":\"0\",\"show_country\":\"0\",\"show_telephone\":\"0\",\"show_mobile\":\"0\",\"show_fax\":\"0\",\"show_webpage\":\"0\",\"show_misc\":\"\",\"show_image\":\"0\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linka\":null,\"linkb_name\":\"\",\"linkb\":null,\"linkc_name\":\"\",\"linkc\":null,\"linkd_name\":\"\",\"linkd\":null,\"linke_name\":\"\",\"linke\":\"\",\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}', 0, 82, 1, 'HCM', 'http://chukyso.com', 'HCMHCM', 'HCM', 'HCM', '*', '2013-09-15 05:47:10', 42, '', '2014-06-13 17:32:35', 42, '', '', '{\"robots\":\"\",\"rights\":\"\"}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_content`
--

CREATE TABLE `z0djb_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the j1d880_assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `sectionid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mask` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `parentid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_content`
--

INSERT INTO `z0djb_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(96, 234, 'Hướng dẫn chọn size', 'huong-dan-chon-size', '', '<p>đang cập nhật</p>', '', 1, 0, 0, 84, '2014-06-18 07:57:39', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-06-18 07:57:39', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, 0, '', '', 1, 4, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(73, 173, 'Trang chủ', 'trang-chu', '', '<p>{loadposition catagory}</p>\n\n<p>{loadposition project}</p>', '', 1, 0, 0, 9, '2010-11-10 04:23:49', 42, '', '2013-11-02 05:20:16', 42, 0, '0000-00-00 00:00:00', '2010-11-10 04:23:49', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 13, 0, 2, 'Joomla template social 2.5, Joomla template club 2.5, Joomla template group 2.5, Joomla band template 2.5, Joomla template public 2.5', 'Joomla 2.5 template for social events', 1, 43, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(80, 183, 'đang cập nhật', 'dang-cap-nhat', '', '<p>đang cập nhật thông tin</p>', '', 1, 0, 0, 9, '2011-02-24 05:04:55', 42, '', '2013-09-15 06:30:14', 42, 0, '0000-00-00 00:00:00', '2011-02-24 05:04:55', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"1\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 18, 0, 1, 'template 2.5 social Joomla, social template 2.5 Joomla, 2.5 template event Joomla, 2.5 template club Joomla', 'Groups, clubs and events Joomla template social 2.5', 1, 151, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(97, 236, 'Liên hệ', 'lien-he', '', '<p>Taichung．Headquarter<br /> No.173, Wenqu Rd., Dajia Dist., Taichung City 437, Taiwan (R.O.C.)<br /> Tel +886 4 2688 1581<br /> Fax +886 4 2688 1509<br />E-mail: <a href=\"mailto:info@chengday.com.tw\">&nbsp;</a><a href=\"mailto:info@chengday.com.tw\">info@chengday.com.tw</a><br /><a href=\"http://www.chengday.com.tw\">http://www.chengday.com.tw</a><br />{loadposition lienhe}</p>', '', 1, 0, 0, 9, '2014-06-18 09:56:03', 42, '', '2014-09-19 18:25:55', 42, 42, '2014-09-22 05:53:02', '2014-06-18 09:56:03', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":null,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":null,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":null,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 9, 0, 0, '', '', 1, 98, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_content_frontpage`
--

CREATE TABLE `z0djb_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_content_frontpage`
--

INSERT INTO `z0djb_content_frontpage` (`content_id`, `ordering`) VALUES
(71, 2),
(72, 3),
(69, 4),
(70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_content_rating`
--

CREATE TABLE `z0djb_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_core_log_searches`
--

CREATE TABLE `z0djb_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_extensions`
--

CREATE TABLE `z0djb_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT 1,
  `access` int(10) UNSIGNED DEFAULT NULL,
  `protected` tinyint(3) NOT NULL DEFAULT 0,
  `manifest_cache` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_extensions`
--

INSERT INTO `z0djb_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10239, 'PLG_JSCSSCONTROL', 'plugin', 'jscsscontrol', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"PLG_JSCSSCONTROL\",\"type\":\"plugin\",\"creationDate\":\"2013-12-10\",\"author\":\"Viktor Vogel\",\"copyright\":\"Copyright 2013 Viktor Vogel. All rights reserved.\",\"authorEmail\":\"admin@kubik-rubik.de\",\"authorUrl\":\"http:\\/\\/joomla-extensions.kubik-rubik.de\\/\",\"version\":\"2.5-5\",\"description\":\"PLG_JSCSSCONTROL_XML_DESCRIPTION\",\"group\":\"\"}', '{\"js\":\"\\/plugins\\/system\\/jat3\\/jat3\\/base-themes\\/default\\/js\\/core.js\\r\\n\\/media\\/system\\/js\\/caption.js\\r\\n\\/media\\/system\\/js\\/mootools-more.js\\r\\n\\/media\\/system\\/js\\/core.js\\r\\n\\/media\\/system\\/js\\/mootools-core.js\\r\\n\\/media\\/system\\/js\\/tabs.js\\r\\n\\/media\\/system\\/js\\/validate.js\",\"css\":\"\",\"debug\":\"0\",\"donation_code\":\"\",\"versioncheck_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"cachetimeout\":\"6\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"site\":\"vi-VN\",\"administrator\":\"vi-VN\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 0, '{\"legacy\":false,\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,zip,xlsx,docx,avi,mp3,mp4,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS,ZIP,XLSX,DOCX,AVI,MP3,MP4\",\"upload_maxsize\":\"10485760\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 0, '{\"legacy\":false,\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_urls_images_frontend\":\"1\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"right\",\"float_fulltext\":\"right\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"0\",\"num_intro_articles\":\"3\",\"num_columns\":\"1\",\"num_links\":\"0\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 0, '{\"legacy\":false,\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 0, '{\"legacy\":false,\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"0\",\"mail_to_admin\":\"0\",\"captcha\":\"0\",\"change_login_name\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/\",\"version\":\"5.2\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 0, 1, 0, '{\"legacy\":false,\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"style\":\"rounded\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"2.5.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 0, 1, 0, '{\"legacy\":false,\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(422, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"browsercache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(423, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(424, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 12, 0),
(425, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 13, 0),
(426, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 14, 0),
(427, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(429, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"autoregister\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(431, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"detect_browser\":\"0\",\"automatic_change\":\"1\",\"menu_associations\":\"0\",\"remove_default_prefix\":\"1\",\"alternate_meta\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"bluestork\",\"type\":\"template\",\"creationDate\":\"07\\/02\\/09\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"TPL_BLUESTORK_XML_DESCRIPTION\",\"group\":\"\"}', '{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.19\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 0, '{\"legacy\":false,\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2008-03-15\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.19\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"September 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.27\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'JA T3 Framework', 'plugin', 'jat3', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"JA T3 Framework\",\"type\":\"plugin\",\"creationDate\":\"March 2012\",\"author\":\"www.JoomlArt.com\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.joomlart.com\",\"version\":\"2.5.1\",\"description\":\"\\n\\t\\n\\t\\t<h1>T3 Framework - JoomlArt Template Framework for Joomla 2.5<\\/h1>\\n\\t\\t<div style=\'font-weight: normal\'>\\n\\t\\t<p><span style=\'color: #ff6600;\'>\\n\\t\\t<strong>Features:<\\/strong><\\/span>\\n\\t\\tThis plugin is required for JA T3 Framework based templates to work.<\\/p>\\n\\t\\t\\n\\t\\t<strong><span style=\'color: #ff0000;\'>Usage Instruction:<\\/span><\\/strong><br \\/>\\n\\t\\t<ul>\\n\\t\\t<li>Enable the JA T3 plugin in Plugin manager<\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<strong><span style=\'color: #ff0000;\'>Upgrade Method:<\\/span><br \\/><\\/strong>\\n\\t\\t<ul>\\n\\t\\t  <li>You can install new version directly over this version. Uninstallation is not required. <\\/li>\\n\\t\\t  <li>Follow upgrade instructions and backup site \\/ plugin before upgrading<\\/li>\\n\\t\\t  <\\/ul>\\n\\t\\n\\t\\t<span style=\'color: #008000;\'><strong>Links:<\\/strong><\\/span><br \\/>\\n\\t\\t<ul>\\n\\t\\t<li><a target=\\\"_blank\\\" href=\\\"http:\\/\\/wiki.joomlart.com\\/wiki\\/JA_T3_Framework_2\\/Overview\\\">Wiki Userguide<\\/a><\\/li>\\n\\t\\t <li><a target=\'_blank\' href=\'http:\\/\\/update.joomlart.com\\/\'>Updates &amp; Versions<\\/a><\\/li>\\n\\t\\t <li><a target=\'_blank\' href=\'http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?241\'>JA T3 Framework Forum<\\/a><\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<p>Copyright 2004 - 2012 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\\t\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 19, 0),
(10006, 'JA_Social', 'template', 'ja_social', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"JA_Social\",\"type\":\"template\",\"creationDate\":\"March 2012\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.joomlart.com\",\"version\":\"2.5.1\",\"description\":\"\\t\\n\\t<p>JA Social Template for Joomla 2.5.x<\\/p>\\n\\t<p>One of the most popular template for JomSocial component. JA Social is beautiful and with the complimentary extensions included it comes feature loaded. Pleae follow userguide to check detailed configuration for this template and extensions. We try to keep this template updated on regular basis as the 3rd party extensions gets updated on regular basis<\\/p>\\n\\n<p><strong>Resources :<\\/strong><\\/p>\\n<p>| \\n<a href=\'http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/ja-social\' title=\'Home\' target=\'_blank\' > Template Home Page<\\/a> | \\n<a href=\'http:\\/\\/www.joomlart.com\\/demo\\/#joomla25-templates.joomlart.com\\/ja_social\' title=\'Demo\' target=\'_blank\' > Demo<\\/a> | \\n<a href=\'http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?197\' title=\'forum\' target=\'_blank\' >Forum<\\/a> | <\\/p>\\n<p>|\\n<a href=\'http:\\/\\/wiki.joomlart.com\\/wiki\\/JA_T3_Framework_2\\/Overview\' title=\'T3 wiki\' target=\'_blank\' >T3 Framework Wiki<\\/a> | \\n<a href=\'http:\\/\\/update.joomlart.com\' title=\'Updates\' target=\'_blank\' >Updates<\\/a> | \\n<a href=\'http:\\/\\/pm.joomlart.com\\/browse\\/JATCSOCIALJ16\' title=\'Changelog\' target=\'_blank\' >JIRA<\\/a> | \\n<a href=\'http:\\/\\/www.joomlart.com\\/forums\\/downloads.php?do=cat&id=334\' title=\'Downloads\' target=\'_blank\' >Downloads<\\/a> | \\n<\\/p>\\n\\n\\t\\t\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"11.4\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10071, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}', '{\"public_key\":\"6LfjmwwTAAAAAAmoRnrjaBrpjRIfwLV5xaYkK33s\",\"private_key\":\"6LfjmwwTAAAAAInbAHh7tCC3F4EC-rKqlyR7xh25\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10105, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"en-gb\":\"en-GB\",\"vi-vn\":\"vi-VN\"}', '', '', 42, '2014-09-26 01:50:55', 3, 0),
(10106, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10107, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"2.5.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}', '{\"header\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10119, 'Vietnamese-VN', 'language', 'vi-VN', '', 1, 1, 0, 0, '{\"legacy\":true,\"name\":\"Vietnamese-VN\",\"type\":\"language\",\"creationDate\":\"November 2012\",\"author\":\"Vietnamese Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlaviet.info\",\"authorUrl\":\"http:\\/\\/joomlaviet.info\",\"version\":\"2.5.8.1\",\"description\":\"Vietnamese language pack for Joomla! 2.5\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10120, 'Vietnamese-VN', 'language', 'vi-VN', '', 0, 1, 0, 0, '{\"legacy\":true,\"name\":\"Vietnamese-VN\",\"type\":\"language\",\"creationDate\":\"November 2012\",\"author\":\"Vietnamese Translation Team Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlaviet.info\",\"authorUrl\":\"http:\\/\\/joomlaviet.info\",\"version\":\"2.5.8.1\",\"description\":\"Vietnamese language pack for Joomla! 2.5\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10121, 'vi-VN', 'package', 'pkg_vi-VN', '', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"Vietnamese Language Pack\",\"type\":\"package\",\"creationDate\":\"November 2012\",\"author\":\"Vietnamese Translation Team\",\"copyright\":\"\",\"authorEmail\":\"info@joomlaviet.info\",\"authorUrl\":\"http:\\/\\/joomlaviet.info\",\"version\":\"2.5.8.1\",\"description\":\"2.5.8.1 Joomla Vietnamese Language Package\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10122, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"27 March 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"2006-2010 Ryan Demmer\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.3.2.4\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10124, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{\"legacy\":false,\"name\":\"JCE\",\"type\":\"component\",\"creationDate\":\"27 March 2013\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.3.2.4\",\"description\":\"WF_ADMIN_DESC\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10129, 'Tiêu chuẩn', 'plugin', 'standard', 'vmpayment', 0, 1, 1, 0, '{\"legacy\":true,\"name\":\"VMPAYMENT_STANDARD\",\"type\":\"plugin\",\"creationDate\":\"September 03 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"Standard payment plugin\",\"group\":\"\"}', '', '', '', 42, '2020-09-14 06:52:41', 2, 0),
(10132, 'Paypal', 'plugin', 'paypal', 'vmpayment', 0, 0, 1, 0, '{\"legacy\":true,\"name\":\"VMPAYMENT_PAYPAL\",\"type\":\"plugin\",\"creationDate\":\"September 03 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"<a href=\\\"http:\\/\\/paypal.com\\\" target=\\\"_blank\\\">PayPal<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10145, 'By weight, ZIP and countries', 'plugin', 'weight_countries', 'vmshipment', 0, 1, 1, 0, '{\"legacy\":true,\"name\":\"VMSHIPMENT_WEIGHT_COUNTRIES\",\"type\":\"plugin\",\"creationDate\":\"September 03 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"VMSHIPMENT_WEIGHT_COUNTRIES_PLUGIN_DESC\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10146, 'Customer text input', 'plugin', 'textinput', 'vmcustom', 0, 0, 1, 0, '{\"legacy\":true,\"name\":\"VMCustom - textinput\",\"type\":\"plugin\",\"creationDate\":\"September 03 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"text input plugin for product\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10147, 'Product specification', 'plugin', 'specification', 'vmcustom', 0, 0, 1, 0, '{\"legacy\":true,\"name\":\"VMCustom - specification\",\"type\":\"plugin\",\"creationDate\":\"January 09 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.18a\",\"description\":\"text input plugin for product\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10148, 'Stockable variants', 'plugin', 'stockable', 'vmcustom', 0, 0, 1, 0, '{\"legacy\":true,\"name\":\"VMCUSTOM_STOCKABLE\",\"type\":\"plugin\",\"creationDate\":\"September 03 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"VMCUSTOM_STOCKABLE_DESC\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10149, 'Avalara Tax', 'plugin', 'avalara', 'vmcalculation', 0, 0, 1, 0, '{\"legacy\":true,\"name\":\"VM - Calculation Avalara Tax\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Max Milbers\",\"copyright\":\"Copyright (C) 2013 iStraxx UG (haftungsbeschr\\u00e4nkt). All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/virtuemart.net\",\"version\":\"2.0.18b\",\"description\":\"On demand tax calculation for whole U.S.A.\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10150, 'Virtuemart Product', 'plugin', 'virtuemart', 'search', 0, 0, 1, 0, '{\"legacy\":false,\"name\":\"plg_search_virtuemart\",\"type\":\"plugin\",\"creationDate\":\"January 09 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.18a\",\"description\":\"Allows Searching of VirtueMart Component\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10151, 'mod_virtuemart_currencies', 'module', 'mod_virtuemart_currencies', '', 0, 0, 1, 0, '{\"legacy\":true,\"name\":\"mod_virtuemart_currencies\",\"type\":\"module\",\"creationDate\":\"September 03 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"${PHING.VM.COPYRIGH}\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"MOD_VIRTUEMART_CURRENCIES_DESC\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10152, 'mod_virtuemart_product', 'module', 'mod_virtuemart_product', '', 0, 1, 1, 0, '{\"legacy\":true,\"name\":\"mod_virtuemart_product\",\"type\":\"module\",\"creationDate\":\"September 03 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"${PHING.VM.COPYRIGH}\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"MOD_VIRTUEMART_PRODUCT_DESC\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10153, 'mod_virtuemart_search', 'module', 'mod_virtuemart_search', '', 0, 1, 1, 0, '{\"legacy\":true,\"name\":\"mod_virtuemart_search\",\"type\":\"module\",\"creationDate\":\"January 09 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.18a\",\"description\":\"MOD_VIRTUEMART_SEARCH_DESC\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10154, 'mod_virtuemart_manufacturer', 'module', 'mod_virtuemart_manufacturer', '', 0, 0, 1, 0, '{\"legacy\":true,\"name\":\"mod_virtuemart_manufacturer\",\"type\":\"module\",\"creationDate\":\"September 03 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"${PHING.VM.COPYRIGH}\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"MOD_VIRTUEMART_MANUFACTURER_DESC\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10156, 'mod_virtuemart_category', 'module', 'mod_virtuemart_category', '', 0, 1, 1, 0, '{\"legacy\":true,\"name\":\"mod_virtuemart_category\",\"type\":\"module\",\"creationDate\":\"September 03 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"${PHING.VM.COPYRIGH}\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"MOD_VIRTUEMART_CATEGORY_DESC\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0);
INSERT INTO `z0djb_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10158, 'com_k2', 'component', 'com_k2', '', 1, 1, 0, 0, '{\"legacy\":false,\"name\":\"COM_K2\",\"type\":\"component\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla!\",\"group\":\"\"}', '{\"enable_css\":\"1\",\"jQueryHandling\":\"1.8.3\",\"backendJQueryHandling\":\"local\",\"userName\":\"1\",\"userImage\":\"0\",\"userDescription\":\"1\",\"userURL\":\"1\",\"userEmail\":\"0\",\"userFeedLink\":\"0\",\"userFeedIcon\":\"0\",\"userItemCount\":\"10\",\"userItemTitle\":\"1\",\"userItemTitleLinked\":\"0\",\"userItemDateCreated\":\"0\",\"userItemImage\":\"0\",\"userItemIntroText\":\"0\",\"userItemCategory\":\"0\",\"userItemTags\":\"1\",\"userItemCommentsAnchor\":\"0\",\"userItemReadMore\":\"0\",\"userItemK2Plugins\":\"0\",\"tagItemCount\":\"10\",\"tagItemTitle\":\"1\",\"tagItemTitleLinked\":\"1\",\"tagItemDateCreated\":\"1\",\"tagItemImage\":\"1\",\"tagItemIntroText\":\"1\",\"tagItemCategory\":\"1\",\"tagItemReadMore\":\"1\",\"tagItemExtraFields\":\"0\",\"tagOrdering\":\"\",\"tagFeedLink\":\"0\",\"tagFeedIcon\":\"0\",\"genericItemCount\":\"10\",\"genericItemTitle\":\"1\",\"genericItemTitleLinked\":\"1\",\"genericItemDateCreated\":\"0\",\"genericItemImage\":\"1\",\"genericItemIntroText\":\"1\",\"genericItemCategory\":\"0\",\"genericItemReadMore\":\"1\",\"genericItemExtraFields\":\"1\",\"genericFeedLink\":\"0\",\"genericFeedIcon\":\"0\",\"feedLimit\":\"10\",\"feedItemImage\":\"1\",\"feedImgSize\":\"S\",\"feedItemIntroText\":\"1\",\"feedTextWordLimit\":\"\",\"feedItemFullText\":\"1\",\"feedItemTags\":\"0\",\"feedItemVideo\":\"0\",\"feedItemGallery\":\"0\",\"feedItemAttachments\":\"0\",\"feedBogusEmail\":\"\",\"introTextCleanup\":\"0\",\"introTextCleanupExcludeTags\":\"\",\"introTextCleanupTagAttr\":\"\",\"fullTextCleanup\":\"0\",\"fullTextCleanupExcludeTags\":\"\",\"fullTextCleanupTagAttr\":\"\",\"xssFiltering\":\"0\",\"linkPopupWidth\":\"900\",\"linkPopupHeight\":\"600\",\"imagesQuality\":\"80\",\"itemImageXS\":\"260\",\"itemImageS\":\"260\",\"itemImageM\":\"400\",\"itemImageL\":\"600\",\"itemImageXL\":\"150\",\"itemImageGeneric\":\"300\",\"catImageWidth\":\"300\",\"catImageDefault\":\"1\",\"userImageWidth\":\"100\",\"userImageDefault\":\"1\",\"commenterImgWidth\":\"48\",\"onlineImageEditor\":\"splashup\",\"imageTimestamp\":\"0\",\"imageMemoryLimit\":\"\",\"socialButtonCode\":\"\",\"twitterUsername\":\"\",\"facebookImage\":\"Medium\",\"comments\":\"1\",\"commentsOrdering\":\"DESC\",\"commentsLimit\":\"10\",\"commentsFormPosition\":\"below\",\"commentsPublishing\":\"0\",\"commentsReporting\":\"2\",\"commentsReportRecipient\":\"\",\"inlineCommentsModeration\":\"0\",\"gravatar\":\"0\",\"antispam\":\"0\",\"recaptchaForRegistered\":\"0\",\"akismetForRegistered\":\"0\",\"commentsFormNotes\":\"0\",\"commentsFormNotesText\":\"\",\"frontendEditing\":\"1\",\"showImageTab\":\"1\",\"showImageGalleryTab\":\"1\",\"showVideoTab\":\"1\",\"showExtraFieldsTab\":\"1\",\"showAttachmentsTab\":\"1\",\"showK2Plugins\":\"1\",\"sideBarDisplayFrontend\":\"0\",\"mergeEditors\":\"1\",\"sideBarDisplay\":\"1\",\"attachmentsFolder\":\"\",\"hideImportButton\":\"0\",\"googleSearch\":\"0\",\"googleSearchContainer\":\"k2GoogleSearchContainer\",\"K2UserProfile\":\"0\",\"K2UserGroup\":\"1\",\"redirect\":\"991\",\"adminSearch\":\"simple\",\"cookieDomain\":\"\",\"taggingSystem\":\"1\",\"lockTags\":\"0\",\"showTagFilter\":\"0\",\"k2TagNorm\":\"0\",\"k2TagNormCase\":\"lower\",\"k2TagNormAdditionalReplacements\":\"\",\"recaptcha_public_key\":\"\",\"recaptcha_private_key\":\"\",\"recaptcha_theme\":\"clean\",\"recaptchaOnRegistration\":\"0\",\"akismetApiKey\":\"\",\"stopForumSpam\":\"0\",\"stopForumSpamApiKey\":\"\",\"showItemsCounterAdmin\":\"1\",\"showChildCatItems\":\"1\",\"disableCompactOrdering\":\"0\",\"metaDescLimit\":\"200\",\"enforceSEFReplacements\":\"0\",\"SEFReplacements\":\"\\u00c0|A, \\u00c1|A, \\u00c2|A, \\u00c3|A, \\u00c4|A, \\u00c5|A, \\u00e0|a, \\u00e1|a, \\u00e2|a, \\u00e3|a, \\u00e4|a, \\u00e5|a, \\u0100|A, \\u0101|a, \\u0102|A, \\u0103|a, \\u0104|A, \\u0105|a, \\u00c7|C, \\u00e7|c, \\u0106|C, \\u0107|c, \\u0108|C, \\u0109|c, \\u010a|C, \\u010b|c, \\u010c|C, \\u010d|c, \\u00d0|D, \\u00f0|d, \\u010e|D, \\u010f|d, \\u0110|D, \\u0111|d, \\u00c8|E, \\u00c9|E, \\u00ca|E, \\u00cb|E, \\u00e8|e, \\u00e9|e, \\u00ea|e, \\u00eb|e, \\u0112|E, \\u0113|e, \\u0114|E, \\u0115|e, \\u0116|E, \\u0117|e, \\u0118|E, \\u0119|e, \\u011a|E, \\u011b|e, \\u011c|G, \\u011d|g, \\u011e|G, \\u011f|g, \\u0120|G, \\u0121|g, \\u0122|G, \\u0123|g, \\u0124|H, \\u0125|h, \\u0126|H, \\u0127|h, \\u00cc|I, \\u00cd|I, \\u00ce|I, \\u00cf|I, \\u00ec|i, \\u00ed|i, \\u00ee|i, \\u00ef|i, \\u0128|I, \\u0129|i, \\u012a|I, \\u012b|i, \\u012c|I, \\u012d|i, \\u012e|I, \\u012f|i, \\u0130|I, \\u0131|i, \\u0134|J, \\u0135|j, \\u0136|K, \\u0137|k, \\u0138|k, \\u0139|L, \\u013a|l, \\u013b|L, \\u013c|l, \\u013d|L, \\u013e|l, \\u013f|L, \\u0140|l, \\u0141|L, \\u0142|l, \\u00d1|N, \\u00f1|n, \\u0143|N, \\u0144|n, \\u0145|N, \\u0146|n, \\u0147|N, \\u0148|n, \\u0149|n, \\u014a|N, \\u014b|n, \\u00d2|O, \\u00d3|O, \\u00d4|O, \\u00d5|O, \\u00d6|O, \\u00d8|O, \\u00f2|o, \\u00f3|o, \\u00f4|o, \\u00f5|o, \\u00f6|o, \\u00f8|o, \\u014c|O, \\u014d|o, \\u014e|O, \\u014f|o, \\u0150|O, \\u0151|o, \\u0154|R, \\u0155|r, \\u0156|R, \\u0157|r, \\u0158|R, \\u0159|r, \\u015a|S, \\u015b|s, \\u015c|S, \\u015d|s, \\u015e|S, \\u015f|s, \\u0160|S, \\u0161|s, \\u017f|s, \\u0162|T, \\u0163|t, \\u0164|T, \\u0165|t, \\u0166|T, \\u0167|t, \\u00d9|U, \\u00da|U, \\u00db|U, \\u00dc|U, \\u00f9|u, \\u00fa|u, \\u00fb|u, \\u00fc|u, \\u0168|U, \\u0169|u, \\u016a|U, \\u016b|u, \\u016c|U, \\u016d|u, \\u016e|U, \\u016f|u, \\u0170|U, \\u0171|u, \\u0172|U, \\u0173|u, \\u0174|W, \\u0175|w, \\u00dd|Y, \\u00fd|y, \\u00ff|y, \\u0176|Y, \\u0177|y, \\u0178|Y, \\u0179|Z, \\u017a|z, \\u017b|Z, \\u017c|z, \\u017d|Z, \\u017e|z, \\u03b1|a, \\u03b2|b, \\u03b3|g, \\u03b4|d, \\u03b5|e, \\u03b6|z, \\u03b7|h, \\u03b8|th, \\u03b9|i, \\u03ba|k, \\u03bb|l, \\u03bc|m, \\u03bd|n, \\u03be|x, \\u03bf|o, \\u03c0|p, \\u03c1|r, \\u03c3|s, \\u03c4|t, \\u03c5|y, \\u03c6|f, \\u03c7|ch, \\u03c8|ps, \\u03c9|w, \\u0391|A, \\u0392|B, \\u0393|G, \\u0394|D, \\u0395|E, \\u0396|Z, \\u0397|H, \\u0398|Th, \\u0399|I, \\u039a|K, \\u039b|L, \\u039c|M, \\u039e|X, \\u039f|O, \\u03a0|P, \\u03a1|R, \\u03a3|S, \\u03a4|T, \\u03a5|Y, \\u03a6|F, \\u03a7|Ch, \\u03a8|Ps, \\u03a9|W, \\u03ac|a, \\u03ad|e, \\u03ae|h, \\u03af|i, \\u03cc|o, \\u03cd|y, \\u03ce|w, \\u0386|A, \\u0388|E, \\u0389|H, \\u038a|I, \\u038c|O, \\u038e|Y, \\u038f|W, \\u03ca|i, \\u0390|i, \\u03cb|y, \\u03c2|s, \\u0410|A, \\u04d0|A, \\u04d2|A, \\u04d8|E, \\u04da|E, \\u04d4|E, \\u0411|B, \\u0412|V, \\u0413|G, \\u0490|G, \\u0403|G, \\u0492|G, \\u04f6|G, y|Y, \\u0414|D, \\u0415|E, \\u0400|E, \\u0401|YO, \\u04d6|E, \\u04bc|E, \\u04be|E, \\u0404|YE, \\u0416|ZH, \\u04c1|DZH, \\u0496|ZH, \\u04dc|DZH, \\u0417|Z, \\u0498|Z, \\u04de|DZ, \\u04e0|DZ, \\u0405|DZ, \\u0418|I, \\u040d|I, \\u04e4|I, \\u04e2|I, \\u0406|I, \\u0407|JI, \\u04c0|I, \\u0419|Y, \\u048a|Y, \\u0408|J, \\u041a|K, \\u049a|Q, \\u049e|Q, \\u04a0|K, \\u04c3|Q, \\u049c|K, \\u041b|L, \\u04c5|L, \\u0409|L, \\u041c|M, \\u04cd|M, \\u041d|N, \\u04c9|N, \\u04a2|N, \\u04c7|N, \\u04a4|N, \\u040a|N, \\u041e|O, \\u04e6|O, \\u04e8|O, \\u04ea|O, \\u04a8|O, \\u041f|P, \\u04a6|PF, \\u0420|P, \\u048e|P, \\u0421|S, \\u04aa|S, \\u0422|T, \\u04ac|TH, \\u040b|T, \\u040c|K, \\u0423|U, \\u040e|U, \\u04f2|U, \\u04f0|U, \\u04ee|U, \\u04ae|U, \\u04b0|U, \\u0424|F, \\u0425|H, \\u04b2|H, \\u04ba|H, \\u0426|TS, \\u04b4|TS, \\u0427|CH, \\u04f4|CH, \\u04b6|CH, \\u04cb|CH, \\u04b8|CH, \\u040f|DZ, \\u0428|SH, \\u0429|SHT, \\u042a|A, \\u042b|Y, \\u04f8|Y, \\u042c|Y, \\u048c|Y, \\u042d|E, \\u04ec|E, \\u042e|YU, \\u042f|YA, \\u0430|a, \\u04d1|a, \\u04d3|a, \\u04d9|e, \\u04db|e, \\u04d5|e, \\u0431|b, \\u0432|v, \\u0433|g, \\u0491|g, \\u0453|g, \\u0493|g, \\u04f7|g, y|y, \\u0434|d, \\u0435|e, \\u0450|e, \\u0451|yo, \\u04d7|e, \\u04bd|e, \\u04bf|e, \\u0454|ye, \\u0436|zh, \\u04c2|dzh, \\u0497|zh, \\u04dd|dzh, \\u0437|z, \\u0499|z, \\u04df|dz, \\u04e1|dz, \\u0455|dz, \\u0438|i, \\u045d|i, \\u04e5|i, \\u04e3|i, \\u0456|i, \\u0457|ji, \\u04c0|i, \\u0439|y, \\u048b|y, \\u0458|j, \\u043a|k, \\u049b|q, \\u049f|q, \\u04a1|k, \\u04c4|q, \\u049d|k, \\u043b|l, \\u04c6|l, \\u0459|l, \\u043c|m, \\u04ce|m, \\u043d|n, \\u04ca|n, \\u04a3|n, \\u04c8|n, \\u04a5|n, \\u045a|n, \\u043e|o, \\u04e7|o, \\u04e9|o, \\u04eb|o, \\u04a9|o, \\u043f|p, \\u04a7|pf, \\u0440|p, \\u048f|p, \\u0441|s, \\u04ab|s, \\u0442|t, \\u04ad|th, \\u045b|t, \\u045c|k, \\u0443|u, \\u045e|u, \\u04f3|u, \\u04f1|u, \\u04ef|u, \\u04af|u, \\u04b1|u, \\u0444|f, \\u0445|h, \\u04b3|h, \\u04bb|h, \\u0446|ts, \\u04b5|ts, \\u0447|ch, \\u04f5|ch, \\u04b7|ch, \\u04cc|ch, \\u04b9|ch, \\u045f|dz, \\u0448|sh, \\u0449|sht, \\u044a|a, \\u044b|y, \\u04f9|y, \\u044c|y, \\u048d|y, \\u044d|e, \\u04ed|e, \\u044e|yu, \\u044f|ya\",\"k2Sef\":\"1\",\"k2SefLabelCat\":\"content\",\"k2SefLabelTag\":\"tag\",\"k2SefLabelUser\":\"author\",\"k2SefLabelSearch\":\"search\",\"k2SefLabelDate\":\"date\",\"k2SefLabelItem\":\"0\",\"k2SefLabelItemCustomPrefix\":\"\",\"k2SefInsertItemId\":\"0\",\"k2SefItemIdTitleAliasSep\":\"dash\",\"k2SefUseItemTitleAlias\":\"1\",\"k2SefInsertCatId\":\"0\",\"k2SefCatIdTitleAliasSep\":\"dash\",\"k2SefUseCatTitleAlias\":\"1\",\"sh404SefLabelCat\":\"\",\"sh404SefLabelUser\":\"blog\",\"sh404SefLabelItem\":\"2\",\"sh404SefTitleAlias\":\"alias\",\"sh404SefModK2ContentFeedAlias\":\"feed\",\"sh404SefInsertItemId\":\"0\",\"sh404SefInsertUniqueItemId\":\"0\",\"cbIntegration\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10161, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"System - K2\",\"type\":\"plugin\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED\",\"group\":\"\"}', '{}', '', '', 42, '2013-11-01 22:46:45', 4, 0),
(10162, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"User - K2\",\"type\":\"plugin\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2\",\"group\":\"\"}', '{}', '', '', 42, '2013-11-01 22:46:49', 0, 0),
(10165, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 0, 0, 0, '{\"legacy\":false,\"name\":\"K2 Comments\",\"type\":\"module\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"MOD_K2_COMMENTS_DESCRIPTION\",\"group\":\"\"}', '{\"moduleclass_sfx\":\"\",\"module_usage\":\"\",\"\":\"K2_TOP_COMMENTERS\",\"catfilter\":\"0\",\"category_id\":\"\",\"comments_limit\":\"5\",\"comments_word_limit\":\"10\",\"commenterName\":\"1\",\"commentAvatar\":\"1\",\"commentAvatarWidthSelect\":\"custom\",\"commentAvatarWidth\":\"50\",\"commentDate\":\"1\",\"commentDateFormat\":\"absolute\",\"commentLink\":\"1\",\"itemTitle\":\"1\",\"itemCategory\":\"1\",\"feed\":\"1\",\"commenters_limit\":\"5\",\"commenterNameOrUsername\":\"1\",\"commenterAvatar\":\"1\",\"commenterAvatarWidthSelect\":\"custom\",\"commenterAvatarWidth\":\"50\",\"commenterLink\":\"1\",\"commenterCommentsCounter\":\"1\",\"commenterLatestComment\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10166, 'Bài viết', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"Bài viết\",\"type\":\"module\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"K2_MOD_K2_CONTENT_DESCRIPTION\",\"group\":\"\"}', '{\"moduleclass_sfx\":\"\",\"getTemplate\":\"Default\",\"source\":\"filter\",\"\":\"K2_OTHER_OPTIONS\",\"catfilter\":\"0\",\"category_id\":\"\",\"getChildren\":\"0\",\"itemCount\":\"5\",\"itemsOrdering\":\"\",\"FeaturedItems\":\"1\",\"popularityRange\":\"\",\"videosOnly\":\"0\",\"item\":\"\",\"items\":\"\",\"itemTitle\":\"1\",\"itemAuthor\":\"1\",\"itemAuthorAvatar\":\"1\",\"itemAuthorAvatarWidthSelect\":\"custom\",\"itemAuthorAvatarWidth\":\"50\",\"userDescription\":\"1\",\"itemIntroText\":\"1\",\"itemIntroTextWordLimit\":\"\",\"itemImage\":\"1\",\"itemImgSize\":\"Small\",\"itemVideo\":\"1\",\"itemVideoCaption\":\"1\",\"itemVideoCredits\":\"1\",\"itemAttachments\":\"1\",\"itemTags\":\"1\",\"itemCategory\":\"1\",\"itemDateCreated\":\"1\",\"itemHits\":\"1\",\"itemReadMore\":\"1\",\"itemExtraFields\":\"0\",\"itemCommentsCounter\":\"1\",\"feed\":\"1\",\"itemPreText\":\"\",\"itemCustomLink\":\"0\",\"itemCustomLinkTitle\":\"\",\"itemCustomLinkURL\":\"http:\\/\\/\",\"itemCustomLinkMenuItem\":\"\",\"K2Plugins\":\"1\",\"JPlugins\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10167, 'Công cụ bài viết', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"K2 Tools\",\"type\":\"module\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"K2_TOOLS\",\"group\":\"\"}', '{\"moduleclass_sfx\":\"\",\"module_usage\":\"0\",\"\":\"K2_CUSTOM_CODE_SETTINGS\",\"archiveItemsCounter\":\"1\",\"archiveCategory\":\"\",\"authors_module_category\":\"\",\"authorItemsCounter\":\"1\",\"authorAvatar\":\"1\",\"authorAvatarWidthSelect\":\"custom\",\"authorAvatarWidth\":\"50\",\"authorLatestItem\":\"1\",\"calendarCategory\":\"\",\"home\":\"\",\"seperator\":\"\",\"root_id\":\"\",\"end_level\":\"\",\"categoriesListOrdering\":\"\",\"categoriesListItemsCounter\":\"1\",\"root_id2\":\"\",\"catfilter\":\"0\",\"category_id\":\"\",\"getChildren\":\"0\",\"liveSearch\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"\",\"imagebutton\":\"\",\"button_text\":\"\",\"min_size\":\"75\",\"max_size\":\"300\",\"cloud_limit\":\"30\",\"cloud_category\":\"0\",\"cloud_category_recursive\":\"0\",\"customCode\":\"\",\"parsePhp\":\"0\",\"K2Plugins\":\"0\",\"JPlugins\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10168, 'K2 Users', 'module', 'mod_k2_users', '', 0, 0, 0, 0, '{\"legacy\":false,\"name\":\"K2 Users\",\"type\":\"module\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"K2_MOD_K2_USERS_DESCRTIPTION\",\"group\":\"\"}', '{\"moduleclass_sfx\":\"\",\"getTemplate\":\"Default\",\"source\":\"0\",\"\":\"K2_DISPLAY_OPTIONS\",\"filter\":\"1\",\"K2UserGroup\":\"\",\"ordering\":\"1\",\"limit\":\"4\",\"userIDs\":\"\",\"userName\":\"1\",\"userAvatar\":\"1\",\"userAvatarWidthSelect\":\"custom\",\"userAvatarWidth\":\"50\",\"userDescription\":\"1\",\"userDescriptionWordLimit\":\"\",\"userURL\":\"1\",\"userEmail\":\"0\",\"userFeed\":\"1\",\"userItemCount\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10169, 'K2 User', 'module', 'mod_k2_user', '', 0, 0, 0, 0, '{\"legacy\":false,\"name\":\"K2 User\",\"type\":\"module\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"K2_MOD_K2_USER_DESCRIPTION\",\"group\":\"\"}', '{\"moduleclass_sfx\":\"\",\"pretext\":\"\",\"\":\"K2_LOGIN_LOGOUT_REDIRECTION\",\"name\":\"1\",\"userAvatar\":\"1\",\"userAvatarWidthSelect\":\"custom\",\"userAvatarWidth\":\"50\",\"menu\":\"\",\"login\":\"\",\"logout\":\"\",\"usesecure\":\"0\",\"cache\":\"0\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10170, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 0, 2, 0, '{\"legacy\":false,\"name\":\"K2 Quick Icons (admin)\",\"type\":\"module\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE\",\"group\":\"\"}', '{\"modCSSStyling\":\"1\",\"modLogo\":\"1\",\"cache\":\"0\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10171, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 0, 2, 0, '{\"legacy\":false,\"name\":\"K2 Stats (admin)\",\"type\":\"module\",\"creationDate\":\"December 8th, 2014\",\"author\":\"JoomlaWorks\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE\",\"group\":\"\"}', '{\"latestItems\":\"1\",\"popularItems\":\"1\",\"mostCommentedItems\":\"1\",\"latestComments\":\"1\",\"statistics\":\"1\",\"cache\":\"0\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10177, 'MultiTrans', 'module', 'mod_multitrans17v73', '', 0, 0, 0, 0, '{\"legacy\":false,\"name\":\"MultiTrans\",\"type\":\"module\",\"creationDate\":\"September 2012\",\"author\":\"Bob Galway\",\"copyright\":\"Copyright Bob Galway. All rights reserved.\",\"authorEmail\":\"reply@blackdale.com\",\"authorUrl\":\"www.blackdale.com\",\"version\":\"7.3\",\"description\":\"MULTITRANS17V73\",\"group\":\"\"}', '{\"server1\":\"1\",\"west\":\"1\",\"east\":\"1\",\"asia\":\"1\",\"other\":\"1\",\"indiv\":\"\",\"langg1\":\"en\",\"margin-leftmodule\":\"\",\"paddingleft\":\"\",\"paddingright\":\"\",\"paddingtop\":\"\",\"paddingbottom\":\"\",\"margin-top\":\"\",\"margin-bottom\":\"\",\"width\":\"100\",\"widthunit\":\"%\",\"colour2\":\"\",\"customtags\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10225, 'Continuous rss scrolling', 'module', 'mod_continuous_rss_scrolling', '', 0, 0, 0, 0, '{\"legacy\":false,\"name\":\"Continuous rss scrolling\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Gopi.R\",\"copyright\":\"(C) 2010 - 2012 www.gopiplus.com, LLC. All rights reserved.\",\"authorEmail\":\"gopiplus@gmail.com\",\"authorUrl\":\"http:\\/\\/www.gopiplus.com\\/extensions\\/2011\\/06\\/continuous-rss-scrolling-joomla-module\\/\",\"version\":\"3.0\",\"description\":\"Continuous rss scrolling. scroll your rss feed using this simple plugin.\",\"group\":\"\"}', '{\"crs_record_height\":\"40\",\"crs_display_count\":\"5\",\"crs_display_width\":\"200\",\"crs_rss_url\":\"http:\\/\\/www.gopiplus.com\\/extensions\\/feed\",\"crs_cache\":\"false\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10187, 'virtuemart', 'component', 'com_virtuemart', '', 1, 1, 0, 0, '{\"legacy\":true,\"name\":\"VIRTUEMART\",\"type\":\"component\",\"creationDate\":\"September 02 2013\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2012 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"max|at|virtuemart.net\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"2.0.22c\",\"description\":\"\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10240, 'System - jQuery Easy', 'plugin', 'jqueryeasy', 'system', 0, 1, 1, 0, '{\"legacy\":false,\"name\":\"System - jQuery Easy\",\"type\":\"plugin\",\"creationDate\":\"2012-03-11\",\"author\":\"Olivier Buisard\",\"copyright\":\"Copyright (C) 2011 Simplify Your Web. All rights reserved.\",\"authorEmail\":\"olivier.buisard@simplifyyourweb.com\",\"authorUrl\":\"www.simplifyyourweb.com\",\"version\":\"1.6.0\",\"description\":\"PLG_SYSTEM_JQUERYEASY_XML_DESCRIPTION\",\"group\":\"\"}', '{\"jqueryinfrontend\":\"1\",\"jqueryversionfrontend\":\"local\",\"jquerysubversionfrontend\":\"\",\"localversionfrontend\":\"\\/jquery.min.js\",\"migrateversionfrontend\":\"none\",\"localpathmigratefrontend\":\"\",\"jqueryuiversionfrontend\":\"1.9\",\"jqueryuisubversionfrontend\":\"\",\"localuiversionfrontend\":\"\",\"jqueryuithemefrontend\":\"base\",\"jqueryuithemecustomfrontend\":\"\",\"whichhttpfrontend\":\"https\",\"compressionfrontend\":\"compressed\",\"templateid\":[\"none\"],\"enableonlyinfrontend\":\"\",\"disableinfrontend\":\"\",\"replacewhenuniquefrontend\":\"1\",\"addwhenmissingfrontend\":\"1\",\"ignorescriptsfrontend\":\"\",\"removenoconflictfrontend\":\"1\",\"addnoconflictfrontend\":\"2\",\"replacedocumentreadyfrontend\":\"0\",\"disablemootools\":\"0\",\"keepmootoolsin\":\"\",\"disablecaptions\":\"0\",\"stripremainingscriptsfrontend\":\"\",\"stripremainingcssfrontend\":\"\",\"addjavascriptfrontend\":\"\",\"addjavascriptdeclarationfrontend\":\"\",\"addcssfrontend\":\"\",\"addcssdeclarationfrontend\":\"\",\"removeblanklinesfrontend\":\"0\",\"jqueryinbackend\":\"0\",\"jqueryversionbackend\":\"1.8\",\"jquerysubversionbackend\":\"\",\"localversionbackend\":\"\",\"migrateversionbackend\":\"none\",\"localpathmigratebackend\":\"\",\"jqueryuiversionbackend\":\"1.9\",\"jqueryuisubversionbackend\":\"\",\"localuiversionbackend\":\"\",\"jqueryuithemebackend\":\"base\",\"jqueryuithemecustombackend\":\"\",\"whichhttpbackend\":\"https\",\"compressionbackend\":\"compressed\",\"enableonlyinbackend\":\"\",\"disableinbackend\":\"\",\"replacewhenuniquebackend\":\"1\",\"addwhenmissingbackend\":\"1\",\"ignorescriptsbackend\":\"\",\"removenoconflictbackend\":\"1\",\"addnoconflictbackend\":\"2\",\"replacedocumentreadybackend\":\"0\",\"stripremainingscriptsbackend\":\"\",\"stripremainingcssbackend\":\"\",\"addjavascriptbackend\":\"\",\"addjavascriptdeclarationbackend\":\"\",\"addcssbackend\":\"\",\"addcssdeclarationbackend\":\"\",\"removeblanklinesbackend\":\"0\",\"back_compat_paths\":\"1\",\"showreport\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10205, 'System - Virtuemart Multiupload', 'plugin', 'virtuemart_multiupload', 'system', 0, 0, 1, 0, '{\"legacy\":true,\"name\":\"System - Virtuemart Multiupload\",\"type\":\"plugin\",\"creationDate\":\"Juni 2010\",\"author\":\"Markus Harmsen\",\"copyright\":\"Copyright (C) 2010\",\"authorEmail\":\"markus.harmsen@rwth-aachen.de\",\"authorUrl\":\"http:\\/\\/marjust.hopto.org\",\"version\":\"1.2\",\"description\":\"\\n    \\n        <h3>Upload multible images to one virtuemart product at once<\\/h3>\\n        <p>This plugin has been tested with Firefox 3.6, Internet Explorer 8 and <strong>Flash Player 10.1<\\/strong><\\/p>\\n        <br \\/>\\n        <p>If uploading fails try to install the latest Flash Player. If the error still exists, you may have to use a patch due the <a href=\\\"http:\\/\\/www.swfupload.org\\/forum\\/generaldiscussion\\/383\\\">Flash cookie bug<\\/a>.<\\/p>\\n        <p>Insert the following code into <strong>libraries\\/joomla\\/session\\/session.php<\\/strong> in function <strong>_start<\\/strong>(line 415) before the line <strong>session_start();<\\/strong><\\/p>\\n        <pre>\\n            \\/* Flash cookie fix *\\/\\n            $sn = session_name();\\n            if(isset($_COOKIE[$sn]) && isset($_POST[$sn])) {\\n              $_COOKIE[$sn] = $_POST[$sn];\\n              session_id($_POST[$sn]);\\n            }\\n            \\/* \\/Flash cookie fix *\\/\\n        <\\/pre>\\n        <p>Please enable this plugin, otherwise it won\'t work!<\\/p>\\n        <p>Navigate to <i>Extensions-&gt;Plugin Manager-&gt;System - Virtuemart Multiupload<\\/i> and enable it.<\\/p>\\n    \\n    \",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10209, 'TCPDF', 'library', 'tcpdf', '', 0, 1, 1, 0, '{\"legacy\":true,\"name\":\"TCPDF\",\"type\":\"library\",\"creationDate\":\"28 January 2011\",\"author\":\"Nicola Asuni\",\"copyright\":\"http:\\/\\/www.tcpdf.org\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.tcpdf.org\",\"version\":\"2.5.0\",\"description\":\"Class for generating PDF files on-the-fly without requiring external extensions.\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10210, 'rsform', 'component', 'com_rsform', '', 1, 1, 0, 0, '{\"legacy\":true,\"name\":\"RSForm\",\"type\":\"component\",\"creationDate\":\"July 2012\",\"author\":\"Minh Thuận\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0 R44\",\"description\":\"With RSForm!Pro you can quickly add forms to your Joomla! website.\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10208, 'Form liên hệ', 'module', 'mod_rsform', '', 0, 1, 0, 0, '{\"legacy\":true,\"name\":\"Form liên hệ\",\"type\":\"module\",\"creationDate\":\"July 2010\",\"author\":\"Minh Thuận\",\"copyright\":\"(C) 2007-2010 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.3.0\",\"description\":\"\",\"group\":\"\"}', '{\"formId\":\"1\",\"moduleclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10211, 'Giỏ hàng', 'module', 'mod_virtuemart_quickcart', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"Giỏ hàng nhanh\",\"type\":\"module\",\"creationDate\":\"30 May 2012\",\"author\":\"Codextension\",\"copyright\":\"Copyright (c) 2004 - 2011 Codextension.Com. All rights reserved.\",\"authorEmail\":\"contact@codextension.com\",\"authorUrl\":\"http:\\/\\/codextension.com\",\"version\":\"2.0.0\",\"description\":\"\\n\\t\\n\\t<style>\\n\\t\\t.jl_description h3{\\n\\t\\t\\ttext-transform: uppercase;\\tmargin: 20px 0px 10px 0px;\\n\\t\\t}\\n\\t\\t.jl_description img{\\n\\t\\t\\tfloat:left;\\t\\n\\t\\t\\tmargin:5px 10px 5px 0px;\\n\\t\\t}\\n\\t\\t.jl_description p{\\n\\t\\t\\tpadding:25px 2px;\\n\\t\\t}\\n\\t\\t.jl_description li{\\n\\t\\t\\tpadding:2px;\\n\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\tclear:both;\\n\\t\\t}\\n\\t\\t.jl_description ul.list-style li{\\n\\t\\t\\tbackground:url(..\\/modules\\/mod_virtuemart_quickcart\\/assets\\/images\\/tick.png) 0px 6px no-repeat;\\tpadding-left:30px;\\tline-height:15px;\\n\\t\\t}\\n\\t<\\/style>\\n\\t<div class=\\\"jl_description\\\">\\n\\t\\t<h3>Virtuemart Quickcart Version 2.0.0<\\/h3>\\n\\t\\t<img src=\\\"..\\/modules\\/mod_virtuemart_quickcart\\/assets\\/virtuemart_quick_cart.png\\\"\\/>\\n\\t\\t<p>\\n\\t\\t\\tThe Virtuemart Quick Cart Module is as best choice and\\n\\t\\t\\tthe most eye-catching way to display featured added product to cart and show product in cart quickly.\\n\\t\\t<\\/p>\\n\\t\\t<br clear=\\\"both\\\" \\/>\\n\\t\\t<h3>Features<\\/h3>\\n\\t\\t<ul class=\\\"list-style\\\">\\n\\t\\t\\t<li>Support browsers (IE6+, FireFox, Chrome, Opera, Safari, ...)<\\/li> \\n\\t\\t\\t<li>Compatible with all the 3rd party templates (All framework most popular : T3, Grantry, Yoo...)<\\/li> \\n\\t\\t\\t<li>Show \\/ Hide title<\\/li> \\n\\t\\t\\t<li>Show \\/ Hide description.<\\/li> \\n\\t\\t\\t<li>Show \\/ Hide image.<\\/li> \\n\\t\\t\\t<li>Show \\/ Hide scrollbar.<\\/li> \\n\\t\\t\\t<li>Support scrollbar if too much products added to cart.<\\/li>\\n\\t\\t\\t<li>Support opening link in: Current Window or New Window.<\\/li> \\n\\t\\t\\t<li>Support caching to make website loads faster.<\\/li> \\n\\t\\t\\t<li>Support Multi-Language.<\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t<p>Your current versions is 2.0.0. <a target=\\\"_blank\\\" href=\\\"http:\\/\\/codextension.com\\\">Find our latest versions now<\\/a><\\/p>\\n\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t<ul>\\n\\t\\t\\t<li>Video tutorials<\\/li>\\n\\t\\t\\t<li>Report bug<\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t<h3>About Codextension & copyright<\\/h3>\\n\\t\\t<p>Codextension is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization <\\/p>Copyright 2004 - 2011 <a target=\\\"_blank\\\" href=\\\"http:\\/\\/codextension.com\\\">http:\\/\\/codextension.com<\\/a>\\n\\t<\\/div>\\n\\t\",\"group\":\"\"}', '{\"JOOMLA_SETTING\":\"JOOMLA_SETTING\",\"moduleclass_sfx\":\"\",\"enable_cache\":\"0\",\"cache_time\":\"30\",\"SOURCE_SETTING\":\"SOURCE_SETTING\",\"show_price\":\"1\",\"count\":\"5\",\"show_title\":\"1\",\"title_max_chars\":\"25\",\"show_desc\":\"1\",\"jl_limit_desc\":\"100\",\"replacer\":\"...\",\"show_attr\":\"1\",\"show_imgs\":\"1\",\"thumbwidth\":\"75\",\"thumbheight\":\"61\",\"widthdropdown\":\"450px\",\"show_scrollbar\":\"1\",\"height_scrollbar\":\"250\",\"target_window\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10220, 'com_nivoslider', 'component', 'com_nivoslider', '', 1, 1, 0, 0, '{\"legacy\":false,\"name\":\"com_nivoslider\",\"type\":\"component\",\"creationDate\":\"March 2012\",\"author\":\"Unite CMS\",\"copyright\":\"Copyright (C) 2012 UnitCMS.net, All rights reserved.\",\"authorEmail\":\"support@unitecms.net\",\"authorUrl\":\"http:\\/\\/www.unitecms.net\",\"version\":\"2.1.0\",\"description\":\"\\n\\t\\tCreate slides source for Nivo Slider module \\n\\t\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10221, 'Slideshow', 'module', 'mod_unite_nivoslider', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"Slideshow\",\"type\":\"module\",\"creationDate\":\"March 2012\",\"author\":\"Unite CMS\",\"copyright\":\"Copyright (C) 2012 UniteCMS.net, All rights reserved.\",\"authorEmail\":\"support@unitecms.net\",\"authorUrl\":\"http:\\/\\/www.unitecms.net\",\"version\":\"2.1.0\",\"description\":\"\",\"group\":\"\"}', '{\"width\":\"618\",\"height\":\"246\",\"pauseTime\":\"3000\",\"animSpeed\":\"500\",\"effect\":\"\",\"theme\":\"default\",\"controlNav\":\"true\",\"directionNav\":\"true\",\"prevText\":\"Prev\",\"nextText\":\"Next\",\"position\":\"center\",\"margin_left\":\"0\",\"margin_right\":\"0\",\"margin_top\":\"0\",\"margin_bottom\":\"0\",\"clear_both\":\"false\",\"startSlide\":\"0\",\"randomStart\":\"false\",\"pauseOnHover\":\"true\",\"manualAdvance\":\"false\",\"slices\":\"15\",\"boxCols\":\"8\",\"boxRows\":\"4\",\"beforeChange\":\"function(){}\",\"afterChange\":\"function(){}\",\"slideshowEnd\":\"function(){}\",\"lastSlide\":\"function(){}\",\"afterLoad\":\"function(){}\",\"include_jquery\":\"true\",\"js_load_type\":\"head\",\"no_conflict_mode\":\"false\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10238, 'Vietnamese (Viet Nam) language pack for K2', 'file', '_install', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"Vietnamese (Viet Nam) language pack for K2\",\"type\":\"file\",\"creationDate\":\"April 18, 2015\",\"author\":\"getk2.org\",\"copyright\":\"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"nospam@getk2.org\",\"authorUrl\":\"getk2.org\",\"version\":\"2.5.0\",\"description\":\"Vietnamese (Viet Nam) language pack for K2\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10249, 'Bài viết liên quan', 'module', 'mod_k2_related_content', '', 0, 1, 0, 0, '{\"legacy\":true,\"name\":\"Bài viết liên quan\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Effitech\",\"copyright\":\"Copyright (c) 2012 Effitech All rights reserved.\",\"authorEmail\":\"contact@effitech.fr\",\"authorUrl\":\"www.effitech.fr\",\"version\":\"1.5\",\"description\":\"K2 Related Content\",\"group\":\"\"}', '{\"\":\"ITEMS_DISPLAY_SETTINGS\",\"moduleclass_sfx\":\"\",\"getTemplate\":\"Default\",\"pRelatedBy\":\"0\",\"category_id\":\"\",\"pTags\":\"\",\"pItemsNumber\":\"\",\"pOrientation\":\"Verti\",\"pTitle\":\"1\",\"pIntro\":\"1\",\"pIntroLimit\":\"100\",\"pFullText\":\"0\",\"pFullTextLimit\":\"100\",\"pItemImage\":\"1\",\"pItemImgSize\":\"Small\",\"pItemImageCaption\":\"0\",\"pItemImageCustomSize\":\"0\",\"pItemImageWidth\":\"\",\"pItemImageHeight\":\"\",\"pItemImagePosition\":\"0\",\"pExtrafields\":\"0\",\"pTooltip\":\"0\",\"pTooltipLimit\":\"100\",\"pReadmore\":\"0\",\"pItemCategory\":\"0\",\"pItemDateCreated\":\"0\",\"pItemSort\":\"0\",\"pItemSortDirection\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10253, 'mtcomment', 'component', 'com_mtcomment', '', 1, 0, 0, 0, '{\"legacy\":false,\"name\":\"mtcomment\",\"type\":\"component\",\"creationDate\":\"January 2017\",\"author\":\"Unknown\",\"copyright\":\"Copyright Info\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"0.0.1\",\"description\":\"B\\u00ecnh lu\\u1eadn\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10254, 'Bình luận', 'module', 'mod_mtcomment', '', 0, 0, 0, 0, '{\"legacy\":false,\"name\":\"B\\u00ecnh lu\\u1eadn\",\"type\":\"module\",\"creationDate\":\"January 2017\",\"author\":\"Minh Thu\\u1eadn\",\"copyright\":\"Copyright (C). All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/websitere.vn\",\"version\":\"2.0.20b-st42\",\"description\":\"B\\u00ecnh lu\\u1eadn\",\"group\":\"\"}', '{\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10274, 'Gallery', 'module', 'mod_unite_nivogallery', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"Gallery\",\"type\":\"module\",\"creationDate\":\"March 2012\",\"author\":\"Unite CMS\",\"copyright\":\"Copyright (C) 2012 UniteCMS.net, All rights reserved.\",\"authorEmail\":\"support@unitecms.net\",\"authorUrl\":\"http:\\/\\/www.unitecms.net\",\"version\":\"2.1.0\",\"description\":\"\",\"group\":\"\"}', '{\"width\":\"100%\",\"height\":\"100%\",\"pauseTime\":\"3000\",\"animSpeed\":\"500\",\"effect\":\"\",\"loaiscroll\":\"\",\"chieuscroll\":\"list\",\"tocdo\":\"500\",\"chieungang\":\"100\",\"sospnhinthay\":\"1\",\"padding\":\"0\",\"theme\":\"default\",\"controlNav\":\"true\",\"directionNav\":\"true\",\"prevText\":\"Prev\",\"nextText\":\"Next\",\"position\":\"center\",\"margin_left\":\"0\",\"margin_right\":\"0\",\"margin_top\":\"0\",\"margin_bottom\":\"0\",\"clear_both\":\"false\",\"startSlide\":\"0\",\"randomStart\":\"false\",\"pauseOnHover\":\"true\",\"manualAdvance\":\"false\",\"slices\":\"15\",\"boxCols\":\"8\",\"boxRows\":\"4\",\"beforeChange\":\"function(){}\",\"afterChange\":\"function(){}\",\"slideshowEnd\":\"function(){}\",\"lastSlide\":\"function(){}\",\"afterLoad\":\"function(){}\",\"include_jquery\":\"true\",\"js_load_type\":\"head\",\"no_conflict_mode\":\"true\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10275, 'Thống kê truy cập', 'module', 'mod_mt_visitcounter', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"Th\\u1ed1ng k\\u00ea truy c\\u1eadp\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"Minh Thu\\u1eadn\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"\",\"description\":\"Th\\u1ed1ng k\\u00ea truy c\\u1eadp\",\"group\":\"\"}', '{\"product_group\":\"latest\",\"max_items\":\"10\",\"display_style\":\"list\",\"show_price\":\"1\",\"@spacer\":\"\",\"footerText\":\"\",\"filter_category\":\"1\",\"chieuscroll\":\"list\",\"tocdo\":\"\",\"chieungang\":\"\",\"sospnhinthay\":\"\",\"padding\":\"\",\"loaiscroll\":\"list\",\"nutcontrol\":\"list\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10276, 'Scroll sản phẩm', 'module', 'mod_virtuemart_scroller', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"Scroll s\\u1ea3n ph\\u1ea9m\",\"type\":\"module\",\"creationDate\":\"March 17 2013\",\"author\":\"MT Design\",\"copyright\":\"Copyright (C) 2012-2013 Studio 42. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.st42.fr\",\"version\":\"\",\"description\":\"MOD_VIRTUEMART_PRODUCT_DESC\",\"group\":\"\"}', '{\"product_group\":\"latest\",\"max_items\":\"10\",\"display_style\":\"list\",\"show_price\":\"1\",\"@spacer\":\"\",\"footerText\":\"\",\"filter_category\":\"1\",\"chieuscroll\":\"list\",\"tocdo\":\"\",\"chieungang\":\"\",\"sospnhinthay\":\"\",\"padding\":\"\",\"loaiscroll\":\"list\",\"nutcontrol\":\"list\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10277, 'Scroll bài viết', 'module', 'mod_k2_scroller', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"Scroll b\\u00e0i vi\\u1ebft\",\"type\":\"module\",\"creationDate\":\"December 8th, 2014\",\"author\":\"MT Design\",\"copyright\":\"Copyright (c) 2006 - 2014 JoomlaWorks Ltd. All rights reserved.\",\"authorEmail\":\"please-use-the-contact-form@joomlaworks.net\",\"authorUrl\":\"www.joomlaworks.net\",\"version\":\"2.6.9\",\"description\":\"K2_MOD_K2_SCROLLER_DESCRIPTION\",\"group\":\"\"}', '{\"moduleclass_sfx\":\"\",\"getTemplate\":\"Default\",\"source\":\"filter\",\"chieuscroll\":\"list\",\"tocdo\":\"\",\"chieungang\":\"\",\"sospnhinthay\":\"\",\"padding\":\"\",\"loaiscroll\":\"list\",\"nutcontrol\":\"list\",\"\":\"K2_OTHER_OPTIONS\",\"catfilter\":\"0\",\"category_id\":\"\",\"getChildren\":\"1\",\"itemCount\":\"10\",\"itemsOrdering\":\"rdate\",\"FeaturedItems\":\"1\",\"popularityRange\":\"\",\"videosOnly\":\"0\",\"item\":\"\",\"items\":\"\",\"itemTitle\":\"1\",\"itemAuthor\":\"0\",\"itemAuthorAvatar\":\"0\",\"itemAuthorAvatarWidthSelect\":\"custom\",\"itemAuthorAvatarWidth\":\"50\",\"userDescription\":\"0\",\"itemIntroText\":\"0\",\"itemIntroTextWordLimit\":\"\",\"itemImage\":\"1\",\"itemImgSize\":\"Small\",\"itemVideo\":\"0\",\"itemVideoCaption\":\"0\",\"itemVideoCredits\":\"0\",\"itemAttachments\":\"0\",\"itemTags\":\"0\",\"itemCategory\":\"0\",\"itemDateCreated\":\"0\",\"itemHits\":\"0\",\"itemReadMore\":\"0\",\"itemExtraFields\":\"0\",\"itemCommentsCounter\":\"0\",\"feed\":\"0\",\"itemPreText\":\"\",\"itemCustomLink\":\"0\",\"itemCustomLinkTitle\":\"\",\"itemCustomLinkURL\":\"http:\\/\\/\",\"itemCustomLinkMenuItem\":\"\",\"K2Plugins\":\"1\",\"JPlugins\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10278, 'NganLuong', 'plugin', 'nganluong', 'vmpayment', 0, 0, 1, 0, '{\"legacy\":true,\"name\":\"Vm Payment plugin NganLuong\",\"type\":\"plugin\",\"creationDate\":\"2012\",\"author\":\"NganLuong\",\"copyright\":\"Copyright (C) 2004-2011 Cockhukho. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/nganluong.vn\\/\",\"version\":\"2.0.0RC3\",\"description\":\"<a href=\\\"https:\\/\\/www.nganluong.com\\\" target=\\\"_blank\\\">NganLuong<\\/a>  \",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10280, 'Yêu thích', 'module', 'mod_mtlike', '', 0, 0, 0, 0, '{\"legacy\":false,\"name\":\"Y\\u00eau th\\u00edch\",\"type\":\"module\",\"creationDate\":\"January 2017\",\"author\":\"Minh Thu\\u1eadn\",\"copyright\":\"Copyright (C). All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/websitere.vn\",\"version\":\"2.0.20b-st42\",\"description\":\"Y\\u00eau th\\u00edch\",\"group\":\"\"}', '{\"dmsp\":\"0\",\"ctsp\":\"0\",\"dmbv\":\"0\",\"ctbv\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10281, 'Popup', 'module', 'mod_mt_popup', '', 0, 1, 0, 0, '{\"legacy\":false,\"name\":\"Popup\",\"type\":\"module\",\"creationDate\":\"12 February 2024\",\"author\":\"webminhthuan.vn\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"Popup\",\"group\":\"\"}', '{\"chieungang\":\"0\",\"chieucao\":\"0\",\"batsau\":\"0\",\"scrollmoibat\":\"0\",\"batmotlan\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_attachments`
--

CREATE TABLE `z0djb_k2_attachments` (
  `id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `titleAttribute` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_categories`
--

CREATE TABLE `z0djb_k2_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` int(11) DEFAULT 0,
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT 0,
  `plugins` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_k2_categories`
--

INSERT INTO `z0djb_k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(21, 'Tin tức', 'tin-tuc', '', 0, 1, 1, 1, 2, '', '{\"inheritFrom\":\"0\",\"theme\":\"\",\"num_leading_items\":\"60\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Medium\",\"num_primary_items\":\"0\",\"num_primary_columns\":\"0\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"0\",\"num_secondary_columns\":\"0\",\"secondaryImgSize\":\"Small\",\"num_links\":\"0\",\"num_links_columns\":\"0\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"rdate\",\"catPagination\":\"2\",\"catPaginationResults\":\"1\",\"catTitle\":\"1\",\"catTitleItemCounter\":\"0\",\"catDescription\":\"0\",\"catImage\":\"0\",\"catFeedLink\":\"0\",\"catFeedIcon\":\"0\",\"subCategories\":\"0\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"0\",\"subCatTitleItemCounter\":\"0\",\"subCatDescription\":\"0\",\"subCatImage\":\"0\",\"itemImageXS\":\"200\",\"itemImageS\":\"400\",\"itemImageM\":\"800\",\"itemImageL\":\"1200\",\"itemImageXL\":\"2000\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"0\",\"catItemAuthor\":\"0\",\"catItemDateCreated\":\"0\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"0\",\"catItemIntroTextWordLimit\":\"50\",\"catItemExtraFields\":\"1\",\"catItemHits\":\"0\",\"catItemCategory\":\"0\",\"catItemTags\":\"0\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"0\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"0\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"0\",\"catItemCommentsAnchor\":\"0\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"0\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"0\",\"itemAuthor\":\"0\",\"itemFontResizer\":\"0\",\"itemPrintButton\":\"0\",\"itemEmailButton\":\"0\",\"itemSocialButton\":\"0\",\"itemVideoAnchor\":\"0\",\"itemImageGalleryAnchor\":\"0\",\"itemCommentsAnchor\":\"0\",\"itemRating\":\"0\",\"itemImage\":\"0\",\"itemImgSize\":\"Medium\",\"itemImageMainCaption\":\"0\",\"itemImageMainCredits\":\"0\",\"itemIntroText\":\"1\",\"itemFullText\":\"0\",\"itemExtraFields\":\"0\",\"itemDateModified\":\"0\",\"itemHits\":\"0\",\"itemCategory\":\"0\",\"itemTags\":\"0\",\"itemAttachments\":\"0\",\"itemAttachmentsCounter\":\"0\",\"itemVideo\":\"0\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"0\",\"itemVideoCredits\":\"0\",\"itemImageGallery\":\"0\",\"itemNavigation\":\"0\",\"itemComments\":\"0\",\"itemTwitterButton\":\"0\",\"itemFacebookButton\":\"0\",\"itemGooglePlusOneButton\":\"0\",\"itemAuthorBlock\":\"0\",\"itemAuthorImage\":\"0\",\"itemAuthorDescription\":\"0\",\"itemAuthorURL\":\"0\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"0\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"0\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"0\",\"itemRelatedCategory\":\"0\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"0\",\"itemRelatedFulltext\":\"0\",\"itemRelatedAuthor\":\"0\",\"itemRelatedMedia\":\"0\",\"itemRelatedImageGallery\":\"0\",\"itemK2Plugins\":\"1\",\"catMetaTitle\":\"\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"\"}', 0, '', '*'),
(24, 'Liên hệ', 'lien-he', '', 0, 1, 1, 1, 1, '', '{\"inheritFrom\":\"0\",\"theme\":\"\",\"num_leading_items\":\"10\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Small\",\"num_primary_items\":\"0\",\"num_primary_columns\":\"0\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"0\",\"num_secondary_columns\":\"0\",\"secondaryImgSize\":\"Small\",\"num_links\":\"0\",\"num_links_columns\":\"0\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"rdate\",\"catPagination\":\"2\",\"catPaginationResults\":\"1\",\"catTitle\":\"1\",\"catTitleItemCounter\":\"0\",\"catDescription\":\"0\",\"catImage\":\"0\",\"catFeedLink\":\"0\",\"catFeedIcon\":\"0\",\"subCategories\":\"0\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"0\",\"subCatTitleItemCounter\":\"0\",\"subCatDescription\":\"0\",\"subCatImage\":\"0\",\"itemImageXS\":\"100\",\"itemImageS\":\"200\",\"itemImageM\":\"400\",\"itemImageL\":\"800\",\"itemImageXL\":\"1200\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"0\",\"catItemAuthor\":\"0\",\"catItemDateCreated\":\"0\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"0\",\"catItemIntroTextWordLimit\":\"50\",\"catItemExtraFields\":\"1\",\"catItemHits\":\"0\",\"catItemCategory\":\"0\",\"catItemTags\":\"0\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"0\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"0\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"0\",\"catItemCommentsAnchor\":\"0\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"0\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"0\",\"itemAuthor\":\"0\",\"itemFontResizer\":\"0\",\"itemPrintButton\":\"0\",\"itemEmailButton\":\"0\",\"itemSocialButton\":\"0\",\"itemVideoAnchor\":\"0\",\"itemImageGalleryAnchor\":\"0\",\"itemCommentsAnchor\":\"0\",\"itemRating\":\"0\",\"itemImage\":\"1\",\"itemImgSize\":\"Small\",\"itemImageMainCaption\":\"0\",\"itemImageMainCredits\":\"0\",\"itemIntroText\":\"1\",\"itemFullText\":\"1\",\"itemExtraFields\":\"0\",\"itemDateModified\":\"0\",\"itemHits\":\"0\",\"itemCategory\":\"0\",\"itemTags\":\"0\",\"itemAttachments\":\"0\",\"itemAttachmentsCounter\":\"0\",\"itemVideo\":\"0\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"0\",\"itemVideoCredits\":\"0\",\"itemImageGallery\":\"0\",\"itemNavigation\":\"0\",\"itemComments\":\"0\",\"itemTwitterButton\":\"0\",\"itemFacebookButton\":\"0\",\"itemGooglePlusOneButton\":\"0\",\"itemAuthorBlock\":\"0\",\"itemAuthorImage\":\"0\",\"itemAuthorDescription\":\"0\",\"itemAuthorURL\":\"0\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"0\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"0\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"0\",\"itemRelatedCategory\":\"0\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"0\",\"itemRelatedFulltext\":\"0\",\"itemRelatedAuthor\":\"0\",\"itemRelatedMedia\":\"0\",\"itemRelatedImageGallery\":\"0\",\"itemK2Plugins\":\"1\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"lienhe\"}', 0, '', '*'),
(50, 'Hỗ trợ khách hàng', 'ho-tro-khach-hang', '', 0, 0, 1, 1, 3, '', '{\"inheritFrom\":\"0\",\"theme\":\"\",\"num_leading_items\":\"10\",\"num_leading_columns\":\"1\",\"leadingImgSize\":\"Medium\",\"num_primary_items\":\"0\",\"num_primary_columns\":\"0\",\"primaryImgSize\":\"Medium\",\"num_secondary_items\":\"0\",\"num_secondary_columns\":\"0\",\"secondaryImgSize\":\"Small\",\"num_links\":\"0\",\"num_links_columns\":\"0\",\"linksImgSize\":\"XSmall\",\"catCatalogMode\":\"0\",\"catFeaturedItems\":\"1\",\"catOrdering\":\"rdate\",\"catPagination\":\"2\",\"catPaginationResults\":\"1\",\"catTitle\":\"1\",\"catTitleItemCounter\":\"0\",\"catDescription\":\"0\",\"catImage\":\"0\",\"catFeedLink\":\"0\",\"catFeedIcon\":\"0\",\"subCategories\":\"0\",\"subCatColumns\":\"2\",\"subCatOrdering\":\"\",\"subCatTitle\":\"0\",\"subCatTitleItemCounter\":\"0\",\"subCatDescription\":\"0\",\"subCatImage\":\"0\",\"itemImageXS\":\"200\",\"itemImageS\":\"400\",\"itemImageM\":\"800\",\"itemImageL\":\"1200\",\"itemImageXL\":\"2000\",\"catItemTitle\":\"1\",\"catItemTitleLinked\":\"1\",\"catItemFeaturedNotice\":\"0\",\"catItemAuthor\":\"0\",\"catItemDateCreated\":\"0\",\"catItemRating\":\"0\",\"catItemImage\":\"1\",\"catItemIntroText\":\"0\",\"catItemIntroTextWordLimit\":\"50\",\"catItemExtraFields\":\"1\",\"catItemHits\":\"0\",\"catItemCategory\":\"0\",\"catItemTags\":\"0\",\"catItemAttachments\":\"0\",\"catItemAttachmentsCounter\":\"0\",\"catItemVideo\":\"0\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"0\",\"catItemImageGallery\":\"0\",\"catItemDateModified\":\"0\",\"catItemReadMore\":\"0\",\"catItemCommentsAnchor\":\"0\",\"catItemK2Plugins\":\"1\",\"itemDateCreated\":\"0\",\"itemTitle\":\"1\",\"itemFeaturedNotice\":\"0\",\"itemAuthor\":\"0\",\"itemFontResizer\":\"0\",\"itemPrintButton\":\"0\",\"itemEmailButton\":\"0\",\"itemSocialButton\":\"0\",\"itemVideoAnchor\":\"0\",\"itemImageGalleryAnchor\":\"0\",\"itemCommentsAnchor\":\"0\",\"itemRating\":\"0\",\"itemImage\":\"0\",\"itemImgSize\":\"Medium\",\"itemImageMainCaption\":\"0\",\"itemImageMainCredits\":\"0\",\"itemIntroText\":\"1\",\"itemFullText\":\"1\",\"itemExtraFields\":\"0\",\"itemDateModified\":\"0\",\"itemHits\":\"0\",\"itemCategory\":\"0\",\"itemTags\":\"0\",\"itemAttachments\":\"0\",\"itemAttachmentsCounter\":\"0\",\"itemVideo\":\"0\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"0\",\"itemVideoCaption\":\"0\",\"itemVideoCredits\":\"0\",\"itemImageGallery\":\"0\",\"itemNavigation\":\"0\",\"itemComments\":\"0\",\"itemTwitterButton\":\"0\",\"itemFacebookButton\":\"0\",\"itemGooglePlusOneButton\":\"0\",\"itemAuthorBlock\":\"0\",\"itemAuthorImage\":\"0\",\"itemAuthorDescription\":\"0\",\"itemAuthorURL\":\"0\",\"itemAuthorEmail\":\"0\",\"itemAuthorLatest\":\"0\",\"itemAuthorLatestLimit\":\"5\",\"itemRelated\":\"0\",\"itemRelatedLimit\":\"5\",\"itemRelatedTitle\":\"0\",\"itemRelatedCategory\":\"0\",\"itemRelatedImageSize\":\"0\",\"itemRelatedIntrotext\":\"0\",\"itemRelatedFulltext\":\"0\",\"itemRelatedAuthor\":\"0\",\"itemRelatedMedia\":\"0\",\"itemRelatedImageGallery\":\"0\",\"itemK2Plugins\":\"1\",\"catMetaTitle\":\"\",\"catMetaDesc\":\"\",\"catMetaKey\":\"\",\"catMetaRobots\":\"\",\"catMetaAuthor\":\"\"}', 0, '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_comments`
--

CREATE TABLE `z0djb_k2_comments` (
  `id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `commentEmail` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `commentURL` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `published` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_extra_fields`
--

CREATE TABLE `z0djb_k2_extra_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_k2_extra_fields`
--

INSERT INTO `z0djb_k2_extra_fields` (`id`, `name`, `value`, `type`, `group`, `published`, `ordering`) VALUES
(1, 'Mô tả', '[{\"name\":null,\"value\":\"\",\"editor\":\"1\",\"rows\":\"\",\"cols\":\"\",\"target\":null,\"alias\":\"Mot\",\"required\":0,\"showNull\":0}]', 'textarea', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_extra_fields_groups`
--

CREATE TABLE `z0djb_k2_extra_fields_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_k2_extra_fields_groups`
--

INSERT INTO `z0djb_k2_extra_fields_groups` (`id`, `name`) VALUES
(1, 'Mô tả');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_items`
--

CREATE TABLE `z0djb_k2_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT 0,
  `introtext` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `extra_fields` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `extra_fields_search` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured` smallint(6) NOT NULL DEFAULT 0,
  `featured_ordering` int(11) NOT NULL DEFAULT 0,
  `image_caption` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_credits` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_caption` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_credits` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metatitle` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `plugins` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_name` varchar(900) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_k2_items`
--

INSERT INTO `z0djb_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metatitle`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`, `image_name`) VALUES
(57, 'Liên hệ', 'lien-he-87515660', 24, 1, '<table class=\"table-contact\" style=\"width: 100%; border-style: solid;\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><span style=\"font-size: 120%;\"><b>CTY TNHH DỊCH VỤ ABC</b></span></p>\r\n<p><i class=\"fa-solid fa-location-dot\"></i>123 đường Abc, phường Xyz, TP.HCM</p>\r\n<p><a href=\"tel:\"><i class=\"fa-solid fa-phone\"></i>0912 345 678</a> - <a href=\"tel:\">0123 123 121</a></p>\r\n<p><a href=\"mailto:\"><i class=\"fa-solid fa-envelope\"></i>contact.me@example.com</a></p>\r\n<p><i class=\"fa-solid fa-clock\"></i>Mở cửa từ 08h00 đến 17h00</p>\r\n<p>&nbsp;</p>\r\n<div class=\"map\"><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.521461967277!2d106.64752057377481!3d10.77131565929054!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ebfc98b055b%3A0x19b430923abfbacd!2zMTIzIMSQLiDDgnUgQ8ahLCBQaMaw4budbmcgMTQsIFF14bqtbiAxMSwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1756091021108!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border: 0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe></div>\r\n</td>\r\n<td>{loadposition lienhe}</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', NULL, NULL, '[{\"id\":\"1\",\"value\":\"\"}]', ' ', '2016-06-30 02:37:57', 42, '', 0, '0000-00-00 00:00:00', '2025-11-13 01:38:35', 42, '2016-06-30 02:37:57', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 497, '{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}', '', '', 'robots=\nauthor=', '', '', '*', ''),
(112, 'Elorum deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam', 'error-deleniti-expedita-cupiditate-minus-praesentium-molestias-eos-minima-obcaecati-fugit-aliquam', 21, 1, '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', NULL, NULL, '[{\"id\":\"1\",\"value\":\"<p>Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!<\\/p>\"}]', '<p>Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p> ', '2025-11-10 04:43:28', 42, '', 0, '0000-00-00 00:00:00', '2025-11-12 09:59:03', 42, '2025-11-10 04:43:28', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 1, '{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}', '', '', 'robots=\nauthor=', '', '', '*', 'item8342161762749860'),
(113, 'Deleniti provident consequuntur ut sapiente expedita cupiditate minus praesentium', 'deleniti-provident-consequuntur-ut-sapiente-expedita-cupiditate-minus-praesentium', 21, 1, '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', NULL, NULL, '[{\"id\":\"1\",\"value\":\"<p>Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!<\\/p>\"}]', '<p>Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p> ', '2025-11-10 04:44:27', 42, '', 0, '0000-00-00 00:00:00', '2025-11-10 04:45:18', 42, '2025-11-10 04:43:28', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 0, '{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}', '', '', 'robots=\nauthor=', '', '', '*', 'item1881151762749902'),
(114, 'Praesentium quas obcaecati quia architecto ut sapiente expedita cupiditate minus', 'praesentium-quas-obcaecati-quia-architecto-ut-sapiente-expedita-cupiditate-minus', 21, 1, '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', NULL, NULL, '[{\"id\":\"1\",\"value\":\"<p>Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!<\\/p>\"}]', '<p>Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p> ', '2025-11-10 04:45:26', 42, '', 0, '0000-00-00 00:00:00', '2025-11-10 04:45:57', 42, '2025-11-10 04:43:28', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 1, '{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}', '', '', 'robots=\nauthor=', '', '', '*', 'item3675651762749957'),
(115, 'Chính sách bảo mật', 'chinh-sach-bao-mat', 50, 1, '', '', NULL, NULL, '[]', '', '2025-11-12 09:52:13', 42, '', 0, '0000-00-00 00:00:00', '2025-11-12 12:00:18', 42, '2025-11-12 09:52:13', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 0, '{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}', '', '', 'robots=\nauthor=', '', '', '*', ''),
(116, 'Chính sách thanh toán', 'chinh-sach-thanh-toan', 50, 1, '', '', NULL, NULL, '[]', '', '2025-11-12 09:52:52', 42, '', 0, '0000-00-00 00:00:00', '2025-11-12 09:53:09', 42, '2025-11-12 09:52:52', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 0, '{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}', '', '', 'robots=\nauthor=', '', '', '*', ''),
(117, 'Chính sách vận chuyển', 'chinh-sach-van-chuyen', 50, 1, '', '', NULL, NULL, '[]', '', '2025-11-12 09:53:10', 42, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2025-11-12 09:53:10', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 1, '{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}', '', '', 'robots=\nauthor=', '', '', '*', ''),
(118, 'Chính sách đổi/ trả', 'chinh-sach-doi-tra', 50, 1, '', '', NULL, NULL, '[]', '', '2025-11-12 09:53:36', 42, '', 0, '0000-00-00 00:00:00', '2025-11-12 12:00:33', 42, '2025-11-12 09:53:36', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 1, '{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}', '', '', 'robots=\nauthor=', '', '', '*', ''),
(119, 'Sapiente expedita cupiditate eleniti provident consequuntur ut  minus praesentium', 'sapiente-expedita-cupiditate-eleniti-provident-consequuntur-ut-minus-praesentium', 21, 1, '<h2>Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2>Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', NULL, NULL, '[{\"id\":\"1\",\"value\":\"<p>Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!<\\/p>\"}]', '<p>Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p> ', '2025-11-12 09:58:27', 42, '', 0, '0000-00-00 00:00:00', '2025-11-13 03:59:53', 42, '2025-11-10 04:43:28', '0000-00-00 00:00:00', 0, 1, 0, 0, 0, '', '', '', '', 10, '{\"catItemTitle\":\"\",\"catItemTitleLinked\":\"\",\"catItemFeaturedNotice\":\"\",\"catItemAuthor\":\"\",\"catItemDateCreated\":\"\",\"catItemRating\":\"\",\"catItemImage\":\"\",\"catItemIntroText\":\"\",\"catItemExtraFields\":\"\",\"catItemHits\":\"\",\"catItemCategory\":\"\",\"catItemTags\":\"\",\"catItemAttachments\":\"\",\"catItemAttachmentsCounter\":\"\",\"catItemVideo\":\"\",\"catItemVideoWidth\":\"\",\"catItemVideoHeight\":\"\",\"catItemAudioWidth\":\"\",\"catItemAudioHeight\":\"\",\"catItemVideoAutoPlay\":\"\",\"catItemImageGallery\":\"\",\"catItemDateModified\":\"\",\"catItemReadMore\":\"\",\"catItemCommentsAnchor\":\"\",\"catItemK2Plugins\":\"\",\"itemDateCreated\":\"\",\"itemTitle\":\"\",\"itemFeaturedNotice\":\"\",\"itemAuthor\":\"\",\"itemFontResizer\":\"\",\"itemPrintButton\":\"\",\"itemEmailButton\":\"\",\"itemSocialButton\":\"\",\"itemVideoAnchor\":\"\",\"itemImageGalleryAnchor\":\"\",\"itemCommentsAnchor\":\"\",\"itemRating\":\"\",\"itemImage\":\"\",\"itemImgSize\":\"\",\"itemImageMainCaption\":\"\",\"itemImageMainCredits\":\"\",\"itemIntroText\":\"\",\"itemFullText\":\"\",\"itemExtraFields\":\"\",\"itemDateModified\":\"\",\"itemHits\":\"\",\"itemCategory\":\"\",\"itemTags\":\"\",\"itemAttachments\":\"\",\"itemAttachmentsCounter\":\"\",\"itemVideo\":\"\",\"itemVideoWidth\":\"\",\"itemVideoHeight\":\"\",\"itemAudioWidth\":\"\",\"itemAudioHeight\":\"\",\"itemVideoAutoPlay\":\"\",\"itemVideoCaption\":\"\",\"itemVideoCredits\":\"\",\"itemImageGallery\":\"\",\"itemNavigation\":\"\",\"itemComments\":\"\",\"itemTwitterButton\":\"\",\"itemFacebookButton\":\"\",\"itemGooglePlusOneButton\":\"\",\"itemAuthorBlock\":\"\",\"itemAuthorImage\":\"\",\"itemAuthorDescription\":\"\",\"itemAuthorURL\":\"\",\"itemAuthorEmail\":\"\",\"itemAuthorLatest\":\"\",\"itemAuthorLatestLimit\":\"\",\"itemRelated\":\"\",\"itemRelatedLimit\":\"\",\"itemRelatedTitle\":\"\",\"itemRelatedCategory\":\"\",\"itemRelatedImageSize\":\"\",\"itemRelatedIntrotext\":\"\",\"itemRelatedFulltext\":\"\",\"itemRelatedAuthor\":\"\",\"itemRelatedMedia\":\"\",\"itemRelatedImageGallery\":\"\",\"itemK2Plugins\":\"\"}', '', '', 'robots=\nauthor=', '', '', '*', 'item1881151762749902');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_rating`
--

CREATE TABLE `z0djb_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_tags`
--

CREATE TABLE `z0djb_k2_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_tags_xref`
--

CREATE TABLE `z0djb_k2_tags_xref` (
  `id` int(11) NOT NULL,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_users`
--

CREATE TABLE `z0djb_k2_users` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `gender` enum('m','f') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'm',
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT 0,
  `plugins` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hostname` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_k2_users`
--

INSERT INTO `z0djb_k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(1, 42, 'Super User', 'm', '', NULL, NULL, 1, '', '127.0.0.1', 'HuongTran', '');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_k2_user_groups`
--

CREATE TABLE `z0djb_k2_user_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_k2_user_groups`
--

INSERT INTO `z0djb_k2_user_groups` (`id`, `name`, `permissions`) VALUES
(1, 'Registered', '{\"comment\":\"1\",\"frontEdit\":\"0\",\"add\":\"0\",\"editOwn\":\"0\",\"editAll\":\"0\",\"publish\":\"0\",\"inheritance\":0,\"categories\":\"all\"}'),
(2, 'Site Owner', '{\"comment\":\"1\",\"frontEdit\":\"1\",\"add\":\"1\",\"editOwn\":\"1\",\"editAll\":\"1\",\"publish\":\"1\",\"inheritance\":1,\"categories\":\"all\"}');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_languages`
--

CREATE TABLE `z0djb_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `lang_code` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_languages`
--

INSERT INTO `z0djb_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 0, 0, 0),
(3, 'xx-XX', 'xx (Test)', 'xx (Test)', 'xx', 'br', '', '', '', '', -2, 0, 0),
(4, 'fr-FR', 'France', 'FR', 'fr-FR', 'fr-', '', '', '', '', -2, 0, 0),
(5, 'vi-VN', 'Tiếng Việt (VN)', 'Tiếng Việt (VN)', 'vi', 'vi', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_menu`
--

CREATE TABLE `z0djb_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to j1d880_menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to j1d880_extensions.id',
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to j1d880_users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_menu`
--

INSERT INTO `z0djb_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 101, 0, '*', 0),
(1065, 'main', 'K2_MEDIA_MANAGER', 'k2-media-manager', '', 'com-k2/k2-media-manager', 'index.php?option=com_k2&view=media', 'component', 0, 1056, 2, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 82, 83, 0, '', 1),
(1064, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2-extra-field-groups', '', 'com-k2/k2-extra-field-groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 0, 1056, 2, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 80, 81, 0, '', 1),
(1063, 'main', 'K2_EXTRA_FIELDS', 'k2-extra-fields', '', 'com-k2/k2-extra-fields', 'index.php?option=com_k2&view=extrafields', 'component', 0, 1056, 2, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 78, 79, 0, '', 1),
(1062, 'main', 'K2_USER_GROUPS', 'k2-user-groups', '', 'com-k2/k2-user-groups', 'index.php?option=com_k2&view=usergroups', 'component', 0, 1056, 2, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 76, 77, 0, '', 1),
(1061, 'main', 'K2_USERS', 'k2-users', '', 'com-k2/k2-users', 'index.php?option=com_k2&view=users', 'component', 0, 1056, 2, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 74, 75, 0, '', 1),
(1060, 'main', 'K2_COMMENTS', 'k2-comments', '', 'com-k2/k2-comments', 'index.php?option=com_k2&view=comments', 'component', 0, 1056, 2, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 72, 73, 0, '', 1),
(1059, 'main', 'K2_TAGS', 'k2-tags', '', 'com-k2/k2-tags', 'index.php?option=com_k2&view=tags', 'component', 0, 1056, 2, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 70, 71, 0, '', 1),
(1058, 'main', 'K2_CATEGORIES', 'k2-categories', '', 'com-k2/k2-categories', 'index.php?option=com_k2&view=categories', 'component', 0, 1056, 2, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 68, 69, 0, '', 1),
(1057, 'main', 'K2_ITEMS', 'k2-items', '', 'com-k2/k2-items', 'index.php?option=com_k2&view=items', 'component', 0, 1056, 2, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 66, 67, 0, '', 1),
(1056, 'main', 'COM_K2', 'com-k2', '', 'com-k2', 'index.php?option=com_k2', 'component', 0, 1, 1, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/system/k2_16x16.png', 0, NULL, 65, 84, 0, '', 1),
(902, 'main', 'COM_VIRTUEMART', 'com-virtuemart', '', 'com-virtuemart', 'index.php?option=com_virtuemart', 'component', 0, 1, 1, 10187, 0, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png', 0, NULL, 19, 28, 0, '', 1),
(300, 'main', 'Danh mục sản phẩm', 'Danh mục sản phẩm', '', 'com-virtuemart/Danh mục sản phẩm', 'index.php?option=com_virtuemart&view=category', 'component', 0, 902, 2, 10187, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 20, 21, 0, '', 1),
(301, 'main', 'Sản phẩm', 'Sản phẩm', '', 'com-virtuemart/Sản phẩm', 'index.php?option=com_virtuemart&view=product', 'component', 0, 902, 2, 10187, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 22, 23, 0, '', 1),
(302, 'main', 'Đơn hàng', 'Đơn hàng', '', 'com-virtuemart/Đơn hàng', 'index.php?option=com_virtuemart&view=orders', 'component', 0, 902, 2, 10187, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 24, 25, 0, '', 1),
(303, 'main', 'Cấu hình', 'Cấu hình', '', 'com-virtuemart/Cấu hình', 'index.php?option=com_virtuemart&view=config', 'component', 0, 902, 2, 10187, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 26, 27, 0, '', 1),
(850, 'main', 'COM_COMMUNITY_MENU_APPLICATIONS', 'com-community-menu-applications', '', 'com-community/com-community-menu-applications', 'index.php?option=com_plugins&filter_type=community&filter_folder=community', 'component', 0, 838, 2, 10119, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_community/assets/icons/applications-favicon.gif', 0, NULL, 456, 457, 0, '', 1),
(743, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 5, 6, 0, '*', 1),
(837, 'main', 'com_joomlaupdate', 'com-joomlaupdate', '', 'com-joomlaupdate', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 10118, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 7, 8, 0, '', 1),
(851, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10124, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, NULL, 9, 18, 0, '', 1),
(852, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 851, 2, 10124, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, NULL, 10, 11, 0, '', 1),
(853, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 851, 2, 10124, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, NULL, 12, 13, 0, '', 1),
(854, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 851, 2, 10124, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, NULL, 14, 15, 0, '', 1),
(855, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 851, 2, 10124, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, NULL, 16, 17, 0, '', 1),
(932, 'main', 'COM_RSFORM_UPDATES', 'com-rsform-updates', '', 'rsformpro/com-rsform-updates', 'index.php?option=com_rsform&task=updates.manage', 'component', 0, 927, 2, 10210, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 36, 37, 0, '', 1),
(931, 'main', 'COM_RSFORM_BACKUP_RESTORE', 'com-rsform-backup-restore', '', 'rsformpro/com-rsform-backup-restore', 'index.php?option=com_rsform&task=backup.restore', 'component', 0, 927, 2, 10210, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 34, 35, 0, '', 1),
(929, 'main', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'com-rsform-manage-submissions', '', 'rsformpro/com-rsform-manage-submissions', 'index.php?option=com_rsform&task=submissions.manage', 'component', 0, 927, 2, 10210, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 32, 33, 0, '', 1),
(928, 'main', 'COM_RSFORM_MANAGE_FORMS', 'com-rsform-manage-forms', '', 'rsformpro/com-rsform-manage-forms', 'index.php?option=com_rsform&task=forms.manage', 'component', 0, 927, 2, 10210, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 30, 31, 0, '', 1),
(927, 'main', 'RSFormPro', 'rsformpro', '', 'rsformpro', 'index.php?option=com_rsform&task=submissions.manage', 'component', 0, 1, 1, 10210, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_rsform/assets/images/rsformpro.gif', 0, NULL, 29, 40, 0, '', 1),
(933, 'main', 'COM_RSFORM_PLUGINS', 'com-rsform-plugins', '', 'rsformpro/com-rsform-plugins', 'index.php?option=com_rsform&task=goto.plugins', 'component', 0, 927, 2, 10210, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 38, 39, 0, '', 1),
(990, 'main', 'COM_NIVOSLIDER', 'com_nivoslider', '', 'com_nivoslider', 'index.php?option=com_nivoslider', 'component', 0, 1, 1, 10220, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 41, 46, 0, '', 1),
(304, 'main', 'Danh mục', 'Danh mục', '', 'com_nivoslider/Danh mục', 'index.php?option=com_nivoslider', 'component', 0, 990, 2, 10220, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 42, 43, 0, '', 1),
(305, 'main', 'Slide', 'Slide', '', 'com_nivoslider/Slide', 'index.php?option=com_nivoslider&view=items', 'component', 0, 990, 2, 10220, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 44, 45, 0, '', 1),
(991, 'mainmenu', 'Trang chủ', 'trang-chu', '', 'trang-chu', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"Trang ch\\u1ee7\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"home_bd\",\"menu-meta_description\":\"C\\u00f4ng ty h\\u00e0ng \\u0111\\u1ea7u chuy\\u00ean cung c\\u1ea5p c\\u00e1c s\\u1ea3n ph\\u1ea9m, d\\u1ecbch v\\u1ee5 ch\\u1ea5t l\\u01b0\\u1ee3ng nh\\u1ea5t. Cam k\\u1ebft uy t\\u00edn v\\u00e0 b\\u1ea3o h\\u00e0nh d\\u00e0i h\\u1ea1n. Kh\\u00e1ch h\\u00e0ng lu\\u00f4n l\\u00e0 th\\u01b0\\u1ee3ng \\u0111\\u1ebf, \\u0111\\u1ea3m b\\u1ea3o h\\u00e0i l\\u00f2ng t\\u1ea5t c\\u1ea3 kh\\u00e1ch h\\u00e0ng kh\\u00f3 t\\u00ednh nh\\u1ea5t\",\"menu-meta_keywords\":\"Trang ch\\u1ee7\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\"}', 1, 2, 1, '*', 0),
(1006, 'mainmenu', 'Sản phẩm', 'san-pham', '', 'san-pham', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=1362', 'component', 1, 1, 1, 10187, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"childtomenu\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\"}', 3, 4, 0, '*', 0),
(1011, 'mainmenu', 'Liên hệ', 'lien-he', '', 'lien-he', 'index.php?option=com_k2&view=item&layout=item&id=57', 'component', 1, 1, 1, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"lienhe\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\"}', 99, 100, 0, '*', 0),
(1055, 'main', 'COM_SH404SEF_DOCUMENTATION', 'com-sh404sef-documentation', '', 'com-sh404sef/com-sh404sef-documentation', 'index.php?option=com_sh404sef&layout=info&view=default&task=info', 'component', 0, 1047, 2, 10226, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 62, 63, 0, '', 1),
(1054, 'main', 'COM_SH404SEF_ANALYTICS_MANAGER', 'com-sh404sef-analytics-manager', '', 'com-sh404sef/com-sh404sef-analytics-manager', 'index.php?option=com_sh404sef&c=analytics&layout=default&view=analytics', 'component', 0, 1047, 2, 10226, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 60, 61, 0, '', 1),
(1053, 'main', 'COM_SH404SEF_TITLE_METAS_MANAGER', 'com-sh404sef-title-metas-manager', '', 'com-sh404sef/com-sh404sef-title-metas-manager', 'index.php?option=com_sh404sef&c=metas&layout=default&view=metas', 'component', 0, 1047, 2, 10226, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 58, 59, 0, '', 1),
(1052, 'main', 'COM_SH404SEF_404_REQ_MANAGER', 'com-sh404sef-404-req-manager', '', 'com-sh404sef/com-sh404sef-404-req-manager', 'index.php?option=com_sh404sef&c=urls&layout=view404&view=urls', 'component', 0, 1047, 2, 10226, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 56, 57, 0, '', 1),
(1051, 'main', 'COM_SH404SEF_PAGEID_MANAGER', 'com-sh404sef-pageid-manager', '', 'com-sh404sef/com-sh404sef-pageid-manager', 'index.php?option=com_sh404sef&c=pageids&layout=default&view=pageids', 'component', 0, 1047, 2, 10226, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 54, 55, 0, '', 1),
(1050, 'main', 'COM_SH404SEF_ALIASES_MANAGER', 'com-sh404sef-aliases-manager', '', 'com-sh404sef/com-sh404sef-aliases-manager', 'index.php?option=com_sh404sef&c=aliases&layout=default&view=aliases', 'component', 0, 1047, 2, 10226, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 52, 53, 0, '', 1),
(1049, 'main', 'COM_SH404SEF_URL_MANAGER', 'com-sh404sef-url-manager', '', 'com-sh404sef/com-sh404sef-url-manager', 'index.php?option=com_sh404sef&c=urls&layout=default&view=urls', 'component', 0, 1047, 2, 10226, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 50, 51, 0, '', 1),
(1047, 'main', 'COM_SH404SEF', 'com-sh404sef', '', 'com-sh404sef', 'index.php?option=com_sh404sef', 'component', 0, 1, 1, 10226, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sh404sef/assets/images/menu-icon-sh404sef.png', 0, NULL, 47, 64, 0, '', 1),
(1048, 'main', 'COM_SH404SEF_CONTROL_PANEL', 'com-sh404sef-control-panel', '', 'com-sh404sef/com-sh404sef-control-panel', 'index.php?option=com_sh404sef&c=default', 'component', 0, 1047, 2, 10226, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 48, 49, 0, '', 1),
(1078, 'main', 'Bình luận', 'Bình luận', '', 'Bình luận', 'index.php?option=com_mtcomment', 'component', 0, 1, 1, 10253, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, NULL, 85, 86, 0, '', 1),
(1091, 'hidden', 'Giỏ hàng', 'gio-hang', '', 'gio-hang', 'index.php?option=com_virtuemart&view=cart', 'component', 1, 1, 1, 10187, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\"}', 87, 88, 0, '*', 0),
(1169, 'mang-xa-hoi', 'Facebook', '2025-11-10-04-13-22', '', '2025-11-10-04-13-22', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"images\\/icons\\/facebook-icon.png\",\"menu_text\":1,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\"}', 89, 90, 0, '*', 0),
(1170, 'mang-xa-hoi', 'Tiktok', '2025-11-10-04-13-23', '', '2025-11-10-04-13-23', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"images\\/icons\\/tiktok-icon.png\",\"menu_text\":1,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\"}', 91, 92, 0, '*', 0),
(1175, 'mainmenu', 'Tin tức - bài viết', 'tin-tuc-bai-viet', '', 'tin-tuc-bai-viet', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=21', 'component', 1, 1, 1, 10158, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"categories\":[\"21\"],\"singleCatOrdering\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\"}', 97, 98, 0, '*', 0),
(1172, 'mang-xa-hoi', 'Twitter-x', '2025-11-10-04-13-25', '', '2025-11-10-04-13-25', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"images\\/icons\\/twitter.png\",\"menu_text\":1,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\"}', 93, 94, 0, '*', 0),
(1174, 'mang-xa-hoi', 'Linkedin', '2025-11-10-04-13-27', '', '2025-11-10-04-13-27', '', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"images\\/icons\\/linkedin-icon.png\",\"menu_text\":1,\"mega_showtitle\":\"1\",\"mega_desc\":\"\",\"mega_cols\":\"1\",\"mega_group\":\"0\",\"mega_width\":\"\",\"mega_colw\":\"\",\"mega_colxw\":\"\",\"mega_class\":\"\",\"mega_subcontent\":\"0\"}', 95, 96, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_menu_types`
--

CREATE TABLE `z0djb_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_menu_types`
--

INSERT INTO `z0djb_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(6, 'mainmenu', 'Main Menu', ''),
(22, 'hidden', 'hidden', ''),
(23, 'mang-xa-hoi', 'Mạng xã hội', '');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_messages`
--

CREATE TABLE `z0djb_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT 0,
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_messages_cfg`
--

CREATE TABLE `z0djb_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_modules`
--

CREATE TABLE `z0djb_modules` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `module` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access` int(10) UNSIGNED DEFAULT NULL,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_modules`
--

INSERT INTO `z0djb_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(6, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*'),
(7, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Thành viên đã đăng nhập', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"0\",\"cache\":\"0\"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(139, 'CTY TNHH DỊCH VỤ ABC', '', '<p><i class=\"fa-solid fa-location-dot\"></i>123 đường Abc, phường Xyz, TP.HCM</p>\r\n<p><a href=\"tel:\"><i class=\"fa-solid fa-phone\"></i>0912 345 678</a> - <a href=\"tel:\">0123 123 121</a></p>\r\n<p><a href=\"mailto:\"><i class=\"fa-solid fa-envelope\"></i>contact.me@example.com</a></p>\r\n<p><i class=\"fa-solid fa-clock\"></i>Mở cửa từ 08h00 đến 17h00</p>', 1, 'footer2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(116, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(133, 'K2 Quick Icons (admin)', '', '', 0, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, NULL, 1, '*'),
(134, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, NULL, 1, '*'),
(293, 'Calendar', '', '<div class=\"dongho\">\n\n<center>\n\n<script language=\"javascript\" type=\"text/javascript\">\n\nvar day_of_week = new Array(\'Sun\',\'Mon\',\'Tue\',\'Wed\',\'Thu\',\'Fri\',\'Sat\');\n\nvar month_of_year = new Array(\'January\',\'February\',\'March\',\'April\',\'May\',\'June\',\'July\',\'August\',\'September\',\'October\',\'November\',\'December\');\n\n\n\n//  DECLARE AND INITIALIZE VARIABLES\n\nvar Calendar = new Date();\n\n\n\nvar year = Calendar.getFullYear();     // Returns year\n\nvar month = Calendar.getMonth();    // Returns month (0-11)\n\nvar today = Calendar.getDate();    // Returns day (1-31)\n\nvar weekday = Calendar.getDay();    // Returns day (1-31)\n\n\n\nvar DAYS_OF_WEEK = 7;    // \"constant\" for number of days in a week\n\nvar DAYS_OF_MONTH = 31;    // \"constant\" for number of days in a month\n\nvar cal;    // Used for printing\n\n\n\nCalendar.setDate(1);    // Start the calendar day at \'1\'\n\nCalendar.setMonth(month);    // Start the calendar month at now\n\n\n\n\n\n/* VARIABLES FOR FORMATTING\n\nNOTE: You can format the \'BORDER\', \'BGCOLOR\', \'CELLPADDING\', \'BORDERCOLOR\'\n\n      tags to customize your caledanr\'s look. */\n\n\n\nvar TR_start = \'<TR>\';\n\nvar TR_end = \'</TR>\';\n\nvar highlight_start = \'<TD WIDTH=\"30\"><TABLE CELLSPACING=0 BORDER=1 BGCOLOR=DEDEFF BORDERCOLOR=CCCCCC><TR><TD WIDTH=20><B><CENTER>\';\n\nvar highlight_end   = \'</CENTER></TD></TR></TABLE></B>\';\n\nvar TD_start = \'<TD WIDTH=\"30\"><CENTER>\';\n\nvar TD_end = \'</CENTER></TD>\';\n\n\n\n/* BEGIN CODE FOR CALENDAR\n\nNOTE: You can format the \'BORDER\', \'BGCOLOR\', \'CELLPADDING\', \'BORDERCOLOR\'\n\ntags to customize your calendar\'s look.*/\n\n\n\ncal =  \'<TABLE BORDER=1 CELLSPACING=0 CELLPADDING=0 BORDERCOLOR=BBBBBB><TR><TD>\';\n\ncal += \'<TABLE BORDER=0 CELLSPACING=0 CELLPADDING=2>\' + TR_start;\n\ncal += \'<TD COLSPAN=\"\' + DAYS_OF_WEEK + \'\" BGCOLOR=\"#EFEFEF\"><CENTER><B>\';\n\ncal += month_of_year[month]  + \'   \' + year + \'</B>\' + TD_end + TR_end;\n\ncal += TR_start;\n\n\n\n//   DO NOT EDIT BELOW THIS POINT  //\n\n\n\n// LOOPS FOR EACH DAY OF WEEK\n\nfor(index=0; index < DAYS_OF_WEEK; index++)\n\n{\n\n\n\n// BOLD TODAY\'S DAY OF WEEK\n\nif(weekday == index)\n\ncal += TD_start + \'<B>\' + day_of_week[index] + \'</B>\' + TD_end;\n\n\n\n// PRINTS DAY\n\nelse\n\ncal += TD_start + day_of_week[index] + TD_end;\n\n}\n\n\n\ncal += TD_end + TR_end;\n\ncal += TR_start;\n\n\n\n// FILL IN BLANK GAPS UNTIL TODAY\'S DAY\n\nfor(index=0; index < Calendar.getDay(); index++)\n\ncal += TD_start + \'  \' + TD_end;\n\n\n\n// LOOPS FOR EACH DAY IN CALENDAR\n\nfor(index=0; index < DAYS_OF_MONTH; index++)\n\n{\n\nif( Calendar.getDate() > index )\n\n{\n\n  // RETURNS THE NEXT DAY TO PRINT\n\n  week_day =Calendar.getDay();\n\n\n\n  // START NEW ROW FOR FIRST DAY OF WEEK\n\n  if(week_day == 0)\n\n  cal += TR_start;\n\n\n\n  if(week_day != DAYS_OF_WEEK)\n\n  {\n\n\n\n  // SET VARIABLE INSIDE LOOP FOR INCREMENTING PURPOSES\n\n  var day  = Calendar.getDate();\n\n\n\n  // HIGHLIGHT TODAY\'S DATE\n\n  if( today==Calendar.getDate() )\n\n  cal += highlight_start + day + highlight_end + TD_end;\n\n\n\n  // PRINTS DAY\n\n  else\n\n  cal += TD_start + day + TD_end;\n\n  }\n\n\n\n  // END ROW FOR LAST DAY OF WEEK\n\n  if(week_day == DAYS_OF_WEEK)\n\n  cal += TR_end;\n\n  }\n\n\n\n  // INCREMENTS UNTIL END OF THE MONTH\n\n  Calendar.setDate(Calendar.getDate()+1);\n\n\n\n}// end for loop\n\n\n\ncal += \'</TD></TR></TABLE></TABLE>\';\n\n\n\n//  PRINT CALENDAR\n\ndocument.write(cal);\n\n\n\n//  End -->\n\n</script>\n\n</center>\n\n</div>\n\n\n\n<div class=\"dongho2\">\n\n<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0\" width=\"200\" height=\"200\"><param name=\"movie\" value=\"http://www.gheos.net/js/clock/clock.swf\"><param name=\"quality\" value=\"high\"><param name=\"wmode\" value=\"transparent\"><param name=\"menu\" value=\"false\"><embed src=\"http://www.gheos.net/js/clock/clock.swf\" width=\"200\" height=\"200\" quality=\"high\" wmode=\"transparent\" menu=\"false\"></object>\n\n</div>', 7, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(297, 'Rss', '', '', 8, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_continuous_rss_scrolling', 1, 1, '{\"crs_record_height\":\"40\",\"crs_display_count\":\"5\",\"crs_display_width\":\"200\",\"crs_rss_url\":\"http:\\/\\/vnexpress.net\\/rss\\/thoi-su.rss\",\"crs_cache\":\"false\"}', 0, '*'),
(300, 'Slideshow', '', '', 1, 'slideshow1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unite_nivoslider', 1, 0, '{\"theme\":\"default\",\"sliderid\":\"2\",\"loaiscroll\":\"khong\",\"chieuscroll\":\"ngang\",\"tocdo\":\"500\",\"chieungang\":\"100\",\"sospnhinthay\":\"1\",\"padding\":\"0\",\"pauseTime\":\"3000\",\"animSpeed\":\"500\",\"controlNav\":\"false\",\"directionNav\":\"true\",\"startSlide\":\"0\",\"randomStart\":\"false\",\"pauseOnHover\":\"true\",\"slices\":\"15\",\"boxCols\":\"8\",\"boxRows\":\"4\",\"beforeChange\":\"function(){}\",\"afterChange\":\"function(){}\",\"slideshowEnd\":\"function(){}\",\"lastSlide\":\"function(){}\",\"afterLoad\":\"function(){}\",\"include_jquery\":\"true\",\"js_load_type\":\"head\",\"no_conflict_mode\":\"true\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(418, 'Gọi nhanh', '', '<table>\r\n<tbody>\r\n<tr>\r\n<td><a href=\"tel:02437655896\" class=\"widget__btn\"> <img src=\"images/phone.png\" alt=\"phone\" class=\"widget__icon\" width=\"42\" height=\"42\" onclick=\"return gtag_report_conversion(\'tel:02437655896\');\" /> </a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, 'widget', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"-call\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(301, 'Sản phẩm mới', '', '', 1, 'noidungtren1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_virtuemart_product', 1, 1, '{\"layout\":\"default\",\"product_group\":\"latest\",\"max_items\":\"6\",\"products_per_row\":\"3\",\"display_style\":\"div\",\"show_price\":\"1\",\"show_addtocart\":\"0\",\"filter_category\":\"1\",\"virtuemart_category_id\":\"81\",\"headerText\":\"\",\"footerText\":\"\",\"cache\":\"1\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\"}', 0, '*'),
(313, 'Hướng dẫn mua hàng', '', '<p style=\"margin: 0px; padding: 0px; font-family: Arial; font-size: 13px; color: #000000; line-height: 25px;\"><span style=\"margin: 0px; padding: 0px; color: #008000;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px;\"><strong style=\"margin: 0px; padding: 0px; font-size: 13px;\">Gọi điện Mua Hàng:</strong></span></span></p>\n\n<div style=\"margin: 0px; padding: 0px; font-family: Arial; font-size: 13px; color: #000000; line-height: 25px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">Sản phẩm được bán trực tiếp tại cửa hàng. và cung cấp đầy đủ thông tin trên&nbsp;<strong style=\"margin: 0px; padding: 0px; font-size: 13px;\">website:&nbsp;</strong><a href=\"http://maylocnuocvietnhat.com/\">http://maylocnuocvietnhat.com/</a><br style=\"margin: 0px; padding: 0px; font-size: 13px;\" /> Quý khách vào website và tìm hiểu các sản phẩm và thông tin về sản phẩm, giá cả, nếu cần tư vấn thêm gọi điện đến số Hotline để được tư vấn thêm:</span></div>\n\n<div style=\"margin: 0px; padding: 0px; font-family: Arial; font-size: 13px; color: #000000; line-height: 25px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">Số điện thoại hotline tư vấn: 24 / 7 &nbsp;-<span style=\"color: #ff0000;\"><strong>&nbsp;&nbsp;<span style=\"color: #ff0000; font-family: arial; font-size: 15.210000038147px; font-weight: bold; word-spacing: 0.300000011920929px;\">0916 55 2003</span></strong></span></span></div>\n\n<div style=\"margin: 0px; padding: 0px; font-family: Arial; font-size: 13px; color: #000000; line-height: 25px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">Giá cả sản phẩm được niêm yết chính xách trên website và thông tin khuyến mại là có thật</span></div>\n\n<div style=\"margin: 0px; padding: 0px; font-family: Arial; font-size: 13px; color: #000000; line-height: 25px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">Quý khách gọi điện thoại đặt hàng hoặc đến mua hàng và đặt hàng tại cửa hàng</span></div>\n\n<div style=\"margin: 0px; padding: 0px; font-family: Arial; font-size: 13px; color: #000000; line-height: 25px;\"><span style=\"margin: 0px; padding: 0px; font-size: 14px;\">Tùy vào khoảng cách sản phẩm sẽ được lắp đặt tại nhà quý khách ngay sau đó (có mặt trong vòng 1h - 2h &nbsp;từ khi đặt hàng - tùy vào khoảng cách nhà quý khách)</span></div>\n\n<div style=\"margin: 0px; padding: 0px; font-family: Arial; font-size: 13px; color: #000000; line-height: 25px;\">&nbsp;</div>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\">&nbsp;</p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><strong style=\"color: #006400; font-family: arial, helvetica, sans-serif; font-size: 14px; margin: 0px; padding: 0px;\">Mua hàng ONLINE: Để mua hàng trên Website nhanh chóng bạn làm theo các bước sau:</strong></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\"><span color=\"#ff0000\" style=\"margin: 0px; padding: 0px; color: #ff0000;\"><strong style=\"margin: 0px; padding: 0px;\">Bước 1: Chọn sản phẩm</strong></span></span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\">- Quý khách website và tìm các sản phẩm và thông tin vể sản phẩm, giá cả, gọi điện đến số hotline để được tư vấn thêm</span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\"><span color=\"#ff0000\" style=\"margin: 0px; padding: 0px; color: #ff0000;\"><strong style=\"margin: 0px; padding: 0px;\">Bước 2: Đặt hàng</strong></span></span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\">Bạn có thể đặt hàng theo các cách sau:</span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\">- Gọi điện thoại đặt hàng tới số Hotline trên website</span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\">- Chat với nick Hỗ trợ trực tuyến và Yêu cầu đặt hàng</span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\">- Đặt mua trên Website thông qua giỏ <span style=\"color: #b22222;\"><strong>hàng điện tử</strong></span></span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\">Bạn nên điền đầy đủ và chính xác thông tin để chúng tôi có thể liên hệ được với bạn sớm nhất.</span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\"><span color=\"#ff0000\" style=\"margin: 0px; padding: 0px; color: #ff0000;\"><strong style=\"margin: 0px; padding: 0px;\">Bước 3: Hoàn tất</strong></span></span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\">- Sau khi nhận được đơn hàng, nhân viên Công ty sẽ xác thực thông tin, kiểm tra lại hàng và liên hệ ngay với quý khách.</span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\">&nbsp;</p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><strong style=\"font-size: 14px; color: #ff0000; margin: 0px; padding: 0px;\">Bước 4: Nhận hàng.</strong></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\"><span style=\"color: #008000;\"><strong>Quý khách ở nội thành TP.HCM: </strong></span>.Quý khách sẽ nhận được hàng tại nhà &nbsp;và lắp đặt luôn trong ngày.và thanh toán luôn tại nhà.</span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\">Miến phí vận chuyển và lắp đặt nội thành TP.HCM</span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"font-size: 14px;\">Khách hàng ngoại thành ( có bán kính lớn hơn 15KM tính từ trung tâm TP.HCM) + Thêm phí vận chuyển 50 ngàn đồng&nbsp;</span></p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\">&nbsp;</p>\n\n<p style=\"margin: 0px 0px 8px; padding: 0px; font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px; text-align: justify; color: #000000;\"><span style=\"color: #008000;\"><strong style=\"font-size: 14px;\">Khách hàng ở xa:</strong></span><span style=\"font-size: 14px;\">- Khách hàng tiến hành thanh toán trực tiếp, chuyển tiền vào tài khoản của Công ty&nbsp;</span><span style=\"font-size: 14px;\">- Chúng tôi tiến hành chuyển hàng tận nơi Quý khách sẽ nhận sau 24h đến 48h. ( Máy vận chuyển cho khách hàng ở xa được lắp đặt sẵn chỉ cần đấu nguồn nước đấu vào và cắm điện là máy hoạt động)</span></p>\n\n<div>&nbsp;</div>', 1, 'tab2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(316, 'Thông tin liên hệ trang chi tiết sản phẩm', '', '<p><img alt=\"\" src=\"http://maylocnuocviet.com/data_store/upload/hotline-2828.jpg\" style=\"width: 100%;\" /></p>', 0, 'thongtinfix', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(317, 'Phản hồi facebook', '', '<div id=\"fb-root\"></div>\r\n<script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.3&appId=565194273865134&autoLogAppEvents=1\"></script>\r\n<div class=\"fb-comments\" data-href=\"https://developers.facebook.com/docs/plugins/comments#configurator\" data-width=\"100%\" data-numposts=\"5\"></div>\r\n<script type=\"text/javascript\">// <![CDATA[\r\njQuery(\'.fb-comments\').attr(\'data-href\', window.location.href);\r\n// ]]></script>', 1, 'facecomment', 42, '2020-09-13 13:18:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(318, 'Sản phẩm liên quan', '', '', 1, 'spcungmuc', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_product', 1, 1, '{\"layout\":\"default\",\"product_group\":\"random\",\"max_items\":\"6\",\"products_per_row\":\"3\",\"display_style\":\"div\",\"show_price\":\"1\",\"show_addtocart\":\"0\",\"filter_category\":\"1\",\"virtuemart_category_id\":\"0\",\"headerText\":\"\",\"footerText\":\"\",\"cache\":\"1\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\"}', 0, '*'),
(322, 'Đăng ký nhận tin', '', '', 0, 'dangkynhantin', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_rsform', 1, 0, '{\"formId\":\"3\",\"moduleclass_sfx\":\"\"}', 0, '*'),
(323, 'Thông tin trên giỏ hàng', '', '<p><img src=\"images/thanhtoantruoc1.png\" width=\"100%\" alt=\"thanhtoantruoc1\" /></p>', 1, 'trengiohang', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(329, 'Tin tức', '', '', 1, 'noidungduoi1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2_content', 1, 1, '{\"getTemplate\":\"Default\",\"source\":\"filter\",\"catfilter\":\"1\",\"category_id\":[\"21\"],\"getChildren\":\"1\",\"itemCount\":\"6\",\"itemPerRow\":\"1\",\"itemsOrdering\":\"rdate\",\"FeaturedItems\":\"1\",\"popularityRange\":\"\",\"videosOnly\":\"0\",\"item\":\"0\",\"itemTitle\":\"1\",\"itemAuthor\":\"0\",\"itemAuthorAvatar\":\"0\",\"itemAuthorAvatarWidthSelect\":\"custom\",\"itemAuthorAvatarWidth\":\"50\",\"userDescription\":\"0\",\"itemIntroText\":\"0\",\"itemIntroTextWordLimit\":\"\",\"itemImage\":\"1\",\"itemImgSize\":\"Small\",\"itemVideo\":\"0\",\"itemVideoCaption\":\"0\",\"itemVideoCredits\":\"0\",\"itemAttachments\":\"0\",\"itemTags\":\"0\",\"itemCategory\":\"0\",\"itemDateCreated\":\"0\",\"itemHits\":\"0\",\"itemReadMore\":\"0\",\"itemExtraFields\":\"1\",\"itemCommentsCounter\":\"0\",\"feed\":\"0\",\"itemPreText\":\"\",\"itemCustomLink\":\"0\",\"itemCustomLinkTitle\":\"\",\"itemCustomLinkURL\":\"\",\"itemCustomLinkMenuItem\":\"\",\"moduleclass_sfx\":\"abc\",\"K2Plugins\":\"1\",\"JPlugins\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*'),
(330, 'Debug', '', '<p style=\"font-family: \'Roboto Condensed\', Helvetica,Arial,sans-serif; font-size: 120%;\"><a href=\"https://webminhthuan.vn/thiet-ke-web.html\">Thiết kế web </a>bởi <a href=\"https://webminhthuan.vn/thiet-ke-web.html\">WebMinhThuan.vn</a></p>', 1, 'footer3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(333, 'Bài viết liên quan', '', '', 1, 'bvcungmuc', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_related_content', 1, 1, '{\"moduleclass_sfx\":\"\",\"getTemplate\":\"Default\",\"pRelatedBy\":\"0\",\"pTags\":\"\",\"pItemsNumber\":\"\",\"pOrientation\":\"Verti\",\"pTitle\":\"1\",\"pIntro\":\"0\",\"pIntroLimit\":\"100\",\"pFullText\":\"0\",\"pFullTextLimit\":\"100\",\"pItemImage\":\"1\",\"pItemImgSize\":\"Small\",\"pItemImageCaption\":\"0\",\"pItemImageCustomSize\":\"0\",\"pItemImageWidth\":\"\",\"pItemImageHeight\":\"\",\"pItemImagePosition\":\"left\",\"pExtrafields\":\"0\",\"pTooltip\":\"0\",\"pTooltipLimit\":\"100\",\"pReadmore\":\"0\",\"pItemCategory\":\"0\",\"pItemDateCreated\":\"0\",\"pItemSort\":\"0\",\"pItemSortDirection\":\"0\"}', 0, '*'),
(334, 'Form liên hệ', '', '', 1, 'lienhe', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_rsform', 1, 0, '{\"formId\":\"1\",\"moduleclass_sfx\":\"\"}', 0, '*'),
(337, 'Tìm kiếm sản phẩm', '', '', 2, 'cotphai', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_search', 1, 1, '{\"text\":\"Nh\\u1eadp t\\u1eeb kh\\u00f3a ...\",\"filter_category\":\"0\",\"imagebutton\":\"1\",\"button_text\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*'),
(339, 'Bình luận', '', '', 1, 'facecomment', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_mtcomment', 1, 1, '{\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(347, 'Tìm kiếm', '', '', 0, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_tools', 1, 1, '{\"moduleclass_sfx\":\"\",\"module_usage\":\"6\",\"archiveItemsCounter\":\"1\",\"archiveCategory\":\"0\",\"authors_module_category\":\"0\",\"authorItemsCounter\":\"1\",\"authorAvatar\":\"1\",\"authorAvatarWidthSelect\":\"custom\",\"authorAvatarWidth\":\"50\",\"authorLatestItem\":\"1\",\"calendarCategory\":\"0\",\"home\":\"\",\"seperator\":\"\",\"root_id\":\"0\",\"end_level\":\"\",\"categoriesListOrdering\":\"\",\"categoriesListItemsCounter\":\"1\",\"root_id2\":\"0\",\"catfilter\":\"0\",\"getChildren\":\"1\",\"liveSearch\":\"1\",\"width\":\"20\",\"text\":\"\",\"button\":\"1\",\"imagebutton\":\"1\",\"button_text\":\"\",\"min_size\":\"75\",\"max_size\":\"300\",\"cloud_limit\":\"30\",\"cloud_category\":[\"0\"],\"cloud_category_recursive\":\"0\",\"customCode\":\"\",\"parsePhp\":\"0\",\"K2Plugins\":\"0\",\"JPlugins\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*'),
(355, 'Gallery', '', '', 1, 'noidungduoi2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_unite_nivogallery', 1, 0, '{\"sliderid\":\"2\",\"tonghinhanh\":\"6\",\"hinhanhtrendong\":\"3\",\"padding\":\"1\"}', 0, '*'),
(360, 'Giỏ hàng', '', '', 4, 'cotphai', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_quickcart', 1, 1, '{\"moduleclass_sfx\":\"\",\"enable_cache\":\"0\",\"cache_time\":\"30\",\"show_price\":\"1\",\"count\":\"5\",\"show_title\":\"1\",\"title_max_chars\":\"25\",\"show_desc\":\"1\",\"jl_limit_desc\":\"100\",\"replacer\":\"...\",\"show_attr\":\"1\",\"show_imgs\":\"1\",\"thumbwidth\":\"75\",\"thumbheight\":\"61\",\"widthdropdown\":\"450px\",\"show_scrollbar\":\"1\",\"height_scrollbar\":\"250\",\"target_window\":\"1\"}', 0, '*'),
(363, 'Thống kê truy cập', '', '', 3, 'cotphai', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_mt_visitcounter', 1, 1, '{\"now\":\"\\u0110ang truy c\\u1eadp\",\"today\":\"H\\u00f4m nay\",\"yesterday\":\"H\\u00f4m qua\",\"xweek\":\"Tu\\u1ea7n n\\u00e0y\",\"lweek\":\"Tu\\u1ea7n tr\\u01b0\\u1edbc\",\"xmonth\":\"Th\\u00e1ng n\\u00e0y\",\"lmonth\":\"Th\\u00e1ng tr\\u01b0\\u1edbc\",\"all\":\"T\\u1ed5ng c\\u1ed9ng\",\"ip\":\"0\",\"timer\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(364, 'Scroll sản phẩm', '', '', 1, 'extra1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_scroller', 1, 1, '{\"layout\":\"_:default\",\"product_group\":\"latest\",\"max_items\":\"10\",\"display_style\":\"div\",\"show_price\":\"1\",\"filter_category\":\"1\",\"virtuemart_category_id\":\"0\",\"chieuscroll\":\"ngang\",\"tocdo\":\"\",\"chieungang\":\"\",\"sospnhinthay\":\"\",\"padding\":\"\",\"loaiscroll\":\"motsp\",\"nutcontrol\":\"trang\",\"headerText\":\"\",\"footerText\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(365, 'Scroll bài viết', '', '', 1, 'extra2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_scroller', 1, 1, '{\"getTemplate\":\"Default\",\"source\":\"filter\",\"catfilter\":\"1\",\"category_id\":[\"21\"],\"getChildren\":\"1\",\"itemCount\":\"10\",\"itemsOrdering\":\"rdate\",\"FeaturedItems\":\"1\",\"popularityRange\":\"\",\"videosOnly\":\"0\",\"item\":\"0\",\"itemTitle\":\"1\",\"itemAuthor\":\"0\",\"itemAuthorAvatar\":\"0\",\"itemAuthorAvatarWidthSelect\":\"custom\",\"itemAuthorAvatarWidth\":\"50\",\"userDescription\":\"0\",\"itemIntroText\":\"0\",\"itemIntroTextWordLimit\":\"\",\"itemImage\":\"1\",\"itemImgSize\":\"Small\",\"itemVideo\":\"0\",\"itemVideoCaption\":\"0\",\"itemVideoCredits\":\"0\",\"itemAttachments\":\"0\",\"itemTags\":\"0\",\"itemCategory\":\"0\",\"itemDateCreated\":\"0\",\"itemHits\":\"0\",\"itemReadMore\":\"0\",\"itemExtraFields\":\"0\",\"itemCommentsCounter\":\"0\",\"feed\":\"0\",\"chieuscroll\":\"ngang\",\"tocdo\":\"\",\"chieungang\":\"\",\"sospnhinthay\":\"4\",\"padding\":\"2\",\"loaiscroll\":\"blocksp\",\"nutcontrol\":\"trang\",\"itemPreText\":\"\",\"itemCustomLink\":\"0\",\"itemCustomLinkTitle\":\"\",\"itemCustomLinkURL\":\"\",\"itemCustomLinkMenuItem\":\"\",\"moduleclass_sfx\":\"\",\"K2Plugins\":\"1\",\"JPlugins\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*'),
(366, 'Menu ngang', '', '', 1, 'menungang', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"mainmenu\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(369, 'Thông tin top', '', '<table>\r\n<tbody>\r\n<tr>\r\n<td><a href=\"tel:\"><i class=\"fa-solid fa-phone-volume\"></i>0123-456-789</a></td>\r\n<td><a href=\"mailto:\"><i class=\"fa-solid fa-envelope\"></i>contact.example@gmail.com </a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 'header1_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(370, 'Logo', '', '<p><a href=\"/\"><strong><span style=\"font-size: 200%;\">Logo</span></strong></a></p>', 1, 'header2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(371, 'Giỏ hàng', '', '', 1, 'header2_3', 42, '2020-03-15 22:47:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_quickcart', 1, 0, '{\"moduleclass_sfx\":\"\",\"enable_cache\":\"0\",\"cache_time\":\"30\",\"show_price\":\"1\",\"count\":\"5\",\"show_title\":\"1\",\"title_max_chars\":\"25\",\"show_desc\":\"1\",\"jl_limit_desc\":\"100\",\"replacer\":\"...\",\"show_attr\":\"1\",\"show_imgs\":\"1\",\"thumbwidth\":\"75\",\"thumbheight\":\"61\",\"widthdropdown\":\"450px\",\"show_scrollbar\":\"1\",\"height_scrollbar\":\"250\",\"target_window\":\"1\"}', 0, '*'),
(372, 'Bản đồ', '', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5012100916056!2d106.64830471480079!3d10.772871692323966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xaf3d5faceae5b597!2zVGhp4bq_dCBr4bq_IHdlYnNpdGUgTWluaCBUaHXhuq1u!5e0!3m2!1svi!2s!4v1517479498123\" allowfullscreen=\"allowfullscreen\" width=\"100%\" height=\"250\" frameborder=\"0\"></iframe>', 1, 'footer2_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(373, 'Facebook', '', '<p><iframe name=\"f2ebb6c0c0c4258\" width=\"340px\" height=\"250px\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" allow=\"encrypted-media\" title=\"fb:page Facebook Social Plugin\" src=\"https://www.facebook.com/v3.2/plugins/page.php?adapt_container_width=true&amp;app_id=565194273865134&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2Fj-GHT1gpo6-.js%3Fversion%3D43%23cb%3Df6878a396495d8%26domain%3Daaa.lamwebcaocap.com%26origin%3Dhttp%253A%252F%252Faaa.lamwebcaocap.com%252Ffb47374222309c%26relation%3Dparent.parent&amp;container_width=340&amp;height=250&amp;hide_cover=false&amp;href=https%3A%2F%2Fwww.facebook.com%2Fthietkewebminhthuan%2F&amp;locale=vi_VN&amp;sdk=joey&amp;show_facepile=true&amp;small_header=false&amp;tabs&amp;width=340\" style=\"border: none; visibility: visible; width: 340px; height: 250px;\" class=\"\"></iframe></p>', 1, 'footer2_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(375, 'Đăng nhập', '', '', 1, 'cotphai', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{\"layout\":\"_:default\",\"pretext\":\"\",\"posttext\":\"\",\"login\":\"1005\",\"logout\":\"1005\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 0, '*'),
(378, 'Hotline', '', '<p><i class=\"fas fa-phone-volume\"></i> xxx</p>\r\n<p><i class=\"fas fa-phone-volume\"></i> xxx</p>', 1, 'header2_4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(377, 'Tìm kiếm sản phẩm', '', '', 1, 'header2_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_search', 1, 1, '{\"text\":\"T\\u00ecm ki\\u1ebfm s\\u1ea3n ph\\u1ea9m...\",\"filter_category\":\"0\",\"imagebutton\":\"1\",\"button_text\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*'),
(379, 'Link liên kết mạng xã hội', '', '<div class=\"linkmangxahoi\">\r\n<a href=\"/\"><i class=\"fab fa-facebook-f\"></i></a>\r\n<a href=\"/\"><i class=\"fab fa-google\"></i></a>\r\n<a href=\"/\"><i class=\"fab fa-twitter\"></i></a>\r\n<a href=\"/\"><i class=\"fab fa-youtube\"></i></a>\r\n<a href=\"/\"><i class=\"fab fa-instagram\"></i></a>\r\n</div>', 1, 'header1_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(380, 'Thanh định hướng', '', '', 0, 'dinhhuong1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 0, '{\"showHere\":\"0\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\\u00bb\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(383, 'Tìm kiếm bài viết', '', '', 1, 'cotphai', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_tools', 1, 1, '{\"module_usage\":\"6\",\"root_id\":\"0\",\"end_level\":\"\",\"categoriesListOrdering\":\"\",\"categoriesListItemsCounter\":\"1\",\"root_id2\":\"0\",\"text\":\"Nh\\u1eadp t\\u1eeb kh\\u00f3a ...\",\"imagebutton\":\"1\",\"button_text\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*'),
(386, 'Yêu thích sản phẩm', '', '', 1, 'debug', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_mtlike', 1, 0, '{\"dmsp\":\"1\",\"ctsp\":\"1\",\"dmbv\":\"1\",\"ctbv\":\"1\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(410, 'Danh mục sản phẩm', '', '', 0, 'cotphai', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_virtuemart_category', 1, 1, '{\"layout\":\"default\",\"Parent_Category_id\":\"0\",\"cache\":\"1\",\"moduleclass_sfx\":\"\"}', 0, '*'),
(412, 'Icon contact 1', '', '<div id=\"arcontactus\" class=\"arcontactus-widget arcontactus-message right lg active\">\r\n   &nbsp;\r\n   <div class=\"messangers-block lg\">\r\n      <a class=\"messanger msg-item-facebook-messenger\" id=\"msg-item-1\" href=\"https://m.me/xuannong2015\" target=\"_blank\">\r\n         <span style=\"background-color: #567aff;\">\r\n            <svg xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 448 512\">\r\n               <path fill=\"currentColor\" d=\"M224 32C15.9 32-77.5 278 84.6 400.6V480l75.7-42c142.2 39.8 285.4-59.9 285.4-198.7C445.8 124.8 346.5 32 224 32zm23.4 278.1L190 250.5 79.6 311.6l121.1-128.5 57.4 59.6 110.4-61.1-121.1 128.5z\"></path>\r\n            </svg>\r\n         </span>\r\n         <p>Messenger</p>\r\n      </a>\r\n      <a class=\"messanger msg-item-telegram-plane\" id=\"msg-item-9\" href=\"https://zalo.me/0889008222\" target=\"_blank\">\r\n         <span style=\"background-color: #1ebea5;\">\r\n            <svg xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 448 512\">\r\n               <path fill=\"currentColor\" d=\"M446.7 98.6l-67.6 318.8c-5.1 22.5-18.4 28.1-37.3 17.5l-103-75.9-49.7 47.8c-5.5 5.5-10.1 10.1-20.7 10.1l7.4-104.9 190.9-172.5c8.3-7.4-1.8-11.5-12.9-4.1L117.8 284 16.2 252.2c-22.1-6.9-22.5-22.1 4.6-32.7L418.2 66.4c18.4-6.9 34.5 4.1 28.5 32.2z\"></path>\r\n            </svg>\r\n         </span>\r\n         <p>Telegram</p>\r\n      </a>\r\n	  <a class=\"messanger msg-item-zalo\" id=\"msg-item-9\" href=\"https://zalo.me/0889008222\" target=\"_blank\">\r\n         <span style=\"background-color: #0091FF;\">\r\n            <b>ZALO</b>\r\n         </span>\r\n         <p>Zalo Chat</p>\r\n      </a>\r\n      <a class=\"messanger msg-item-envelope\" id=\"msg-item-7\" href=\"mailto:emailcuaban@gmail.com\" target=\"_blank\">\r\n         <span style=\"background-color: #ff643a;\">\r\n            <svg xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 512 512\">\r\n               <path fill=\"currentColor\" d=\"M464 64H48C21.5 64 0 85.5 0 112v288c0 26.5 21.5 48 48 48h416c26.5 0 48-21.5 48-48V112c0-26.5-21.5-48-48-48zM48 96h416c8.8 0 16 7.2 16 16v41.4c-21.9 18.5-53.2 44-150.6 121.3-16.9 13.4-50.2 45.7-73.4 45.3-23.2.4-56.6-31.9-73.4-45.3C85.2 197.4 53.9 171.9 32 153.4V112c0-8.8 7.2-16 16-16zm416 320H48c-8.8 0-16-7.2-16-16V195c22.8 18.7 58.8 47.6 130.7 104.7 20.5 16.4 56.7 52.5 93.3 52.3 36.4.3 72.3-35.5 93.3-52.3 71.9-57.1 107.9-86 130.7-104.7v205c0 8.8-7.2 16-16 16z\"></path>\r\n            </svg>\r\n         </span>\r\n         <p>Gửi Email</p>\r\n      </a>\r\n      <a class=\"messanger msg-item-phone\" id=\"msg-item-8\" href=\"tel:0889008222\" target=\"_blank\">\r\n         <span style=\"background-color: #4eb625;\">\r\n            <svg xmlns=\"http://www.w3.org/2000/svg\" viewbox=\"0 0 512 512\">\r\n               <path fill=\"currentColor\" d=\"M493.4 24.6l-104-24c-11.3-2.6-22.9 3.3-27.5 13.9l-48 112c-4.2 9.8-1.4 21.3 6.9 28l60.6 49.6c-36 76.7-98.9 140.5-177.2 177.2l-49.6-60.6c-6.8-8.3-18.2-11.1-28-6.9l-112 48C3.9 366.5-2 378.1.6 389.4l24 104C27.1 504.2 36.7 512 48 512c256.1 0 464-207.5 464-464 0-11.2-7.7-20.9-18.6-23.4z\"></path>\r\n            </svg>\r\n         </span>\r\n         <p>Call 0889008222</p>\r\n      </a>\r\n   </div>\r\n   <div class=\"arcontactus-message-button\" style=\"background-color: #008749;\">\r\n      <div class=\"static\">\r\n         <svg width=\"20\" height=\"20\" viewbox=\"0 0 20 20\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\">\r\n            <g id=\"Canvas\" transform=\"translate(-825 -308)\">\r\n               <g id=\"Vector\">\r\n                  <use xlink:href=\"#path0_fill0123\" transform=\"translate(825 308)\" fill=\"#FFFFFF\"></use>\r\n               </g>\r\n            </g>\r\n            <defs>\r\n               <path id=\"path0_fill0123\" d=\"M 19 4L 17 4L 17 13L 4 13L 4 15C 4 15.55 4.45 16 5 16L 16 16L 20 20L 20 5C 20 4.45 19.55 4 19 4ZM 15 10L 15 1C 15 0.45 14.55 0 14 0L 1 0C 0.45 0 0 0.45 0 1L 0 15L 4 11L 14 11C 14.55 11 15 10.55 15 10Z\"></path>\r\n            </defs>\r\n         </svg>\r\n         <p>Liên hệ</p>\r\n      </div>\r\n      <div class=\"callback-state\" style=\"color: #008749;\">&nbsp;</div>\r\n      <div class=\"icons hide\">\r\n         <div class=\"icons-line\" style=\"transform: translate(-2px, 0px);\">&nbsp;</div>\r\n      </div>\r\n      <div class=\"arcontactus-close\">&nbsp;</div>\r\n      <div class=\"pulsation\" style=\"background-color: #008749;\">&nbsp;</div>\r\n      <div class=\"pulsation\" style=\"background-color: #008749;\">&nbsp;</div>\r\n   </div>\r\n   <div class=\"arcontactus-prompt\">\r\n      <div class=\"arcontactus-prompt-close\" style=\"color: #008749;\">&nbsp;</div>\r\n      <div class=\"arcontactus-prompt-inner\">&nbsp;</div>\r\n   </div>\r\n</div>', 1, 'debug', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 0, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(413, 'Icon contact 2', '', '<div class=\"phonering-alo-phone phonering-alo-green phonering-alo-show\">\r\n    <div class=\"phonering-alo-ph-circle\"></div>\r\n    <div class=\"phonering-alo-ph-circle-fill\"></div>\r\n    <div class=\"phonering-alo-ph-img-circle\">\r\n		<a class=\"pps-btn-img\" onclick=\"return gtag_report_conversion(\'tel:0933999888\');\" href=\"tel:0933999888\">\r\n			<img alt=\"Gọi ngay\" src=\"images/phone.png\" class=\"img-responsive\">\r\n		</a>\r\n	</div>\r\n</div>', 1, 'debug', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(416, 'Popup', '', '', 1, 'debug', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_mt_popup', 1, 1, '{\"chieungang\":\"0\",\"chieucao\":\"0\",\"batsau\":\"0\",\"scrollmoibat\":\"0\",\"batmotlan\":\"0\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*'),
(417, 'Menu Mạng Xã Hội', '', '', 0, 'header1_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{\"menutype\":\"mang-xa-hoi\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(419, 'Zalo nhanh', '', '<table>\r\n<tbody>\r\n<tr>\r\n<td><a href=\"http://zalo.me/\" class=\"widget__btn\" target=\"_blank\" rel=\"noopener\"> <img src=\"images/icons/icon-zalo.png\" alt=\"icon-zalo\" class=\"widget__icon\" width=\"120\" height=\"120\" /> </a></td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 'widget', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"-zalo\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(420, 'Tin tức mới nhất', '', '', 0, 'footer2_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_k2_content', 1, 1, '{\"getTemplate\":\"Default\",\"source\":\"filter\",\"catfilter\":\"1\",\"category_id\":[\"21\"],\"getChildren\":\"1\",\"itemCount\":\"10\",\"itemPerRow\":\"1\",\"itemsOrdering\":\"rdate\",\"FeaturedItems\":\"1\",\"popularityRange\":\"\",\"videosOnly\":\"0\",\"item\":\"0\",\"itemTitle\":\"1\",\"itemAuthor\":\"0\",\"itemAuthorAvatar\":\"0\",\"itemAuthorAvatarWidthSelect\":\"custom\",\"itemAuthorAvatarWidth\":\"50\",\"userDescription\":\"0\",\"itemIntroText\":\"0\",\"itemIntroTextWordLimit\":\"\",\"itemImage\":\"0\",\"itemImgSize\":\"Small\",\"itemVideo\":\"0\",\"itemVideoCaption\":\"0\",\"itemVideoCredits\":\"0\",\"itemAttachments\":\"0\",\"itemTags\":\"0\",\"itemCategory\":\"0\",\"itemDateCreated\":\"0\",\"itemHits\":\"0\",\"itemReadMore\":\"0\",\"itemExtraFields\":\"0\",\"itemCommentsCounter\":\"0\",\"feed\":\"0\",\"itemPreText\":\"\",\"itemCustomLink\":\"0\",\"itemCustomLinkTitle\":\"\",\"itemCustomLinkURL\":\"\",\"itemCustomLinkMenuItem\":\"\",\"moduleclass_sfx\":\"\",\"K2Plugins\":\"1\",\"JPlugins\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*'),
(421, 'Danh mục sản phẩm', '', '', 1, 'footer2_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_category', 1, 1, '{\"layout\":\"default\",\"Parent_Category_id\":\"1362\",\"cache\":\"1\",\"moduleclass_sfx\":\"\"}', 0, '*'),
(422, 'Hỗ trợ khách hàng', '', '', 1, 'footer2_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_content', 1, 1, '{\"getTemplate\":\"Default\",\"source\":\"filter\",\"catfilter\":\"1\",\"category_id\":[\"50\"],\"getChildren\":\"1\",\"itemCount\":\"10\",\"itemPerRow\":\"1\",\"itemsOrdering\":\"rdate\",\"FeaturedItems\":\"1\",\"popularityRange\":\"\",\"videosOnly\":\"0\",\"item\":\"0\",\"itemTitle\":\"1\",\"itemAuthor\":\"0\",\"itemAuthorAvatar\":\"0\",\"itemAuthorAvatarWidthSelect\":\"custom\",\"itemAuthorAvatarWidth\":\"50\",\"userDescription\":\"0\",\"itemIntroText\":\"0\",\"itemIntroTextWordLimit\":\"\",\"itemImage\":\"0\",\"itemImgSize\":\"Small\",\"itemVideo\":\"0\",\"itemVideoCaption\":\"0\",\"itemVideoCredits\":\"0\",\"itemAttachments\":\"0\",\"itemTags\":\"0\",\"itemCategory\":\"0\",\"itemDateCreated\":\"0\",\"itemHits\":\"0\",\"itemReadMore\":\"0\",\"itemExtraFields\":\"0\",\"itemCommentsCounter\":\"0\",\"feed\":\"0\",\"itemPreText\":\"\",\"itemCustomLink\":\"0\",\"itemCustomLinkTitle\":\"\",\"itemCustomLinkURL\":\"\",\"itemCustomLinkMenuItem\":\"\",\"moduleclass_sfx\":\"\",\"K2Plugins\":\"1\",\"JPlugins\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*'),
(424, 'Theo dõi chúng tôi qua', '', '', 1, 'footer2_4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mang-xa-hoi\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(423, 'Mạng xã hội', '', '', 2, 'footer2_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{\"menutype\":\"mang-xa-hoi\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(425, 'Bản đồ', '', '<p><iframe width=\"600\" height=\"450\" data-src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.5016153188585!2d106.64794287377484!3d10.7728405592624!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752fb183a58dfb%3A0x782d1980e920d961!2zVGhp4bq_dCBL4bq_IFdlYnNpdGUgTWluaCBUaHXhuq1u!5e0!3m2!1sen!2s!4v1762949626090!5m2!1sen!2s\" style=\"border: 0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe></p>', 1, 'footer1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', 0, '*'),
(426, 'Tìm kiém bài viết', '', '', 1, 'header2_4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{\"module_usage\":\"6\",\"root_id\":\"0\",\"end_level\":\"\",\"categoriesListOrdering\":\"\",\"categoriesListItemsCounter\":\"1\",\"root_id2\":\"0\",\"text\":\"T\\u00ecm ki\\u1ebfm b\\u00e0i vi\\u00e9t...\",\"imagebutton\":\"1\",\"button_text\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_modules_menu`
--

CREATE TABLE `z0djb_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_modules_menu`
--

INSERT INTO `z0djb_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 435),
(1, 455),
(1, 506),
(1, 507),
(1, 508),
(1, 512),
(1, 537),
(1, 538),
(1, 539),
(1, 540),
(1, 541),
(2, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(19, -463),
(19, -462),
(19, -433),
(19, -432),
(19, -431),
(19, -430),
(19, -429),
(19, -427),
(19, -400),
(19, -399),
(19, -296),
(19, -244),
(19, -243),
(19, -242),
(19, -234),
(20, 435),
(20, 455),
(20, 507),
(20, 512),
(20, 515),
(20, 517),
(20, 518),
(20, 519),
(20, 550),
(20, 782),
(20, 783),
(20, 784),
(20, 785),
(20, 786),
(22, 234),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(22, 435),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(57, 435),
(57, 464),
(60, 227),
(60, 229),
(60, 249),
(60, 251),
(60, 252),
(60, 253),
(60, 254),
(60, 255),
(60, 256),
(60, 257),
(60, 259),
(60, 260),
(60, 262),
(60, 263),
(60, 265),
(60, 266),
(60, 267),
(60, 270),
(60, 271),
(60, 272),
(60, 273),
(60, 274),
(60, 275),
(60, 276),
(60, 281),
(60, 282),
(60, 283),
(60, 284),
(60, 285),
(60, 286),
(60, 300),
(60, 301),
(60, 302),
(60, 303),
(60, 304),
(60, 305),
(60, 306),
(60, 307),
(60, 309),
(60, 310),
(60, 311),
(60, 312),
(60, 313),
(60, 314),
(60, 316),
(60, 317),
(60, 318),
(60, 319),
(60, 320),
(60, 321),
(60, 322),
(60, 323),
(60, 324),
(60, 325),
(60, 326),
(60, 402),
(60, 403),
(60, 404),
(60, 405),
(60, 406),
(60, 409),
(60, 410),
(60, 411),
(60, 412),
(60, 413),
(60, 414),
(60, 415),
(60, 416),
(60, 417),
(60, 418),
(60, 419),
(60, 420),
(60, 421),
(60, 422),
(60, 423),
(60, 424),
(60, 425),
(60, 426),
(71, 285),
(71, 316),
(107, 0),
(112, 570),
(112, 571),
(112, 572),
(112, 573),
(112, 574),
(112, 575),
(112, 576),
(112, 577),
(112, 578),
(112, 579),
(112, 580),
(112, 581),
(112, 582),
(112, 583),
(112, 584),
(112, 585),
(112, 586),
(112, 587),
(112, 588),
(112, 589),
(113, 570),
(113, 571),
(113, 572),
(113, 573),
(113, 574),
(113, 575),
(113, 576),
(113, 577),
(113, 578),
(113, 579),
(113, 580),
(113, 581),
(113, 582),
(113, 583),
(113, 584),
(113, 585),
(113, 586),
(113, 587),
(113, 588),
(113, 589),
(114, 570),
(114, 571),
(114, 572),
(114, 573),
(114, 574),
(114, 575),
(114, 576),
(114, 577),
(114, 578),
(114, 579),
(114, 580),
(114, 581),
(114, 582),
(114, 583),
(114, 584),
(114, 585),
(114, 586),
(114, 587),
(114, 588),
(114, 589),
(115, 570),
(115, 571),
(115, 572),
(115, 573),
(115, 574),
(115, 575),
(115, 576),
(115, 577),
(115, 578),
(115, 579),
(115, 580),
(115, 581),
(115, 582),
(115, 583),
(115, 584),
(115, 585),
(115, 586),
(115, 587),
(115, 588),
(115, 589),
(116, 0),
(118, 0),
(133, 0),
(134, 0),
(139, 0),
(203, 0),
(222, 780),
(222, 887),
(222, 918),
(222, 919),
(222, 961),
(222, 962),
(222, 963),
(222, 964),
(222, 965),
(222, 966),
(222, 971),
(222, 972),
(222, 973),
(222, 974),
(223, 935),
(223, 958),
(223, 960),
(223, 967),
(223, 968),
(223, 969),
(223, 970),
(223, 975),
(223, 976),
(223, 977),
(225, 888),
(225, 958),
(225, 969),
(242, 0),
(255, 0),
(293, 0),
(297, 0),
(300, 991),
(301, 991),
(313, 0),
(316, 0),
(317, 0),
(318, 0),
(322, 0),
(323, 0),
(326, 0),
(329, 991),
(330, 0),
(333, 0),
(334, 0),
(337, 0),
(339, 0),
(347, 0),
(355, 991),
(360, 0),
(363, 0),
(364, 991),
(365, 991),
(366, 0),
(369, 0),
(370, 0),
(371, 0),
(372, 0),
(373, 0),
(375, 0),
(377, 0),
(378, 0),
(379, 0),
(380, 0),
(381, 0),
(383, 0),
(386, 0),
(410, 0),
(412, 0),
(413, 0),
(416, 0),
(417, 0),
(418, 0),
(419, 0),
(420, 0),
(421, 0),
(422, 0),
(423, 0),
(424, 0),
(425, 0),
(426, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_mtcomment`
--

CREATE TABLE `z0djb_mtcomment` (
  `id` int(11) NOT NULL,
  `replyfor` int(11) NOT NULL,
  `idtrang` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hoten` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dienthoai` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ngaytao` datetime NOT NULL,
  `trangthai` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_mtcomment`
--

INSERT INTO `z0djb_mtcomment` (`id`, `replyfor`, `idtrang`, `hoten`, `dienthoai`, `email`, `noidung`, `ngaytao`, `trangthai`) VALUES
(20, 0, 'sp1375', 'sdf', '090934488', 'df@yahoo.com', 'sdfsdf', '2019-12-06 11:11:12', 1),
(21, 0, 'sp1375', 'sdf', '090933388', 'sdg@yahoo.com', 'sdf', '2019-12-06 11:15:38', 1),
(22, 0, 'bv1375', 'abc', '0909333888', 'abc@yahoo.com', 'abc', '2019-12-06 12:06:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_mtcomment_config`
--

CREATE TABLE `z0djb_mtcomment_config` (
  `mtcomment_config_id` int(11) NOT NULL,
  `mail_to_admin` int(11) NOT NULL,
  `publish_or_not` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_mtcomment_config`
--

INSERT INTO `z0djb_mtcomment_config` (`mtcomment_config_id`, `mail_to_admin`, `publish_or_not`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_mtlike`
--

CREATE TABLE `z0djb_mtlike` (
  `id` int(11) UNSIGNED NOT NULL,
  `loai` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `session` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `userid` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_mt_setting_admin`
--

CREATE TABLE `z0djb_mt_setting_admin` (
  `id` int(11) NOT NULL,
  `setting` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_mt_setting_admin`
--

INSERT INTO `z0djb_mt_setting_admin` (`id`, `setting`, `status`) VALUES
(1, 'loaiweb', 'bh');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_mt_visitcounter`
--

CREATE TABLE `z0djb_mt_visitcounter` (
  `id` int(25) NOT NULL,
  `ip` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ngay` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_mt_visitcounter`
--

INSERT INTO `z0djb_mt_visitcounter` (`id`, `ip`, `ngay`) VALUES
(236, 'sa4tn1n0a0t6mr823t05qg8gbf', '2025-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_mt_visitcounter_total`
--

CREATE TABLE `z0djb_mt_visitcounter_total` (
  `id` int(11) UNSIGNED NOT NULL,
  `ngay` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_mt_visitcounter_total`
--

INSERT INTO `z0djb_mt_visitcounter_total` (`id`, `ngay`, `total`) VALUES
(2, '2020-07-16', 11),
(3, '2020-08-24', 4),
(4, '2020-08-23', 1),
(5, '2020-08-04', 0),
(6, '2020-08-08', 0),
(7, '2020-08-09', 5),
(8, '2020-08-16', 0),
(9, '2020-08-18', 0),
(10, '2020-08-19', 1),
(11, '2020-08-27', 0),
(12, '2020-08-28', 3),
(13, '2020-08-30', 0),
(14, '2020-09-02', 0),
(15, '2020-09-07', 0),
(16, '2020-09-08', 11),
(17, '2020-09-12', 0),
(18, '2020-09-13', 2),
(19, '2020-09-15', 0),
(20, '2020-09-16', 1),
(21, '2020-09-19', 0),
(22, '2020-09-23', 0),
(23, '2020-09-24', 7),
(24, '2020-09-26', 0),
(25, '2020-11-25', 0),
(26, '2021-04-08', 0),
(27, '2021-05-25', 0),
(28, '2021-07-30', 0),
(29, '2021-08-02', 0),
(30, '2021-08-11', 0),
(31, '2021-08-12', 1),
(32, '2021-08-13', 1),
(33, '2021-08-15', 0),
(34, '2021-08-16', 1),
(35, '2021-08-24', 0),
(36, '2021-08-25', 1),
(37, '2021-08-26', 3),
(38, '2021-08-27', 1),
(39, '2021-08-28', 1),
(40, '2021-08-30', 0),
(41, '2021-09-05', 0),
(42, '2021-09-10', 0),
(43, '2021-09-14', 0),
(44, '2021-09-15', 1),
(45, '2021-09-16', 1),
(46, '2021-09-17', 2),
(47, '2021-09-18', 2),
(48, '2021-09-20', 0),
(49, '2021-09-24', 0),
(50, '2021-10-07', 0),
(51, '2021-10-17', 0),
(52, '2021-10-20', 0),
(53, '2021-11-10', 0),
(54, '2022-03-26', 0),
(55, '2022-05-23', 0),
(56, '2022-06-16', 0),
(57, '2022-06-19', 0),
(58, '2022-07-01', 0),
(59, '2022-07-04', 0),
(60, '2022-07-15', 0),
(61, '2022-07-24', 0),
(62, '2022-07-27', 0),
(63, '2022-08-04', 0),
(64, '2022-08-05', 2),
(65, '2022-08-26', 0),
(66, '2022-11-25', 0),
(67, '2022-12-01', 0),
(68, '2023-06-18', 0),
(69, '2023-06-21', 0),
(70, '2023-06-28', 0),
(71, '2024-08-18', 0),
(72, '2025-04-25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_nivoslider`
--

CREATE TABLE `z0djb_nivoslider` (
  `id` int(10) UNSIGNED NOT NULL,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sliderid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_nivoslider`
--

INSERT INTO `z0djb_nivoslider` (`id`, `catid`, `sliderid`, `title`, `alias`, `image`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`) VALUES
(23, 0, 2, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 2, '{\"image\":\"images\\/slideshow\\/slide-demo-2.jpg\",\"description\":\"\",\"activate_link\":\"no\",\"link\":\"\",\"link_open_in\":\"new\"}'),
(22, 0, 2, 'Slide', 'slide', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"image\":\"images\\/slideshow\\/slide-demo-1.jpg\",\"description\":\"\",\"activate_link\":\"no\",\"link\":\"\",\"link_open_in\":\"new\"}');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_nivoslider_sliders`
--

CREATE TABLE `z0djb_nivoslider_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_nivoslider_sliders`
--

INSERT INTO `z0djb_nivoslider_sliders` (`id`, `title`, `alias`, `image`, `description`, `published`, `ordering`, `params`) VALUES
(2, 'Slide', 'slide', '', '', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_overrider`
--

CREATE TABLE `z0djb_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_redirect_links`
--

CREATE TABLE `z0djb_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `new_url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referer` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_components`
--

CREATE TABLE `z0djb_rsform_components` (
  `ComponentId` int(11) NOT NULL,
  `FormId` int(11) NOT NULL DEFAULT 0,
  `ComponentTypeId` int(11) NOT NULL DEFAULT 0,
  `Order` int(11) NOT NULL DEFAULT 0,
  `Published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_rsform_components`
--

INSERT INTO `z0djb_rsform_components` (`ComponentId`, `FormId`, `ComponentTypeId`, `Order`, `Published`) VALUES
(1, 1, 1, 1, 1),
(3, 1, 1, 3, 1),
(25, 1, 2, 4, 1),
(24, 1, 1, 2, 1),
(42, 1, 7, 5, 1),
(47, 7, 1, 1, 1),
(49, 7, 7, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_component_types`
--

CREATE TABLE `z0djb_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL,
  `ComponentTypeName` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_rsform_component_types`
--

INSERT INTO `z0djb_rsform_component_types` (`ComponentTypeId`, `ComponentTypeName`) VALUES
(1, 'textBox'),
(2, 'textArea'),
(3, 'selectList'),
(4, 'checkboxGroup'),
(5, 'radioGroup'),
(6, 'calendar'),
(7, 'button'),
(8, 'captcha'),
(9, 'fileUpload'),
(10, 'freeText'),
(11, 'hidden'),
(12, 'imageButton'),
(13, 'submitButton'),
(14, 'password'),
(15, 'ticket'),
(41, 'pageBreak');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_component_type_fields`
--

CREATE TABLE `z0djb_rsform_component_type_fields` (
  `ComponentTypeFieldId` int(11) NOT NULL,
  `ComponentTypeId` int(11) NOT NULL DEFAULT 0,
  `FieldName` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'hidden',
  `FieldValues` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_rsform_component_type_fields`
--

INSERT INTO `z0djb_rsform_component_type_fields` (`ComponentTypeFieldId`, `ComponentTypeId`, `FieldName`, `FieldType`, `FieldValues`, `Ordering`) VALUES
(2, 1, 'NAME', 'textbox', '', 1),
(3, 1, 'CAPTION', 'textbox', '', 2),
(4, 1, 'REQUIRED', 'select', 'NO\n\nYES', 3),
(5, 1, 'SIZE', 'textbox', '', 4),
(6, 1, 'MAXSIZE', 'textbox', '', 5),
(7, 1, 'VALIDATIONRULE', 'select', '//<code>\n\nreturn RSgetValidationRules();\n\n//</code>', 6),
(8, 1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(9, 1, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(10, 1, 'DEFAULTVALUE', 'textarea', '', 9),
(11, 1, 'DESCRIPTION', 'textarea', '', 11),
(12, 1, 'COMPONENTTYPE', 'hidden', '1', 15),
(13, 2, 'NAME', 'textbox', '', 1),
(14, 2, 'CAPTION', 'textbox', '', 2),
(15, 2, 'REQUIRED', 'select', 'NO\n\nYES', 3),
(16, 2, 'COLS', 'textbox', '', 4),
(17, 2, 'ROWS', 'textbox', '', 5),
(18, 2, 'VALIDATIONRULE', 'select', '//<code>\n\nreturn RSgetValidationRules();\n\n//</code>', 6),
(19, 2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7),
(20, 2, 'ADDITIONALATTRIBUTES', 'textarea', '', 8),
(21, 2, 'DEFAULTVALUE', 'textarea', '', 9),
(22, 2, 'DESCRIPTION', 'textarea', '', 10),
(23, 2, 'COMPONENTTYPE', 'hidden', '2', 10),
(24, 3, 'NAME', 'textbox', '', 1),
(25, 3, 'CAPTION', 'textbox', '', 2),
(26, 3, 'SIZE', 'textbox', '', 3),
(27, 3, 'MULTIPLE', 'select', 'NO\n\nYES', 4),
(28, 3, 'ITEMS', 'textarea', '', 5),
(29, 3, 'REQUIRED', 'select', 'NO\n\nYES', 6),
(30, 3, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(31, 3, 'DESCRIPTION', 'textarea', '', 8),
(32, 3, 'COMPONENTTYPE', 'hidden', '3', 10),
(33, 4, 'NAME', 'textbox', '', 1),
(34, 4, 'CAPTION', 'textbox', '', 2),
(35, 4, 'ITEMS', 'textarea', '', 3),
(36, 4, 'FLOW', 'select', 'HORIZONTAL\n\nVERTICAL', 4),
(37, 4, 'REQUIRED', 'select', 'NO\n\nYES', 5),
(38, 4, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(39, 4, 'DESCRIPTION', 'textarea', '', 6),
(40, 4, 'COMPONENTTYPE', 'hidden', '4', 7),
(41, 5, 'NAME', 'textbox', '', 1),
(42, 5, 'CAPTION', 'textbox', '', 2),
(43, 5, 'ITEMS', 'textarea', '', 3),
(44, 5, 'FLOW', 'select', 'HORIZONTAL\n\nVERTICAL', 4),
(45, 5, 'REQUIRED', 'select', 'NO\n\nYES', 5),
(46, 5, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(47, 5, 'DESCRIPTION', 'textarea', '', 6),
(48, 5, 'COMPONENTTYPE', 'hidden', '5', 7),
(49, 6, 'NAME', 'textbox', '', 1),
(50, 6, 'CAPTION', 'textbox', '', 2),
(51, 6, 'REQUIRED', 'select', 'NO\n\nYES', 3),
(52, 6, 'DATEFORMAT', 'textbox', 'DDMMYYYY', 4),
(53, 6, 'CALENDARLAYOUT', 'select', 'FLAT\n\nPOPUP', 5),
(54, 6, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(55, 6, 'DESCRIPTION', 'textarea', '', 7),
(56, 6, 'COMPONENTTYPE', 'hidden', '6', 8),
(57, 7, 'NAME', 'textbox', '', 1),
(58, 7, 'CAPTION', 'textbox', '', 2),
(59, 7, 'LABEL', 'textbox', '', 3),
(60, 7, 'RESET', 'select', 'NO\n\nYES', 4),
(61, 7, 'RESETLABEL', 'textbox', '', 5),
(62, 7, 'ADDITIONALATTRIBUTES', 'textarea', '', 6),
(63, 7, 'DESCRIPTION', 'textarea', '', 7),
(64, 7, 'COMPONENTTYPE', 'hidden', '7', 8),
(65, 8, 'NAME', 'textbox', '', 1),
(66, 8, 'CAPTION', 'textbox', '', 2),
(67, 8, 'LENGTH', 'textbox', '4', 3),
(68, 8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', 4),
(69, 8, 'TEXTCOLOR', 'textbox', '#000000', 5),
(70, 8, 'TYPE', 'select', 'ALPHA\n\nNUMERIC\n\nALPHANUMERIC', 6),
(71, 8, 'ADDITIONALATTRIBUTES', 'textarea', 'style=\"text-align:center;width:75px;\"', 7),
(72, 8, 'DESCRIPTION', 'textarea', '', 9),
(73, 8, 'COMPONENTTYPE', 'hidden', '8', 9),
(74, 9, 'NAME', 'textbox', '', 1),
(75, 9, 'CAPTION', 'textbox', '', 2),
(76, 9, 'FILESIZE', 'textbox', '', 3),
(77, 9, 'REQUIRED', 'select', 'NO\n\nYES', 4),
(78, 9, 'ACCEPTEDFILES', 'textarea', '', 5),
(79, 9, 'DESTINATION', 'textbox', '//<code>\n\nreturn JPATH_SITE.DS.\'components\'.DS.\'com_rsform\'.DS.\'uploads\'.DS;\n\n//</code>', 6),
(80, 9, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(81, 9, 'DESCRIPTION', 'textarea', '', 8),
(82, 9, 'COMPONENTTYPE', 'hidden', '9', 9),
(83, 10, 'NAME', 'textbox', '', 1),
(84, 10, 'TEXT', 'textarea', '', 1),
(85, 10, 'COMPONENTTYPE', 'hidden', '10', 9),
(86, 11, 'NAME', 'textbox', '', 1),
(87, 11, 'DEFAULTVALUE', 'textarea', '', 1),
(88, 11, 'ADDITIONALATTRIBUTES', 'textarea', '', 1),
(89, 11, 'COMPONENTTYPE', 'hidden', '11', 9),
(118, 12, 'COMPONENTTYPE', 'hidden', '12', 10),
(117, 12, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(144, 3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(115, 12, 'RESETLABEL', 'textbox', '', 7),
(114, 12, 'RESET', 'select', 'NO\n\nYES', 6),
(113, 12, 'IMAGERESET', 'textbox', '', 5),
(112, 12, 'IMAGEBUTTON', 'textbox', '', 4),
(111, 12, 'LABEL', 'textbox', '', 3),
(110, 12, 'CAPTION', 'textbox', '', 2),
(109, 12, 'NAME', 'textbox', '', 1),
(119, 13, 'NAME', 'textbox', '', 1),
(120, 13, 'CAPTION', 'textbox', '', 3),
(121, 13, 'LABEL', 'textbox', '', 2),
(122, 13, 'RESET', 'select', 'NO\n\nYES', 6),
(123, 13, 'RESETLABEL', 'textbox', '', 7),
(125, 13, 'ADDITIONALATTRIBUTES', 'textarea', '', 9),
(126, 13, 'COMPONENTTYPE', 'hidden', '13', 10),
(127, 14, 'NAME', 'textbox', '', 1),
(128, 14, 'CAPTION', 'textbox', '', 2),
(129, 14, 'REQUIRED', 'select', 'NO\n\nYES', 3),
(130, 14, 'SIZE', 'textbox', '', 4),
(131, 14, 'MAXSIZE', 'textbox', '', 5),
(132, 14, 'DEFAULTVALUE', 'textarea', '', 6),
(133, 14, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(134, 14, 'COMPONENTTYPE', 'hidden', '14', 8),
(135, 15, 'NAME', 'textbox', '', 1),
(138, 15, 'LENGTH', 'textbox', '8', 4),
(140, 15, 'ADDITIONALATTRIBUTES', 'textarea', '', 7),
(141, 15, 'COMPONENTTYPE', 'hidden', '15', 8),
(142, 14, 'DESCRIPTION', 'textarea', '', 100),
(143, 8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(145, 4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(146, 5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(147, 6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(148, 14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(149, 9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100),
(150, 8, 'FLOW', 'select', 'VERTICAL\n\nHORIZONTAL', 7),
(151, 8, 'SHOWREFRESH', 'select', 'NO\n\nYES', 8),
(152, 8, 'REFRESHTEXT', 'textbox', 'REFRESH', 11),
(153, 6, 'READONLY', 'select', 'NO\n\nYES', 6),
(154, 12, 'DESCRIPTION', 'textarea', '', 10),
(155, 6, 'POPUPLABEL', 'textbox', '...', 6),
(157, 15, 'CHARACTERS', 'select', 'ALPHANUMERIC\n\nALPHA\n\nNUMERIC', 3),
(160, 2, 'WYSIWYG', 'select', 'NO\n\nYES', 11),
(161, 8, 'SIZE', 'textbox', '15', 12),
(162, 8, 'IMAGETYPE', 'select', 'FREETYPE\n\nNOFREETYPE\n\nINVISIBLE', 3),
(163, 13, 'BUTTONTYPE', 'select', 'TYPEINPUT\nTYPEBUTTON', 9),
(164, 7, 'BUTTONTYPE', 'select', 'TYPEINPUT\nTYPEBUTTON', 6),
(165, 1, 'VALIDATIONEXTRA', 'textbox', '', 6),
(166, 2, 'VALIDATIONEXTRA', 'textbox', '', 6),
(167, 14, 'VALIDATIONRULE', 'select', '//<code>\n\nreturn RSgetValidationRules();\n\n//</code>', 9),
(168, 9, 'PREFIX', 'textarea', '', 6),
(169, 13, 'PREVBUTTON', 'textbox', '//<code>\n\nreturn JText::_(\'PREV\');\n\n//</code>', 8),
(170, 41, 'NAME', 'textbox', '', 1),
(171, 41, 'COMPONENTTYPE', 'hidden', '41', 5),
(172, 41, 'NEXTBUTTON', 'textbox', '//<code>\n\nreturn JText::_(\'NEXT\');\n\n//</code>', 2),
(173, 41, 'PREVBUTTON', 'textbox', '//<code>\n\nreturn JText::_(\'PREV\');\n\n//</code>', 3),
(174, 41, 'ADDITIONALATTRIBUTES', 'textarea', '', 4),
(175, 41, 'VALIDATENEXTPAGE', 'select', 'NO\n\nYES', 5),
(176, 6, 'MINDATE', 'textbox', '', 5),
(177, 6, 'MAXDATE', 'textbox', '', 5),
(178, 6, 'DEFAULTVALUE', 'textarea', '', 2),
(179, 9, 'EMAILATTACH', 'emailattach', '', 102),
(180, 41, 'DISPLAYPROGRESS', 'select', 'NO\n\nYES', 6),
(181, 41, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\n\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\n\n <div class=\"rsformProgressContainer\">\n\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\n\n </div>\n\n</div>', 7),
(182, 0, '', 'hidden', '', 0),
(183, 13, 'DISPLAYPROGRESS', 'select', 'NO\n\nYES', 8),
(184, 13, 'DISPLAYPROGRESSMSG', 'textarea', '<div>\n\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\n\n <div class=\"rsformProgressContainer\">\n\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\n\n </div>\n\n</div>', 8);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_conditions`
--

CREATE TABLE `z0djb_rsform_conditions` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lang_code` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_condition_details`
--

CREATE TABLE `z0djb_rsform_condition_details` (
  `id` int(11) NOT NULL,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_config`
--

CREATE TABLE `z0djb_rsform_config` (
  `ConfigId` int(11) DEFAULT NULL,
  `SettingName` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `SettingValue` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_rsform_config`
--

INSERT INTO `z0djb_rsform_config` (`ConfigId`, `SettingName`, `SettingValue`) VALUES
(1, 'global.register.code', ''),
(2, 'global.debug.mode', '0'),
(3, 'global.iis', '0'),
(4, 'global.editor', '1'),
(100, 'global.codemirror', '0'),
(111, 'auto_responsive', '1'),
(112, 'auto_global', 'eAk2fidsAGKLDTlnICz5LwKeK7e3kV4+ms7iw3L4Qgr43pp7t8N1bwxkxEpvPaOs');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_emails`
--

CREATE TABLE `z0djb_rsform_emails` (
  `id` int(11) NOT NULL,
  `formId` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fromname` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `replyto` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cc` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bcc` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_forms`
--

CREATE TABLE `z0djb_rsform_forms` (
  `FormId` int(11) NOT NULL,
  `FormName` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FormLayout` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FormLayoutName` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT 1,
  `CSS` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `JS` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FormTitle` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Published` tinyint(1) NOT NULL DEFAULT 1,
  `Lang` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ReturnUrl` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT 1,
  `Thankyou` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT 1,
  `UserEmailText` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `UserEmailTo` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `UserEmailCC` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `UserEmailBCC` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `UserEmailFrom` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `UserEmailFromName` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT 1,
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AdminEmailText` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AdminEmailTo` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AdminEmailCC` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AdminEmailBCC` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AdminEmailFrom` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AdminEmailFromName` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT 1,
  `ScriptProcess` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ScriptProcess2` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ScriptDisplay` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `UserEmailScript` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AdminEmailScript` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AdditionalEmailsScript` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MetaKeywords` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Required` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '(*)',
  `ErrorMessage` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `MultipleSeparator` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT 1,
  `CSSClass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `CSSId` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `CSSAction` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `CSSAdditionalAttributes` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT 1,
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_rsform_forms`
--

INSERT INTO `z0djb_rsform_forms` (`FormId`, `FormName`, `FormLayout`, `FormLayoutName`, `FormLayoutAutogenerate`, `CSS`, `JS`, `FormTitle`, `Published`, `Lang`, `ReturnUrl`, `ShowThankyou`, `Thankyou`, `ShowContinue`, `UserEmailText`, `UserEmailTo`, `UserEmailCC`, `UserEmailBCC`, `UserEmailFrom`, `UserEmailReplyTo`, `UserEmailFromName`, `UserEmailSubject`, `UserEmailMode`, `UserEmailAttach`, `UserEmailAttachFile`, `AdminEmailText`, `AdminEmailTo`, `AdminEmailCC`, `AdminEmailBCC`, `AdminEmailFrom`, `AdminEmailReplyTo`, `AdminEmailFromName`, `AdminEmailSubject`, `AdminEmailMode`, `ScriptProcess`, `ScriptProcess2`, `ScriptDisplay`, `UserEmailScript`, `AdminEmailScript`, `AdditionalEmailsScript`, `MetaTitle`, `MetaDesc`, `MetaKeywords`, `Required`, `ErrorMessage`, `MultipleSeparator`, `TextareaNewLines`, `CSSClass`, `CSSId`, `CSSName`, `CSSAction`, `CSSAdditionalAttributes`, `AjaxValidation`, `ThemeParams`, `Keepdata`, `Backendmenu`, `ConfirmSubmission`) VALUES
(1, 'Liên hệ', '<h2>{global:formtitle}</h2>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_1_page_0\">\n	<div class=\"rsform-block rsform-block-hoten\">\n		<div class=\"formControlLabel\">{hoten:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{hoten:body}<span class=\"formValidation\">{hoten:validation}</span></div>\n		<p class=\"formDescription\">{hoten:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-dienthoai\">\n		<div class=\"formControlLabel\">{dienthoai:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{dienthoai:body}<span class=\"formValidation\">{dienthoai:validation}</span></div>\n		<p class=\"formDescription\">{dienthoai:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-email\">\n		<div class=\"formControlLabel\">{email:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{email:body}<span class=\"formValidation\">{email:validation}</span></div>\n		<p class=\"formDescription\">{email:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-noidung\">\n		<div class=\"formControlLabel\">{noidung:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{noidung:body}<span class=\"formValidation\">{noidung:validation}</span></div>\n		<p class=\"formDescription\">{noidung:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-guingay\">\n		<div class=\"formControlLabel\">{guingay:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{guingay:body}<span class=\"formValidation\">{guingay:validation}</span></div>\n		<p class=\"formDescription\">{guingay:description}</p>\n		</div>\n	</div>\n</fieldset>\n', 'responsive', 1, '', '', 'Liên hệ', 1, 'vi-VN', '', 0, '<p>Chào {HoTen:value},</p>\n\n<p>cám ơn bạn đã liên hệ với chúng tôi. Chúng tôi sẽ sớm hồi âm theo địa chỉ email {Email:value}. Cám ơn.</p>', 1, '<p>Chào {email:value},</p>\r\n<p>Chúng tôi đã nhận được yêu cầu. Chúc tôi sẽ liên hệ trong thời gian sớm theo địa chỉ email {email:value}.</p>', '', '', '', '', '', '', '', 1, 0, '', '<p>{hoTen:caption}: {hoTen:value}<br /> {diachi:caption}: {diachi:value}<br /> {dienthoai:caption}: {dienthoai:value}<br />{email:caption}: {email:value}<br /> {noidung:caption}: {noidung:value}</p>', '', '', '', '', '', '', '', 1, '', '', '', '', '', '', 0, '', '', '(*)', '<p>Bạn phải điền đầy đủ thông tin!</p>', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0),
(7, 'Đăng ký nhận tin', '<h2>{global:formtitle}</h2>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_7_page_0\">\n	<div class=\"rsform-block rsform-block-email\">\n		<div class=\"formControlLabel\">{email:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{email:body}<span class=\"formValidation\">{email:validation}</span></div>\n		<p class=\"formDescription\">{email:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-guingay\">\n		<div class=\"formControlLabel\">{guingay:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{guingay:body}<span class=\"formValidation\">{guingay:validation}</span></div>\n		<p class=\"formDescription\">{guingay:description}</p>\n		</div>\n	</div>\n</fieldset>\n', 'responsive', 1, '', '', 'Đăng ký nhận tin', 1, 'vi-VN', '', 0, '<p>Chào {HoTen:value},</p>\n\n<p>cám ơn bạn đã liên hệ với chúng tôi. Chúng tôi sẽ sớm hồi âm theo địa chỉ email {Email:value}. Cám ơn.</p>', 1, '<p>Chào {email:value},</p>\r\n<p>Chúng tôi đã nhận được yêu cầu. Chúc tôi sẽ liên hệ trong thời gian sớm theo địa chỉ email {email:value}.</p>', '', '', '', '', '', '', '', 1, 0, '', '<p>{email:caption}: {email:value}</p>', '', '', '', '', '', '', '', 1, '', '', '', '', '', '', 0, '', '', '(*)', '<p>Bạn phải điền đầy đủ thông tin!</p>', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_mappings`
--

CREATE TABLE `z0djb_rsform_mappings` (
  `id` int(11) NOT NULL,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `database` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `wheredata` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `extra` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `andor` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_posts`
--

CREATE TABLE `z0djb_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_rsform_posts`
--

INSERT INTO `z0djb_rsform_posts` (`form_id`, `enabled`, `method`, `silent`, `url`) VALUES
(1, 0, 1, 1, 'http://'),
(3, 0, 1, 1, 'http://'),
(7, 0, 1, 1, 'http://'),
(8, 0, 1, 1, 'http://'),
(9, 0, 1, 1, 'http://'),
(10, 0, 1, 1, 'http://vnexpress.net'),
(11, 0, 1, 1, 'http://');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_properties`
--

CREATE TABLE `z0djb_rsform_properties` (
  `PropertyId` int(11) NOT NULL,
  `ComponentId` int(11) NOT NULL DEFAULT 0,
  `PropertyName` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `PropertyValue` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_rsform_properties`
--

INSERT INTO `z0djb_rsform_properties` (`PropertyId`, `ComponentId`, `PropertyName`, `PropertyValue`) VALUES
(1, 1, 'NAME', 'hoten'),
(2, 1, 'CAPTION', 'Họ tên'),
(3, 1, 'REQUIRED', 'YES'),
(4, 1, 'SIZE', '70'),
(5, 1, 'MAXSIZE', ''),
(6, 1, 'VALIDATIONRULE', 'none'),
(7, 1, 'VALIDATIONMESSAGE', 'Trường bắt buộc'),
(8, 1, 'ADDITIONALATTRIBUTES', ''),
(9, 1, 'DEFAULTVALUE', ''),
(10, 1, 'DESCRIPTION', ''),
(195, 25, 'VALIDATIONMESSAGE', 'Trường bắt buộc'),
(192, 25, 'REQUIRED', 'YES'),
(193, 25, 'VALIDATIONEXTRA', ''),
(194, 25, 'VALIDATIONRULE', 'none'),
(13, 3, 'NAME', 'email'),
(14, 3, 'CAPTION', 'Email'),
(15, 3, 'REQUIRED', 'YES'),
(16, 3, 'SIZE', '70'),
(17, 3, 'MAXSIZE', ''),
(18, 3, 'VALIDATIONRULE', 'none'),
(19, 3, 'VALIDATIONMESSAGE', 'Trường bắt buộc'),
(20, 3, 'ADDITIONALATTRIBUTES', ''),
(21, 3, 'DEFAULTVALUE', ''),
(22, 3, 'DESCRIPTION', ''),
(191, 25, 'DESCRIPTION', ''),
(190, 25, 'DEFAULTVALUE', ''),
(188, 25, 'NAME', 'noidung'),
(189, 25, 'CAPTION', 'Nội dung'),
(187, 24, 'EMAILATTACH', ''),
(186, 24, 'ADDITIONALATTRIBUTES', ''),
(184, 24, 'SIZE', '70'),
(185, 24, 'MAXSIZE', ''),
(183, 24, 'VALIDATIONMESSAGE', 'Invalid Input'),
(182, 24, 'VALIDATIONRULE', 'none'),
(181, 24, 'VALIDATIONEXTRA', ''),
(180, 24, 'REQUIRED', 'YES'),
(179, 24, 'DESCRIPTION', ''),
(178, 24, 'DEFAULTVALUE', ''),
(177, 24, 'CAPTION', 'Điện thoại'),
(176, 24, 'NAME', 'dienthoai'),
(163, 1, 'EMAILATTACH', ''),
(162, 3, 'EMAILATTACH', ''),
(147, 1, 'VALIDATIONEXTRA', ''),
(148, 3, 'VALIDATIONEXTRA', ''),
(196, 25, 'COLS', '52'),
(197, 25, 'ROWS', '6'),
(198, 25, 'WYSIWYG', 'NO'),
(199, 25, 'ADDITIONALATTRIBUTES', ''),
(200, 25, 'EMAILATTACH', ''),
(395, 42, 'EMAILATTACH', ''),
(394, 42, 'ADDITIONALATTRIBUTES', ''),
(393, 42, 'BUTTONTYPE', 'TYPEINPUT'),
(392, 42, 'RESETLABEL', ''),
(391, 42, 'RESET', 'NO'),
(390, 42, 'DESCRIPTION', ''),
(389, 42, 'LABEL', 'Gửi ngay'),
(387, 42, 'NAME', 'guingay'),
(388, 42, 'CAPTION', 'Gửi ngay'),
(444, 47, 'NAME', 'email'),
(445, 47, 'CAPTION', 'Email'),
(446, 47, 'REQUIRED', 'YES'),
(447, 47, 'SIZE', '70'),
(448, 47, 'MAXSIZE', ''),
(449, 47, 'VALIDATIONRULE', 'none'),
(450, 47, 'VALIDATIONMESSAGE', 'Trường bắt buộc'),
(451, 47, 'ADDITIONALATTRIBUTES', ''),
(452, 47, 'DEFAULTVALUE', ''),
(453, 47, 'DESCRIPTION', ''),
(454, 47, 'EMAILATTACH', ''),
(455, 47, 'VALIDATIONEXTRA', ''),
(469, 49, 'EMAILATTACH', ''),
(470, 49, 'ADDITIONALATTRIBUTES', ''),
(471, 49, 'BUTTONTYPE', 'TYPEINPUT'),
(472, 49, 'RESETLABEL', ''),
(473, 49, 'RESET', 'NO'),
(474, 49, 'DESCRIPTION', ''),
(475, 49, 'LABEL', 'Gửi'),
(476, 49, 'NAME', 'guingay'),
(477, 49, 'CAPTION', 'Gửi');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_submissions`
--

CREATE TABLE `z0djb_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL,
  `FormId` int(11) NOT NULL DEFAULT 0,
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `Username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `UserId` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Lang` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_submission_columns`
--

CREATE TABLE `z0djb_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_rsform_submission_columns`
--

INSERT INTO `z0djb_rsform_submission_columns` (`FormId`, `ColumnName`, `ColumnStatic`) VALUES
(1, 'congty', 0),
(1, 'DateSubmitted', 1),
(1, 'diachi', 0),
(1, 'dienthoai', 0),
(1, 'email', 0),
(1, 'hoten', 0),
(1, 'noidung', 0),
(7, 'DateSubmitted', 1),
(7, 'email', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_submission_values`
--

CREATE TABLE `z0djb_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT 0,
  `FieldName` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FieldValue` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_rsform_translations`
--

CREATE TABLE `z0djb_rsform_translations` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `reference_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_schemas`
--

CREATE TABLE `z0djb_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_schemas`
--

INSERT INTO `z0djb_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.27');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_session`
--

CREATE TABLE `z0djb_session` (
  `session_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `guest` tinyint(4) UNSIGNED DEFAULT 1,
  `time` varchar(14) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `usertype` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_session`
--

INSERT INTO `z0djb_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('k86q5jk0e3r4l0po9dq4jsk225', 0, 1, '1763010295', '__default|a:12:{s:15:\"session.counter\";i:708;s:19:\"session.timer.start\";i:1762997324;s:18:\"session.timer.last\";i:1763010294;s:17:\"session.timer.now\";i:1763010295;s:24:\"session.client.forwarded\";s:15:\"171.244.184.213\";s:22:\"session.client.browser\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:5:\"users\";O:8:\"stdClass\":1:{s:5:\"login\";O:8:\"stdClass\":1:{s:4:\"form\";O:8:\"stdClass\":1:{s:4:\"data\";a:1:{s:6:\"return\";s:39:\"index.php?option=com_users&view=profile\";}}}}s:14:\"com_virtuemart\";O:8:\"stdClass\":2:{s:8:\"itemlist\";O:8:\"stdClass\":1:{s:5:\"limit\";s:2:\"10\";}s:5:\"login\";O:8:\"stdClass\":2:{s:5:\"limit\";s:3:\"int\";s:10:\"limitstart\";i:0;}}}}s:4:\"user\";O:5:\"JUser\":26:{s:10:\"\0*\0_errors\";a:0:{}s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:1:{i:0;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:3:\"aid\";i:0;s:3:\"gid\";i:1000;}s:13:\"session.token\";s:32:\"89dca38e6b859c97094405b2dcc363f8\";s:16:\"com_mailto.links\";a:4:{s:40:\"bf9b0609817196e2635eac0833e0f11be64aa736\";O:8:\"stdClass\":2:{s:4:\"link\";s:101:\"http://tk18974dt41.webminhthuan.vn/index.php?option=com_k2&view=item&id=120:table&Itemid=1175&lang=vi\";s:6:\"expiry\";i:1763006239;}s:40:\"f200c941ee8d067433e85d1f1b33b05eb35df059\";O:8:\"stdClass\":2:{s:4:\"link\";s:176:\"http://tk18974dt41.webminhthuan.vn/index.php?option=com_k2&view=item&id=119:sapiente-expedita-cupiditate-eleniti-provident-consequuntur-ut-minus-praesentium&Itemid=1175&lang=vi\";s:6:\"expiry\";i:1763006685;}s:40:\"c0f60939f73d0c2ffa3b7ee3e73a5fdf04f5d21e\";O:8:\"stdClass\":2:{s:4:\"link\";s:102:\"http://tk18974dt41.webminhthuan.vn/index.php?option=com_k2&view=item&id=118:chinh-sach-doi-tra&lang=vi\";s:6:\"expiry\";i:1763006616;}s:40:\"9a656cd9738a4a729bc2f80b94dd96753ffd5ed4\";O:8:\"stdClass\":2:{s:4:\"link\";s:86:\"http://tk18974dt41.webminhthuan.vn/index.php?option=com_k2&view=item&layout=item&id=57\";s:6:\"expiry\";i:1763007131;}}s:9:\"mtcaptcha\";s:6:\"6IkNC0\";s:11:\"mtcaptchaid\";s:9:\"398440300\";}__vm|a:5:{s:23:\"vmlastvisitedcategoryid\";i:1362;s:19:\"vmlastvisitedmanuid\";i:0;s:6:\"vmcart\";s:5114:\"O:8:\"stdClass\":24:{s:8:\"products\";a:1:{i:1527;O:8:\"stdClass\":50:{s:26:\"virtuemart_manufacturer_id\";a:0:{}s:4:\"slug\";s:57:\"deleniti-provident-consequuntur-ut-sapiente-1517-91255210\";s:9:\"published\";s:1:\"1\";s:27:\"virtuemart_product_price_id\";s:3:\"869\";s:21:\"virtuemart_product_id\";s:4:\"1527\";s:26:\"virtuemart_shoppergroup_id\";N;s:13:\"product_price\";s:9:\"499000.00\";s:8:\"override\";s:1:\"0\";s:22:\"product_override_price\";s:4:\"0.00\";s:14:\"product_tax_id\";s:1:\"0\";s:19:\"product_discount_id\";s:1:\"0\";s:16:\"product_currency\";s:3:\"147\";s:20:\"virtuemart_vendor_id\";s:1:\"1\";s:17:\"product_parent_id\";s:1:\"0\";s:11:\"product_sku\";s:0:\"\";s:12:\"product_name\";s:43:\"Deleniti provident consequuntur ut sapiente\";s:14:\"product_s_desc\";s:0:\"\";s:14:\"product_weight\";N;s:18:\"product_weight_uom\";N;s:14:\"product_length\";N;s:13:\"product_width\";N;s:14:\"product_height\";N;s:15:\"product_lwh_uom\";N;s:16:\"product_in_stock\";i:0;s:15:\"product_ordered\";s:1:\"0\";s:22:\"product_available_date\";s:19:\"0000-00-00 00:00:00\";s:20:\"product_availability\";N;s:13:\"product_sales\";s:1:\"0\";s:12:\"product_unit\";N;s:17:\"product_packaging\";N;s:15:\"min_order_level\";N;s:15:\"max_order_level\";N;s:19:\"virtuemart_media_id\";a:2:{i:0;s:3:\"137\";i:1;s:3:\"136\";}s:16:\"step_order_level\";N;s:5:\"image\";O:7:\"VmImage\":36:{s:16:\"media_attributes\";i:0;s:7:\"setRole\";b:0;s:9:\"file_name\";s:19:\"product-thumbnail-2\";s:14:\"file_extension\";s:3:\"jpg\";s:19:\"virtuemart_media_id\";s:3:\"137\";s:30:\"\0VmMediaHandler\0_foldersToTest\";a:2:{i:0;s:100:\"/home/tk18974dt41/domains/tk18974dt41.webminhthuan.vn/public_html/images/stories/virtuemart/product/\";i:1;s:108:\"/home/tk18974dt41/domains/tk18974dt41.webminhthuan.vn/public_html/images/stories/virtuemart/product/resized/\";}s:24:\"\0VmMediaHandler\0_actions\";a:0:{}s:26:\"\0VmMediaHandler\0_mLocation\";a:0:{}s:23:\"\0VmMediaHandler\0_hidden\";a:0:{}s:9:\"theme_url\";s:61:\"http://tk18974dt41.webminhthuan.vn/components/com_virtuemart/\";s:13:\"_translatable\";b:0;s:12:\"_tablePreFix\";s:0:\"\";s:20:\"virtuemart_vendor_id\";s:1:\"1\";s:10:\"file_title\";s:23:\"product-thumbnail-2.jpg\";s:16:\"file_description\";s:0:\"\";s:9:\"file_meta\";s:0:\"\";s:13:\"file_mimetype\";s:10:\"image/jpeg\";s:9:\"file_type\";s:7:\"product\";s:8:\"file_url\";s:57:\"images/stories/virtuemart/product/product-thumbnail-2.jpg\";s:14:\"file_url_thumb\";s:73:\"images/stories/virtuemart/product/resized/product-thumbnail-2_400x400.jpg\";s:9:\"published\";s:1:\"1\";s:20:\"file_is_downloadable\";s:1:\"0\";s:15:\"file_is_forSale\";s:1:\"0\";s:21:\"file_is_product_image\";s:1:\"0\";s:6:\"shared\";s:1:\"0\";s:11:\"file_params\";s:0:\"\";s:9:\"file_lang\";s:0:\"\";s:10:\"created_on\";s:19:\"2025-11-10 03:38:55\";s:10:\"created_by\";s:2:\"42\";s:11:\"modified_on\";s:19:\"2025-11-10 03:38:55\";s:11:\"modified_by\";s:2:\"42\";s:15:\"file_url_folder\";s:34:\"images/stories/virtuemart/product/\";s:16:\"file_path_folder\";s:34:\"images/stories/virtuemart/product/\";s:21:\"file_url_folder_thumb\";s:42:\"images/stories/virtuemart/product/resized/\";s:10:\"media_role\";s:19:\"file_is_displayable\";s:15:\"file_name_thumb\";s:27:\"product-thumbnail-2_400x400\";}s:10:\"categories\";a:1:{i:0;s:4:\"1362\";}s:22:\"virtuemart_category_id\";s:4:\"1362\";s:13:\"category_name\";N;s:4:\"link\";s:84:\"/component/virtuemart/deleniti-provident-consequuntur-ut-sapiente-1517-91255210.html\";s:9:\"packaging\";s:0:\"\";s:8:\"quantity\";i:1;s:24:\"product_price_publish_up\";s:19:\"0000-00-00 00:00:00\";s:26:\"product_price_publish_down\";s:19:\"0000-00-00 00:00:00\";s:20:\"price_quantity_start\";s:1:\"0\";s:18:\"price_quantity_end\";s:1:\"0\";s:6:\"prices\";a:1:{i:0;a:12:{s:27:\"virtuemart_product_price_id\";s:3:\"869\";s:13:\"product_price\";s:9:\"499000.00\";s:8:\"override\";s:1:\"0\";s:22:\"product_override_price\";s:4:\"0.00\";s:14:\"product_tax_id\";s:1:\"0\";s:19:\"product_discount_id\";s:1:\"0\";s:16:\"product_currency\";s:3:\"147\";s:24:\"product_price_publish_up\";s:19:\"0000-00-00 00:00:00\";s:26:\"product_price_publish_down\";s:19:\"0000-00-00 00:00:00\";s:20:\"price_quantity_start\";s:1:\"0\";s:18:\"price_quantity_end\";s:1:\"0\";s:26:\"virtuemart_shoppergroup_id\";s:1:\"0\";}}s:3:\"url\";s:72:\"/san-pham/deleniti-provident-consequuntur-ut-sapiente-1517-91255210.html\";s:12:\"customfields\";s:0:\"\";s:12:\"cart_item_id\";i:1527;s:6:\"amount\";i:1;}}s:8:\"vendorId\";i:1;s:21:\"lastVisitedCategoryId\";i:0;s:28:\"virtuemart_shipmentmethod_id\";s:1:\"1\";s:27:\"virtuemart_paymentmethod_id\";s:1:\"3\";s:25:\"automaticSelectedShipment\";b:1;s:24:\"automaticSelectedPayment\";b:1;s:12:\"order_number\";N;s:2:\"BT\";i:0;s:2:\"ST\";i:0;s:11:\"tosAccepted\";N;s:16:\"customer_comment\";s:0:\"\";s:10:\"couponCode\";s:0:\"\";s:20:\"_triesValidateCoupon\";a:0:{}s:14:\"order_language\";s:0:\"\";s:8:\"cartData\";a:10:{s:6:\"VatTax\";a:0:{}s:4:\"duty\";i:1;s:7:\"payment\";i:0;s:11:\"paymentName\";s:62:\"<span class=\"vmpayment_name\">Thanh toán khi giao hàng</span>\";s:12:\"totalProduct\";i:1;s:14:\"DBTaxRulesBill\";a:0:{}s:12:\"taxRulesBill\";a:0:{}s:14:\"DATaxRulesBill\";a:0:{}s:12:\"shipmentName\";s:47:\"<span class=\"vmshipment_name\">Giao hàng</span>\";s:5:\"vmVat\";b:1;}s:5:\"lists\";a:2:{s:6:\"shipTo\";s:0:\"\";s:6:\"billTo\";i:0;}s:14:\"pricesCurrency\";i:147;s:15:\"paymentCurrency\";s:3:\"147\";s:11:\"_inCheckOut\";b:0;s:14:\"_dataValidated\";b:0;s:12:\"_confirmDone\";b:0;s:10:\"STsameAsBT\";i:0;s:15:\"customer_number\";s:7:\"nonreg_\";}\";s:23:\"vmlastvisitedproductids\";a:2:{i:0;i:1527;i:1;i:1526;}s:21:\"vmlastproductordering\";s:12:\"product_name\";}', 0, '', ''),
('shupslffscb00romk0nmad9itv', 1, 0, '1763009457', '__default|a:9:{s:15:\"session.counter\";i:116;s:19:\"session.timer.start\";i:1762997471;s:18:\"session.timer.last\";i:1763009457;s:17:\"session.timer.now\";i:1763009457;s:24:\"session.client.forwarded\";s:15:\"171.244.184.213\";s:22:\"session.client.browser\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":13:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:5:\"vi-VN\";}s:11:\"com_modules\";O:8:\"stdClass\":3:{s:7:\"modules\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":7:{s:18:\"client_id_previous\";i:0;s:6:\"search\";s:3:\"tim\";s:6:\"access\";i:0;s:5:\"state\";s:0:\"\";s:8:\"position\";s:0:\"\";s:6:\"module\";s:0:\"\";s:8:\"language\";s:0:\"\";}s:10:\"limitstart\";i:0;s:8:\"ordercol\";s:8:\"position\";s:9:\"orderdirn\";s:3:\"asc\";}s:4:\"edit\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:2:\"id\";a:0:{}s:4:\"data\";N;}}s:3:\"add\";O:8:\"stdClass\":1:{s:6:\"module\";O:8:\"stdClass\":2:{s:12:\"extension_id\";N;s:6:\"params\";N;}}}s:11:\"com_k2items\";O:8:\"stdClass\":1:{s:10:\"limitstart\";i:0;}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";s:2:\"25\";}}s:23:\"com_k2itemsfilter_order\";s:9:\"i.created\";s:27:\"com_k2itemsfilter_order_Dir\";s:4:\"DESC\";s:23:\"com_k2itemsfilter_trash\";i:0;s:26:\"com_k2itemsfilter_featured\";s:2:\"-1\";s:26:\"com_k2itemsfilter_category\";s:2:\"21\";s:24:\"com_k2itemsfilter_author\";i:0;s:23:\"com_k2itemsfilter_state\";s:2:\"-1\";s:17:\"com_k2itemssearch\";s:0:\"\";s:14:\"com_virtuemart\";O:8:\"stdClass\":1:{s:7:\"product\";O:8:\"stdClass\":2:{s:16:\"filter_order_Dir\";s:4:\"DESC\";s:12:\"filter_order\";s:10:\"created_on\";}}}}s:4:\"user\";O:5:\"JUser\":26:{s:10:\"\0*\0_errors\";a:0:{}s:9:\"\0*\0isRoot\";b:1;s:2:\"id\";s:2:\"42\";s:4:\"name\";s:10:\"Super User\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"password\";s:34:\"$P$DxTJq4ToaO8GT4BiGlu5.vkcFWUYHa/\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"deprecated\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2013-09-15 03:23:43\";s:13:\"lastvisitDate\";s:19:\"2025-11-12 13:41:09\";s:10:\"activation\";s:1:\"0\";s:6:\"params\";s:92:\"{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":6:{s:11:\"admin_style\";s:0:\"\";s:14:\"admin_language\";s:0:\"\";s:8:\"language\";s:0:\"\";s:6:\"editor\";s:0:\"\";s:8:\"helpsite\";s:0:\"\";s:8:\"timezone\";s:0:\"\";}}s:14:\"\0*\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\0*\0_authLevels\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:3:\"aid\";i:0;s:3:\"gid\";i:1000;}s:13:\"session.token\";s:32:\"ae6c47550f04350bc144f6f7672130bc\";}__wf|a:1:{s:13:\"session.token\";s:32:\"fe79aac173afbbaa4a87ba9746796046\";}', 42, 'admin', ''),
('0j82fd1gfivskbcr0nui9qeodj', 0, 1, '1763009221', '__default|a:9:{s:15:\"session.counter\";i:37;s:19:\"session.timer.start\";i:1763008784;s:18:\"session.timer.last\";i:1763009219;s:17:\"session.timer.now\";i:1763009221;s:24:\"session.client.forwarded\";s:14:\"104.28.119.137\";s:22:\"session.client.browser\";s:135:\"Mozilla/5.0 (iPhone; CPU iPhone OS 18_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Mobile/15E148 Safari/604.1\";s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":2:{s:5:\"users\";O:8:\"stdClass\":1:{s:5:\"login\";O:8:\"stdClass\":1:{s:4:\"form\";O:8:\"stdClass\":1:{s:4:\"data\";a:1:{s:6:\"return\";s:39:\"index.php?option=com_users&view=profile\";}}}}s:14:\"com_virtuemart\";O:8:\"stdClass\":2:{s:5:\"login\";O:8:\"stdClass\":2:{s:5:\"limit\";s:3:\"int\";s:10:\"limitstart\";i:0;}s:8:\"itemlist\";O:8:\"stdClass\":1:{s:5:\"limit\";i:60;}}}}s:4:\"user\";O:5:\"JUser\":26:{s:10:\"\0*\0_errors\";a:0:{}s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:1:{i:0;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:3:\"aid\";i:0;s:3:\"gid\";i:1000;}s:13:\"session.token\";s:32:\"b97f6b9c440583e58ca88bb4e6b3f7ac\";}__vm|a:4:{s:6:\"vmcart\";s:1031:\"O:8:\"stdClass\":24:{s:8:\"products\";a:0:{}s:8:\"vendorId\";i:1;s:21:\"lastVisitedCategoryId\";i:0;s:28:\"virtuemart_shipmentmethod_id\";i:0;s:27:\"virtuemart_paymentmethod_id\";s:1:\"3\";s:25:\"automaticSelectedShipment\";b:0;s:24:\"automaticSelectedPayment\";b:1;s:12:\"order_number\";N;s:2:\"BT\";i:0;s:2:\"ST\";i:0;s:11:\"tosAccepted\";N;s:16:\"customer_comment\";s:0:\"\";s:10:\"couponCode\";s:0:\"\";s:20:\"_triesValidateCoupon\";a:0:{}s:14:\"order_language\";s:0:\"\";s:8:\"cartData\";a:10:{s:6:\"VatTax\";a:0:{}s:4:\"duty\";i:1;s:7:\"payment\";i:0;s:11:\"paymentName\";s:62:\"<span class=\"vmpayment_name\">Thanh toán khi giao hàng</span>\";s:12:\"totalProduct\";i:0;s:14:\"DBTaxRulesBill\";a:0:{}s:12:\"taxRulesBill\";a:0:{}s:14:\"DATaxRulesBill\";a:0:{}s:12:\"shipmentName\";s:33:\"Chưa chọn cách vận chuyển\";s:5:\"vmVat\";b:1;}s:5:\"lists\";a:2:{s:6:\"shipTo\";s:0:\"\";s:6:\"billTo\";i:0;}s:14:\"pricesCurrency\";i:147;s:15:\"paymentCurrency\";s:3:\"147\";s:11:\"_inCheckOut\";b:0;s:14:\"_dataValidated\";b:0;s:12:\"_confirmDone\";b:0;s:10:\"STsameAsBT\";i:0;s:15:\"customer_number\";s:7:\"nonreg_\";}\";s:23:\"vmlastvisitedcategoryid\";i:0;s:19:\"vmlastvisitedmanuid\";i:0;s:23:\"vmlastvisitedproductids\";a:1:{i:0;i:1517;}}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_template_styles`
--

CREATE TABLE `z0djb_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `home` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_template_styles`
--

INSERT INTO `z0djb_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(1, 'rhuk_milkyway', 0, '0', 'Milkyway - Default', '{\"colorVariation\":\"blue\",\"backgroundVariation\":\"blue\",\"widthStyle\":\"fmax\"}'),
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}'),
(116, 'ja_social', 0, '1', 'JA_Social- Default', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_updates`
--

CREATE TABLE `z0djb_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `categoryid` int(11) DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT 0,
  `version` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Available Updates';

--
-- Dumping data for table `z0djb_updates`
--

INSERT INTO `z0djb_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(315, 6, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(316, 6, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(317, 6, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(318, 6, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(319, 6, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(320, 6, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(321, 6, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(323, 6, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(324, 6, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(325, 6, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(326, 6, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(327, 6, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(328, 6, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.14.2', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(329, 6, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(330, 6, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(331, 6, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(332, 6, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(333, 6, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(334, 6, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(335, 6, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(336, 6, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(337, 6, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(338, 6, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(339, 6, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(340, 6, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(341, 6, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(342, 6, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(343, 6, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(344, 6, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(345, 6, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(346, 6, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(347, 6, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(348, 6, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(349, 6, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(350, 6, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(351, 6, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(352, 6, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(353, 6, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(354, 6, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(355, 6, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(356, 6, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(357, 6, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(358, 6, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(359, 6, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(360, 6, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(361, 6, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(362, 6, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(363, 6, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(364, 6, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(365, 6, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(366, 6, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(367, 6, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.14.2', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(368, 6, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(369, 6, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(370, 6, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(371, 6, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(372, 6, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(373, 6, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(374, 6, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(375, 6, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_update_categories`
--

CREATE TABLE `z0djb_update_categories` (
  `categoryid` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` int(11) DEFAULT 0,
  `updatesite` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Update Categories';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_update_sites`
--

CREATE TABLE `z0djb_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Update Sites';

--
-- Dumping data for table `z0djb_update_sites`
--

INSERT INTO `z0djb_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 1379287699),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1382573800),
(6, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 0, 1382573800),
(7, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1', 0, 1379219808),
(9, 'K2 Updates', 'extension', 'http://getk2.org/update.xml', 0, 1387600034),
(11, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 0, 1425961319),
(12, 'jQuery Easy auto updater', 'extension', 'EN+WbBcIcM1KkjWgLe4ZDHRaxy3N9L46dY++o/GQ4f62nqJfPh+tIHyJvQEN5UGC', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_update_sites_extensions`
--

CREATE TABLE `z0djb_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `z0djb_update_sites_extensions`
--

INSERT INTO `z0djb_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(6, 10121),
(7, 10124),
(9, 10158),
(11, 600),
(12, 10240);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_usergroups`
--

CREATE TABLE `z0djb_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_usergroups`
--

INSERT INTO `z0djb_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 12, 'Public'),
(2, 1, 10, 11, 'Registered'),
(6, 1, 6, 7, 'Manager'),
(8, 1, 2, 3, 'Super Users');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_users`
--

CREATE TABLE `z0djb_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `usertype` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_users`
--

INSERT INTO `z0djb_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(42, 'Super User', 'admin', 'admin@admin.com', '$P$DxTJq4ToaO8GT4BiGlu5.vkcFWUYHa/', 'deprecated', 0, 1, '2013-09-15 03:23:43', '2025-11-13 01:31:21', '0', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0),
(59, 'Quản trị', 'quantri', 'quantri@quantri.com', 'dcaa3b60eec2c6758e034391e2e05612', '', 0, 1, '2017-07-19 03:43:54', '2025-04-26 04:37:38', '0', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"Asia\\/Ho_Chi_Minh\"}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_user_notes`
--

CREATE TABLE `z0djb_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_user_profiles`
--

CREATE TABLE `z0djb_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `profile_value` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Simple user profile storage table';

--
-- Dumping data for table `z0djb_user_profiles`
--

INSERT INTO `z0djb_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(59, 'profile.website', '\"\"', 8),
(59, 'profile.phone', '\"\"', 7),
(59, 'profile.postal_code', '\"\"', 6),
(59, 'profile.country', '\"\"', 5),
(59, 'profile.region', '\"\"', 4),
(59, 'profile.city', '\"\"', 3),
(59, 'profile.address2', '\"\"', 2),
(59, 'profile.address1', '\"\"', 1),
(59, 'profile.favoritebook', '\"\"', 9),
(59, 'profile.aboutme', '\"\"', 10),
(59, 'profile.dob', '\"\"', 11);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_user_usergroup_map`
--

CREATE TABLE `z0djb_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to j1d880_users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to j1d880_usergroups.id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_user_usergroup_map`
--

INSERT INTO `z0djb_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8),
(59, 8);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_viewlevels`
--

CREATE TABLE `z0djb_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_viewlevels`
--

INSERT INTO `z0djb_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,8]'),
(4, 'Customer Access Level', 3, '[6]');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_adminmenuentries`
--

CREATE TABLE `z0djb_virtuemart_adminmenuentries` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `module_id` tinyint(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(11) UNSIGNED NOT NULL DEFAULT 0,
  `name` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `link` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `depends` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `tooltip` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `view` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `task` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Administration Menu Items';

--
-- Dumping data for table `z0djb_virtuemart_adminmenuentries`
--

INSERT INTO `z0djb_virtuemart_adminmenuentries` (`id`, `module_id`, `parent_id`, `name`, `link`, `depends`, `icon_class`, `ordering`, `published`, `tooltip`, `view`, `task`) VALUES
(1, 1, 0, 'COM_VIRTUEMART_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_camera', 1, 1, '', 'category', ''),
(2, 1, 0, 'COM_VIRTUEMART_PRODUCT_S', '', '', 'vmicon vmicon-16-camera', 2, 1, '', 'product', ''),
(3, 1, 0, 'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S', '', '', 'vmicon vmicon-16-document_move', 5, 1, '', 'custom', ''),
(4, 1, 0, 'COM_VIRTUEMART_PRODUCT_INVENTORY', '', '', 'vmicon vmicon-16-price_watch', 7, 1, '', 'inventory', ''),
(5, 1, 0, 'COM_VIRTUEMART_CALC_S', '', '', 'vmicon vmicon-16-calculator', 8, 1, '', 'calc', ''),
(6, 1, 0, 'COM_VIRTUEMART_REVIEW_RATE_S', '', '', 'vmicon vmicon-16-comments', 9, 1, '', 'ratings', ''),
(7, 2, 0, 'COM_VIRTUEMART_ORDER_S', '', '', 'vmicon vmicon-16-page_white_stack', 1, 1, '', 'orders', ''),
(8, 2, 0, 'COM_VIRTUEMART_COUPON_S', '', '', 'vmicon vmicon-16-shopping', 10, 1, '', 'coupon', ''),
(9, 2, 0, 'COM_VIRTUEMART_REPORT', '', '', 'vmicon vmicon-16-to_do_list_cheked_1', 3, 1, '', 'report', ''),
(10, 2, 0, 'COM_VIRTUEMART_USER_S', '', '', 'vmicon vmicon-16-user', 4, 1, '', 'user', ''),
(11, 2, 0, 'COM_VIRTUEMART_SHOPPERGROUP_S', '', '', 'vmicon vmicon-16-user-group', 5, 1, '', 'shoppergroup', ''),
(12, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_S', '', '', 'vmicon vmicon-16-wrench_orange', 1, 1, '', 'manufacturer', ''),
(13, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_wrench', 2, 1, '', 'manufacturercategories', ''),
(14, 4, 0, 'COM_VIRTUEMART_STORE', '', '', 'vmicon vmicon-16-reseller_account_template', 1, 1, '', 'user', 'editshop'),
(15, 4, 0, 'COM_VIRTUEMART_MEDIA_S', '', '', 'vmicon vmicon-16-pictures', 2, 1, '', 'media', ''),
(16, 4, 0, 'COM_VIRTUEMART_SHIPMENTMETHOD_S', '', '', 'vmicon vmicon-16-lorry', 3, 1, '', 'shipmentmethod', ''),
(17, 4, 0, 'COM_VIRTUEMART_PAYMENTMETHOD_S', '', '', 'vmicon vmicon-16-creditcards', 4, 1, '', 'paymentmethod', ''),
(18, 5, 0, 'COM_VIRTUEMART_CONFIGURATION', '', '', 'vmicon vmicon-16-config', 1, 1, '', 'config', ''),
(19, 5, 0, 'COM_VIRTUEMART_USERFIELD_S', '', '', 'vmicon vmicon-16-participation_rate', 2, 1, '', 'userfields', ''),
(20, 5, 0, 'COM_VIRTUEMART_ORDERSTATUS_S', '', '', 'vmicon vmicon-16-orderstatus', 3, 1, '', 'orderstatus', ''),
(21, 5, 0, 'COM_VIRTUEMART_CURRENCY_S', '', '', 'vmicon vmicon-16-coins', 5, 1, '', 'currency', ''),
(22, 5, 0, 'COM_VIRTUEMART_COUNTRY_S', '', '', 'vmicon vmicon-16-globe', 6, 1, '', 'country', ''),
(23, 11, 0, 'COM_VIRTUEMART_MIGRATION_UPDATE', '', '', 'vmicon vmicon-16-installer_box', 1, 1, '', 'updatesmigration', ''),
(24, 11, 0, 'COM_VIRTUEMART_ABOUT', '', '', 'vmicon vmicon-16-info', 2, 1, '', 'about', ''),
(25, 11, 0, 'COM_VIRTUEMART_HELP_TOPICS', 'http://docs.virtuemart.net/', '', 'vmicon vmicon-16-help', 4, 1, '', '', ''),
(26, 11, 0, 'COM_VIRTUEMART_COMMUNITY_FORUM', 'http://forum.virtuemart.net/', '', 'vmicon vmicon-16-reseller_programm', 6, 1, '', '', ''),
(27, 11, 0, 'COM_VIRTUEMART_STATISTIC_SUMMARY', '', '', 'vmicon vmicon-16-info', 1, 1, '', 'virtuemart', ''),
(28, 77, 0, 'COM_VIRTUEMART_USER_GROUP_S', '', '', 'vmicon vmicon-16-user', 2, 1, '', 'usergroups', '');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_calcs`
--

CREATE TABLE `z0djb_virtuemart_calcs` (
  `virtuemart_calc_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Belongs to vendor',
  `calc_jplugin_id` int(11) NOT NULL DEFAULT 0,
  `calc_name` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` char(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` char(16) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` char(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT 0.0000 COMMENT 'The Amount',
  `calc_currency` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT 0,
  `calc_params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_calcs`
--

INSERT INTO `z0djb_virtuemart_calcs` (`virtuemart_calc_id`, `virtuemart_vendor_id`, `calc_jplugin_id`, `calc_name`, `calc_descr`, `calc_kind`, `calc_value_mathop`, `calc_value`, `calc_currency`, `calc_shopper_published`, `calc_vendor_published`, `publish_up`, `publish_down`, `for_override`, `calc_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 0, 'Chiết khấu', 'Chiết khấu', 'DATax', '-', '0.0000', 147, 0, 0, '2010-02-21 00:00:00', '0000-00-00 00:00:00', 0, '', 1, 0, 1, '0000-00-00 00:00:00', 0, '2014-06-28 02:12:26', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_calc_categories`
--

CREATE TABLE `z0djb_virtuemart_calc_categories` (
  `id` mediumint(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_category_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_calc_countries`
--

CREATE TABLE `z0djb_virtuemart_calc_countries` (
  `id` mediumint(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_calc_manufacturers`
--

CREATE TABLE `z0djb_virtuemart_calc_manufacturers` (
  `id` mediumint(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_manufacturer_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_calc_shoppergroups`
--

CREATE TABLE `z0djb_virtuemart_calc_shoppergroups` (
  `id` mediumint(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_calc_shoppergroups`
--

INSERT INTO `z0djb_virtuemart_calc_shoppergroups` (`id`, `virtuemart_calc_id`, `virtuemart_shoppergroup_id`) VALUES
(1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_calc_states`
--

CREATE TABLE `z0djb_virtuemart_calc_states` (
  `id` mediumint(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_state_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_categories`
--

CREATE TABLE `z0djb_virtuemart_categories` (
  `virtuemart_category_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `category_template` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_layout` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `category_product_layout` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `products_per_row` tinyint(2) DEFAULT NULL,
  `limit_list_step` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `limit_list_initial` smallint(1) UNSIGNED DEFAULT NULL,
  `hits` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `metarobot` char(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `metaauthor` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `ordering` int(2) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Product Categories are stored here';

--
-- Dumping data for table `z0djb_virtuemart_categories`
--

INSERT INTO `z0djb_virtuemart_categories` (`virtuemart_category_id`, `virtuemart_vendor_id`, `category_template`, `category_layout`, `category_product_layout`, `products_per_row`, `limit_list_step`, `limit_list_initial`, `hits`, `metarobot`, `metaauthor`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1362, 1, '0', '0', '0', NULL, '0', 0, 0, '', '', 0, 0, 1, '2025-11-10 03:44:47', 42, '2025-11-10 03:44:47', 42, '0000-00-00 00:00:00', 0),
(1381, 1, '0', '0', '0', NULL, '0', 0, 0, '', '', 0, 0, 1, '2025-11-12 11:58:56', 42, '2025-11-12 11:58:56', 42, '0000-00-00 00:00:00', 0),
(1380, 1, '0', '0', '0', NULL, '0', 0, 0, '', '', 0, 0, 1, '2025-11-12 11:58:56', 42, '2025-11-12 11:58:56', 42, '0000-00-00 00:00:00', 0),
(1382, 1, '0', '0', '0', NULL, '0', 0, 0, '', '', 0, 0, 1, '2025-11-12 11:58:56', 42, '2025-11-12 11:58:56', 42, '0000-00-00 00:00:00', 0),
(1383, 1, '0', '0', '0', NULL, '0', 0, 0, '', '', 0, 0, 1, '2025-11-12 11:58:56', 42, '2025-11-12 11:58:56', 42, '0000-00-00 00:00:00', 0),
(1385, 1, '0', '0', '0', NULL, '0', 0, 0, '', '', 0, 0, 1, '2025-11-13 01:34:21', 42, '2025-11-13 01:34:21', 42, '0000-00-00 00:00:00', 0),
(1386, 1, '0', '0', '0', NULL, '0', 0, 0, '', '', 0, 0, 1, '2025-11-13 01:34:21', 42, '2025-11-13 01:34:21', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_categories_vi_vn`
--

CREATE TABLE `z0djb_virtuemart_categories_vi_vn` (
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL,
  `category_name` char(180) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `category_description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `metadesc` varchar(400) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `metakey` varchar(400) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customtitle` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` char(192) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_categories_vi_vn`
--

INSERT INTO `z0djb_virtuemart_categories_vi_vn` (`virtuemart_category_id`, `category_name`, `category_description`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1362, 'Tất cả sản phẩm', '', '', '', '', 'tat-ca-san-pham'),
(1386, 'Danh mục mẫu 1-2', '', '', '', '', 'danh-muc-mau-1-2'),
(1385, 'Danh mục mẫu 1-1', '', '', '', '', 'danh-muc-mau-1-1'),
(1383, 'Danh mục mẫu 4', '', '', '', '', 'danh-muc-mau-4'),
(1382, 'Danh mục mẫu 3', '', '', '', '', 'danh-muc-mau-3'),
(1381, 'Danh mục mẫu 2', '', '', '', '', 'danh-muc-mau-2'),
(1380, 'Danh mục mẫu 1', '', '', '', '', 'danh-muc-mau-1');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_category_categories`
--

CREATE TABLE `z0djb_virtuemart_category_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_parent_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `category_child_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Category child-parent relation list';

--
-- Dumping data for table `z0djb_virtuemart_category_categories`
--

INSERT INTO `z0djb_virtuemart_category_categories` (`id`, `category_parent_id`, `category_child_id`, `ordering`) VALUES
(1357, 0, 1362, 0),
(1381, 1380, 1386, 0),
(1380, 1380, 1385, 0),
(1378, 1362, 1383, 0),
(1377, 1362, 1382, 0),
(1376, 1362, 1381, 0),
(1375, 1362, 1380, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_category_medias`
--

CREATE TABLE `z0djb_virtuemart_category_medias` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_category_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_configs`
--

CREATE TABLE `z0djb_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) UNSIGNED NOT NULL,
  `config` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Holds configuration settings';

--
-- Dumping data for table `z0djb_virtuemart_configs`
--

INSERT INTO `z0djb_virtuemart_configs` (`virtuemart_config_id`, `config`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'shop_is_offline=s:1:\"0\";|offline_message=czo3MzoiT3VyIFNob3AgaXMgY3VycmVudGx5IGRvd24gZm9yIG1haW50ZW5hbmNlLiBQbGVhc2UgY2hlY2sgYmFjayBhZ2FpbiBzb29uLiI7|use_as_catalog=s:1:\"0\";|currency_converter_module=s:14:\"convertECB.php\";|order_mail_html=s:1:\"2\";|useSSL=s:1:\"0\";|dangeroustools=s:1:\"0\";|debug_enable=s:4:\"none\";|google_jquery=s:1:\"0\";|multix=s:4:\"none\";|usefancy=s:1:\"1\";|jchosen=s:1:\"1\";|pdf_button_enable=s:1:\"1\";|show_emailfriend=s:1:\"0\";|show_printicon=s:1:\"1\";|show_out_of_stock_products=s:1:\"1\";|coupons_enable=s:1:\"1\";|show_uncat_child_products=s:1:\"0\";|coupons_default_expire=s:3:\"1,Y\";|weight_unit_default=s:2:\"KG\";|lwh_unit_default=s:1:\"M\";|showReviewFor=s:4:\"none\";|reviewMode=s:4:\"none\";|showRatingFor=s:4:\"none\";|ratingMode=s:4:\"none\";|reviews_autopublish=s:1:\"0\";|reviews_minimum_comment_length=s:3:\"100\";|reviews_maximum_comment_length=s:4:\"2000\";|vmtemplate=s:7:\"default\";|categorytemplate=s:7:\"default\";|showCategory=s:1:\"0\";|categorylayout=s:1:\"0\";|categories_per_row=s:2:\"60\";|productlayout=s:1:\"0\";|products_per_row=s:2:\"60\";|vmlayout=s:1:\"0\";|show_store_desc=s:1:\"1\";|show_categories=s:1:\"1\";|homepage_categories_per_row=s:1:\"8\";|homepage_products_per_row=s:1:\"3\";|show_featured=s:1:\"0\";|featured_products_rows=s:1:\"1\";|show_topTen=s:1:\"0\";|topTen_products_rows=s:1:\"1\";|show_recent=s:1:\"0\";|recent_products_rows=s:1:\"1\";|show_latest=s:1:\"0\";|latest_products_rows=s:1:\"1\";|assets_general_path=s:33:\"components/com_virtuemart/assets/\";|media_category_path=s:35:\"images/stories/virtuemart/category/\";|media_product_path=s:34:\"images/stories/virtuemart/product/\";|media_manufacturer_path=s:39:\"images/stories/virtuemart/manufacturer/\";|media_vendor_path=s:33:\"images/stories/virtuemart/vendor/\";|forSale_path_thumb=s:42:\"images/stories/virtuemart/forSale/resized/\";|img_resize_enable=s:1:\"1\";|img_width=s:3:\"400\";|img_height=s:3:\"400\";|no_image_set=s:11:\"noimage.gif\";|no_image_found=s:11:\"warning.png\";|browse_orderby_field=s:14:\"`p`.created_on\";|browse_orderby_fields=a:3:{i:0;s:12:\"product_name\";i:1;s:14:\"`p`.created_on\";i:2;s:13:\"product_price\";}|browse_search_fields=a:1:{i:0;s:12:\"product_name\";}|show_prices=s:1:\"1\";|price_show_packaging_pricelabel=s:1:\"0\";|show_tax=s:1:\"0\";|basePrice=s:1:\"0\";|basePriceText=s:1:\"0\";|basePriceRounding=s:2:\"-1\";|variantModification=s:1:\"0\";|variantModificationText=s:1:\"0\";|variantModificationRounding=s:2:\"-1\";|basePriceVariant=s:1:\"0\";|basePriceVariantText=s:1:\"0\";|basePriceVariantRounding=s:2:\"-1\";|basePriceWithTax=s:1:\"0\";|basePriceWithTaxText=s:1:\"0\";|basePriceWithTaxRounding=s:2:\"-1\";|discountedPriceWithoutTax=s:1:\"0\";|discountedPriceWithoutTaxText=s:1:\"0\";|discountedPriceWithoutTaxRounding=s:2:\"-1\";|salesPriceWithDiscount=s:1:\"0\";|salesPriceWithDiscountText=s:1:\"0\";|salesPriceWithDiscountRounding=s:1:\"2\";|salesPrice=s:1:\"1\";|salesPriceText=s:1:\"1\";|salesPriceRounding=s:2:\"-1\";|priceWithoutTax=s:1:\"0\";|priceWithoutTaxText=s:1:\"0\";|priceWithoutTaxRounding=s:2:\"-1\";|discountAmount=s:1:\"0\";|discountAmountText=s:1:\"0\";|discountAmountRounding=s:2:\"-1\";|taxAmount=s:1:\"0\";|taxAmountText=s:1:\"0\";|taxAmountRounding=s:2:\"-1\";|addtocart_popup=s:1:\"0\";|addtocart_display=s:1:\"1\";|flytocart_display=s:1:\"0\";|addtocart_onestep=s:1:\"1\";|sociallogin_display=s:1:\"0\";|description_display=s:1:\"0\";|stars_display=s:1:\"0\";|check_stock=s:1:\"0\";|automatic_payment=s:1:\"1\";|automatic_shipment=s:1:\"1\";|agree_to_tos_onorder=s:1:\"0\";|oncheckout_show_legal_info=s:1:\"0\";|oncheckout_show_register=s:1:\"0\";|oncheckout_show_steps=s:1:\"0\";|oncheckout_show_register_text=s:47:\"COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER\";|inv_os=a:3:{i:0;s:1:\"P\";i:1;s:1:\"U\";i:2;s:1:\"S\";}|email_os_s=a:1:{i:0;s:2:\"-1\";}|email_os_v=a:3:{i:0;s:1:\"P\";i:1;s:1:\"U\";i:2;s:1:\"S\";}|seo_disabled=s:1:\"0\";|seo_translate=s:1:\"0\";|seo_use_id=s:1:\"0\";|sctime=d:1762760900.689369;|vmlang=s:5:\"vi_vn\";|virtuemart_config_id=i:1;|enable_content_plugin=s:1:\"0\";|enableEnglish=s:1:\"1\";|useVendorEmail=s:1:\"1\";|pdf_icon=s:1:\"0\";|recommend_unauth=s:1:\"0\";|ask_question=s:1:\"0\";|asks_minimum_comment_length=s:2:\"50\";|asks_maximum_comment_length=s:4:\"2000\";|product_navigation=s:1:\"0\";|display_stock=s:1:\"0\";|latest_products_days=s:3:\"999\";|latest_products_orderBy=s:10:\"created_on\";|lstockmail=s:1:\"0\";|stockhandle=s:4:\"none\";|rised_availability=s:0:\"\";|image=s:0:\"\";|show_manufacturers=s:1:\"0\";|manufacturer_per_row=s:1:\"3\";|mediaLimit=s:2:\"25\";|llimit_init_BE=s:2:\"25\";|pagseq=s:0:\"\";|llimit_init_FE=s:2:\"60\";|pagseq_1=s:0:\"\";|pagseq_2=s:0:\"\";|pagseq_3=s:0:\"\";|pagseq_4=s:0:\"\";|pagseq_5=s:0:\"\";|feed_cat_published=s:1:\"0\";|feed_cat_show_images=s:1:\"0\";|feed_cat_show_prices=s:1:\"1\";|feed_cat_show_description=s:1:\"1\";|feed_cat_description_type=s:14:\"product_s_desc\";|feed_cat_max_text_length=s:3:\"500\";|forSale_path=s:20:\"chukysovmshop///////\";|feed_latest_published=s:1:\"0\";|feed_latest_nb=s:1:\"5\";|feed_topten_published=s:1:\"0\";|feed_topten_nb=s:1:\"5\";|feed_featured_published=s:1:\"0\";|feed_featured_nb=s:1:\"5\";|feed_home_show_images=s:1:\"0\";|feed_home_show_prices=s:1:\"1\";|feed_home_show_description=s:1:\"1\";|feed_home_description_type=s:14:\"product_s_desc\";|feed_home_max_text_length=s:3:\"500\";|css=s:1:\"1\";|jquery=s:1:\"1\";|jprice=s:1:\"1\";|jsite=s:1:\"1\";|askprice=s:1:\"0\";|rappenrundung=s:1:\"0\";|roundindig=s:1:\"0\";|cVarswT=s:1:\"0\";|unitPrice=s:1:\"0\";|unitPriceText=s:1:\"0\";|unitPriceRounding=s:1:\"2\";|popup_rel=s:1:\"0\";|oncheckout_opc=s:1:\"1\";|oncheckout_only_registered=s:1:\"0\";|oncheckout_show_images=s:1:\"1\";|vmlang_js=s:1:\"1\";|prd_brws_orderby_dir=s:4:\"DESC\";|browse_cat_orderby_field=s:14:\"`p`.created_on\";|cat_brws_orderby_dir=s:4:\"DESC\";|seo_sufix=s:0:\"\";|task=s:4:\"save\";|option=s:14:\"com_virtuemart\";|view=s:6:\"config\";|12f6769cecdf4d9d51a5b473a6137d81=s:1:\"1\";|7d5ed39aaecd6f475c2d9ff2c959dbfd=s:1:\"1\";|f44abdc58441a1af7981db82902b147d=s:1:\"1\";|57f873cc4d7b4552b2224d25a0bc5f1f=s:1:\"1\";|6d098b518207350424d74d99f72b307d=s:1:\"1\";|22d86344b9ab02b4025bbb400650f06c=s:1:\"1\";|719997cf5a5c59b60bc73359f8f59f35=s:1:\"1\";|178a286db9bba13506c2d28012dda710=s:1:\"1\";|f7c389233c360e45c5f198309967d1a3=s:1:\"1\";|2f14c245581782dfd0903e90a742eb55=s:1:\"1\";|c03d7c6754635ff952e04802a7b622e2=s:1:\"1\";|4895d525fb7d5b12c3878dbfe2a6f85a=s:1:\"1\";|645142ac62c7156b0f59162fb408b6c4=s:1:\"1\";|d95f9766d9a732866a727b4085ba3ba2=s:1:\"1\";|45bba896ecf2c24d700942d5cf7de076=s:1:\"1\";|d7dd1b458fae19e61eb8b84328485059=s:1:\"1\";|0f00dd679bbaa2646f50f34a2a9787ad=s:1:\"1\";|df070dc8314d7a34960396ef6c43f1c5=s:1:\"1\";|1fc3bdac965c21481190778d401ddc3b=s:1:\"1\";|13544063c4075debd5c5693f4b677bbb=s:1:\"1\";|fefae372df48e74ed0c3201fa2662938=s:1:\"1\";|42095956567316801d9e9d400f62d457=s:1:\"1\";|35ac43dddd53a255d3732099c21c1308=s:1:\"1\";|7623f312788c1eae317b7bc2706f119c=s:1:\"1\";|83448803d2e3e5a798eb3e9db2439364=s:1:\"1\";|fbe141618f559f126d2df9b5b0dfc7ca=s:1:\"1\";|49cf39ae1f286e386c3909d5ad3d8c7e=s:1:\"1\";|5913192cee0b261adc8ae09926875f4e=s:1:\"1\";|3e565a727f654f8f8256961d6e86d49d=s:1:\"1\";|3ea0739c92d40669c3f10b07a152025d=s:1:\"1\";|5ad815ce40c1d01360764244af659de1=s:1:\"1\";|f6ac0879e4c32ae2fabf7110565c2d49=s:1:\"1\";|9f46425f7dea5206e875377df642bd5a=s:1:\"1\";|33808e53c392e88097c695599c125693=s:1:\"1\";|34d35dbbe6e831ca0e41a2b25adacc5e=s:1:\"1\";|97efdc520a5d04bc5f758dc7ba21b290=s:1:\"1\";|0ceafb0600537dfef515c463e8f05981=s:1:\"1\";|6976c5338117088511c9b33d17ece0d6=s:1:\"1\";|3a21d6992051aaf39932bf07c57377f9=s:1:\"1\";|fc073e2303c075a4980b36cd83a377f2=s:1:\"1\";|3ac9673f081be2fa1aa26b5bb9d2f297=s:1:\"1\";|f1c39aa992729b392d2fc919a6e4914b=s:1:\"1\";|15ea59eb28a55abaeebb1cd1cd673cbf=s:1:\"1\";|08542b7156618d4c2f9e31828d7d50d5=s:1:\"1\";|c2c9c4f16f24cde7cea30d1e83375d9b=s:1:\"1\";|568cc61f3528d18c8bf85b71af72e1d4=s:1:\"1\";|147c86c32b1fb18cff27aa51d4efd990=s:1:\"1\";|c01e15c222095994bef1b0e4cdd6296b=s:1:\"1\";|97c664fee514acb09b83df0df1ea8ee1=s:1:\"1\";|2f8348518a01ed0a30f597534ae831b6=s:1:\"1\";|c73aae98a405f4e37f941eb468ae44b7=s:1:\"1\";|234473ce7758713a25d8757cda27aa41=s:1:\"1\";|6c762e859fe88ab18fd5501c1cd53303=s:1:\"1\";|a975cad90762b20ad73ac02e69c54985=s:1:\"1\";|dc4c2d006f47a5d1ffdf3651df828b6e=s:1:\"1\";|ffb37641960f9814063d6e629ed09e4a=s:1:\"1\";|5816527bc25be2b1a56e62f24627f3df=s:1:\"1\";|b72f266318b7a54b0873e4e8fb632a46=s:1:\"1\";|8fcdc9b678541b25a7eff28a6b2636de=s:1:\"1\";|438cf4d4a77d556ef2fe0bad317b866d=s:1:\"1\";|8288e0da0d9dd67c1969819e166c07e7=s:1:\"1\";|bc052eaeacf4661e083d160eb7e2d698=s:1:\"1\";|5a88cae9fb9dd1bc4d57aabd2c3ef97a=s:1:\"1\";|bce7d142da6f3179f315e7dfbe8cb638=s:1:\"1\";|0c2faee00f8a8c8c360d4165c1ac7021=s:1:\"1\";|c3d750f1137ba9dfbbc68132e4988de5=s:1:\"1\";|660d15ce542cf994db9bf8eabef506b4=s:1:\"1\";|6a9980a982f4a21bdf19e9d61726ae47=s:1:\"1\";|0fb9b139a674607b9feee36420d3bcd7=s:1:\"1\";|ba70e4e33f2738d1dddada793fa51495=s:1:\"1\";|4f31370ee8231cb8c5e3f0e8753c888c=s:1:\"1\";|1139e6d3cb0f52bef582db9c6b90f94a=s:1:\"1\";|43d94e1af02cc3509bad61414f1a5fe6=s:1:\"1\";|e128ab9ff0df89c1109c131a97951e49=s:1:\"1\";|icon_display=s:1:\"0\";|973b783a67368215e44d7ab63a3dfdc1=s:1:\"1\";|73b0fe46fc01562c157282693ff1e913=s:1:\"1\";|f122f39db45982431906d29e83996fa6=s:1:\"1\";|40aa77243ed0f3c7e6cb856f6acac131=s:1:\"1\";|46201ce17b20bae771e70e82e4f3274f=s:1:\"1\";|8b3c3d44e3a2c4b9a478905db3e1c6bb=s:1:\"1\";|70f729a3bd0f65d938cef1d3ee535c08=s:1:\"1\";|28dc29baf92b566b5a905904ac6eda71=s:1:\"1\";|82722e9b44804afd8f77c514cf40b04c=s:1:\"1\";|ee91483cc2e50076a819f9f2d4c9ca81=s:1:\"1\";|customfield_typeb=s:1:\"0\";|a8c9fa027f1e2beba1eb6a77e8d372de=s:1:\"1\";|d8b01d977303896684e33177aaa0f5f7=s:1:\"1\";|449fe3577f1d9b8609c44553931ab79f=s:1:\"1\";|83982f5c69cb8af3660503159b670dd1=s:1:\"1\";|2d43e46366269f1b73ede53a98b971ed=s:1:\"1\";|6e6eda12e03f8dca747891af23a0de1b=s:1:\"1\";|6edb0d8b099ea02dd209344a026ea4e4=s:1:\"1\";|2a7e66e3427b8c2f82c3c7cd7501efb7=s:1:\"1\";|190172641eab7a94325c0316edc71ab7=s:1:\"1\";|8ce7b5b919bc326d1753a472e0b0628d=s:1:\"1\";|paytype_giaohang=s:1:\"1\";|paytype_paypal=s:1:\"0\";|paytype_paypal_email=s:36:\"sb-obrsy3293177@business.example.com\";|paytype_paypal_merchantid=s:80:\"AUIGQfP-w7ZjhOZPHHfl909c0ytozEg-_38XVPMyb7X2xez3UnXiRM5y7oX1EeeO6SKliNLo4xbQT_F2\";|paytype_paypal_merchantpass=s:0:\"\";|paytype_nganluong=s:1:\"0\";|paytype_nganluong_email=s:25:\"thong@dangnhanhonline.com\";|paytype_nganluong_merchantid=s:0:\"\";|paytype_nganluong_merchantpass=s:0:\"\";|paytype_baokim=s:1:\"0\";|paytype_baokim_email=s:25:\"thong@dangnhanhonline.com\";|paytype_baokim_merchantid=s:0:\"\";|paytype_baokim_merchantpass=s:0:\"\";|6a479c2c1fa314c7551437f3058d3791=s:1:\"1\";|55a70347006b181a344c1f4f65ee265c=s:1:\"1\";|fa9911fecb772348fbac9b0ee69e27a3=s:1:\"1\";|150382082b04337b551adf551a7cc7be=s:1:\"1\";|paytype_alepay=s:1:\"0\";|paytype_alepay_email=s:0:\"\";|paytype_alepay_merchantid=s:0:\"\";|paytype_alepay_merchantpass=s:0:\"\";|paytype_alepaytragop=s:1:\"0\";|ab35289c7e523593a9edbbdfb4706a87=s:1:\"1\";|paytype_fundiin=s:1:\"0\";|paytype_funddin_merchantid=s:0:\"\";|paytype_funddin_privatecode=s:0:\"\";|paytype_funddin_merchantcode=s:0:\"\";|paytype_funddin_merchantprivatecode=s:0:\"\";|180655a119f603bf798bb6e83b9b7d74=s:1:\"1\";|0157a75036e5c731db5bfd593470d757=s:1:\"1\";|0558413e023e1b1e9280a2ba3ea1808b=s:1:\"1\";|ae9d61436fc8e291be1adc19e58330f5=s:1:\"1\";|a5bb247a3c1811290741b90fd9e422a8=s:1:\"1\";|d34536c1e39cd53e91362aad6a65cee1=s:1:\"1\";|7c56fde0e112d0fb001b02d151255c75=s:1:\"1\";|7f8470b6b017755fd9c19276acfbc5a1=s:1:\"1\";|paytype_paypal_convertmoney=s:0:\"\";|72614101ea7a7b4e00bbd2f79502ed2c=s:1:\"1\";|paytype_zalopay=s:1:\"0\";|paytype_zalopay_appid=s:0:\"\";|paytype_zalopay_key1=s:0:\"\";|paytype_zalopay_key2=s:0:\"\";|58a5aabccb659fef810546e95ea6bd95=s:1:\"1\";|paytype_momo=s:1:\"0\";|paytype_momo_partnercode=s:0:\"\";|paytype_momo_accesskey=s:0:\"\";|paytype_momo_secretkey=s:0:\"\";|b4861ea516a38c019b19893c315f264b=s:1:\"1\";|f6db004896839739f104a4f09f189312=s:1:\"1\";|b2ba4ca658cf96dcd6ea354e09da6a70=s:1:\"1\";|cart_page_old=s:1:\"1\";|f7b2363284e878267b853f436b6ef8c1=s:1:\"1\";|paytype_paypal_secret=s:80:\"EFIK50Y6xkfaJjaI3C995EfBY7xtbvnvjdjIuB4HHDSmt3wIT_RDlAeWn4IFkgqb07eEhgqcZN7HoaB7\";|paytype_fundiin_clientid=s:0:\"\";|paytype_fundiin_merchantid=s:0:\"\";|paytype_fundiin_secretkey=s:0:\"\";|paytype_vnpay=s:1:\"0\";|paytype_vnpay_vnp_tmnCode=s:0:\"\";|paytype_vnpay_secretkey=s:0:\"\";|e272ba93d1e8a6dd8a9722132544f478=s:1:\"1\";|autoset_coupon=s:1:\"0\";|paytype_9pay=s:1:\"0\";|paytype_9pay_merchant_key=s:0:\"\";|paytype_9pay_secret_key=s:0:\"\";|paytype_9pay_key_checksum=s:0:\"\";|347dccc20515fe5063909c175af9e63b=s:1:\"1\";', '0000-00-00 00:00:00', 0, '2025-11-10 07:48:20', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_countries`
--

CREATE TABLE `z0djb_virtuemart_countries` (
  `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_worldzone_id` tinyint(11) NOT NULL DEFAULT 1,
  `country_name` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country_3_code` char(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country_2_code` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Country records';

--
-- Dumping data for table `z0djb_virtuemart_countries`
--

INSERT INTO `z0djb_virtuemart_countries` (`virtuemart_country_id`, `virtuemart_worldzone_id`, `country_name`, `country_3_code`, `country_2_code`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'Albania', 'ALB', 'AL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'Algeria', 'DZA', 'DZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'American Samoa', 'ASM', 'AS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Andorra', 'AND', 'AD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'Angola', 'AGO', 'AO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Anguilla', 'AIA', 'AI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'Antarctica', 'ATA', 'AQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Argentina', 'ARG', 'AR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Armenia', 'ARM', 'AM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Aruba', 'ABW', 'AW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 'Australia', 'AUS', 'AU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 'Austria', 'AUT', 'AT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Azerbaijan', 'AZE', 'AZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Bahamas', 'BHS', 'BS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bahrain', 'BHR', 'BH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Bangladesh', 'BGD', 'BD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Barbados', 'BRB', 'BB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Belarus', 'BLR', 'BY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Belgium', 'BEL', 'BE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Belize', 'BLZ', 'BZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 'Benin', 'BEN', 'BJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Bermuda', 'BMU', 'BM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Bhutan', 'BTN', 'BT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Bolivia', 'BOL', 'BO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Botswana', 'BWA', 'BW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Bouvet Island', 'BVT', 'BV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Brazil', 'BRA', 'BR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Bulgaria', 'BGR', 'BG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Burkina Faso', 'BFA', 'BF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Burundi', 'BDI', 'BI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 'Cambodia', 'KHM', 'KH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 'Cameroon', 'CMR', 'CM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 'Canada', 'CAN', 'CA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 'Cape Verde', 'CPV', 'CV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Cayman Islands', 'CYM', 'KY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Central African Republic', 'CAF', 'CF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Chad', 'TCD', 'TD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 'Chile', 'CHL', 'CL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'China', 'CHN', 'CN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 'Christmas Island', 'CXR', 'CX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Colombia', 'COL', 'CO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 'Comoros', 'COM', 'KM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Congo', 'COG', 'CG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Cook Islands', 'COK', 'CK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 'Costa Rica', 'CRI', 'CR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'Cote D\'Ivoire', 'CIV', 'CI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 'Croatia', 'HRV', 'HR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Cuba', 'CUB', 'CU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Cyprus', 'CYP', 'CY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Czech Republic', 'CZE', 'CZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 'Denmark', 'DNK', 'DK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Djibouti', 'DJI', 'DJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 'Dominica', 'DMA', 'DM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Dominican Republic', 'DOM', 'DO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'East Timor', 'TMP', 'TP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Ecuador', 'ECU', 'EC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Egypt', 'EGY', 'EG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'El Salvador', 'SLV', 'SV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 'Eritrea', 'ERI', 'ER', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Estonia', 'EST', 'EE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Ethiopia', 'ETH', 'ET', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Faroe Islands', 'FRO', 'FO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 'Fiji', 'FJI', 'FJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 'Finland', 'FIN', 'FI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'France', 'FRA', 'FR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'French Guiana', 'GUF', 'GF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'French Polynesia', 'PYF', 'PF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'French Southern Territories', 'ATF', 'TF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Gabon', 'GAB', 'GA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'Gambia', 'GMB', 'GM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'Georgia', 'GEO', 'GE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Germany', 'DEU', 'DE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Ghana', 'GHA', 'GH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Gibraltar', 'GIB', 'GI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Greece', 'GRC', 'GR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Greenland', 'GRL', 'GL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Grenada', 'GRD', 'GD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Guadeloupe', 'GLP', 'GP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 'Guam', 'GUM', 'GU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Guatemala', 'GTM', 'GT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Guinea', 'GIN', 'GN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 'Guinea-bissau', 'GNB', 'GW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Guyana', 'GUY', 'GY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Haiti', 'HTI', 'HT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 'Honduras', 'HND', 'HN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Hong Kong', 'HKG', 'HK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Hungary', 'HUN', 'HU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Iceland', 'ISL', 'IS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 'India', 'IND', 'IN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Indonesia', 'IDN', 'ID', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Iraq', 'IRQ', 'IQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 'Ireland', 'IRL', 'IE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 'Israel', 'ISR', 'IL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Italy', 'ITA', 'IT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Jamaica', 'JAM', 'JM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'Japan', 'JPN', 'JP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Jordan', 'JOR', 'JO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Kenya', 'KEN', 'KE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Kiribati', 'KIR', 'KI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Korea, Democratic People\'s Republic of', 'PRK', 'KP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Korea, Republic of', 'KOR', 'KR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Kuwait', 'KWT', 'KW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Lao People\'s Democratic Republic', 'LAO', 'LA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Latvia', 'LVA', 'LV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Lebanon', 'LBN', 'LB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Lesotho', 'LSO', 'LS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Liberia', 'LBR', 'LR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Libya', 'LBY', 'LY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Liechtenstein', 'LIE', 'LI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 'Lithuania', 'LTU', 'LT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Luxembourg', 'LUX', 'LU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Macau', 'MAC', 'MO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Madagascar', 'MDG', 'MG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Malawi', 'MWI', 'MW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 'Malaysia', 'MYS', 'MY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'Maldives', 'MDV', 'MV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Mali', 'MLI', 'ML', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Malta', 'MLT', 'MT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Marshall Islands', 'MHL', 'MH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Martinique', 'MTQ', 'MQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Mauritania', 'MRT', 'MR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Mauritius', 'MUS', 'MU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Mayotte', 'MYT', 'YT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 'Mexico', 'MEX', 'MX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'Monaco', 'MCO', 'MC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Mongolia', 'MNG', 'MN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 'Montserrat', 'MSR', 'MS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'Morocco', 'MAR', 'MA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 'Mozambique', 'MOZ', 'MZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 'Myanmar', 'MMR', 'MM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Namibia', 'NAM', 'NA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Nauru', 'NRU', 'NR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Nepal', 'NPL', 'NP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 'Netherlands', 'NLD', 'NL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'New Caledonia', 'NCL', 'NC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'New Zealand', 'NZL', 'NZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Nicaragua', 'NIC', 'NI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 'Niger', 'NER', 'NE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Nigeria', 'NGA', 'NG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 'Niue', 'NIU', 'NU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Norfolk Island', 'NFK', 'NF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Norway', 'NOR', 'NO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Oman', 'OMN', 'OM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Pakistan', 'PAK', 'PK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Palau', 'PLW', 'PW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Panama', 'PAN', 'PA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Papua New Guinea', 'PNG', 'PG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Paraguay', 'PRY', 'PY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Peru', 'PER', 'PE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Philippines', 'PHL', 'PH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Pitcairn', 'PCN', 'PN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Poland', 'POL', 'PL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Portugal', 'PRT', 'PT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Puerto Rico', 'PRI', 'PR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Qatar', 'QAT', 'QA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Reunion', 'REU', 'RE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Romania', 'ROM', 'RO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Russian Federation', 'RUS', 'RU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Rwanda', 'RWA', 'RW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Saint Lucia', 'LCA', 'LC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Samoa', 'WSM', 'WS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'San Marino', 'SMR', 'SM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Saudi Arabia', 'SAU', 'SA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'Senegal', 'SEN', 'SN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'Seychelles', 'SYC', 'SC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'Sierra Leone', 'SLE', 'SL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Singapore', 'SGP', 'SG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Slovakia', 'SVK', 'SK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Slovenia', 'SVN', 'SI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Solomon Islands', 'SLB', 'SB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Somalia', 'SOM', 'SO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'South Africa', 'ZAF', 'ZA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Spain', 'ESP', 'ES', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Sri Lanka', 'LKA', 'LK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'St. Helena', 'SHN', 'SH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Sudan', 'SDN', 'SD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Suriname', 'SUR', 'SR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 'Swaziland', 'SWZ', 'SZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 'Sweden', 'SWE', 'SE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 'Switzerland', 'CHE', 'CH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 'Taiwan', 'TWN', 'TW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 'Tajikistan', 'TJK', 'TJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 'Thailand', 'THA', 'TH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 'Togo', 'TGO', 'TG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 'Tokelau', 'TKL', 'TK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 'Tonga', 'TON', 'TO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 'Tunisia', 'TUN', 'TN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 'Turkey', 'TUR', 'TR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 'Turkmenistan', 'TKM', 'TM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 'Tuvalu', 'TUV', 'TV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 'Uganda', 'UGA', 'UG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 'Ukraine', 'UKR', 'UA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 'United Arab Emirates', 'ARE', 'AE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 'United Kingdom', 'GBR', 'GB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 'United States', 'USA', 'US', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 'Uruguay', 'URY', 'UY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 'Uzbekistan', 'UZB', 'UZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 'Vanuatu', 'VUT', 'VU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 'Venezuela', 'VEN', 'VE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 'Viet Nam', 'VNM', 'VN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 'Western Sahara', 'ESH', 'EH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 'Yemen', 'YEM', 'YE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 'Zambia', 'ZMB', 'ZM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(240, 1, 'East Timor', 'XET', 'XE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 'Jersey', 'JEY', 'JE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 'St. Barthelemy', 'XSB', 'XB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 'St. Eustatius', 'XSE', 'XU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 'Canary Islands', 'XCA', 'XC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 'Serbia', 'SRB', 'RS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 'Sint Maarten (French Antilles)', 'MAF', 'MF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 'Sint Maarten (Netherlands Antilles)', 'SXM', 'SX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 'Palestinian Territory, occupied', 'PSE', 'PS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_coupons`
--

CREATE TABLE `z0djb_virtuemart_coupons` (
  `virtuemart_coupon_id` int(11) UNSIGNED NOT NULL,
  `coupon_code` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,2) NOT NULL DEFAULT 0.00,
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,2) NOT NULL DEFAULT 0.00,
  `coupon_value_end` decimal(15,2) NOT NULL DEFAULT 0.00,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Used to store coupon codes';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_currencies`
--

CREATE TABLE `z0djb_virtuemart_currencies` (
  `virtuemart_currency_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 1,
  `currency_name` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency_code_2` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency_code_3` char(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` char(4) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency_decimal_place` char(4) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency_decimal_symbol` char(4) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency_thousands` char(4) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency_positive_style` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency_negative_style` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 1,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Used to store currencies';

--
-- Dumping data for table `z0djb_virtuemart_currencies`
--

INSERT INTO `z0djb_virtuemart_currencies` (`virtuemart_currency_id`, `virtuemart_vendor_id`, `currency_name`, `currency_code_2`, `currency_code_3`, `currency_numeric_code`, `currency_exchange_rate`, `currency_symbol`, `currency_decimal_place`, `currency_decimal_symbol`, `currency_thousands`, `currency_positive_style`, `currency_negative_style`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'United Arab Emirates dirham', '', 'AED', 784, '0.00000', 'د.إ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'Albanian lek', '', 'ALL', 8, '0.00000', 'Lek', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Netherlands Antillean gulden', '', 'ANG', 532, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Argentine peso', '', 'ARS', 32, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Australian dollar', '', 'AUD', 36, '0.00000', '$', '2', '.', '', '{symbol} {number}', '{sign}{symbol} {number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Aruban florin', '', 'AWG', 533, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Barbadian dollar', '', 'BBD', 52, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Bangladeshi taka', '', 'BDT', 50, '0.00000', '৳', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Bahraini dinar', '', 'BHD', 48, '0.00000', 'ب.د', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Burundian franc', '', 'BIF', 108, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bermudian dollar', '', 'BMD', 60, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Brunei dollar', '', 'BND', 96, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Bolivian boliviano', '', 'BOB', 68, '0.00000', '$b', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Brazilian real', '', 'BRL', 986, '0.00000', 'R$', '2', ',', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Bahamian dollar', '', 'BSD', 44, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Bhutanese ngultrum', '', 'BTN', 64, '0.00000', 'BTN', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Botswana pula', '', 'BWP', 72, '0.00000', 'P', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Belize dollar', '', 'BZD', 84, '0.00000', 'BZ$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Canadian dollar', '', 'CAD', 124, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Swiss franc', '', 'CHF', 756, '0.00000', 'CHF', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Unidad de Fomento', '', 'CLF', 990, '0.00000', 'CLF', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Chilean peso', '', 'CLP', 152, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Chinese renminbi yuan', '', 'CNY', 156, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'Colombian peso', '', 'COP', 170, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Costa Rican colón', '', 'CRC', 188, '0.00000', '₡', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Czech koruna', '', 'CZK', 203, '0.00000', 'Kč', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Cuban peso', '', 'CUP', 192, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Cape Verdean escudo', '', 'CVE', 132, '0.00000', '$', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Danish krone', '', 'DKK', 208, '0.00000', 'kr', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Dominican peso', '', 'DOP', 214, '0.00000', 'RD$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Algerian dinar', '', 'DZD', 12, '0.00000', 'د.ج', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'Egyptian pound', '', 'EGP', 818, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Ethiopian birr', '', 'ETB', 230, '0.00000', 'ETB', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Euro', '', 'EUR', 978, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Fijian dollar', '', 'FJD', 242, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Falkland pound', '', 'FKP', 238, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'British pound', '', 'GBP', 826, '0.00000', '£', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Gibraltar pound', '', 'GIP', 292, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Gambian dalasi', '', 'GMD', 270, '0.00000', 'D', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Guinean franc', '', 'GNF', 324, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Guatemalan quetzal', '', 'GTQ', 320, '0.00000', 'Q', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Guyanese dollar', '', 'GYD', 328, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'Hong Kong dollar', '', 'HKD', 344, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Honduran lempira', '', 'HNL', 340, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Haitian gourde', '', 'HTG', 332, '0.00000', 'G', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'Hungarian forint', '', 'HUF', 348, '0.00000', 'Ft', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Indonesian rupiah', '', 'IDR', 360, '0.00000', 'Rp', '0', '', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Israeli new sheqel', '', 'ILS', 376, '0.00000', '₪', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Indian rupee', '', 'INR', 356, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Iraqi dinar', '', 'IQD', 368, '0.00000', 'ع.د', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Iranian rial', '', 'IRR', 364, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number}{symb0l}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'Jamaican dollar', '', 'JMD', 388, '0.00000', 'J$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 'Jordanian dinar', '', 'JOD', 400, '0.00000', 'د.ا', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'Japanese yen', '', 'JPY', 392, '0.00000', '¥', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'Kenyan shilling', '', 'KES', 404, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'Cambodian riel', '', 'KHR', 116, '0.00000', '៛', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Comorian franc', '', 'KMF', 174, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'North Korean won', '', 'KPW', 408, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'South Korean won', '', 'KRW', 410, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Kuwaiti dinar', '', 'KWD', 414, '0.00000', 'د.ك', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Cayman Islands dollar', '', 'KYD', 136, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Lao kip', '', 'LAK', 418, '0.00000', '₭', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Lebanese pound', '', 'LBP', 422, '0.00000', '£', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Sri Lankan rupee', '', 'LKR', 144, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Liberian dollar', '', 'LRD', 430, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Lesotho loti', '', 'LSL', 426, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Libyan dinar', '', 'LYD', 434, '0.00000', 'ل.د', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Moroccan dirham', '', 'MAD', 504, '0.00000', 'د.م.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Mongolian tögrög', '', 'MNT', 496, '0.00000', '₮', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Macanese pataca', '', 'MOP', 446, '0.00000', 'P', '1', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Mauritanian ouguiya', '', 'MRO', 478, '0.00000', 'UM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Mauritian rupee', '', 'MUR', 480, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Maldivian rufiyaa', '', 'MVR', 462, '0.00000', 'ރ.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Malawian kwacha', '', 'MWK', 454, '0.00000', 'MK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Malaysian ringgit', '', 'MYR', 458, '0.00000', 'RM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Nigerian naira', '', 'NGN', 566, '0.00000', '₦', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Norwegian krone', '', 'NOK', 578, '0.00000', 'kr', '2', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Nepalese rupee', '', 'NPR', 524, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'New Zealand dollar', '', 'NZD', 554, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Omani rial', '', 'OMR', 512, '0.00000', '﷼', '3', '.', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Panamanian balboa', '', 'PAB', 590, '0.00000', 'B/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Peruvian nuevo sol', '', 'PEN', 604, '0.00000', 'S/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Papua New Guinean kina', '', 'PGK', 598, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Philippine peso', '', 'PHP', 608, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Pakistani rupee', '', 'PKR', 586, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Polish Złoty', '', 'PLN', 985, '0.00000', 'zł', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Paraguayan guaraní', '', 'PYG', 600, '0.00000', '₲', '0', '', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Qatari riyal', '', 'QAR', 634, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Romanian leu', '', 'RON', 946, '0.00000', 'lei', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Rwandan franc', '', 'RWF', 646, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Saudi riyal', '', 'SAR', 682, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Solomon Islands dollar', '', 'SBD', 90, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Seychellois rupee', '', 'SCR', 690, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Swedish krona', '', 'SEK', 752, '0.00000', 'kr', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Singapore dollar', '', 'SGD', 702, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Saint Helenian pound', '', 'SHP', 654, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Sierra Leonean leone', '', 'SLL', 694, '0.00000', 'Le', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Somali shilling', '', 'SOS', 706, '0.00000', 'S', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'São Tomé and Príncipe dobra', '', 'STD', 678, '0.00000', 'Db', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Russian ruble', '', 'RUB', 643, '0.00000', 'руб', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Salvadoran colón', '', 'SVC', 222, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Syrian pound', '', 'SYP', 760, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Swazi lilangeni', '', 'SZL', 748, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Thai baht', '', 'THB', 764, '0.00000', '฿', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Tunisian dinar', '', 'TND', 788, '0.00000', 'د.ت', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Tongan paʻanga', '', 'TOP', 776, '0.00000', 'T$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Turkish new lira', '', 'TRY', 949, '0.00000', 'YTL', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Trinidad and Tobago dollar', '', 'TTD', 780, '0.00000', 'TT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'New Taiwan dollar', '', 'TWD', 901, '0.00000', 'NT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Tanzanian shilling', '', 'TZS', 834, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'United States dollar', '', 'USD', 840, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Vietnamese Dong', '', 'VND', 704, '0.00000', 'đ', '0', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 0, 1, '0000-00-00 00:00:00', 0, '2017-11-26 10:08:02', 42, '0000-00-00 00:00:00', 0),
(148, 1, 'Vanuatu vatu', '', 'VUV', 548, '0.00000', 'Vt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Samoan tala', '', 'WST', 882, '0.00000', 'T', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Yemeni rial', '', 'YER', 886, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'Serbian dinar', '', 'RSD', 941, '0.00000', 'Дин.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'South African rand', '', 'ZAR', 710, '0.00000', 'R', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Zambian kwacha', '', 'ZMK', 894, '0.00000', 'ZK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Zimbabwean dollar', '', 'ZWD', 932, '0.00000', 'Z$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Armenian dram', '', 'AMD', 51, '0.00000', 'դր.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Myanmar kyat', '', 'MMK', 104, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Croatian kuna', '', 'HRK', 191, '0.00000', 'kn', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Eritrean nakfa', '', 'ERN', 232, '0.00000', 'Nfk', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Djiboutian franc', '', 'DJF', 262, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Icelandic króna', '', 'ISK', 352, '0.00000', 'kr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Kazakhstani tenge', '', 'KZT', 398, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Kyrgyzstani som', '', 'KGS', 417, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Latvian lats', '', 'LVL', 428, '0.00000', 'Ls', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Lithuanian litas', '', 'LTL', 440, '0.00000', 'Lt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Mexican peso', '', 'MXN', 484, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Moldovan leu', '', 'MDL', 498, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Namibian dollar', '', 'NAD', 516, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Nicaraguan córdoba', '', 'NIO', 558, '0.00000', 'C$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Ugandan shilling', '', 'UGX', 800, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Macedonian denar', '', 'MKD', 807, '0.00000', 'ден', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Uruguayan peso', '', 'UYU', 858, '0.00000', '$', '0', '', '', '{symbol}number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Uzbekistani som', '', 'UZS', 860, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Azerbaijani manat', '', 'AZN', 934, '0.00000', 'ман', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Ghanaian cedi', '', 'GHS', 936, '0.00000', '₵', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Venezuelan bolívar', '', 'VEF', 937, '0.00000', 'Bs', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Sudanese pound', '', 'SDG', 938, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Uruguay Peso', '', 'UYI', 940, '0.00000', 'UYI', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Mozambican metical', '', 'MZN', 943, '0.00000', 'MT', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'WIR Euro', '', 'CHE', 947, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'WIR Franc', '', 'CHW', 948, '0.00000', 'CHW', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Central African CFA franc', '', 'XAF', 950, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'East Caribbean dollar', '', 'XCD', 951, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'West African CFA franc', '', 'XOF', 952, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'CFP franc', '', 'XPF', 953, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Surinamese dollar', '', 'SRD', 968, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Malagasy ariary', '', 'MGA', 969, '0.00000', 'MGA', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Unidad de Valor Real', '', 'COU', 970, '0.00000', 'COU', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Afghan afghani', '', 'AFN', 971, '0.00000', '؋', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Tajikistani somoni', '', 'TJS', 972, '0.00000', 'ЅМ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'Angolan kwanza', '', 'AOA', 973, '0.00000', 'Kz', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'Belarusian ruble', '', 'BYR', 974, '0.00000', 'p.', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Bulgarian lev', '', 'BGN', 975, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Congolese franc', '', 'CDF', 976, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'Bosnia and Herzegovina convert', '', 'BAM', 977, '0.00000', 'KM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'Mexican Unid', '', 'MXV', 979, '0.00000', 'MXV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Ukrainian hryvnia', '', 'UAH', 980, '0.00000', '₴', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Georgian lari', '', 'GEL', 981, '0.00000', 'ლ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Mvdol', '', 'BOV', 984, '0.00000', 'BOV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_customs`
--

CREATE TABLE `z0djb_virtuemart_customs` (
  `virtuemart_custom_id` int(11) UNSIGNED NOT NULL,
  `custom_parent_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT 1,
  `custom_jplugin_id` int(11) NOT NULL DEFAULT 0,
  `custom_element` char(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1:Display in admin only',
  `custom_title` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'field title',
  `show_title` tinyint(1) NOT NULL DEFAULT 1,
  `custom_tip` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'defaut value',
  `custom_field_desc` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'description or unit',
  `field_type` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0' COMMENT 'S:string,I:int,P:parent, B:bool,D:date,T:time,H:hidden',
  `is_list` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add attributes to cart',
  `layout_pos` char(24) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'valide for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='custom fields definition';

--
-- Dumping data for table `z0djb_virtuemart_customs`
--

INSERT INTO `z0djb_virtuemart_customs` (`virtuemart_custom_id`, `custom_parent_id`, `virtuemart_vendor_id`, `custom_jplugin_id`, `custom_element`, `admin_only`, `custom_title`, `show_title`, `custom_tip`, `custom_value`, `custom_field_desc`, `field_type`, `is_list`, `is_hidden`, `is_cart_attribute`, `layout_pos`, `custom_params`, `shared`, `published`, `created_on`, `created_by`, `ordering`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 0, 1, 0, '', 0, 'COM_VIRTUEMART_RELATED_PRODUCTS', 1, 'COM_VIRTUEMART_RELATED_PRODUCTS_TIP', '', 'COM_VIRTUEMART_RELATED_PRODUCTS_DESC', 'R', 0, 0, 0, NULL, NULL, 0, 1, '2011-05-25 21:52:43', 62, 55, '2011-05-25 21:52:43', 62, '0000-00-00 00:00:00', 0),
(2, 0, 1, 0, '', 0, 'COM_VIRTUEMART_RELATED_CATEGORIES', 1, 'COM_VIRTUEMART_RELATED_CATEGORIES_TIP', NULL, 'COM_VIRTUEMART_RELATED_CATEGORIES_DESC', 'Z', 0, 0, 0, NULL, NULL, 0, 1, '0000-00-00 00:00:00', 0, 60, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 0, 1, 0, '0', 0, 'Bộ lọc', 1, '', '', '', 'P', 0, 0, 0, '', '0', 0, 0, '2015-03-23 09:40:57', 42, 5, '2018-02-21 05:45:11', 42, '0000-00-00 00:00:00', 0),
(72, 45, 1, 0, '0', 0, 'khoanggia', 0, '', '', 'Khoảng Giá|100.000đ - 200.000đ|200.000đ - 400.000đ|400.000đ - 800.000đ', 'I', 0, 0, 0, '', '0', 0, 0, '2017-02-25 07:21:41', 42, 20, '2018-02-21 10:25:40', 42, '0000-00-00 00:00:00', 0),
(68, 0, 1, 0, '0', 0, 'Màu 1:', 1, '', 'Chọn màu', '', 'V', 0, 0, 1, '', '0', 0, 0, '2015-03-23 15:55:44', 42, 40, '2020-08-20 03:19:51', 42, '0000-00-00 00:00:00', 0),
(69, 0, 1, 0, '0', 0, 'Màu 2:', 1, '', 'Chọn màu', '', 'V', 0, 0, 1, '', '0', 0, 0, '2015-03-23 15:55:44', 42, 45, '2018-02-08 03:43:33', 42, '0000-00-00 00:00:00', 0),
(70, 0, 1, 0, '0', 0, 'Màu 3:', 1, '', 'Chọn màu', '', 'V', 0, 0, 1, '', '0', 0, 0, '2015-03-23 15:55:44', 42, 50, '2018-02-08 03:43:33', 42, '0000-00-00 00:00:00', 0),
(66, 0, 1, 0, '0', 0, 'Size 3:', 1, '', 'Chọn size', '', 'V', 0, 0, 1, '', '0', 0, 0, '2015-03-23 15:53:48', 42, 35, '2020-08-20 03:14:42', 42, '0000-00-00 00:00:00', 0),
(65, 0, 1, 0, '0', 0, 'Size 2:', 1, '', 'Chọn size', '', 'V', 0, 0, 1, '', '0', 0, 0, '2015-03-23 15:52:45', 42, 30, '2020-08-20 03:10:04', 42, '0000-00-00 00:00:00', 0),
(64, 0, 1, 0, '0', 0, 'Size 1:', 1, '', 'Chọn size', '', 'V', 0, 0, 1, '', '0', 0, 0, '2015-03-23 15:52:11', 42, 25, '2021-08-25 12:01:27', 42, '0000-00-00 00:00:00', 0),
(76, 45, 1, 0, '0', 0, 'thanhpho', 0, '', '', 'Thành phố|Tp Hồ Chí Minh|Bình Dương|Đồng Nai|Long An|Vũng Tàu', 'I', 0, 0, 0, '', '0', 0, 0, '2018-02-21 05:42:06', 42, 15, '2018-02-21 05:45:02', 42, '0000-00-00 00:00:00', 0),
(77, 45, 1, 0, '0', 0, 'quocgia', 0, '', '', 'Chọn quốc gia|VN|SG|CN', 'I', 0, 0, 0, '', '0', 0, 0, '2018-02-21 10:24:23', 42, 10, '2018-02-21 10:25:03', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_invoices`
--

CREATE TABLE `z0djb_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 1,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `invoice_number` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_status` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `xhtml` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='custom fields definition';

--
-- Dumping data for table `z0djb_virtuemart_invoices`
--

INSERT INTO `z0djb_virtuemart_invoices` (`virtuemart_invoice_id`, `virtuemart_vendor_id`, `virtuemart_order_id`, `invoice_number`, `order_status`, `xhtml`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 46, '160409a5d01', 'P', '', '2016-04-09 04:30:33', 0, '2016-04-09 04:30:33', 0, '0000-00-00 00:00:00', 0),
(2, 1, 47, '160409ff102', 'P', '', '2016-04-09 04:32:26', 0, '2016-04-09 04:32:26', 0, '0000-00-00 00:00:00', 0),
(3, 1, 48, '160409bf903', 'P', '', '2016-04-09 04:33:42', 0, '2016-04-09 04:33:42', 0, '0000-00-00 00:00:00', 0),
(4, 1, 49, '16040951704', 'P', '', '2016-04-09 04:33:59', 0, '2016-04-09 04:33:59', 0, '0000-00-00 00:00:00', 0),
(5, 1, 50, '1604090a705', 'P', '', '2016-04-09 04:44:46', 0, '2016-04-09 04:44:46', 0, '0000-00-00 00:00:00', 0),
(6, 1, 51, '160409dd306', 'P', '', '2016-04-09 04:45:23', 0, '2016-04-09 04:45:23', 0, '0000-00-00 00:00:00', 0),
(7, 1, 52, '16040967a07', 'P', '', '2016-04-09 04:46:28', 0, '2016-04-09 04:46:28', 0, '0000-00-00 00:00:00', 0),
(8, 1, 53, '16040992a08', 'P', '', '2016-04-09 04:46:29', 0, '2016-04-09 04:46:29', 0, '0000-00-00 00:00:00', 0),
(9, 1, 54, '160409a3f09', 'P', '', '2016-04-09 04:51:48', 0, '2016-04-09 04:51:48', 0, '0000-00-00 00:00:00', 0),
(10, 1, 55, '16040980e010', 'P', '', '2016-04-09 04:59:35', 0, '2016-04-09 04:59:35', 0, '0000-00-00 00:00:00', 0),
(11, 1, 56, '1604097f8011', 'P', '', '2016-04-09 05:01:49', 0, '2016-04-09 05:01:49', 0, '0000-00-00 00:00:00', 0),
(12, 1, 57, '1604092a1012', 'P', '', '2016-04-09 05:08:31', 0, '2016-04-09 05:08:31', 0, '0000-00-00 00:00:00', 0),
(13, 1, 58, '160409f7c013', 'P', '', '2016-04-09 05:14:44', 0, '2016-04-09 05:14:44', 0, '0000-00-00 00:00:00', 0),
(14, 1, 59, '160409422014', 'P', '', '2016-04-09 05:15:42', 0, '2016-04-09 05:15:42', 0, '0000-00-00 00:00:00', 0),
(15, 1, 60, '160409f14015', 'P', '', '2016-04-09 05:17:39', 0, '2016-04-09 05:17:39', 0, '0000-00-00 00:00:00', 0),
(16, 1, 61, '16092561f016', 'P', '', '2016-09-25 08:57:41', 0, '2016-09-25 08:57:41', 0, '0000-00-00 00:00:00', 0),
(17, 1, 62, '1609254c3017', 'P', '', '2016-09-25 08:59:40', 0, '2016-09-25 08:59:40', 0, '0000-00-00 00:00:00', 0),
(18, 1, 63, '1609253d9018', 'P', '', '2016-09-25 09:00:10', 0, '2016-09-25 09:00:10', 0, '0000-00-00 00:00:00', 0),
(19, 1, 64, '16092570b019', 'P', '', '2016-09-25 09:01:35', 0, '2016-09-25 09:01:35', 0, '0000-00-00 00:00:00', 0),
(20, 1, 65, '160925460020', 'P', '', '2016-09-25 09:01:54', 0, '2016-09-25 09:01:54', 0, '0000-00-00 00:00:00', 0),
(21, 1, 66, '160925ff4021', 'P', '', '2016-09-25 09:05:55', 0, '2016-09-25 09:05:55', 0, '0000-00-00 00:00:00', 0),
(22, 1, 67, '16092570d022', 'P', '', '2016-09-25 09:06:30', 0, '2016-09-25 09:06:30', 0, '0000-00-00 00:00:00', 0),
(23, 1, 68, '160925f3a023', 'P', '', '2016-09-25 09:06:58', 0, '2016-09-25 09:06:58', 0, '0000-00-00 00:00:00', 0),
(24, 1, 69, '16092559f024', 'P', '', '2016-09-25 09:07:53', 0, '2016-09-25 09:07:53', 0, '0000-00-00 00:00:00', 0),
(25, 1, 70, '160925dfb025', 'P', '', '2016-09-25 09:10:04', 0, '2016-09-25 09:10:04', 0, '0000-00-00 00:00:00', 0),
(26, 1, 71, '160925389026', 'P', '', '2016-09-25 09:16:01', 0, '2016-09-25 09:16:01', 0, '0000-00-00 00:00:00', 0),
(27, 1, 72, '160925877027', 'P', '', '2016-09-25 09:16:57', 0, '2016-09-25 09:16:57', 0, '0000-00-00 00:00:00', 0),
(28, 1, 73, '160925ae7028', 'P', '', '2016-09-25 09:17:53', 0, '2016-09-25 09:17:53', 0, '0000-00-00 00:00:00', 0),
(29, 1, 74, '1609256f2029', 'P', '', '2016-09-25 09:18:48', 0, '2016-09-25 09:18:48', 0, '0000-00-00 00:00:00', 0),
(30, 1, 75, '1609256ed030', 'P', '', '2016-09-25 09:19:52', 0, '2016-09-25 09:19:52', 0, '0000-00-00 00:00:00', 0),
(31, 1, 76, '16092529a031', 'P', '', '2016-09-25 09:20:27', 0, '2016-09-25 09:20:27', 0, '0000-00-00 00:00:00', 0),
(32, 1, 77, '1701169b2032', 'P', '', '2017-01-16 03:06:20', 0, '2017-01-16 03:06:20', 0, '0000-00-00 00:00:00', 0),
(33, 1, 78, '17011603c033', 'P', '', '2017-01-16 03:13:05', 0, '2017-01-16 03:13:05', 0, '0000-00-00 00:00:00', 0),
(34, 1, 79, '17011652a034', 'P', '', '2017-01-16 03:17:10', 0, '2017-01-16 03:17:10', 0, '0000-00-00 00:00:00', 0),
(35, 1, 80, '170116959035', 'P', '', '2017-01-16 03:27:52', 0, '2017-01-16 03:27:52', 0, '0000-00-00 00:00:00', 0),
(36, 1, 81, '170116a23036', 'P', '', '2017-01-16 03:51:16', 0, '2017-01-16 03:51:16', 0, '0000-00-00 00:00:00', 0),
(37, 1, 82, '170116320037', 'P', '', '2017-01-16 04:29:00', 50, '2017-01-16 04:29:00', 50, '0000-00-00 00:00:00', 0),
(38, 1, 83, '170116c59038', 'P', '', '2017-01-16 04:29:36', 50, '2017-01-16 04:29:36', 50, '0000-00-00 00:00:00', 0),
(39, 1, 84, '170116d6d039', 'P', '', '2017-01-16 04:32:31', 0, '2017-01-16 04:32:31', 0, '0000-00-00 00:00:00', 0),
(40, 1, 85, '1701168a1040', 'P', '', '2017-01-16 04:32:59', 50, '2017-01-16 04:32:59', 50, '0000-00-00 00:00:00', 0),
(41, 1, 86, '1701163fc041', 'P', '', '2017-01-16 04:33:58', 50, '2017-01-16 04:33:58', 50, '0000-00-00 00:00:00', 0),
(42, 1, 87, '17011618a042', 'P', '', '2017-01-16 04:37:24', 50, '2017-01-16 04:37:24', 50, '0000-00-00 00:00:00', 0),
(43, 1, 88, '1701167b5043', 'P', '', '2017-01-16 04:38:13', 50, '2017-01-16 04:38:13', 50, '0000-00-00 00:00:00', 0),
(44, 1, 89, '170116fdd044', 'P', '', '2017-01-16 04:43:17', 50, '2017-01-16 04:43:17', 50, '0000-00-00 00:00:00', 0),
(45, 1, 90, '1701160e6045', 'P', '', '2017-01-16 04:43:32', 50, '2017-01-16 04:43:32', 50, '0000-00-00 00:00:00', 0),
(46, 1, 91, '17011653e046', 'P', '', '2017-01-16 04:43:58', 0, '2017-01-16 04:43:58', 0, '0000-00-00 00:00:00', 0),
(47, 1, 92, '170116540047', 'P', '', '2017-01-16 04:44:22', 0, '2017-01-16 04:44:22', 0, '0000-00-00 00:00:00', 0),
(48, 1, 93, '17012013a048', 'P', '', '2017-01-20 04:59:32', 50, '2017-01-20 04:59:32', 50, '0000-00-00 00:00:00', 0),
(49, 1, 94, '170608884049', 'P', '', '2017-06-08 07:54:41', 0, '2017-06-08 07:54:41', 0, '0000-00-00 00:00:00', 0),
(50, 1, 95, '170711b6f050', 'P', '', '2017-07-11 03:01:11', 0, '2017-07-11 03:01:11', 0, '0000-00-00 00:00:00', 0),
(51, 1, 96, 'reservedByPayment_0d8604', 'P', '', '2017-07-19 08:14:11', 0, '2017-07-19 08:14:11', 0, '0000-00-00 00:00:00', 0),
(52, 1, 97, '17071964b052', 'P', '', '2017-07-19 08:18:41', 0, '2017-07-19 08:18:41', 0, '0000-00-00 00:00:00', 0),
(53, 1, 98, '170719e76053', 'P', '', '2017-07-19 08:21:26', 0, '2017-07-19 08:21:26', 0, '0000-00-00 00:00:00', 0),
(54, 1, 99, '171116d5a054', 'P', '', '2017-11-16 08:14:41', 0, '2017-11-16 08:14:41', 0, '0000-00-00 00:00:00', 0),
(55, 1, 100, '1711161e3055', 'P', '', '2017-11-16 10:22:24', 0, '2017-11-16 10:22:24', 0, '0000-00-00 00:00:00', 0),
(56, 1, 101, '171116609056', 'P', '', '2017-11-16 10:23:13', 0, '2017-11-16 10:23:13', 0, '0000-00-00 00:00:00', 0),
(57, 1, 102, '180224bb3057', 'P', '', '2018-02-24 02:53:20', 0, '2018-02-24 02:53:20', 0, '0000-00-00 00:00:00', 0),
(58, 1, 103, '180224714058', 'P', '', '2018-02-24 02:55:14', 0, '2018-02-24 02:55:14', 0, '0000-00-00 00:00:00', 0),
(59, 1, 104, '180224f4f059', 'P', '', '2018-02-24 02:56:01', 0, '2018-02-24 02:56:01', 0, '0000-00-00 00:00:00', 0),
(60, 1, 105, '180224af6060', 'P', '', '2018-02-24 02:57:50', 0, '2018-02-24 02:57:50', 0, '0000-00-00 00:00:00', 0),
(61, 1, 106, '18022494f061', 'P', '', '2018-02-24 02:58:49', 0, '2018-02-24 02:58:49', 0, '0000-00-00 00:00:00', 0),
(62, 1, 107, '180224514062', 'P', '', '2018-02-24 02:59:53', 0, '2018-02-24 02:59:53', 0, '0000-00-00 00:00:00', 0),
(63, 1, 108, '180224f89063', 'P', '', '2018-02-24 03:07:26', 0, '2018-02-24 03:07:26', 0, '0000-00-00 00:00:00', 0),
(64, 1, 109, '180224389064', 'P', '', '2018-02-24 03:10:36', 0, '2018-02-24 03:10:36', 0, '0000-00-00 00:00:00', 0),
(65, 1, 110, '180224c76065', 'P', '', '2018-02-24 03:35:08', 0, '2018-02-24 03:35:08', 0, '0000-00-00 00:00:00', 0),
(66, 1, 150, 'reservedByPayment_963908', 'P', '', '2018-03-13 05:34:31', 0, '2018-03-13 05:34:31', 0, '0000-00-00 00:00:00', 0),
(67, 1, 157, 'reservedByPayment_cea4015', 'P', '', '2018-03-13 05:39:18', 0, '2018-03-13 05:39:18', 0, '0000-00-00 00:00:00', 0),
(68, 1, 160, '18040328c068', 'P', '', '2018-04-03 01:16:24', 0, '2018-04-03 01:16:24', 0, '0000-00-00 00:00:00', 0),
(69, 1, 161, '180608432069', 'P', '', '2018-06-08 03:26:05', 0, '2018-06-08 03:26:05', 0, '0000-00-00 00:00:00', 0),
(70, 1, 162, '180608d8d070', 'P', '', '2018-06-08 03:26:30', 0, '2018-06-08 03:26:30', 0, '0000-00-00 00:00:00', 0),
(71, 1, 163, '180608e3e071', 'P', '', '2018-06-08 03:30:42', 0, '2018-06-08 03:30:42', 0, '0000-00-00 00:00:00', 0),
(72, 1, 164, '180608180072', 'P', '', '2018-06-08 03:33:15', 0, '2018-06-08 03:33:15', 0, '0000-00-00 00:00:00', 0),
(73, 1, 165, '1806087a9073', 'P', '', '2018-06-08 03:56:27', 0, '2018-06-08 03:56:27', 0, '0000-00-00 00:00:00', 0),
(74, 1, 166, '180608eb0074', 'P', '', '2018-06-08 03:59:09', 0, '2018-06-08 03:59:09', 0, '0000-00-00 00:00:00', 0),
(75, 1, 167, '180608924075', 'P', '', '2018-06-08 04:24:31', 61, '2018-06-08 04:24:31', 61, '0000-00-00 00:00:00', 0),
(76, 1, 168, '1812156e1076', 'P', '', '2018-12-15 09:41:49', 0, '2018-12-15 09:41:49', 0, '0000-00-00 00:00:00', 0),
(77, 1, 169, '18121597e077', 'P', '', '2018-12-15 09:52:58', 0, '2018-12-15 09:52:58', 0, '0000-00-00 00:00:00', 0),
(78, 1, 170, '1901040fb078', 'P', '', '2019-01-04 06:32:21', 0, '2019-01-04 06:32:21', 0, '0000-00-00 00:00:00', 0),
(79, 1, 189, '190104b8e079', 'P', '', '2019-01-04 06:46:46', 0, '2019-01-04 06:46:46', 0, '0000-00-00 00:00:00', 0),
(80, 1, 230, '190121c50080', 'P', '', '2019-01-21 07:15:26', 0, '2019-01-21 07:15:26', 0, '0000-00-00 00:00:00', 0),
(81, 1, 231, '190121a6f081', 'P', '', '2019-01-21 07:20:37', 62, '2019-01-21 07:20:37', 62, '0000-00-00 00:00:00', 0),
(82, 1, 232, '190502f9c082', 'U', '', '2019-05-02 03:51:40', 0, '2019-05-02 03:51:40', 0, '0000-00-00 00:00:00', 0),
(83, 1, 233, '200319a17083', 'U', '', '2020-03-19 03:01:28', 0, '2020-03-19 03:01:28', 0, '0000-00-00 00:00:00', 0),
(84, 1, 234, '200809aea084', 'U', '', '2020-08-09 09:48:19', 0, '2020-08-09 09:48:19', 0, '0000-00-00 00:00:00', 0),
(85, 1, 235, '200809f21085', 'U', '', '2020-08-09 09:49:10', 0, '2020-08-09 09:49:10', 0, '0000-00-00 00:00:00', 0),
(86, 1, 236, '200809dbc086', 'U', '', '2020-08-09 09:49:54', 0, '2020-08-09 09:49:54', 0, '0000-00-00 00:00:00', 0),
(87, 1, 237, '200809095087', 'U', '', '2020-08-09 09:50:18', 0, '2020-08-09 09:50:18', 0, '0000-00-00 00:00:00', 0),
(88, 1, 238, '2008091bc088', 'U', '', '2020-08-09 09:51:23', 0, '2020-08-09 09:51:23', 0, '0000-00-00 00:00:00', 0),
(89, 1, 239, '200809b9e089', 'U', '', '2020-08-09 09:53:32', 0, '2020-08-09 09:53:32', 0, '0000-00-00 00:00:00', 0),
(90, 1, 240, '20080930b090', 'U', '', '2020-08-09 09:53:54', 0, '2020-08-09 09:53:54', 0, '0000-00-00 00:00:00', 0),
(91, 1, 241, '200809a77091', 'U', '', '2020-08-09 09:54:02', 0, '2020-08-09 09:54:02', 0, '0000-00-00 00:00:00', 0),
(92, 1, 242, '200809fe7092', 'U', '', '2020-08-09 09:54:40', 0, '2020-08-09 09:54:40', 0, '0000-00-00 00:00:00', 0),
(93, 1, 243, '2008090e1093', 'U', '', '2020-08-09 09:58:58', 0, '2020-08-09 09:58:58', 0, '0000-00-00 00:00:00', 0),
(94, 1, 244, '2008094ea094', 'U', '', '2020-08-09 09:59:31', 79, '2020-08-09 09:59:31', 79, '0000-00-00 00:00:00', 0),
(95, 1, 245, '200809d4d095', 'U', '', '2020-08-09 09:59:53', 79, '2020-08-09 09:59:53', 79, '0000-00-00 00:00:00', 0),
(96, 1, 249, '200810e0b096', 'U', '', '2020-08-10 01:14:32', 0, '2020-08-10 01:14:32', 0, '0000-00-00 00:00:00', 0),
(97, 1, 251, '200810a0f097', 'P', '', '2020-08-10 01:16:07', 0, '2020-08-10 01:16:07', 0, '0000-00-00 00:00:00', 0),
(98, 1, 252, '2008294fc098', 'P', '', '2020-08-29 03:09:40', 0, '2020-08-29 03:09:40', 0, '0000-00-00 00:00:00', 0),
(99, 1, 253, '2008297f7099', 'P', '', '2020-08-29 03:26:54', 0, '2020-08-29 03:26:54', 0, '0000-00-00 00:00:00', 0),
(100, 1, 254, '200831d8c0100', 'P', '', '2020-08-31 07:39:43', 0, '2020-08-31 07:39:43', 0, '0000-00-00 00:00:00', 0),
(101, 1, 255, '200831b2a0101', 'P', '', '2020-08-31 08:33:21', 0, '2020-08-31 08:33:21', 0, '0000-00-00 00:00:00', 0),
(102, 1, 256, '2008319590102', 'P', '', '2020-08-31 09:03:32', 0, '2020-08-31 09:03:32', 0, '0000-00-00 00:00:00', 0),
(103, 1, 257, '2009032a40103', 'P', '', '2020-09-02 23:36:47', 0, '2020-09-02 23:36:47', 0, '0000-00-00 00:00:00', 0),
(104, 1, 258, '200903d2d0104', 'P', '', '2020-09-02 23:43:02', 0, '2020-09-02 23:43:02', 0, '0000-00-00 00:00:00', 0),
(105, 1, 259, '200903a810105', 'P', '', '2020-09-02 23:44:18', 0, '2020-09-02 23:44:18', 0, '0000-00-00 00:00:00', 0),
(106, 1, 260, '200903cf00106', 'P', '', '2020-09-02 23:44:53', 0, '2020-09-02 23:44:53', 0, '0000-00-00 00:00:00', 0),
(107, 1, 261, '200903c2b0107', 'P', '', '2020-09-02 23:48:05', 0, '2020-09-02 23:48:05', 0, '0000-00-00 00:00:00', 0),
(108, 1, 262, '200903b840108', 'P', '', '2020-09-02 23:48:54', 0, '2020-09-02 23:48:54', 0, '0000-00-00 00:00:00', 0),
(109, 1, 263, '2009032e60109', 'P', '', '2020-09-02 23:49:51', 0, '2020-09-02 23:49:51', 0, '0000-00-00 00:00:00', 0),
(110, 1, 264, '2009036c60110', 'P', '', '2020-09-02 23:54:18', 0, '2020-09-02 23:54:18', 0, '0000-00-00 00:00:00', 0),
(111, 1, 265, '200903a770111', 'P', '', '2020-09-03 01:28:28', 0, '2020-09-03 01:28:28', 0, '0000-00-00 00:00:00', 0),
(112, 1, 266, '2009035e80112', 'P', '', '2020-09-03 01:30:09', 0, '2020-09-03 01:30:09', 0, '0000-00-00 00:00:00', 0),
(113, 1, 267, '20090328e0113', 'P', '', '2020-09-03 01:31:37', 0, '2020-09-03 01:31:37', 0, '0000-00-00 00:00:00', 0),
(114, 1, 268, '200903e8b0114', 'P', '', '2020-09-03 01:32:53', 0, '2020-09-03 01:32:53', 0, '0000-00-00 00:00:00', 0),
(115, 1, 269, '2009030e50115', 'P', '', '2020-09-03 01:33:39', 0, '2020-09-03 01:33:39', 0, '0000-00-00 00:00:00', 0),
(116, 1, 270, '2009036070116', 'P', '', '2020-09-03 01:35:20', 0, '2020-09-03 01:35:20', 0, '0000-00-00 00:00:00', 0),
(117, 1, 271, '2009030840117', 'P', '', '2020-09-03 01:36:09', 0, '2020-09-03 01:36:09', 0, '0000-00-00 00:00:00', 0),
(118, 1, 272, '200903b3d0118', 'P', '', '2020-09-03 01:37:45', 0, '2020-09-03 01:37:45', 0, '0000-00-00 00:00:00', 0),
(119, 1, 273, '200903cc40119', 'P', '', '2020-09-03 01:38:38', 0, '2020-09-03 01:38:38', 0, '0000-00-00 00:00:00', 0),
(120, 1, 274, '200903e2a0120', 'P', '', '2020-09-03 01:39:00', 0, '2020-09-03 01:39:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 275, '2009036a80121', 'P', '', '2020-09-03 01:40:31', 0, '2020-09-03 01:40:31', 0, '0000-00-00 00:00:00', 0),
(122, 1, 276, '200903a040122', 'P', '', '2020-09-03 01:41:45', 0, '2020-09-03 01:41:45', 0, '0000-00-00 00:00:00', 0),
(123, 1, 277, '20090393c0123', 'P', '', '2020-09-03 01:43:19', 0, '2020-09-03 01:43:19', 0, '0000-00-00 00:00:00', 0),
(124, 1, 278, '200903d140124', 'P', '', '2020-09-03 01:46:27', 0, '2020-09-03 01:46:27', 0, '0000-00-00 00:00:00', 0),
(125, 1, 279, '2009035f60125', 'P', '', '2020-09-03 01:49:08', 0, '2020-09-03 01:49:08', 0, '0000-00-00 00:00:00', 0),
(126, 1, 280, '2009036550126', 'P', '', '2020-09-03 01:52:36', 0, '2020-09-03 01:52:36', 0, '0000-00-00 00:00:00', 0),
(127, 1, 281, '20090301a0127', 'P', '', '2020-09-03 01:53:52', 0, '2020-09-03 01:53:52', 0, '0000-00-00 00:00:00', 0),
(128, 1, 282, '20090392b0128', 'P', '', '2020-09-03 01:55:16', 0, '2020-09-03 01:55:16', 0, '0000-00-00 00:00:00', 0),
(129, 1, 283, '2009036340129', 'P', '', '2020-09-03 01:58:37', 0, '2020-09-03 01:58:37', 0, '0000-00-00 00:00:00', 0),
(130, 1, 284, '20090378a0130', 'P', '', '2020-09-03 02:08:23', 0, '2020-09-03 02:08:23', 0, '0000-00-00 00:00:00', 0),
(131, 1, 285, '2009039710131', 'P', '', '2020-09-03 02:10:02', 0, '2020-09-03 02:10:02', 0, '0000-00-00 00:00:00', 0),
(132, 1, 286, '2009034c10132', 'P', '', '2020-09-03 02:12:15', 0, '2020-09-03 02:12:15', 0, '0000-00-00 00:00:00', 0),
(133, 1, 287, '200903cfc0133', 'P', '', '2020-09-03 02:13:30', 0, '2020-09-03 02:13:30', 0, '0000-00-00 00:00:00', 0),
(134, 1, 289, '200908ab40134', 'P', '', '2020-09-08 03:37:26', 0, '2020-09-08 03:37:26', 0, '0000-00-00 00:00:00', 0),
(135, 1, 290, '2009085410135', 'P', '', '2020-09-08 05:54:58', 0, '2020-09-08 05:54:58', 0, '0000-00-00 00:00:00', 0),
(136, 1, 291, '200914bfb0136', 'P', '', '2020-09-14 07:07:33', 0, '2020-09-14 07:07:33', 0, '0000-00-00 00:00:00', 0),
(137, 1, 292, '2009148870137', 'P', '', '2020-09-14 07:08:00', 0, '2020-09-14 07:08:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 293, '200914aef0138', 'P', '', '2020-09-14 07:10:52', 0, '2020-09-14 07:10:52', 0, '0000-00-00 00:00:00', 0),
(139, 1, 294, '200914d8a0139', 'P', '', '2020-09-14 07:14:03', 0, '2020-09-14 07:14:03', 0, '0000-00-00 00:00:00', 0),
(140, 1, 295, '200914a4f0140', 'P', '', '2020-09-14 07:15:44', 0, '2020-09-14 07:15:44', 0, '0000-00-00 00:00:00', 0),
(141, 1, 296, '200914ad00141', 'P', '', '2020-09-14 07:16:06', 0, '2020-09-14 07:16:06', 0, '0000-00-00 00:00:00', 0),
(142, 1, 297, '2009149b80142', 'P', '', '2020-09-14 07:18:22', 0, '2020-09-14 07:18:22', 0, '0000-00-00 00:00:00', 0),
(143, 1, 298, '200914a530143', 'P', '', '2020-09-14 07:20:03', 0, '2020-09-14 07:20:03', 0, '0000-00-00 00:00:00', 0),
(144, 1, 299, '200914de20144', 'P', '', '2020-09-14 07:21:59', 0, '2020-09-14 07:21:59', 0, '0000-00-00 00:00:00', 0),
(145, 1, 300, '200914f1d0145', 'P', '', '2020-09-14 07:23:04', 0, '2020-09-14 07:23:04', 0, '0000-00-00 00:00:00', 0),
(146, 1, 301, '200914d120146', 'P', '', '2020-09-14 07:30:12', 0, '2020-09-14 07:30:12', 0, '0000-00-00 00:00:00', 0),
(147, 1, 302, '2009144f80147', 'P', '', '2020-09-14 07:31:16', 0, '2020-09-14 07:31:16', 0, '0000-00-00 00:00:00', 0),
(148, 1, 303, '2009142fb0148', 'P', '', '2020-09-14 07:32:34', 0, '2020-09-14 07:32:34', 0, '0000-00-00 00:00:00', 0),
(149, 1, 304, '200914dbb0149', 'P', '', '2020-09-14 07:33:17', 0, '2020-09-14 07:33:17', 0, '0000-00-00 00:00:00', 0),
(150, 1, 305, '200914ea40150', 'P', '', '2020-09-14 07:34:42', 0, '2020-09-14 07:34:42', 0, '0000-00-00 00:00:00', 0),
(151, 1, 307, '2009148ac0151', 'P', '', '2020-09-14 07:37:59', 0, '2020-09-14 07:37:59', 0, '0000-00-00 00:00:00', 0),
(152, 1, 308, '2009148a50152', 'P', '', '2020-09-14 07:38:09', 0, '2020-09-14 07:38:09', 0, '0000-00-00 00:00:00', 0),
(153, 1, 309, '2009149100153', 'P', '', '2020-09-14 07:39:45', 0, '2020-09-14 07:39:45', 0, '0000-00-00 00:00:00', 0),
(154, 1, 310, '200914e6f0154', 'P', '', '2020-09-14 07:41:34', 0, '2020-09-14 07:41:34', 0, '0000-00-00 00:00:00', 0),
(155, 1, 311, '200914b720155', 'P', '', '2020-09-14 07:43:09', 0, '2020-09-14 07:43:09', 0, '0000-00-00 00:00:00', 0),
(156, 1, 312, '200914e060156', 'P', '', '2020-09-14 07:44:10', 0, '2020-09-14 07:44:10', 0, '0000-00-00 00:00:00', 0),
(157, 1, 313, '2009144290157', 'P', '', '2020-09-14 07:45:12', 0, '2020-09-14 07:45:12', 0, '0000-00-00 00:00:00', 0),
(158, 1, 314, '2009141460158', 'P', '', '2020-09-14 07:46:38', 0, '2020-09-14 07:46:38', 0, '0000-00-00 00:00:00', 0),
(159, 1, 315, '2009146570159', 'P', '', '2020-09-14 07:46:59', 0, '2020-09-14 07:46:59', 0, '0000-00-00 00:00:00', 0),
(160, 1, 316, '2009146610160', 'P', '', '2020-09-14 07:47:45', 0, '2020-09-14 07:47:45', 0, '0000-00-00 00:00:00', 0),
(161, 1, 317, '200914bd00161', 'P', '', '2020-09-14 07:48:08', 0, '2020-09-14 07:48:08', 0, '0000-00-00 00:00:00', 0),
(162, 1, 318, '2009148680162', 'P', '', '2020-09-14 07:48:26', 0, '2020-09-14 07:48:26', 0, '0000-00-00 00:00:00', 0),
(163, 1, 319, '200914bce0163', 'P', '', '2020-09-14 07:48:40', 0, '2020-09-14 07:48:40', 0, '0000-00-00 00:00:00', 0),
(164, 1, 320, '20091461e0164', 'P', '', '2020-09-14 07:49:07', 0, '2020-09-14 07:49:07', 0, '0000-00-00 00:00:00', 0),
(165, 1, 321, '2009142ff0165', 'P', '', '2020-09-14 07:49:47', 0, '2020-09-14 07:49:47', 0, '0000-00-00 00:00:00', 0),
(166, 1, 322, '2009141170166', 'P', '', '2020-09-14 07:51:12', 0, '2020-09-14 07:51:12', 0, '0000-00-00 00:00:00', 0),
(167, 1, 323, '2009140a90167', 'P', '', '2020-09-14 07:51:36', 0, '2020-09-14 07:51:36', 0, '0000-00-00 00:00:00', 0),
(168, 1, 324, '200914a410168', 'P', '', '2020-09-14 07:55:29', 0, '2020-09-14 07:55:29', 0, '0000-00-00 00:00:00', 0),
(169, 1, 1, '2009141f10169', 'P', '', '2020-09-14 08:06:20', 0, '2020-09-14 08:06:20', 0, '0000-00-00 00:00:00', 0),
(170, 1, 2, '2009179210170', 'P', '', '2020-09-17 12:50:04', 0, '2020-09-17 12:50:04', 0, '0000-00-00 00:00:00', 0),
(171, 1, 3, '200920a860171', 'P', '', '2020-09-20 09:14:11', 0, '2020-09-20 09:14:11', 0, '0000-00-00 00:00:00', 0),
(172, 1, 8, '200924f510172', 'P', '', '2020-09-24 06:44:02', 81, '2020-09-24 06:44:02', 81, '0000-00-00 00:00:00', 0),
(173, 1, 9, '200924b450173', 'P', '', '2020-09-24 06:44:38', 81, '2020-09-24 06:44:38', 81, '0000-00-00 00:00:00', 0),
(174, 1, 10, '2009243970174', 'P', '', '2020-09-24 06:47:00', 81, '2020-09-24 06:47:00', 81, '0000-00-00 00:00:00', 0),
(175, 1, 11, '200924bcf0175', 'P', '', '2020-09-24 06:47:47', 81, '2020-09-24 06:47:47', 81, '0000-00-00 00:00:00', 0),
(176, 1, 12, '2009248000176', 'P', '', '2020-09-24 06:48:08', 81, '2020-09-24 06:48:08', 81, '0000-00-00 00:00:00', 0),
(177, 1, 13, '20092421b0177', 'P', '', '2020-09-24 07:05:21', 81, '2020-09-24 07:05:21', 81, '0000-00-00 00:00:00', 0),
(178, 1, 14, '200924c030178', 'P', '', '2020-09-24 07:05:59', 81, '2020-09-24 07:05:59', 81, '0000-00-00 00:00:00', 0),
(179, 1, 15, '2009242b10179', 'P', '', '2020-09-24 07:06:20', 81, '2020-09-24 07:06:20', 81, '0000-00-00 00:00:00', 0),
(180, 1, 16, '2009246ff0180', 'P', '', '2020-09-24 07:06:53', 81, '2020-09-24 07:06:53', 81, '0000-00-00 00:00:00', 0),
(181, 1, 17, '2009245dd0181', 'P', '', '2020-09-24 07:07:22', 81, '2020-09-24 07:07:22', 81, '0000-00-00 00:00:00', 0),
(182, 1, 18, '200924bb40182', 'P', '', '2020-09-24 07:09:46', 81, '2020-09-24 07:09:46', 81, '0000-00-00 00:00:00', 0),
(183, 1, 19, '2009242e40183', 'P', '', '2020-09-24 07:10:56', 81, '2020-09-24 07:10:56', 81, '0000-00-00 00:00:00', 0),
(184, 1, 20, '200924c090184', 'P', '', '2020-09-24 07:14:18', 81, '2020-09-24 07:14:18', 81, '0000-00-00 00:00:00', 0),
(185, 1, 21, '2009243000185', 'P', '', '2020-09-24 07:15:11', 81, '2020-09-24 07:15:11', 81, '0000-00-00 00:00:00', 0),
(186, 1, 22, '2009240820186', 'P', '', '2020-09-24 07:19:54', 81, '2020-09-24 07:19:54', 81, '0000-00-00 00:00:00', 0),
(187, 1, 23, '2009247840187', 'P', '', '2020-09-24 07:20:44', 81, '2020-09-24 07:20:44', 81, '0000-00-00 00:00:00', 0),
(188, 1, 24, '20092449e0188', 'P', '', '2020-09-24 07:21:05', 81, '2020-09-24 07:21:05', 81, '0000-00-00 00:00:00', 0),
(189, 1, 25, '2009249890189', 'P', '', '2020-09-24 07:23:35', 81, '2020-09-24 07:23:35', 81, '0000-00-00 00:00:00', 0),
(190, 1, 26, '200924c380190', 'P', '', '2020-09-24 07:23:54', 81, '2020-09-24 07:23:54', 81, '0000-00-00 00:00:00', 0),
(191, 1, 27, '2009240460191', 'P', '', '2020-09-24 07:25:33', 81, '2020-09-24 07:25:33', 81, '0000-00-00 00:00:00', 0),
(192, 1, 28, '2009241310192', 'P', '', '2020-09-24 07:25:56', 81, '2020-09-24 07:25:56', 81, '0000-00-00 00:00:00', 0),
(193, 1, 29, '20092424f0193', 'P', '', '2020-09-24 07:26:32', 81, '2020-09-24 07:26:32', 81, '0000-00-00 00:00:00', 0),
(194, 1, 30, '2009242e20194', 'P', '', '2020-09-24 07:27:56', 81, '2020-09-24 07:27:56', 81, '0000-00-00 00:00:00', 0),
(195, 1, 31, '200924e7f0195', 'P', '', '2020-09-24 08:46:02', 81, '2020-09-24 08:46:02', 81, '0000-00-00 00:00:00', 0),
(196, 1, 32, '20092402c0196', 'P', '', '2020-09-24 09:04:39', 81, '2020-09-24 09:04:39', 81, '0000-00-00 00:00:00', 0),
(197, 1, 33, '200924df30197', 'P', '', '2020-09-24 09:05:09', 81, '2020-09-24 09:05:09', 81, '0000-00-00 00:00:00', 0),
(198, 1, 34, '2009241130198', 'P', '', '2020-09-24 09:06:05', 81, '2020-09-24 09:06:05', 81, '0000-00-00 00:00:00', 0),
(199, 1, 35, '2009241c90199', 'P', '', '2020-09-24 09:06:51', 81, '2020-09-24 09:06:51', 81, '0000-00-00 00:00:00', 0),
(200, 1, 36, '2009243500200', 'P', '', '2020-09-24 09:07:23', 81, '2020-09-24 09:07:23', 81, '0000-00-00 00:00:00', 0),
(201, 1, 37, '20092463d0201', 'P', '', '2020-09-24 09:11:46', 81, '2020-09-24 09:11:46', 81, '0000-00-00 00:00:00', 0),
(202, 1, 38, '200924cdf0202', 'P', '', '2020-09-24 09:13:26', 81, '2020-09-24 09:13:26', 81, '0000-00-00 00:00:00', 0),
(203, 1, 39, '20092458c0203', 'P', '', '2020-09-24 09:17:23', 81, '2020-09-24 09:17:23', 81, '0000-00-00 00:00:00', 0),
(204, 1, 40, '20092445f0204', 'P', '', '2020-09-24 09:19:25', 81, '2020-09-24 09:19:25', 81, '0000-00-00 00:00:00', 0),
(205, 1, 41, '2009246470205', 'P', '', '2020-09-24 09:19:39', 81, '2020-09-24 09:19:39', 81, '0000-00-00 00:00:00', 0),
(206, 1, 42, '2009248230206', 'P', '', '2020-09-24 09:21:47', 81, '2020-09-24 09:21:47', 81, '0000-00-00 00:00:00', 0),
(207, 1, 43, '200924b8d0207', 'P', '', '2020-09-24 09:22:29', 81, '2020-09-24 09:22:29', 81, '0000-00-00 00:00:00', 0),
(208, 1, 44, '200924b630208', 'P', '', '2020-09-24 09:23:01', 81, '2020-09-24 09:23:01', 81, '0000-00-00 00:00:00', 0),
(209, 1, 45, '2009243e20209', 'P', '', '2020-09-24 09:23:25', 81, '2020-09-24 09:23:25', 81, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_manufacturercategories`
--

CREATE TABLE `z0djb_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(11) UNSIGNED NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Manufacturers are assigned to these categories';

--
-- Dumping data for table `z0djb_virtuemart_manufacturercategories`
--

INSERT INTO `z0djb_virtuemart_manufacturercategories` (`virtuemart_manufacturercategories_id`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_manufacturercategories_vi_vn`
--

CREATE TABLE `z0djb_virtuemart_manufacturercategories_vi_vn` (
  `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL,
  `mf_category_name` char(180) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mf_category_desc` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` char(192) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_manufacturercategories_vi_vn`
--

INSERT INTO `z0djb_virtuemart_manufacturercategories_vi_vn` (`virtuemart_manufacturercategories_id`, `mf_category_name`, `mf_category_desc`, `slug`) VALUES
(1, '-default-', 'This is the default manufacturer category', '-default-');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_manufacturers`
--

CREATE TABLE `z0djb_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_manufacturercategories_id` int(11) DEFAULT NULL,
  `hits` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Manufacturers are those who deliver products';

--
-- Dumping data for table `z0djb_virtuemart_manufacturers`
--

INSERT INTO `z0djb_virtuemart_manufacturers` (`virtuemart_manufacturer_id`, `virtuemart_manufacturercategories_id`, `hits`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_manufacturers_vi_vn`
--

CREATE TABLE `z0djb_virtuemart_manufacturers_vi_vn` (
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL,
  `mf_name` char(180) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mf_email` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mf_desc` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mf_url` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` char(192) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_manufacturers_vi_vn`
--

INSERT INTO `z0djb_virtuemart_manufacturers_vi_vn` (`virtuemart_manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_url`, `slug`) VALUES
(1, 'Manufacturer', ' manufacturer@example.org', 'An example for a manufacturer', 'http://www.example.org', 'manufacturer-example');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_manufacturer_medias`
--

CREATE TABLE `z0djb_virtuemart_manufacturer_medias` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_manufacturer_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_manufacturer_medias`
--

INSERT INTO `z0djb_virtuemart_manufacturer_medias` (`id`, `virtuemart_manufacturer_id`, `virtuemart_media_id`, `ordering`) VALUES
(1, 1, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_medias`
--

CREATE TABLE `z0djb_virtuemart_medias` (
  `virtuemart_media_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT 1,
  `file_title` char(126) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `file_description` char(254) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `file_meta` char(254) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `file_mimetype` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `file_type` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `file_url` varchar(900) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `file_url_thumb` varchar(900) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT 0,
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT 0,
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT 0,
  `file_params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_lang` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Additional Images and Files which are assigned to products';

--
-- Dumping data for table `z0djb_virtuemart_medias`
--

INSERT INTO `z0djb_virtuemart_medias` (`virtuemart_media_id`, `virtuemart_vendor_id`, `file_title`, `file_description`, `file_meta`, `file_mimetype`, `file_type`, `file_url`, `file_url_thumb`, `file_is_product_image`, `file_is_downloadable`, `file_is_forSale`, `file_params`, `file_lang`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(95, 1, 'iphone-x-bi-khai-tu-techtimes.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/iphone-x-bi-khai-tu-techtimes.jpg', '', 0, 0, 0, '', '', 0, 1, '2019-01-09 12:07:50', 42, '2019-01-09 12:07:50', 42, '0000-00-00 00:00:00', 0),
(94, 1, '636748771945393060_iphone-xs-max-gold.png', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/636748771945393060_iphone-xs-max-gold.png', '', 0, 0, 0, '', '', 0, 1, '2019-01-09 12:06:02', 42, '2019-01-09 12:06:02', 42, '0000-00-00 00:00:00', 0),
(96, 1, 'spdemo_400x400.jpg', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/spdemo_400x400.jpg', '', 0, 0, 0, '', '', 0, 1, '2020-08-19 03:05:18', 42, '2020-08-19 03:05:18', 42, '0000-00-00 00:00:00', 0),
(97, 1, 'spdemo_400x40096841430.jpg', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/spdemo_400x40096841430.jpg', '', 0, 0, 0, '', '', 0, 1, '2020-08-19 04:12:20', 42, '2020-08-19 04:12:20', 42, '0000-00-00 00:00:00', 0),
(98, 1, 'spdemo_400x400.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400.jpg', '', 0, 0, 0, '', '', 0, 1, '2020-08-20 06:13:39', 42, '2021-09-21 03:23:24', 42, '0000-00-00 00:00:00', 0),
(99, 1, 'spdemo_400x40024499206.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x40024499206.jpg', '', 0, 0, 0, '', '', 0, 1, '2020-08-20 06:16:23', 42, '2020-08-20 06:16:23', 42, '0000-00-00 00:00:00', 0),
(100, 1, '3.jpg', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/3.jpg', '', 0, 0, 0, '', '', 0, 1, '2020-09-20 09:39:21', 42, '2020-09-20 09:39:21', 42, '0000-00-00 00:00:00', 0),
(101, 1, '4.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/4.jpg', '', 0, 0, 0, '', '', 0, 1, '2020-09-20 10:40:21', 42, '2022-08-06 03:03:07', 42, '0000-00-00 00:00:00', 0),
(102, 1, '1.png', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/1.png', '', 0, 0, 0, NULL, '', 0, 1, '2021-08-14 04:03:41', 85, '2021-08-14 04:03:41', 85, '0000-00-00 00:00:00', 0),
(103, 1, 'capture.png', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/capture.png', '', 0, 0, 0, NULL, '', 0, 1, '2021-08-14 04:03:41', 85, '2021-08-14 04:03:41', 85, '0000-00-00 00:00:00', 0),
(104, 1, 'spdemo_400x400_400x400-(1).jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1).jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:02:27', 42, '2021-09-17 04:02:27', 42, '0000-00-00 00:00:00', 0),
(105, 1, 'spdemo_400x400_400x400.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:02:27', 42, '2021-09-17 04:02:27', 42, '0000-00-00 00:00:00', 0),
(106, 1, 'spdemo_400x400_400x400-(1)75359703.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)75359703.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:09:55', 42, '2021-09-17 04:09:55', 42, '0000-00-00 00:00:00', 0),
(107, 1, 'spdemo_400x400_400x40036175929.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40036175929.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:09:55', 42, '2021-09-17 04:09:55', 42, '0000-00-00 00:00:00', 0),
(108, 1, 'spdemo_400x400_400x400-(1)60420121.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)60420121.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:10:08', 42, '2021-09-17 04:10:08', 42, '0000-00-00 00:00:00', 0),
(109, 1, 'spdemo_400x400_400x40037924015.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40037924015.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:10:08', 42, '2021-09-17 04:10:08', 42, '0000-00-00 00:00:00', 0),
(110, 1, 'spdemo_400x400_400x400-(1)38732450.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)38732450.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:24:12', 42, '2021-09-17 04:24:12', 42, '0000-00-00 00:00:00', 0),
(111, 1, 'spdemo_400x400_400x40048187228.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40048187228.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:24:12', 42, '2021-09-17 04:24:12', 42, '0000-00-00 00:00:00', 0),
(112, 1, 'spdemo_400x400_400x400-(1)92560950.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)92560950.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:25:07', 42, '2021-09-17 04:25:07', 42, '0000-00-00 00:00:00', 0),
(113, 1, 'spdemo_400x400_400x40035844927.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40035844927.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:25:07', 42, '2021-09-17 04:25:07', 42, '0000-00-00 00:00:00', 0),
(114, 1, 'spdemo_400x400_400x400-(1)48821276.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)48821276.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:27:44', 42, '2021-09-17 04:27:44', 42, '0000-00-00 00:00:00', 0),
(115, 1, 'spdemo_400x400_400x40069516385.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40069516385.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:27:44', 42, '2021-09-17 04:27:44', 42, '0000-00-00 00:00:00', 0),
(116, 1, 'spdemo_400x400_400x400-(1)76894334.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)76894334.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:29:19', 42, '2021-09-17 04:29:19', 42, '0000-00-00 00:00:00', 0),
(117, 1, 'spdemo_400x400_400x40027108904.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40027108904.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:29:19', 42, '2021-09-17 04:29:19', 42, '0000-00-00 00:00:00', 0),
(118, 1, 'spdemo_400x400_400x400-(1)11090370.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)11090370.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:30:12', 42, '2021-09-17 04:30:12', 42, '0000-00-00 00:00:00', 0),
(119, 1, 'spdemo_400x400_400x40065376144.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40065376144.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:30:12', 42, '2021-09-17 04:30:12', 42, '0000-00-00 00:00:00', 0),
(120, 1, 'spdemo_400x400_400x400-(1)43974585.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)43974585.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:30:34', 42, '2021-09-17 04:30:34', 42, '0000-00-00 00:00:00', 0),
(121, 1, 'spdemo_400x400_400x40061580381.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40061580381.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:30:34', 42, '2021-09-17 04:30:34', 42, '0000-00-00 00:00:00', 0),
(122, 1, 'spdemo_400x400_400x400-(1)92556463.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)92556463.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:30:49', 42, '2021-09-17 04:30:49', 42, '0000-00-00 00:00:00', 0),
(123, 1, 'spdemo_400x400_400x40057306337.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40057306337.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:30:49', 42, '2021-09-17 04:30:49', 42, '0000-00-00 00:00:00', 0),
(124, 1, 'spdemo_400x400_400x400-(1)26455159.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)26455159.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:30:59', 42, '2021-09-17 04:30:59', 42, '0000-00-00 00:00:00', 0),
(125, 1, 'spdemo_400x400_400x40049692184.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40049692184.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:30:59', 42, '2021-09-17 04:30:59', 42, '0000-00-00 00:00:00', 0),
(126, 1, 'spdemo_400x400_400x400-(1)90248711.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x400-(1)90248711.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:31:17', 42, '2021-09-17 04:31:17', 42, '0000-00-00 00:00:00', 0),
(127, 1, 'spdemo_400x400_400x40063443767.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/spdemo_400x400_400x40063443767.jpg', '', 0, 0, 0, NULL, '', 0, 1, '2021-09-17 04:31:17', 42, '2021-09-17 04:31:17', 42, '0000-00-00 00:00:00', 0),
(128, 1, '1.png', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/1.png', '', 0, 0, 0, NULL, '', 0, 1, '2021-10-18 01:51:11', 42, '2021-10-18 01:51:11', 42, '0000-00-00 00:00:00', 0),
(129, 1, '2.png', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/2.png', '', 0, 0, 0, NULL, '', 0, 1, '2021-10-18 01:51:11', 42, '2021-10-18 01:51:11', 42, '0000-00-00 00:00:00', 0),
(130, 1, '2.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/2.jpg', '', 0, 0, 0, '', '', 0, 1, '2022-07-25 05:24:35', 42, '2022-07-25 05:24:35', 42, '0000-00-00 00:00:00', 0),
(131, 1, '1.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/1.jpg', '', 0, 0, 0, '', '', 0, 1, '2022-07-25 05:30:18', 42, '2022-07-25 05:30:18', 42, '0000-00-00 00:00:00', 0),
(132, 1, '3.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/3.jpg', '', 0, 0, 0, '', '', 0, 1, '2022-07-25 05:44:15', 42, '2022-07-25 05:44:15', 42, '0000-00-00 00:00:00', 0),
(133, 1, '6.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/6.jpg', '', 0, 0, 0, '', '', 0, 1, '2022-07-25 05:44:26', 42, '2022-07-25 05:44:26', 42, '0000-00-00 00:00:00', 0),
(134, 1, '260486693.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/260486693.jpg', '', 0, 0, 0, '', '', 0, 1, '2022-07-25 05:44:36', 42, '2022-07-25 05:44:36', 42, '0000-00-00 00:00:00', 0),
(135, 1, 'product-thumbnail-1.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/product-thumbnail-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2025-11-10 03:32:35', 42, '2025-11-10 03:32:35', 42, '0000-00-00 00:00:00', 0),
(136, 1, 'product-thumbnail-136822507.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/product-thumbnail-136822507.jpg', '', 0, 0, 0, '', '', 0, 1, '2025-11-10 03:38:51', 42, '2025-11-10 03:38:51', 42, '0000-00-00 00:00:00', 0),
(137, 1, 'product-thumbnail-2.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/product-thumbnail-2.jpg', '', 0, 0, 0, '', '', 0, 1, '2025-11-10 03:38:55', 42, '2025-11-10 03:38:55', 42, '0000-00-00 00:00:00', 0),
(138, 1, 'product-thumbnail-3.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/product-thumbnail-3.jpg', '', 0, 0, 0, '', '', 0, 1, '2025-11-10 03:39:00', 42, '2025-11-10 03:39:00', 42, '0000-00-00 00:00:00', 0),
(139, 1, 'product-thumbnail-4.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/product-thumbnail-4.jpg', '', 0, 0, 0, '', '', 0, 1, '2025-11-10 03:39:06', 42, '2025-11-10 03:39:06', 42, '0000-00-00 00:00:00', 0),
(140, 1, 'product-thumbnail-5.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/product-thumbnail-5.jpg', '', 0, 0, 0, '', '', 0, 1, '2025-11-10 03:40:13', 42, '2025-11-10 03:40:13', 42, '0000-00-00 00:00:00', 0),
(141, 1, 'product-thumbnail-6.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/product-thumbnail-6.jpg', '', 0, 0, 0, '', '', 0, 1, '2025-11-10 03:40:19', 42, '2025-11-10 03:40:19', 42, '0000-00-00 00:00:00', 0),
(142, 1, 'product-thumbnail-7.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/product-thumbnail-7.jpg', '', 0, 0, 0, '', '', 0, 1, '2025-11-10 03:40:23', 42, '2025-11-10 03:40:23', 42, '0000-00-00 00:00:00', 0),
(143, 1, 'product-thumbnail-8.jpg', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/product-thumbnail-8.jpg', '', 0, 0, 0, '', '', 0, 1, '2025-11-10 03:40:29', 42, '2025-11-10 03:40:29', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_migration_oldtonew_ids`
--

CREATE TABLE `z0djb_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) UNSIGNED NOT NULL,
  `cats` longblob DEFAULT NULL,
  `catsxref` blob DEFAULT NULL,
  `manus` longblob DEFAULT NULL,
  `mfcats` blob DEFAULT NULL,
  `shoppergroups` longblob DEFAULT NULL,
  `products` longblob DEFAULT NULL,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob DEFAULT NULL,
  `orders` longblob DEFAULT NULL,
  `attributes` longblob DEFAULT NULL,
  `relatedproducts` longblob DEFAULT NULL,
  `orders_start` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='xref table for vm1 ids to vm2 ids';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_modules`
--

CREATE TABLE `z0djb_virtuemart_modules` (
  `module_id` int(11) UNSIGNED NOT NULL,
  `module_name` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `module_description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `module_perms` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` enum('0','1') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='VirtueMart Core Modules, not: Joomla modules';

--
-- Dumping data for table `z0djb_virtuemart_modules`
--

INSERT INTO `z0djb_virtuemart_modules` (`module_id`, `module_name`, `module_description`, `module_perms`, `published`, `is_admin`, `ordering`) VALUES
(1, 'product', 'Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes  ,Product Types      Product Files (view=media), Inventory  , Calculation Rules ,Customer Reviews  ', 'storeadmin,admin', 1, '1', 1),
(2, 'order', 'View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ', 'admin,storeadmin', 1, '1', 2),
(3, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 1, '1', 3),
(4, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '1', 4),
(5, 'configuration', 'Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ', 'admin,storeadmin', 1, '1', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 0, '0', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.', 'none', 1, '0', 99),
(8, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '1', 4),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 1, '0', 99),
(10, 'checkout', '', 'none', 0, '0', 99),
(11, 'tools', 'Tools', 'admin', 1, '1', 8),
(13, 'zone', 'This is the zone-shipment module. Here you can manage your shipment costs according to Zones.', 'admin,storeadmin', 0, '1', 11);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_orders`
--

CREATE TABLE `z0djb_virtuemart_orders` (
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `order_number` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `customer_number` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_pass` char(8) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `order_salesPrice` decimal(15,2) NOT NULL DEFAULT 0.00,
  `order_billTaxAmount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `order_billTax` varchar(400) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `order_discountAmount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `order_subtotal` decimal(15,2) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,2) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `coupon_code` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT 1.00000,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `customer_note` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_language` char(7) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ip_address` char(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Used to store all orders';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_orderstates`
--

CREATE TABLE `z0djb_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT 1,
  `order_status_code` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_status_name` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_status_description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_stock_handle` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'A',
  `ordering` int(2) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='All available order statuses';

--
-- Dumping data for table `z0djb_virtuemart_orderstates`
--

INSERT INTO `z0djb_virtuemart_orderstates` (`virtuemart_orderstate_id`, `virtuemart_vendor_id`, `order_status_code`, `order_status_name`, `order_status_description`, `order_stock_handle`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'P', 'COM_VIRTUEMART_ORDER_STATUS_PENDING', '', 'R', 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'U', 'COM_VIRTUEMART_ORDER_STATUS_PAYSUCCESS', '', 'R', 2, 1, '0000-00-00 00:00:00', 0, '2020-09-25 05:26:33', 42, '0000-00-00 00:00:00', 0),
(3, 1, 'C', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED_BY_SHOPPER', '', 'R', 3, 0, '0000-00-00 00:00:00', 0, '2020-08-10 01:12:13', 42, '0000-00-00 00:00:00', 0),
(4, 1, 'X', 'COM_VIRTUEMART_ORDER_STATUS_CANCELORDER', '', 'R', 4, 0, '0000-00-00 00:00:00', 0, '2020-08-10 01:11:53', 42, '0000-00-00 00:00:00', 0),
(5, 1, 'R', 'COM_VIRTUEMART_ORDER_STATUS_REFUNDED', '', 'R', 5, 0, '0000-00-00 00:00:00', 0, '2020-08-10 01:12:05', 42, '0000-00-00 00:00:00', 0),
(6, 1, 'S', 'COM_VIRTUEMART_ORDER_STATUS_SHIPPED', '', 'R', 6, 1, '0000-00-00 00:00:00', 0, '2016-04-09 05:27:23', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_order_calc_rules`
--

CREATE TABLE `z0djb_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(11) DEFAULT NULL,
  `virtuemart_order_id` int(11) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT 1,
  `virtuemart_order_item_id` int(11) DEFAULT NULL,
  `calc_rule_name` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` char(16) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_mathop` char(16) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `calc_result` decimal(15,2) NOT NULL DEFAULT 0.00,
  `calc_value` decimal(15,2) NOT NULL DEFAULT 0.00,
  `calc_currency` smallint(1) DEFAULT NULL,
  `calc_params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Stores all calculation rules which are part of an order';

--
-- Dumping data for table `z0djb_virtuemart_order_calc_rules`
--

INSERT INTO `z0djb_virtuemart_order_calc_rules` (`virtuemart_order_calc_rule_id`, `virtuemart_calc_id`, `virtuemart_order_id`, `virtuemart_vendor_id`, `virtuemart_order_item_id`, `calc_rule_name`, `calc_kind`, `calc_mathop`, `calc_amount`, `calc_result`, `calc_value`, `calc_currency`, `calc_params`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(3, 0, 84, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:51:42', 0, '2021-09-06 04:51:42', 0, '0000-00-00 00:00:00', 0),
(4, 0, 84, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:51:42', 0, '2021-09-06 04:51:42', 0, '0000-00-00 00:00:00', 0),
(5, 0, 85, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:54:02', 0, '2021-09-06 04:54:02', 0, '0000-00-00 00:00:00', 0),
(6, 0, 85, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:54:02', 0, '2021-09-06 04:54:02', 0, '0000-00-00 00:00:00', 0),
(7, 0, 86, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:54:32', 0, '2021-09-06 04:54:32', 0, '0000-00-00 00:00:00', 0),
(8, 0, 86, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:54:32', 0, '2021-09-06 04:54:32', 0, '0000-00-00 00:00:00', 0),
(9, 0, 87, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:54:46', 0, '2021-09-06 04:54:46', 0, '0000-00-00 00:00:00', 0),
(10, 0, 87, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:54:46', 0, '2021-09-06 04:54:46', 0, '0000-00-00 00:00:00', 0),
(11, 0, 88, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:59:03', 0, '2021-09-06 04:59:03', 0, '0000-00-00 00:00:00', 0),
(12, 0, 88, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2021-09-06 04:59:03', 0, '2021-09-06 04:59:03', 0, '0000-00-00 00:00:00', 0),
(13, 0, 89, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:51:50', 0, '2022-07-25 04:51:50', 0, '0000-00-00 00:00:00', 0),
(14, 0, 89, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:51:50', 0, '2022-07-25 04:51:50', 0, '0000-00-00 00:00:00', 0),
(15, 0, 90, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:52:08', 0, '2022-07-25 04:52:08', 0, '0000-00-00 00:00:00', 0),
(16, 0, 90, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:52:08', 0, '2022-07-25 04:52:08', 0, '0000-00-00 00:00:00', 0),
(17, 0, 91, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:52:47', 0, '2022-07-25 04:52:47', 0, '0000-00-00 00:00:00', 0),
(18, 0, 91, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:52:47', 0, '2022-07-25 04:52:47', 0, '0000-00-00 00:00:00', 0),
(19, 0, 92, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:53:44', 0, '2022-07-25 04:53:44', 0, '0000-00-00 00:00:00', 0),
(20, 0, 92, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:53:44', 0, '2022-07-25 04:53:44', 0, '0000-00-00 00:00:00', 0),
(21, 0, 93, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:54:49', 0, '2022-07-25 04:54:49', 0, '0000-00-00 00:00:00', 0),
(22, 0, 93, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:54:49', 0, '2022-07-25 04:54:49', 0, '0000-00-00 00:00:00', 0),
(23, 0, 94, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:55:23', 0, '2022-07-25 04:55:23', 0, '0000-00-00 00:00:00', 0),
(24, 0, 94, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 04:55:23', 0, '2022-07-25 04:55:23', 0, '0000-00-00 00:00:00', 0),
(25, 0, 95, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 05:03:00', 0, '2022-07-25 05:03:00', 0, '0000-00-00 00:00:00', 0),
(26, 0, 95, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2022-07-25 05:03:00', 0, '2022-07-25 05:03:00', 0, '0000-00-00 00:00:00', 0),
(27, 2, 96, 1, 14, 'Chiết khấu', 'DATax', '-', '0.00', '0.00', '0.00', 147, '', '2022-08-06 03:06:34', 90, '2022-08-06 03:06:34', 90, '0000-00-00 00:00:00', 0),
(28, 0, 96, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2022-08-06 03:06:34', 90, '2022-08-06 03:06:34', 90, '0000-00-00 00:00:00', 0),
(29, 0, 96, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2022-08-06 03:06:34', 90, '2022-08-06 03:06:34', 90, '0000-00-00 00:00:00', 0),
(30, 2, 97, 1, 15, 'Chiết khấu', 'DATax', '-', '0.00', '0.00', '0.00', 147, '', '2022-11-26 04:29:55', 91, '2022-11-26 04:29:55', 91, '0000-00-00 00:00:00', 0),
(31, 0, 97, 1, NULL, '', 'payment', '', '0.00', '0.00', '0.00', 0, '', '2022-11-26 04:29:55', 91, '2022-11-26 04:29:55', 91, '0000-00-00 00:00:00', 0),
(32, 0, 97, 1, NULL, '', 'shipment', '', '0.00', '0.00', '0.00', 0, '', '2022-11-26 04:29:55', 91, '2022-11-26 04:29:55', 91, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_order_histories`
--

CREATE TABLE `z0djb_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `order_status_code` char(1) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `comments` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Stores all actions and changes that occur to an order';

--
-- Dumping data for table `z0djb_virtuemart_order_histories`
--

INSERT INTO `z0djb_virtuemart_order_histories` (`virtuemart_order_history_id`, `virtuemart_order_id`, `order_status_code`, `customer_notified`, `comments`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(3, 84, 'P', 0, '', 1, '2021-09-06 04:51:42', 0, '2021-09-06 04:51:42', 0, '0000-00-00 00:00:00', 0),
(4, 84, 'P', 1, '', 1, '2021-09-06 04:51:42', 0, '2021-09-06 04:51:42', 0, '0000-00-00 00:00:00', 0),
(5, 85, 'P', 0, '', 1, '2021-09-06 04:54:02', 0, '2021-09-06 04:54:02', 0, '0000-00-00 00:00:00', 0),
(6, 85, 'P', 1, '', 1, '2021-09-06 04:54:02', 0, '2021-09-06 04:54:02', 0, '0000-00-00 00:00:00', 0),
(7, 86, 'P', 0, '', 1, '2021-09-06 04:54:32', 0, '2021-09-06 04:54:32', 0, '0000-00-00 00:00:00', 0),
(8, 86, 'P', 1, '', 1, '2021-09-06 04:54:32', 0, '2021-09-06 04:54:32', 0, '0000-00-00 00:00:00', 0),
(9, 87, 'P', 0, '', 1, '2021-09-06 04:54:46', 0, '2021-09-06 04:54:46', 0, '0000-00-00 00:00:00', 0),
(10, 87, 'P', 1, '', 1, '2021-09-06 04:54:46', 0, '2021-09-06 04:54:46', 0, '0000-00-00 00:00:00', 0),
(11, 87, '-', 0, 'Order deleted', 1, '2021-09-06 11:58:46', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 86, '-', 0, 'Order deleted', 1, '2021-09-06 11:58:46', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 85, '-', 0, 'Order deleted', 1, '2021-09-06 11:58:46', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 84, '-', 0, 'Order deleted', 1, '2021-09-06 11:58:46', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 88, 'P', 0, '', 1, '2021-09-06 04:59:03', 0, '2021-09-06 04:59:03', 0, '0000-00-00 00:00:00', 0),
(16, 88, 'P', 1, '', 1, '2021-09-06 04:59:03', 0, '2021-09-06 04:59:03', 0, '0000-00-00 00:00:00', 0),
(17, 88, '-', 0, 'Order deleted', 1, '2021-09-06 12:02:55', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 89, 'P', 0, '', 1, '2022-07-25 04:51:50', 0, '2022-07-25 04:51:50', 0, '0000-00-00 00:00:00', 0),
(19, 89, 'P', 1, '', 1, '2022-07-25 04:51:50', 0, '2022-07-25 04:51:50', 0, '0000-00-00 00:00:00', 0),
(20, 90, 'P', 0, '', 1, '2022-07-25 04:52:08', 0, '2022-07-25 04:52:08', 0, '0000-00-00 00:00:00', 0),
(21, 90, 'P', 1, '', 1, '2022-07-25 04:52:08', 0, '2022-07-25 04:52:08', 0, '0000-00-00 00:00:00', 0),
(22, 91, 'P', 0, '', 1, '2022-07-25 04:52:47', 0, '2022-07-25 04:52:47', 0, '0000-00-00 00:00:00', 0),
(23, 91, 'P', 1, '', 1, '2022-07-25 04:52:47', 0, '2022-07-25 04:52:47', 0, '0000-00-00 00:00:00', 0),
(24, 92, 'P', 0, '', 1, '2022-07-25 04:53:44', 0, '2022-07-25 04:53:44', 0, '0000-00-00 00:00:00', 0),
(25, 92, 'P', 1, '', 1, '2022-07-25 04:53:44', 0, '2022-07-25 04:53:44', 0, '0000-00-00 00:00:00', 0),
(26, 93, 'P', 0, '', 1, '2022-07-25 04:54:49', 0, '2022-07-25 04:54:49', 0, '0000-00-00 00:00:00', 0),
(27, 93, 'P', 1, '', 1, '2022-07-25 04:54:49', 0, '2022-07-25 04:54:49', 0, '0000-00-00 00:00:00', 0),
(28, 94, 'P', 0, '', 1, '2022-07-25 04:55:23', 0, '2022-07-25 04:55:23', 0, '0000-00-00 00:00:00', 0),
(29, 94, 'P', 1, '', 1, '2022-07-25 04:55:23', 0, '2022-07-25 04:55:23', 0, '0000-00-00 00:00:00', 0),
(30, 95, 'P', 0, '', 1, '2022-07-25 05:03:00', 0, '2022-07-25 05:03:00', 0, '0000-00-00 00:00:00', 0),
(31, 95, 'P', 1, '', 1, '2022-07-25 05:03:00', 0, '2022-07-25 05:03:00', 0, '0000-00-00 00:00:00', 0),
(32, 95, '-', 0, 'Order deleted', 1, '2022-07-25 12:03:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 94, '-', 0, 'Order deleted', 1, '2022-07-25 12:03:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 93, '-', 0, 'Order deleted', 1, '2022-07-25 12:03:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 92, '-', 0, 'Order deleted', 1, '2022-07-25 12:03:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 91, '-', 0, 'Order deleted', 1, '2022-07-25 12:03:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 90, '-', 0, 'Order deleted', 1, '2022-07-25 12:03:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 89, '-', 0, 'Order deleted', 1, '2022-07-25 12:03:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 96, 'P', 0, '', 1, '2022-08-06 03:06:34', 90, '2022-08-06 03:06:34', 90, '0000-00-00 00:00:00', 0),
(40, 96, 'P', 1, '', 1, '2022-08-06 03:06:34', 90, '2022-08-06 03:06:34', 90, '0000-00-00 00:00:00', 0),
(41, 96, '-', 0, 'Order deleted', 1, '2022-08-06 10:43:13', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 97, 'P', 0, '', 1, '2022-11-26 04:29:55', 91, '2022-11-26 04:29:55', 91, '0000-00-00 00:00:00', 0),
(43, 97, 'P', 1, '', 1, '2022-11-26 04:29:55', 91, '2022-11-26 04:29:55', 91, '0000-00-00 00:00:00', 0),
(44, 97, '-', 0, 'Order deleted', 1, '2022-11-26 11:30:23', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_order_items`
--

CREATE TABLE `z0djb_virtuemart_order_items` (
  `product_discountedPriceWithoutTax` decimal(15,2) DEFAULT NULL,
  `virtuemart_order_item_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(11) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT 1,
  `virtuemart_product_id` int(11) DEFAULT NULL,
  `order_item_sku` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_item_name` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `product_quantity` int(11) DEFAULT NULL,
  `product_item_price` decimal(15,2) DEFAULT NULL,
  `product_priceWithoutTax` decimal(15,2) DEFAULT NULL,
  `product_tax` decimal(15,2) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,2) DEFAULT NULL,
  `product_final_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `product_subtotal_discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `product_subtotal_with_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `order_item_currency` int(11) DEFAULT NULL,
  `order_status` char(1) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_attribute` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Stores all items (products) which are part of an order';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_order_userinfos`
--

CREATE TABLE `z0djb_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `address_type` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_type_name` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone_1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone_2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `virtuemart_state_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `virtuemart_country_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0,
  `noidung` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `noidung20141007` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `hovaten` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `test` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Stores the BillTo and ShipTo Information at order time';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_paymentmethods`
--

CREATE TABLE `z0djb_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT 1,
  `payment_jplugin_id` int(11) NOT NULL DEFAULT 0,
  `payment_element` char(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `payment_params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'valide for all vendors?',
  `ordering` int(2) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='The payment methods of your store';

--
-- Dumping data for table `z0djb_virtuemart_paymentmethods`
--

INSERT INTO `z0djb_virtuemart_paymentmethods` (`virtuemart_paymentmethod_id`, `virtuemart_vendor_id`, `payment_jplugin_id`, `payment_element`, `payment_params`, `shared`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(3, 1, 10129, 'standard', 'payment_logos=\"\"|countries=\"\"|payment_currency=\"0\"|paytype=\"giaohang\"|send_invoice_on_order_null=\"1\"|min_amount=\"\"|max_amount=\"\"|cost_per_transaction=\"\"|cost_percent_total=\"\"|tax_id=\"-1\"|payment_info=\"\"|status_pending=\"P\"|status_success=\"U\"|', 0, 0, 1, '2014-10-07 12:00:54', 42, '2020-09-27 07:39:25', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_paymentmethods_vi_vn`
--

CREATE TABLE `z0djb_virtuemart_paymentmethods_vi_vn` (
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL,
  `payment_name` char(180) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `payment_desc` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` char(192) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_paymentmethods_vi_vn`
--

INSERT INTO `z0djb_virtuemart_paymentmethods_vi_vn` (`virtuemart_paymentmethod_id`, `payment_name`, `payment_desc`, `slug`) VALUES
(3, 'Thanh toán khi giao hàng', '', 'thanh-toan-khi-giao-hang');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_paymentmethod_shoppergroups`
--

CREATE TABLE `z0djb_virtuemart_paymentmethod_shoppergroups` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='xref table for paymentmethods to shoppergroup';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_payment_plg_baokim`
--

CREATE TABLE `z0djb_virtuemart_payment_plg_baokim` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `order_number` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `payment_name` varchar(5000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_order_total` decimal(15,2) NOT NULL,
  `payment_currency` smallint(1) DEFAULT NULL,
  `email_currency` smallint(1) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Payment Baokim Table';

--
-- Dumping data for table `z0djb_virtuemart_payment_plg_baokim`
--

INSERT INTO `z0djb_virtuemart_payment_plg_baokim` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_paymentmethod_id`, `payment_name`, `payment_order_total`, `payment_currency`, `email_currency`, `tax_id`, `cost_percent_total`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 229, 'fb80044', 10, '<span class=\"vmpayment_name\">bao kim</span>', '200000.00', 147, 147, 0, '0.00', '2019-01-04 07:38:49', 0, '2019-01-04 07:38:49', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_payment_plg_nganluong`
--

CREATE TABLE `z0djb_virtuemart_payment_plg_nganluong` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(11) UNSIGNED DEFAULT NULL,
  `order_number` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `payment_name` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `payment_order_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_currency` char(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Payment Nganluong Table';

--
-- Dumping data for table `z0djb_virtuemart_payment_plg_nganluong`
--

INSERT INTO `z0djb_virtuemart_payment_plg_nganluong` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_paymentmethod_id`, `payment_name`, `payment_order_total`, `payment_currency`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 200, '37d6015', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:08:05', 0, '2019-01-04 07:08:05', 0, '0000-00-00 00:00:00', 0),
(2, 201, '4c5c016', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '400000.00', '147', '2019-01-04 07:10:02', 0, '2019-01-04 07:10:02', 0, '0000-00-00 00:00:00', 0),
(3, 202, '4be7017', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:10:27', 0, '2019-01-04 07:10:27', 0, '0000-00-00 00:00:00', 0),
(4, 203, '6cce018', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:10:56', 0, '2019-01-04 07:10:56', 0, '0000-00-00 00:00:00', 0),
(5, 204, '388b019', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '100000.00', '147', '2019-01-04 07:11:34', 0, '2019-01-04 07:11:34', 0, '0000-00-00 00:00:00', 0),
(6, 205, '2e1b020', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:12:01', 0, '2019-01-04 07:12:01', 0, '0000-00-00 00:00:00', 0),
(7, 206, 'e5b0021', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:12:38', 0, '2019-01-04 07:12:38', 0, '0000-00-00 00:00:00', 0),
(8, 207, '655c022', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '100000.00', '147', '2019-01-04 07:12:59', 0, '2019-01-04 07:12:59', 0, '0000-00-00 00:00:00', 0),
(9, 209, '604b024', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '100000.00', '147', '2019-01-04 07:15:21', 0, '2019-01-04 07:15:21', 0, '0000-00-00 00:00:00', 0),
(10, 212, '3c81027', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:18:26', 0, '2019-01-04 07:18:26', 0, '0000-00-00 00:00:00', 0),
(11, 213, 'a244028', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:21:59', 0, '2019-01-04 07:21:59', 0, '0000-00-00 00:00:00', 0),
(12, 216, 'e0c6031', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:24:33', 0, '2019-01-04 07:24:33', 0, '0000-00-00 00:00:00', 0),
(13, 218, '7fc2033', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:26:03', 0, '2019-01-04 07:26:03', 0, '0000-00-00 00:00:00', 0),
(14, 220, '3028035', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:27:08', 0, '2019-01-04 07:27:08', 0, '0000-00-00 00:00:00', 0),
(15, 221, '70a9036', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:27:30', 0, '2019-01-04 07:27:30', 0, '0000-00-00 00:00:00', 0),
(16, 223, '699e038', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:28:18', 0, '2019-01-04 07:28:18', 0, '0000-00-00 00:00:00', 0),
(17, 224, '7472039', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:28:37', 0, '2019-01-04 07:28:37', 0, '0000-00-00 00:00:00', 0),
(18, 225, 'f4b6040', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:29:20', 0, '2019-01-04 07:29:20', 0, '0000-00-00 00:00:00', 0),
(19, 226, '6a2e041', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '200000.00', '147', '2019-01-04 07:29:46', 0, '2019-01-04 07:29:46', 0, '0000-00-00 00:00:00', 0),
(20, 227, '796c042', 8, '<span class=\"vmpayment_name\">Thanh toán Ngân Lượng</span>', '0.00', '147', '2019-01-04 07:30:00', 0, '2019-01-04 07:30:00', 0, '0000-00-00 00:00:00', 0),
(21, 292, 'fa5904', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:08:00', 0, '2020-09-14 07:08:00', 0, '0000-00-00 00:00:00', 0),
(22, 293, '99b105', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:10:52', 0, '2020-09-14 07:10:52', 0, '0000-00-00 00:00:00', 0),
(23, 294, 'e26106', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:14:03', 0, '2020-09-14 07:14:03', 0, '0000-00-00 00:00:00', 0),
(24, 295, '276a07', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:15:44', 0, '2020-09-14 07:15:44', 0, '0000-00-00 00:00:00', 0),
(25, 296, 'b1d208', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:16:06', 0, '2020-09-14 07:16:06', 0, '0000-00-00 00:00:00', 0),
(26, 297, 'de5809', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:18:22', 0, '2020-09-14 07:18:22', 0, '0000-00-00 00:00:00', 0),
(27, 298, 'cce8010', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:20:03', 0, '2020-09-14 07:20:03', 0, '0000-00-00 00:00:00', 0),
(28, 299, '47bf011', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:21:59', 0, '2020-09-14 07:21:59', 0, '0000-00-00 00:00:00', 0),
(29, 300, '8462012', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:23:04', 0, '2020-09-14 07:23:04', 0, '0000-00-00 00:00:00', 0),
(30, 301, '8eb8013', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:30:12', 0, '2020-09-14 07:30:12', 0, '0000-00-00 00:00:00', 0),
(31, 302, '2d66014', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:31:16', 0, '2020-09-14 07:31:16', 0, '0000-00-00 00:00:00', 0),
(32, 303, '7fea015', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:32:34', 0, '2020-09-14 07:32:34', 0, '0000-00-00 00:00:00', 0),
(33, 304, 'd23d016', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:33:17', 0, '2020-09-14 07:33:17', 0, '0000-00-00 00:00:00', 0),
(34, 305, 'c47a017', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:34:42', 0, '2020-09-14 07:34:42', 0, '0000-00-00 00:00:00', 0),
(35, 306, 'c076018', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:37:42', 0, '2020-09-14 07:37:42', 0, '0000-00-00 00:00:00', 0),
(36, 307, '50dc019', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:37:59', 0, '2020-09-14 07:37:59', 0, '0000-00-00 00:00:00', 0),
(37, 308, '8b3b020', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:38:09', 0, '2020-09-14 07:38:09', 0, '0000-00-00 00:00:00', 0),
(38, 309, 'd16f021', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:39:45', 0, '2020-09-14 07:39:45', 0, '0000-00-00 00:00:00', 0),
(39, 310, '0ea5022', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:41:34', 0, '2020-09-14 07:41:34', 0, '0000-00-00 00:00:00', 0),
(40, 311, '5735023', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:43:09', 0, '2020-09-14 07:43:09', 0, '0000-00-00 00:00:00', 0),
(41, 312, '1462024', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:44:10', 0, '2020-09-14 07:44:10', 0, '0000-00-00 00:00:00', 0),
(42, 313, 'c432025', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:45:12', 0, '2020-09-14 07:45:12', 0, '0000-00-00 00:00:00', 0),
(43, 314, '6814026', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '99000000.00', '147', '2020-09-14 07:46:38', 0, '2020-09-14 07:46:38', 0, '0000-00-00 00:00:00', 0),
(44, 315, '74c3027', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '99000000.00', '147', '2020-09-14 07:46:59', 0, '2020-09-14 07:46:59', 0, '0000-00-00 00:00:00', 0),
(45, 316, '63e2028', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:47:45', 0, '2020-09-14 07:47:45', 0, '0000-00-00 00:00:00', 0),
(46, 317, '76a2029', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:48:08', 0, '2020-09-14 07:48:08', 0, '0000-00-00 00:00:00', 0),
(47, 318, '8614030', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:48:26', 0, '2020-09-14 07:48:26', 0, '0000-00-00 00:00:00', 0),
(48, 319, 'a4c5031', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:48:40', 0, '2020-09-14 07:48:40', 0, '0000-00-00 00:00:00', 0),
(49, 320, '10fe032', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '165000000.00', '147', '2020-09-14 07:49:07', 0, '2020-09-14 07:49:07', 0, '0000-00-00 00:00:00', 0),
(50, 321, 'b0b8033', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:49:47', 0, '2020-09-14 07:49:47', 0, '0000-00-00 00:00:00', 0),
(51, 322, 'e841034', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:51:12', 0, '2020-09-14 07:51:12', 0, '0000-00-00 00:00:00', 0),
(52, 323, '54f1035', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '66000000.00', '147', '2020-09-14 07:51:36', 0, '2020-09-14 07:51:36', 0, '0000-00-00 00:00:00', 0),
(53, 324, '0b2e036', 13, '<span class=\"vmpayment_name\">Thanh toán ngân lượng</span>', '33000000.00', '147', '2020-09-14 07:55:29', 0, '2020-09-14 07:55:29', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_payment_plg_paypal`
--

CREATE TABLE `z0djb_virtuemart_payment_plg_paypal` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `order_number` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `payment_name` varchar(5000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_order_total` decimal(15,2) NOT NULL,
  `payment_currency` smallint(1) DEFAULT NULL,
  `email_currency` smallint(1) DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `paypal_custom` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_mc_gross` decimal(10,2) DEFAULT NULL,
  `paypal_response_mc_currency` char(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_invoice` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_protection_eligibility` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_payer_id` char(13) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_tax` decimal(10,2) DEFAULT NULL,
  `paypal_response_payment_date` char(28) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_payment_status` char(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_pending_reason` char(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_mc_fee` decimal(10,2) DEFAULT NULL,
  `paypal_response_payer_email` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_last_name` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_first_name` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_business` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_receiver_email` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_transaction_subject` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_residence_country` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_txn_id` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_txn_type` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_parent_txn_id` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_case_creation_date` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_case_id` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_case_type` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypal_response_reason_code` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `paypalresponse_raw` varchar(512) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Payment Paypal Table';

--
-- Dumping data for table `z0djb_virtuemart_payment_plg_paypal`
--

INSERT INTO `z0djb_virtuemart_payment_plg_paypal` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_paymentmethod_id`, `payment_name`, `payment_order_total`, `payment_currency`, `email_currency`, `cost_per_transaction`, `cost_percent_total`, `tax_id`, `paypal_custom`, `paypal_response_mc_gross`, `paypal_response_mc_currency`, `paypal_response_invoice`, `paypal_response_protection_eligibility`, `paypal_response_payer_id`, `paypal_response_tax`, `paypal_response_payment_date`, `paypal_response_payment_status`, `paypal_response_pending_reason`, `paypal_response_mc_fee`, `paypal_response_payer_email`, `paypal_response_last_name`, `paypal_response_first_name`, `paypal_response_business`, `paypal_response_receiver_email`, `paypal_response_transaction_subject`, `paypal_response_residence_country`, `paypal_response_txn_id`, `paypal_response_txn_type`, `paypal_response_parent_txn_id`, `paypal_response_case_creation_date`, `paypal_response_case_id`, `paypal_response_case_type`, `paypal_response_reason_code`, `paypalresponse_raw`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(17, 190, 'e22d05', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:47:16', 0, '2019-01-04 06:47:16', 0, '0000-00-00 00:00:00', 0),
(18, 191, 'adc106', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '100000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:47:35', 0, '2019-01-04 06:47:35', 0, '0000-00-00 00:00:00', 0),
(19, 192, '6a9407', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:48:00', 0, '2019-01-04 06:48:00', 0, '0000-00-00 00:00:00', 0),
(20, 193, 'b7fd08', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:50:38', 0, '2019-01-04 06:50:38', 0, '0000-00-00 00:00:00', 0),
(21, 194, 'df8a09', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:54:11', 0, '2019-01-04 06:54:11', 0, '0000-00-00 00:00:00', 0),
(22, 195, '0a1c010', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:55:03', 0, '2019-01-04 06:55:03', 0, '0000-00-00 00:00:00', 0),
(23, 196, '2348011', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:55:34', 0, '2019-01-04 06:55:34', 0, '0000-00-00 00:00:00', 0),
(24, 197, '98dc012', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:56:08', 0, '2019-01-04 06:56:08', 0, '0000-00-00 00:00:00', 0),
(25, 198, 'b5c8013', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:57:06', 0, '2019-01-04 06:57:06', 0, '0000-00-00 00:00:00', 0),
(26, 199, '4a09014', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:58:38', 0, '2019-01-04 06:58:38', 0, '0000-00-00 00:00:00', 0),
(27, 208, 'c241023', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 07:14:13', 0, '2019-01-04 07:14:13', 0, '0000-00-00 00:00:00', 0),
(28, 210, '489c025', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 07:15:43', 0, '2019-01-04 07:15:43', 0, '0000-00-00 00:00:00', 0),
(29, 211, '55eb026', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 07:18:15', 0, '2019-01-04 07:18:15', 0, '0000-00-00 00:00:00', 0),
(16, 188, 'ae8003', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 06:46:25', 0, '2019-01-04 06:46:25', 0, '0000-00-00 00:00:00', 0),
(30, 214, 'f854029', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 07:22:15', 0, '2019-01-04 07:22:15', 0, '0000-00-00 00:00:00', 0),
(31, 215, '4f6d030', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 07:24:09', 0, '2019-01-04 07:24:09', 0, '0000-00-00 00:00:00', 0),
(32, 217, 'b829032', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 07:24:49', 0, '2019-01-04 07:24:49', 0, '0000-00-00 00:00:00', 0),
(33, 219, 'ada5034', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 07:26:24', 0, '2019-01-04 07:26:24', 0, '0000-00-00 00:00:00', 0),
(34, 222, '8fff037', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 07:28:05', 0, '2019-01-04 07:28:05', 0, '0000-00-00 00:00:00', 0),
(35, 228, '8cc9043', 7, '<span class=\"vmpayment_name\">Thanh toán Paypal</span>', '200000.00', 144, 147, '0.00', '0.00', 0, 't4sj4l5ds64jiv8u252poc4ra7', '0.00', '0', '0', '0', '0', '0.00', '0', '0', '0', '0.00', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2019-01-04 07:30:24', 0, '2019-01-04 07:30:24', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_payment_plg_standard`
--

CREATE TABLE `z0djb_virtuemart_payment_plg_standard` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `order_number` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `payment_name` varchar(5000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_order_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_currency` char(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Payment Standard Table';

--
-- Dumping data for table `z0djb_virtuemart_payment_plg_standard`
--

INSERT INTO `z0djb_virtuemart_payment_plg_standard` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_paymentmethod_id`, `payment_name`, `payment_order_total`, `payment_currency`, `cost_per_transaction`, `cost_percent_total`, `tax_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(128, 128, 'f07b023', 5, '<span class=\"vmpayment_name\">abc</span><br />', '200000.00', 'VND', '0.00', '0.00', 0, '2018-03-12 10:33:10', 0, '2018-03-12 10:33:10', 0, '0000-00-00 00:00:00', 0),
(129, 129, 'ae78024', 5, '<span class=\"vmpayment_name\">abc</span><br />', '200000.00', 'VND', '0.00', '0.00', 0, '2018-03-12 10:34:03', 0, '2018-03-12 10:34:03', 0, '0000-00-00 00:00:00', 0),
(130, 130, '6349025', 5, '<span class=\"vmpayment_name\">abc</span><br />', '200000.00', 'VND', '0.00', '0.00', 0, '2018-03-12 10:36:59', 0, '2018-03-12 10:36:59', 0, '0000-00-00 00:00:00', 0),
(171, 189, '1cfd04', 3, '<span class=\"vmpayment_name\">Thanh toán khi giao hàng</span><br />', '200000.00', 'VND', '0.00', '0.00', 0, '2019-01-04 06:46:46', 0, '2019-01-04 06:46:46', 0, '0000-00-00 00:00:00', 0),
(233, 291, 'bcc903', 3, '<span class=\"vmpayment_name\">Thanh toán khi giao hàng</span><br />', '66000000.00', 'VND', '0.00', '0.00', -1, '2020-09-14 07:07:33', 0, '2020-09-14 07:07:33', 0, '0000-00-00 00:00:00', 0),
(312, 83, 'aca203', 19, '<span class=\"vmpayment_name\">fundiin</span><br />', '5000000.00', 'VND', '0.00', '0.00', 0, '2021-08-12 09:20:24', 0, '2021-08-12 09:20:24', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_permgroups`
--

CREATE TABLE `z0djb_virtuemart_permgroups` (
  `virtuemart_permgroup_id` tinyint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 1,
  `group_name` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group_level` int(11) DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Holds all the user groups';

--
-- Dumping data for table `z0djb_virtuemart_permgroups`
--

INSERT INTO `z0djb_virtuemart_permgroups` (`virtuemart_permgroup_id`, `virtuemart_vendor_id`, `group_name`, `group_level`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'admin', 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'storeadmin', 250, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'shopper', 500, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'demo', 750, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_products`
--

CREATE TABLE `z0djb_virtuemart_products` (
  `virtuemart_product_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 1,
  `product_parent_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `product_sku` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` char(7) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` char(7) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_url` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT 0,
  `product_ordered` int(1) NOT NULL DEFAULT 0,
  `low_stock_notification` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `product_unit` varchar(8) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_packaging` decimal(8,4) UNSIGNED DEFAULT NULL,
  `product_params` varchar(2000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `hits` int(11) UNSIGNED DEFAULT NULL,
  `intnotes` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `metarobot` varchar(400) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `metaauthor` varchar(400) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `layout` char(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` mediumint(2) UNSIGNED NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='All products are stored here.';

--
-- Dumping data for table `z0djb_virtuemart_products`
--

INSERT INTO `z0djb_virtuemart_products` (`virtuemart_product_id`, `virtuemart_vendor_id`, `product_parent_id`, `product_sku`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_ordered`, `low_stock_notification`, `product_available_date`, `product_availability`, `product_special`, `product_sales`, `product_unit`, `product_packaging`, `product_params`, `hits`, `intnotes`, `metarobot`, `metaauthor`, `layout`, `published`, `pordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1521, 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, '0000-00-00 00:00:00', NULL, 0, 0, NULL, NULL, 'min_order_level=null|max_order_level=null|step_order_level=null|product_box=null|', NULL, '', '', '', '0', 1, 0, '2025-11-13 02:27:01', 42, '2025-11-13 02:27:01', 42, '0000-00-00 00:00:00', 0),
(1522, 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, '0000-00-00 00:00:00', NULL, 0, 0, NULL, NULL, 'min_order_level=null|max_order_level=null|step_order_level=null|product_box=null|', NULL, '', '', '', '0', 1, 0, '2025-11-13 02:27:05', 42, '2025-11-13 02:27:05', 42, '0000-00-00 00:00:00', 0),
(1523, 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, '0000-00-00 00:00:00', NULL, 0, 0, NULL, NULL, 'min_order_level=null|max_order_level=null|step_order_level=null|product_box=null|', NULL, '', '', '', '0', 1, 0, '2025-11-13 02:27:05', 42, '2025-11-13 02:27:05', 42, '0000-00-00 00:00:00', 0),
(1524, 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, '0000-00-00 00:00:00', NULL, 0, 0, NULL, NULL, 'min_order_level=null|max_order_level=null|step_order_level=null|product_box=null|', NULL, '', '', '', '0', 1, 0, '2025-11-13 02:27:08', 42, '2025-11-13 02:27:08', 42, '0000-00-00 00:00:00', 0),
(1517, 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, '0000-00-00 00:00:00', NULL, 0, 0, NULL, NULL, 'min_order_level=null|max_order_level=null|step_order_level=null|product_box=null|', NULL, '', '', '', '0', 1, 0, '2025-11-10 03:46:43', 42, '2025-11-13 02:26:57', 42, '0000-00-00 00:00:00', 0),
(1527, 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, '0000-00-00 00:00:00', NULL, 0, 0, NULL, NULL, 'min_order_level=null|max_order_level=null|step_order_level=null|product_box=null|', NULL, '', '', '', '0', 1, 0, '2025-11-13 02:27:08', 42, '2025-11-13 02:27:08', 42, '0000-00-00 00:00:00', 0),
(1526, 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, '0000-00-00 00:00:00', NULL, 0, 0, NULL, NULL, 'min_order_level=null|max_order_level=null|step_order_level=null|product_box=null|', NULL, '', '', '', '0', 1, 0, '2025-11-13 02:27:08', 42, '2025-11-13 02:27:08', 42, '0000-00-00 00:00:00', 0),
(1525, 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, '0000-00-00 00:00:00', NULL, 0, 0, NULL, NULL, 'min_order_level=null|max_order_level=null|step_order_level=null|product_box=null|', NULL, '', '', '', '0', 1, 0, '2025-11-13 02:27:08', 42, '2025-11-13 02:27:08', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_products_vi_vn`
--

CREATE TABLE `z0djb_virtuemart_products_vi_vn` (
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL,
  `product_s_desc` varchar(2000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `product_tuoi` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_chieucao` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_cannang` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_sodo` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_trinhdo` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_desc` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `product_name` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_noibat` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_dieukien` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_huongdan` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_khuyenmai` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metadesc` varchar(400) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `metakey` varchar(400) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customtitle` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` char(192) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `product_hit` int(11) NOT NULL DEFAULT 0,
  `product_danhgia` int(11) NOT NULL DEFAULT 0,
  `product_star` int(11) NOT NULL DEFAULT 0,
  `product_namesearch` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `categories_list` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_products_vi_vn`
--

INSERT INTO `z0djb_virtuemart_products_vi_vn` (`virtuemart_product_id`, `product_s_desc`, `product_tuoi`, `product_chieucao`, `product_cannang`, `product_sodo`, `product_trinhdo`, `product_desc`, `product_name`, `product_noibat`, `product_dieukien`, `product_huongdan`, `product_khuyenmai`, `metadesc`, `metakey`, `customtitle`, `slug`, `product_hit`, `product_danhgia`, `product_star`, `product_namesearch`, `categories_list`) VALUES
(1521, '', '600000', '<ul>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipisicing elit</li>\r\n<li>Mollitia provident ratione est</li>\r\n<li>Dolore necessitatibus molestiae</li>\r\n<li>Recusandae corrupti consectetur</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Uga accusamus nemo odio est quis sequi illo distinctio ab esse veniam dolores eum? Exercitationem unde, perferendis odit provident iusto ullam fugit illum quia magni dicta.</p>', '', '', '', '', 'Deleniti provident consequuntur ut sapiente', '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', '', '', '', '', '', 'deleniti-provident-consequuntur-ut-sapiente-1517', 70, 0, 0, 'Deleniti provident consequuntur ut sapiente', ',1362,1380,1385,1386,1381,1382,'),
(1522, '', '600000', '<ul>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipisicing elit</li>\r\n<li>Mollitia provident ratione est</li>\r\n<li>Dolore necessitatibus molestiae</li>\r\n<li>Recusandae corrupti consectetur</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Uga accusamus nemo odio est quis sequi illo distinctio ab esse veniam dolores eum? Exercitationem unde, perferendis odit provident iusto ullam fugit illum quia magni dicta.</p>', '', '', '', '', 'Deleniti provident consequuntur ut sapiente', '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', '', '', '', '', '', 'deleniti-provident-consequuntur-ut-sapiente-1517-1521', 70, 0, 0, 'Deleniti provident consequuntur ut sapiente', ',1362,1380,1385,1386,1381,1382,'),
(1523, '', '600000', '<ul>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipisicing elit</li>\r\n<li>Mollitia provident ratione est</li>\r\n<li>Dolore necessitatibus molestiae</li>\r\n<li>Recusandae corrupti consectetur</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Uga accusamus nemo odio est quis sequi illo distinctio ab esse veniam dolores eum? Exercitationem unde, perferendis odit provident iusto ullam fugit illum quia magni dicta.</p>', '', '', '', '', 'Deleniti provident consequuntur ut sapiente', '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', '', '', '', '', '', 'deleniti-provident-consequuntur-ut-sapiente-1517-82522669', 70, 0, 0, 'Deleniti provident consequuntur ut sapiente', ',1362,1380,1385,1386,1381,1382,'),
(1524, '', '600000', '<ul>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipisicing elit</li>\r\n<li>Mollitia provident ratione est</li>\r\n<li>Dolore necessitatibus molestiae</li>\r\n<li>Recusandae corrupti consectetur</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Uga accusamus nemo odio est quis sequi illo distinctio ab esse veniam dolores eum? Exercitationem unde, perferendis odit provident iusto ullam fugit illum quia magni dicta.</p>', '', '', '', '', 'Deleniti provident consequuntur ut sapiente', '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', '', '', '', '', '', 'deleniti-provident-consequuntur-ut-sapiente-1517-1521-1522', 70, 0, 0, 'Deleniti provident consequuntur ut sapiente', ',1362,1380,1385,1386,1381,1382,'),
(1525, '', '600000', '<ul>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipisicing elit</li>\r\n<li>Mollitia provident ratione est</li>\r\n<li>Dolore necessitatibus molestiae</li>\r\n<li>Recusandae corrupti consectetur</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Uga accusamus nemo odio est quis sequi illo distinctio ab esse veniam dolores eum? Exercitationem unde, perferendis odit provident iusto ullam fugit illum quia magni dicta.</p>', '', '', '', '', 'Deleniti provident consequuntur ut sapiente', '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', '', '', '', '', '', 'deleniti-provident-consequuntur-ut-sapiente-1517-82522669-1523', 70, 0, 0, 'Deleniti provident consequuntur ut sapiente', ',1362,1380,1385,1386,1381,1382,'),
(1517, '', '600000', '<ul>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipisicing elit</li>\r\n<li>Mollitia provident ratione est</li>\r\n<li>Dolore necessitatibus molestiae</li>\r\n<li>Recusandae corrupti consectetur</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Uga accusamus nemo odio est quis sequi illo distinctio ab esse veniam dolores eum? Exercitationem unde, perferendis odit provident iusto ullam fugit illum quia magni dicta.</p>', '', '', '', '', 'Deleniti provident consequuntur ut sapiente', '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', '', '', '', '', '', 'deleniti-provident-consequuntur-ut-sapiente', 71, 0, 0, 'Deleniti provident consequuntur ut sapiente', ',1362,1380,1385,1386,1381,1382,'),
(1527, '', '600000', '<ul>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipisicing elit</li>\r\n<li>Mollitia provident ratione est</li>\r\n<li>Dolore necessitatibus molestiae</li>\r\n<li>Recusandae corrupti consectetur</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Uga accusamus nemo odio est quis sequi illo distinctio ab esse veniam dolores eum? Exercitationem unde, perferendis odit provident iusto ullam fugit illum quia magni dicta.</p>', '', '', '', '', 'Deleniti provident consequuntur ut sapiente', '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', '', '', '', '', '', 'deleniti-provident-consequuntur-ut-sapiente-1517-91255210', 80, 0, 0, 'Deleniti provident consequuntur ut sapiente', ',1362,1380,1385,1386,1381,1382,'),
(1526, '', '600000', '<ul>\r\n<li>Lorem ipsum dolor sit amet</li>\r\n<li>Consectetur adipisicing elit</li>\r\n<li>Mollitia provident ratione est</li>\r\n<li>Dolore necessitatibus molestiae</li>\r\n<li>Recusandae corrupti consectetur</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Uga accusamus nemo odio est quis sequi illo distinctio ab esse veniam dolores eum? Exercitationem unde, perferendis odit provident iusto ullam fugit illum quia magni dicta.</p>', '', '', '', '', 'Deleniti provident consequuntur ut sapiente', '<h2 style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit</h2>\r\n<p style=\"text-align: justify;\">Error deleniti expedita cupiditate minus praesentium molestias eos minima obcaecati fugit aliquam! Mollitia provident ratione est aliquam laborum amet, recusandae corrupti consectetur cum incidunt explicabo deserunt? Eum officia voluptate voluptatibus. Tempora, id earum natus officia sequi odit odio, incidunt alias ipsum nesciunt quod minus cum voluptatum quas? Facere, ipsa, non maiores soluta beatae quia accusantium obcaecati recusandae dolorem consequuntur vero laborum minima omnis autem quibusdam alias eligendi! Excepturi ex dolorum quibusdam sint quae quod esse ipsum iusto maxime. Ea ad doloremque molestiae, earum eos adipisci autem, dolore necessitatibus eius, hic tempora quia!</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"images/default-image/1.jpg\" width=\"1000\" height=\"667\" alt=\"1\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<h2 style=\"text-align: justify;\">Dolor ipsa porro, totam amet obcaecati rerum</h2>\r\n<p style=\"text-align: justify;\">Provident consequuntur laudantium cumque similique aperiam quibusdam numquam nihil voluptatem delectus, ratione veritatis deleniti quod quidem! Et, fugit cumque distinctio illum ex consequuntur cum corrupti perferendis aut ab quia, nemo molestiae numquam, libero obcaecati quod itaque? Hic quis nam vel beatae adipisci animi accusantium dignissimos quidem quos earum dolorem temporibus eaque ipsum commodi alias mollitia voluptas, fuga, sapiente, ex velit ut aspernatur eius amet quo. Iure ad perferendis veniam? Exercitationem necessitatibus ullam, corrupti, a aspernatur asperiores pariatur excepturi doloribus ea molestias commodi. Tenetur aliquam fugiat pariatur libero, animi, sequi voluptas accusamus voluptates veniam sunt ut tempora, aut doloribus provident minima maiores? Rerum saepe ipsa consectetur non repudiandae enim recusandae sunt, eius pariatur?</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p><img src=\"images/default-image/2.jpg\" width=\"1000\" height=\"667\" alt=\"2\" style=\"display: block; margin-left: auto; margin-right: auto;\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fugit sit est nihil impedit a sequi laborum ex enim officia facilis vero, aut sapiente corporis numquam optio aliquam!&nbsp;Sint modi assumenda itaque natus eligendi animi inventore deserunt enim perspiciatis in facere, officiis necessitatibus quisquam dolores iure laborum tempore, omnis saepe voluptate nihil accusantium quasi tenetur doloribus perferendis. Voluptatibus excepturi quas iure?&nbsp;Id eos quas magnam consequatur optio perspiciatis a ipsum obcaecati!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Assumenda quaerat, quisquam est exercitationem sit vel inventore dolores delectus! Expedita minima dolorem sapiente officia. Aspernatur, quasi omnis? Quis incidunt harum quibusdam quasi impedit, temporibus laboriosam inventore dolorem dolor enim, totam cumque cupiditate veniam, eaque consectetur. Inventore itaque aspernatur, dolor magnam modi facere asperiores molestias tempora non eaque beatae molestiae veniam impedit hic.</p>', '', '', '', '', '', '', 'deleniti-provident-consequuntur-ut-sapiente-1517-1521-46784077', 78, 0, 0, 'Deleniti provident consequuntur ut sapiente', ',1362,1380,1385,1386,1381,1382,');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_product_categories`
--

CREATE TABLE `z0djb_virtuemart_product_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_category_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Maps Products to Categories';

--
-- Dumping data for table `z0djb_virtuemart_product_categories`
--

INSERT INTO `z0djb_virtuemart_product_categories` (`id`, `virtuemart_product_id`, `virtuemart_category_id`, `ordering`) VALUES
(5280, 1527, 1362, 0),
(5279, 1526, 1362, 0),
(5278, 1525, 1362, 0),
(5277, 1524, 1362, 0),
(5276, 1523, 1362, 0),
(5275, 1522, 1362, 0),
(5274, 1521, 1362, 0),
(5273, 1517, 1362, 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_product_customfields`
--

CREATE TABLE `z0djb_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(11) UNSIGNED NOT NULL COMMENT 'field id',
  `virtuemart_product_id` int(11) NOT NULL DEFAULT 0,
  `virtuemart_custom_id` int(11) NOT NULL DEFAULT 1 COMMENT 'custom group id',
  `custom_value` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'field value',
  `custom_price` decimal(15,2) DEFAULT NULL COMMENT 'price',
  `custom_param` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Param for Plugins',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='custom fields';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_product_manufacturers`
--

CREATE TABLE `z0djb_virtuemart_product_manufacturers` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(11) DEFAULT NULL,
  `virtuemart_manufacturer_id` smallint(1) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Maps a product to a manufacturer';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_product_medias`
--

CREATE TABLE `z0djb_virtuemart_product_medias` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_product_medias`
--

INSERT INTO `z0djb_virtuemart_product_medias` (`id`, `virtuemart_product_id`, `virtuemart_media_id`, `ordering`) VALUES
(1443, 1521, 136, 2),
(1442, 1521, 137, 1),
(1445, 1522, 136, 2),
(1444, 1522, 137, 1),
(1449, 1524, 136, 2),
(1448, 1524, 137, 1),
(1447, 1523, 136, 2),
(1446, 1523, 137, 1),
(1410, 1517, 136, 2),
(1411, 1517, 137, 1),
(1455, 1527, 136, 2),
(1454, 1527, 137, 1),
(1453, 1526, 136, 2),
(1452, 1526, 137, 1),
(1451, 1525, 136, 2),
(1450, 1525, 137, 1);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_product_prices`
--

CREATE TABLE `z0djb_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` int(11) DEFAULT NULL,
  `product_price` decimal(15,2) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,2) DEFAULT NULL,
  `product_tax_id` int(11) DEFAULT NULL,
  `product_discount_id` int(11) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime DEFAULT NULL,
  `product_price_publish_down` datetime DEFAULT NULL,
  `price_quantity_start` int(11) UNSIGNED DEFAULT NULL,
  `price_quantity_end` int(11) UNSIGNED DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Holds price records for a product';

--
-- Dumping data for table `z0djb_virtuemart_product_prices`
--

INSERT INTO `z0djb_virtuemart_product_prices` (`virtuemart_product_price_id`, `virtuemart_product_id`, `virtuemart_shoppergroup_id`, `product_price`, `override`, `product_override_price`, `product_tax_id`, `product_discount_id`, `product_currency`, `product_price_publish_up`, `product_price_publish_down`, `price_quantity_start`, `price_quantity_end`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(863, 1521, 0, '499000.00', 0, '0.00', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2025-11-13 02:27:01', 42, '2025-11-13 02:27:01', 42, '0000-00-00 00:00:00', 0),
(864, 1522, 0, '499000.00', 0, '0.00', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2025-11-13 02:27:05', 42, '2025-11-13 02:27:05', 42, '0000-00-00 00:00:00', 0),
(866, 1524, 0, '499000.00', 0, '0.00', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2025-11-13 02:27:08', 42, '2025-11-13 02:27:08', 42, '0000-00-00 00:00:00', 0),
(865, 1523, 0, '499000.00', 0, '0.00', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2025-11-13 02:27:05', 42, '2025-11-13 02:27:05', 42, '0000-00-00 00:00:00', 0),
(859, 1517, 0, '499000.00', 0, '0.00', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2025-11-10 03:46:43', 42, '2025-11-13 02:26:57', 42, '0000-00-00 00:00:00', 0),
(869, 1527, 0, '499000.00', 0, '0.00', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2025-11-13 02:27:08', 42, '2025-11-13 02:27:08', 42, '0000-00-00 00:00:00', 0),
(868, 1526, 0, '499000.00', 0, '0.00', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2025-11-13 02:27:08', 42, '2025-11-13 02:27:08', 42, '0000-00-00 00:00:00', 0),
(867, 1525, 0, '499000.00', 0, '0.00', 0, 0, 147, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2025-11-13 02:27:08', 42, '2025-11-13 02:27:08', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_product_relations`
--

CREATE TABLE `z0djb_virtuemart_product_relations` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `related_products` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_product_shoppergroups`
--

CREATE TABLE `z0djb_virtuemart_product_shoppergroups` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Maps Products to Categories';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_ratings`
--

CREATE TABLE `z0djb_virtuemart_ratings` (
  `virtuemart_rating_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `rates` int(11) NOT NULL DEFAULT 0,
  `ratingcount` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `rating` decimal(10,1) NOT NULL DEFAULT 0.0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_rating_reviews`
--

CREATE TABLE `z0djb_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `comment` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT 0,
  `review_rates` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `review_ratingcount` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `review_rating` decimal(10,2) NOT NULL DEFAULT 0.00,
  `review_editable` tinyint(1) NOT NULL DEFAULT 1,
  `lastip` char(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_rating_votes`
--

CREATE TABLE `z0djb_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `vote` int(11) NOT NULL DEFAULT 0,
  `lastip` char(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_shipmentmethods`
--

CREATE TABLE `z0djb_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` mediumint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT 1,
  `shipment_jplugin_id` int(11) NOT NULL DEFAULT 0,
  `shipment_element` char(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipment_params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Shipment created from the shipment plugins';

--
-- Dumping data for table `z0djb_virtuemart_shipmentmethods`
--

INSERT INTO `z0djb_virtuemart_shipmentmethods` (`virtuemart_shipmentmethod_id`, `virtuemart_vendor_id`, `shipment_jplugin_id`, `shipment_element`, `shipment_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 10145, 'weight_countries', 'shipment_logos=\"\"|countries=\"\"|zip_start=\"\"|zip_stop=\"\"|weight_start=\"\"|weight_stop=\"\"|weight_unit=\"KG\"|nbproducts_start=0|nbproducts_stop=0|orderamount_start=\"\"|orderamount_stop=\"\"|cost=\"\"|package_fee=\"\"|tax_id=\"-1\"|free_shipment=\"\"|', 0, 0, 1, '2014-06-19 12:28:31', 42, '2020-08-19 08:18:18', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_shipmentmethods_vi_vn`
--

CREATE TABLE `z0djb_virtuemart_shipmentmethods_vi_vn` (
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL,
  `shipment_name` char(180) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `shipment_desc` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` char(192) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_shipmentmethods_vi_vn`
--

INSERT INTO `z0djb_virtuemart_shipmentmethods_vi_vn` (`virtuemart_shipmentmethod_id`, `shipment_name`, `shipment_desc`, `slug`) VALUES
(1, 'Giao hàng', '', 'giao-hang'),
(0, 'Tiền mặt', '', 'tien-mat');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_shipmentmethod_shoppergroups`
--

CREATE TABLE `z0djb_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `virtuemart_shoppergroup_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='xref table for shipment to shoppergroup';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_shipment_plg_weight_countries`
--

CREATE TABLE `z0djb_virtuemart_shipment_plg_weight_countries` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(11) UNSIGNED DEFAULT NULL,
  `order_number` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `shipment_name` varchar(5000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order_weight` decimal(10,4) DEFAULT NULL,
  `shipment_weight_unit` char(3) COLLATE utf8mb4_unicode_520_ci DEFAULT 'KG',
  `shipment_cost` decimal(10,2) DEFAULT NULL,
  `shipment_package_fee` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Shipment Weight Countries Table';

--
-- Dumping data for table `z0djb_virtuemart_shipment_plg_weight_countries`
--

INSERT INTO `z0djb_virtuemart_shipment_plg_weight_countries` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_shipmentmethod_id`, `shipment_name`, `order_weight`, `shipment_weight_unit`, `shipment_cost`, `shipment_package_fee`, `tax_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(128, 128, 'f07b023', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2018-03-12 10:33:10', 0, '2018-03-12 10:33:10', 0, '0000-00-00 00:00:00', 0),
(129, 129, 'ae78024', 3, '<span class=\"vmshipment_name\">abc</span>', '0.0000', '', '0.00', '0.00', 0, '2018-03-12 10:34:03', 0, '2018-03-12 10:34:03', 0, '0000-00-00 00:00:00', 0),
(130, 130, '6349025', 3, '<span class=\"vmshipment_name\">abc</span>', '0.0000', '', '0.00', '0.00', 0, '2018-03-12 10:36:59', 0, '2018-03-12 10:36:59', 0, '0000-00-00 00:00:00', 0),
(187, 189, '1cfd04', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:46:46', 0, '2019-01-04 06:46:46', 0, '0000-00-00 00:00:00', 0),
(188, 190, 'e22d05', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:47:16', 0, '2019-01-04 06:47:16', 0, '0000-00-00 00:00:00', 0),
(189, 191, 'adc106', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:47:35', 0, '2019-01-04 06:47:35', 0, '0000-00-00 00:00:00', 0),
(190, 192, '6a9407', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:48:00', 0, '2019-01-04 06:48:00', 0, '0000-00-00 00:00:00', 0),
(191, 193, 'b7fd08', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:50:38', 0, '2019-01-04 06:50:38', 0, '0000-00-00 00:00:00', 0),
(192, 194, 'df8a09', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:54:11', 0, '2019-01-04 06:54:11', 0, '0000-00-00 00:00:00', 0),
(193, 195, '0a1c010', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:55:03', 0, '2019-01-04 06:55:03', 0, '0000-00-00 00:00:00', 0),
(194, 196, '2348011', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:55:34', 0, '2019-01-04 06:55:34', 0, '0000-00-00 00:00:00', 0),
(195, 197, '98dc012', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:56:08', 0, '2019-01-04 06:56:08', 0, '0000-00-00 00:00:00', 0),
(196, 198, 'b5c8013', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:57:06', 0, '2019-01-04 06:57:06', 0, '0000-00-00 00:00:00', 0),
(197, 199, '4a09014', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:58:38', 0, '2019-01-04 06:58:38', 0, '0000-00-00 00:00:00', 0),
(198, 200, '37d6015', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:08:05', 0, '2019-01-04 07:08:05', 0, '0000-00-00 00:00:00', 0),
(199, 201, '4c5c016', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:10:02', 0, '2019-01-04 07:10:02', 0, '0000-00-00 00:00:00', 0),
(186, 188, 'ae8003', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 06:46:25', 0, '2019-01-04 06:46:25', 0, '0000-00-00 00:00:00', 0),
(200, 202, '4be7017', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:10:27', 0, '2019-01-04 07:10:27', 0, '0000-00-00 00:00:00', 0),
(201, 203, '6cce018', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:10:56', 0, '2019-01-04 07:10:56', 0, '0000-00-00 00:00:00', 0),
(202, 204, '388b019', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:11:34', 0, '2019-01-04 07:11:34', 0, '0000-00-00 00:00:00', 0),
(203, 205, '2e1b020', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:12:01', 0, '2019-01-04 07:12:01', 0, '0000-00-00 00:00:00', 0),
(204, 206, 'e5b0021', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:12:38', 0, '2019-01-04 07:12:38', 0, '0000-00-00 00:00:00', 0),
(205, 207, '655c022', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:12:59', 0, '2019-01-04 07:12:59', 0, '0000-00-00 00:00:00', 0),
(206, 208, 'c241023', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:14:13', 0, '2019-01-04 07:14:13', 0, '0000-00-00 00:00:00', 0),
(207, 209, '604b024', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:15:21', 0, '2019-01-04 07:15:21', 0, '0000-00-00 00:00:00', 0),
(208, 210, '489c025', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:15:43', 0, '2019-01-04 07:15:43', 0, '0000-00-00 00:00:00', 0),
(209, 211, '55eb026', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:18:15', 0, '2019-01-04 07:18:15', 0, '0000-00-00 00:00:00', 0),
(210, 212, '3c81027', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:18:26', 0, '2019-01-04 07:18:26', 0, '0000-00-00 00:00:00', 0),
(211, 213, 'a244028', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:21:59', 0, '2019-01-04 07:21:59', 0, '0000-00-00 00:00:00', 0),
(212, 214, 'f854029', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:22:15', 0, '2019-01-04 07:22:15', 0, '0000-00-00 00:00:00', 0),
(213, 215, '4f6d030', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:24:09', 0, '2019-01-04 07:24:09', 0, '0000-00-00 00:00:00', 0),
(214, 216, 'e0c6031', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:24:33', 0, '2019-01-04 07:24:33', 0, '0000-00-00 00:00:00', 0),
(215, 217, 'b829032', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:24:49', 0, '2019-01-04 07:24:49', 0, '0000-00-00 00:00:00', 0),
(216, 218, '7fc2033', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:26:03', 0, '2019-01-04 07:26:03', 0, '0000-00-00 00:00:00', 0),
(217, 219, 'ada5034', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:26:24', 0, '2019-01-04 07:26:24', 0, '0000-00-00 00:00:00', 0),
(218, 220, '3028035', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:27:08', 0, '2019-01-04 07:27:08', 0, '0000-00-00 00:00:00', 0),
(219, 221, '70a9036', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:27:30', 0, '2019-01-04 07:27:30', 0, '0000-00-00 00:00:00', 0),
(220, 222, '8fff037', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:28:05', 0, '2019-01-04 07:28:05', 0, '0000-00-00 00:00:00', 0),
(221, 223, '699e038', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:28:18', 0, '2019-01-04 07:28:18', 0, '0000-00-00 00:00:00', 0),
(222, 224, '7472039', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:28:37', 0, '2019-01-04 07:28:37', 0, '0000-00-00 00:00:00', 0),
(223, 225, 'f4b6040', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:29:20', 0, '2019-01-04 07:29:20', 0, '0000-00-00 00:00:00', 0),
(224, 226, '6a2e041', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:29:46', 0, '2019-01-04 07:29:46', 0, '0000-00-00 00:00:00', 0),
(225, 227, '796c042', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:30:00', 0, '2019-01-04 07:30:00', 0, '0000-00-00 00:00:00', 0),
(226, 228, '8cc9043', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:30:24', 0, '2019-01-04 07:30:24', 0, '0000-00-00 00:00:00', 0),
(227, 229, 'fb80044', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2019-01-04 07:38:49', 0, '2019-01-04 07:38:49', 0, '0000-00-00 00:00:00', 0),
(289, 291, 'bcc903', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:07:33', 0, '2020-09-14 07:07:33', 0, '0000-00-00 00:00:00', 0),
(290, 292, 'fa5904', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:08:00', 0, '2020-09-14 07:08:00', 0, '0000-00-00 00:00:00', 0),
(291, 293, '99b105', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:10:52', 0, '2020-09-14 07:10:52', 0, '0000-00-00 00:00:00', 0),
(292, 294, 'e26106', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:14:03', 0, '2020-09-14 07:14:03', 0, '0000-00-00 00:00:00', 0),
(293, 295, '276a07', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:15:44', 0, '2020-09-14 07:15:44', 0, '0000-00-00 00:00:00', 0),
(294, 296, 'b1d208', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:16:06', 0, '2020-09-14 07:16:06', 0, '0000-00-00 00:00:00', 0),
(295, 297, 'de5809', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:18:22', 0, '2020-09-14 07:18:22', 0, '0000-00-00 00:00:00', 0),
(296, 298, 'cce8010', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:20:03', 0, '2020-09-14 07:20:03', 0, '0000-00-00 00:00:00', 0),
(297, 299, '47bf011', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:21:59', 0, '2020-09-14 07:21:59', 0, '0000-00-00 00:00:00', 0),
(298, 300, '8462012', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:23:04', 0, '2020-09-14 07:23:04', 0, '0000-00-00 00:00:00', 0),
(299, 301, '8eb8013', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:30:12', 0, '2020-09-14 07:30:12', 0, '0000-00-00 00:00:00', 0),
(300, 302, '2d66014', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:31:16', 0, '2020-09-14 07:31:16', 0, '0000-00-00 00:00:00', 0),
(301, 303, '7fea015', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:32:34', 0, '2020-09-14 07:32:34', 0, '0000-00-00 00:00:00', 0),
(302, 304, 'd23d016', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:33:17', 0, '2020-09-14 07:33:17', 0, '0000-00-00 00:00:00', 0),
(303, 305, 'c47a017', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:34:42', 0, '2020-09-14 07:34:42', 0, '0000-00-00 00:00:00', 0),
(304, 306, 'c076018', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:37:42', 0, '2020-09-14 07:37:42', 0, '0000-00-00 00:00:00', 0),
(305, 307, '50dc019', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:37:59', 0, '2020-09-14 07:37:59', 0, '0000-00-00 00:00:00', 0),
(306, 308, '8b3b020', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:38:09', 0, '2020-09-14 07:38:09', 0, '0000-00-00 00:00:00', 0),
(307, 309, 'd16f021', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:39:45', 0, '2020-09-14 07:39:45', 0, '0000-00-00 00:00:00', 0),
(308, 310, '0ea5022', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:41:34', 0, '2020-09-14 07:41:34', 0, '0000-00-00 00:00:00', 0),
(309, 311, '5735023', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:43:09', 0, '2020-09-14 07:43:09', 0, '0000-00-00 00:00:00', 0),
(310, 312, '1462024', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:44:10', 0, '2020-09-14 07:44:10', 0, '0000-00-00 00:00:00', 0),
(311, 313, 'c432025', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:45:12', 0, '2020-09-14 07:45:12', 0, '0000-00-00 00:00:00', 0),
(312, 314, '6814026', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:46:38', 0, '2020-09-14 07:46:38', 0, '0000-00-00 00:00:00', 0),
(313, 315, '74c3027', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:46:59', 0, '2020-09-14 07:46:59', 0, '0000-00-00 00:00:00', 0),
(314, 316, '63e2028', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:47:45', 0, '2020-09-14 07:47:45', 0, '0000-00-00 00:00:00', 0),
(315, 317, '76a2029', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:48:08', 0, '2020-09-14 07:48:08', 0, '0000-00-00 00:00:00', 0),
(316, 318, '8614030', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:48:26', 0, '2020-09-14 07:48:26', 0, '0000-00-00 00:00:00', 0),
(317, 319, 'a4c5031', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:48:40', 0, '2020-09-14 07:48:40', 0, '0000-00-00 00:00:00', 0),
(318, 320, '10fe032', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:49:07', 0, '2020-09-14 07:49:07', 0, '0000-00-00 00:00:00', 0),
(319, 321, 'b0b8033', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:49:47', 0, '2020-09-14 07:49:47', 0, '0000-00-00 00:00:00', 0),
(320, 322, 'e841034', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:51:12', 0, '2020-09-14 07:51:12', 0, '0000-00-00 00:00:00', 0),
(321, 323, '54f1035', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:51:36', 0, '2020-09-14 07:51:36', 0, '0000-00-00 00:00:00', 0),
(322, 324, '0b2e036', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2020-09-14 07:55:29', 0, '2020-09-14 07:55:29', 0, '0000-00-00 00:00:00', 0),
(405, 83, 'aca203', 1, '<span class=\"vmshipment_name\">Giao hàng</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2021-08-12 09:20:24', 0, '2021-08-12 09:20:24', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_shoppergroups`
--

CREATE TABLE `z0djb_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(11) NOT NULL DEFAULT 1,
  `shopper_group_name` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shopper_group_desc` char(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT 0,
  `price_display` blob DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Shopper Groups that users can be assigned to';

--
-- Dumping data for table `z0djb_virtuemart_shoppergroups`
--

INSERT INTO `z0djb_virtuemart_shoppergroups` (`virtuemart_shoppergroup_id`, `virtuemart_vendor_id`, `shopper_group_name`, `shopper_group_desc`, `custom_price_display`, `price_display`, `default`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'Mặc định', '', 0, 0x4f3a31303a224a506172616d65746572223a353a7b733a373a22002a005f726177223b733a3735373a2273686f775f7072696365733d300a6261736550726963653d300a626173655072696365546578743d310a626173655072696365526f756e64696e673d320a76617269616e744d6f64696669636174696f6e3d300a76617269616e744d6f64696669636174696f6e546578743d310a76617269616e744d6f64696669636174696f6e526f756e64696e673d320a62617365507269636556617269616e743d300a62617365507269636556617269616e74546578743d310a62617365507269636556617269616e74526f756e64696e673d320a626173655072696365576974685461783d300a62617365507269636557697468546178546578743d310a62617365507269636557697468546178526f756e64696e673d320a626173655072696365576974685461783d300a62617365507269636557697468546178546578743d310a62617365507269636557697468546178526f756e64696e673d320a646973636f756e7465645072696365576974686f75745461783d300a646973636f756e7465645072696365576974686f7574546178546578743d310a646973636f756e7465645072696365576974686f7574546178526f756e64696e673d320a73616c657350726963653d300a73616c65735072696365546578743d310a73616c65735072696365526f756e64696e673d320a7072696365576974686f75745461783d300a7072696365576974686f7574546178546578743d310a7072696365576974686f7574546178526f756e64696e673d320a73616c6573507269636557697468446973636f756e743d300a73616c6573507269636557697468446973636f756e74546578743d310a73616c6573507269636557697468446973636f756e74526f756e64696e673d320a646973636f756e74416d6f756e743d300a646973636f756e74416d6f756e74546578743d310a646973636f756e74416d6f756e74526f756e64696e673d320a746178416d6f756e743d300a746178416d6f756e74546578743d310a746178416d6f756e74526f756e64696e673d32223b733a373a22002a005f786d6c223b4e3b733a31323a22002a005f656c656d656e7473223b613a303a7b7d733a31353a22002a005f656c656d656e7450617468223b613a313a7b693a303b733a36333a22443a5c78616d70705c6874646f63735c736f75726365325c6c69627261726965735c6a6f6f6d6c615c68746d6c2f706172616d657465722f656c656d656e74223b7d733a373a22002a0064617461223b4f3a383a22737464436c617373223a33313a7b733a31313a2273686f775f707269636573223b693a303b733a393a22626173655072696365223b693a303b733a31333a2262617365507269636554657874223b693a313b733a31373a22626173655072696365526f756e64696e67223b693a323b733a31393a2276617269616e744d6f64696669636174696f6e223b693a303b733a32333a2276617269616e744d6f64696669636174696f6e54657874223b693a313b733a32373a2276617269616e744d6f64696669636174696f6e526f756e64696e67223b693a323b733a31363a2262617365507269636556617269616e74223b693a303b733a32303a2262617365507269636556617269616e7454657874223b693a313b733a32343a2262617365507269636556617269616e74526f756e64696e67223b693a323b733a31363a2262617365507269636557697468546178223b693a303b733a32303a226261736550726963655769746854617854657874223b693a313b733a32343a2262617365507269636557697468546178526f756e64696e67223b693a323b733a32353a22646973636f756e7465645072696365576974686f7574546178223b693a303b733a32393a22646973636f756e7465645072696365576974686f757454617854657874223b693a313b733a33333a22646973636f756e7465645072696365576974686f7574546178526f756e64696e67223b693a323b733a31303a2273616c65735072696365223b693a303b733a31343a2273616c6573507269636554657874223b693a313b733a31383a2273616c65735072696365526f756e64696e67223b693a323b733a31353a227072696365576974686f7574546178223b693a303b733a31393a227072696365576974686f757454617854657874223b693a313b733a32333a227072696365576974686f7574546178526f756e64696e67223b693a323b733a32323a2273616c6573507269636557697468446973636f756e74223b693a303b733a32363a2273616c6573507269636557697468446973636f756e7454657874223b693a313b733a33303a2273616c6573507269636557697468446973636f756e74526f756e64696e67223b693a323b733a31343a22646973636f756e74416d6f756e74223b693a303b733a31383a22646973636f756e74416d6f756e7454657874223b693a313b733a32323a22646973636f756e74416d6f756e74526f756e64696e67223b693a323b733a393a22746178416d6f756e74223b693a303b733a31333a22746178416d6f756e7454657874223b693a313b733a31373a22746178416d6f756e74526f756e64696e67223b693a323b7d7d, 1, 0, 1, 1, '0000-00-00 00:00:00', 0, '2020-08-17 02:31:51', 42, '0000-00-00 00:00:00', 0),
(1, 1, 'Người dùng', '', 0, 0x4f3a31303a224a506172616d65746572223a353a7b733a373a22002a005f726177223b733a3735373a2273686f775f7072696365733d300a6261736550726963653d300a626173655072696365546578743d300a626173655072696365526f756e64696e673d320a76617269616e744d6f64696669636174696f6e3d300a76617269616e744d6f64696669636174696f6e546578743d310a76617269616e744d6f64696669636174696f6e526f756e64696e673d320a62617365507269636556617269616e743d300a62617365507269636556617269616e74546578743d310a62617365507269636556617269616e74526f756e64696e673d320a626173655072696365576974685461783d300a62617365507269636557697468546178546578743d310a62617365507269636557697468546178526f756e64696e673d320a626173655072696365576974685461783d300a62617365507269636557697468546178546578743d310a62617365507269636557697468546178526f756e64696e673d320a646973636f756e7465645072696365576974686f75745461783d300a646973636f756e7465645072696365576974686f7574546178546578743d300a646973636f756e7465645072696365576974686f7574546178526f756e64696e673d320a73616c657350726963653d300a73616c65735072696365546578743d310a73616c65735072696365526f756e64696e673d320a7072696365576974686f75745461783d300a7072696365576974686f7574546178546578743d310a7072696365576974686f7574546178526f756e64696e673d320a73616c6573507269636557697468446973636f756e743d300a73616c6573507269636557697468446973636f756e74546578743d310a73616c6573507269636557697468446973636f756e74526f756e64696e673d320a646973636f756e74416d6f756e743d300a646973636f756e74416d6f756e74546578743d300a646973636f756e74416d6f756e74526f756e64696e673d320a746178416d6f756e743d300a746178416d6f756e74546578743d310a746178416d6f756e74526f756e64696e673d32223b733a373a22002a005f786d6c223b4e3b733a31323a22002a005f656c656d656e7473223b613a303a7b7d733a31353a22002a005f656c656d656e7450617468223b613a313a7b693a303b733a36333a22443a5c78616d70705c6874646f63735c736f75726365325c6c69627261726965735c6a6f6f6d6c615c68746d6c2f706172616d657465722f656c656d656e74223b7d733a373a22002a0064617461223b4f3a383a22737464436c617373223a33313a7b733a31313a2273686f775f707269636573223b693a303b733a393a22626173655072696365223b693a303b733a31333a2262617365507269636554657874223b693a303b733a31373a22626173655072696365526f756e64696e67223b693a323b733a31393a2276617269616e744d6f64696669636174696f6e223b693a303b733a32333a2276617269616e744d6f64696669636174696f6e54657874223b693a313b733a32373a2276617269616e744d6f64696669636174696f6e526f756e64696e67223b693a323b733a31363a2262617365507269636556617269616e74223b693a303b733a32303a2262617365507269636556617269616e7454657874223b693a313b733a32343a2262617365507269636556617269616e74526f756e64696e67223b693a323b733a31363a2262617365507269636557697468546178223b693a303b733a32303a226261736550726963655769746854617854657874223b693a313b733a32343a2262617365507269636557697468546178526f756e64696e67223b693a323b733a32353a22646973636f756e7465645072696365576974686f7574546178223b693a303b733a32393a22646973636f756e7465645072696365576974686f757454617854657874223b693a303b733a33333a22646973636f756e7465645072696365576974686f7574546178526f756e64696e67223b693a323b733a31303a2273616c65735072696365223b693a303b733a31343a2273616c6573507269636554657874223b693a313b733a31383a2273616c65735072696365526f756e64696e67223b693a323b733a31353a227072696365576974686f7574546178223b693a303b733a31393a227072696365576974686f757454617854657874223b693a313b733a32333a227072696365576974686f7574546178526f756e64696e67223b693a323b733a32323a2273616c6573507269636557697468446973636f756e74223b693a303b733a32363a2273616c6573507269636557697468446973636f756e7454657874223b693a313b733a33303a2273616c6573507269636557697468446973636f756e74526f756e64696e67223b693a323b733a31343a22646973636f756e74416d6f756e74223b693a303b733a31383a22646973636f756e74416d6f756e7454657874223b693a303b733a32323a22646973636f756e74416d6f756e74526f756e64696e67223b693a323b733a393a22746178416d6f756e74223b693a303b733a31333a22746178416d6f756e7454657874223b693a313b733a31373a22746178416d6f756e74526f756e64696e67223b693a323b7d7d, 2, 0, 1, 1, '0000-00-00 00:00:00', 0, '2020-08-17 02:31:57', 42, '0000-00-00 00:00:00', 0),
(3, 1, 'Đai lý', '', 0, 0x4f3a31303a224a506172616d65746572223a353a7b733a373a22002a005f726177223b733a3735373a2273686f775f7072696365733d310a6261736550726963653d310a626173655072696365546578743d310a626173655072696365526f756e64696e673d320a76617269616e744d6f64696669636174696f6e3d310a76617269616e744d6f64696669636174696f6e546578743d310a76617269616e744d6f64696669636174696f6e526f756e64696e673d320a62617365507269636556617269616e743d310a62617365507269636556617269616e74546578743d310a62617365507269636556617269616e74526f756e64696e673d320a626173655072696365576974685461783d310a62617365507269636557697468546178546578743d310a62617365507269636557697468546178526f756e64696e673d320a626173655072696365576974685461783d310a62617365507269636557697468546178546578743d310a62617365507269636557697468546178526f756e64696e673d320a646973636f756e7465645072696365576974686f75745461783d310a646973636f756e7465645072696365576974686f7574546178546578743d310a646973636f756e7465645072696365576974686f7574546178526f756e64696e673d320a73616c657350726963653d310a73616c65735072696365546578743d310a73616c65735072696365526f756e64696e673d320a7072696365576974686f75745461783d300a7072696365576974686f7574546178546578743d310a7072696365576974686f7574546178526f756e64696e673d320a73616c6573507269636557697468446973636f756e743d310a73616c6573507269636557697468446973636f756e74546578743d310a73616c6573507269636557697468446973636f756e74526f756e64696e673d320a646973636f756e74416d6f756e743d310a646973636f756e74416d6f756e74546578743d310a646973636f756e74416d6f756e74526f756e64696e673d320a746178416d6f756e743d300a746178416d6f756e74546578743d310a746178416d6f756e74526f756e64696e673d32223b733a373a22002a005f786d6c223b4e3b733a31323a22002a005f656c656d656e7473223b613a303a7b7d733a31353a22002a005f656c656d656e7450617468223b613a313a7b693a303b733a36333a22443a5c78616d70705c6874646f63735c736f75726365325c6c69627261726965735c6a6f6f6d6c615c68746d6c2f706172616d657465722f656c656d656e74223b7d733a373a22002a0064617461223b4f3a383a22737464436c617373223a33313a7b733a31313a2273686f775f707269636573223b693a313b733a393a22626173655072696365223b693a313b733a31333a2262617365507269636554657874223b693a313b733a31373a22626173655072696365526f756e64696e67223b693a323b733a31393a2276617269616e744d6f64696669636174696f6e223b693a313b733a32333a2276617269616e744d6f64696669636174696f6e54657874223b693a313b733a32373a2276617269616e744d6f64696669636174696f6e526f756e64696e67223b693a323b733a31363a2262617365507269636556617269616e74223b693a313b733a32303a2262617365507269636556617269616e7454657874223b693a313b733a32343a2262617365507269636556617269616e74526f756e64696e67223b693a323b733a31363a2262617365507269636557697468546178223b693a313b733a32303a226261736550726963655769746854617854657874223b693a313b733a32343a2262617365507269636557697468546178526f756e64696e67223b693a323b733a32353a22646973636f756e7465645072696365576974686f7574546178223b693a313b733a32393a22646973636f756e7465645072696365576974686f757454617854657874223b693a313b733a33333a22646973636f756e7465645072696365576974686f7574546178526f756e64696e67223b693a323b733a31303a2273616c65735072696365223b693a313b733a31343a2273616c6573507269636554657874223b693a313b733a31383a2273616c65735072696365526f756e64696e67223b693a323b733a31353a227072696365576974686f7574546178223b693a303b733a31393a227072696365576974686f757454617854657874223b693a313b733a32333a227072696365576974686f7574546178526f756e64696e67223b693a323b733a32323a2273616c6573507269636557697468446973636f756e74223b693a313b733a32363a2273616c6573507269636557697468446973636f756e7454657874223b693a313b733a33303a2273616c6573507269636557697468446973636f756e74526f756e64696e67223b693a323b733a31343a22646973636f756e74416d6f756e74223b693a313b733a31383a22646973636f756e74416d6f756e7454657874223b693a313b733a32323a22646973636f756e74416d6f756e74526f756e64696e67223b693a323b733a393a22746178416d6f756e74223b693a303b733a31333a22746178416d6f756e7454657874223b693a313b733a31373a22746178416d6f756e74526f756e64696e67223b693a323b7d7d, 0, 0, 0, 1, '0000-00-00 00:00:00', 0, '2020-08-17 02:32:07', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_states`
--

CREATE TABLE `z0djb_virtuemart_states` (
  `virtuemart_state_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 1,
  `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL DEFAULT 1,
  `virtuemart_worldzone_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `state_name` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `state_3_code` char(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `state_2_code` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='States that are assigned to a country';

--
-- Dumping data for table `z0djb_virtuemart_states`
--

INSERT INTO `z0djb_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 223, 0, 'Alabama', 'ALA', 'AL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 223, 0, 'Alaska', 'ALK', 'AK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 223, 0, 'Arizona', 'ARZ', 'AZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 223, 0, 'Arkansas', 'ARK', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 223, 0, 'California', 'CAL', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 223, 0, 'Colorado', 'COL', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 223, 0, 'Connecticut', 'CCT', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 223, 0, 'Delaware', 'DEL', 'DE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 223, 0, 'District Of Columbia', 'DOC', 'DC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 223, 0, 'Florida', 'FLO', 'FL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 223, 0, 'Georgia', 'GEA', 'GA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 223, 0, 'Hawaii', 'HWI', 'HI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 223, 0, 'Idaho', 'IDA', 'ID', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 223, 0, 'Illinois', 'ILL', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 223, 0, 'Indiana', 'IND', 'IN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 223, 0, 'Iowa', 'IOA', 'IA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 223, 0, 'Kansas', 'KAS', 'KS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 223, 0, 'Kentucky', 'KTY', 'KY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 223, 0, 'Louisiana', 'LOA', 'LA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 223, 0, 'Maine', 'MAI', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 223, 0, 'Maryland', 'MLD', 'MD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 223, 0, 'Massachusetts', 'MSA', 'MA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 223, 0, 'Michigan', 'MIC', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 223, 0, 'Minnesota', 'MIN', 'MN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 223, 0, 'Mississippi', 'MIS', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 223, 0, 'Missouri', 'MIO', 'MO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 223, 0, 'Montana', 'MOT', 'MT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 223, 0, 'Nebraska', 'NEB', 'NE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 223, 0, 'Nevada', 'NEV', 'NV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 223, 0, 'New Hampshire', 'NEH', 'NH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 223, 0, 'New Jersey', 'NEJ', 'NJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 223, 0, 'New Mexico', 'NEM', 'NM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 223, 0, 'New York', 'NEY', 'NY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 223, 0, 'North Carolina', 'NOC', 'NC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 223, 0, 'North Dakota', 'NOD', 'ND', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 223, 0, 'Ohio', 'OHI', 'OH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 223, 0, 'Oklahoma', 'OKL', 'OK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 223, 0, 'Oregon', 'ORN', 'OR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 223, 0, 'Pennsylvania', 'PEA', 'PA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 223, 0, 'Rhode Island', 'RHI', 'RI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 223, 0, 'South Carolina', 'SOC', 'SC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 223, 0, 'South Dakota', 'SOD', 'SD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 223, 0, 'Tennessee', 'TEN', 'TN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 223, 0, 'Texas', 'TXS', 'TX', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 223, 0, 'Utah', 'UTA', 'UT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 223, 0, 'Vermont', 'VMT', 'VT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 223, 0, 'Virginia', 'VIA', 'VA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 223, 0, 'Washington', 'WAS', 'WA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 223, 0, 'West Virginia', 'WEV', 'WV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 223, 0, 'Wisconsin', 'WIS', 'WI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 223, 0, 'Wyoming', 'WYO', 'WY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 38, 0, 'Alberta', 'ALB', 'AB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 38, 0, 'British Columbia', 'BRC', 'BC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 38, 0, 'Manitoba', 'MAB', 'MB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 38, 0, 'New Brunswick', 'NEB', 'NB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 38, 0, 'Newfoundland and Labrador', 'NFL', 'NL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 38, 0, 'Northwest Territories', 'NWT', 'NT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 38, 0, 'Nova Scotia', 'NOS', 'NS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 38, 0, 'Nunavut', 'NUT', 'NU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 38, 0, 'Ontario', 'ONT', 'ON', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 38, 0, 'Prince Edward Island', 'PEI', 'PE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 38, 0, 'Quebec', 'QEC', 'QC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 38, 0, 'Saskatchewan', 'SAK', 'SK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 38, 0, 'Yukon', 'YUT', 'YT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 222, 0, 'England', 'ENG', 'EN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 222, 0, 'Northern Ireland', 'NOI', 'NI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 222, 0, 'Scotland', 'SCO', 'SD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 222, 0, 'Wales', 'WLS', 'WS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 13, 0, 'Australian Capital Territory', 'ACT', 'AC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 13, 0, 'New South Wales', 'NSW', 'NS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 13, 0, 'Northern Territory', 'NOT', 'NT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 13, 0, 'Queensland', 'QLD', 'QL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 13, 0, 'South Australia', 'SOA', 'SA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 13, 0, 'Tasmania', 'TAS', 'TS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 13, 0, 'Victoria', 'VIC', 'VI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 13, 0, 'Western Australia', 'WEA', 'WA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 138, 0, 'Aguascalientes', 'AGS', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 138, 0, 'Baja California Norte', 'BCN', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 138, 0, 'Baja California Sur', 'BCS', 'BS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 138, 0, 'Campeche', 'CAM', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 138, 0, 'Chiapas', 'CHI', 'CS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 138, 0, 'Chihuahua', 'CHA', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 138, 0, 'Coahuila', 'COA', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 138, 0, 'Colima', 'COL', 'CM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 138, 0, 'Distrito Federal', 'DFM', 'DF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 138, 0, 'Durango', 'DGO', 'DO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 138, 0, 'Guanajuato', 'GTO', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 138, 0, 'Guerrero', 'GRO', 'GU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 138, 0, 'Hidalgo', 'HGO', 'HI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 138, 0, 'Jalisco', 'JAL', 'JA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 138, 0, 'M', 'EDM', 'EM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 138, 0, 'Michoac', 'MCN', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 138, 0, 'Morelos', 'MOR', 'MO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 138, 0, 'Nayarit', 'NAY', 'NY', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 138, 0, 'Nuevo Le', 'NUL', 'NL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 138, 0, 'Oaxaca', 'OAX', 'OA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 138, 0, 'Puebla', 'PUE', 'PU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 138, 0, 'Quer', 'QRO', 'QU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 138, 0, 'Quintana Roo', 'QUR', 'QR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 138, 0, 'San Luis Potos', 'SLP', 'SP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 138, 0, 'Sinaloa', 'SIN', 'SI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 138, 0, 'Sonora', 'SON', 'SO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 138, 0, 'Tabasco', 'TAB', 'TA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 138, 0, 'Tamaulipas', 'TAM', 'TM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 138, 0, 'Tlaxcala', 'TLX', 'TX', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 138, 0, 'Veracruz', 'VER', 'VZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 138, 0, 'Yucat', 'YUC', 'YU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 138, 0, 'Zacatecas', 'ZAC', 'ZA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 30, 0, 'Acre', 'ACR', 'AC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 30, 0, 'Alagoas', 'ALG', 'AL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 30, 0, 'Amapá', 'AMP', 'AP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 30, 0, 'Amazonas', 'AMZ', 'AM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 30, 0, 'Bahía', 'BAH', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 30, 0, 'Ceará', 'CEA', 'CE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 30, 0, 'Distrito Federal', 'DFB', 'DF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 30, 0, 'Espírito Santo', 'ESS', 'ES', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 30, 0, 'Goiás', 'GOI', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 30, 0, 'Maranhão', 'MAR', 'MA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 30, 0, 'Mato Grosso', 'MAT', 'MT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 30, 0, 'Mato Grosso do Sul', 'MGS', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 30, 0, 'Minas Gerais', 'MIG', 'MG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 30, 0, 'Paraná', 'PAR', 'PR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 30, 0, 'Paraíba', 'PRB', 'PB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 30, 0, 'Pará', 'PAB', 'PA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 30, 0, 'Pernambuco', 'PER', 'PE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 30, 0, 'Piauí', 'PIA', 'PI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 30, 0, 'Rio Grande do Norte', 'RGN', 'RN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 30, 0, 'Rio Grande do Sul', 'RGS', 'RS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 30, 0, 'Rio de Janeiro', 'RDJ', 'RJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 30, 0, 'Rondônia', 'RON', 'RO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 30, 0, 'Roraima', 'ROR', 'RR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 30, 0, 'Santa Catarina', 'SAC', 'SC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 30, 0, 'Sergipe', 'SER', 'SE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 30, 0, 'São Paulo', 'SAP', 'SP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 30, 0, 'Tocantins', 'TOC', 'TO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 44, 0, 'Anhui', 'ANH', '34', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 44, 0, 'Beijing', 'BEI', '11', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 44, 0, 'Chongqing', 'CHO', '50', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 44, 0, 'Fujian', 'FUJ', '35', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 44, 0, 'Gansu', 'GAN', '62', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 44, 0, 'Guangdong', 'GUA', '44', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 44, 0, 'Guangxi Zhuang', 'GUZ', '45', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 44, 0, 'Guizhou', 'GUI', '52', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 44, 0, 'Hainan', 'HAI', '46', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 44, 0, 'Hebei', 'HEB', '13', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 44, 0, 'Heilongjiang', 'HEI', '23', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 44, 0, 'Henan', 'HEN', '41', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 44, 0, 'Hubei', 'HUB', '42', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 44, 0, 'Hunan', 'HUN', '43', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 44, 0, 'Jiangsu', 'JIA', '32', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 44, 0, 'Jiangxi', 'JIX', '36', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 44, 0, 'Jilin', 'JIL', '22', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 44, 0, 'Liaoning', 'LIA', '21', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 44, 0, 'Nei Mongol', 'NML', '15', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 44, 0, 'Ningxia Hui', 'NIH', '64', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 44, 0, 'Qinghai', 'QIN', '63', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 44, 0, 'Shandong', 'SNG', '37', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 44, 0, 'Shanghai', 'SHH', '31', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 44, 0, 'Shaanxi', 'SHX', '61', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 44, 0, 'Sichuan', 'SIC', '51', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 44, 0, 'Tianjin', 'TIA', '12', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 44, 0, 'Xinjiang Uygur', 'XIU', '65', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 44, 0, 'Xizang', 'XIZ', '54', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 44, 0, 'Yunnan', 'YUN', '53', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 44, 0, 'Zhejiang', 'ZHE', '33', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 104, 0, 'Israel', 'ISL', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 104, 0, 'Gaza Strip', 'GZS', 'GZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 104, 0, 'West Bank', 'WBK', 'WB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 151, 0, 'St. Maarten', 'STM', 'SM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 151, 0, 'Bonaire', 'BNR', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 151, 0, 'Curacao', 'CUR', 'CR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 175, 0, 'Alba', 'ABA', 'AB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 175, 0, 'Arad', 'ARD', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 175, 0, 'Arges', 'ARG', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 175, 0, 'Bacau', 'BAC', 'BC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 175, 0, 'Bihor', 'BIH', 'BH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 175, 0, 'Bistrita-Nasaud', 'BIS', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 175, 0, 'Botosani', 'BOT', 'BT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 175, 0, 'Braila', 'BRL', 'BR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 175, 0, 'Brasov', 'BRA', 'BV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 175, 0, 'Bucuresti', 'BUC', 'B', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 175, 0, 'Buzau', 'BUZ', 'BZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 175, 0, 'Calarasi', 'CAL', 'CL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 175, 0, 'Caras Severin', 'CRS', 'CS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 175, 0, 'Cluj', 'CLJ', 'CJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 175, 0, 'Constanta', 'CST', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 175, 0, 'Covasna', 'COV', 'CV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 175, 0, 'Dambovita', 'DAM', 'DB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 175, 0, 'Dolj', 'DLJ', 'DJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 175, 0, 'Galati', 'GAL', 'GL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 175, 0, 'Giurgiu', 'GIU', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 175, 0, 'Gorj', 'GOR', 'GJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 175, 0, 'Hargita', 'HRG', 'HR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 175, 0, 'Hunedoara', 'HUN', 'HD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 175, 0, 'Ialomita', 'IAL', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 175, 0, 'Iasi', 'IAS', 'IS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 175, 0, 'Ilfov', 'ILF', 'IF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 175, 0, 'Maramures', 'MAR', 'MM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 175, 0, 'Mehedinti', 'MEH', 'MH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 175, 0, 'Mures', 'MUR', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 175, 0, 'Neamt', 'NEM', 'NT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 175, 0, 'Olt', 'OLT', 'OT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 175, 0, 'Prahova', 'PRA', 'PH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 175, 0, 'Salaj', 'SAL', 'SJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 175, 0, 'Satu Mare', 'SAT', 'SM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 175, 0, 'Sibiu', 'SIB', 'SB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 175, 0, 'Suceava', 'SUC', 'SV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 175, 0, 'Teleorman', 'TEL', 'TR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 175, 0, 'Timis', 'TIM', 'TM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 175, 0, 'Tulcea', 'TUL', 'TL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 175, 0, 'Valcea', 'VAL', 'VL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 175, 0, 'Vaslui', 'VAS', 'VS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 175, 0, 'Vrancea', 'VRA', 'VN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 105, 0, 'Agrigento', 'AGR', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 105, 0, 'Alessandria', 'ALE', 'AL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 105, 0, 'Ancona', 'ANC', 'AN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 105, 0, 'Aosta', 'AOS', 'AO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 105, 0, 'Arezzo', 'ARE', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 105, 0, 'Ascoli Piceno', 'API', 'AP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 105, 0, 'Asti', 'AST', 'AT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 105, 0, 'Avellino', 'AVE', 'AV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 105, 0, 'Bari', 'BAR', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 105, 0, 'Belluno', 'BEL', 'BL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 105, 0, 'Benevento', 'BEN', 'BN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 105, 0, 'Bergamo', 'BEG', 'BG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 105, 0, 'Biella', 'BIE', 'BI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 105, 0, 'Bologna', 'BOL', 'BO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 105, 0, 'Bolzano', 'BOZ', 'BZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 105, 0, 'Brescia', 'BRE', 'BS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 105, 0, 'Brindisi', 'BRI', 'BR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 105, 0, 'Cagliari', 'CAG', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 105, 0, 'Caltanissetta', 'CAL', 'CL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 105, 0, 'Campobasso', 'CBO', 'CB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 105, 0, 'Carbonia-Iglesias', 'CAR', 'CI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 105, 0, 'Caserta', 'CAS', 'CE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(236, 1, 105, 0, 'Catania', 'CAT', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 105, 0, 'Catanzaro', 'CTZ', 'CZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 105, 0, 'Chieti', 'CHI', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 105, 0, 'Como', 'COM', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(240, 1, 105, 0, 'Cosenza', 'COS', 'CS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 105, 0, 'Cremona', 'CRE', 'CR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 105, 0, 'Crotone', 'CRO', 'KR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 105, 0, 'Cuneo', 'CUN', 'CN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 105, 0, 'Enna', 'ENN', 'EN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 105, 0, 'Ferrara', 'FER', 'FE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 105, 0, 'Firenze', 'FIR', 'FI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 105, 0, 'Foggia', 'FOG', 'FG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 105, 0, 'Forli-Cesena', 'FOC', 'FC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(249, 1, 105, 0, 'Frosinone', 'FRO', 'FR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(250, 1, 105, 0, 'Genova', 'GEN', 'GE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(251, 1, 105, 0, 'Gorizia', 'GOR', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(252, 1, 105, 0, 'Grosseto', 'GRO', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(253, 1, 105, 0, 'Imperia', 'IMP', 'IM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(254, 1, 105, 0, 'Isernia', 'ISE', 'IS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(255, 1, 105, 0, 'L\'Aquila', 'AQU', 'AQ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(256, 1, 105, 0, 'La Spezia', 'LAS', 'SP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(257, 1, 105, 0, 'Latina', 'LAT', 'LT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(258, 1, 105, 0, 'Lecce', 'LEC', 'LE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(259, 1, 105, 0, 'Lecco', 'LCC', 'LC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(260, 1, 105, 0, 'Livorno', 'LIV', 'LI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(261, 1, 105, 0, 'Lodi', 'LOD', 'LO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(262, 1, 105, 0, 'Lucca', 'LUC', 'LU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(263, 1, 105, 0, 'Macerata', 'MAC', 'MC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(264, 1, 105, 0, 'Mantova', 'MAN', 'MN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(265, 1, 105, 0, 'Massa-Carrara', 'MAS', 'MS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(266, 1, 105, 0, 'Matera', 'MAA', 'MT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(267, 1, 105, 0, 'Medio Campidano', 'MED', 'VS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(268, 1, 105, 0, 'Messina', 'MES', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(269, 1, 105, 0, 'Milano', 'MIL', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(270, 1, 105, 0, 'Modena', 'MOD', 'MO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(271, 1, 105, 0, 'Napoli', 'NAP', 'NA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(272, 1, 105, 0, 'Novara', 'NOV', 'NO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(273, 1, 105, 0, 'Nuoro', 'NUR', 'NU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(274, 1, 105, 0, 'Ogliastra', 'OGL', 'OG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(275, 1, 105, 0, 'Olbia-Tempio', 'OLB', 'OT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(276, 1, 105, 0, 'Oristano', 'ORI', 'OR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(277, 1, 105, 0, 'Padova', 'PDA', 'PD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(278, 1, 105, 0, 'Palermo', 'PAL', 'PA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(279, 1, 105, 0, 'Parma', 'PAA', 'PR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(280, 1, 105, 0, 'Pavia', 'PAV', 'PV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(281, 1, 105, 0, 'Perugia', 'PER', 'PG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(282, 1, 105, 0, 'Pesaro e Urbino', 'PES', 'PU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(283, 1, 105, 0, 'Pescara', 'PSC', 'PE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(284, 1, 105, 0, 'Piacenza', 'PIA', 'PC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(285, 1, 105, 0, 'Pisa', 'PIS', 'PI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(286, 1, 105, 0, 'Pistoia', 'PIT', 'PT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(287, 1, 105, 0, 'Pordenone', 'POR', 'PN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(288, 1, 105, 0, 'Potenza', 'PTZ', 'PZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(289, 1, 105, 0, 'Prato', 'PRA', 'PO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(290, 1, 105, 0, 'Ragusa', 'RAG', 'RG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(291, 1, 105, 0, 'Ravenna', 'RAV', 'RA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(292, 1, 105, 0, 'Reggio Calabria', 'REG', 'RC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(293, 1, 105, 0, 'Reggio Emilia', 'REE', 'RE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(294, 1, 105, 0, 'Rieti', 'RIE', 'RI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(295, 1, 105, 0, 'Rimini', 'RIM', 'RN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(296, 1, 105, 0, 'Roma', 'ROM', 'RM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(297, 1, 105, 0, 'Rovigo', 'ROV', 'RO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(298, 1, 105, 0, 'Salerno', 'SAL', 'SA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(299, 1, 105, 0, 'Sassari', 'SAS', 'SS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(300, 1, 105, 0, 'Savona', 'SAV', 'SV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(301, 1, 105, 0, 'Siena', 'SIE', 'SI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(302, 1, 105, 0, 'Siracusa', 'SIR', 'SR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(303, 1, 105, 0, 'Sondrio', 'SOO', 'SO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(304, 1, 105, 0, 'Taranto', 'TAR', 'TA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(305, 1, 105, 0, 'Teramo', 'TER', 'TE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(306, 1, 105, 0, 'Terni', 'TRN', 'TR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(307, 1, 105, 0, 'Torino', 'TOR', 'TO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(308, 1, 105, 0, 'Trapani', 'TRA', 'TP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(309, 1, 105, 0, 'Trento', 'TRE', 'TN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(310, 1, 105, 0, 'Treviso', 'TRV', 'TV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(311, 1, 105, 0, 'Trieste', 'TRI', 'TS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(312, 1, 105, 0, 'Udine', 'UDI', 'UD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(313, 1, 105, 0, 'Varese', 'VAR', 'VA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(314, 1, 105, 0, 'Venezia', 'VEN', 'VE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(315, 1, 105, 0, 'Verbano Cusio Ossola', 'VCO', 'VB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(316, 1, 105, 0, 'Vercelli', 'VER', 'VC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(317, 1, 105, 0, 'Verona', 'VRN', 'VR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(318, 1, 105, 0, 'Vibo Valenzia', 'VIV', 'VV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(319, 1, 105, 0, 'Vicenza', 'VII', 'VI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(320, 1, 105, 0, 'Viterbo', 'VIT', 'VT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(321, 1, 195, 0, 'A Coru', 'ACO', '15', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(322, 1, 195, 0, 'Alava', 'ALA', '01', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(323, 1, 195, 0, 'Albacete', 'ALB', '02', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(324, 1, 195, 0, 'Alicante', 'ALI', '03', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(325, 1, 195, 0, 'Almeria', 'ALM', '04', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(326, 1, 195, 0, 'Asturias', 'AST', '33', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(327, 1, 195, 0, 'Avila', 'AVI', '05', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(328, 1, 195, 0, 'Badajoz', 'BAD', '06', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(329, 1, 195, 0, 'Baleares', 'BAL', '07', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(330, 1, 195, 0, 'Barcelona', 'BAR', '08', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(331, 1, 195, 0, 'Burgos', 'BUR', '09', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(332, 1, 195, 0, 'Caceres', 'CAC', '10', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(333, 1, 195, 0, 'Cadiz', 'CAD', '11', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(334, 1, 195, 0, 'Cantabria', 'CAN', '39', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(335, 1, 195, 0, 'Castellon', 'CAS', '12', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(336, 1, 195, 0, 'Ceuta', 'CEU', '51', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(337, 1, 195, 0, 'Ciudad Real', 'CIU', '13', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(338, 1, 195, 0, 'Cordoba', 'COR', '14', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(339, 1, 195, 0, 'Cuenca', 'CUE', '16', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(340, 1, 195, 0, 'Girona', 'GIR', '17', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(341, 1, 195, 0, 'Granada', 'GRA', '18', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(342, 1, 195, 0, 'Guadalajara', 'GUA', '19', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(343, 1, 195, 0, 'Guipuzcoa', 'GUI', '20', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(344, 1, 195, 0, 'Huelva', 'HUL', '21', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(345, 1, 195, 0, 'Huesca', 'HUS', '22', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(346, 1, 195, 0, 'Jaen', 'JAE', '23', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(347, 1, 195, 0, 'La Rioja', 'LRI', '26', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(348, 1, 195, 0, 'Las Palmas', 'LPA', '35', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(349, 1, 195, 0, 'Leon', 'LEO', '24', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(350, 1, 195, 0, 'Lleida', 'LLE', '25', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(351, 1, 195, 0, 'Lugo', 'LUG', '27', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(352, 1, 195, 0, 'Madrid', 'MAD', '28', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(353, 1, 195, 0, 'Malaga', 'MAL', '29', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(354, 1, 195, 0, 'Melilla', 'MEL', '52', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(355, 1, 195, 0, 'Murcia', 'MUR', '30', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(356, 1, 195, 0, 'Navarra', 'NAV', '31', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(357, 1, 195, 0, 'Ourense', 'OUR', '32', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(358, 1, 195, 0, 'Palencia', 'PAL', '34', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(359, 1, 195, 0, 'Pontevedra', 'PON', '36', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(360, 1, 195, 0, 'Salamanca', 'SAL', '37', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(361, 1, 195, 0, 'Santa Cruz de Tenerife', 'SCT', '38', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(362, 1, 195, 0, 'Segovia', 'SEG', '40', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(363, 1, 195, 0, 'Sevilla', 'SEV', '41', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(364, 1, 195, 0, 'Soria', 'SOR', '42', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(365, 1, 195, 0, 'Tarragona', 'TAR', '43', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(366, 1, 195, 0, 'Teruel', 'TER', '44', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(367, 1, 195, 0, 'Toledo', 'TOL', '45', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(368, 1, 195, 0, 'Valencia', 'VAL', '46', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(369, 1, 195, 0, 'Valladolid', 'VLL', '47', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(370, 1, 195, 0, 'Vizcaya', 'VIZ', '48', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(371, 1, 195, 0, 'Zamora', 'ZAM', '49', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(372, 1, 195, 0, 'Zaragoza', 'ZAR', '50', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(373, 1, 10, 0, 'Buenos Aires', 'BAS', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(374, 1, 10, 0, 'Ciudad Autonoma De Buenos Aires', 'CBA', 'CB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(375, 1, 10, 0, 'Catamarca', 'CAT', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(376, 1, 10, 0, 'Chaco', 'CHO', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(377, 1, 10, 0, 'Chubut', 'CTT', 'CT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(378, 1, 10, 0, 'Cordoba', 'COD', 'CO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(379, 1, 10, 0, 'Corrientes', 'CRI', 'CR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(380, 1, 10, 0, 'Entre Rios', 'ERS', 'ER', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(381, 1, 10, 0, 'Formosa', 'FRM', 'FR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(382, 1, 10, 0, 'Jujuy', 'JUJ', 'JU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(383, 1, 10, 0, 'La Pampa', 'LPM', 'LP', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(384, 1, 10, 0, 'La Rioja', 'LRI', 'LR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(385, 1, 10, 0, 'Mendoza', 'MED', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(386, 1, 10, 0, 'Misiones', 'MIS', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(387, 1, 10, 0, 'Neuquen', 'NQU', 'NQ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(388, 1, 10, 0, 'Rio Negro', 'RNG', 'RN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(389, 1, 10, 0, 'Salta', 'SAL', 'SA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `z0djb_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(390, 1, 10, 0, 'San Juan', 'SJN', 'SJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(391, 1, 10, 0, 'San Luis', 'SLU', 'SL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(392, 1, 10, 0, 'Santa Cruz', 'SCZ', 'SC', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(393, 1, 10, 0, 'Santa Fe', 'SFE', 'SF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(394, 1, 10, 0, 'Santiago Del Estero', 'SEN', 'SE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(395, 1, 10, 0, 'Tierra Del Fuego', 'TFE', 'TF', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(396, 1, 10, 0, 'Tucuman', 'TUC', 'TU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(397, 1, 11, 0, 'Aragatsotn', 'ARG', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(398, 1, 11, 0, 'Ararat', 'ARR', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(399, 1, 11, 0, 'Armavir', 'ARM', 'AV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(400, 1, 11, 0, 'Gegharkunik', 'GEG', 'GR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(401, 1, 11, 0, 'Kotayk', 'KOT', 'KT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(402, 1, 11, 0, 'Lori', 'LOR', 'LO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(403, 1, 11, 0, 'Shirak', 'SHI', 'SH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(404, 1, 11, 0, 'Syunik', 'SYU', 'SU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(405, 1, 11, 0, 'Tavush', 'TAV', 'TV', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(406, 1, 11, 0, 'Vayots-Dzor', 'VAD', 'VD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(407, 1, 11, 0, 'Yerevan', 'YER', 'ER', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(408, 1, 99, 0, 'Andaman & Nicobar Islands', 'ANI', 'AI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(409, 1, 99, 0, 'Andhra Pradesh', 'AND', 'AN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(410, 1, 99, 0, 'Arunachal Pradesh', 'ARU', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(411, 1, 99, 0, 'Assam', 'ASS', 'AS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(412, 1, 99, 0, 'Bihar', 'BIH', 'BI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(413, 1, 99, 0, 'Chandigarh', 'CHA', 'CA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(414, 1, 99, 0, 'Chhatisgarh', 'CHH', 'CH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(415, 1, 99, 0, 'Dadra & Nagar Haveli', 'DAD', 'DD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(416, 1, 99, 0, 'Daman & Diu', 'DAM', 'DA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(417, 1, 99, 0, 'Delhi', 'DEL', 'DE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(418, 1, 99, 0, 'Goa', 'GOA', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(419, 1, 99, 0, 'Gujarat', 'GUJ', 'GU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(420, 1, 99, 0, 'Haryana', 'HAR', 'HA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(421, 1, 99, 0, 'Himachal Pradesh', 'HIM', 'HI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(422, 1, 99, 0, 'Jammu & Kashmir', 'JAM', 'JA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(423, 1, 99, 0, 'Jharkhand', 'JHA', 'JH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(424, 1, 99, 0, 'Karnataka', 'KAR', 'KA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(425, 1, 99, 0, 'Kerala', 'KER', 'KE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(426, 1, 99, 0, 'Lakshadweep', 'LAK', 'LA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(427, 1, 99, 0, 'Madhya Pradesh', 'MAD', 'MD', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(428, 1, 99, 0, 'Maharashtra', 'MAH', 'MH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(429, 1, 99, 0, 'Manipur', 'MAN', 'MN', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(430, 1, 99, 0, 'Meghalaya', 'MEG', 'ME', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(431, 1, 99, 0, 'Mizoram', 'MIZ', 'MI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(432, 1, 99, 0, 'Nagaland', 'NAG', 'NA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(433, 1, 99, 0, 'Orissa', 'ORI', 'OR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(434, 1, 99, 0, 'Pondicherry', 'PON', 'PO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(435, 1, 99, 0, 'Punjab', 'PUN', 'PU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(436, 1, 99, 0, 'Rajasthan', 'RAJ', 'RA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(437, 1, 99, 0, 'Sikkim', 'SIK', 'SI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(438, 1, 99, 0, 'Tamil Nadu', 'TAM', 'TA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(439, 1, 99, 0, 'Tripura', 'TRI', 'TR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(440, 1, 99, 0, 'Uttaranchal', 'UAR', 'UA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(441, 1, 99, 0, 'Uttar Pradesh', 'UTT', 'UT', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(442, 1, 99, 0, 'West Bengal', 'WES', 'WE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(443, 1, 101, 0, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(444, 1, 101, 0, 'Ardabil', 'ARD', 'AR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(445, 1, 101, 0, 'Azarbayjan-e Gharbi', 'AZG', 'AG', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(446, 1, 101, 0, 'Azarbayjan-e Sharqi', 'AZS', 'AS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(447, 1, 101, 0, 'Bushehr', 'BUS', 'BU', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(448, 1, 101, 0, 'Chaharmahal va Bakhtiari', 'CMB', 'CM', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(449, 1, 101, 0, 'Esfahan', 'ESF', 'ES', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(450, 1, 101, 0, 'Fars', 'FAR', 'FA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(451, 1, 101, 0, 'Gilan', 'GIL', 'GI', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(452, 1, 101, 0, 'Gorgan', 'GOR', 'GO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(453, 1, 101, 0, 'Hamadan', 'HAM', 'HA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(454, 1, 101, 0, 'Hormozgan', 'HOR', 'HO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(455, 1, 101, 0, 'Ilam', 'ILA', 'IL', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(456, 1, 101, 0, 'Kerman', 'KER', 'KE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(457, 1, 101, 0, 'Kermanshah', 'BAK', 'BA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(458, 1, 101, 0, 'Khorasan-e Junoubi', 'KHJ', 'KJ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(459, 1, 101, 0, 'Khorasan-e Razavi', 'KHR', 'KR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(460, 1, 101, 0, 'Khorasan-e Shomali', 'KHS', 'KS', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(461, 1, 101, 0, 'Khuzestan', 'KHU', 'KH', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(462, 1, 101, 0, 'Kordestan', 'KOR', 'KO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(463, 1, 101, 0, 'Lorestan', 'LOR', 'LO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(464, 1, 101, 0, 'Markazi', 'MAR', 'MR', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(465, 1, 101, 0, 'Mazandaran', 'MAZ', 'MZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(466, 1, 101, 0, 'Qazvin', 'QAS', 'QA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(467, 1, 101, 0, 'Qom', 'QOM', 'QO', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(468, 1, 101, 0, 'Semnan', 'SEM', 'SE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(469, 1, 101, 0, 'Sistan va Baluchestan', 'SBA', 'SB', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(470, 1, 101, 0, 'Tehran', 'TEH', 'TE', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(471, 1, 101, 0, 'Yazd', 'YAZ', 'YA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(472, 1, 101, 0, 'Zanjan', 'ZAN', 'ZA', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(535, 1, 84, 0, 'ΛΕΥΚΑΔΑΣ', 'ΛΕΥ', 'ΛΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(532, 1, 84, 0, 'ΛΑΡΙΣΑΣ', 'ΛΑΡ', 'ΛΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(504, 1, 84, 0, 'ΑΡΚΑΔΙΑΣ', 'ΑΡΚ', 'ΑΚ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(503, 1, 84, 0, 'ΑΡΓΟΛΙΔΑΣ', 'ΑΡΓ', 'ΑΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(533, 1, 84, 0, 'ΛΑΣΙΘΙΟΥ', 'ΛΑΣ', 'ΛΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(534, 1, 84, 0, 'ΛΕΣΒΟΥ', 'ΛΕΣ', 'ΛΣ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(530, 1, 84, 0, 'ΚΥΚΛΑΔΩΝ', 'ΚΥΚ', 'ΚΥ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(553, 1, 84, 0, 'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ', 'ΑΙΤ', 'ΑΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(529, 1, 84, 0, 'ΚΟΡΙΝΘΙΑΣ', 'ΚΟΡ', 'ΚΟ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(531, 1, 84, 0, 'ΛΑΚΩΝΙΑΣ', 'ΛΑΚ', 'ΛK', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(517, 1, 84, 0, 'ΗΜΑΘΙΑΣ', 'ΗΜΑ', 'ΗΜ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(518, 1, 84, 0, 'ΗΡΑΚΛΕΙΟΥ', 'ΗΡΑ', 'ΗΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(519, 1, 84, 0, 'ΘΕΣΠΡΩΤΙΑΣ', 'ΘΕΠ', 'ΘΠ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(520, 1, 84, 0, 'ΘΕΣΣΑΛΟΝΙΚΗΣ', 'ΘΕΣ', 'ΘΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(521, 1, 84, 0, 'ΙΩΑΝΝΙΝΩΝ', 'ΙΩΑ', 'ΙΩ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(522, 1, 84, 0, 'ΚΑΒΑΛΑΣ', 'ΚΑΒ', 'ΚΒ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(523, 1, 84, 0, 'ΚΑΡΔΙΤΣΑΣ', 'ΚΑΡ', 'ΚΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(524, 1, 84, 0, 'ΚΑΣΤΟΡΙΑΣ', 'ΚΑΣ', 'ΚΣ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(525, 1, 84, 0, 'ΚΕΡΚΥΡΑΣ', 'ΚΕΡ', 'ΚΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(526, 1, 84, 0, 'ΚΕΦΑΛΛΗΝΙΑΣ', 'ΚΕΦ', 'ΚΦ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(527, 1, 84, 0, 'ΚΙΛΚΙΣ', 'ΚΙΛ', 'ΚΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(528, 1, 84, 0, 'ΚΟΖΑΝΗΣ', 'ΚΟΖ', 'ΚZ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(507, 1, 84, 0, 'ΑΧΑΪΑΣ', 'ΑΧΑ', 'ΑΧ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(508, 1, 84, 0, 'ΒΟΙΩΤΙΑΣ', 'ΒΟΙ', 'ΒΟ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(509, 1, 84, 0, 'ΓΡΕΒΕΝΩΝ', 'ΓΡΕ', 'ΓΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(510, 1, 84, 0, 'ΔΡΑΜΑΣ', 'ΔΡΑ', 'ΔΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(511, 1, 84, 0, 'ΔΩΔΕΚΑΝΗΣΟΥ', 'ΔΩΔ', 'ΔΩ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(512, 1, 84, 0, 'ΕΒΡΟΥ', 'ΕΒΡ', 'ΕΒ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(513, 1, 84, 0, 'ΕΥΒΟΙΑΣ', 'ΕΥΒ', 'ΕΥ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(514, 1, 84, 0, 'ΕΥΡΥΤΑΝΙΑΣ', 'ΕΥΡ', 'ΕΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(515, 1, 84, 0, 'ΖΑΚΥΝΘΟΥ', 'ΖΑΚ', 'ΖΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(516, 1, 84, 0, 'ΗΛΕΙΑΣ', 'ΗΛΕ', 'ΗΛ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(505, 1, 84, 0, 'ΑΡΤΑΣ', 'ΑΡΤ', 'ΑΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(506, 1, 84, 0, 'ΑΤΤΙΚΗΣ', 'ΑΤΤ', 'ΑΤ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(536, 1, 84, 0, 'ΜΑΓΝΗΣΙΑΣ', 'ΜΑΓ', 'ΜΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(537, 1, 84, 0, 'ΜΕΣΣΗΝΙΑΣ', 'ΜΕΣ', 'ΜΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(538, 1, 84, 0, 'ΞΑΝΘΗΣ', 'ΞΑΝ', 'ΞΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(539, 1, 84, 0, 'ΠΕΛΛΗΣ', 'ΠΕΛ', 'ΠΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(540, 1, 84, 0, 'ΠΙΕΡΙΑΣ', 'ΠΙΕ', 'ΠΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(541, 1, 84, 0, 'ΠΡΕΒΕΖΑΣ', 'ΠΡΕ', 'ΠΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(542, 1, 84, 0, 'ΡΕΘΥΜΝΗΣ', 'ΡΕΘ', 'ΡΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(543, 1, 84, 0, 'ΡΟΔΟΠΗΣ', 'ΡΟΔ', 'ΡΟ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(544, 1, 84, 0, 'ΣΑΜΟΥ', 'ΣΑΜ', 'ΣΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(545, 1, 84, 0, 'ΣΕΡΡΩΝ', 'ΣΕΡ', 'ΣΕ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(546, 1, 84, 0, 'ΤΡΙΚΑΛΩΝ', 'ΤΡΙ', 'ΤΡ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(547, 1, 84, 0, 'ΦΘΙΩΤΙΔΑΣ', 'ΦΘΙ', 'ΦΘ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(548, 1, 84, 0, 'ΦΛΩΡΙΝΑΣ', 'ΦΛΩ', 'ΦΛ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(549, 1, 84, 0, 'ΦΩΚΙΔΑΣ', 'ΦΩΚ', 'ΦΩ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(550, 1, 84, 0, 'ΧΑΛΚΙΔΙΚΗΣ', 'ΧΑΛ', 'ΧΑ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(551, 1, 84, 0, 'ΧΑΝΙΩΝ', 'ΧΑΝ', 'ΧΝ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(552, 1, 84, 0, 'ΧΙΟΥ', 'ΧΙΟ', 'ΧΙ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(569, 1, 81, 0, 'Schleswig-Holstein', 'SHO', 'SH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(554, 1, 81, 0, 'Freie und Hansestadt Hamburg', 'HAM', 'HH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(555, 1, 81, 0, 'Niedersachsen', 'NIS', 'NI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(556, 1, 81, 0, 'Freie Hansestadt Bremen', 'HBR', 'HB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(557, 1, 81, 0, 'Nordrhein-Westfalen', 'NRW', 'NW', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(558, 1, 81, 0, 'Hessen', 'HES', 'HE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(559, 1, 81, 0, 'Rheinland-Pfalz', 'RLP', 'RP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(560, 1, 81, 0, 'Baden-Württemberg', 'BWÜ', 'BW', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(561, 1, 81, 0, 'Freistaat Bayern', 'BAV', 'BY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(562, 1, 81, 0, 'Saarland', 'SLA', 'SL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(563, 1, 81, 0, 'Berlin', 'BER', 'BE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(564, 1, 81, 0, 'Brandenburg', 'BRB', 'BB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(565, 1, 81, 0, 'Mecklenburg-Vorpommern', 'MVO', 'MV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(566, 1, 81, 0, 'Freistaat Sachsen', 'SAC', 'SN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(567, 1, 81, 0, 'Sachsen-Anhalt', 'SAA', 'ST', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(568, 1, 81, 0, 'Freistaat Thüringen', 'THÜ', 'TH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(570, 1, 176, 0, 'Адыгея Республика', 'AD', '01', 1, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(571, 1, 176, 0, 'Алтай Республика', 'AL', '04', 2, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(572, 1, 176, 0, 'Алтайский край', 'ALT', '22', 3, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(573, 1, 176, 0, 'Амурская область', 'AMU', '28', 4, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(574, 1, 176, 0, 'Архангельская область', 'ARK', '29', 5, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(575, 1, 176, 0, 'Астраханская область', 'AST', '30', 6, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(576, 1, 176, 0, 'Башкортостан Республика', 'BA', '02', 7, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(577, 1, 176, 0, 'Белгородская область', 'BEL', '31', 8, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(578, 1, 176, 0, 'Брянская область', 'BRY', '32', 9, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(579, 1, 176, 0, 'Бурятия Республика', 'BU', '03', 10, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(580, 1, 176, 0, 'Владимирская область', 'VLA', '33', 11, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(581, 1, 176, 0, 'Волгоградская область', 'VGG', '34', 12, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(582, 1, 176, 0, 'Вологодская область', 'VLG', '35', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(583, 1, 176, 0, 'Воронежская область', 'VOR', '36', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(584, 1, 176, 0, 'Дагестан Республика', 'DA', '05', 15, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(585, 1, 176, 0, 'Еврейская автономная область', 'YEV', '79', 16, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(586, 1, 176, 0, 'Забайкальский край', 'ZAB', '75', 17, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(587, 1, 176, 0, 'Ивановская область', 'IVA', '37', 18, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(588, 1, 176, 0, 'Ингушетия Республика', 'IN', '06', 19, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(589, 1, 176, 0, 'Иркутская область', 'IRK', '38', 20, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(590, 1, 176, 0, 'Кабардино-Балкарская Республика', 'KB', '07', 21, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(591, 1, 176, 0, 'Калининградская область', 'KGD', '39', 22, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(592, 1, 176, 0, 'Калмыкия Республика', 'KL', '08', 23, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(593, 1, 176, 0, 'Калужская область', 'KLU', '40', 24, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(594, 1, 176, 0, 'Камчатский край', 'KAM', '41', 25, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(595, 1, 176, 0, 'Карачаево-Черкесская Республика', 'KC', '09', 26, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(596, 1, 176, 0, 'Карелия Республика', 'KR', '10', 27, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(597, 1, 176, 0, 'Кемеровская область', 'KEM', '42', 28, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(598, 1, 176, 0, 'Кировская область', 'KIR', '43', 29, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(599, 1, 176, 0, 'Коми Республика', 'KO', '11', 30, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(600, 1, 176, 0, 'Костромская область', 'KOS', '44', 31, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(601, 1, 176, 0, 'Краснодарский край', 'KDA', '23', 32, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(602, 1, 176, 0, 'Красноярский край', 'KIA', '24', 33, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(603, 1, 176, 0, 'Курганская область', 'KGN', '45', 34, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(604, 1, 176, 0, 'Курская область', 'KRS', '46', 35, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(605, 1, 176, 0, 'Ленинградская область', 'LEN', '47', 36, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(606, 1, 176, 0, 'Липецкая область', 'LIP', '48', 37, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(607, 1, 176, 0, 'Магаданская область', 'MAG', '49', 38, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(608, 1, 176, 0, 'Марий Эл Республика', 'ME', '12', 39, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(609, 1, 176, 0, 'Мордовия Республика', 'MO', '13', 40, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(610, 1, 176, 0, 'Москва', 'MOW', '77', 41, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(611, 1, 176, 0, 'Московская область', 'MOS', '50', 42, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(612, 1, 176, 0, 'Мурманская область', 'MUR', '51', 43, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(613, 1, 176, 0, 'Ненецкий автономный округ', 'NEN', '83', 44, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(614, 1, 176, 0, 'Нижегородская область', 'NIZ', '52', 45, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(615, 1, 176, 0, 'Новгородская область', 'NGR', '53', 46, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(616, 1, 176, 0, 'Новосибирская область', 'NVS', '54', 47, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(617, 1, 176, 0, 'Омская область', 'OMS', '55', 48, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(618, 1, 176, 0, 'Оренбургская область', 'ORE', '56', 49, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(619, 1, 176, 0, 'Орловская область', 'ORL', '57', 50, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(620, 1, 176, 0, 'Пензенская область', 'PNZ', '58', 51, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(621, 1, 176, 0, 'Пермский край', 'PER', '59', 52, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(622, 1, 176, 0, 'Приморский край', 'PRI', '25', 53, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(623, 1, 176, 0, 'Псковская область', 'PSK', '60', 54, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(624, 1, 176, 0, 'Ростовская область', 'ROS', '61', 55, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(625, 1, 176, 0, 'Рязанская область', 'RYA', '62', 56, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(626, 1, 176, 0, 'Самарская область', 'SAM', '63', 57, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(627, 1, 176, 0, 'Санкт-Петербург', 'SPE', '78', 58, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(628, 1, 176, 0, 'Саратовская область', 'SAR', '64', 59, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(629, 1, 176, 0, 'Саха (Якутия) Республика', 'SA', '14', 60, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(630, 1, 176, 0, 'Сахалинская область', 'SAK', '65', 61, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(631, 1, 176, 0, 'Свердловская область', 'SVE', '66', 62, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(632, 1, 176, 0, 'Северная Осетия-Алания Республика', 'SE', '15', 63, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(633, 1, 176, 0, 'Смоленская область', 'SMO', '67', 64, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(634, 1, 176, 0, 'Ставропольский край', 'STA', '26', 65, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(635, 1, 176, 0, 'Тамбовская область', 'TAM', '68', 66, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(636, 1, 176, 0, 'Татарстан Республика', 'TA', '16', 67, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(637, 1, 176, 0, 'Тверская область', 'TVE', '69', 68, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(638, 1, 176, 0, 'Томская область', 'TOM', '70', 69, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(639, 1, 176, 0, 'Тульская область', 'TUL', '71', 70, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(640, 1, 176, 0, 'Тыва Республика', 'TY', '17', 71, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(641, 1, 176, 0, 'Тюменская область', 'TYU', '72', 72, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(642, 1, 176, 0, 'Удмуртская Республика', 'UD', '18', 73, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(643, 1, 176, 0, 'Ульяновская область', 'ULY', '73', 74, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(644, 1, 176, 0, 'Хакасия Республика', 'KK', '19', 75, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(645, 1, 176, 0, 'Челябинская область', 'CHE', '74', 76, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(646, 1, 176, 0, 'Чеченская Республика', 'CE', '20', 77, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(647, 1, 176, 0, 'Чувашская Республика', 'CU', '21', 78, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(648, 1, 176, 0, 'Чукотский автономный округ', 'CHU', '87', 79, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(649, 1, 176, 0, 'Хабаровский край', 'KHA', '27', 80, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(650, 1, 176, 0, 'Ханты-Мансийский автономный округ', 'KHM', '86', 81, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(651, 1, 176, 0, 'Ямало-Ненецкий автономный округ', 'YAN', '89', 82, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(652, 1, 176, 0, 'Ярославская область', 'YAR', '76', 83, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(653, 1, 209, 0, 'กระบี่', 'กบ', 'กบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(654, 1, 209, 0, 'กรุงเทพมหานคร', 'กทม', 'กท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(655, 1, 209, 0, 'กาญจนบุรี', 'กจ', 'กจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(656, 1, 209, 0, 'กาฬสินธุ์', 'กส', 'กส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(657, 1, 209, 0, 'กำแพงเพชร', 'กพ', 'กพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(658, 1, 209, 0, 'ขอนแก่น', 'ขก', 'ขก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(659, 1, 209, 0, 'จันทบุรี', 'จบ', 'จบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(660, 1, 209, 0, 'ฉะเชิงเทรา', 'ฉช', 'ฉช', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(661, 1, 209, 0, 'ชลบุรี', 'ชบ', 'ชบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(662, 1, 209, 0, 'ชัยนาท', 'ชน', 'ชน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(663, 1, 209, 0, 'ชัยภูมิ', 'ชย', 'ชย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(664, 1, 209, 0, 'ชุมพร', 'ชพ', 'ชพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(665, 1, 209, 0, 'เชียงราย', 'ชร', 'ชร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(666, 1, 209, 0, 'เชียงใหม่', 'ชม', 'ชม', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(667, 1, 209, 0, 'ตรัง', 'ตง', 'ตง', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(668, 1, 209, 0, 'ตราด', 'ตร', 'ตร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(669, 1, 209, 0, 'ตาก', 'ตก', 'ตก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(670, 1, 209, 0, 'นครนายก', 'นย', 'นย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(671, 1, 209, 0, 'นครปฐม', 'นฐ', 'นฐ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(672, 1, 209, 0, 'นครพนม', 'นพ', 'นพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(673, 1, 209, 0, 'นครราชสีมา', 'นม', 'นม', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(674, 1, 209, 0, 'นครศรีธรรมราช', 'นศ', 'นศ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(675, 1, 209, 0, 'นครสวรรค์', 'นว', 'นว', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(676, 1, 209, 0, 'นนทบุรี', 'นบ', 'นบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(677, 1, 209, 0, 'นราธิวาส', 'นธ', 'นธ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(678, 1, 209, 0, 'น่าน', 'นน', 'นน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(679, 1, 209, 0, 'บุรีรัมย์', 'บร', 'บร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(680, 1, 209, 0, 'บึงกาฬ', 'บก', 'บก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(681, 1, 209, 0, 'ปทุมธานี', 'ปท', 'ปท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(682, 1, 209, 0, 'ประจวบคีรีขันธ์', 'ปข', 'ปข', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(683, 1, 209, 0, 'ปราจีนบุรี', 'ปจ', 'ปจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(684, 1, 209, 0, 'ปัตตานี', 'ปน', 'ปน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(685, 1, 209, 0, 'พระนครศรีอยุธยา', 'อย', 'อย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(686, 1, 209, 0, 'พังงา', 'พง', 'พง', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(687, 1, 209, 0, 'พัทลุง', 'พท', 'พท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(688, 1, 209, 0, 'พิจิตร', 'พจ', 'พจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(689, 1, 209, 0, 'พิษณุโลก', 'พล', 'พล', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(690, 1, 209, 0, 'เพชรบุรี', 'พบ', 'พบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(691, 1, 209, 0, 'เพชรบูรณ์', 'พช', 'พช', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(692, 1, 209, 0, 'แพร่', 'พร', 'พร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(693, 1, 209, 0, 'พะเยา', 'พย', 'พย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(694, 1, 209, 0, 'ภูเก็ต', 'ภก', 'ภก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(695, 1, 209, 0, 'มหาสารคาม', 'มค', 'มค', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(696, 1, 209, 0, 'แม่ฮ่องสอน', 'มส', 'มส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(697, 1, 209, 0, 'มุกดาหาร', 'มห', 'มห', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(698, 1, 209, 0, 'ยะลา', 'ยล', 'ยล', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(699, 1, 209, 0, 'ยโสธร', 'ยส', 'ยส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(700, 1, 209, 0, 'ร้อยเอ็ด', 'รอ', 'รอ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(701, 1, 209, 0, 'ระนอง', 'รน', 'รน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(702, 1, 209, 0, 'ระยอง', 'รย', 'รย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(703, 1, 209, 0, 'ราชบุรี', 'รบ', 'รบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(704, 1, 209, 0, 'ลพบุรี', 'ลบ', 'ลบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(705, 1, 209, 0, 'ลำปาง', 'ลป', 'ลป', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(706, 1, 209, 0, 'ลำพูน', 'ลพ', 'ลพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(707, 1, 209, 0, 'เลย', 'ลย', 'ลย', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(708, 1, 209, 0, 'ศรีสะเกษ', 'ศก', 'ศก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(709, 1, 209, 0, 'สกลนคร', 'สน', 'สน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(710, 1, 209, 0, 'สงขลา', 'สข', 'สข', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(711, 1, 209, 0, 'สตูล', 'สต', 'สต', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(712, 1, 209, 0, 'สมุทรปราการ', 'สป', 'สป', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(713, 1, 209, 0, 'สมุทรสงคราม', 'สส', 'สส', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(714, 1, 209, 0, 'สมุทรสาคร', 'สค', 'สค', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(715, 1, 209, 0, 'สระบุรี', 'สบ', 'สบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(716, 1, 209, 0, 'สระแก้ว', 'สก', 'สก', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(717, 1, 209, 0, 'สิงห์บุรี', 'สห', 'สห', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(718, 1, 209, 0, 'สุโขทัย', 'สท', 'สท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(719, 1, 209, 0, 'สุพรรณบุรี', 'สพ', 'สพ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(720, 1, 209, 0, 'สุราษฎร์ธานี', 'สฎ', 'สฎ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(721, 1, 209, 0, 'สุรินทร์', 'สร', 'สร', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(722, 1, 209, 0, 'หนองคาย', 'นค', 'นค', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(723, 1, 209, 0, 'หนองบัวลำภู', 'นภ', 'นภ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(724, 1, 209, 0, 'อ่างทอง', 'อท', 'อท', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(725, 1, 209, 0, 'อุดรธานี', 'อด', 'อด', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(726, 1, 209, 0, 'อุตรดิตถ์', 'อต', 'อต', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(727, 1, 209, 0, 'อุทัยธานี', 'อน', 'อน', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(728, 1, 209, 0, 'อุบลราชธานี', 'อบ', 'อบ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(729, 1, 209, 0, 'อำนาจเจริญ', 'อจ', 'อจ', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_userfields`
--

CREATE TABLE `z0djb_virtuemart_userfields` (
  `virtuemart_userfield_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 1,
  `userfield_jplugin_id` int(11) NOT NULL DEFAULT 0,
  `name` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `type` char(70) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT 0,
  `shipment` tinyint(1) NOT NULL DEFAULT 0,
  `account` tinyint(1) NOT NULL DEFAULT 1,
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  `calculated` tinyint(1) NOT NULL DEFAULT 0,
  `sys` tinyint(4) NOT NULL DEFAULT 0,
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Holds the fields for the user information';

--
-- Dumping data for table `z0djb_virtuemart_userfields`
--

INSERT INTO `z0djb_virtuemart_userfields` (`virtuemart_userfield_id`, `virtuemart_vendor_id`, `userfield_jplugin_id`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `cols`, `rows`, `value`, `default`, `registration`, `shipment`, `account`, `readonly`, `calculated`, `sys`, `params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 0, 'email', 'E-Mail', '', 'emailaddress', 255, 0, 1, 0, 0, NULL, '', 1, 1, 1, 0, 0, 0, NULL, 6, 0, 1, '2014-06-20 03:53:16', 42, '2021-08-17 03:47:28', 42, '0000-00-00 00:00:00', 0),
(2, 1, 0, 'password', 'Mật khẩu', '', 'password', 25, 0, 1, 0, 0, '', '', 1, 0, 1, 0, 0, 0, '', 4, 0, 1, '2014-06-20 03:53:16', 42, '2020-08-10 00:51:16', 42, '0000-00-00 00:00:00', 0),
(3, 1, 0, 'password2', 'Nhập mật khẩu lần 2', '', 'password', 25, 0, 1, 0, 0, '', '', 1, 0, 1, 0, 0, 0, '', 5, 0, 1, '2014-06-20 03:53:16', 42, '2020-08-10 00:51:10', 42, '0000-00-00 00:00:00', 0),
(4, 0, 0, 'agreed', 'COM_VIRTUEMART_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, NULL, 13, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 0, 'name', 'Tên đăng nhập', '', 'text', 255, 0, 1, 0, 0, '', '', 1, 0, 1, 0, 0, 0, '', 2, 0, 1, '2014-06-20 03:53:16', 42, '2021-08-17 03:52:49', 42, '0000-00-00 00:00:00', 0),
(6, 1, 0, 'username', 'Tài khoản', '', 'text', 25, 0, 1, 0, 0, '', '', 1, 0, 1, 0, 0, 0, '', 3, 0, 1, '2014-06-20 03:53:16', 42, '2022-05-24 03:59:29', 42, '0000-00-00 00:00:00', 0),
(7, 0, 0, 'address_type_name', 'COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 0, NULL, NULL, NULL, 'Shipment', 0, 0, 0, 0, 0, 1, NULL, 16, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 0, 0, 'delimiter_billto', 'COM_VIRTUEMART_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, 18, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 0, 'address_1', 'Địa chỉ nhận hàng', '', 'text', 0, 0, 1, 0, 0, '', '', 1, 1, 1, 0, 0, 1, '', 8, 0, 1, '2014-06-20 03:44:47', 42, '2021-08-17 03:40:12', 42, '0000-00-00 00:00:00', 0),
(20, 1, 0, 'phone_1', 'Số điện thoại', '', 'text', 0, 0, 1, 0, 0, '', '', 1, 1, 1, 0, 0, 1, '', 7, 0, 1, '2014-06-20 03:45:18', 42, '2021-08-17 03:42:01', 42, '0000-00-00 00:00:00', 0),
(23, 1, 0, 'delimiter_sendregistration', 'COM_VIRTUEMART_BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, 0, 0, NULL, '', 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, '2014-06-20 03:50:32', 42, '2014-06-20 03:53:16', 42, '0000-00-00 00:00:00', 0),
(24, 1, 0, 'delimiter_userinfo', 'COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', 0, 0, 0, 0, 0, NULL, '', 0, 0, 0, 0, 0, 0, NULL, 14, 0, 0, '2014-06-20 03:34:55', 42, '2014-06-20 03:34:55', 42, '0000-00-00 00:00:00', 0),
(28, 1, 0, 'noidung20141007', 'Nội dung', '', 'textarea', 0, 0, 0, 20, 5, NULL, '', 0, 1, 1, 0, 0, 0, NULL, 52, 0, 1, '2014-10-07 20:24:04', 42, '2021-08-17 03:42:16', 42, '0000-00-00 00:00:00', 0),
(29, 1, 0, 'hovaten', 'Họ tên', '', 'text', 255, 0, 1, 0, 0, '', '', 1, 1, 1, 0, 0, 0, '', 3, 0, 1, '2015-04-03 03:58:28', 42, '2021-08-17 03:47:21', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_userfield_values`
--

CREATE TABLE `z0djb_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_userfield_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `fieldtitle` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `fieldvalue` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Holds the different values for dropdown and radio lists';

--
-- Dumping data for table `z0djb_virtuemart_userfield_values`
--

INSERT INTO `z0djb_virtuemart_userfield_values` (`virtuemart_userfield_value_id`, `virtuemart_userfield_id`, `fieldtitle`, `fieldvalue`, `sys`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(29, 24, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 2, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 3, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 14, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 20, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 23, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 28, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 29, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 6, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 5, '', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_userinfos`
--

CREATE TABLE `z0djb_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `address_type` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `address_type_name` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `name` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone_1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone_2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `virtuemart_state_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `virtuemart_country_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0,
  `noidung` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `noidung20141007` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `hovaten` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `test` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Dumping data for table `z0djb_virtuemart_userinfos`
--

INSERT INTO `z0djb_virtuemart_userinfos` (`virtuemart_userinfo_id`, `virtuemart_user_id`, `address_type`, `address_type_name`, `name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `virtuemart_state_id`, `virtuemart_country_id`, `zip`, `agreed`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`, `noidung`, `noidung20141007`, `hovaten`, `test`) VALUES
(16, 42, 'BT', '', 'Super User', NULL, NULL, NULL, NULL, NULL, '0909333999', NULL, NULL, '220 Au Co', NULL, NULL, NULL, NULL, NULL, 0, '2017-07-19 08:18:26', 42, '2020-09-03 05:08:52', 42, '0000-00-00 00:00:00', 0, NULL, '', 'Thông', NULL),
(25, 79, 'BT', '', 'test', NULL, NULL, NULL, NULL, NULL, '0909444888', NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, 0, '2020-08-09 09:58:03', 79, '2020-08-09 09:59:51', 79, '0000-00-00 00:00:00', 0, NULL, 'as', 'test', NULL),
(26, 80, 'BT', '', 'sdf', NULL, NULL, NULL, NULL, NULL, '0909455588', NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, 0, '2020-08-10 02:36:13', 80, '2020-08-10 02:36:13', 80, '0000-00-00 00:00:00', 0, NULL, '', 'sdf', NULL),
(27, 81, 'BT', '', 'test', NULL, NULL, NULL, NULL, NULL, '+84945672200', NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, 0, '2020-09-24 06:43:21', 81, '2020-09-24 11:27:55', 81, '0000-00-00 00:00:00', 0, NULL, '', 'test', NULL),
(28, 87, 'BT', '', 'hoang asdfsdf2323rfwefsdf', NULL, NULL, NULL, NULL, NULL, '0909333888', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, 0, '2021-08-17 03:44:25', 87, '2021-08-17 03:44:25', 87, '0000-00-00 00:00:00', 0, NULL, '', 'hoang a', NULL),
(29, 89, 'BT', '', 'test', NULL, NULL, NULL, NULL, NULL, '0909333888', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, 0, '2021-09-06 05:01:07', 89, '2021-09-06 05:01:07', 89, '0000-00-00 00:00:00', 0, NULL, '', 'test', NULL),
(30, 90, 'BT', '', 'test', NULL, NULL, NULL, NULL, NULL, '0909333888', NULL, NULL, '64/8 đường 702 Hồng Bàng, phường 1, quận 11', NULL, NULL, NULL, NULL, NULL, 0, '2022-08-06 03:06:12', 90, '2022-08-06 03:06:34', 90, '0000-00-00 00:00:00', 0, NULL, '', 'test', NULL),
(31, 91, 'BT', '', 'abc', NULL, NULL, NULL, NULL, NULL, '0909333222', NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, 0, '2022-11-26 04:28:51', 91, '2022-11-26 04:29:53', 91, '0000-00-00 00:00:00', 0, NULL, 'sdfsdfsf', 'abc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_vendors`
--

CREATE TABLE `z0djb_virtuemart_vendors` (
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL,
  `vendor_name` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vendor_currency` int(11) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vendor_params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `metarobot` char(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `metaauthor` char(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Vendors manage their products in your store';

--
-- Dumping data for table `z0djb_virtuemart_vendors`
--

INSERT INTO `z0djb_virtuemart_vendors` (`virtuemart_vendor_id`, `vendor_name`, `vendor_currency`, `vendor_accepted_currencies`, `vendor_params`, `metarobot`, `metaauthor`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'Sản phẩm', 147, '144', 'vendor_min_pov=\"0\"|vendor_min_poq=1|vendor_freeshipment=0|vendor_address_format=\"\"|vendor_date_format=\"\"|vendor_letter_format=\"A4\"|vendor_letter_orientation=\"L\"|vendor_letter_margin_top=\"20\"|vendor_letter_margin_left=\"20\"|vendor_letter_margin_right=\"20\"|vendor_letter_margin_bottom=\"20\"|vendor_letter_margin_header=\"10\"|vendor_letter_margin_footer=\"10\"|vendor_letter_font=\"helvetica\"|vendor_letter_font_size=\"8\"|vendor_letter_header_font_size=\"7\"|vendor_letter_footer_font_size=\"6\"|vendor_letter_header=\"1\"|vendor_letter_header_line=\"1\"|vendor_letter_header_line_color=\"#000000\"|vendor_letter_header_image=\"1\"|vendor_letter_header_imagesize=\"60\"|vendor_letter_header_cell_height_ratio=\"1\"|vendor_letter_footer=\"1\"|vendor_letter_footer_line=\"1\"|vendor_letter_footer_line_color=\"#000000\"|vendor_letter_footer_cell_height_ratio=\"1\"|vendor_letter_add_tos=\"0\"|vendor_letter_add_tos_newpage=\"1\"|', '', '', '0000-00-00 00:00:00', 0, '2020-09-03 05:08:52', 42, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_vendors_vi_vn`
--

CREATE TABLE `z0djb_virtuemart_vendors_vi_vn` (
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `vendor_store_desc` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vendor_terms_of_service` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vendor_legal_info` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vendor_letter_css` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vendor_letter_header_html` text COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '<H1>{VM:VENDORNAME}</H1><P>{VM:VENDORADDRESS}</P>',
  `vendor_letter_footer_html` text COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '<P>{VM:VENDORLEGALINFO}<BR />PAGE {VM:PAGENUM}/{VM:PAGECOUNT}</P>',
  `vendor_store_name` char(180) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vendor_phone` char(26) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `vendor_url` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `metadesc` varchar(400) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `metakey` varchar(400) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customtitle` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` char(192) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_virtuemart_vendors_vi_vn`
--

INSERT INTO `z0djb_virtuemart_vendors_vi_vn` (`virtuemart_vendor_id`, `vendor_store_desc`, `vendor_terms_of_service`, `vendor_legal_info`, `vendor_letter_css`, `vendor_letter_header_html`, `vendor_letter_footer_html`, `vendor_store_name`, `vendor_phone`, `vendor_url`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1, '', '', '', '', '', '', 'Sản phẩm', '555-555-1212', 'http://localhost/', '', '', '', 'san-pham');

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_vendor_medias`
--

CREATE TABLE `z0djb_virtuemart_vendor_medias` (
  `id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_vmusers`
--

CREATE TABLE `z0djb_virtuemart_vmusers` (
  `virtuemart_user_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `customer_number` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `perms` char(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'shopper',
  `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) UNSIGNED DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Holds the unique user data';

--
-- Dumping data for table `z0djb_virtuemart_vmusers`
--

INSERT INTO `z0djb_virtuemart_vmusers` (`virtuemart_user_id`, `virtuemart_vendor_id`, `user_is_vendor`, `customer_number`, `perms`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `agreed`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(42, 1, 1, '21232f297a57a5a743894a0e4a801fc3', 'admin', 0, 0, 0, '2013-09-16 03:44:31', 42, '2020-09-03 05:08:52', 42, '0000-00-00 00:00:00', 0),
(43, 0, 0, '591495e93898eac31be227f5993b7a03', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2014-06-20 03:54:38', 43, '0000-00-00 00:00:00', 0),
(44, 0, 0, '098f6bcd4621d373cade4e832627b4f6', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2014-07-24 14:38:29', 44, '0000-00-00 00:00:00', 0),
(45, 0, 0, '098f6bcd4621d373cade4e832627b4f6', '0', 0, 0, 0, '2015-03-14 09:02:53', 42, '2015-03-14 09:02:53', 42, '0000-00-00 00:00:00', 0),
(46, 0, 0, 'bcbae3275cc8fa17c4a6463245978885', '0', 0, 0, 0, '0000-00-00 00:00:00', 0, '2015-03-14 09:13:17', 42, '0000-00-00 00:00:00', 0),
(49, 0, 0, '96ba2dcde83b3e316c3781a6a20c66b8', '0', 0, 0, 0, '2015-03-23 16:35:34', 42, '2015-03-23 16:35:34', 42, '0000-00-00 00:00:00', 0),
(50, 0, 0, '098f6bcd4621d373cade4e832627b4f6', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-01-14 04:03:05', 50, '0000-00-00 00:00:00', 0),
(51, 0, 0, 'e8e29803fe1d75890235ba8609a881f1', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-01-16 03:00:52', 51, '0000-00-00 00:00:00', 0),
(52, 0, 0, 'fb150fb53c50ee936182ec38b4d8a7a0', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-02-01 08:21:08', 52, '0000-00-00 00:00:00', 0),
(53, 0, 0, 'fb150fb53c50ee936182ec38b4d8a7a0', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-02-01 08:23:08', 53, '0000-00-00 00:00:00', 0),
(54, 0, 0, 'fb150fb53c50ee936182ec38b4d8a7a0', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-02-01 10:14:23', 54, '0000-00-00 00:00:00', 0),
(55, 0, 0, 'e94cfe572e3754a087f68d4100fbb563', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-02-02 08:02:35', 55, '0000-00-00 00:00:00', 0),
(56, 0, 0, 'fb150fb53c50ee936182ec38b4d8a7a0', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-02-02 08:22:03', 56, '0000-00-00 00:00:00', 0),
(57, 0, 0, 'e94cfe572e3754a087f68d4100fbb563', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-02-02 08:22:35', 57, '0000-00-00 00:00:00', 0),
(58, 0, 0, 'fb150fb53c50ee936182ec38b4d8a7a0', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2017-02-02 09:07:05', 58, '0000-00-00 00:00:00', 0),
(60, 0, 0, '900150983cd24fb0d6963f7d28e17f72', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2018-04-08 06:03:28', 60, '0000-00-00 00:00:00', 0),
(61, 0, 0, '8138fcfa42cb31f6b798192917a429c0', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2018-06-08 04:24:29', 61, '0000-00-00 00:00:00', 0),
(62, 0, 0, '098f6bcd4621d373cade4e832627b4f6', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2019-01-21 07:27:33', 62, '0000-00-00 00:00:00', 0),
(71, 0, 0, '098f6bcd4621d373cade4e832627b4f6', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2019-01-21 09:20:21', 71, '0000-00-00 00:00:00', 0),
(79, 0, 0, '098f6bcd4621d373cade4e832627b4f6', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2020-08-09 09:59:51', 79, '0000-00-00 00:00:00', 0),
(80, 0, 0, '098f6bcd4621d373cade4e832627b4f6', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2020-08-10 02:36:13', 80, '0000-00-00 00:00:00', 0),
(81, 0, 0, '098f6bcd4621d373cade4e832627b4f6', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2020-09-24 11:27:55', 81, '0000-00-00 00:00:00', 0),
(87, 0, 0, 'c02fde46cb52839ec62d512b441b0727', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2021-08-17 03:44:25', 87, '0000-00-00 00:00:00', 0),
(89, 0, 0, '098f6bcd4621d373cade4e832627b4f6', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2021-09-06 05:01:07', 89, '0000-00-00 00:00:00', 0),
(90, 0, 0, '098f6bcd4621d373cade4e832627b4f6', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2022-08-06 03:06:34', 90, '0000-00-00 00:00:00', 0),
(91, 0, 0, '900150983cd24fb0d6963f7d28e17f72', 'shopper', 0, 0, 0, '0000-00-00 00:00:00', 0, '2022-11-26 04:29:53', 91, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_vmuser_shoppergroups`
--

CREATE TABLE `z0djb_virtuemart_vmuser_shoppergroups` (
  `id` int(11) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='xref table for users to shopper group';

--
-- Dumping data for table `z0djb_virtuemart_vmuser_shoppergroups`
--

INSERT INTO `z0djb_virtuemart_vmuser_shoppergroups` (`id`, `virtuemart_user_id`, `virtuemart_shoppergroup_id`) VALUES
(1, 42, 2),
(2, 42, 3),
(5, 46, 3),
(4, 45, 3),
(7, 49, 3);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_waitingusers`
--

CREATE TABLE `z0djb_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(11) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `notify_email` char(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT 0,
  `notify_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ordering` int(2) NOT NULL DEFAULT 0,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='Stores notifications, users waiting f. products out of stock';

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_virtuemart_worldzones`
--

CREATE TABLE `z0djb_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` smallint(1) DEFAULT NULL,
  `zone_name` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `zone_tax_rate` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(2) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci COMMENT='The Zones managed by the Zone Shipment Module';

--
-- Dumping data for table `z0djb_virtuemart_worldzones`
--

INSERT INTO `z0djb_virtuemart_worldzones` (`virtuemart_worldzone_id`, `virtuemart_vendor_id`, `zone_name`, `zone_cost`, `zone_limit`, `zone_description`, `zone_tax_rate`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, NULL, 'Default', '6.00', '35.00', 'This is the default Shipment Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.', 2, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, NULL, 'Zone 1', '1000.00', '10000.00', 'This is a zone example', 2, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, NULL, 'Zone 2', '2.00', '22.00', 'This is the second zone. You can use this for notes about this zone', 2, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, NULL, 'Zone 3', '11.00', '64.00', 'Another useful thing might be details about this zone or special instructions.', 2, 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `z0djb_wf_profiles`
--

CREATE TABLE `z0djb_wf_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `users` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `types` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `components` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rows` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `plugins` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `z0djb_wf_profiles`
--

INSERT INTO `z0djb_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '8,6', '', 0, 'desktop,tablet,phone', 'justifyleft,justifycenter,justifyright,justifyfull,bold,italic,underline,spacer,formatselect,fontselect,spacer,fontsizeselect,forecolor,spacer,backcolor;table,strikethrough,textcase;source,removeformat,cleanup,redo,undo,spacer,link,unlink,imgmanager,lists', 'table,textcase,source,cleanup,link,imgmanager,lists,browser,contextmenu,inlinepopups,media', 1, 1, 42, '2024-12-06 04:59:32', '{\"editor\":{\"width\":\"\",\"height\":\"\",\"toolbar_theme\":\"default\",\"toolbar_align\":\"left\",\"toolbar_location\":\"top\",\"statusbar_location\":\"bottom\",\"path\":\"1\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"resizing_use_cookie\":\"1\",\"toggle\":\"1\",\"toggle_label\":\"[ Chuy\\u1ec3n \\u0111\\u1ed5i ]\",\"toggle_state\":\"1\",\"relative_urls\":\"1\",\"verify_html\":\"\",\"schema\":\"\",\"forced_root_block\":\"\",\"profile_content_css\":\"2\",\"profile_content_css_custom\":\"\",\"theme_advanced_styles\":\"\",\"theme_advanced_blockformats\":[\"p\",\"div\",\"h1\",\"h2\",\"h3\",\"h4\",\"h5\",\"h6\",\"span\"],\"theme_advanced_fonts_add\":\"\",\"theme_advanced_fonts_remove\":\"\",\"theme_advanced_font_sizes\":\"60%,80%,90%,100%,110%,120%,130%,140%,150%,160%,170%,180%,190%,200%,220%,240%,260%,280%,300%,320%,340%,360%,380%,400%\",\"custom_colors\":\"\",\"dir\":\"\",\"filesystem\":{\"name\":\"joomla\",\"joomla\":{\"allow_root\":\"0\",\"restrict_dir\":\"administrator,cache,components,includes,language,libraries,logs,media,modules,plugins,templates,xmlrpc\"}},\"max_size\":\"\",\"upload_conflict\":\"overwrite\",\"upload_runtimes\":[\"html5\",\"flash\",\"silverlight\",\"html4\"],\"browser_position\":\"bottom\",\"folder_tree\":\"1\",\"list_limit\":\"all\",\"validate_mimetype\":\"1\",\"websafe_mode\":\"utf-8\",\"websafe_allow_spaces\":\"0\",\"upload_add_random\":\"0\",\"invalid_elements\":\"\",\"invalid_attributes\":\"dynsrc,lowsrc\",\"invalid_attribute_values\":\"img[src=\'data:image\']\",\"extended_elements\":\"\",\"allow_javascript\":\"1\",\"allow_css\":\"0\",\"allow_php\":\"0\",\"cdata\":\"1\"},\"table\":{\"width\":\"\",\"height\":\"\",\"border\":\"0\",\"cols\":\"2\",\"rows\":\"2\",\"cellpadding\":\"0\",\"cellspacing\":\"0\",\"align\":\"\",\"classes\":\"\",\"pad_empty_cells\":\"1\",\"buttons\":[\"table_insert\",\"delete_table\",\"cell_props\",\"row_before\",\"row_after\",\"delete_row\",\"col_before\",\"col_after\",\"delete_col\",\"split_cells\",\"merge_cells\"]},\"source\":{\"highlight\":\"1\",\"numbers\":\"0\",\"wrap\":\"1\",\"format\":\"1\",\"tag_closing\":\"1\",\"selection_match\":\"1\",\"theme\":\"textmate\"},\"link\":{\"target\":\"\",\"id\":\"\",\"style\":\"\",\"classes\":\"\",\"dir\":\"\",\"hreflang\":\"\",\"lang\":\"\",\"charset\":\"\",\"type\":\"\",\"rel\":\"\",\"rev\":\"\",\"tabindex\":\"\",\"accesskey\":\"\",\"file_browser\":\"1\",\"tabs_advanced\":\"0\",\"attributes_anchor\":\"0\",\"attributes_target\":\"1\",\"links\":{\"joomlalinks\":{\"enable\":\"1\",\"content\":\"1\",\"article_alias\":\"1\",\"static\":\"1\",\"contacts\":\"1\",\"weblinks\":\"1\",\"weblinks_alias\":\"1\",\"menu\":\"1\"}},\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"1\"},\"window\":{\"enable\":\"1\"}},\"search\":{\"link\":{\"enable\":\"1\"}}},\"imgmanager\":{\"dir\":\"\",\"max_size\":\"65536\",\"extensions\":\"image=rar,zip,xlsx,xls,docx,doc,pdf,avi,mp3,mp4,jpeg,jpg,png,gif\",\"filesystem\":{\"name\":\"\"},\"alt\":\"\",\"margin_top\":\"\",\"margin_right\":\"\",\"margin_bottom\":\"\",\"margin_left\":\"\",\"border\":\"0\",\"border_width\":\"1\",\"border_style\":\"solid\",\"border_color\":\"#000000\",\"align\":\"\",\"always_include_dimensions\":\"1\",\"style\":\"\",\"classes\":\"\",\"title\":\"\",\"id\":\"\",\"direction\":\"\",\"usemap\":\"\",\"longdesc\":\"\",\"tabs_rollover\":\"0\",\"tabs_advanced\":\"0\",\"attributes_dimensions\":\"1\",\"attributes_align\":\"1\",\"attributes_margin\":\"0\",\"attributes_border\":\"0\",\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"0\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"0\",\"dragdrop_upload\":\"1\"},\"lists\":{\"number_styles\":[\"default\",\"lower-alpha\",\"lower-greek\",\"lower-roman\",\"upper-alpha\",\"upper-roman\"],\"bullet_styles\":[\"default\",\"circle\",\"disc\",\"square\"],\"buttons\":[\"numlist\",\"bullist\"]},\"browser\":{\"dir\":\"\",\"max_size\":\"65536\",\"extensions\":\"office=doc,docx,ppt,xls;image=gif,jpeg,jpg,png;acrobat=pdf;archive=zip,tar,gz,rar;flash=swf;quicktime=mov,mp4,qt;windowsmedia=wmv,asx,asf,avi;audio=wav,mp3,aiff;openoffice=odt,odg,odp,ods,odf\",\"filesystem\":{\"name\":\"\"},\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"0\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"0\"},\"media\":{\"strict\":\"1\",\"iframes\":\"1\",\"audio\":\"1\",\"video\":\"1\",\"object\":\"1\",\"embed\":\"1\",\"version_flash\":\"10,1,53,64\",\"version_windowsmedia\":\"10,00,00,3646\",\"version_quicktime\":\"7,3,0,0\",\"version_java\":\"1,5,0,0\",\"version_shockwave\":\"10,2,0,023\"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '1,6,7,2,3,4,5,8', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 0, 2, 0, '0000-00-00 00:00:00', '{\"editor\":{\"width\":\"\",\"height\":\"\",\"toolbar_theme\":\"default\",\"toolbar_align\":\"left\",\"toolbar_location\":\"top\",\"statusbar_location\":\"bottom\",\"path\":\"1\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"resizing_use_cookie\":\"1\",\"toggle\":\"1\",\"toggle_label\":\"[Toggle Editor]\",\"toggle_state\":\"1\",\"relative_urls\":\"1\",\"verify_html\":\"\",\"schema\":\"\",\"forced_root_block\":\"\",\"profile_content_css\":\"2\",\"profile_content_css_custom\":\"\",\"theme_advanced_styles\":\"\",\"theme_advanced_blockformats\":[\"p\",\"div\",\"h1\",\"h2\",\"h3\",\"h4\",\"h5\",\"h6\",\"address\",\"code\",\"pre\",\"samp\",\"span\",\"section\",\"article\",\"hgroup\",\"aside\",\"figure\",\"dt\",\"dd\"],\"theme_advanced_fonts_add\":\"\",\"theme_advanced_fonts_remove\":\"\",\"theme_advanced_font_sizes\":\"\",\"custom_colors\":\"\",\"dir\":\"\",\"filesystem\":{\"name\":\"joomla\",\"joomla\":{\"allow_root\":\"0\",\"restrict_dir\":\"administrator,cache,components,includes,language,libraries,logs,media,modules,plugins,templates,xmlrpc\"}},\"max_size\":\"\",\"upload_conflict\":\"overwrite\",\"upload_runtimes\":[\"html5\",\"flash\",\"silverlight\",\"html4\"],\"browser_position\":\"bottom\",\"folder_tree\":\"1\",\"list_limit\":\"all\",\"validate_mimetype\":\"1\",\"websafe_mode\":\"utf-8\",\"websafe_allow_spaces\":\"0\",\"upload_add_random\":\"0\",\"invalid_elements\":\"\",\"invalid_attributes\":\"dynsrc,lowsrc\",\"invalid_attribute_values\":\"\",\"extended_elements\":\"\",\"allow_javascript\":\"0\",\"allow_css\":\"0\",\"allow_php\":\"0\",\"cdata\":\"1\"},\"clipboard\":{\"paste_use_dialog\":\"0\",\"paste_dialog_width\":\"450\",\"paste_dialog_height\":\"400\",\"paste_force_cleanup\":\"0\",\"paste_strip_class_attributes\":\"0\",\"paste_remove_spans\":\"0\",\"paste_remove_styles\":\"0\",\"paste_remove_attributes\":\"\",\"paste_retain_style_properties\":\"\",\"paste_remove_empty_paragraphs\":\"1\",\"paste_remove_styles_if_webkit\":\"0\",\"paste_process_footnotes\":\"convert\",\"paste_html\":\"1\",\"paste_text\":\"1\",\"buttons\":[\"cut\",\"copy\",\"paste\"]},\"visualblocks\":{\"state\":\"1\"},\"xhtmlxtras\":{\"buttons\":[\"cite\",\"abbr\",\"acronym\",\"del\",\"ins\",\"attribs\"]},\"imgmanager\":{\"dir\":\"\",\"max_size\":\"\",\"extensions\":\"image=jpeg,jpg,png,gif\",\"filesystem\":{\"name\":\"\"},\"alt\":\"\",\"margin_top\":\"\",\"margin_right\":\"\",\"margin_bottom\":\"\",\"margin_left\":\"\",\"border\":\"0\",\"border_width\":\"1\",\"border_style\":\"solid\",\"border_color\":\"#000000\",\"align\":\"\",\"always_include_dimensions\":\"1\",\"style\":\"\",\"classes\":\"\",\"title\":\"\",\"id\":\"\",\"direction\":\"\",\"usemap\":\"\",\"longdesc\":\"\",\"tabs_rollover\":\"1\",\"tabs_advanced\":\"1\",\"attributes_dimensions\":\"1\",\"attributes_align\":\"1\",\"attributes_margin\":\"1\",\"attributes_border\":\"1\",\"upload\":\"1\",\"folder_new\":\"1\",\"folder_delete\":\"1\",\"folder_rename\":\"1\",\"folder_move\":\"1\",\"file_delete\":\"1\",\"file_rename\":\"1\",\"file_move\":\"1\",\"dragdrop_upload\":\"1\"},\"link\":{\"target\":\"\",\"id\":\"\",\"style\":\"\",\"classes\":\"\",\"dir\":\"\",\"hreflang\":\"\",\"lang\":\"\",\"charset\":\"\",\"type\":\"\",\"rel\":\"\",\"rev\":\"\",\"tabindex\":\"\",\"accesskey\":\"\",\"file_browser\":\"1\",\"tabs_advanced\":\"1\",\"attributes_anchor\":\"1\",\"attributes_target\":\"1\",\"links\":{\"joomlalinks\":{\"enable\":\"1\",\"content\":\"1\",\"article_alias\":\"1\",\"static\":\"1\",\"contacts\":\"1\",\"weblinks\":\"1\",\"weblinks_alias\":\"1\",\"menu\":\"1\"}},\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"1\"},\"window\":{\"enable\":\"1\"}},\"search\":{\"link\":{\"enable\":\"1\"}}},\"spellchecker\":{\"engine\":\"browser\",\"browser_state\":\"0\",\"googlespell_languages\":[\"English=en\"],\"languages\":\"English=en\",\"pspell_mode\":\"PSPELL_FAST\",\"pspell_spelling\":\"\",\"pspell_jargon\":\"\",\"pspell_encoding\":\"\",\"pspell_dictionary\":\"components\\/com_jce\\/editor\\/tiny_mce\\/plugins\\/spellchecker\\/dictionary.pws\",\"pspellshell_aspell\":\"\\/usr\\/bin\\/aspell\",\"pspellshell_tmp\":\"\\/tmp\"},\"article\":{\"buttons\":[\"readmore\",\"pagebreak\"]},\"lists\":{\"number_styles\":[\"default\",\"lower-alpha\",\"lower-greek\",\"lower-roman\",\"upper-alpha\",\"upper-roman\"],\"bullet_styles\":[\"default\",\"circle\",\"disc\",\"square\"],\"buttons\":[\"numlist\",\"bullist\"]}}'),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,7,8', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists', 0, 3, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toggle\":\"0\"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,7,8', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists', 0, 4, 0, '0000-00-00 00:00:00', '{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `z0djb_assets`
--
ALTER TABLE `z0djb_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `z0djb_associations`
--
ALTER TABLE `z0djb_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `z0djb_categories`
--
ALTER TABLE `z0djb_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(250)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `z0djb_contact_details`
--
ALTER TABLE `z0djb_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `z0djb_content`
--
ALTER TABLE `z0djb_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `z0djb_content_frontpage`
--
ALTER TABLE `z0djb_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `z0djb_content_rating`
--
ALTER TABLE `z0djb_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `z0djb_extensions`
--
ALTER TABLE `z0djb_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `z0djb_k2_attachments`
--
ALTER TABLE `z0djb_k2_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `z0djb_k2_categories`
--
ALTER TABLE `z0djb_k2_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`published`,`access`,`trash`),
  ADD KEY `parent` (`parent`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`),
  ADD KEY `access` (`access`),
  ADD KEY `trash` (`trash`),
  ADD KEY `language` (`language`),
  ADD KEY `alias` (`alias`(250));

--
-- Indexes for table `z0djb_k2_comments`
--
ALTER TABLE `z0djb_k2_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `published` (`published`),
  ADD KEY `latestComments` (`published`,`commentDate`);

--
-- Indexes for table `z0djb_k2_extra_fields`
--
ALTER TABLE `z0djb_k2_extra_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group` (`group`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `z0djb_k2_extra_fields_groups`
--
ALTER TABLE `z0djb_k2_extra_fields_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_k2_items`
--
ALTER TABLE `z0djb_k2_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  ADD KEY `catid` (`catid`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `featured` (`featured`),
  ADD KEY `featured_ordering` (`featured_ordering`),
  ADD KEY `hits` (`hits`),
  ADD KEY `created` (`created`),
  ADD KEY `language` (`language`),
  ADD KEY `alias` (`alias`(250));
ALTER TABLE `z0djb_k2_items` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `z0djb_k2_items` ADD FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`,`metatitle`);

--
-- Indexes for table `z0djb_k2_rating`
--
ALTER TABLE `z0djb_k2_rating`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `z0djb_k2_tags`
--
ALTER TABLE `z0djb_k2_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`);
ALTER TABLE `z0djb_k2_tags` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `z0djb_k2_tags_xref`
--
ALTER TABLE `z0djb_k2_tags_xref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagID` (`tagID`),
  ADD KEY `itemID` (`itemID`);

--
-- Indexes for table `z0djb_k2_users`
--
ALTER TABLE `z0djb_k2_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `group` (`group`);

--
-- Indexes for table `z0djb_k2_user_groups`
--
ALTER TABLE `z0djb_k2_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_languages`
--
ALTER TABLE `z0djb_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `z0djb_menu`
--
ALTER TABLE `z0djb_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`),
  ADD KEY `idx_path` (`path`(250)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `z0djb_menu_types`
--
ALTER TABLE `z0djb_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `z0djb_messages`
--
ALTER TABLE `z0djb_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `z0djb_messages_cfg`
--
ALTER TABLE `z0djb_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `z0djb_modules`
--
ALTER TABLE `z0djb_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `z0djb_modules_menu`
--
ALTER TABLE `z0djb_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `z0djb_mtcomment`
--
ALTER TABLE `z0djb_mtcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_mtcomment_config`
--
ALTER TABLE `z0djb_mtcomment_config`
  ADD PRIMARY KEY (`mtcomment_config_id`);

--
-- Indexes for table `z0djb_mtlike`
--
ALTER TABLE `z0djb_mtlike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_mt_setting_admin`
--
ALTER TABLE `z0djb_mt_setting_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_mt_visitcounter`
--
ALTER TABLE `z0djb_mt_visitcounter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_mt_visitcounter_total`
--
ALTER TABLE `z0djb_mt_visitcounter_total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_nivoslider`
--
ALTER TABLE `z0djb_nivoslider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`,`published`);

--
-- Indexes for table `z0djb_nivoslider_sliders`
--
ALTER TABLE `z0djb_nivoslider_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_overrider`
--
ALTER TABLE `z0djb_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_redirect_links`
--
ALTER TABLE `z0djb_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_link_old` (`old_url`) USING HASH,
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `z0djb_rsform_components`
--
ALTER TABLE `z0djb_rsform_components`
  ADD UNIQUE KEY `ComponentId` (`ComponentId`),
  ADD KEY `ComponentTypeId` (`ComponentTypeId`),
  ADD KEY `FormId` (`FormId`);

--
-- Indexes for table `z0djb_rsform_component_types`
--
ALTER TABLE `z0djb_rsform_component_types`
  ADD PRIMARY KEY (`ComponentTypeId`);

--
-- Indexes for table `z0djb_rsform_component_type_fields`
--
ALTER TABLE `z0djb_rsform_component_type_fields`
  ADD PRIMARY KEY (`ComponentTypeFieldId`),
  ADD KEY `ComponentTypeId` (`ComponentTypeId`);

--
-- Indexes for table `z0djb_rsform_conditions`
--
ALTER TABLE `z0djb_rsform_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `component_id` (`component_id`);

--
-- Indexes for table `z0djb_rsform_condition_details`
--
ALTER TABLE `z0djb_rsform_condition_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `condition_id` (`condition_id`),
  ADD KEY `component_id` (`component_id`);

--
-- Indexes for table `z0djb_rsform_config`
--
ALTER TABLE `z0djb_rsform_config`
  ADD PRIMARY KEY (`SettingName`);

--
-- Indexes for table `z0djb_rsform_emails`
--
ALTER TABLE `z0djb_rsform_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_rsform_forms`
--
ALTER TABLE `z0djb_rsform_forms`
  ADD PRIMARY KEY (`FormId`);

--
-- Indexes for table `z0djb_rsform_mappings`
--
ALTER TABLE `z0djb_rsform_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_rsform_posts`
--
ALTER TABLE `z0djb_rsform_posts`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `z0djb_rsform_properties`
--
ALTER TABLE `z0djb_rsform_properties`
  ADD UNIQUE KEY `PropertyId` (`PropertyId`),
  ADD KEY `ComponentId` (`ComponentId`);

--
-- Indexes for table `z0djb_rsform_submissions`
--
ALTER TABLE `z0djb_rsform_submissions`
  ADD PRIMARY KEY (`SubmissionId`),
  ADD KEY `FormId` (`FormId`);

--
-- Indexes for table `z0djb_rsform_submission_columns`
--
ALTER TABLE `z0djb_rsform_submission_columns`
  ADD PRIMARY KEY (`FormId`,`ColumnName`) USING BTREE;

--
-- Indexes for table `z0djb_rsform_submission_values`
--
ALTER TABLE `z0djb_rsform_submission_values`
  ADD PRIMARY KEY (`SubmissionValueId`),
  ADD KEY `FormId` (`FormId`),
  ADD KEY `SubmissionId` (`SubmissionId`);

--
-- Indexes for table `z0djb_rsform_translations`
--
ALTER TABLE `z0djb_rsform_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `z0djb_schemas`
--
ALTER TABLE `z0djb_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `z0djb_session`
--
ALTER TABLE `z0djb_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `whosonline` (`guest`,`usertype`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `z0djb_template_styles`
--
ALTER TABLE `z0djb_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `z0djb_updates`
--
ALTER TABLE `z0djb_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `z0djb_update_categories`
--
ALTER TABLE `z0djb_update_categories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `z0djb_update_sites`
--
ALTER TABLE `z0djb_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `z0djb_update_sites_extensions`
--
ALTER TABLE `z0djb_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `z0djb_usergroups`
--
ALTER TABLE `z0djb_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`);

--
-- Indexes for table `z0djb_users`
--
ALTER TABLE `z0djb_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertype` (`usertype`),
  ADD KEY `idx_name` (`name`(250)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `z0djb_user_notes`
--
ALTER TABLE `z0djb_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `z0djb_user_profiles`
--
ALTER TABLE `z0djb_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `z0djb_user_usergroup_map`
--
ALTER TABLE `z0djb_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `z0djb_viewlevels`
--
ALTER TABLE `z0djb_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `z0djb_virtuemart_adminmenuentries`
--
ALTER TABLE `z0djb_virtuemart_adminmenuentries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `z0djb_virtuemart_calcs`
--
ALTER TABLE `z0djb_virtuemart_calcs`
  ADD PRIMARY KEY (`virtuemart_calc_id`),
  ADD KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_calc_categories`
--
ALTER TABLE `z0djb_virtuemart_calc_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`);

--
-- Indexes for table `z0djb_virtuemart_calc_countries`
--
ALTER TABLE `z0djb_virtuemart_calc_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`);

--
-- Indexes for table `z0djb_virtuemart_calc_manufacturers`
--
ALTER TABLE `z0djb_virtuemart_calc_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`);

--
-- Indexes for table `z0djb_virtuemart_calc_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_calc_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `z0djb_virtuemart_calc_states`
--
ALTER TABLE `z0djb_virtuemart_calc_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`);

--
-- Indexes for table `z0djb_virtuemart_categories`
--
ALTER TABLE `z0djb_virtuemart_categories`
  ADD PRIMARY KEY (`virtuemart_category_id`),
  ADD KEY `idx_category_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_categories_vi_vn`
--
ALTER TABLE `z0djb_virtuemart_categories_vi_vn`
  ADD PRIMARY KEY (`virtuemart_category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `z0djb_virtuemart_category_categories`
--
ALTER TABLE `z0djb_virtuemart_category_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_category_parent_id` (`category_parent_id`,`category_child_id`),
  ADD KEY `category_child_id` (`category_child_id`);

--
-- Indexes for table `z0djb_virtuemart_category_medias`
--
ALTER TABLE `z0djb_virtuemart_category_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`);

--
-- Indexes for table `z0djb_virtuemart_configs`
--
ALTER TABLE `z0djb_virtuemart_configs`
  ADD PRIMARY KEY (`virtuemart_config_id`);

--
-- Indexes for table `z0djb_virtuemart_countries`
--
ALTER TABLE `z0djb_virtuemart_countries`
  ADD PRIMARY KEY (`virtuemart_country_id`),
  ADD KEY `idx_country_3_code` (`country_3_code`),
  ADD KEY `idx_country_2_code` (`country_2_code`);

--
-- Indexes for table `z0djb_virtuemart_coupons`
--
ALTER TABLE `z0djb_virtuemart_coupons`
  ADD PRIMARY KEY (`virtuemart_coupon_id`),
  ADD KEY `idx_coupon_code` (`coupon_code`);

--
-- Indexes for table `z0djb_virtuemart_currencies`
--
ALTER TABLE `z0djb_virtuemart_currencies`
  ADD PRIMARY KEY (`virtuemart_currency_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `idx_currency_code_3` (`currency_code_3`),
  ADD KEY `idx_currency_numeric_code` (`currency_numeric_code`);

--
-- Indexes for table `z0djb_virtuemart_customs`
--
ALTER TABLE `z0djb_virtuemart_customs`
  ADD PRIMARY KEY (`virtuemart_custom_id`),
  ADD KEY `idx_custom_plugin_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `idx_custom_plugin_element` (`custom_element`),
  ADD KEY `idx_custom_plugin_ordering` (`ordering`),
  ADD KEY `idx_custom_parent_id` (`custom_parent_id`);

--
-- Indexes for table `z0djb_virtuemart_invoices`
--
ALTER TABLE `z0djb_virtuemart_invoices`
  ADD PRIMARY KEY (`virtuemart_invoice_id`),
  ADD UNIQUE KEY `idx_invoice_number` (`invoice_number`,`virtuemart_vendor_id`),
  ADD KEY `idx_virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `idx_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_manufacturercategories`
--
ALTER TABLE `z0djb_virtuemart_manufacturercategories`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`);

--
-- Indexes for table `z0djb_virtuemart_manufacturercategories_vi_vn`
--
ALTER TABLE `z0djb_virtuemart_manufacturercategories_vi_vn`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `z0djb_virtuemart_manufacturers`
--
ALTER TABLE `z0djb_virtuemart_manufacturers`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`);

--
-- Indexes for table `z0djb_virtuemart_manufacturers_vi_vn`
--
ALTER TABLE `z0djb_virtuemart_manufacturers_vi_vn`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `z0djb_virtuemart_manufacturer_medias`
--
ALTER TABLE `z0djb_virtuemart_manufacturer_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`);

--
-- Indexes for table `z0djb_virtuemart_medias`
--
ALTER TABLE `z0djb_virtuemart_medias`
  ADD PRIMARY KEY (`virtuemart_media_id`),
  ADD KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `z0djb_virtuemart_migration_oldtonew_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_virtuemart_modules`
--
ALTER TABLE `z0djb_virtuemart_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `idx_module_name` (`module_name`(250)),
  ADD KEY `idx_module_ordering` (`ordering`);

--
-- Indexes for table `z0djb_virtuemart_orders`
--
ALTER TABLE `z0djb_virtuemart_orders`
  ADD PRIMARY KEY (`virtuemart_order_id`),
  ADD KEY `idx_orders_virtuemart_user_id` (`virtuemart_user_id`),
  ADD KEY `idx_orders_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `idx_orders_order_number` (`order_number`),
  ADD KEY `idx_orders_virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`),
  ADD KEY `idx_orders_virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`);

--
-- Indexes for table `z0djb_virtuemart_orderstates`
--
ALTER TABLE `z0djb_virtuemart_orderstates`
  ADD PRIMARY KEY (`virtuemart_orderstate_id`),
  ADD KEY `idx_order_status_ordering` (`ordering`),
  ADD KEY `idx_order_status_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_order_calc_rules`
--
ALTER TABLE `z0djb_virtuemart_order_calc_rules`
  ADD PRIMARY KEY (`virtuemart_order_calc_rule_id`);

--
-- Indexes for table `z0djb_virtuemart_order_histories`
--
ALTER TABLE `z0djb_virtuemart_order_histories`
  ADD PRIMARY KEY (`virtuemart_order_history_id`);

--
-- Indexes for table `z0djb_virtuemart_order_items`
--
ALTER TABLE `z0djb_virtuemart_order_items`
  ADD PRIMARY KEY (`virtuemart_order_item_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `idx_order_item_virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `idx_order_item_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_order_userinfos`
--
ALTER TABLE `z0djb_virtuemart_order_userinfos`
  ADD PRIMARY KEY (`virtuemart_order_userinfo_id`),
  ADD KEY `i_virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `i_virtuemart_user_id` (`virtuemart_user_id`);

--
-- Indexes for table `z0djb_virtuemart_paymentmethods`
--
ALTER TABLE `z0djb_virtuemart_paymentmethods`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`),
  ADD KEY `idx_payment_jplugin_id` (`payment_jplugin_id`),
  ADD KEY `idx_payment_method_ordering` (`ordering`),
  ADD KEY `idx_payment_element` (`payment_element`,`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_paymentmethods_vi_vn`
--
ALTER TABLE `z0djb_virtuemart_paymentmethods_vi_vn`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `z0djb_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_paymentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `z0djb_virtuemart_payment_plg_baokim`
--
ALTER TABLE `z0djb_virtuemart_payment_plg_baokim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_virtuemart_payment_plg_nganluong`
--
ALTER TABLE `z0djb_virtuemart_payment_plg_nganluong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_virtuemart_payment_plg_paypal`
--
ALTER TABLE `z0djb_virtuemart_payment_plg_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_virtuemart_payment_plg_standard`
--
ALTER TABLE `z0djb_virtuemart_payment_plg_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_virtuemart_permgroups`
--
ALTER TABLE `z0djb_virtuemart_permgroups`
  ADD PRIMARY KEY (`virtuemart_permgroup_id`),
  ADD KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_products`
--
ALTER TABLE `z0djb_virtuemart_products`
  ADD PRIMARY KEY (`virtuemart_product_id`),
  ADD KEY `idx_product_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `idx_product_product_parent_id` (`product_parent_id`);

--
-- Indexes for table `z0djb_virtuemart_products_vi_vn`
--
ALTER TABLE `z0djb_virtuemart_products_vi_vn`
  ADD PRIMARY KEY (`virtuemart_product_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `z0djb_virtuemart_product_categories`
--
ALTER TABLE `z0djb_virtuemart_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`);

--
-- Indexes for table `z0djb_virtuemart_product_customfields`
--
ALTER TABLE `z0djb_virtuemart_product_customfields`
  ADD PRIMARY KEY (`virtuemart_customfield_id`),
  ADD KEY `idx_virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `idx_virtuemart_custom_id` (`virtuemart_custom_id`),
  ADD KEY `idx_custom_value` (`custom_value`(250));

--
-- Indexes for table `z0djb_virtuemart_product_manufacturers`
--
ALTER TABLE `z0djb_virtuemart_product_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`);

--
-- Indexes for table `z0djb_virtuemart_product_medias`
--
ALTER TABLE `z0djb_virtuemart_product_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`);

--
-- Indexes for table `z0djb_virtuemart_product_prices`
--
ALTER TABLE `z0djb_virtuemart_product_prices`
  ADD PRIMARY KEY (`virtuemart_product_price_id`),
  ADD KEY `idx_product_price_product_id` (`virtuemart_product_id`),
  ADD KEY `idx_product_price_virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`);

--
-- Indexes for table `z0djb_virtuemart_product_relations`
--
ALTER TABLE `z0djb_virtuemart_product_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`related_products`);

--
-- Indexes for table `z0djb_virtuemart_product_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_product_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `z0djb_virtuemart_ratings`
--
ALTER TABLE `z0djb_virtuemart_ratings`
  ADD PRIMARY KEY (`virtuemart_rating_id`),
  ADD UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`);

--
-- Indexes for table `z0djb_virtuemart_rating_reviews`
--
ALTER TABLE `z0djb_virtuemart_rating_reviews`
  ADD PRIMARY KEY (`virtuemart_rating_review_id`),
  ADD UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`created_by`);

--
-- Indexes for table `z0djb_virtuemart_rating_votes`
--
ALTER TABLE `z0djb_virtuemart_rating_votes`
  ADD PRIMARY KEY (`virtuemart_rating_vote_id`),
  ADD UNIQUE KEY `i_virtuemart_product_id` (`virtuemart_product_id`,`created_by`);

--
-- Indexes for table `z0djb_virtuemart_shipmentmethods`
--
ALTER TABLE `z0djb_virtuemart_shipmentmethods`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  ADD KEY `idx_shipment_jplugin_id` (`shipment_jplugin_id`),
  ADD KEY `idx_shipment_method_ordering` (`ordering`),
  ADD KEY `idx_shipment_element` (`shipment_element`,`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_shipmentmethods_vi_vn`
--
ALTER TABLE `z0djb_virtuemart_shipmentmethods_vi_vn`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `z0djb_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_shipmentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `z0djb_virtuemart_shipment_plg_weight_countries`
--
ALTER TABLE `z0djb_virtuemart_shipment_plg_weight_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z0djb_virtuemart_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_shoppergroups`
  ADD PRIMARY KEY (`virtuemart_shoppergroup_id`),
  ADD KEY `idx_shopper_group_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `idx_shopper_group_name` (`shopper_group_name`);

--
-- Indexes for table `z0djb_virtuemart_states`
--
ALTER TABLE `z0djb_virtuemart_states`
  ADD PRIMARY KEY (`virtuemart_state_id`),
  ADD UNIQUE KEY `idx_state_3_code` (`virtuemart_country_id`,`state_3_code`),
  ADD UNIQUE KEY `idx_state_2_code` (`virtuemart_country_id`,`state_2_code`),
  ADD KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `i_virtuemart_country_id` (`virtuemart_country_id`);

--
-- Indexes for table `z0djb_virtuemart_userfields`
--
ALTER TABLE `z0djb_virtuemart_userfields`
  ADD PRIMARY KEY (`virtuemart_userfield_id`),
  ADD KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_userfield_values`
--
ALTER TABLE `z0djb_virtuemart_userfield_values`
  ADD PRIMARY KEY (`virtuemart_userfield_value_id`);

--
-- Indexes for table `z0djb_virtuemart_userinfos`
--
ALTER TABLE `z0djb_virtuemart_userinfos`
  ADD PRIMARY KEY (`virtuemart_userinfo_id`),
  ADD KEY `idx_userinfo_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`);

--
-- Indexes for table `z0djb_virtuemart_vendors`
--
ALTER TABLE `z0djb_virtuemart_vendors`
  ADD PRIMARY KEY (`virtuemart_vendor_id`),
  ADD KEY `idx_vendor_name` (`vendor_name`);

--
-- Indexes for table `z0djb_virtuemart_vendors_vi_vn`
--
ALTER TABLE `z0djb_virtuemart_vendors_vi_vn`
  ADD PRIMARY KEY (`virtuemart_vendor_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `z0djb_virtuemart_vendor_medias`
--
ALTER TABLE `z0djb_virtuemart_vendor_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`);

--
-- Indexes for table `z0djb_virtuemart_vmusers`
--
ALTER TABLE `z0djb_virtuemart_vmusers`
  ADD PRIMARY KEY (`virtuemart_user_id`),
  ADD UNIQUE KEY `i_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`),
  ADD KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_vmuser_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `i_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `z0djb_virtuemart_waitingusers`
--
ALTER TABLE `z0djb_virtuemart_waitingusers`
  ADD PRIMARY KEY (`virtuemart_waitinguser_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `notify_email` (`notify_email`);

--
-- Indexes for table `z0djb_virtuemart_worldzones`
--
ALTER TABLE `z0djb_virtuemart_worldzones`
  ADD PRIMARY KEY (`virtuemart_worldzone_id`),
  ADD KEY `i_virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `z0djb_wf_profiles`
--
ALTER TABLE `z0djb_wf_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `z0djb_assets`
--
ALTER TABLE `z0djb_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `z0djb_categories`
--
ALTER TABLE `z0djb_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `z0djb_contact_details`
--
ALTER TABLE `z0djb_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `z0djb_content`
--
ALTER TABLE `z0djb_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `z0djb_extensions`
--
ALTER TABLE `z0djb_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10282;

--
-- AUTO_INCREMENT for table `z0djb_k2_attachments`
--
ALTER TABLE `z0djb_k2_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `z0djb_k2_categories`
--
ALTER TABLE `z0djb_k2_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `z0djb_k2_comments`
--
ALTER TABLE `z0djb_k2_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_k2_extra_fields`
--
ALTER TABLE `z0djb_k2_extra_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `z0djb_k2_extra_fields_groups`
--
ALTER TABLE `z0djb_k2_extra_fields_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `z0djb_k2_items`
--
ALTER TABLE `z0djb_k2_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `z0djb_k2_tags`
--
ALTER TABLE `z0djb_k2_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `z0djb_k2_tags_xref`
--
ALTER TABLE `z0djb_k2_tags_xref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `z0djb_k2_users`
--
ALTER TABLE `z0djb_k2_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `z0djb_k2_user_groups`
--
ALTER TABLE `z0djb_k2_user_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `z0djb_languages`
--
ALTER TABLE `z0djb_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `z0djb_menu`
--
ALTER TABLE `z0djb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1176;

--
-- AUTO_INCREMENT for table `z0djb_menu_types`
--
ALTER TABLE `z0djb_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `z0djb_messages`
--
ALTER TABLE `z0djb_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `z0djb_modules`
--
ALTER TABLE `z0djb_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `z0djb_mtcomment`
--
ALTER TABLE `z0djb_mtcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `z0djb_mtcomment_config`
--
ALTER TABLE `z0djb_mtcomment_config`
  MODIFY `mtcomment_config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_mtlike`
--
ALTER TABLE `z0djb_mtlike`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `z0djb_mt_setting_admin`
--
ALTER TABLE `z0djb_mt_setting_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_mt_visitcounter`
--
ALTER TABLE `z0djb_mt_visitcounter`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `z0djb_mt_visitcounter_total`
--
ALTER TABLE `z0djb_mt_visitcounter_total`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `z0djb_nivoslider`
--
ALTER TABLE `z0djb_nivoslider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `z0djb_nivoslider_sliders`
--
ALTER TABLE `z0djb_nivoslider_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `z0djb_overrider`
--
ALTER TABLE `z0djb_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `z0djb_redirect_links`
--
ALTER TABLE `z0djb_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_rsform_components`
--
ALTER TABLE `z0djb_rsform_components`
  MODIFY `ComponentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `z0djb_rsform_component_types`
--
ALTER TABLE `z0djb_rsform_component_types`
  MODIFY `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `z0djb_rsform_component_type_fields`
--
ALTER TABLE `z0djb_rsform_component_type_fields`
  MODIFY `ComponentTypeFieldId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `z0djb_rsform_conditions`
--
ALTER TABLE `z0djb_rsform_conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_rsform_condition_details`
--
ALTER TABLE `z0djb_rsform_condition_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_rsform_emails`
--
ALTER TABLE `z0djb_rsform_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_rsform_forms`
--
ALTER TABLE `z0djb_rsform_forms`
  MODIFY `FormId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `z0djb_rsform_mappings`
--
ALTER TABLE `z0djb_rsform_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_rsform_properties`
--
ALTER TABLE `z0djb_rsform_properties`
  MODIFY `PropertyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1076;

--
-- AUTO_INCREMENT for table `z0djb_rsform_submissions`
--
ALTER TABLE `z0djb_rsform_submissions`
  MODIFY `SubmissionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `z0djb_rsform_submission_values`
--
ALTER TABLE `z0djb_rsform_submission_values`
  MODIFY `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `z0djb_rsform_translations`
--
ALTER TABLE `z0djb_rsform_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_template_styles`
--
ALTER TABLE `z0djb_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `z0djb_updates`
--
ALTER TABLE `z0djb_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `z0djb_update_categories`
--
ALTER TABLE `z0djb_update_categories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_update_sites`
--
ALTER TABLE `z0djb_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `z0djb_usergroups`
--
ALTER TABLE `z0djb_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `z0djb_users`
--
ALTER TABLE `z0djb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `z0djb_user_notes`
--
ALTER TABLE `z0djb_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_viewlevels`
--
ALTER TABLE `z0djb_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_adminmenuentries`
--
ALTER TABLE `z0djb_virtuemart_adminmenuentries`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_calcs`
--
ALTER TABLE `z0djb_virtuemart_calcs`
  MODIFY `virtuemart_calc_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_calc_categories`
--
ALTER TABLE `z0djb_virtuemart_calc_categories`
  MODIFY `id` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_calc_countries`
--
ALTER TABLE `z0djb_virtuemart_calc_countries`
  MODIFY `id` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_calc_manufacturers`
--
ALTER TABLE `z0djb_virtuemart_calc_manufacturers`
  MODIFY `id` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_calc_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_calc_shoppergroups`
  MODIFY `id` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_calc_states`
--
ALTER TABLE `z0djb_virtuemart_calc_states`
  MODIFY `id` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_categories`
--
ALTER TABLE `z0djb_virtuemart_categories`
  MODIFY `virtuemart_category_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1387;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_category_categories`
--
ALTER TABLE `z0djb_virtuemart_category_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1382;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_category_medias`
--
ALTER TABLE `z0djb_virtuemart_category_medias`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_configs`
--
ALTER TABLE `z0djb_virtuemart_configs`
  MODIFY `virtuemart_config_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_countries`
--
ALTER TABLE `z0djb_virtuemart_countries`
  MODIFY `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_coupons`
--
ALTER TABLE `z0djb_virtuemart_coupons`
  MODIFY `virtuemart_coupon_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_currencies`
--
ALTER TABLE `z0djb_virtuemart_currencies`
  MODIFY `virtuemart_currency_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_customs`
--
ALTER TABLE `z0djb_virtuemart_customs`
  MODIFY `virtuemart_custom_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_invoices`
--
ALTER TABLE `z0djb_virtuemart_invoices`
  MODIFY `virtuemart_invoice_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_manufacturercategories`
--
ALTER TABLE `z0djb_virtuemart_manufacturercategories`
  MODIFY `virtuemart_manufacturercategories_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_manufacturers`
--
ALTER TABLE `z0djb_virtuemart_manufacturers`
  MODIFY `virtuemart_manufacturer_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_manufacturer_medias`
--
ALTER TABLE `z0djb_virtuemart_manufacturer_medias`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_medias`
--
ALTER TABLE `z0djb_virtuemart_medias`
  MODIFY `virtuemart_media_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `z0djb_virtuemart_migration_oldtonew_ids`
  MODIFY `id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_modules`
--
ALTER TABLE `z0djb_virtuemart_modules`
  MODIFY `module_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_orders`
--
ALTER TABLE `z0djb_virtuemart_orders`
  MODIFY `virtuemart_order_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_orderstates`
--
ALTER TABLE `z0djb_virtuemart_orderstates`
  MODIFY `virtuemart_orderstate_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_order_calc_rules`
--
ALTER TABLE `z0djb_virtuemart_order_calc_rules`
  MODIFY `virtuemart_order_calc_rule_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_order_histories`
--
ALTER TABLE `z0djb_virtuemart_order_histories`
  MODIFY `virtuemart_order_history_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_order_items`
--
ALTER TABLE `z0djb_virtuemart_order_items`
  MODIFY `virtuemart_order_item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_order_userinfos`
--
ALTER TABLE `z0djb_virtuemart_order_userinfos`
  MODIFY `virtuemart_order_userinfo_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_paymentmethods`
--
ALTER TABLE `z0djb_virtuemart_paymentmethods`
  MODIFY `virtuemart_paymentmethod_id` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_paymentmethod_shoppergroups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_payment_plg_baokim`
--
ALTER TABLE `z0djb_virtuemart_payment_plg_baokim`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_payment_plg_nganluong`
--
ALTER TABLE `z0djb_virtuemart_payment_plg_nganluong`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_payment_plg_paypal`
--
ALTER TABLE `z0djb_virtuemart_payment_plg_paypal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_payment_plg_standard`
--
ALTER TABLE `z0djb_virtuemart_payment_plg_standard`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_permgroups`
--
ALTER TABLE `z0djb_virtuemart_permgroups`
  MODIFY `virtuemart_permgroup_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_products`
--
ALTER TABLE `z0djb_virtuemart_products`
  MODIFY `virtuemart_product_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1528;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_product_categories`
--
ALTER TABLE `z0djb_virtuemart_product_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5281;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_product_customfields`
--
ALTER TABLE `z0djb_virtuemart_product_customfields`
  MODIFY `virtuemart_customfield_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'field id', AUTO_INCREMENT=1526;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_product_manufacturers`
--
ALTER TABLE `z0djb_virtuemart_product_manufacturers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_product_medias`
--
ALTER TABLE `z0djb_virtuemart_product_medias`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1456;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_product_prices`
--
ALTER TABLE `z0djb_virtuemart_product_prices`
  MODIFY `virtuemart_product_price_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=870;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_product_relations`
--
ALTER TABLE `z0djb_virtuemart_product_relations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_product_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_product_shoppergroups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_ratings`
--
ALTER TABLE `z0djb_virtuemart_ratings`
  MODIFY `virtuemart_rating_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_rating_reviews`
--
ALTER TABLE `z0djb_virtuemart_rating_reviews`
  MODIFY `virtuemart_rating_review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_rating_votes`
--
ALTER TABLE `z0djb_virtuemart_rating_votes`
  MODIFY `virtuemart_rating_vote_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_shipmentmethods`
--
ALTER TABLE `z0djb_virtuemart_shipmentmethods`
  MODIFY `virtuemart_shipmentmethod_id` mediumint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_shipmentmethod_shoppergroups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_shipment_plg_weight_countries`
--
ALTER TABLE `z0djb_virtuemart_shipment_plg_weight_countries`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_shoppergroups`
  MODIFY `virtuemart_shoppergroup_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_states`
--
ALTER TABLE `z0djb_virtuemart_states`
  MODIFY `virtuemart_state_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=730;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_userfields`
--
ALTER TABLE `z0djb_virtuemart_userfields`
  MODIFY `virtuemart_userfield_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_userfield_values`
--
ALTER TABLE `z0djb_virtuemart_userfield_values`
  MODIFY `virtuemart_userfield_value_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_userinfos`
--
ALTER TABLE `z0djb_virtuemart_userinfos`
  MODIFY `virtuemart_userinfo_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_vendors`
--
ALTER TABLE `z0djb_virtuemart_vendors`
  MODIFY `virtuemart_vendor_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_vendor_medias`
--
ALTER TABLE `z0djb_virtuemart_vendor_medias`
  MODIFY `id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_vmusers`
--
ALTER TABLE `z0djb_virtuemart_vmusers`
  MODIFY `virtuemart_user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `z0djb_virtuemart_vmuser_shoppergroups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_waitingusers`
--
ALTER TABLE `z0djb_virtuemart_waitingusers`
  MODIFY `virtuemart_waitinguser_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z0djb_virtuemart_worldzones`
--
ALTER TABLE `z0djb_virtuemart_worldzones`
  MODIFY `virtuemart_worldzone_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `z0djb_wf_profiles`
--
ALTER TABLE `z0djb_wf_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
