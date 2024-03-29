/*
 Navicat MySQL Data Transfer

 Source Server         : Creativitea Master
 Source Server Version : 50169
 Source Host           : 109.239.85.74
 Source Database       : castlepartnership

 Target Server Version : 50169
 File Encoding         : utf-8

 Date: 09/27/2013 10:37:43 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `navigation_types`
-- ----------------------------
DROP TABLE IF EXISTS `navigation_types`;
CREATE TABLE `navigation_types` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `post_id` mediumint(9) DEFAULT NULL,
  `navigation_type` enum('super','head','side','page','foot') DEFAULT 'page',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `wp_commentmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_comments`
-- ----------------------------
DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_contact_form_7`
-- ----------------------------
DROP TABLE IF EXISTS `wp_contact_form_7`;
CREATE TABLE `wp_contact_form_7` (
  `cf7_unit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `form` text NOT NULL,
  `mail` text NOT NULL,
  `mail_2` text NOT NULL,
  `messages` text NOT NULL,
  `additional_settings` text NOT NULL,
  PRIMARY KEY (`cf7_unit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_cms_nav_cache`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_cms_nav_cache`;
CREATE TABLE `wp_icl_cms_nav_cache` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cache_key` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `data` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_content_status`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_content_status`;
CREATE TABLE `wp_icl_content_status` (
  `rid` bigint(20) NOT NULL,
  `nid` bigint(20) NOT NULL,
  `timestamp` datetime NOT NULL,
  `md5` varchar(32) NOT NULL,
  PRIMARY KEY (`rid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_core_status`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_core_status`;
CREATE TABLE `wp_icl_core_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NOT NULL,
  `module` varchar(16) NOT NULL,
  `origin` varchar(64) NOT NULL,
  `target` varchar(64) NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_flags`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_flags`;
CREATE TABLE `wp_icl_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_code` varchar(10) NOT NULL,
  `flag` varchar(32) NOT NULL,
  `from_template` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lang_code` (`lang_code`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_languages`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_languages`;
CREATE TABLE `wp_icl_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(7) NOT NULL,
  `english_name` varchar(128) NOT NULL,
  `major` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL,
  `default_locale` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `english_name` (`english_name`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_languages_translations`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_languages_translations`;
CREATE TABLE `wp_icl_languages_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(7) NOT NULL,
  `display_language_code` varchar(7) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `language_code` (`language_code`,`display_language_code`)
) ENGINE=MyISAM AUTO_INCREMENT=3970 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_locale_map`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_locale_map`;
CREATE TABLE `wp_icl_locale_map` (
  `code` varchar(8) NOT NULL,
  `locale` varchar(8) NOT NULL,
  UNIQUE KEY `code` (`code`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_message_status`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_message_status`;
CREATE TABLE `wp_icl_message_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) unsigned NOT NULL,
  `object_id` bigint(20) unsigned NOT NULL,
  `from_language` varchar(10) NOT NULL,
  `to_language` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(32) NOT NULL,
  `object_type` varchar(64) NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rid` (`rid`),
  KEY `object_id` (`object_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_node`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_node`;
CREATE TABLE `wp_icl_node` (
  `nid` bigint(20) NOT NULL,
  `md5` varchar(32) NOT NULL,
  `links_fixed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_plugins_texts`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_plugins_texts`;
CREATE TABLE `wp_icl_plugins_texts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(128) NOT NULL,
  `attribute_type` varchar(64) NOT NULL,
  `attribute_name` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `translate` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin_name` (`plugin_name`,`attribute_type`,`attribute_name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_reminders`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_reminders`;
CREATE TABLE `wp_icl_reminders` (
  `id` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `url` text NOT NULL,
  `can_delete` tinyint(4) NOT NULL,
  `show` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_string_positions`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_string_positions`;
CREATE TABLE `wp_icl_string_positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) NOT NULL,
  `kind` tinyint(4) DEFAULT NULL,
  `position_in_page` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string_id` (`string_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_string_status`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_string_status`;
CREATE TABLE `wp_icl_string_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rid` bigint(20) NOT NULL,
  `string_translation_id` bigint(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `md5` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string_translation_id` (`string_translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_string_translations`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_string_translations`;
CREATE TABLE `wp_icl_string_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `string_id` bigint(20) unsigned NOT NULL,
  `language` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `string_language` (`string_id`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_strings`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_strings`;
CREATE TABLE `wp_icl_strings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `context` varchar(160) NOT NULL,
  `name` varchar(160) NOT NULL,
  `value` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `context_name` (`context`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_icl_translations`
-- ----------------------------
DROP TABLE IF EXISTS `wp_icl_translations`;
CREATE TABLE `wp_icl_translations` (
  `translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `element_type` varchar(32) NOT NULL DEFAULT 'post',
  `element_id` bigint(20) NOT NULL,
  `trid` bigint(20) NOT NULL,
  `language_code` varchar(7) NOT NULL,
  `source_language_code` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`translation_id`),
  UNIQUE KEY `el_type_id` (`element_type`,`element_id`),
  UNIQUE KEY `trid_lang` (`trid`,`language_code`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_links`
-- ----------------------------
DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_options`
-- ----------------------------
DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=25791 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_postmeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_posts`
-- ----------------------------
DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=383 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_term_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_terms`
-- ----------------------------
DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_usermeta`
-- ----------------------------
DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `wp_users`
-- ----------------------------
DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
