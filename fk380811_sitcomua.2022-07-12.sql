
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_api_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`api_ip_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_api_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cart` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `oct_image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `page_group_links` text NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_search_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_d_validator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_d_validator` (
  `validator_id` int(11) NOT NULL AUTO_INCREMENT,
  `codename` varchar(191) NOT NULL,
  `date_show` datetime NOT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`validator_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_extension_install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_install_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_extension_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`extension_path_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1228 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_googleshopping_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`google_product_category`,`store_id`),
  KEY `category_id_store_id` (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_googleshopping_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_advertise_google_id`),
  UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_googleshopping_product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_googleshopping_product_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`advertise_google_target_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_googleshopping_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) unsigned NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`advertise_google_target_id`),
  KEY `store_id` (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_banner_plus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_banner_plus` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_banner_plus_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_banner_plus_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `background_color` varchar(255) NOT NULL,
  `title_color` varchar(255) NOT NULL,
  `text_color` varchar(255) NOT NULL,
  `button_color` varchar(255) NOT NULL,
  `button_background` varchar(255) NOT NULL,
  `button_background_hover` varchar(255) NOT NULL,
  `button_text_hover` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_banner_plus_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_banner_plus_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `button` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogarticle` (
  `blogarticle_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_available` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`blogarticle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogarticle_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogarticle_description` (
  `blogarticle_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shot_description` text NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blogarticle_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogarticle_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogarticle_image` (
  `article_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `blogarticle_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_image_id`),
  KEY `blogarticle_id` (`blogarticle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogarticle_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogarticle_related` (
  `blogarticle_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`blogarticle_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogarticle_related_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogarticle_related_product` (
  `blogarticle_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`blogarticle_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogarticle_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogarticle_to_category` (
  `blogarticle_id` int(11) NOT NULL,
  `blogcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`blogarticle_id`,`blogcategory_id`),
  KEY `blogcategory_id` (`blogcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogarticle_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogarticle_to_layout` (
  `blogarticle_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`blogarticle_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogarticle_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogarticle_to_store` (
  `blogarticle_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blogarticle_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogcategory` (
  `blogcategory_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`blogcategory_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogcategory_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogcategory_description` (
  `blogcategory_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_h1` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blogcategory_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogcategory_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogcategory_path` (
  `blogcategory_id` int(11) NOT NULL,
  `blog_path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`blogcategory_id`,`blog_path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogcategory_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogcategory_to_layout` (
  `blogcategory_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`blogcategory_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogcategory_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogcategory_to_store` (
  `blogcategory_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`blogcategory_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_blogcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_blogcomments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blogarticle_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `admin_text` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `blogarticle_id` (`blogarticle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_extra_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_extra_tabs` (
  `extra_tab_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`extra_tab_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_extra_tabs_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_extra_tabs_description` (
  `extra_tab_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`extra_tab_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_megamenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_megamenu` (
  `megamenu_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `item_type` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `img_width` int(11) NOT NULL DEFAULT '100',
  `img_height` int(11) NOT NULL DEFAULT '100',
  `limit_item` int(11) NOT NULL DEFAULT '5',
  `show_img` tinyint(1) NOT NULL DEFAULT '1',
  `display_type` int(11) NOT NULL DEFAULT '1',
  `sub_categories` tinyint(1) NOT NULL DEFAULT '0',
  `open_link_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`megamenu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_megamenu_blogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_megamenu_blogcategory` (
  `megamenu_id` int(11) NOT NULL,
  `blogcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`megamenu_id`,`blogcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_megamenu_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_megamenu_category` (
  `megamenu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`megamenu_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_megamenu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `title` varchar(64) NOT NULL,
  `custom_html` text NOT NULL,
  PRIMARY KEY (`megamenu_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_megamenu_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_megamenu_information` (
  `megamenu_id` int(11) NOT NULL,
  `information_id` int(11) NOT NULL,
  PRIMARY KEY (`megamenu_id`,`information_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_megamenu_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_megamenu_manufacturer` (
  `megamenu_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`megamenu_id`,`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_megamenu_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_megamenu_product` (
  `megamenu_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`megamenu_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_megamenu_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_megamenu_to_customer_group` (
  `megamenu_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`megamenu_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_megamenu_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_megamenu_to_store` (
  `megamenu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`megamenu_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_popup_call_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_popup_call_phone` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_popup_found_cheaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_popup_found_cheaper` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_product_extra_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_product_extra_tabs` (
  `product_id` int(11) NOT NULL,
  `extra_tab_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`extra_tab_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_slideshow_plus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_slideshow_plus` (
  `slideshow_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status_additional_banners` tinyint(1) NOT NULL DEFAULT '1',
  `position_banners` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`slideshow_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_slideshow_plus_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_slideshow_plus_image` (
  `slideshow_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `slideshow_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `background_color` varchar(255) NOT NULL,
  `title_color` varchar(255) NOT NULL,
  `text_color` varchar(255) NOT NULL,
  `button_color` varchar(255) NOT NULL,
  `button_background` varchar(255) NOT NULL,
  `button_color_hover` varchar(255) NOT NULL,
  `button_background_hover` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`slideshow_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_slideshow_plus_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_slideshow_plus_image_description` (
  `slideshow_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `slideshow_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `button` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`slideshow_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_slideshow_plus_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_slideshow_plus_product` (
  `slideshow_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`slideshow_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_sreview_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_sreview_reviews` (
  `oct_sreview_review_id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `admin_text` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `avg_rating` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`oct_sreview_review_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_sreview_reviews_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_sreview_reviews_vote` (
  `oct_sreview_review_id` int(11) NOT NULL,
  `oct_sreview_subject_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_sreview_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_sreview_subject` (
  `oct_sreview_subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `subject_rating_count1` int(11) NOT NULL DEFAULT '0',
  `subject_rating_count2` int(11) NOT NULL DEFAULT '0',
  `subject_rating_count3` int(11) NOT NULL DEFAULT '0',
  `subject_rating_count4` int(11) NOT NULL DEFAULT '0',
  `subject_rating_count5` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`oct_sreview_subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_sreview_subject_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_sreview_subject_description` (
  `oct_sreview_subject_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`oct_sreview_subject_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_sreview_subject_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_sreview_subject_to_store` (
  `oct_sreview_subject_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`oct_sreview_subject_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_oct_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oct_subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`subscribe_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_shipment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `oct_stickers` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2413 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_relatedoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_relatedoptions` (
  `relatedoptions_id` int(11) NOT NULL AUTO_INCREMENT,
  `relatedoptions_variant_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `location` varchar(128) NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `price_prefix` varchar(2) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `defaultselect` tinyint(11) NOT NULL,
  `defaultselectpriority` int(11) NOT NULL,
  PRIMARY KEY (`relatedoptions_id`),
  KEY `relatedoptions_variant_product_id` (`relatedoptions_variant_product_id`),
  KEY `product_id` (`product_id`),
  KEY `quantity` (`quantity`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_relatedoptions_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_relatedoptions_discount` (
  `relatedoptions_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `priority` int(5) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  KEY `relatedoptions_id` (`relatedoptions_id`),
  KEY `customer_group_id` (`customer_group_id`),
  KEY `quantity` (`quantity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_relatedoptions_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_relatedoptions_option` (
  `relatedoptions_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  KEY `relatedoptions_id` (`relatedoptions_id`),
  KEY `option_value_id` (`option_value_id`),
  KEY `option_id` (`option_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_relatedoptions_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_relatedoptions_search` (
  `product_id` int(11) NOT NULL,
  `ro_ids` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_relatedoptions_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_relatedoptions_special` (
  `relatedoptions_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  KEY `relatedoptions_id` (`relatedoptions_id`),
  KEY `customer_group_id` (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_relatedoptions_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_relatedoptions_variant` (
  `relatedoptions_variant_id` int(11) NOT NULL AUTO_INCREMENT,
  `relatedoptions_variant_name` char(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`relatedoptions_variant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_relatedoptions_variant_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_relatedoptions_variant_option` (
  `relatedoptions_variant_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  KEY `option_id` (`option_id`),
  KEY `relatedoptions_variant_id` (`relatedoptions_variant_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_relatedoptions_variant_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_relatedoptions_variant_product` (
  `relatedoptions_variant_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `relatedoptions_variant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `relatedoptions_use` tinyint(1) NOT NULL,
  PRIMARY KEY (`relatedoptions_variant_product_id`),
  KEY `product_id` (`product_id`),
  KEY `relatedoptions_variant_id` (`relatedoptions_variant_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `reply` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_seo_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`seo_url_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1288 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7621 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_shipping_courier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`shipping_courier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  PRIMARY KEY (`statistics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`translation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'Default','LzKUME7UWgf2OQjuF9x4AU7BuB6o1cFKxLW6cKuy7n0A632Iv5oOnvuCnKofKmSOeHXA8MTlHKGp0NmsJB2s4RFpdFF3LPxBFzP5O0YoHhWUOunpKfMHj8yzWWtiUqlSRmb3ilXlpsvXIT7FwhdINjN6elzdJYqPC3630RrIF47GQDi6mtGgjahqnn74kQ5cJpbawBIoI4g5nYzXalGuAUufz1kIanj5nS3IHUzuAwoAxB168p20l0xMxrE4SYnC',1,'2021-09-07 17:10:18','2021-09-07 17:10:18');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_api_ip` WRITE;
/*!40000 ALTER TABLE `oc_api_ip` DISABLE KEYS */;
INSERT INTO `oc_api_ip` VALUES (1,1,'31.148.135.13'),(2,1,'31.148.135.39'),(3,1,'31.148.151.28'),(4,1,'95.46.140.39');
/*!40000 ALTER TABLE `oc_api_ip` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_api_session` WRITE;
/*!40000 ALTER TABLE `oc_api_session` DISABLE KEYS */;
INSERT INTO `oc_api_session` VALUES (6,1,'a2db92bf754a66b885b24a6c69','31.148.151.28','2021-10-14 18:32:18','2021-10-14 18:32:18'),(4,1,'72c5a71a8e95687c1ba58db5e4','31.148.151.28','2021-10-14 16:47:18','2021-10-14 16:47:18'),(5,1,'c8b8761fd6bb7673a716a2f5c2','31.148.151.28','2021-10-14 18:31:59','2021-10-14 15:32:18'),(7,1,'60bf1d3482648fb687c7570009','95.46.140.39','2022-01-28 18:35:55','2022-01-28 18:35:55');
/*!40000 ALTER TABLE `oc_api_session` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (15,8,3),(14,8,1),(13,8,2),(12,7,0);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (15,2,'Высота изделия в нижнем положении'),(14,3,'Глибина сидіння'),(15,3,'Висота виробу в нижньому положенні'),(14,1,'Seat depth'),(13,2,'Ширина сиденья'),(13,3,'Ширина сидіння'),(12,2,'FREELOCK+'),(12,1,'FREELOCK+'),(13,1,'Seat width'),(14,2,'Глубина сиденья'),(12,3,'FREELOCK+'),(15,1,'The height of the product in the lower position');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (7,1),(8,2);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (7,1,'Mechanism'),(8,1,'Dimensions'),(7,2,'Механизм'),(8,3,'Розміри'),(7,3,'Механізм'),(8,2,' Размеры');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(8,'Manufacturers',1),(9,'Home Page Slideshow',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (327,9,1,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(261,6,1,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(294,8,1,'NFL','','catalog/demo/manufacturer/nfl.png',0),(291,8,1,'Sony','','catalog/demo/manufacturer/sony.png',0),(293,8,1,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(292,8,1,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(290,8,1,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(289,8,1,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(288,8,1,'Canon','','catalog/demo/manufacturer/canon.png',0),(326,9,1,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(260,6,2,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(287,8,1,'Disney','','catalog/demo/manufacturer/disney.png',0),(285,8,1,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(286,8,1,'Dell','','catalog/demo/manufacturer/dell.png',0),(284,8,1,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0),(283,8,2,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(282,8,2,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0),(281,8,2,'Dell','','catalog/demo/manufacturer/dell.png',0),(325,9,2,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(276,8,2,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(277,8,2,'Canon','','catalog/demo/manufacturer/canon.png',0),(324,9,2,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(259,6,3,'HP Banner','index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(280,8,2,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(279,8,2,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(278,8,2,'Disney','','catalog/demo/manufacturer/disney.png',0),(272,8,3,'NFL','','catalog/demo/manufacturer/nfl.png',0),(273,8,2,'NFL','','catalog/demo/manufacturer/nfl.png',0),(274,8,2,'Sony','','catalog/demo/manufacturer/sony.png',0),(275,8,2,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(322,9,3,'iPhone 6','index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(271,8,3,'RedBull','','catalog/demo/manufacturer/redbull.png',0),(323,9,3,'MacBookAir','','catalog/demo/banners/MacBookAir.jpg',0),(270,8,3,'Coca Cola','','catalog/demo/manufacturer/cocacola.png',0),(268,8,3,'Canon','','catalog/demo/manufacturer/canon.png',0),(269,8,3,'Sony','','catalog/demo/manufacturer/sony.png',0),(267,8,3,'Burger King','','catalog/demo/manufacturer/burgerking.png',0),(266,8,3,'Harley Davidson','','catalog/demo/manufacturer/harley.png',0),(264,8,3,'Disney','','catalog/demo/manufacturer/disney.png',0),(265,8,3,'Dell','','catalog/demo/manufacturer/dell.png',0),(263,8,3,'Starbucks','','catalog/demo/manufacturer/starbucks.png',0),(262,8,3,'Nintendo','','catalog/demo/manufacturer/nintendo.png',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_cart` WRITE;
/*!40000 ALTER TABLE `oc_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_cart` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (79,'',NULL,60,1,1,4,1,'','2020-02-23 17:57:55','2020-02-23 17:57:55'),(69,'',NULL,61,1,1,2,1,'','2020-02-21 20:42:50','2020-02-23 17:31:56'),(60,'',NULL,0,1,1,3,1,'','2020-02-21 10:47:56','2020-02-21 11:28:45'),(61,'',NULL,0,1,1,1,1,'','2020-02-21 11:04:13','2020-02-21 19:57:52'),(62,'',NULL,0,1,1,2,1,'','2020-02-21 11:11:02','2020-02-21 11:13:36'),(63,'',NULL,0,1,1,4,1,'','2020-02-21 11:22:37','2020-02-23 18:14:12'),(64,'',NULL,0,1,1,5,1,'','2020-02-21 11:31:19','2020-05-10 21:26:12'),(65,'',NULL,0,1,1,6,1,'','2020-02-21 11:42:05','2020-09-21 12:28:25'),(66,'',NULL,0,1,1,7,1,'','2020-02-21 11:44:31','2020-02-21 11:48:22'),(67,'',NULL,0,1,1,8,1,'','2020-02-21 20:06:59','2020-02-21 20:06:59'),(68,'',NULL,61,1,1,1,1,'','2020-02-21 20:26:19','2020-02-24 12:08:23'),(77,'',NULL,60,1,1,1,1,'','2020-02-23 17:48:16','2020-02-23 17:48:16'),(76,'',NULL,62,1,1,2,1,'','2020-02-23 17:44:01','2020-02-23 17:44:01'),(75,'',NULL,62,1,1,1,1,'','2020-02-23 17:40:43','2020-03-03 15:11:25'),(78,'',NULL,60,1,1,3,1,'','2020-02-23 17:51:54','2020-02-23 17:51:54'),(74,'',NULL,61,1,1,7,1,'','2020-02-23 17:37:03','2020-02-23 17:37:03'),(73,'',NULL,61,1,1,6,1,'','2020-02-23 17:30:04','2020-02-23 17:33:12'),(72,'',NULL,61,1,1,5,1,'','2020-02-21 21:09:52','2020-02-23 17:32:55'),(71,'',NULL,61,1,1,4,1,'','2020-02-21 21:06:16','2020-02-23 17:32:30'),(70,'',NULL,61,0,1,3,1,'','2020-02-21 20:55:18','2020-02-23 17:32:11'),(59,'',NULL,60,1,1,2,1,'','2020-02-21 10:46:30','2020-02-23 17:54:14'),(80,'',NULL,60,1,1,5,1,'','2020-02-23 18:00:48','2020-02-23 18:00:48'),(81,'',NULL,63,1,1,1,1,'','2020-02-23 18:06:19','2020-03-09 20:38:05'),(82,'',NULL,63,1,1,2,1,'','2020-02-23 18:12:52','2020-02-23 18:12:52'),(83,'',NULL,63,1,1,3,1,'','2020-02-23 18:19:02','2020-02-23 18:19:02'),(84,'',NULL,63,1,1,4,1,'','2020-02-23 18:22:53','2020-02-23 18:22:53'),(85,'',NULL,63,1,1,5,1,'','2020-02-23 18:25:25','2020-02-23 18:25:25'),(86,'',NULL,63,1,1,6,1,'','2020-02-23 18:34:08','2020-02-23 18:34:08'),(87,'',NULL,63,1,1,7,1,'','2020-02-23 18:35:57','2020-02-23 18:35:57'),(88,'',NULL,63,1,1,8,1,'','2020-02-23 18:41:26','2020-02-23 18:41:26'),(89,'',NULL,64,1,1,1,1,'','2020-02-23 18:44:31','2020-05-30 13:37:32'),(90,'',NULL,64,1,1,2,1,'','2020-02-23 18:47:34','2020-05-30 13:39:53'),(91,'',NULL,64,1,1,3,1,'','2020-02-23 18:51:15','2020-03-03 15:11:37'),(92,'',NULL,64,1,1,4,1,'','2020-02-23 19:02:13','2020-02-23 19:02:13'),(93,'',NULL,64,1,1,5,1,'','2020-02-23 19:06:47','2020-03-27 14:01:04'),(94,'',NULL,65,1,1,1,1,'','2020-02-23 19:11:47','2020-02-23 19:11:47'),(95,'',NULL,65,1,1,2,1,'','2020-02-23 19:15:34','2020-02-23 19:15:34'),(96,'',NULL,65,1,1,3,1,'','2020-02-23 19:18:11','2020-02-23 19:18:11'),(97,'',NULL,65,1,1,4,1,'','2020-02-23 19:19:55','2020-02-23 19:19:55'),(98,'',NULL,65,1,1,5,1,'','2020-02-23 19:21:49','2020-02-23 19:21:49'),(99,'',NULL,65,1,1,6,1,'','2020-02-23 19:27:11','2020-02-23 19:27:11'),(100,'',NULL,65,1,1,7,1,'','2020-02-23 19:29:14','2020-02-23 19:29:14'),(101,'',NULL,66,1,1,1,1,'','2020-02-23 19:31:51','2020-02-23 19:31:51'),(102,'',NULL,66,1,1,2,1,'','2020-02-23 19:34:46','2020-02-23 19:34:46'),(103,'',NULL,66,1,1,3,1,'','2020-02-23 19:44:03','2020-02-23 19:44:03'),(104,'',NULL,66,1,1,4,1,'','2020-02-23 19:47:35','2020-02-23 19:47:35'),(105,'',NULL,66,1,1,1,1,'','2020-07-13 13:33:24','2020-07-13 13:33:13');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (89,3,'Крісла для дітей','&lt;p&gt;Крісла для дітей&lt;br&gt;&lt;/p&gt;','Крісла для дітей','Крісла для дітей','Крісла для дітей'),(72,3,'Крісла і стільці спеціальні','&lt;p&gt;Крісла і стільці спеціальні&lt;br&gt;&lt;/p&gt;','Крісла і стільці спеціальні','Крісла і стільці спеціальні','Крісла і стільці спеціальні'),(88,3,'Комоди','&lt;p&gt;Комоди&lt;br&gt;&lt;/p&gt;','Комоди','Комоди','Комоди'),(87,3,'Шафи купе','&lt;p&gt;Шафи купе&lt;br&gt;&lt;/p&gt;','Шафи купе','Шафи купе','Шафи купе'),(78,3,'М\'які комплекти','&lt;p&gt;М\'які комплекти&lt;br&gt;&lt;/p&gt;','М\'які комплекти','М\'які комплекти','М\'які комплекти'),(79,3,'Кутки м\'які','&lt;p&gt;Кутки м\'які&lt;br&gt;&lt;/p&gt;','Кутки м\'які','Кутки м\'які','Кутки м\'які'),(80,3,'Кутки кухонні','&lt;p&gt;Кутки кухонні&lt;br&gt;&lt;/p&gt;','Кутки кухонні','Кутки кухонні','Кутки кухонні'),(81,3,'Обідні столи','&lt;p&gt;Обідні столи&lt;br&gt;&lt;/p&gt;','Обідні столи','Обідні столи','Обідні столи'),(82,3,'Обідні крісла','&lt;p&gt;Обідні крісла&lt;br&gt;&lt;/p&gt;','Обідні крісла','Обідні крісла','Обідні крісла'),(83,3,'Комп\'ютерні столи','&lt;p&gt;Комп\'ютерні столи&lt;br&gt;&lt;/p&gt;','Комп\'ютерні столи','Комп\'ютерні столи','Комп\'ютерні столи'),(84,3,'Журнальні столики','&lt;p&gt;Журнальні столики&lt;br&gt;&lt;/p&gt;','Журнальні столики','Журнальні столики','Журнальні столики'),(85,3,'Спальні комплекти','&lt;p&gt;Спальні комплекти&lt;br&gt;&lt;/p&gt;','Спальні комплекти','Спальні комплекти','Спальні комплекти'),(70,3,'Крісла конференційні','&lt;p&gt;Крісла конференційні&lt;br&gt;&lt;/p&gt;','Крісла конференційні','Крісла конференційні','Крісла конференційні'),(71,3,'Стільці для відвідувачів','&lt;p&gt;Стільці для відвідувачів&lt;br&gt;&lt;/p&gt;','Стільці для відвідувачів','Стільці для відвідувачів','Стільці для відвідувачів'),(73,3,'Геймерські крісла','&lt;p&gt;Геймерські крісла&lt;br&gt;&lt;/p&gt;','Геймерські крісла','Геймерські крісла','Геймерські крісла'),(74,3,'Крісла IT сітка','&lt;p&gt;Крісла IT сітка&lt;br&gt;&lt;/p&gt;','Крісла IT сітка','Крісла IT сітка','Крісла IT сітка'),(75,3,'Кабінети для керівників','&lt;p&gt;Кабінети для керівників&lt;br&gt;&lt;/p&gt;','Кабінети для керівників','Кабінети для керівників','Кабінети для керівників'),(76,3,'Меблі для персоналу','&lt;p&gt;Меблі для персоналу&lt;br&gt;&lt;/p&gt;','Меблі для персоналу','Меблі для персоналу','Меблі для персоналу'),(77,3,'М\'які меблі для зон очікування','&lt;p&gt;М\'які меблі для зон очікування&lt;br&gt;&lt;/p&gt;','М\'які меблі для зон очікування','М\'які меблі для зон очікування','М\'які меблі для зон очікування'),(86,3,'Прихожі','&lt;p&gt;Прихожі&lt;br&gt;&lt;/p&gt;','Прихожі','Прихожі','Прихожі'),(59,3,'М\'які крісла та дивани','&lt;p&gt;М\'які крісла та дивани&lt;br&gt;&lt;/p&gt;','М\'які крісла та дивани','М\'які крісла та дивани','М\'які крісла та дивани'),(69,3,'Крісла для персоналу','&lt;p&gt;Крісла для персоналу&lt;br&gt;&lt;/p&gt;','Крісла для персоналу','Крісла для персоналу','Крісла для персоналу'),(60,3,'М\'які меблі','М\'які меблі','М\'які меблі','М\'які меблі','М\'які меблі'),(61,3,'Офісні крісла','&lt;p&gt;Офісні крісла&lt;br&gt;&lt;/p&gt;','Офісні крісла','Офісні крісла','Офісні крісла'),(62,3,'Меблі для офісу','&lt;p&gt;Меблі для офісу&lt;br&gt;&lt;/p&gt;','Меблі для офісу','Меблі для офісу','Меблі для офісу'),(63,3,'Меблі для дому','&lt;p&gt;Меблі для дому&lt;br&gt;&lt;/p&gt;','Меблі для дому','Меблі для дому','Меблі для дому'),(64,3,'Дитячі меблі','&lt;p&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;﻿&lt;/span&gt;&lt;span style=&quot;font-size: 13px;&quot;&gt;Меблі для дітей&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','Детская мебель','Меблі для дітей','Меблі для дітей'),(65,3,'Меблі для Кафе і Ресторанів','&lt;p&gt;Меблі для Кафе і Ресторанів&lt;br&gt;&lt;/p&gt;','Меблі для Кафе і Ресторанів','Меблі для Кафе і Ресторанів','Меблі для Кафе і Ресторанів'),(66,3,'Меблі для школи','&lt;p&gt;Меблі для школи&lt;br&gt;&lt;/p&gt;','Меблі для школи','Меблі для школи','Меблі для школи'),(67,3,'Комплектуючі','&lt;p&gt;Комплектуючі&lt;br&gt;&lt;/p&gt;','Комплектуючі','Комплектуючі','Комплектуючі'),(68,3,'Крісла для керівників','&lt;p&gt;Крісла для керівників&lt;br&gt;&lt;/p&gt;','Крісла для керівників','Крісла для керівників','Крісла для керівників'),(90,3,'Стінки дитячі','&lt;p&gt;Стінки дитячі&lt;br&gt;&lt;/p&gt;','Стінки дитячі','Стінки дитячі','Стінки дитячі'),(91,3,'Столи письмові','&lt;p&gt;Столи письмові&lt;br&gt;&lt;/p&gt;','Столи письмові','Столи письмові','Столи письмові'),(92,3,'Ліжка дитячі','&lt;p&gt;Ліжка дитячі&lt;br&gt;&lt;/p&gt;','Ліжка дитячі','Ліжка дитячі','Ліжка дитячі'),(93,3,'Диванчики для дітей','&lt;p&gt;Диванчики для дітей&lt;br&gt;&lt;/p&gt;','Диванчики для дітей','Диванчики для дітей','Диванчики для дітей'),(94,3,'Стільці та крісла','&lt;p&gt;Стільці та крісла&lt;br&gt;&lt;/p&gt;','Стільці та крісла','Стільці та крісла','Стільці та крісла'),(95,3,'Барні крісла','&lt;p&gt;Барні крісла&lt;br&gt;&lt;/p&gt;','Барні крісла','Барні крісла','Барні крісла'),(96,3,'Ніжки для столів','&lt;p&gt;Ніжки для столів&lt;br&gt;&lt;/p&gt;','Ніжки для столів','Ніжки для столів','Ніжки для столів'),(97,3,'Стільниці','&lt;p&gt;Стільниці&lt;br&gt;&lt;/p&gt;','Стільниці','Стільниці','Стільниці'),(98,3,'Вішаки','&lt;p&gt;Вішаки&lt;br&gt;&lt;/p&gt;','Вішаки','Вішаки','Вішаки'),(99,3,'Каркаси металеві стільців КаБаРе','&lt;p&gt;Каркаси металеві стільців КаБаРе&lt;br&gt;&lt;/p&gt;','Каркаси металеві стільців КаБаРе','Каркаси металеві стільців КаБаРе','Каркаси металеві стільців КаБаРе'),(100,3,'Сидіння для стільців','&lt;p&gt;Сидіння для стільців&lt;br&gt;&lt;/p&gt;','Сидіння для стільців','Сидіння для стільців','Сидіння для стільців'),(101,3,'Парти','&lt;p&gt;Парти&lt;br&gt;&lt;/p&gt;','Парти','Парти','Парти'),(102,3,'Стільці шкільні','&lt;p&gt;Стільці шкільні&lt;br&gt;&lt;/p&gt;','Стільці шкільні','Стільці шкільні','Стільці шкільні'),(103,3,'Шафи та секції','&lt;p&gt;Шафи та секції&lt;br&gt;&lt;/p&gt;','Шафи та секції','Шафи та секції','Шафи та секції'),(104,3,'Столи письмові для вчителя','&lt;p&gt;Столи письмові для вчителя&lt;br&gt;&lt;/p&gt;','Столи письмові для вчителя','Столи письмові для вчителя','Столи письмові для вчителя'),(105,3,'урок','техно','','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (98,98,1),(98,65,0),(97,97,1),(97,65,0),(96,96,1),(96,65,0),(95,95,1),(95,65,0),(94,94,1),(94,65,0),(65,65,0),(93,93,1),(93,64,0),(92,92,1),(92,64,0),(91,91,1),(91,64,0),(90,90,1),(90,64,0),(89,89,1),(89,64,0),(64,64,0),(60,60,0),(88,88,1),(88,63,0),(87,87,1),(87,63,0),(86,86,1),(79,60,0),(99,65,0),(86,63,0),(85,85,1),(85,63,0),(84,84,1),(84,63,0),(83,83,1),(83,63,0),(82,82,1),(82,63,0),(81,81,1),(81,63,0),(63,63,0),(75,75,1),(75,62,0),(76,76,1),(76,62,0),(62,62,0),(70,70,1),(70,61,0),(71,71,1),(71,61,0),(72,72,1),(72,61,0),(73,73,1),(73,61,0),(74,74,1),(74,61,0),(68,68,1),(68,61,0),(69,69,1),(69,61,0),(61,61,0),(80,80,1),(80,60,0),(59,59,1),(59,60,0),(78,78,1),(78,60,0),(77,77,1),(77,60,0),(79,79,1),(99,99,1),(100,65,0),(100,100,1),(66,66,0),(101,66,0),(101,101,1),(102,66,0),(102,102,1),(103,66,0),(103,103,1),(104,66,0),(104,104,1),(105,66,0),(105,105,1),(67,67,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(81,0),(82,0),(83,0),(84,0),(85,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,0),(2,'Albania','AL','ALB','',0,0),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'South Korea','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,0),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (4,'UAH гривня','UAH','','грн.','0',1.00000000,1,'2022-01-28 17:31:07');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (3,1,0,3,'Віталій','Діхтярук','dk_incom@ukr.net','+380673530731','','de06dac193dd159c5eabbfc8a4d7792dcc2641f0','ZokGtj0M9',NULL,NULL,1,0,'[]','31.148.151.28',1,1,'','','2021-10-14 17:34:13');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
INSERT INTO `oc_customer_activity` VALUES (1,0,'order_guest','{\"name\":\"\\u041a\\u0443\\u043f\\u0438\\u0442\\u0438 \\u0432 \\u043e\\u0434\\u0438\\u043d \\u043a\\u043b\\u0456\\u043a \",\"order_id\":2}','95.46.140.39','2022-02-18 23:49:49');
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_customer_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_approval` WRITE;
/*!40000 ALTER TABLE `oc_customer_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_approval` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,1,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test'),(1,2,'Default','test'),(1,3,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (2,3,'31.148.151.28','2021-10-14 17:34:14');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (3,'admin','31.148.151.28',8,'2021-10-14 16:09:36','2022-02-05 07:12:32'),(4,'dihtyaruk.v@gmail.com','31.148.151.28',3,'2021-10-14 16:43:44','2021-10-15 15:29:03'),(5,'administrator','159.223.38.203',7,'2021-12-17 06:17:45','2022-02-05 07:44:54'),(6,'www','159.223.38.203',7,'2021-12-17 06:45:29','2022-02-05 08:16:04'),(7,'www123','159.223.38.203',7,'2021-12-17 07:13:06','2022-02-05 08:47:30');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
INSERT INTO `oc_customer_online` VALUES ('64.225.16.105',0,'https://sit.com.ua/','','2022-07-12 22:16:16'),('54.212.48.184',0,'https://sit.com.ua/','','2022-07-12 22:32:50'),('34.220.195.234',0,'https://sit.com.ua/','','2022-07-12 22:32:52'),('54.202.249.50',0,'https://sit.com.ua/','http://sit.com.ua','2022-07-12 22:33:07'),('54.244.74.168',0,'https://sit.com.ua/','','2022-07-12 22:33:21'),('207.46.13.218',0,'https://sit.com.ua/index.php?route=product/category&amp;path=61','','2022-07-12 22:33:38');
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_search` WRITE;
/*!40000 ALTER TABLE `oc_customer_search` DISABLE KEYS */;
INSERT INTO `oc_customer_search` VALUES (1,0,3,0,'BOSS BX Tilt PM64',0,0,0,1,'95.46.140.39','2022-01-28 14:35:00'),(2,0,3,0,'Крісло офісне BOSS BX Tilt PM64',0,0,0,1,'95.46.140.39','2022-01-28 17:42:33'),(3,0,3,0,'Bos',0,0,0,1,'95.46.140.39','2022-01-29 09:08:13'),(4,0,3,0,'Bos',0,0,0,1,'95.46.140.39','2022-02-18 23:48:06');
/*!40000 ALTER TABLE `oc_customer_search` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_wishlist` WRITE;
/*!40000 ALTER TABLE `oc_customer_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_d_validator` WRITE;
/*!40000 ALTER TABLE `oc_d_validator` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_d_validator` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
INSERT INTO `oc_event` VALUES (1,'activity_customer_add','catalog/model/account/customer/addCustomer/after','event/activity/addCustomer',1,0),(2,'activity_customer_edit','catalog/model/account/customer/editCustomer/after','event/activity/editCustomer',1,0),(3,'activity_customer_password','catalog/model/account/customer/editPassword/after','event/activity/editPassword',1,0),(4,'activity_customer_forgotten','catalog/model/account/customer/editCode/after','event/activity/forgotten',1,0),(5,'activity_transaction','catalog/model/account/customer/addTransaction/after','event/activity/addTransaction',1,0),(6,'activity_customer_login','catalog/model/account/customer/deleteLoginAttempts/after','event/activity/login',1,0),(7,'activity_address_add','catalog/model/account/address/addAddress/after','event/activity/addAddress',1,0),(8,'activity_address_edit','catalog/model/account/address/editAddress/after','event/activity/editAddress',1,0),(9,'activity_address_delete','catalog/model/account/address/deleteAddress/after','event/activity/deleteAddress',1,0),(10,'activity_affiliate_add','catalog/model/account/customer/addAffiliate/after','event/activity/addAffiliate',1,0),(11,'activity_affiliate_edit','catalog/model/account/customer/editAffiliate/after','event/activity/editAffiliate',1,0),(12,'activity_order_add','catalog/model/checkout/order/addOrderHistory/before','event/activity/addOrderHistory',1,0),(13,'activity_return_add','catalog/model/account/return/addReturn/after','event/activity/addReturn',1,0),(14,'mail_transaction','catalog/model/account/customer/addTransaction/after','mail/transaction',1,0),(15,'mail_forgotten','catalog/model/account/customer/editCode/after','mail/forgotten',1,0),(16,'mail_customer_add','catalog/model/account/customer/addCustomer/after','mail/register',1,0),(17,'mail_customer_alert','catalog/model/account/customer/addCustomer/after','mail/register/alert',1,0),(18,'mail_affiliate_add','catalog/model/account/customer/addAffiliate/after','mail/affiliate',1,0),(19,'mail_affiliate_alert','catalog/model/account/customer/addAffiliate/after','mail/affiliate/alert',1,0),(20,'mail_voucher','catalog/model/checkout/order/addOrderHistory/after','extension/total/voucher/send',1,0),(21,'mail_order_add','catalog/model/checkout/order/addOrderHistory/before','mail/order',1,0),(22,'mail_order_alert','catalog/model/checkout/order/addOrderHistory/before','mail/order/alert',1,0),(23,'statistics_review_add','catalog/model/catalog/review/addReview/after','event/statistics/addReview',1,0),(24,'statistics_return_add','catalog/model/account/return/addReturn/after','event/statistics/addReturn',1,0),(25,'statistics_order_history','catalog/model/checkout/order/addOrderHistory/after','event/statistics/addOrderHistory',1,0),(26,'admin_mail_affiliate_approve','admin/model/customer/customer_approval/approveAffiliate/after','mail/affiliate/approve',1,0),(27,'admin_mail_affiliate_deny','admin/model/customer/customer_approval/denyAffiliate/after','mail/affiliate/deny',1,0),(28,'admin_mail_customer_approve','admin/model/customer/customer_approval/approveCustomer/after','mail/customer/approve',1,0),(29,'admin_mail_customer_deny','admin/model/customer/customer_approval/denyCustomer/after','mail/customer/deny',1,0),(30,'admin_mail_reward','admin/model/customer/customer/addReward/after','mail/reward',1,0),(31,'admin_mail_transaction','admin/model/customer/customer/addTransaction/after','mail/transaction',1,0),(32,'admin_mail_return','admin/model/sale/return/addReturnHistory/after','mail/return',1,0),(33,'admin_mail_forgotten','admin/model/user/user/editCode/after','mail/forgotten',1,0),(34,'advertise_google','admin/model/catalog/product/deleteProduct/after','extension/advertise/google/deleteProduct',1,0),(35,'advertise_google','admin/model/catalog/product/copyProduct/after','extension/advertise/google/copyProduct',1,0),(36,'advertise_google','admin/view/common/column_left/before','extension/advertise/google/admin_link',1,0),(37,'advertise_google','admin/model/catalog/product/addProduct/after','extension/advertise/google/addProduct',1,0),(38,'advertise_google','catalog/controller/checkout/success/before','extension/advertise/google/before_checkout_success',1,0),(39,'advertise_google','catalog/view/common/header/after','extension/advertise/google/google_global_site_tag',1,0),(40,'advertise_google','catalog/view/common/success/after','extension/advertise/google/google_dynamic_remarketing_purchase',1,0),(41,'advertise_google','catalog/view/product/product/after','extension/advertise/google/google_dynamic_remarketing_product',1,0),(42,'advertise_google','catalog/view/product/search/after','extension/advertise/google/google_dynamic_remarketing_searchresults',1,0),(43,'advertise_google','catalog/view/product/category/after','extension/advertise/google/google_dynamic_remarketing_category',1,0),(44,'advertise_google','catalog/view/common/home/after','extension/advertise/google/google_dynamic_remarketing_home',1,0),(45,'advertise_google','catalog/view/checkout/cart/after','extension/advertise/google/google_dynamic_remarketing_cart',1,0),(47,'d_validator','admin/view/extension/module/d_quick_order/after','extension/d_shopunity/d_validator/view',1,0),(48,'d_validator','admin/view/extension/d_ajax_filter/layout/after','extension/d_shopunity/d_validator/view',1,0),(49,'d_validator','admin/view/extension/module/d_quickcheckout/after','extension/d_shopunity/d_validator/view',1,0),(50,'d_validator','admin/view/extension/module/d_blog_module/after','extension/d_shopunity/d_validator/view',1,0),(51,'d_validator','admin/view/extension/d_blog_module/post_list/after','extension/d_shopunity/d_validator/view',1,0),(52,'d_validator','admin/view/extension/d_blog_module/category_list/after','extension/d_shopunity/d_validator/view',1,0),(53,'d_validator','admin/view/extension/d_visual_designer/setting/after','extension/d_shopunity/d_validator/view',1,0),(54,'d_validator','admin/view/extension/module/d_visual_designer_module/after','extension/d_shopunity/d_validator/view',1,0),(55,'d_validator','admin/view/extension/d_visual_designer/designer/after','extension/d_shopunity/d_validator/view',1,0),(56,'d_validator','admin/view/extension/d_visual_designer_landing/page_list/after','extension/d_shopunity/d_validator/view',1,0),(57,'d_validator','admin/view/extension/module/d_download_manager_pro/after','extension/d_shopunity/d_validator/view',1,0),(58,'d_validator','admin/view/extension/module/d_seo_module_manager/setting','extension/d_shopunity/d_validator/view',1,0),(59,'d_validator','admin/view/extension/module/d_seo_module_url/setting','extension/d_shopunity/d_validator/view',1,0),(60,'d_validator','admin/view/extension/module/d_seo_module_blog/setting','extension/d_shopunity/d_validator/view',1,0),(61,'d_validator','admin/view/extension/module/d_seo_module/dashboard','extension/d_shopunity/d_validator/view',1,0),(62,'d_validator','admin/view/extension/module/d_social_login/after','extension/d_shopunity/d_validator/view',1,0),(63,'d_validator','admin/view/extension/d_export_import/excel/after','extension/d_shopunity/d_validator/view',1,0),(64,'d_validator','admin/view/extension/d_gdpr_module/d_gdpr_module','extension/d_shopunity/d_validator/view',1,0),(65,'d_validator','admin/view/extension/d_security_module/d_security_module/after','extension/d_shopunity/d_validator/view',1,0),(66,'d_validator','admin/view/extension/module/d_social_like/after','extension/d_shopunity/d_validator/view',1,0),(67,'d_validator','admin/view/extension/feed/d_google_sitemap/after','extension/d_shopunity/d_validator/view',1,0),(68,'d_validator','admin/view/extension/module/d_cart_related/after','extension/d_shopunity/d_validator/view',1,0),(69,'d_validator','admin/view/extension/module/d_gift_with_purchase/after','extension/d_shopunity/d_validator/view',1,0),(70,'d_validator','admin/view/extension/shipping/d_multiflat/after','extension/d_shopunity/d_validator/view',1,0),(71,'d_validator','admin/view/extension/module/d_image_product_tag/after','extension/d_shopunity/d_validator/view',1,0),(72,'d_validator','admin/view/extension/module/d_shipping_based_payment/after','extension/d_shopunity/d_validator/view',1,0),(73,'d_validator','admin/view/extension/module/d_payment_by_customer_group/after','extension/d_shopunity/d_validator/view',1,0),(74,'d_validator','admin/view/extension/module/d_shipping_by_customer_group/after','extension/d_shopunity/d_validator/view',1,0),(75,'d_validator','admin/view/extension/total/d_payment_fee/after','extension/d_shopunity/d_validator/view',1,0),(76,'d_validator','admin/view/extension/module/d_link_cart/after','extension/d_shopunity/d_validator/view',1,0),(77,'d_validator','admin/view/extension/module/d_seo_module_adviser/setting/after','extension/d_shopunity/d_validator/view',1,0),(78,'d_validator','admin/view/extension/module/d_contact_map/after','extension/d_shopunity/d_validator/view',1,0),(79,'d_validator','admin/view/extension/shipping/d_free_shipping_advanced/after','extension/d_shopunity/d_validator/view',1,0),(80,'d_validator','admin/view/extension/module/d_ajax_search/after','extension/d_shopunity/d_validator/view',1,0),(81,'d_validator','admin/view/extension/module/d_spin_product/after','extension/d_shopunity/d_validator/view',1,0);
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'payment','cod'),(2,'total','shipping'),(3,'total','sub_total'),(4,'total','tax'),(5,'total','total'),(6,'module','banner'),(7,'module','carousel'),(8,'total','credit'),(9,'shipping','flat'),(10,'total','handling'),(11,'total','low_order_fee'),(12,'total','coupon'),(13,'module','category'),(14,'module','account'),(15,'total','reward'),(16,'total','voucher'),(17,'payment','free_checkout'),(18,'module','featured'),(19,'module','slideshow'),(56,'analytics','oct_analytics'),(21,'dashboard','activity'),(22,'dashboard','sale'),(23,'dashboard','recent'),(24,'dashboard','order'),(25,'dashboard','online'),(26,'dashboard','map'),(27,'dashboard','customer'),(28,'dashboard','chart'),(29,'report','sale_coupon'),(31,'report','customer_search'),(32,'report','customer_transaction'),(33,'report','product_purchased'),(34,'report','product_viewed'),(35,'report','sale_return'),(36,'report','sale_order'),(37,'report','sale_shipping'),(38,'report','sale_tax'),(39,'report','customer_activity'),(40,'report','customer_order'),(41,'report','customer_reward'),(42,'advertise','google'),(44,'theme','oct_feelmart'),(55,'module','oct_slideshow_plus'),(46,'module','oct_blogcategory'),(54,'module','oct_banner_plus'),(48,'module','oct_products_from_category'),(49,'module','oct_product_views'),(50,'module','oct_benefits'),(51,'module','oct_product_review'),(52,'module','oct_blogarticle'),(53,'module','oct_category_wall'),(58,'module','latest'),(59,'module','information'),(60,'module','special'),(61,'module','html'),(62,'module','filter'),(63,'module','bestseller'),(64,'module','amazon_pay'),(72,'module','related_options'),(73,'payment','liqpay');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_extension_install` WRITE;
/*!40000 ALTER TABLE `oc_extension_install` DISABLE KEYS */;
INSERT INTO `oc_extension_install` VALUES (4,0,'[ocmod.net] export-import-multilingual_oc3x.ocmod.zip','2021-10-28 16:51:48'),(5,0,'opencart_related_options_3-3.1.1.ocmod.zip','2021-12-10 17:55:31');
/*!40000 ALTER TABLE `oc_extension_install` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_extension_path` WRITE;
/*!40000 ALTER TABLE `oc_extension_path` DISABLE KEYS */;
INSERT INTO `oc_extension_path` VALUES (870,4,'system/library/export_import','2021-10-28 16:51:48'),(871,4,'admin/controller/extension/export_import.php','2021-10-28 16:51:48'),(872,4,'admin/model/extension/export_import.php','2021-10-28 16:51:48'),(873,4,'admin/view/image/export-import','2021-10-28 16:51:48'),(874,4,'admin/view/stylesheet/export_import.css','2021-10-28 16:51:48'),(875,4,'system/library/export_import/Classes','2021-10-28 16:51:48'),(876,4,'admin/language/en-gb/extension/export_import.php','2021-10-28 16:51:48'),(877,4,'admin/language/ru-ru/extension/export_import.php','2021-10-28 16:51:48'),(878,4,'admin/view/image/export-import/loading.gif','2021-10-28 16:51:48'),(879,4,'admin/view/template/extension/export_import.twig','2021-10-28 16:51:48'),(880,4,'system/library/export_import/Classes/PHPExcel','2021-10-28 16:51:48'),(881,4,'system/library/export_import/Classes/PHPExcel.php','2021-10-28 16:51:48'),(882,4,'system/library/export_import/Classes/PHPExcel/Autoloader.php','2021-10-28 16:51:48'),(883,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage','2021-10-28 16:51:48'),(884,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorageFactory.php','2021-10-28 16:51:48'),(885,4,'system/library/export_import/Classes/PHPExcel/CalcEngine','2021-10-28 16:51:48'),(886,4,'system/library/export_import/Classes/PHPExcel/Calculation','2021-10-28 16:51:48'),(887,4,'system/library/export_import/Classes/PHPExcel/Calculation.php','2021-10-28 16:51:48'),(888,4,'system/library/export_import/Classes/PHPExcel/Cell','2021-10-28 16:51:48'),(889,4,'system/library/export_import/Classes/PHPExcel/Cell.php','2021-10-28 16:51:48'),(890,4,'system/library/export_import/Classes/PHPExcel/Chart','2021-10-28 16:51:48'),(891,4,'system/library/export_import/Classes/PHPExcel/Chart.php','2021-10-28 16:51:48'),(892,4,'system/library/export_import/Classes/PHPExcel/Comment.php','2021-10-28 16:51:48'),(893,4,'system/library/export_import/Classes/PHPExcel/DocumentProperties.php','2021-10-28 16:51:48'),(894,4,'system/library/export_import/Classes/PHPExcel/DocumentSecurity.php','2021-10-28 16:51:48'),(895,4,'system/library/export_import/Classes/PHPExcel/Exception.php','2021-10-28 16:51:48'),(896,4,'system/library/export_import/Classes/PHPExcel/HashTable.php','2021-10-28 16:51:48'),(897,4,'system/library/export_import/Classes/PHPExcel/Helper','2021-10-28 16:51:48'),(898,4,'system/library/export_import/Classes/PHPExcel/IComparable.php','2021-10-28 16:51:48'),(899,4,'system/library/export_import/Classes/PHPExcel/IOFactory.php','2021-10-28 16:51:48'),(900,4,'system/library/export_import/Classes/PHPExcel/NamedRange.php','2021-10-28 16:51:48'),(901,4,'system/library/export_import/Classes/PHPExcel/Reader','2021-10-28 16:51:48'),(902,4,'system/library/export_import/Classes/PHPExcel/ReferenceHelper.php','2021-10-28 16:51:48'),(903,4,'system/library/export_import/Classes/PHPExcel/RichText','2021-10-28 16:51:48'),(904,4,'system/library/export_import/Classes/PHPExcel/RichText.php','2021-10-28 16:51:48'),(905,4,'system/library/export_import/Classes/PHPExcel/Settings.php','2021-10-28 16:51:48'),(906,4,'system/library/export_import/Classes/PHPExcel/Shared','2021-10-28 16:51:48'),(907,4,'system/library/export_import/Classes/PHPExcel/Style','2021-10-28 16:51:48'),(908,4,'system/library/export_import/Classes/PHPExcel/Style.php','2021-10-28 16:51:48'),(909,4,'system/library/export_import/Classes/PHPExcel/Worksheet','2021-10-28 16:51:48'),(910,4,'system/library/export_import/Classes/PHPExcel/Worksheet.php','2021-10-28 16:51:48'),(911,4,'system/library/export_import/Classes/PHPExcel/WorksheetIterator.php','2021-10-28 16:51:48'),(912,4,'system/library/export_import/Classes/PHPExcel/Writer','2021-10-28 16:51:48'),(913,4,'system/library/export_import/Classes/PHPExcel/locale','2021-10-28 16:51:48'),(914,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/APC.php','2021-10-28 16:51:48'),(915,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/CacheBase.php','2021-10-28 16:51:48'),(916,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/DiscISAM.php','2021-10-28 16:51:48'),(917,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/ICache.php','2021-10-28 16:51:48'),(918,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Igbinary.php','2021-10-28 16:51:48'),(919,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memcache.php','2021-10-28 16:51:48'),(920,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Memory.php','2021-10-28 16:51:48'),(921,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemoryGZip.php','2021-10-28 16:51:48'),(922,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/MemorySerialized.php','2021-10-28 16:51:48'),(923,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/PHPTemp.php','2021-10-28 16:51:48'),(924,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite.php','2021-10-28 16:51:48'),(925,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/SQLite3.php','2021-10-28 16:51:48'),(926,4,'system/library/export_import/Classes/PHPExcel/CachedObjectStorage/Wincache.php','2021-10-28 16:51:48'),(927,4,'system/library/export_import/Classes/PHPExcel/CalcEngine/CyclicReferenceStack.php','2021-10-28 16:51:48'),(928,4,'system/library/export_import/Classes/PHPExcel/CalcEngine/Logger.php','2021-10-28 16:51:48'),(929,4,'system/library/export_import/Classes/PHPExcel/Calculation/Database.php','2021-10-28 16:51:48'),(930,4,'system/library/export_import/Classes/PHPExcel/Calculation/DateTime.php','2021-10-28 16:51:48'),(931,4,'system/library/export_import/Classes/PHPExcel/Calculation/Engineering.php','2021-10-28 16:51:48'),(932,4,'system/library/export_import/Classes/PHPExcel/Calculation/Exception.php','2021-10-28 16:51:48'),(933,4,'system/library/export_import/Classes/PHPExcel/Calculation/ExceptionHandler.php','2021-10-28 16:51:48'),(934,4,'system/library/export_import/Classes/PHPExcel/Calculation/Financial.php','2021-10-28 16:51:48'),(935,4,'system/library/export_import/Classes/PHPExcel/Calculation/FormulaParser.php','2021-10-28 16:51:48'),(936,4,'system/library/export_import/Classes/PHPExcel/Calculation/FormulaToken.php','2021-10-28 16:51:48'),(937,4,'system/library/export_import/Classes/PHPExcel/Calculation/Function.php','2021-10-28 16:51:48'),(938,4,'system/library/export_import/Classes/PHPExcel/Calculation/Functions.php','2021-10-28 16:51:48'),(939,4,'system/library/export_import/Classes/PHPExcel/Calculation/Logical.php','2021-10-28 16:51:48'),(940,4,'system/library/export_import/Classes/PHPExcel/Calculation/LookupRef.php','2021-10-28 16:51:48'),(941,4,'system/library/export_import/Classes/PHPExcel/Calculation/MathTrig.php','2021-10-28 16:51:48'),(942,4,'system/library/export_import/Classes/PHPExcel/Calculation/Statistical.php','2021-10-28 16:51:48'),(943,4,'system/library/export_import/Classes/PHPExcel/Calculation/TextData.php','2021-10-28 16:51:48'),(944,4,'system/library/export_import/Classes/PHPExcel/Calculation/Token','2021-10-28 16:51:48'),(945,4,'system/library/export_import/Classes/PHPExcel/Calculation/functionlist.txt','2021-10-28 16:51:48'),(946,4,'system/library/export_import/Classes/PHPExcel/Cell/AdvancedValueBinder.php','2021-10-28 16:51:48'),(947,4,'system/library/export_import/Classes/PHPExcel/Cell/DataType.php','2021-10-28 16:51:48'),(948,4,'system/library/export_import/Classes/PHPExcel/Cell/DataValidation.php','2021-10-28 16:51:48'),(949,4,'system/library/export_import/Classes/PHPExcel/Cell/DefaultValueBinder.php','2021-10-28 16:51:48'),(950,4,'system/library/export_import/Classes/PHPExcel/Cell/ExportImportValueBinder.php','2021-10-28 16:51:48'),(951,4,'system/library/export_import/Classes/PHPExcel/Cell/Hyperlink.php','2021-10-28 16:51:48'),(952,4,'system/library/export_import/Classes/PHPExcel/Cell/IValueBinder.php','2021-10-28 16:51:48'),(953,4,'system/library/export_import/Classes/PHPExcel/Chart/Axis.php','2021-10-28 16:51:48'),(954,4,'system/library/export_import/Classes/PHPExcel/Chart/DataSeries.php','2021-10-28 16:51:48'),(955,4,'system/library/export_import/Classes/PHPExcel/Chart/DataSeriesValues.php','2021-10-28 16:51:48'),(956,4,'system/library/export_import/Classes/PHPExcel/Chart/Exception.php','2021-10-28 16:51:48'),(957,4,'system/library/export_import/Classes/PHPExcel/Chart/GridLines.php','2021-10-28 16:51:48'),(958,4,'system/library/export_import/Classes/PHPExcel/Chart/Layout.php','2021-10-28 16:51:48'),(959,4,'system/library/export_import/Classes/PHPExcel/Chart/Legend.php','2021-10-28 16:51:48'),(960,4,'system/library/export_import/Classes/PHPExcel/Chart/PlotArea.php','2021-10-28 16:51:48'),(961,4,'system/library/export_import/Classes/PHPExcel/Chart/Properties.php','2021-10-28 16:51:48'),(962,4,'system/library/export_import/Classes/PHPExcel/Chart/Renderer','2021-10-28 16:51:48'),(963,4,'system/library/export_import/Classes/PHPExcel/Chart/Title.php','2021-10-28 16:51:48'),(964,4,'system/library/export_import/Classes/PHPExcel/Helper/HTML.php','2021-10-28 16:51:48'),(965,4,'system/library/export_import/Classes/PHPExcel/Reader/Abstract.php','2021-10-28 16:51:48'),(966,4,'system/library/export_import/Classes/PHPExcel/Reader/CSV.php','2021-10-28 16:51:48'),(967,4,'system/library/export_import/Classes/PHPExcel/Reader/DefaultReadFilter.php','2021-10-28 16:51:48'),(968,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel2003XML.php','2021-10-28 16:51:48'),(969,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007','2021-10-28 16:51:48'),(970,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007.php','2021-10-28 16:51:48'),(971,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5','2021-10-28 16:51:48'),(972,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5.php','2021-10-28 16:51:48'),(973,4,'system/library/export_import/Classes/PHPExcel/Reader/Exception.php','2021-10-28 16:51:48'),(974,4,'system/library/export_import/Classes/PHPExcel/Reader/Gnumeric.php','2021-10-28 16:51:48'),(975,4,'system/library/export_import/Classes/PHPExcel/Reader/HTML.php','2021-10-28 16:51:48'),(976,4,'system/library/export_import/Classes/PHPExcel/Reader/IReadFilter.php','2021-10-28 16:51:48'),(977,4,'system/library/export_import/Classes/PHPExcel/Reader/IReader.php','2021-10-28 16:51:48'),(978,4,'system/library/export_import/Classes/PHPExcel/Reader/OOCalc.php','2021-10-28 16:51:48'),(979,4,'system/library/export_import/Classes/PHPExcel/Reader/SYLK.php','2021-10-28 16:51:48'),(980,4,'system/library/export_import/Classes/PHPExcel/RichText/ITextElement.php','2021-10-28 16:51:48'),(981,4,'system/library/export_import/Classes/PHPExcel/RichText/Run.php','2021-10-28 16:51:48'),(982,4,'system/library/export_import/Classes/PHPExcel/RichText/TextElement.php','2021-10-28 16:51:48'),(983,4,'system/library/export_import/Classes/PHPExcel/Shared/CodePage.php','2021-10-28 16:51:48'),(984,4,'system/library/export_import/Classes/PHPExcel/Shared/Date.php','2021-10-28 16:51:48'),(985,4,'system/library/export_import/Classes/PHPExcel/Shared/Drawing.php','2021-10-28 16:51:48'),(986,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher','2021-10-28 16:51:48'),(987,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher.php','2021-10-28 16:51:48'),(988,4,'system/library/export_import/Classes/PHPExcel/Shared/Excel5.php','2021-10-28 16:51:48'),(989,4,'system/library/export_import/Classes/PHPExcel/Shared/File.php','2021-10-28 16:51:48'),(990,4,'system/library/export_import/Classes/PHPExcel/Shared/Font.php','2021-10-28 16:51:48'),(991,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA','2021-10-28 16:51:48'),(992,4,'system/library/export_import/Classes/PHPExcel/Shared/OLE','2021-10-28 16:51:48'),(993,4,'system/library/export_import/Classes/PHPExcel/Shared/OLE.php','2021-10-28 16:51:48'),(994,4,'system/library/export_import/Classes/PHPExcel/Shared/OLERead.php','2021-10-28 16:51:48'),(995,4,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip','2021-10-28 16:51:48'),(996,4,'system/library/export_import/Classes/PHPExcel/Shared/PasswordHasher.php','2021-10-28 16:51:48'),(997,4,'system/library/export_import/Classes/PHPExcel/Shared/String.php','2021-10-28 16:51:48'),(998,4,'system/library/export_import/Classes/PHPExcel/Shared/TimeZone.php','2021-10-28 16:51:48'),(999,4,'system/library/export_import/Classes/PHPExcel/Shared/XMLWriter.php','2021-10-28 16:51:48'),(1000,4,'system/library/export_import/Classes/PHPExcel/Shared/ZipArchive.php','2021-10-28 16:51:48'),(1001,4,'system/library/export_import/Classes/PHPExcel/Shared/ZipStreamWrapper.php','2021-10-28 16:51:48'),(1002,4,'system/library/export_import/Classes/PHPExcel/Shared/trend','2021-10-28 16:51:48'),(1003,4,'system/library/export_import/Classes/PHPExcel/Style/Alignment.php','2021-10-28 16:51:48'),(1004,4,'system/library/export_import/Classes/PHPExcel/Style/Border.php','2021-10-28 16:51:48'),(1005,4,'system/library/export_import/Classes/PHPExcel/Style/Borders.php','2021-10-28 16:51:48'),(1006,4,'system/library/export_import/Classes/PHPExcel/Style/Color.php','2021-10-28 16:51:48'),(1007,4,'system/library/export_import/Classes/PHPExcel/Style/Conditional.php','2021-10-28 16:51:48'),(1008,4,'system/library/export_import/Classes/PHPExcel/Style/Fill.php','2021-10-28 16:51:48'),(1009,4,'system/library/export_import/Classes/PHPExcel/Style/Font.php','2021-10-28 16:51:48'),(1010,4,'system/library/export_import/Classes/PHPExcel/Style/NumberFormat.php','2021-10-28 16:51:48'),(1011,4,'system/library/export_import/Classes/PHPExcel/Style/Protection.php','2021-10-28 16:51:48'),(1012,4,'system/library/export_import/Classes/PHPExcel/Style/Supervisor.php','2021-10-28 16:51:48'),(1013,4,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter','2021-10-28 16:51:48'),(1014,4,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter.php','2021-10-28 16:51:48'),(1015,4,'system/library/export_import/Classes/PHPExcel/Worksheet/BaseDrawing.php','2021-10-28 16:51:48'),(1016,4,'system/library/export_import/Classes/PHPExcel/Worksheet/CellIterator.php','2021-10-28 16:51:48'),(1017,4,'system/library/export_import/Classes/PHPExcel/Worksheet/Column.php','2021-10-28 16:51:48'),(1018,4,'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnCellIterator.php','2021-10-28 16:51:48'),(1019,4,'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnDimension.php','2021-10-28 16:51:48'),(1020,4,'system/library/export_import/Classes/PHPExcel/Worksheet/ColumnIterator.php','2021-10-28 16:51:48'),(1021,4,'system/library/export_import/Classes/PHPExcel/Worksheet/Dimension.php','2021-10-28 16:51:48'),(1022,4,'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing','2021-10-28 16:51:48'),(1023,4,'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing.php','2021-10-28 16:51:48'),(1024,4,'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooter.php','2021-10-28 16:51:48'),(1025,4,'system/library/export_import/Classes/PHPExcel/Worksheet/HeaderFooterDrawing.php','2021-10-28 16:51:48'),(1026,4,'system/library/export_import/Classes/PHPExcel/Worksheet/MemoryDrawing.php','2021-10-28 16:51:48'),(1027,4,'system/library/export_import/Classes/PHPExcel/Worksheet/PageMargins.php','2021-10-28 16:51:48'),(1028,4,'system/library/export_import/Classes/PHPExcel/Worksheet/PageSetup.php','2021-10-28 16:51:48'),(1029,4,'system/library/export_import/Classes/PHPExcel/Worksheet/Protection.php','2021-10-28 16:51:48'),(1030,4,'system/library/export_import/Classes/PHPExcel/Worksheet/Row.php','2021-10-28 16:51:48'),(1031,4,'system/library/export_import/Classes/PHPExcel/Worksheet/RowCellIterator.php','2021-10-28 16:51:48'),(1032,4,'system/library/export_import/Classes/PHPExcel/Worksheet/RowDimension.php','2021-10-28 16:51:48'),(1033,4,'system/library/export_import/Classes/PHPExcel/Worksheet/RowIterator.php','2021-10-28 16:51:48'),(1034,4,'system/library/export_import/Classes/PHPExcel/Worksheet/SheetView.php','2021-10-28 16:51:48'),(1035,4,'system/library/export_import/Classes/PHPExcel/Writer/Abstract.php','2021-10-28 16:51:48'),(1036,4,'system/library/export_import/Classes/PHPExcel/Writer/CSV.php','2021-10-28 16:51:48'),(1037,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007','2021-10-28 16:51:48'),(1038,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007.php','2021-10-28 16:51:48'),(1039,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel5','2021-10-28 16:51:48'),(1040,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel5.php','2021-10-28 16:51:48'),(1041,4,'system/library/export_import/Classes/PHPExcel/Writer/Exception.php','2021-10-28 16:51:48'),(1042,4,'system/library/export_import/Classes/PHPExcel/Writer/HTML.php','2021-10-28 16:51:48'),(1043,4,'system/library/export_import/Classes/PHPExcel/Writer/IWriter.php','2021-10-28 16:51:48'),(1044,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument','2021-10-28 16:51:48'),(1045,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument.php','2021-10-28 16:51:48'),(1046,4,'system/library/export_import/Classes/PHPExcel/Writer/PDF','2021-10-28 16:51:48'),(1047,4,'system/library/export_import/Classes/PHPExcel/Writer/PDF.php','2021-10-28 16:51:48'),(1048,4,'system/library/export_import/Classes/PHPExcel/locale/bg','2021-10-28 16:51:48'),(1049,4,'system/library/export_import/Classes/PHPExcel/locale/cs','2021-10-28 16:51:48'),(1050,4,'system/library/export_import/Classes/PHPExcel/locale/da','2021-10-28 16:51:48'),(1051,4,'system/library/export_import/Classes/PHPExcel/locale/de','2021-10-28 16:51:48'),(1052,4,'system/library/export_import/Classes/PHPExcel/locale/en','2021-10-28 16:51:48'),(1053,4,'system/library/export_import/Classes/PHPExcel/locale/es','2021-10-28 16:51:48'),(1054,4,'system/library/export_import/Classes/PHPExcel/locale/fi','2021-10-28 16:51:48'),(1055,4,'system/library/export_import/Classes/PHPExcel/locale/fr','2021-10-28 16:51:48'),(1056,4,'system/library/export_import/Classes/PHPExcel/locale/hu','2021-10-28 16:51:48'),(1057,4,'system/library/export_import/Classes/PHPExcel/locale/it','2021-10-28 16:51:48'),(1058,4,'system/library/export_import/Classes/PHPExcel/locale/nl','2021-10-28 16:51:48'),(1059,4,'system/library/export_import/Classes/PHPExcel/locale/no','2021-10-28 16:51:48'),(1060,4,'system/library/export_import/Classes/PHPExcel/locale/pl','2021-10-28 16:51:48'),(1061,4,'system/library/export_import/Classes/PHPExcel/locale/pt','2021-10-28 16:51:48'),(1062,4,'system/library/export_import/Classes/PHPExcel/locale/ru','2021-10-28 16:51:48'),(1063,4,'system/library/export_import/Classes/PHPExcel/locale/sv','2021-10-28 16:51:48'),(1064,4,'system/library/export_import/Classes/PHPExcel/locale/tr','2021-10-28 16:51:48'),(1065,4,'system/library/export_import/Classes/PHPExcel/Calculation/Token/Stack.php','2021-10-28 16:51:48'),(1066,4,'system/library/export_import/Classes/PHPExcel/Chart/Renderer/PHP Charting Libraries.txt','2021-10-28 16:51:48'),(1067,4,'system/library/export_import/Classes/PHPExcel/Chart/Renderer/jpgraph.php','2021-10-28 16:51:48'),(1068,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Chart.php','2021-10-28 16:51:48'),(1069,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel2007/Theme.php','2021-10-28 16:51:48'),(1070,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color','2021-10-28 16:51:48'),(1071,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color.php','2021-10-28 16:51:48'),(1072,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/ErrorCode.php','2021-10-28 16:51:48'),(1073,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Escher.php','2021-10-28 16:51:48'),(1074,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/MD5.php','2021-10-28 16:51:48'),(1075,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/RC4.php','2021-10-28 16:51:48'),(1076,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style','2021-10-28 16:51:48'),(1077,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer','2021-10-28 16:51:48'),(1078,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer.php','2021-10-28 16:51:48'),(1079,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer','2021-10-28 16:51:48'),(1080,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer.php','2021-10-28 16:51:48'),(1081,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CHANGELOG.TXT','2021-10-28 16:51:48'),(1082,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/CholeskyDecomposition.php','2021-10-28 16:51:48'),(1083,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/EigenvalueDecomposition.php','2021-10-28 16:51:48'),(1084,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/LUDecomposition.php','2021-10-28 16:51:48'),(1085,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/Matrix.php','2021-10-28 16:51:48'),(1086,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/QRDecomposition.php','2021-10-28 16:51:48'),(1087,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/SingularValueDecomposition.php','2021-10-28 16:51:48'),(1088,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils','2021-10-28 16:51:48'),(1089,4,'system/library/export_import/Classes/PHPExcel/Shared/OLE/ChainedBlockStream.php','2021-10-28 16:51:48'),(1090,4,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS','2021-10-28 16:51:48'),(1091,4,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS.php','2021-10-28 16:51:48'),(1092,4,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/gnu-lgpl.txt','2021-10-28 16:51:48'),(1093,4,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/pclzip.lib.php','2021-10-28 16:51:48'),(1094,4,'system/library/export_import/Classes/PHPExcel/Shared/PCLZip/readme.txt','2021-10-28 16:51:48'),(1095,4,'system/library/export_import/Classes/PHPExcel/Shared/trend/bestFitClass.php','2021-10-28 16:51:48'),(1096,4,'system/library/export_import/Classes/PHPExcel/Shared/trend/exponentialBestFitClass.php','2021-10-28 16:51:48'),(1097,4,'system/library/export_import/Classes/PHPExcel/Shared/trend/linearBestFitClass.php','2021-10-28 16:51:48'),(1098,4,'system/library/export_import/Classes/PHPExcel/Shared/trend/logarithmicBestFitClass.php','2021-10-28 16:51:48'),(1099,4,'system/library/export_import/Classes/PHPExcel/Shared/trend/polynomialBestFitClass.php','2021-10-28 16:51:48'),(1100,4,'system/library/export_import/Classes/PHPExcel/Shared/trend/powerBestFitClass.php','2021-10-28 16:51:48'),(1101,4,'system/library/export_import/Classes/PHPExcel/Shared/trend/trendClass.php','2021-10-28 16:51:48'),(1102,4,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column','2021-10-28 16:51:48'),(1103,4,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column.php','2021-10-28 16:51:48'),(1104,4,'system/library/export_import/Classes/PHPExcel/Worksheet/Drawing/Shadow.php','2021-10-28 16:51:48'),(1105,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Chart.php','2021-10-28 16:51:48'),(1106,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Comments.php','2021-10-28 16:51:48'),(1107,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/ContentTypes.php','2021-10-28 16:51:48'),(1108,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/DocProps.php','2021-10-28 16:51:48'),(1109,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Drawing.php','2021-10-28 16:51:48'),(1110,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Rels.php','2021-10-28 16:51:48'),(1111,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsRibbon.php','2021-10-28 16:51:48'),(1112,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/RelsVBA.php','2021-10-28 16:51:48'),(1113,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/StringTable.php','2021-10-28 16:51:48'),(1114,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Style.php','2021-10-28 16:51:48'),(1115,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Theme.php','2021-10-28 16:51:48'),(1116,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Workbook.php','2021-10-28 16:51:48'),(1117,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/Worksheet.php','2021-10-28 16:51:48'),(1118,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel2007/WriterPart.php','2021-10-28 16:51:48'),(1119,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/BIFFwriter.php','2021-10-28 16:51:48'),(1120,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Escher.php','2021-10-28 16:51:48'),(1121,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Font.php','2021-10-28 16:51:48'),(1122,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Parser.php','2021-10-28 16:51:48'),(1123,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Workbook.php','2021-10-28 16:51:48'),(1124,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Worksheet.php','2021-10-28 16:51:48'),(1125,4,'system/library/export_import/Classes/PHPExcel/Writer/Excel5/Xf.php','2021-10-28 16:51:48'),(1126,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell','2021-10-28 16:51:48'),(1127,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Content.php','2021-10-28 16:51:48'),(1128,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Meta.php','2021-10-28 16:51:48'),(1129,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/MetaInf.php','2021-10-28 16:51:48'),(1130,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Mimetype.php','2021-10-28 16:51:48'),(1131,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Settings.php','2021-10-28 16:51:48'),(1132,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Styles.php','2021-10-28 16:51:48'),(1133,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Thumbnails.php','2021-10-28 16:51:48'),(1134,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/WriterPart.php','2021-10-28 16:51:48'),(1135,4,'system/library/export_import/Classes/PHPExcel/Writer/PDF/Core.php','2021-10-28 16:51:48'),(1136,4,'system/library/export_import/Classes/PHPExcel/Writer/PDF/DomPDF.php','2021-10-28 16:51:48'),(1137,4,'system/library/export_import/Classes/PHPExcel/Writer/PDF/mPDF.php','2021-10-28 16:51:48'),(1138,4,'system/library/export_import/Classes/PHPExcel/Writer/PDF/tcPDF.php','2021-10-28 16:51:48'),(1139,4,'system/library/export_import/Classes/PHPExcel/locale/bg/config','2021-10-28 16:51:48'),(1140,4,'system/library/export_import/Classes/PHPExcel/locale/cs/config','2021-10-28 16:51:48'),(1141,4,'system/library/export_import/Classes/PHPExcel/locale/cs/functions','2021-10-28 16:51:48'),(1142,4,'system/library/export_import/Classes/PHPExcel/locale/da/config','2021-10-28 16:51:48'),(1143,4,'system/library/export_import/Classes/PHPExcel/locale/da/functions','2021-10-28 16:51:48'),(1144,4,'system/library/export_import/Classes/PHPExcel/locale/de/config','2021-10-28 16:51:48'),(1145,4,'system/library/export_import/Classes/PHPExcel/locale/de/functions','2021-10-28 16:51:48'),(1146,4,'system/library/export_import/Classes/PHPExcel/locale/en/uk','2021-10-28 16:51:48'),(1147,4,'system/library/export_import/Classes/PHPExcel/locale/es/config','2021-10-28 16:51:48'),(1148,4,'system/library/export_import/Classes/PHPExcel/locale/es/functions','2021-10-28 16:51:48'),(1149,4,'system/library/export_import/Classes/PHPExcel/locale/fi/config','2021-10-28 16:51:48'),(1150,4,'system/library/export_import/Classes/PHPExcel/locale/fi/functions','2021-10-28 16:51:48'),(1151,4,'system/library/export_import/Classes/PHPExcel/locale/fr/config','2021-10-28 16:51:48'),(1152,4,'system/library/export_import/Classes/PHPExcel/locale/fr/functions','2021-10-28 16:51:48'),(1153,4,'system/library/export_import/Classes/PHPExcel/locale/hu/config','2021-10-28 16:51:48'),(1154,4,'system/library/export_import/Classes/PHPExcel/locale/hu/functions','2021-10-28 16:51:48'),(1155,4,'system/library/export_import/Classes/PHPExcel/locale/it/config','2021-10-28 16:51:48'),(1156,4,'system/library/export_import/Classes/PHPExcel/locale/it/functions','2021-10-28 16:51:48'),(1157,4,'system/library/export_import/Classes/PHPExcel/locale/nl/config','2021-10-28 16:51:48'),(1158,4,'system/library/export_import/Classes/PHPExcel/locale/nl/functions','2021-10-28 16:51:48'),(1159,4,'system/library/export_import/Classes/PHPExcel/locale/no/config','2021-10-28 16:51:48'),(1160,4,'system/library/export_import/Classes/PHPExcel/locale/no/functions','2021-10-28 16:51:48'),(1161,4,'system/library/export_import/Classes/PHPExcel/locale/pl/config','2021-10-28 16:51:48'),(1162,4,'system/library/export_import/Classes/PHPExcel/locale/pl/functions','2021-10-28 16:51:48'),(1163,4,'system/library/export_import/Classes/PHPExcel/locale/pt/br','2021-10-28 16:51:48'),(1164,4,'system/library/export_import/Classes/PHPExcel/locale/pt/config','2021-10-28 16:51:48'),(1165,4,'system/library/export_import/Classes/PHPExcel/locale/pt/functions','2021-10-28 16:51:48'),(1166,4,'system/library/export_import/Classes/PHPExcel/locale/ru/config','2021-10-28 16:51:48'),(1167,4,'system/library/export_import/Classes/PHPExcel/locale/ru/functions','2021-10-28 16:51:48'),(1168,4,'system/library/export_import/Classes/PHPExcel/locale/sv/config','2021-10-28 16:51:48'),(1169,4,'system/library/export_import/Classes/PHPExcel/locale/sv/functions','2021-10-28 16:51:48'),(1170,4,'system/library/export_import/Classes/PHPExcel/locale/tr/config','2021-10-28 16:51:48'),(1171,4,'system/library/export_import/Classes/PHPExcel/locale/tr/functions','2021-10-28 16:51:48'),(1172,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF5.php','2021-10-28 16:51:48'),(1173,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BIFF8.php','2021-10-28 16:51:48'),(1174,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Color/BuiltIn.php','2021-10-28 16:51:48'),(1175,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/Border.php','2021-10-28 16:51:48'),(1176,4,'system/library/export_import/Classes/PHPExcel/Reader/Excel5/Style/FillPattern.php','2021-10-28 16:51:48'),(1177,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer','2021-10-28 16:51:48'),(1178,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer.php','2021-10-28 16:51:48'),(1179,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer','2021-10-28 16:51:48'),(1180,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer.php','2021-10-28 16:51:48'),(1181,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Error.php','2021-10-28 16:51:48'),(1182,4,'system/library/export_import/Classes/PHPExcel/Shared/JAMA/utils/Maths.php','2021-10-28 16:51:48'),(1183,4,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/File.php','2021-10-28 16:51:48'),(1184,4,'system/library/export_import/Classes/PHPExcel/Shared/OLE/PPS/Root.php','2021-10-28 16:51:48'),(1185,4,'system/library/export_import/Classes/PHPExcel/Worksheet/AutoFilter/Column/Rule.php','2021-10-28 16:51:48'),(1186,4,'system/library/export_import/Classes/PHPExcel/Writer/OpenDocument/Cell/Comment.php','2021-10-28 16:51:48'),(1187,4,'system/library/export_import/Classes/PHPExcel/locale/en/uk/config','2021-10-28 16:51:48'),(1188,4,'system/library/export_import/Classes/PHPExcel/locale/pt/br/config','2021-10-28 16:51:48'),(1189,4,'system/library/export_import/Classes/PHPExcel/locale/pt/br/functions','2021-10-28 16:51:48'),(1190,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DgContainer/SpgrContainer/SpContainer.php','2021-10-28 16:51:48'),(1191,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE','2021-10-28 16:51:48'),(1192,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE.php','2021-10-28 16:51:48'),(1193,4,'system/library/export_import/Classes/PHPExcel/Shared/Escher/DggContainer/BstoreContainer/BSE/Blip.php','2021-10-28 16:51:48'),(1194,5,'admin/controller/extension/module/related_options.php','2021-12-10 17:55:33'),(1195,5,'admin/model/extension/module/related_options.php','2021-12-10 17:55:33'),(1196,5,'catalog/controller/extension/liveopencart/related_options.php','2021-12-10 17:55:33'),(1197,5,'catalog/model/extension/liveopencart/related_options.php','2021-12-10 17:55:33'),(1198,5,'system/library/liveopencart/ext/ro.php','2021-12-10 17:55:33'),(1199,5,'system/library/liveopencart/ext/ropro.php','2021-12-10 17:55:33'),(1200,5,'admin/language/en-gb/extension/module/related_options.php','2021-12-10 17:55:33'),(1201,5,'admin/language/en-gb/extension/module/related_options_common.php','2021-12-10 17:55:33'),(1202,5,'admin/language/ru-ru/extension/module/related_options.php','2021-12-10 17:55:33'),(1203,5,'admin/language/ru-ru/extension/module/related_options_common.php','2021-12-10 17:55:33'),(1204,5,'admin/view/javascript/liveopencart/related_options/ro_product_edit_page.js','2021-12-10 17:55:33'),(1205,5,'admin/view/template/extension/module/related_options.twig','2021-12-10 17:55:33'),(1206,5,'catalog/language/en-gb/extension/liveopencart/related_options.php','2021-12-10 17:55:33'),(1207,5,'catalog/language/ru-ru/extension/liveopencart/related_options.php','2021-12-10 17:55:33'),(1208,5,'system/library/liveopencart/lib/v0008/controlleradminextension.php','2021-12-10 17:55:33'),(1209,5,'system/library/liveopencart/lib/v0008/event_manager.php','2021-12-10 17:55:33'),(1210,5,'system/library/liveopencart/lib/v0008/extension.php','2021-12-10 17:55:33'),(1211,5,'system/library/liveopencart/lib/v0008/library.php','2021-12-10 17:55:33'),(1212,5,'system/library/liveopencart/lib/v0008/sub_library.php','2021-12-10 17:55:33'),(1213,5,'system/library/liveopencart/lib/v0008/theme_details.php','2021-12-10 17:55:33'),(1214,5,'catalog/view/theme/extension_liveopencart/related_options/js/liveopencart.related_options.js','2021-12-10 17:55:33'),(1215,5,'catalog/view/theme/extension_liveopencart/related_options/js/liveopencart.ro_common.js','2021-12-10 17:55:33'),(1216,5,'catalog/view/theme/extension_liveopencart/related_options/js/liveopencart.select_option_toggle.js','2021-12-10 17:55:33'),(1217,5,'catalog/view/theme/extension_liveopencart/related_options/js/product_page_common.js','2021-12-10 17:55:33'),(1218,5,'catalog/view/theme/extension_liveopencart/related_options/js/product_page_with_related_options.js','2021-12-10 17:55:33'),(1219,5,'catalog/view/theme/extension_liveopencart/related_options/tpl/product_page_script.twig','2021-12-10 17:55:33'),(1220,5,'system/library/liveopencart/lib/v0008/traits/cache.php','2021-12-10 17:55:33'),(1221,5,'system/library/liveopencart/lib/v0008/traits/config.php','2021-12-10 17:55:33'),(1222,5,'system/library/liveopencart/lib/v0008/traits/db.php','2021-12-10 17:55:33'),(1223,5,'system/library/liveopencart/lib/v0008/traits/installed.php','2021-12-10 17:55:33'),(1224,5,'system/library/liveopencart/lib/v0008/traits/json.php','2021-12-10 17:55:33'),(1225,5,'system/library/liveopencart/lib/v0008/traits/language.php','2021-12-10 17:55:33'),(1226,5,'system/library/liveopencart/lib/v0008/traits/resource.php','2021-12-10 17:55:33'),(1227,5,'system/library/liveopencart/lib/v0008/traits/theme.php','2021-12-10 17:55:33');
/*!40000 ALTER TABLE `oc_extension_path` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
INSERT INTO `oc_filter` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
INSERT INTO `oc_filter_description` VALUES (1,3,1,'Габарити'),(1,2,1,'Габариты'),(1,1,1,'Dimensions'),(2,3,1,'Механізм'),(2,2,1,'Механизм'),(2,1,1,'Mechanism');
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
INSERT INTO `oc_filter_group` VALUES (1,1);
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
INSERT INTO `oc_filter_group_description` VALUES (1,3,'Фільтр товарів'),(1,2,'Фильтр товаров'),(1,1,'Product filter');
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2009-01-06 23:26:25','2021-09-29 14:56:50'),(4,'UK Shipping','UK Shipping Zones','2009-06-23 01:14:53','2021-09-29 14:52:23');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_googleshopping_category` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_googleshopping_product` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product` DISABLE KEYS */;
INSERT INTO `oc_googleshopping_product` VALUES (1,219,0,NULL,'pending',0,0,0,0.0000,0.0000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_googleshopping_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_googleshopping_product_status` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_googleshopping_product_target` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_product_target` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_googleshopping_target` WRITE;
/*!40000 ALTER TABLE `oc_googleshopping_target` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_googleshopping_target` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1),(7,1,5,1),(8,1,6,1),(9,1,8,0);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (6,3,'Доставка','&lt;p&gt;&lt;img src=&quot;https://www.sit.com.ua/image/catalog/demo/banners/dostavka.3.jpg&quot; style=&quot;width: 100%;&quot;&gt;&lt;span style=&quot;font-size: 24px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 24px;&quot;&gt;Самовивіз:&lt;/span&gt;&lt;/p&gt;&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://www.sit.com.ua/image/catalog/demo/banners/dostavka.jpg&quot; style=&quot;width: 50%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;&lt;span style=&quot;background-color: transparent; font-size: 18px;&quot;&gt;із складу -&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: transparent; font-size: 18px;&quot;&gt;місто Тернопіль&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://www.google.com.ua/maps/place/%D0%93%D1%83%D1%80%D1%82%D0%BE%D0%B2%D0%B8%D0%B9+%D1%81%D0%BA%D0%BB%D0%B0%D0%B4+SIT.ORG.UA/@49.5485505,25.6424776,17z/data=!3m1!4b1!4m5!3m4!1s0x473033250a8a6f0f:0xf1d4604ccf609dfa!8m2!3d49.5485504!4d25.6446661?hl=uk&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;вул. Сахарова, 3&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;пн - пт 9:00 - 18-00&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;сб - нд вихідний&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;&lt;span style=&quot;font-size: 24px;&quot;&gt;Відправлення по Україні:&lt;/span&gt;&lt;/p&gt;&lt;ol&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Відправка замовлення здійснюється за умови 100% передоплати, або на умовах оплати з послугою «Накладений платіж» (+ 2,6% від вартості товару).\r\n&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Товар з наявності відправляється не пізніше наступного робочого дня від моменту отримання коштів на розрахунковий рахунок.\r\n&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;При виготовленні під замовлення, відправка здійснюється на наступний день після виходу з виробництва. Окремо інформуємо.\r\n&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Тариф на доставку по Україні діє для відправки кур\'єрською службою &lt;/span&gt;&lt;a href=&quot;https://www.meest-express.com.ua/ua/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&quot;Міст-Експрес&quot;&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;,&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://novaposhta.ua/delivery&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&quot;Нова Пошта&lt;/span&gt;&quot;&lt;/a&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;,&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;a href=&quot;https://autolux-post.com.ua/calc/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&quot;Автолюкс&quot;&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;.&lt;/span&gt;\r\n&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;Товар доставляється адресно - до під\'їзду, і не включає в себе збирання і підняття на поверх. Вся продукція доставляється в розібраному вигляді і заводській упаковці.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\r\nПослуги збирання та занесення (тільки Тернопіль) оплачуються окремо, тариф уточнюйте у наших менеджерів з продажу.\r\n&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;При отриманні товару обов\'язково переконайтеся в цілісності вмісту. У випадку пошкоджень з вини перевізника - повідомте кур\'єру і зафіксуйте актом.&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\r\nУ разі виявлення дефектів - повідомте нашим менеджерам по телефону, або на електронну пошту: &lt;a href=&quot;mailto:office@sit.com.ua&quot;&gt;office@sit.com.ua&lt;/a&gt;, ми оформимо відповідні акти і зробимо заміну.&lt;br&gt;&lt;/span&gt;&lt;/li&gt;&lt;/ol&gt;','Доставка','',''),(4,3,'Про магазин','&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-size: 14px;&quot;&gt;Інтернет-магазин SIT.COM.UA - сайт що займається реалізацією стільців, крісел, офісних меблів, меблів для будинку в інтернеті. Дозволяє користувачам сформувати замовлення на купівлю, вибрати спосіб оплати і доставки замовлення в мережі Інтернет. Вибравши необхідні товари, користувач зазвичай має можливість придбати товар з наявності або ж замовити продукцію у виробництво, вибравши саме ту комплектацію яка найбільш підходить клієнту відповідно до його вимог.\r\n&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp; &amp;nbsp;В асортименті&amp;nbsp; Ви знайдете продукцію перевірених вітчизняних і зарубіжних виробників стільців, крісел та меблів, отримаєте гарантію якості продукції, а також післягарантійне обслуговування. Наш магазин надасть Вам широкий вибір комп\'ютерних крісел, стільців для відвідувачів, конференційних крісел, крісел для керівників, стільців для кафе, барів і ресторанів, дитячих крісел, а також комплектуючі по ремонту всіх видів продукції представленого переліку.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://www.sit.com.ua/image/catalog/demo/banners/club_interior.jpg&quot; style=&quot;width: 1036px;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;br&gt;&lt;/span&gt;\r\n&lt;/p&gt;','Про магазин','',''),(5,2,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','',''),(5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','Terms &amp; Conditions','',''),(3,2,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','',''),(3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','Privacy Policy','',''),(3,3,'Оплата','&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://www.sit.com.ua/image/catalog/demo/banners/oplata.2.jpg&quot; style=&quot;width: 1036px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;table class=&quot;table table-bordered&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;background-color: transparent; font-size: 18px;&quot;&gt;Готівкою в пункті видачі (здійснюється при отриманні в м. Тернопіль)&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;На розрахунковий рахунок&amp;nbsp;&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Приват 24&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;LIQPAY (оплата картою прямо на сайті)&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Накладений платіж + 2,6% від вартості товару&amp;nbsp;(оплата готівкою або карткою при отриманні товару у відділенні перевізника «Нова Пошта» та «Міст Експрес»).&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/td&gt;&lt;td&gt;&lt;p&gt;&lt;img src=&quot;https://www.sit.com.ua/image/catalog/demo/banners/oplata.1.jpg&quot; style=&quot;width: 100%;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&amp;nbsp;&lt;p&gt;&lt;/p&gt;','Оплата','',''),(4,2,'О магазине','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','О магазине','',''),(4,1,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','About Us','',''),(6,2,'Доставка','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Доставка','',''),(6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','Delivery Information','',''),(7,3,'Умови повернення/заміни','&lt;p&gt;ПОРЯДОК ПРИЙОМУ ТА ЗАМІНИ ТОВАРУ НЕНАЛЕЖНОЇ АБО НАЛЕЖНОЇ ЯКОСТІ&lt;/p&gt;&lt;p&gt;&amp;nbsp; При отриманні Товару на складі перевізника, від кур’єра або Продавця, Покупець зобов’язаний перевірити зовнішню цілісність упаковки, після чого відкрити її та безпосередньо пересвідчитися у належному зовнішньому стані Товару (відсутності механічних пошкоджень) та повноті його комплектності. &lt;/p&gt;&lt;p&gt;&amp;nbsp; У випадку наявності хоча б одного з перерахованих недоліків, Покупець зобов’язаний зафіксувати його у складеному акті довільної форми. Акт повинен бути підписаний Покупцем та співробітником перевізника або Продавця. При можливості недоліки повинні бути зафіксовані засобами фото- або відеозйомки.\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; Протягом 1 (одного) дня Покупець зобов’язаний повідомити представника Продавця про виявлені недоліки та домовитися про заміну або повернення Товару.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Сторони погодили, що у випадку недотримання обов’язкових вимог вказаної процедури, визнається отримання Покупцем Товару у належному стані – без будь-яких механічних пошкоджень та у повній комплектності.\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; У випадку отримання Товару у належному стані, але при виявленні протягом встановленого гарантійного строку недоліків, пов’язаних із його роботою, Покупець має право на:&lt;/p&gt;&lt;p&gt;&amp;nbsp; - пропорційне зменшення ціни; &lt;/p&gt;&lt;p&gt;&amp;nbsp; або\r\n\r\n - безоплатне усунення недоліків товару в розумний строк; &lt;/p&gt;&lt;p&gt;&amp;nbsp; або\r\n\r\n - відшкодування витрат на усунення недоліків товару.\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; Гарантійні зобов’язання Продавця виникають у випадку надання Покупцем документу, що посвідчує факт купівлі-продажу Товару (накладної).&lt;/p&gt;&lt;p&gt;&amp;nbsp; Гарантійний строк на Товар становить:\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; Відповідно до ДСТУ 16371-93 «Меблі. Загальні технічні умови» на офісні меблі - 18 (вісімнадцять) календарних місяців.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Відповідно до ДСТУ 19917-93 «Меблі для сидіння та лежання» на крісла та стільці – 12 (дванадцять) календарних місяців з дати вводу Товару в експлуатацію.\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; Датою вводу Товару в експлуатацію є дата підписання Сторонами відповідної товарної накладної.\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; При пред’явленні вимог про безоплатне усунення недоліків, такі роботи повинні бути виконані протягом 21 (двадцять одного) робочого дня з дати пред’явлення Товару. &lt;/p&gt;&lt;p&gt;&amp;nbsp; Датою пред’явлення Товару вважається дата його надходження до Продавця. В такому разі доставка малогабаритних Товарів і Товарів вагою менше п\'яти кілограмів Продавцю та їх повернення Покупцеві здійснюються за рахунок останнього.&lt;/p&gt;&lt;p&gt;&amp;nbsp; У разі виявлення протягом встановленого гарантійного строку істотних недоліків, які виникли з вини виробника товару (Продавця), або фальсифікації товару, підтвердженої висновком експертизи, Покупець, в порядку та у строки встановлені законодавством і на підставі обов\'язкових для сторін умов Договору, має право за своїм вибором вимагати від Продавця:\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; - розірвання договору та повернення сплаченої за Товар грошової суми;\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; - заміни товару на такий же Товар або на аналогічний, з числа наявних у Продавця.\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; У такому випадку, при підтвердженні Продавцем істотних недоліків Товару та при волевиявленні Покупця, сплачені грошові кошти підлягають поверненню останньому на вказані ним реквізити протягом 7 (семи) банківських днів з дня повернення Товару.\r\n&lt;/p&gt;&lt;p&gt;&amp;nbsp; У випадках заміни неякісного Товару оплата послуг перевізника здійснюється коштом Покупця.&amp;nbsp; &lt;/p&gt;&lt;p&gt;&amp;nbsp; Покупець протягом 14 (чотирнадцяти) днів з моменту отримання Товару належної якості має право обміняти на аналогічний у Продавця, в якого він був придбаний, якщо Товар не задовольнив його за формою, габаритами, фасоном, кольором, розміром або з інших причин не може бути ним використаний за призначенням.&lt;/p&gt;&lt;p&gt;&amp;nbsp; Обмін Товару належної якості провадиться, якщо він не використовувався і якщо збережено його товарний вигляд, споживчі властивості, пломби, ярлики, а також документ (накладну), виданий Покупцеві разом з проданим товаром. У такому випадку послуги перевізника з транспортування Товару з метою його обміну оплачує Покупець. Зазначена вимога підлягає задоволенню у день повернення Товару Покупцем та отримання його Покупцем.\r\n\r\nЯкщо на момент обміну аналогічного товару немає у продажу, Покупець має право або придбати будь-які інші товари з наявного асортименту з відповідним перерахуванням вартості, або розірвати договір та одержати назад гроші у розмірі вартості повернутого товару, або здійснити обмін товару на аналогічний при першому ж надходженні відповідного товару в продаж.&lt;/p&gt;&lt;p&gt;&amp;nbsp; При розірванні договору купівлі-продажу розрахунки із Покупцем провадяться виходячи з вартості товару на час його купівлі. Гроші, сплачені за товар, повертаються Покупцеві на вказані ним реквізити протягом 7 (семи) банківських днів з дня повернення Товару. \r\n\r\nПід документом Сторони розуміють накладну, отриману Покупцем разом з Товаром.\r\n\r\n    У будь-якому випадку повернення Товару повинно відбуватися в оригінальній упаковці, в якій надійшов Товар.&lt;br&gt;&lt;/p&gt;','Правила та умови','Правила та умови','Правила та умови'),(7,2,'Правила та умови','&lt;p&gt;Правила та умови&lt;br&gt;&lt;/p&gt;','Правила та умови','Правила та умови','Правила та умови'),(7,1,'Правила та умови','&lt;p&gt;Правила та умови&lt;br&gt;&lt;/p&gt;','Правила та умови','',''),(8,3,'Політика конфіденційності','&lt;p&gt;&lt;span&gt;Положення про обробку і захист персональних даних у базах персональних даних, володільцем яких є продавець&lt;/span&gt;&lt;/p&gt;\r\n&lt;h3&gt;Зміст&lt;/h3&gt;\r\n&lt;ol start=&quot;1&quot; type=&quot;1&quot;&gt;\r\n&lt;li&gt;Загальні поняття та сфера застосування.&lt;/li&gt;\r\n&lt;li&gt;Перелік баз персональних даних.&lt;/li&gt;\r\n&lt;li&gt;Мета обробки персональних даних.&lt;/li&gt;\r\n&lt;li&gt;Порядок обробки персональних даних: отримання згоди, повідомлення про права та дії з персональними даними суб’єкта персональних даних.&lt;/li&gt;\r\n&lt;li&gt;Місцезнаходження бази персональних даних.&lt;/li&gt;\r\n&lt;li&gt;Умови розкриття інформації про персональні дані третім особам.&lt;/li&gt;\r\n&lt;li&gt;Захист персональних даних: способи захисту, відповідальна особа, працівники, які безпосередньо здійснюють обробку та/або мають доступ до персональних даних у зв’язку з виконанням своїх службових обов’язків, строк зберігання персональних даних.&lt;/li&gt;\r\n&lt;li&gt;Права суб’єкта персональних даних.&lt;/li&gt;\r\n&lt;li&gt;Порядок роботи з запитами суб’єкта персональних даних.&lt;/li&gt;\r\n&lt;li&gt;Державна реєстрація бази персональних даних.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;h3&gt;&lt;/h3&gt;\r\n&lt;h3&gt;1. Загальні поняття та сфера застосування.&lt;/h3&gt;\r\n&lt;p&gt;1.1. Визначення термінів:&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;база персональних даних&lt;/span&gt;&amp;nbsp;— іменована сукупність упорядкованих персональних даних в електронній формі та/або у формі картотек персональних даних;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;відповідальна особа&lt;/span&gt;&amp;nbsp;— визначена особа, яка організовує роботу, пов’язану із захистом персональних даних при їх обробці, відповідно до закону;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;володілець бази &amp;nbsp;персональних даних&lt;/span&gt;&amp;nbsp;— фізична або юридична особа, якій законом або за згодою суб’єкта персональних даних надано право на обробку цих даних, яка затверджує мету обробки персональних даних у цій базі даних, встановлює склад цих даних та процедури їх обробки, якщо інше не визначено законом;&lt;/p&gt;\r\n&lt;p&gt;Державний реєстр баз персональних даних — єдина державна інформаційна система збору, накопичення та обробки відомостей про зареєстровані бази персональних даних;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;загальнодоступні джерела &amp;nbsp;персональних даних —&lt;/span&gt;&amp;nbsp;довідники, адресні книги, реєстри, списки, каталоги, інші систематизовані збірники відкритої інформації, які містять персональні дані, розміщені та опубліковані з відома суб’єкта персональних даних.&lt;/p&gt;\r\n&lt;p&gt;Не вважаються загальнодоступними джерелами персональних даних соціальні мережі та інтернет-ресурси, в яких суб’єкт персональних даних залишають свої персональні дані (окрім випадків, коли суб’єктом персональних даних прямо зазначено, що персональні дані розміщені з метою їх вільного поширення та використання);&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;згода суб’єкта &amp;nbsp;персональних даних&lt;/span&gt;&amp;nbsp;— будь-яке документоване, добровільне волевиявлення фізичної особи щодо надання дозволу на обробку її персональних даних відповідно до сформульованої мети їх обробки;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;знеособлення персональних &amp;nbsp;даних&lt;/span&gt;&amp;nbsp;— вилучення відомостей, які дають змогу ідентифікувати особу;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;обробка персональних &amp;nbsp;даних —&lt;/span&gt;&amp;nbsp;будь-яка дія або сукупність дій, здійснених повністю або частково в інформаційній (автоматизованій) системі та/або в картотеках персональних даних, які пов’язані зі збиранням, реєстрацією, накопиченням, зберіганням, адаптуванням, зміною, поновленням, використанням і поширенням (розповсюдженням, реалізацією, передачею), знеособленням, знищенням відомостей про фізичну особу;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;персональні дані —&lt;/span&gt;&amp;nbsp;відомості чи сукупність відомостей про фізичну особу, яка ідентифікована або може бути конкретно ідентифікована;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;розпорядник бази &amp;nbsp;персональних даних —&lt;/span&gt;&amp;nbsp;фізична чи юридична особа, якій володільцем бази персональних даних або законом надано право обробляти ці дані.&lt;/p&gt;\r\n&lt;p&gt;Не є розпорядником бази персональних даних особа, якій володільцем та/або розпорядником бази персональних даних доручено здійснювати роботи технічного характеру з базою персональних даних без доступу до змісту персональних даних;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;суб’єкт персональних &amp;nbsp;даних —&lt;/span&gt;&amp;nbsp;фізична особа, стосовно якої відповідно до закону здійснюється обробка її персональних даних;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;третя особа —&lt;/span&gt;&amp;nbsp;будь-яка особа, за винятком суб’єкта персональних даних, володільця чи розпорядника бази персональних даних та уповноваженого державного органу з питань захисту персональних даних, якій володільцем чи розпорядником бази персональних даних здійснюється передача персональних даних відповідно до закону;&lt;/p&gt;\r\n&lt;p&gt;&lt;span&gt;особливі категорії даних &amp;nbsp;—&lt;/span&gt;&amp;nbsp;персональні дані про расове або етнічне походження, політичні, релігійні або світоглядні переконання, членство в політичних партіях та професійних спілках, а також даних, що стосуються здоров’я чи статевого життя.&lt;/p&gt;\r\n&lt;p&gt;1.2. Дане Положення обов’язкове для застосування відповідальною особою та співробітниками продавця, які безпосередньо здійснюють обробку та/або мають доступ до персональних даних у зв’язку з виконанням своїх службових обов’язків.&lt;/p&gt;\r\n&lt;h3&gt;2. Перелік баз персональних даних.&lt;/h3&gt;\r\n&lt;p&gt;2.1. Продавець є власником наступних баз персональних даних:&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n&lt;li&gt;база персональних даних контрагенти.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;&lt;/h3&gt;\r\n&lt;h3&gt;3. Мета обробки персональних даних.&lt;/h3&gt;\r\n&lt;p&gt;3.1. Метою обробки персональних даних у системі є зберігання та обслуговування даних контрагентів, відповідно до статей 6, 7 Закону України «Про захист персональних даних»:.&lt;/p&gt;\r\n&lt;p&gt;3.2. Метою обробки персональних даних є забезпечення реалізації цивільно-правових відносин, надання/ отримання та здійснення розрахунків за придбані товари/послуги відповідно до Податкового кодексу України, Закону України «Про бухгалтерський облік та фінансову звітність в Україні».&lt;/p&gt;\r\n&lt;h3&gt;4. Порядок обробки персональних даних: отримання згоди, повідомлення про права та дії з персональними даними суб’єкта персональних даних.&lt;/h3&gt;\r\n&lt;p&gt;4.1. Згода суб’єкта персональних даних має бути добровільним волевиявленням фізичної особи щодо надання дозволу на обробку її персональних даних відповідно до сформульованої мети їх обробки. Згода суб’єкта персональних даних може бути надана у наступних формах:&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n&lt;li&gt;документ на паперовому носії з реквізитами, що дає змогу ідентифікувати цей документ і фізичну особу;&lt;/li&gt;\r\n&lt;li&gt;електронний документ, який має містити обов’язкові реквізити, що дають змогу ідентифікувати цей документ та фізичну особу. Добровільне волевиявлення фізичної особи щодо надання дозволу на обробку її персональних даних доцільно засвідчувати електронним підписом суб’єкта персональних даних.&lt;/li&gt;\r\n&lt;li&gt;відмітка на електронній сторінці документа чи в електронному файлі, що обробляється в інформаційній системі на основі документованих програмно-технічних рішень.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;4.2. Згода суб’єкта персональних даних надається під час оформлення цивільно-правових відносин відповідно до чинного законодавства.&lt;/p&gt;\r\n&lt;p&gt;4.3. Повідомлення суб’єкта персональних даних про включення його персональних даних до бази персональних даних, права, визначені Законом України «Про захист персональних даних», мету збору даних та осіб, яким передаються його персональні дані здійснюється під час оформлення цивільно-правових відносин відповідно до чинного законодавства.&lt;/p&gt;\r\n&lt;p&gt;4.4. Обробка персональних даних про расове або етнічне походження, політичні, релігійні або світоглядні переконання, членство в політичних партіях та професійних спілках, а також даних, що стосуються здоров’я чи статевого життя (особливі категорії даних) забороняється.&lt;/p&gt;\r\n&lt;h3&gt;5. Місцезнаходження бази персональних даних.&lt;/h3&gt;\r\n&lt;p&gt;5.1. Вказані у розділі 2 цього Положення бази персональних даних знаходяться за адресою продавця.&lt;/p&gt;\r\n&lt;h3&gt;6. Умови розкриття інформації про персональні дані третім особам.&lt;/h3&gt;\r\n&lt;p&gt;6.1. Порядок доступу до персональних даних третіх осіб визначається умовами згоди суб’єкта персональних даних, наданої володільцю бази персональних даних на обробку цих даних, або відповідно до вимог закону.&lt;/p&gt;\r\n&lt;p&gt;6.2. Доступ до персональних даних третій особі не надається, якщо зазначена особа відмовляється взяти на себе зобов’язання щодо забезпечення виконання вимог Закону України «Про захист персональних даних» або неспроможна їх забезпечити.&lt;/p&gt;\r\n&lt;p&gt;6.3. Суб’єкт відносин, пов’язаних з персональними даними, подає запит щодо доступу (далі — запит) до персональних даних володільцю бази персональних даних.&lt;/p&gt;\r\n&lt;p&gt;6.4. У запиті зазначаються:&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n&lt;li&gt;прізвище, ім’я та по батькові, місце проживання (місце перебування) і реквізити документа, що посвідчує фізичну особу, яка подає запит (для фізичної особи — заявника);&lt;/li&gt;\r\n&lt;li&gt;найменування, місцезнаходження юридичної особи, яка подає запит, посада, прізвище, ім’я та по батькові особи, яка засвідчує запит; підтвердження того, що зміст запиту відповідає повноваженням юридичної особи (для юридичної особи — заявника);&lt;/li&gt;\r\n&lt;li&gt;прізвище, ім’я та по батькові, а також інші відомості, що дають змогу ідентифікувати фізичну особу, стосовно якої робиться запит;&lt;/li&gt;\r\n&lt;li&gt;відомості про базу персональних даних, стосовно якої подається запит, чи відомості про володільця чи розпорядника цієї бази;&lt;/li&gt;\r\n&lt;li&gt;перелік персональних даних, що запитуються;&lt;/li&gt;\r\n&lt;li&gt;мета запиту.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;6.5. Строк вивчення запиту на предмет його задоволення не може перевищувати десяти робочих днів з дня його надходження.&lt;/p&gt;\r\n&lt;p&gt;Протягом цього строку володілець бази персональних даних доводить до відома особи, яка подає запит, що запит буде задоволене або відповідні персональні дані не підлягають наданню, із зазначенням підстави, визначеної у відповідному нормативно-правовому акті.&lt;/p&gt;\r\n&lt;p&gt;Запит задовольняється протягом тридцяти календарних днів з дня його надходження, якщо інше не передбачено законом.&lt;/p&gt;\r\n&lt;p&gt;6.6. Усі працівники володільця бази персональних даних зобов’язані додержуватися вимог конфіденційності щодо персональних даних та інформації щодо рахунків у цінних паперах та обігу цінних паперів.&lt;/p&gt;\r\n&lt;p&gt;6.7. Відстрочення доступу до персональних даних третіх осіб допускається у разі, якщо необхідні дані не можуть бути надані протягом тридцяти календарних днів з дня надходження запиту. При цьому загальний термін вирішення питань, порушених у запиті, не може перевищувати сорока п’яти календарних днів.&lt;/p&gt;\r\n&lt;p&gt;6.8. Повідомлення про відстрочення доводиться до відома третьої особи, яка подала запит, у письмовій формі з роз’ясненням порядку оскарження такого рішення.&lt;/p&gt;\r\n&lt;p&gt;6.9. У повідомленні про відстрочення зазначаються:&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n&lt;li&gt;прізвище, ім’я та по батькові посадової особи;&lt;/li&gt;\r\n&lt;li&gt;дата відправлення повідомлення;&lt;/li&gt;\r\n&lt;li&gt;причина відстрочення;&lt;/li&gt;\r\n&lt;li&gt;строк, протягом якого буде задоволене запит.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;6.10. Відмова у доступі до персональних даних допускається, якщо доступ до них заборонено згідно із законом.&lt;/p&gt;\r\n&lt;p&gt;6.11. У повідомленні про відмову зазначаються:&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n&lt;li&gt;прізвище, ім’я, по батькові посадової особи, яка відмовляє у доступі;&lt;/li&gt;\r\n&lt;li&gt;дата відправлення повідомлення;&lt;/li&gt;\r\n&lt;li&gt;причина відмови.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;6.12. Рішення про відстрочення або відмову із доступі до персональних даних може бути оскаржено до уповноваженого державного органу з питань захисту персональних даних, інших органів державної влади та органів місцевого самоврядування, до повноважень яких належить здійснення захисту персональних даних, або до суду.&lt;/p&gt;\r\n&lt;h3&gt;7. Захист персональних даних: способи захисту, відповідальна особа, працівники, які безпосередньо здійснюють обробку та/або мають доступ до персональних даних у зв’язку з виконанням своїх службових обов’язків, строк зберігання персональних даних.&lt;/h3&gt;\r\n&lt;p&gt;7.1. Володільця бази персональних даних обладнано системними і програмно-технічними засобами та засобами зв’язку, які запобігають втратам, крадіжкам, несанкціонованому знищенню, викривленню, підробленню, копіюванню інформації і відповідають вимогам міжнародних та національних стандартів.&lt;/p&gt;\r\n&lt;p&gt;7.2. Відповідальна особа організовує роботу, пов’язану із захистом персональних даних при їх обробці, відповідно до закону. Відповідальна особа визначається наказом Володільця бази персональних даних.&lt;/p&gt;\r\n&lt;p&gt;Обов’язки відповідальної особи щодо організації роботи, пов’язаної із захистом персональних даних при їх обробці зазначаються у посадовій інструкції.&lt;/p&gt;\r\n&lt;p&gt;7.3. Відповідальна особа зобов’язана:&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n&lt;li&gt;знати законодавство України в сфері захисту персональних даних;&lt;/li&gt;\r\n&lt;li&gt;розробити процедури доступу до персональних даних співробітників відповідно до їхніх професійних чи службових або трудових обов’язків;&lt;/li&gt;\r\n&lt;li&gt;забезпечити виконання співробітниками Володільця бази персональних даних вимог законодавства України в сфері захисту персональних даних та внутрішніх документів, що регулюють діяльність Володільця бази персональних даних щодо обробки і захисту персональних даних у базах персональних даних;&lt;/li&gt;\r\n&lt;li&gt;розробити порядок (процедуру) внутрішнього контролю за дотриманням вимог законодавства України в сфері захисту персональних даних та внутрішніх документів, що регулюють діяльність Володільця бази персональних даних щодо обробки і захисту персональних даних у базах персональних даних, який, зокрема, повинен містити норми щодо періодичності здійснення такого контролю;&lt;/li&gt;\r\n&lt;li&gt;повідомляти Володільця бази персональних даних про факти порушень співробітниками вимог законодавства України в сфері захисту персональних даних та внутрішніх документів, що регулюють діяльність Володільця бази персональних даних щодо обробки і захисту персональних даних у базах персональних даних у термін не пізніше одного робочого дня з моменту виявлення таких порушень;&lt;/li&gt;\r\n&lt;li&gt;забезпечити зберігання документів, що підтверджують надання суб’єктом персональних даних згоди на обробку своїх персональних даних та повідомлення вказаного суб’єкта про його права.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;7.4. З метою виконання своїх обов’язків відповідальна особа має право:&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n&lt;li&gt;отримувати необхідні документи, у тому числі накази й інші розпорядчі документи, видані Володільцем бази персональних даних , пов’язані із обробкою персональних даних;&lt;/li&gt;\r\n&lt;li&gt;робити копії з отриманих документів, у тому числі копії файлів, будь-яких записів, що зберігаються в локальних обчислювальних мережах і автономних комп’ютерних системах;&lt;/li&gt;\r\n&lt;li&gt;брати участь в обговоренні виконуваних ним обов’язків організації роботи, пов’язаної із захистом персональних даних при їх обробці;&lt;/li&gt;\r\n&lt;li&gt;вносити на розгляд пропозиції щодо покращення діяльності та вдосконалення методів роботи, подавати зауваження та варіанти усунення виявлених недоліків у процесі обробки персональних даних;&lt;/li&gt;\r\n&lt;li&gt;одержувати пояснення з питань здійснення обробки персональних даних;&lt;/li&gt;\r\n&lt;li&gt;підписувати та візувати документи в межах своєї компетенції.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;7.5. Працівники, які безпосередньо здійснюють обробку та/або мають доступ до персональних даних у зв’язку з виконанням своїх службових (трудових) обов’язків зобов’язані дотримуватись вимог законодавства України в сфері захисту персональних даних та внутрішніх документів, щодо обробки і захисту персональних даних у базах персональних даних.&lt;/p&gt;\r\n&lt;p&gt;7.6. Працівники, що мають доступ до персональних даних, у тому числі, здійснюють їх обробку зобов’язані не допускати розголошення у будь-який спосіб персональних даних, які їм було довірено або які стали відомі у зв’язку з виконанням професійних чи службових або трудових обов’язків. Таке зобов’язання чинне після припинення ними діяльності, пов’язаної з персональними даними, крім випадків, установлених законом.&lt;/p&gt;\r\n&lt;p&gt;7.7.Особи, що мають доступ до персональних даних, у тому числі, здійснюють їх обробку у разі порушення ними вимог Закону України «Про захист персональних даних» несуть відповідальність згідно законодавства України.&lt;/p&gt;\r\n&lt;p&gt;7.8. Персональні дані не повинні зберігатися довше, ніж це необхідно для мети, для якої такі дані зберігаються, але у будь-якому разі не довше строку зберігання даних, визначеного згодою суб’єкта персональних даних на обробку цих даних.&lt;/p&gt;\r\n&lt;h3&gt;8. Права суб’єкта персональних даних.&lt;/h3&gt;\r\n&lt;p&gt;8.1. Суб’єкт персональних даних має право:&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n&lt;li&gt;знати про місцезнаходження бази персональних даних, яка містить його персональні дані, її призначення та найменування, місцезнаходження та / або місце проживання (перебування) володільця чи розпорядника цієї бази або дати відповідне доручення щодо отримання цієї інформації уповноваженим ним особам, крім випадків, встановлених законом;&lt;/li&gt;\r\n&lt;li&gt;отримувати інформацію про умови надання доступу до персональних даних, зокрема інформацію про третіх осіб, яким передаються його персональні дані, що містяться у відповідній базі персональних даних;&lt;/li&gt;\r\n&lt;li&gt;на доступ до своїх персональних даних, що містяться у відповідній базі персональних даних;&lt;/li&gt;\r\n&lt;li&gt;отримувати не пізніш як за тридцять календарних днів з дня надходження запиту, крім випадків, передбачених законом, відповідь про те, чи зберігаються його персональні дані у відповідній базі персональних даних, а також отримувати зміст його персональних даних, які зберігаються;&lt;/li&gt;\r\n&lt;li&gt;пред’являти вмотивовану вимогу із запереченням проти обробки своїх персональних даних органами державної влади, органами місцевого самоврядування при здійсненні їхніх повноважень, передбачених законом;&lt;/li&gt;\r\n&lt;li&gt;пред’являти вмотивовану вимогу щодо зміни або знищення своїх персональних даних будь-яким володільцем та розпорядником цієї бази, якщо ці дані обробляються незаконно чи є недостовірними;&lt;/li&gt;\r\n&lt;li&gt;на захист своїх персональних даних від незаконної обробки та випадкової втрати, знищення, пошкодження у зв’язку з умисним приховуванням, ненаданням чи несвоєчасним їх наданням, а також на захист від надання відомостей, що є недостовірними чи ганьблять честь, гідність та ділову репутацію фізичної особи;&lt;/li&gt;\r\n&lt;li&gt;звертатися з питань захисту своїх прав щодо персональних даних до органів державної влади, органів місцевого самоврядування, до повноважень яких належить здійснення захисту персональних даних;&lt;/li&gt;\r\n&lt;li&gt;застосовувати засоби правового захисту в разі порушення законодавства про захист персональних даних.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;&lt;/h3&gt;\r\n&lt;h3&gt;9. Порядок роботи з запитами суб’єкта персональних даних.&lt;/h3&gt;\r\n&lt;p&gt;9.1. Суб’єкт персональних даних має право на одержання будь-яких відомостей про себе у будь-якого суб’єкта відносин, пов’язаних з персональними даними, без зазначення мети запиту, крім випадків, установлених законом.&lt;/p&gt;\r\n&lt;p&gt;9.2. Доступ суб’єкта персональних даних до даних про себе здійснюється безоплатно.&lt;/p&gt;\r\n&lt;p&gt;9.3. Суб’єкт персональних даних подає запит щодо доступу (далі — запит) до персональних даних володільцю бази персональних даних.&lt;/p&gt;\r\n&lt;p&gt;У запиті зазначаються:&lt;/p&gt;\r\n&lt;ul type=&quot;disc&quot;&gt;\r\n&lt;li&gt;прізвище, ім’я та по батькові, місце проживання (місце перебування) і реквізити документа, що посвідчує особу суб’єкта персональних даних;&lt;/li&gt;\r\n&lt;li&gt;інші відомості, що дають змогу ідентифікувати особу суб’єкта персональних даних;&lt;/li&gt;\r\n&lt;li&gt;відомості про базу персональних даних, стосовно якої подається запит, чи відомості про володільця чи розпорядника цієї бази;&lt;/li&gt;\r\n&lt;li&gt;перелік персональних даних, що запитуються.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;9.4. Строк вивчення запиту на предмет його задоволення не може перевищувати десяти робочих днів з дня його надходження.&lt;/p&gt;\r\n&lt;p&gt;9.5. Протягом цього строку володілець бази персональних даних доводить до відома суб’єкта персональних даних, що запит буде задоволене або відповідні персональні дані не підлягають наданню, із зазначенням підстави, визначеної у відповідному нормативно-правовому акті.&lt;/p&gt;\r\n&lt;p&gt;9.6. Запит задовольняється протягом тридцяти календарних днів з дня його надходження, якщо інше не передбачено законом.&lt;/p&gt;\r\n&lt;h3&gt;10. Державна реєстрація бази персональних даних.&lt;/h3&gt;\r\n&lt;p&gt;10.1. Державна реєстрація баз персональних даних здійснюється відповідно до статті 9 Закону України «Про захист персональних даних».&lt;/p&gt;','Політика конфіденційності','Політика конфіденційності','Політика конфіденційності'),(5,3,'Угода користувача','&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Договір&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;на купівлю товарів через Інтернет – магазин&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Цей Договір є публічним договором – офертою (пропозицією) ФОП Діхтярук В.А. (надалі по тексту – «Продавець») з фізичною особою (надалі – «Покупець»), що включає всі суттєві умови купівлі – продажу товарів на відстані за допомогою засобів дистанційного зв’язку (тобто через Інтернет – магазин &lt;a href=&quot;https://www.sit.com.ua/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&quot;www.sit.com.ua&quot;&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;).&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Відносини між Продавцем і Покупцем, що виникли в результаті укладення та виконання цього Договору, регулюються цим Договором, а в частині, не врегульованій договором – нормами Цивільного Кодексу, Законом України «Про захист прав споживачів» № 1023-XII від 12 травня 1991 року, Правилами роздрібної торгівлі непродовольчими товарами, затвердженими наказом Міністерства економіки України № 104 від 19 квітня 2007 року.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;1. Терміни та визначення.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;1.1. «Товар» - меблі, комплектуючі, аксесуари, що пропонуються до продажу в Інтернет-магазині &lt;a href=&quot;https://www.sit.com.ua/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&quot;www.sit.com.ua&quot;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;або вже придбані Покупцем у Продавця дистанційним способом.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;1.2. «Інтернет – магазин» - сайт Продавця &lt;a href=&quot;https://www.sit.com.ua/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&quot;www.sit.com.ua&quot;&lt;/span&gt;&lt;/a&gt;, який є засобом дистанційного зв’язку для можливості укладання на відстані договорів роздрібної купівлі – продажу Товарів, згідно із запропонованим Продавцем описом Товару.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;1.3. «Істотний недолік Товару» – недолік, який робить неможливим чи недопустимим використання товару відповідно до його цільового призначення, виник з вини виробника (Продавця), після його усунення проявляється знову з незалежних від споживача причин і, при цьому, наділений хоча б однією з нижченаведених ознак:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;а) він взагалі не може бути усунутий;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;б) його усунення потребує понад чотирнадцять календарних днів;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;в) він робить товар суттєво іншим, ніж передбачено договором.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;1.4. «Підтверджене замовлення» - замовлення Покупця щодо найменування, кількості, асортименту, якості, ціни, умов та місця доставки та оплати, здійснене за допомогою Інтернет-магазину, якому Продавцем присвоєний статус «Підтверджено» та Покупцеві надійшло відповідне повідомлення на його електронну поштову скриньку, зазначену під час створення ним замовлення.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;1.5. «Служба кур’єрської доставки» - будь-яка служба доставки, обрана Покупцем, що здійснює транспортно-експедиційні послуги для доставки Товару Покупцеві відповідно до даного договору та підтвердженого замовлення.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;2. Предмет договору.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;2.1. Продавець зобов’язується передати у власність Покупця Товар, обраний Покупцем та зазначенний ним у підтвердженому замовленні, а Покупець зобов’язується оплатити і прийняти Товар на умовах цього Договору.&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Інформацію про найменування Товару, основні характеристики Товару та його ціну Покупець отримує на сайті Продавця &lt;a href=&quot;https://www.sit.com.ua/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&quot;www.sit.com.ua&quot;&lt;/span&gt;&lt;/a&gt; Продавець підтверджує, що інформація про Товар є актуальною на момент прийняття Покупцем пропозиції щодо купівлі-продажу.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;2.2. Датою укладення&amp;nbsp; цього Договору (датою прийняття пропозиції щодо купівлі-продажу) є дата завершення оформлення замовлення відповідно до п.п. 3.3 розділу 3 Договору впродовж строку чинності такого замовлення.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;2.2.1. Замовлення зі статусом «Підтверджено» є чинним протягом строку, встановленого для здійснення передплати/оплати відповідно до розділу 4 даного Договору. У випадку, якщо Покупець не здійснив передоплату/оплату Товару протягом вказаного строку, замовлення вважається анульованим, а обов’язок Продавця здійснити продаж товару на умовах, зазначених у такому замовленні, - скасовується.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;2.2.2. Вчиняючи дії на підтвердження укладання Договору, Покупець засвідчує своє повне й беззаперечне прийняття умов Договору.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;3. Порядок оформлення замовлення.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;3.1. Покупець здійснює замовлення після ознайомлення та згоди з умовами користування сайтом та умовами даного договору купівлі-продажу. Направлення Покупцем замовлення свідчить про прийняття (акцепт) Покупцем пропозиції Продавця укласти договір купівлі-продажу на умовах, зазначених у цьому Договорі.&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;3.2. Замовлення здійснюється шляхом заповнення Покупцем даних щодо найменування, виду, кількості, якості, ціни&amp;nbsp; та умов та місця здійснення доставки та оплати товару.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;3.3. Замовлення вважається оформленим після його підтвердження Продавцем (набуває статус «Підтверджено»). Електронне повідомлення про підтвердження замовлення, що надійшло Покупцеві на його електронну скриньку, зазначену ним під час реєстрації, є достатнім підтвердженням того, що Продавець надав, а Покупець отримав інформацію про найменування продавця, його місцезнаходження та порядок прийняття претензії; основні характеристики Товару; ціну, включаючи плату за доставку, та умови оплати; гарантійні зобов\'язання та інші послуги, пов\'язані з утриманням чи ремонтом Товару; інші умови поставки або виконання договору; тривалість договору; період прийняття пропозицій; порядок розірвання договору.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;4. Умови оплати Товару.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;4.1. Розрахунки за продаж Товарів здійснюються Покупцем за його вибором у готівковій та/або в безготівковій формі (із застосуванням платіжних карток тощо) відповідно до законодавства з урахуванням наступного:&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;4.1.1. попередньої оплати – після присвоєння замовленню статусу «Підтверджено» згідно з п.п. 3.3 Договору протягом 3 (трьох) календарних днів після підтвердження відповідного замовлення. Розмір попередньої оплати, відповідно до підтвердженого замовлення, може становити 50 (п’ятдесят)% або 100 (сто) % від загальної вартості замовленого Товару. Попередня оплата може здійснюватися за вибором Покупця:&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;а) банківським переказом на поточний рахунок Продавця, зазначений у підтвердженому замовленні Покупця, в тому числі за допомогою засобів Інтернет-банкінгу. При здійсненні платежу Покупець зобов’язаний вказувати номер підтвердженого замовлення, згідно з яким здійснюється передплата замовленого Товару; та/або&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;б) готівкою у касу Продавця за місцем реалізації Товару.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;4.1.2. післяплати - оплата Товару здійснюється за вибором Покупця:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;а) накладним платежем при отриманні замовлення через службу доставки ТОВ «Міст Експрес» за адресою, зазначеною у підтвердженому замовленні. Сума поштового переказу (платежу) включає оплату вартості товару та плату за пересилання накладного платежу. Вартість послуги «накладний платіж» сплачується Покупцем додатково безпосередньо представникові служби доставки ТОВ «Міст Експрес» при отриманні Товару; або&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;б) готівкою представникові Продавця у момент доставки Товару Покупцеві.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;5. Строк, вартість і умови доставки та повернення Товару.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.1. Покупець, при здійсненні замовлення, має право на власний розсуд обрати вид доставки:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.1.1. самовивіз зі складу Продавця;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.1.2. доставка Товару за адресою, зазначеною Покупцем.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.2. Доставка Товару в місті Тернопіль виконується за рахунок Продавця, якщо загальна сума замовлення дорівнює або є більшою ніж 5000 (п’ять тисяч) гривень00 копійок в т.ч. ПДВ, за адресою, вказаною Покупцем у підтвердженому замовленні. В інших випадках Покупець здійснює оплату транспортно-експедиційних послуг окремо додатково до ціни Товару.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.2.1 Строк доставки не може перевищувати 30 календарних днів з моменту підтвердження замовлення.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.3. Якщо Покупець обрав вид доставки, зазначений у п. 5.1.2 Договору, доставка Товару здійснюється (відповідно до підтвердженого замовлення Покупця):&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- до складу перевізника у відповідному населеному пункті;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- до під’їзду будинку або до воріт будинку Покупця за адресою, зазначеною у підтвердженому замовленні.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Товар передається Покупцю при пред’явленні документу, що посвідчує особу, яка отримує Товар та здійснення ним повного грошового розрахунку за поставлений Товар відповідно до п.п. 4.1.2 п. 4.1 Договору (якщо передплата була здійснена не у повній вартості замовленого Товару).&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.5. Повернення Товару у випадках, передбачених у розділі 7 Договору, здійснюється з урахуванням наступних умов:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.5.1. великогабаритних товарів – за рахунок Покупця;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.5.2. інших Товарів – за рахунок Покупця.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.6. Продавець повинен укласти у відправлення, що передається для доставки через Службу кур’єрської доставки, накладну, що підтверджує факт купівлі-продажу товарів, яка завіряється штампом (печаткою) і підписом уповноваженої посадової особи Продавця.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;5.7. Обмін товару належної якості проводиться, якщо він не використовувався і якщо збережено його товарний вигляд, споживчі властивості, пломби, ярлики, а також документ (накладну), виданий Покупцеві разом з проданим товаром.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;6. Права та обов’язки сторін.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;6.1.Продавець зобов’язаний:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- виконувати умови даного Договору;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- виконувати чинні підтверджені замовлення Покупця згідно п. 2.2.1 Договору;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- передати Покупцю Товар згідно з вибраним зразком в Інтернет – магазині, підтвердженим замовленням і умовами даного Договору;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- перевірити якісні і кількісні характеристики Товару до його відправки Покупцеві;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- негайно повідомити Покупця про неможливість виконання договору через відсутність замовленого товару;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- виконувати вимоги Покупця про повернення Товару згідно з п. 5.7 Договору.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;6.2. Продавець має право:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- в односторонньому порядку відмовитись від виконання підтвердженого замовлення у випадку нездійснення Покупцем передоплати Товару у встановлений строк.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- відмовити у поверненні товарів які виготовлялися під індивідуальне замовлення Покупця&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;6.3. Покупець зобов’язаний:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- своєчасно оплатити і отримати Товар на умовах цього Договору;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- ознайомитись з інформацією про Товар, яка розміщена на сайті Продавця;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- при отриманні товару у перевізника впевнитися у його цілісності та комплектності шляхом огляду вмісту упаковки. У випадку виявлення пошкоджень та неповної комплектації – зафіксувати їх в акті, який разом із Покупцем повинен підписати співробітник перевізника.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;6.4. Покупець має право:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- оформити замовлення в Інтернет – магазині;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- вимагати від Продавця виконання умов цього Договору.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- розірвати договір шляхом повідомлення Продавця про це протягом чотирнадцяти днів з моменту підтвердження замовлення або з моменту одержання товару. Повернення Покупцем Товару свідчить про розірвання договору. Повернення Покупцеві сплачених за товар коштів здійснюється на підставі письмової заяви Покупця;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;- Покупець має право обміняти Товар належної якості на аналогічний у Продавця, якщо товар не задовольнив його за формою, габаритами, фасоном, кольором, розміром або з інших причин не може бути ним використаний за призначенням. Таке право зберігається за Покупцем протягом 14 днів, не рахуючи дня купівлі та реалізується відповідно до п. 7.9 Договору.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;6.5. Покупець не може скасувати замовлення і / або відмовитися від отримання Товару та вимагати повернення грошових коштів за Товар, який виготовлений під індивідуальне замовлення Покупця!&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;7. Порядок прийому та заміни товару неналежної або належної якості&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.1. При отриманні Товару на складі перевізника, від кур’єра або Продавця, Покупець зобов’язаний перевірити зовнішню цілісність упаковки, після чого відкрити її та безпосередньо пересвідчитися у належному зовнішньому стані Товару (відсутності механічних пошкоджень) та повноті його комплектності.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.2. У випадку наявності хоча б одного з перерахованих недоліків, Покупець зобов’язаний зафіксувати його у складеному акті довільної форми. Акт повинен бути підписаний Покупцем та співробітником перевізника або Продавця. При можливості недоліки повинні бути зафіксовані засобами фото- або відеозйомки.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Протягом 1 (одного) дня Покупець зобов’язаний повідомити представника Продавця про виявлені недоліки та домовитися про заміну або повернення Товару.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.3. Сторони погодили, що у випадку недотримання обов’язкових вимог вказаної процедури, визнається отримання Покупцем Товару у належному стані – без будь-яких механічних пошкоджень та у повній комплектності.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.4. У випадку отримання Товару у належному стані, але при виявленні протягом встановленого гарантійного строку недоліків, пов’язаних із його роботою, Покупець має право на:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.4.1. пропорційне зменшення ціни; або&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.4.2. безоплатне усунення недоліків товару в розумний строк; або&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.4.3. відшкодування витрат на усунення недоліків товару.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Гарантійні зобов’язання Продавця виникають у випадку надання Покупцем документу, що посвідчує факт купівлі-продажу Товару (накладної).&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.5. Гарантійний строк на Товар становить:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Відповідно до ДСТУ 16371-93 «Меблі. Загальні технічні умови» на офісні меблі - 18 (вісімнадцять) календарних місяців.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Відповідно до ДСТУ 19917-93 «Меблі для сидіння та лежання» на крісла та стільці – 12 (дванадцять) календарних місяців з дати вводу Товару в експлуатацію.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.5.1 Датою вводу Товару в експлуатацію є дата підписання Сторонами відповідної товарної накладної.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.6. При пред’явленні вимог про безоплатне усунення недоліків, такі роботи повинні бути виконані протягом 21 (двадцять одного) дня з дати пред’явлення Товару. Датою пред’явлення Товару вважається дата його надходження до Продавця. В такому разі доставка малогабаритних Товарів і Товарів вагою менше п\'яти кілограмів Продавцю та їх повернення Покупцеві здійснюються за рахунок останнього.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.7. У разі виявлення протягом встановленого гарантійного строку істотних недоліків, які виникли з вини виробника товару (Продавця), або фальсифікації товару, підтвердженої висновком експертизи, Покупець, в порядку та у строки встановлені законодавством і на підставі обов\'язкових для сторін умов Договору, має право за своїм вибором вимагати від Продавця:&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.7.1. розірвання договору та повернення сплаченої за Товар грошової суми;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.7.2. заміни товару на такий же Товар або на аналогічний, з числа наявних у Продавця.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.8. У такому випадку, при підтвердженні Продавцем істотних недоліків Товару та при волевиявленні Покупця, сплачені грошові кошти підлягають поверненню останньому на вказані ним реквізити протягом 7 (семи) банківських днів з дня повернення Товару.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.9. У випадках заміни неякісного Товару оплата послуг перевізника здійснюється коштом Покупця.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.10. Покупець протягом 14 (чотирнадцяти) днів з моменту отримання Товару належної якості має право обміняти на аналогічний у Продавця, в якого він був придбаний, якщо Товар не задовольнив його за формою, габаритами, фасоном, кольором, розміром або з інших причин не може бути ним використаний за призначенням. Обмін Товару належної якості провадиться, якщо він не використовувався і якщо збережено його товарний вигляд, споживчі властивості, пломби, ярлики, а також документ (накладну), виданий Покупцеві разом з проданим товаром. У такому випадку послуги перевізника з транспортування Товару з метою його обміну оплачує Покупець. Зазначена вимога підлягає задоволенню у день повернення Товару Покупцем та отримання його Покупцем.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Якщо на момент обміну аналогічного товару немає у продажу, Покупець має право або придбати будь-які інші товари з наявного асортименту з відповідним перерахуванням вартості, або розірвати договір та одержати назад гроші у розмірі вартості повернутого товару, або здійснити обмін товару на аналогічний при першому ж надходженні відповідного товару в продаж.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;При розірванні договору купівлі-продажу розрахунки із Покупцем провадяться виходячи з вартості товару на час його купівлі. Гроші, сплачені за товар, повертаються Покупцеві на вказані ним реквізити протягом 7 (семи) банківських днів з дня повернення Товару.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Під документом Сторони розуміють накладну, отриману Покупцем разом з Товаром.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;7.11. У будь-якому випадку повернення Товару повинно відбуватися в оригінальній упаковці, в якій надійшов Товар.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;8. Відповідальність сторін.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;8.1. Сторони відповідають за невиконання або неналежне виконання умов цього Договору в порядку, передбаченому цим Договором і чинним законодавством України.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;8.2. Продавець не несе відповідальність за змінений виробником зовнішній вигляд Товару.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;8.3. У випадку обставин непереборної сили, сторони звільняються від виконання умов цього Договору. Під обставинами непереборної сили для цілей цього Договору розуміються події, що мають надзвичайний, невідворотний непередбачуваний характер, які виключають або об’єктивно перешкоджають виконанню цього Договору, настання яких Сторони не могли передбачити й запобігти розумними мірами.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;8.4. Сторона, що посилається на дію обставин непереборної сили повинна протягом п’яти календарних днів у письмовому вигляді за допомогою електронної пошти повідомити іншу сторону про настання таких обставин.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;8.5. Якщо через дію обставин непереборної сили невиконання зобов’язань за цим Договором триває більше п’яти місяців, кожна із Сторін має право розірвати цей Договір в односторонньому порядку, письмово повідомивши про це іншу сторону.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;8.6. Сторони докладають максимальних зусиль для вирішення будь – яких розбіжностей виключно шляхом переговорів.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;9. Інші умови.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;9.1. Продавець залишає за собою право в односторонньому порядку вносити зміни в цей Договір з попередньою публікацією його на сайті &lt;a href=&quot;https://www.sit.com.ua/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&quot;www.sit.com.ua&quot;&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot; p=&quot;&quot;&gt;9.2. Інтернет – магазин створений Продавцем для організації дистанційного способу продажу товарів через Інтернет.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;9.3. Відповідальність за зміст і правдивість інформації, що надається Покупцем при оформленні замовлення, несе Покупець.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;9.4. Покупець несе відповідальність за достовірність інформації про Товар і умови його продажу, зазначені у цьому Договорі, на сайті &lt;a href=&quot;https://www.sit.com.ua/&quot; target=&quot;_blank&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&quot;www.sit.com.ua&quot;&lt;/span&gt;&lt;/a&gt;&amp;nbsp;та у товаросупровідній документації на Товар.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;9.5. Використання ресурсу Інтернет – магазину для перегляду товару, а також для оформлення замовлення є для Покупця безоплатним.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;9.6. Інформація, що надається Покупцем, є конфіденційною. Продавець використовує інформацію про Покупця виключно в цілях функціонування Інтернет – магазину та організації дистанційного зв’язку з Покупцем з метою здійснення купівлі-продажу (відправлення повідомлення Покупцеві про виконання замовлення, надсилання рекламних повідомлень і т.д.).&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;9.7. Створенням замовлення в Інтернет-магазині, що є акцептом пропозиції укласти договір купівлі-продажу, Покупець добровільно надає згоду на збір та обробку власних персональних даних у зареєстрованій базі Продавця «Контрагенти» з наступною метою: дані, що стають відомі Продавцю використовуватимуться в комерційних цілях, в тому числі для обробки замовлень на придбання товарів, отримання інформації про замовлення, надсилання телекомунікаційними засобами зв’язку (електронною&amp;nbsp; поштою, мобільним зв’язком) рекламних та спеціальних пропозицій, інформації про акції, розіграші або будь-якої іншої інформації про діяльність магазину.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;Для цілей, передбачених цим пунктом, Продавець має право направляти листи, повідомлення та матеріали на поштову адресу, e-mail Покупця, а також відправляти sms-повідомлення, здійснювати дзвінки на вказаний в анкеті телефонний номер.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;9.8. Покупець дає Продавцю право здійснювати обробку його персональних даних, у тому числі: поміщати персональні дані в бази даних Продавця (без додаткового повідомлення Покупця про це), здійснювати довічне зберігання даних, їх накопичення, оновлення, зміну (у міру необхідності). Продавець бере на себе зобов\'язання забезпечити захист даних від несанкціонованого доступу третіх осіб, не поширювати і не передавати дані будь-якій третій стороні (крім передачі даних пов\'язаним особам, комерційним партнерам, особам, уповноваженим Продавцем на здійснення безпосередньої обробки даних для зазначених цілей, а також на обов\'язковий запит компетентного державного органу).&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;9.9. У випадку небажання отримувати розсилку, Покупець має право звернутися до Продавця, написавши заяву про відмову від отримання рекламних матеріалів, надіславши його на поштову або електронну адресу.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51);&quot;&gt;9.10 &lt;/span&gt;&lt;font color=&quot;#333333&quot;&gt;Звертаємо увагу на те, що товари, які виготовлялися під індивідуальне замовлення Покупця, поверненню не підлягають!&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;font color=&quot;#333333&quot;&gt;Звертаємо увагу на те, що покупець не може скасувати замовлення і / або відмовитися від отримання Товару та вимагати повернення грошових коштів за Товар, який виготовлений під індивідуальне замовлення Покупця!&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;font color=&quot;#333333&quot;&gt;Виробники мають право змінювати технічні характеристики і комплектацію виробів, якщо такі зміни не ведуть до погіршення якості або зміни зовнішнього вигляду виробу, без попереднього повідомлення.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;font color=&quot;#333333&quot;&gt;Дані умови ні в якому разі не обмежують законних прав споживача, наданих йому чинним законодавством України.&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;10. Строк дії Договору та порядок його розірвання&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;10.1. Даний Договір набуває чинності з моменту підтвердження Продавцем замовлення Покупця відповідно до пп. 3.3 Договору&amp;nbsp; і діє до повного виконання зобов’язань сторонами, за винятком випадків його дострокового розірвання.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;10.2. До закінчення строку дії цей Договір може бути розірваний у випадках, зазначених у цьому Договорі за ініціативою однієї із Сторін або за взаємною згодою Сторін.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Продавець: ФОП Діхтярук В.А.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51);&quot;&gt;&lt;br&gt;&lt;/p&gt;','Угода користувача','',''),(8,2,'Політика конфіденційності','&lt;p&gt;Політика конфіденційності&lt;br&gt;&lt;/p&gt;','Політика конфіденційності','',''),(8,1,'Політика конфіденційності','&lt;p&gt;Політика конфіденційності&lt;br&gt;&lt;/p&gt;','Політика конфіденційності','',''),(9,3,'Конфіденційність','&lt;div class=&quot;page-title-wrapper&quot;&gt;\r\n&lt;div class=&quot;container&quot;&gt;\r\n&lt;h1 class=&quot;page-title&quot;&gt;&lt;span class=&quot;base&quot; data-ui-id=&quot;page-title-wrapper&quot;&gt;Політика захисту персональних даних&lt;/span&gt;&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;page-messages messages&quot;&gt;\r\n&lt;div class=&quot;container&quot;&gt;\r\n&lt;div data-placeholder=&quot;messages&quot;&gt;&lt;/div&gt;\r\n&lt;div data-bind=&quot;scope: \'messages\'&quot;&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=&quot;columns container&quot;&gt;\r\n&lt;div class=&quot;column main&quot;&gt;\r\n&lt;h2&gt;&lt;strong&gt;Шановні гості та клієнти сайту nowystyl.ua!&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;Персональні дані - відомості чи сукупність відомостей про фізичну особу, яка ідентифікована або може бути конкретно ідентифікована. Управління цим Сайтом здійснюється АТ «Новий Стиль», що зареєстроване і діє відповідно і згідно законодавства України (далі - і/або «Адміністрація»). Ми з повагою і великою відповідальністю ставимося до конфіденційної (персональної) інформації всіх осіб, які відвідали Сайт. А тому Адміністрація сайту робить все, щоб захистити і зберегти конфіденційність персональних даних наших користувачів. Ми працюємо відкрито і прозоро зі своїми клієнтами, тому Адміністрацією сайту було прийнято рішення про розміщення докладного опису процесу обробки персональних даних при використанні нашого сайту nowystyl.ua При виникненні питань, які стосуються конфіденційності персональних даних, Ви можете зв\'язатися з Адміністрацією Сайту за контактними даними, які вказані нижче.&lt;/p&gt;\r\n&lt;h2&gt;&lt;strong&gt;Збір та використання персональних даних&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;При використанні Користувачем Сайту Адміністрацією здійснюється збір і обробка даних Користувача, а саме: - Даних, що надаються Користувачем як при заповненні реєстраційних форм, так і в процесі користування сайтом; - Файли cookie; Iр-адреси; - Параметри і настройки інтернет-браузерів. Ми збираємо виключно ті персональні дані, які користувачі добровільно надали. Наприклад: ПІБ, число і рік народження, стать, контактні дані такі як: номер телефону, email та ін. Зверніть увагу, що інформація обмежена обсягом, який необхідний для якісного виконання замовлення користувача. В інших випадках, при запиті необов\'язковою інформації, користувач повідомлений і має право відмовитися від збору такої інформації. Згідно Закону України «Про захист персональних даних», ст. 7, Адміністрація Сайту не веде збір інформації, для якої встановлені особливі вимоги. Ми ведемо збір інформації за статистикою відвідування Сайту, яка може мати такий зміст: трафік, браузер Користувача, дата і час, а також час, який користувач провів на Сайті.&lt;/p&gt;\r\n&lt;h2&gt;&lt;strong&gt;Цілі збору і обробки персональних даних&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;Збір та обробка наданих персональних даних здійснюється виключно для виконання замовлення клієнта та поліпшення якості обслуговування наших клієнтів.&lt;/p&gt;\r\n&lt;h2&gt;&lt;strong&gt;Термін зберігання персональних даних&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;Персональні дані зберігаються на термін не більше, ніж це необхідно відповідно до мети їх обробки. Після того, як суб\'єкт персональних даних перестав бути Користувачем Сайту шляхом видалення свого облікового запису на Сайті, його персональні дані також автоматично видаляються.&lt;/p&gt;\r\n&lt;h2&gt;&lt;strong&gt;Взаємодія Сайту з іншими ресурсами&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;При використанні Користувачем сервісів на сторінках Сайту можуть бути присутні коди інших інтернет-ресурсів і третіх осіб, в результаті чого такі інтернет ресурси і треті особи отримують Ваші дані. Отже, ці інтернет-ресурси можуть отримувати і обробляти інформацію про те, що Ви відвідали ці сторінки, а також іншу інформацію, яку передає браузер Користувача. Такими інтернет-ресурсами можуть бути: - Системи зі збору статистики відвідувань сервісів (наприклад, лічильники Google Analytics, Yandex Метрика); - Соціальні плагіни мереж (форумів) (наприклад, Facebook, Twitter, ВКонтакте, Google+, Yandex). На деяких сторінках нашого сайту встановлені коди сервісів Google Analytics, Yandex Метрика. Ці сервіси можуть отримувати і обробляти інформацію виключно про те, що ви відвідали сторінку та іншу інформацію, яка передається вашим браузером. Використання зазначених сервісів нам необхідно для оперативного аналізу відвідувань сайту, внутрішньої і зовнішньої оцінки відвідуваності сайту, глибини переглядів, активності користувачів. Дані, отримані від зазначених сервісів, ми не зберігаємо і не обробляємо. Відповідно, якщо Користувач, в силу будь-яких причин, не бажає, щоб зазначені сервіси отримували доступ до його персональних даних, Користувач може за власним бажанням вийти зі свого аккаунта, очистити «Cookies» (через свій браузер). У випадку згоди Користувача, так чи інакше, ми рекомендуємо завжди ознайомлюватися із розділом Про політику конфіденційності і/або порядком збору та використання зазначеними та аналогічними сервісами персональних даних фізичних осіб, щоб уникнути непорозумінь або запобігання порушень прав суб\'єктів персональних даних, так як ми не несемо відповідальності в частині збору/обробки/використання зазначеними/аналогічними сервісами персональних даних. Політика конфіденційності сервісу Google Analitics викладена на сторінці http://www.google.com/analytics/terms/ru.html Політика конфіденційності сервісу Yandex Метрика викладена на сторінці https://legal.yandex.ru/confidential/ Соціальні плагіни мереж (форумів) Facebook, Twitter, ВКонтакті, Google+, Однокласники, Yandex на деяких сторінках нашого сайту встановлені коди сервісів (плагіни, віджети ) Facebook, Twitter, ВКонтакте, Google+, Одн окласснікі, Yandex. Ці плагіни можуть бути кнопками синхронізації аккаунта на Сайті, Like, ретвітнути або, відповідно, &quot;Мені подобається&quot;. При відкритті сторінки Сайту, оснащеної таким плагіном, Ваш інтернет-браузер безпосередньо підключить вас до серверів Facebook, Twitter, ВКонтакті, Google+, Однокласники, Yandex і на екрані буде зображено зареєстрований плагін через Браузер. Плагін буде передавати на сервер дані про те, які саме наші Веб-сторінки Ви відвідали. Якщо у Вас є обліковий запис на Facebook і Ви увійшли через свій аккаунт, то при відвідуванні нашої Веб-сторінки Facebook буде пов\'язувати цю інформацію з Вашим аккаунтом (при наявності аккаунта). При використанні будь-яких функцій плагіна (наприклад, при натисканні кнопки &quot;Мені подобається&quot;, коментуванні) ця інформація також буде синхронізована з Вашим аккаунтом на Facebook, Twitter, ВКонтакті, Google+, Однокласники, Yandex. Щоб уникнути зв\'язку мереж Facebook, Twitter, ВКонтакті, Google+ або Yandex з нашої Веб-сторінкою і подальшого співвіднесення даної інформації з Вашим акаунтом, Вам необхідно вийти з облікового запису мережі перед відвідуванням нашої Веб-сторінки. Більш детальну інформацію про збір та використання даних мережами Facebook, Twitter, ВКонтакті, Google+, Однокласники, Yandex, а також про права та можливості щодо захисту персональних даних в даному контексті можна знайти в розділі про конфіденційність на Веб-сайтах Facebook, Twitter, ВКонтакті, Google+, Однокласники, Yandex. - Соціальної мережі Facebook, управління якою відбувається з штаб-квартири компанії Facebook Inc, Facebook Corporate Office, який знаходиться за адресою: Headquarters 1601 S. California Ave. Palo Alto, CA 94304, USA, телефон: +1 (650) 543-4800. Політика конфіденційності сервісу викладена на сторінці https://www.facebook.com/about/privacy/ - Інформаційної мережі Twitter, управління якою здійснюється з офісу компанії Twitter, Inc., Який знаходиться за адресою: 1355 Market St, Suite 900 San Francisco, CA 94103, USA, телефон: +1 (415) 222-9958; Політика конфіденційності сервісу викладена на сторінці https://twitter.com/privacy - Соціальної мережі &quot;ВКонтакті&quot;, управління якої здійснюється з офісу ТОВ &quot;В Контакті&quot;, який знаходиться за адресою: вул. Тверська, д. 8, літ. Б, м Санкт-Петербург, 191015, Росія. Політика конфіденційності сервісу викладена на сторінці&amp;nbsp;&lt;a href=&quot;https://vk.com/privacy&quot;&gt;https://vk.com/privacy&lt;/a&gt;&amp;nbsp;- Соціальної мережі Google+, управління якою здійснюється з офісу компанії 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA, телефон: +1 (650) 253-0000. Політика конфіденційності сервісу викладена на сторінці&amp;nbsp;&lt;a href=&quot;http://www.google.com/policies/privacy/&quot;&gt;http://www.google.com/policies/privacy/&lt;/a&gt;&amp;nbsp;- Соціальної мережі Однокласники, управління якою здійснюється з офісу компанії ТОВ «Однокласники», Російська Федерація, 125167 г. Москва, Ленінградський проспект, д. 39 , буд. 79. Політика конфіденційності сервісу викладена на сторінці&amp;nbsp;&lt;a href=&quot;http://www.odnoklassniki.ru/regulations&quot;&gt;http://www.odnoklassniki.ru/regulations&lt;/a&gt;&amp;nbsp;- Соціального форуму yandex, управління яким здійснюється з офісу компанії ТОВ «ЯНДЕКС» 01030, Київ, вул. Б. Хмельницького 19-21, бізнес-центр «Леонардо», 2-а черга, офіс 30 (6-й пов.). Політика конфіденційності сервісу викладена на сторінці&amp;nbsp;&lt;a href=&quot;https://legal.yandex.ru/confidential/&quot;&gt;https://legal.yandex.ru/confidential/&lt;/a&gt;&amp;nbsp;Правила використання технології маркерів звернень (Cookies) і лог-файлів/Свобода вибору Кукі( «Сookie») - це невеликі текстові файли, в які браузер може записувати дані, отримані від сервера. Коли ви переходите на сторінку сайту, сервер може зчитувати інформацію, що міститься в «Сookie». Зокрема, «Cookies», можуть бути використані для зберігання інформації про реєстрацію на Сайті або певній галузі, щоб Користувачеві не потрібно було повторно вводити її при подальших відвідуваннях такого Сайту або його області, маркери звернень, які використовуються на Сайті, пов\'язані з персональними даними користувача. При цьому технології &quot;Cookies&quot; дозволяють гарантувати безпеку при використанні Користувачем сервісів Сайту (наприклад, за допомогою функції підтвердження входу Адміністрація може заблокувати і запитати додаткову інформацію у Користувача, який намагається увійти в обліковий запис за допомогою Веб-браузера, який Користувач раніше не використовував). Крім того, файли &quot;Cookies&quot; дозволяють відстежувати порушення політики конфіденційності та угод використання Сайту Користувачами або пристроями. Файли &quot;Cookies&quot; допомагають Адміністрації оцінити кількість і частоту запитів, а також виявляти і блокувати тих користувачів або пристрої, які намагаються зробити пакетні завантаження інформації за допомогою нашого Веб-сайту. У деяких випадках для надання певних продуктів і послуг Адміністрація звертається до постачальників послуг, які можуть бути нашими партнерами. Останні, в свою чергу, також можуть використовувати &quot;Cookies&quot;, щоб персоналізувати активність користувачів щодо відповідних додатків партнера; або якщо це стосується реклами, то &quot;Cookies&quot; може бути використано партнером для визначення факту показу реклами і реакції Користувача. При цьому ми не використовуємо файли &quot;Cookies&quot; для збору інформації про активність Користувача на інших Веб-сайтах з метою показу реклами. Однак ми можемо використовувати анонімні (знеособлені) або узагальнені дані для поліпшення якості реклами в цілому, а також з метою дослідження, розробки або тестування нових і діючих послуг (сервісів) Сайту. В даний час використання &quot;Cookies&quot; є стандартною процедурою для більшості Сайтів. Однак, якщо Вам некомфортно використовувати &quot;Cookies&quot;, більшість браузерів дозволяють Користувачам відмовитися від використання &quot;Cookies&quot;. У такому випадку функція реєстрації буде для Вас недоступною, також деякі інші функції сайту можуть працювати з порушеннями. Після завершення візиту на Сайт, Ви завжди можете видалити &quot;Cookies&quot; після установки, якщо забажаєте. Лог-файли - для того, щоб належним чином управляти Сайтом, Адміністрація може ідентифікувати категорії користувачів за такими параметрами, як домени і типи браузерів. Ці статистичні дані в їх сукупності передаються веб-фахівцям Адміністрації. Це здійснюється для того, щоб користування Сайтом було приємним для користувачів, а також щоб Сайт був ефективним інформаційним ресурсом. Взаємодія Адміністрації з третіми особами стосовно персональних даних Адміністрація не здійснює передачу персональних даних третім особам, крім випадків, коли така передача є вимогою законодавства, на прохання суб\'єкта персональних даних або в інших випадках, викладених в цьому розділі. Ми розуміємо, що особиста інформація є цінністю і невід\'ємним змістом, в тому числі, особистих немайнових прав будь-якої фізичної особи, тому вживаємо всіх можливих заходів для захисту особистої інформації користувачів, добровільно і усвідомлено переданої останніми Адміністрації. На Сайті можуть бути присутніми посилання на інші Сайти (виключно в інформаційних цілях), які в своїй діяльності можуть не використовувати і/або не дотримуватися Політики Адміністрації в сфері конфіденційності і персональних даних. Звертаємо увагу: при переході по посиланню на інші Сайти, дія Політики Адміністрації в сфері конфіденційності і персональних даних на такі Сайти поширюватися не буде. У зв\'язку з цим, Адміністрація рекомендує переглядати політику в сфері конфіденційності і персональних даних кожного Сайту перед тим, як передавати будь-які персональні дані суб\'єкта персональних даних на Сайті. Відомості про активність (трафіку) на Сайті користувачів, які проходять через нашу мережу або електронну пошту Користувача, захищені відповідно до законодавства. Тобто Адміністрація жодним чином або способом не порушує таємницю «активності» Користувача при використанні останнім сервісів Сайту, що регламентовано відповідними локальними актами. Захист персональних даних Адміністрація використовує загальноприйняті стандарти технологічного та операційного захисту інформації та персональні дані від втрати, неправильного використання, зміни або знищення. Проте, не дивлячись на всі зусилля, ми не можемо гарантувати абсолютну захищеність від будь-яких загроз, що виникають у невіданні адміністрації. Проте, Адміністрація забезпечує застосування всіх відповідних зобов\'язань щодо дотримання конфіденційності, а також технічних і організаційних заходів безпеки для запобігання несанкціонованого або незаконного розголошення або обробки такої інформації і даних, їх випадкової втрати, знищення або пошкодження. Ми надаємо доступ до інформації і персональних даних тільки уповноваженим співробітникам, які дали згоду на забезпечення конфіденційності такої інформації і даних згідно локальних актів.&lt;/p&gt;\r\n&lt;h2&gt;&lt;strong&gt;Умови доступу до персональних даних&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;Порядок доступу до персональних даних третіх осіб визначається умовами згоди суб\'єкта персональних даних, наданої власниками персональних даних на обробку цих даних, або відповідно до вимог законодавства. Суб\'єкт персональних даних має право на одержання будь-яких відомостей про себе у будь-якого суб\'єкта відносин, пов\'язаних із персональними даними, за умови надання інформації, встановленої законом. Відстрочка доступу суб\'єкта персональних даних до своїх персональних даних не допускається. Відстрочка доступу до персональних даних третіх осіб допускається у разі, якщо необхідні дані не можуть бути надані протягом тридцяти календарних днів з дня надходження запиту. При цьому, загальний термін вирішення питань, порушених у запиті, не може перевищувати сорока п\'яти календарних днів. Повідомлення про відстрочку доводиться до відома третьої особи, яка подала запит, у письмовій формі з роз\'ясненням порядку оскарження такого рішення. Рішення про відстрочення або відмову в доступі до персональних даних може бути оскаржено в суді. Якщо запит зроблено суб\'єктом персональних даних за даними про себе, обов\'язок доведення в суді законності відмови у доступі покладається на власника персональних даних, до якого подано запит. Згідно законодавства України персональні дані можуть бути передані правоохоронним, судовим органам та іншим установам з метою захисту основ конституційного ладу, моральності, здоров\'я, прав і законних інтересів інших осіб, забезпечення оборони країни і безпеки держави.&lt;/p&gt;\r\n&lt;h2&gt;&lt;strong&gt;Права суб\'єкта персональних даних&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;Адміністрація нагадує Вам про Ваші права як суб\'єкта персональних даних, які врегульовані Законом України «Про захист персональних даних» № 2297-VI, а саме: - Знати про джерела збору, місцезнаходження своїх персональних даних, мету їх обробки, місцезнаходження та/або місце проживання (перебування) власника чи розпорядника персональних даних або дати відповідне доручення щодо отримання цієї інформації уповноваженим ним особам, крім випадків, встановлених законом; - Отримувати інформацію про умови надання доступу до персональних даних, зокрема інформацію про третіх осіб, яким передаються його персональні дані; - На доступ до своїх персональних даних; - Отримувати не пізніше, ніж за тридцять календарних днів з дня надходження запиту, крім випадків, передбачених законом, відповідь про те, чи зберігаються його персональні дані у відповідній базі персональних даних, а також отримувати зміст його персональних даних; - Пред\'являти вмотивовану вимогу власнику персональних даних із запереченням проти обробки своїх персональних даних; - Пред\'являти вмотивовану вимогу щодо зміни або знищення своїх персональних даних будь-яким власником і розпорядником персональних даних, якщо ці дані обробляються незаконно чи є недостовірними; - На захист своїх персональних даних від незаконної обробки та випадкової втрати, знищення, пошкодження у зв\'язку з умисним приховуванням, ненаданням чи несвоєчасним їх наданням, а також на захист від надання відомостей, що є недостовірними чи порочать честь, гідність та ділову репутацію фізичної особи; - Звертатися зі скаргами на обробку своїх персональних даних до органів державної влади та посадових осіб, до повноважень яких належить забезпечення захисту персональних даних, або до суду. Вся необхідна інформація представлена в розділі «Захист персональних даних» на офіційному веб-сайті Уповноваженого Верховної Ради з прав людини http://www.ombudsman.gov.ua Якщо Ви хочете оновити свої персональні дані, які були Вами надані Адміністрації, або є якісь зауваження, побажання або претензії щодо Ваших персональних даних, які ми зберігаємо або використовуємо, будь ласка, звертайтеся до нас за електронною поштою: zakaz@economtochka.com.ua або напишіть листа за адресою: Україна, 61020, м. Харків, Григорівське шосе 88, АТ&amp;nbsp;&lt;strong&gt;&quot;Новий Стиль&quot;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;h2&gt;&lt;strong&gt;Зміни&lt;/strong&gt;&lt;/h2&gt;\r\n&lt;p&gt;У Справжню політику конфіденційності можуть вноситися відповідні зміни. При цьому права суб\'єктів персональних даних, згадані в цій Політиці конфіденційності в редакції на відповідну дату, без їх згоди не можуть бути змінені. Будь-які зміни в Політиці конфіденційності публікуються на Сайті. Щоб уникнути будь-яких непорозумінь щодо обізнаності з внесеними змінам, ми переконливо рекомендуємо звертатися до цієї Політики конфіденційності регулярно. Бажаємо приємно і з користю провести час на нашому ресурсі!&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;','Конфіденційність','',''),(9,2,'Конфіденційність','&lt;p&gt;Конфіденційність&lt;br&gt;&lt;/p&gt;','Конфіденційність','',''),(9,1,'Конфіденційність','&lt;p&gt;Конфіденційність&lt;br&gt;&lt;/p&gt;','Конфіденційність','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (4,0,0),(6,0,0),(3,0,0),(5,0,0),(7,0,0),(8,0,0),(9,0,0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'English','en-gb','en-US,en_US.UTF-8,en_US,en-gb,english','gb.png','english',3,0),(2,'Русский','ru-ru','ru_RU.UTF-8,ru_RU,russian','','',2,1),(3,'Українська','uk-ua','ua_UA.UTF-8,ua_UA,ua_UA,ua','','',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search'),(14,'Error 404'),(15,'Octemplates - Blog Article'),(16,'Octemplates - Blog Category'),(17,'Octemplates - Blog Search'),(18,'Category supermarket'),(19,'Відгуки про магазин');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (2,4,'0','content_top',0),(3,4,'0','content_top',1),(116,5,'category','column_left',0),(69,10,'account','column_right',1),(68,6,'account','column_right',1),(104,1,'oct_category_wall.41','content_top',2),(103,1,'oct_benefits.37','content_top',1),(98,3,'oct_products_from_category.39','column_left',2),(102,1,'oct_slideshow_plus.32','content_top',0),(97,3,'oct_banner_plus.34','column_left',1),(96,3,'filter','column_left',0),(100,18,'filter','column_left',0),(92,14,'oct_category_wall.41','content_bottom',1),(91,14,'featured.28','content_bottom',0),(113,11,'category','column_right',1),(112,11,'oct_products_from_category.39','column_right',0),(99,3,'oct_product_views.38','content_bottom',0),(101,18,'category','column_left',1),(105,1,'html.44','content_top',3),(106,1,'oct_products_from_category.39','content_top',4),(107,1,'oct_banner_plus.35','content_top',5),(108,1,'featured.28','content_top',6),(109,1,'oct_banner_plus.33','content_top',7),(110,1,'oct_product_review.36','content_top',8),(111,1,'oct_product_views.38','content_top',9),(114,11,'oct_banner_plus.34','column_right',2),(115,11,'latest.43','column_right',3),(117,5,'oct_product_views.38','column_left',1),(118,5,'oct_banner_plus.34','column_left',2),(119,15,'oct_blogcategory','column_right',0),(120,15,'category','column_right',1),(121,15,'oct_products_from_category.39','column_right',2),(122,16,'oct_blogcategory','column_right',0),(123,16,'category','column_right',1),(124,16,'oct_products_from_category.39','column_right',2),(125,17,'oct_blogcategory','column_right',0),(126,17,'category','column_right',1),(127,17,'featured.28','column_right',2),(128,2,'oct_product_review.36','content_bottom',0),(129,2,'oct_product_views.38','content_bottom',1);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (38,6,0,'account/%'),(17,10,0,'affiliate/%'),(67,3,0,'product/category'),(68,1,0,'common/home'),(74,2,0,'product/product'),(69,11,0,'information/information'),(23,7,0,'checkout/%'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(34,4,0,''),(70,5,0,'product/manufacturer'),(52,12,0,'product/compare'),(53,13,0,'product/search'),(65,14,0,'error/not_found'),(71,15,0,'octemplates/blog/oct_blogarticle'),(72,16,0,'octemplates/blog/oct_blogcategory'),(73,17,0,'octemplates/blog/oct_blogsearch'),(75,19,0,'octemplates/module/oct_sreview_reviews');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in'),(1,2,'Centimeter','cm'),(2,2,'Millimeter','mm'),(3,2,'Inch','in'),(1,3,'Centimeter','cm'),(2,3,'Millimeter','mm'),(3,3,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (7,5,'LIVEOPENCART: Related Options / Связанные опции','related-options','LIVEOPENCART (support@liveopencart.com / help@liveopencart.ru)','3.1.1','http://liveopencart.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<code>related-options</code>\n  <name>LIVEOPENCART: Related Options / Связанные опции</name>\n  <version>3.1.1</version>\n  <author>LIVEOPENCART (support@liveopencart.com / help@liveopencart.ru)</author>\n  <link>http://liveopencart.com</link>\n\n	<file path=\"admin/controller/catalog/product.php\">\n    \n		<operation error=\"skip\">\n			<search><![CDATA[$this->load->language(\'catalog/product\');]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options \n				$this->load->language(\'extension/module/related_options\');\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n    <operation>\n			<search><![CDATA[protected function getForm(]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				\n				$data = $this->load->controller(\'extension/module/related_options/productForm\', isset($data) ? $data : array());\n\n				// >> Related Options\n			]]></add>\n		</operation>\n    \n		<operation>\n			<search><![CDATA[function validateForm() {]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				\n				$this->load->model(\'extension/module/related_options\');\n				$ro_warning = $this->model_extension_module_related_options->productSaveValidate();\n				if ( $ro_warning ) {\n					$this->error[\'warning\'] = $ro_warning;\n				}\n					\n				// >> Related Options\n			]]></add>\n		</operation>\n	\n	</file>\n  \n  <file path=\"admin/model/catalog/product.php\">\n		\n		<operation>\n      <search><![CDATA[$this->cache->delete(\'product\');]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options \n				\n				if ( in_array(__FUNCTION__, array(\'addProduct\', \'editProduct\', \'deleteProduct\')) ) {\n					$this->load->model(\'extension/module/related_options\');\n					$this->model_extension_module_related_options->setROData($product_id, ( isset($data) ? $data :array(\'ro_data_included\'=>true) ) );\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[$this->addProduct($data)]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options \n				\n				$this->load->model(\'extension/module/related_options\');\n				\n				$data[\'ro_data\'] = $this->model_extension_module_related_options->getROData($product_id);\n				foreach ($data[\'ro_data\'] as &$rodt) {\n					$rodt[\'rovp_id\'] = 0;\n				}\n				unset($rodt);\n				\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation error=\"skip\">\n      <search><![CDATA[\n				$sql .= \" AND p.model LIKE \'\" . $this->db->escape($data[\'filter_model\']) . \"%\'\";\n			]]></search>\n			<add position=\"replace\"><![CDATA[\n				// << Related Options \n				$ro_settings = $this->config->get(\'related_options\');\n				if (isset($ro_settings[\'spec_model\']) && $ro_settings[\'spec_model\']) {\n					if ($ro_settings[\'spec_model\'] == 1) {\n						$sql .= \" AND (p.model LIKE \'\" . $this->db->escape($data[\'filter_model\']) . \"%\'\n												OR p.product_id IN ( SELECT product_id FROM \".DB_PREFIX.\"relatedoptions WHERE model LIKE \'\" . $this->db->escape($data[\'filter_model\']) . \"%\' ) )\";\n					} else {\n						$sql .= \" AND (p.model LIKE \'\" . $this->db->escape($data[\'filter_model\']) . \"%\'\n												OR p.product_id IN ( SELECT product_id FROM \".DB_PREFIX.\"relatedoptions_search WHERE model LIKE \'\" . $this->db->escape($data[\'filter_model\']) . \"%\' ) )\";\n					}\n				} else {\n					$sql .= \" AND p.model LIKE \'\" . $this->db->escape($data[\'filter_model\']) . \"%\'\";\n				}\n			\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n	</file>\n  \n  <file path=\"admin/view/template/catalog/product_form.twig\" error=\"skip\">\n    <operation>\n      <search><![CDATA[{{ footer }}]]></search>\n			<add position=\"before\"><![CDATA[\n      \n				<!-- << Related Options  -->\n				\n				{% if (ro_installed ?? false) %}\n				\n					<script type=\"text/javascript\"><!--\n					\n						var ro_variants 				= [];\n						var ro_all_options 			= {{ ro_all_options|json_encode }};\n						var ro_settings 				= {{ ro_settings|json_encode }};\n						var ro_variants 				= {{ variants_options.vopts|json_encode }};\n						var ro_variants_sorted 	= {{ variants_options.sorted|json_encode }};\n						var ro_data 						= {{ ro_data|json_encode }};\n						var ro_texts						= {{ ro_texts|json_encode }};\n						var ro_customer_groups	= {{ customer_groups|json_encode }};\n						var ro_stock_statuses		= {{ stock_statuses|json_encode }};\n						\n						if ( ro_variants.length == 0 ) {\n							$(\'#tab-related_options\').prepend(\'<div class=\"alert alert-danger\"><i class=\"fa fa-exclamation-circle\"></i> \'+ro_texts.text_ro_set_options_variants+\'<button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\');\n						}\n						\n						var ro_tabs_cnt = 0;\n					\n						var ro_extension = {}; // should be defined globally\n						setTimeout(function(){\n							// setTimeout to allow some basic elements of the page to be loaded normally while waiting for RO\n							\n							ro_extension = getROInstance({{ ro_version_pro ? \'false\' : \'true\' }});\n						},1);\n						\n					//--></script>\n			\n				{% endif %}\n			\n				<!-- >> Related Options  -->\n      \n      ]]></add>\n		</operation>\n    \n    <operation>\n      <search><![CDATA[{{ tab_design }}</a>]]></search>\n			<add position=\"after\"><![CDATA[\n        <!-- << Related Options  -->\n				{% if (ro_installed ?? false) %}\n				<li><a href=\"#tab-related_options\" data-toggle=\"tab\">{{ related_options_title }}</a></li>\n				{% endif %}\n        <!-- >> Related Options  -->\n      \n      ]]></add>\n		</operation>\n		\n    <operation>\n      <search><![CDATA[id=\"tab-discount\"]]></search>\n			<add position=\"before\"><![CDATA[\n        <!-- << Related Options  -->\n				{% if (ro_installed ?? false) %}\n					<div class=\"tab-pane\" id=\"tab-related_options\">\n						\n						{% if (ro_version_pro ?? false) %}\n							<ul class=\"nav nav-tabs\" id=\"ro_nav_tabs\">\n								<li>\n									<button type=\"button\" id=\'ro_add_tab_button\' onclick=\"ro_extension.addTab();\" data-toggle=\"tooltip\" class=\"btn\"><i class=\"fa fa-plus-circle\"></i></button>\n								</li>\n							</ul>\n						{% endif %}\n						<div class=\"tab-content\" id=\"ro_content\">{# without class=\"tab-content\" tabs do no work properly in the standard admin section #}\n						\n							<input type=\"hidden\" name=\"ro_data_included\" value=\"1\">\n							\n						</div>\n						\n						<span class=\"help-block\" style=\"margin-top: 30px;\">\n							{{ entry_ro_version }}: {{ ro_version }} | {{ text_ro_support }} | {{ text_ro_page }}\n						</span>\n				\n					</div>\n			\n				{% endif %}\n\n        <!-- >> Related Options  -->\n      \n      ]]></add>\n		</operation>\n    \n	</file>\n  \n	<file path=\"admin/controller/sale/order.php\">\n		\n		<operation error=\"skip\">\n      <search><![CDATA[\n				$this->load->language(\'sale/order\');\n			]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options\n				//$this->load->language(\'extension/module/related_options\');\n				$this->load->language(\'catalog/product\');\n				// >> Related Options \n			]]></add>\n		</operation>\n		\n		<operation error=\"log\">\n      <search><![CDATA[\n				public function getForm(\n			]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				\n				$this->load->model(\'extension/module/related_options\');\n				$data = $this->model_extension_module_related_options->getOrderInfoPageData( isset($data) ? $data : array() );\n				\n				// >> Related Options \n			]]></add>\n		</operation>\n		\n		<operation error=\"log\">\n      <search><![CDATA[\n				$this->response->setOutput($this->load->view(\'sale/order_info\', $data));\n			]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options\n				\n				$this->load->model(\'extension/module/related_options\');\n				$data = $this->model_extension_module_related_options->getOrderInfoPageData( isset($data) ? $data : $data );\n				\n				// >> Related Options \n			]]></add>\n		</operation>\n		\n		<operation error=\"log\">\n      <search><![CDATA[\n				$this->response->setOutput($this->load->view(\'sale/order_invoice\', $data));\n			]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options\n				\n				$this->load->model(\'extension/module/related_options\');\n				$data = $this->model_extension_module_related_options->getOrderInfoPageData( isset($data) ? $data : $data );\n				\n				// >> Related Options \n			]]></add>\n		</operation>\n		\n		<!-- weight for shipping list -->\n		<operation>\n      <search><![CDATA[$product_info = $this->model_catalog_product->getProduct($product[\'product_id\']);]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				$ro_settings = $this->config->get(\'related_options\');\n				$this->load->model(\'extension/module/related_options\');\n				$data[\'ro_installed\'] = $this->model_extension_module_related_options->installed();\n				if ( !empty($data[\'ro_installed\']) ) {\n					if (!empty($ro_settings[\'spec_weight\'])) {\n						if (!empty($product[\'weight\']) && $product[\'quantity\']) {\n							$product_info[\'weight\'] = (float)$product[\'weight\']/$product[\'quantity\'];\n						}\n					}\n				}\n				// >> Related Options \n			]]></add>\n		</operation>\n		\n		<operation>\n      <search regex=\"true\"><![CDATA[\n				~(=> \\$product\\[\'model\'\\],|=> isset\\(\\$product\\[\'model\'\\]\\) \\? \\$product\\[\'model\'\\] : \'\',)~\n			]]></search>\n			<add position=\"after\"><![CDATA[\n				$1\n				// << Related Options \n				\'sku\'    		  => isset($product[\'sku\']) ? $product[\'sku\'] : \'\',\n				\'upc\'    		  => isset($product[\'upc\']) ? $product[\'upc\'] : \'\',\n				\'ean\'    		  => isset($product[\'ean\']) ? $product[\'ean\'] : \'\',\n				\'location\'    => isset($product[\'location\']) ? $product[\'location\'] : \'\',\n				// >> Related Options \n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[\'weight\'   => $this->weight->format(($product_info[\'weight\']]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options \n				\'model\'    		=> isset($product[\'model\']) ? $product[\'model\'] : $product_info[\'model\'],\n				\'sku\'    		  => isset($product[\'sku\']) ? $product[\'sku\'] : $product_info[\'sku\'],\n				\'upc\'    		  => isset($product[\'upc\']) ? $product[\'upc\'] : $product_info[\'upc\'],\n				\'ean\'    		  => isset($product[\'ean\']) ? $product[\'ean\'] : $product_info[\'ean\'],\n				\'location\'    => isset($product[\'location\']) ? $product[\'location\'] : $product_info[\'location\'],\n				// >> Related Options \n			]]></add>\n		</operation>\n		\n	</file>\n	\n	<file path=\"admin/view/template/sale/order_info.twig\">\n		\n		<operation>\n      <search><![CDATA[<td class=\"text-left\">{{ column_model }}</td>]]></search>\n			<add position=\"after\"><![CDATA[\n				{# // << Related Options #}\n				{% if (ro_installed ?? false) and ro_fields is defined %}\n				\n					{# // array contains only fields enabled on the setting page of the module #}\n					{% for ro_field in ro_fields %}\n						<td class=\"text-left\">{{ _context[\'column_\'~ro_field] }}</td>\n					{% endfor %}\n				{% endif %}\n				{# // >> Related Options  #}\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[<td class=\"text-left\">{{ product.model }}</td>]]></search>\n			<add position=\"after\"><![CDATA[\n				{# // << Related Options #}\n				{% if (ro_installed ?? false) and ro_fields is defined %}\n					{# // array contains only fields enabled on the setting page of the module #}\n					{% for ro_field in ro_fields %}\n						<td class=\"text-left\">{{ product[ro_field] }}</td>\n					{% endfor %}\n				{% endif %}\n				{# // >> Related Options  #}\n			]]></add>\n		</operation>\n		\n		<operation error=\"skip\">\n      <search><![CDATA[<td colspan=\"4\" class=\"text-right\">{{ total.title }}</td>]]></search>\n			<add position=\"replace\"><![CDATA[\n				<!-- << Related Options  -->\n				<td colspan=\"{{ 4+( ro_fields is defined ? ro_fields|length : 0 ) }}\" class=\"text-right\">{{ total.title }}</td>\n				<!-- >> Related Options  -->\n			]]></add>\n		</operation>\n		\n	</file>\n	\n	<file path=\"admin/view/template/sale/order_invoice.twig\">\n		\n		<operation>\n      <search><![CDATA[<td><b>{{ column_model }}</b></td>]]></search>\n			<add position=\"after\"><![CDATA[\n				{# // << Related Options #}\n				{% if (ro_installed ?? false) and ro_fields is defined %}\n					{# // array contains only fields enabled on the module settings page #}\n					{% for ro_field in ro_fields %}\n							<td><b>{{ _context[\'column_\'~ro_field] }}</b></td>\n					{% endfor %}\n				{% endif %}\n				{# // >> Related Options  #}\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[product.model]]></search>\n			<add position=\"after\"><![CDATA[\n				{# // << Related Options #}\n				{% if (ro_installed ?? false) and ro_fields is defined %}\n					{# // array contains only fields enabled on the module settings #}\n					{% for ro_field in ro_fields %}\n						<td>{{ product[ro_field] }}</td>\n					{% endfor %}\n				{% endif %}\n				{# // >> Related Options  #}\n			]]></add>\n		</operation>\n\n		\n		<operation error=\"skip\">\n      <search><![CDATA[<td class=\"text-right\" colspan=\"4\"><b>{{ total.title }}</b></td>]]></search>\n			<add position=\"replace\"><![CDATA[\n				<!-- << Related Options  -->\n				<td class=\"text-right\"  colspan=\"{{ 4 + ( ro_fields is defined ? ro_fields|length : 0 ) }}\" ><b>{{ total.title }}</b></td>\n				<!-- >> Related Options  -->\n			]]></add>\n		</operation>\n		\n	</file>\n	\n	<file path=\"admin/view/template/sale/order_form.twig\">\n		\n		<operation>\n      <search><![CDATA[<td class=\"text-left\">{{ column_model }}</td>]]></search>\n			<add position=\"after\"><![CDATA[\n				{# // << Related Options #}\n				{% if (ro_installed ?? false) and ro_fields is defined %}\n					{# // array contains only fields enabled on the setting page of the module #}\n					{% for ro_field in ro_fields %}\n						<td class=\"text-left\">{{ _context[\'column_\'~ro_field] }}</td>\n					{% endfor %}\n				{% endif %}\n				{# // >> Related Options  #}\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[<td class=\"text-left\">{{ order_product.model }}</td>]]></search>\n			<add position=\"after\"><![CDATA[\n				{# // << Related Options #}\n				{% if (ro_installed ?? false) and ro_fields is defined %}\n					{# // array contains only fields enabled on the setting page of the module #}\n					{% for ro_field in ro_fields %}\n						<td class=\"text-left\">{{ order_product[ro_field] }}</td>\n					{% endfor %}\n				{% endif %}\n				{# // >> Related Options  #}\n			]]></add>\n		</operation>\n		\n		\n		<operation>\n      <search><![CDATA[html += \'  <td class=\"text-left\">\' + product[\'model\'] + \'</td>\';]]></search>\n			<add position=\"after\"><![CDATA[\n				{# // << Related Options #}\n				{% if (ro_installed ?? false) and ro_fields is defined %}\n					{% for ro_field in ro_fields %}\n						html += \'  <td class=\"text-left\">\' + (product[\'{{ ro_field }}\'] ? product[\'{{ ro_field }}\'] : \'\') + \'</td>\';\n					{% endfor %}	\n				{% endif %}\n				{# // >> Related Options  #}\n			]]></add>\n		</operation>\n		\n		<operation error=\"skip\">\n      <search><![CDATA[html += \'  <td class=\"text-right\" colspan=\"4\">\' + total[\'title\'] + \':</td>\';]]></search>\n			<add position=\"replace\"><![CDATA[\n				// << Related Options \n				// replaced : html += \'  <td class=\"text-right\" colspan=\"4\">\' + total[\'title\'] + \':</td>\';\n				html += \'  <td class=\"text-right\" colspan=\"{{ 4 + ( ro_fields is defined ? ro_fields|length : 0 ) }}\">\' + total[\'title\'] + \':</td>\';\n				// >> Related Options \n			]]></add>\n		</operation>\n		\n	</file>\n	\n	\n	<file path=\"catalog/controller/product/product.php\">\n    \n		<operation error=\"skip\">\n			<!-- it is necessart to have some parameters filled (like \'stock\' ) -->\n			<search><![CDATA[$this->model_catalog_product->updateViewed]]></search>\n			<!-- <search><![CDATA[public function index() {]]></search> -->\n			<add position=\"after\"><![CDATA[\n				// << Related Options  \n				$this->load->model(\'extension/liveopencart/related_options\');\n				$data = $this->model_extension_liveopencart_related_options->getProductControllerData( (!empty($data) ? $data : array()) );\n				if ( $data[\'ro_installed\'] && !empty($data[\'ro_scripts\']) ) {\n					foreach ( $data[\'ro_scripts\'] as $ro_script ) {\n						$this->document->addScript($ro_script);\n					}\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n	</file>\n	\n	<file path=\"catalog/model/catalog/product.php\">\n		<operation error=\"log\">\n			<search><![CDATA[$sql .= \" OR LCASE(p.model) = \'\" . $this->db->escape(utf8_strtolower($data[\'filter_name\'])) . \"\'\";]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				$this->load->model(\'extension/liveopencart/related_options\');\n				\n				if (	$this->model_extension_liveopencart_related_options->installed() ) {\n					$ro_settings = $this->config->get(\'related_options\');\n					if ( !empty($ro_settings[\'spec_model\']) ) {\n						if ($ro_settings[\'spec_model\'] == 1) {\n							$sql .= \" OR p.product_id IN ( SELECT RO.product_id FROM \".DB_PREFIX.\"relatedoptions RO \n									where  LCASE(RO.model) = \'\" . $this->db->escape(utf8_strtolower($data[\'filter_name\'])) . \"\' ) \";\n						} else {\n							$sql .= \" OR p.product_id IN ( SELECT ROS.product_id FROM \".DB_PREFIX.\"relatedoptions_search ROS\n									where  LCASE(ROS.model) = \'\" . $this->db->escape(utf8_strtolower($data[\'filter_name\'])) . \"\' ) \";\n						}\n					}\n					if (isset($ro_settings[\'spec_sku\']) && $ro_settings[\'spec_sku\']) {\n						$sql .= \" OR p.product_id IN ( SELECT RO.product_id FROM \".DB_PREFIX.\"relatedoptions RO \n								where  LCASE(RO.sku) = \'\" . $this->db->escape(utf8_strtolower($data[\'filter_name\'])) . \"\' ) \";\n					}\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n	</file>\n	\n	<file path=\"catalog/view/theme/*/template/product/product.twig\">\n		\n		<operation error=\"skip\">\n      <search><![CDATA[\n				$(\'#button-cart\').on(\'click\', function\n			]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				{% if ( ro_installed ?? false ) and ( ro_settings ?? false ) and ( ro_settings.stock_control ?? false ) and ( ro_data ?? false)  %}\n					if ( !ro_button_cart_control($(this)) ) {\n						return;\n					}\n				{% endif %}\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n    <operation error=\"log\">\n			\n			<search regex=\"true\"><![CDATA[~({{[ ]*footer[ ]*}})~]]></search>\n			<add><![CDATA[\n				<!-- << Related Options  -->\n				\n				{% if ( ro_product_page_script ?? false ) %}\n					{{ ro_product_page_script }}\n				{% endif %}\n	\n				<!-- >> Related Options  -->\n				$1\n			]]></add>\n		</operation>\n		\n		<operation error=\"skip\">\n			<!--<search position=\"ireplace\" ><![CDATA[<?php echo $model; ?>]]></search>-->\n			<search><![CDATA[<li>{{ text_model }} {{ model }}</li>]]></search>\n			<add  position=\"replace\"><![CDATA[<li>{{ text_model }} <font data-ro=\"product-model\">{{ model }}</font></li>]]>\n      </add>\n		</operation>\n		\n		<operation error=\"skip\">\n			<!--<search position=\"ireplace\" ><![CDATA[<?php echo $model; ?>]]></search>-->\n			<search><![CDATA[<li>{{ text_stock }} {{ stock }}</li>]]></search>\n			<add position=\"replace\"><![CDATA[<li>{{ text_stock }} <font data-ro=\"product-stock\">{{ stock }}</font></li>]]>\n      </add>\n		</operation>\n		\n	</file>\n	\n	<file path=\"catalog/controller/checkout/cart.php\">\n		\n    <operation error=\"log\">\n			<search><![CDATA[$products = $this->cart->getProducts(]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n					\n				if (!$this->config->get(\'config_stock_checkout\') || $this->config->get(\'config_stock_warning\')) {\n					$this->load->model(\'extension/liveopencart/related_options\');\n					\n					if ( $this->model_extension_liveopencart_related_options->installed() ) {\n						$products = $this->model_extension_liveopencart_related_options->cart_ckeckout_stock($products);\n						foreach ($products as $product) {\n							if (!$product[\'stock\']) {\n								$data[\'error_warning\'] = $this->language->get(\'error_stock\');\n								break;\n							}\n						}\n					}\n				}\n					\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<!-- not required -->\n		<operation error=\"log\">\n			<search><![CDATA[public function add() {]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				if ( isset($this->request->post[\'ro_not_required\']) ) {\n					$ro_not_required = explode(\',\', $this->request->post[\'ro_not_required\']);\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<!-- not required -->\n		<operation error=\"log\">\n			<search><![CDATA[if ($product_option[\'required\'] && empty($option[$product_option[\'product_option_id\']])) {]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options \n				if ( isset($ro_not_required) && in_array($product_option[\'product_option_id\'], $ro_not_required) ) continue;\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n	</file>\n	\n	<!-- self modification to check vQmod existing \n	<file name=\"admin/controller/module/related_options.php\">\n		\n    <operation error=\"log\">\n			<search position=\"before\"><![CDATA[if (empty($vQmodInstalled)) {]]></search>\n			<add><![CDATA[\n				// << Related Options \n				$vQmodInstalled = true;\n				// >> Related Options ]]>\n      </add>\n		</operation>\n		\n	</file>\n	-->\n	\n	<file path=\"catalog/controller/api/cart.php\">\n		<operation error=\"log\">\n			<search><![CDATA[$json[\'products\'][] = array(]]></search>\n			<add position=\"replace\"><![CDATA[\n				// << Related Options\n				\n				$this->load->model(\'extension/liveopencart/related_options\');\n				\n				$ro_codes = array();\n				if ( $this->model_extension_liveopencart_related_options->installed() ) {\n					$fields = $this->model_extension_liveopencart_related_options->getAdditionalFields();\n					foreach ($fields as $field) {\n						if (isset($product[$field])) {\n							$ro_codes[$field] = $product[$field];\n						}\n					}\n				}\n				\n				// replaced : $json[\'products\'][] = array(\n				$json[\'products\'][] = $ro_codes + array(\n				// >> Related Options \n			]]></add>\n		</operation>\n	\n	</file>\n	\n	<file path=\"catalog/controller/api/order.php\">\n		<operation error=\"log\">\n			<search><![CDATA[$order_data[\'products\'][] = array(]]></search>\n			<add position=\"replace\"><![CDATA[\n				// << Related Options \n			\n				$this->load->model(\'extension/liveopencart/related_options\');\n				\n				$ro_codes = array();\n				if ( $this->model_extension_liveopencart_related_options->installed() ) {\n					$fields = $this->model_extension_liveopencart_related_options->getAdditionalFields();\n					foreach ($fields as $field) {\n						if (isset($product[$field])) {\n							$ro_codes[$field] = $product[$field];\n						}\n					}\n				}\n				\n				// replaced : $order_data[\'products\'][] = array(\n				$order_data[\'products\'][] = $ro_codes + array(\n				// >> Related Options \n			]]></add>\n		</operation>\n	</file>\n	\n	\n	\n	<file path=\"catalog/controller/common/header.php\" error=\"skip\">\n		<operation>\n			<search><![CDATA[\n				$data[\'scripts\'] = $this->document->getScripts(\'header\'\n			]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options\n				\n				$this->load->model(\'extension/liveopencart/related_options\');\n				if ( $this->model_extension_liveopencart_related_options->installed()) {\n					$ro_basic_scripts = $this->model_extension_liveopencart_related_options->getBasicScripts();\n					foreach ( $ro_basic_scripts as $ro_basic_script) {\n						$this->document->addScript($ro_basic_script);\n					}\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n	</file>\n	\n\n	<file path=\"catalog/model/checkout/order.php\">\n		\n		<operation>\n			<!-- without ending for compatibility with a custom modification -->\n      <search><![CDATA[$this->db->query(\"UPDATE \" . DB_PREFIX . \"product SET quantity = (quantity - \" . (int)$order_product[\'quantity\'] . \")]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options \n			\n				\\liveopencart\\ext\\ro::getInstance($this->registry)->updateROQuantity((int)$order_product[\'product_id\'], (int)$order_id, (int)$order_product[\'order_product_id\'], (int)$order_product[\'quantity\'], \'-\');\n				\n				//$this->load->model(\'extension/liveopencart/related_options\');\n				//$this->model_extension_liveopencart_related_options->update_ro_quantity((int)$order_product[\'product_id\'], (int)$order_id, (int)$order_product[\'order_product_id\'], (int)$order_product[\'quantity\'], \'-\');\n			\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[$order_product_id = $this->db->getLastId();]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				\n				\\liveopencart\\ext\\ro::getInstance($this->registry)->updateOrderProductAdditionalFields($product, $order_product_id);\n				\n				//$this->load->model(\'extension/liveopencart/related_options\');\n				//$this->model_extension_liveopencart_related_options->updateOrderProductAdditionalFields($product, $order_product_id);\n			\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation error=\"log\">\n      <search><![CDATA[$this->db->query(\"UPDATE `\" . DB_PREFIX . \"product` SET quantity = (quantity +]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options\n				\n				\\liveopencart\\ext\\ro::getInstance($this->registry)->updateROQuantity((int)$order_product[\'product_id\'], (int)$order_id, (int)$order_product[\'order_product_id\'], (int)$order_product[\'quantity\'], \'+\');\n				\n				//$this->load->model(\'extension/liveopencart/related_options\');\n				//$this->model_extension_liveopencart_related_options->update_ro_quantity((int)$order_product[\'product_id\'], (int)$order_id, (int)$order_product[\'order_product_id\'], (int)$order_product[\'quantity\'], \'+\');\n			\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n	</file>\n	\n	\n	<!-- comp with POS -->\n	<file path=\"admin/model/pos/order.php\"  error=\"skip\">\n		\n		<operation>\n			<!-- without ending for compatibility with a custom modification -->\n      <search><![CDATA[$this->db->query(\"UPDATE \" . DB_PREFIX . \"product SET quantity = (quantity - \" . (int)$order_product[\'quantity\'] . \")]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options \n			\n				\\liveopencart\\ext\\ro::getInstance($this->registry)->updateROQuantity((int)$order_product[\'product_id\'], (int)$order_id, (int)$order_product[\'order_product_id\'], (int)$order_product[\'quantity\'], \'-\');\n				\n				//$this->load->model(\'extension/liveopencart/related_options\');\n				//$this->model_extension_liveopencart_related_options->update_ro_quantity((int)$order_product[\'product_id\'], (int)$order_id, (int)$order_product[\'order_product_id\'], (int)$order_product[\'quantity\'], \'-\');\n			\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[$order_product_id = $this->db->getLastId();]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				\n				\\liveopencart\\ext\\ro::getInstance($this->registry)->updateOrderProductAdditionalFields($product, $order_product_id);\n				\n				//$this->load->model(\'extension/liveopencart/related_options\');\n				//$this->model_extension_liveopencart_related_options->updateOrderProductAdditionalFields($product, $order_product_id);\n			\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation error=\"log\">\n      <search><![CDATA[$this->db->query(\"UPDATE `\" . DB_PREFIX . \"product` SET quantity = (quantity +]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options\n				\n				\\liveopencart\\ext\\ro::getInstance($this->registry)->updateROQuantity((int)$order_product[\'product_id\'], (int)$order_id, (int)$order_product[\'order_product_id\'], (int)$order_product[\'quantity\'], \'+\');\n				\n				//$this->load->model(\'extension/liveopencart/related_options\');\n				//$this->model_extension_liveopencart_related_options->update_ro_quantity((int)$order_product[\'product_id\'], (int)$order_id, (int)$order_product[\'order_product_id\'], (int)$order_product[\'quantity\'], \'+\');\n			\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n	</file>\n\n	<file path=\"system/library/cart/cart.php\">\n		\n		<operation>\n			<search><![CDATA[class Cart {]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				\n				//private $ro_extension_installed = null;\n				private $ro_registry = null;\n				\n				private function ro_get_products_data(&$ro_total_quantities) {\n				\n					$ro_ext = \\liveopencart\\ext\\ro::getInstance($this->ro_registry);\n					\n					$ro_combs_for_products = array();\n					$ro_total_quantities = array(); // total quantities by related options\n					\n					if (	$ro_ext->installed() ) {\n						if (!$this->data) {\n						\n							$cart_query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"cart WHERE customer_id = \'\" . (int)$this->customer->getId() . \"\' AND session_id = \'\" . $this->db->escape($this->session->getId()) . \"\'\");\n	\n							foreach ($cart_query->rows as $cart) {\n								$cart_id = $cart[\'cart_id\'];\n								$product_id = $cart[\'product_id\'];\n								$quantity = $cart[\'quantity\'];\n								\n								if ($quantity > 0) {\n									$options = (array)json_decode($cart[\'option\']);\n									\n									$ro_combs_for_products[$cart_id] = $ro_ext->getROCombsByPOIds($product_id, $options, true);\n									\n									if ($ro_combs_for_products[$cart_id]) {\n										foreach ($ro_combs_for_products[$cart_id] as $ro_comb) {\n											if (!isset($ro_total_quantities[$ro_comb[\'relatedoptions_id\']])) {\n												$ro_total_quantities[$ro_comb[\'relatedoptions_id\']] = 0;\n											}\n											$ro_total_quantities[$ro_comb[\'relatedoptions_id\']]+= $quantity;\n										}\n									}\n								}\n							}\n						}\n					}\n					\n					return $ro_combs_for_products;\n				}\n				\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation error=\"skip\">\n			<search><![CDATA[$this->db = $registry->get(\'db\');]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				\n				//if ( $this->ro_installed() ) {\n					$this->ro_registry = $registry;\n				//}\n				\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[public function getProducts(]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				\n				if ( class_exists(\'\\liveopencart\\ext\\ro\') ) {\n					if ( \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->installed() ) {\n						$ro_total_quantities = array();\n						$ro_combs_for_products = $this->ro_get_products_data($ro_total_quantities);\n						$ro_settings = $this->config->get(\'related_options\');\n					}\n				}\n				\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		\n		<operation>\n      <search><![CDATA[if ($product_query->num_rows]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n	\n				$ro_price_data = false;\n				$ro_custom_fields = false;\n				if ( class_exists(\'\\liveopencart\\ext\\ro\') ) {\n					if ( \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->installed() ) {\n						$ro_cart_quantity = $cart[\'quantity\'];\n						\n						$ro_combs = false;\n						if ($ro_combs_for_products && isset($ro_combs_for_products[$cart[\'cart_id\']]) ) {\n							$ro_combs = $ro_combs_for_products[$cart[\'cart_id\']];\n						/*	\n						} elseif ( !$cart[\'cart_id\'] && !empty($cart) ) {\n							$ro_temp_options = json_decode($cart[\'option\']);\n							$ro_combs = \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->getROCombsByPOIds($cart[\'product_id\'], $ro_temp_options, true);\n						*/	\n						}\n						if ( $ro_combs ) {\n						\n							$ro_custom_fields = \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->getCustomFields($product_query->row, $ro_combs);\n						\n							$ro_model = $ro_custom_fields[\'codes\'][\'model\'];\n							if ($ro_model) {\n								$product_query->row[\'model\'] = $ro_model;\n							}\n							\n							$ro_weight = $ro_custom_fields[\'weight\'];\n							if (isset($ro_settings[\'spec_weight\']) && $ro_settings[\'spec_weight\'] && $ro_weight !== false ) {\n								$product_query->row[\'weight\'] = $ro_weight;\n							}\n							\n							if ( isset($ro_settings[\'spec_price\']) && $ro_settings[\'spec_price\'] ) {\n								$ro_price_data = \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->calcProductPriceWithRO($product_query->row[\'price\'], $ro_combs);\n								$product_query->row[\'price\'] = $ro_price_data[\'price\'];\n							}\n							\n							foreach ($ro_combs as $ro_comb) {\n								if ($ro_comb[\'quantity\'] < $ro_cart_quantity && ( empty($ro_settings[\'allow_zero_select\']) || !$ro_settings[\'allow_zero_select\']) ) {\n									$stock = false;\n								}\n							}\n						}\n					}\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[if ($product_discount_query->num_rows) {]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options\n				\n				if ( class_exists(\'\\liveopencart\\ext\\ro\') ) {\n					if ( \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->installed() && !empty($ro_combs) && !empty($ro_settings[\'spec_price\']) && !empty($ro_settings[\'spec_price_discount\']) ) {\n						// Related Options discounts\n						$ro_discount_query = \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->getDiscountQueryForCart($ro_combs, $ro_total_quantities);\n						if ( $ro_discount_query && $ro_discount_query->num_rows ) {\n							$product_discount_query = $ro_discount_query;\n						}\n					}\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[if ($product_special_query->num_rows]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options\n				\n				if ( class_exists(\'\\liveopencart\\ext\\ro\') ) {\n					if ( \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->installed() && !empty($ro_combs) && !empty($ro_settings[\'spec_price\']) && !empty($ro_settings[\'spec_price_special\']) ) {\n						// Related Options specials\n						$ro_special_query = \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->getSpecialQueryForCart($ro_combs);\n						if ( $ro_special_query && $ro_special_query->num_rows ) {\n							$product_special_query = $ro_special_query;\n						}\n					}\n				}\n			\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[$price = $product_discount_query->row[\'price\'];]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				if ( class_exists(\'\\liveopencart\\ext\\ro\') ) {\n					if ( \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->installed() ) {\n						if ( !empty($ro_price_data[\'price_modificator\']) ) {\n							$price = $price + $ro_price_data[\'price_modificator\'];\n						}\n					}\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation>\n      <search><![CDATA[$price = $product_special_query->row[\'price\'];]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				if ( class_exists(\'\\liveopencart\\ext\\ro\') ) {\n					if ( \\liveopencart\\ext\\ro::getInstance($this->ro_registry)->installed() ) {\n						if ( !empty($ro_price_data[\'price_modificator\']) ) {\n							$price = $price + $ro_price_data[\'price_modificator\'];\n						}\n					}\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation>\n			<search><![CDATA[\n				\'product_id\'      => $product_query->row[\'product_id\'],\n			]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				\n				\'sku\'         => !empty($ro_custom_fields) ? $ro_custom_fields[\'codes\'][\'sku\'] : $product_query->row[\'sku\'],\n				\'upc\'         => !empty($ro_custom_fields) ? $ro_custom_fields[\'codes\'][\'upc\'] : $product_query->row[\'upc\'],\n				\'ean\'         => !empty($ro_custom_fields) ? $ro_custom_fields[\'codes\'][\'ean\'] : $product_query->row[\'ean\'],\n				\'location\'    => !empty($ro_custom_fields) ? $ro_custom_fields[\'codes\'][\'location\'] : $product_query->row[\'location\'],\n				\n				// >> Related Options \n			\n			]]></add>\n		</operation>\n		\n		<!--\n		<operation>\n			<search><![CDATA[$product_data[] = array(]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				\n				\'sku\'         => !empty($ro_custom_fields) ? $ro_custom_fields[\'codes\'][\'sku\'] : $product_query->row[\'sku\'],\n				\'upc\'         => !empty($ro_custom_fields) ? $ro_custom_fields[\'codes\'][\'upc\'] : $product_query->row[\'upc\'],\n				\'ean\'         => !empty($ro_custom_fields) ? $ro_custom_fields[\'codes\'][\'ean\'] : $product_query->row[\'ean\'],\n				\'location\'    => !empty($ro_custom_fields) ? $ro_custom_fields[\'codes\'][\'location\'] : $product_query->row[\'location\'],\n				\n				// >> Related Options \n			\n			]]></add>\n		</operation>\n		-->\n					\n	</file>\n	\n	\n\n\n	<!-- comp with \"Product Option Color Image\" module -->\n	<file path=\"catalog/view/theme/*/template/extension/module/prodoptimg.twig\" error=\"skip\">\n    \n		<operation error=\"skip\">\n			<search><![CDATA[\n				$(this).find(\'input[type=\"radio\"]\').attr(\'checked\',true);\n			]]></search>\n			<add position=\"before\"><![CDATA[\n				// << Related Options \n				if ( $(this).find(\'input[type=\"radio\"]\').is(\':disabled\') ) {\n					return;\n				}\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n		<operation error=\"skip\">\n			<search><![CDATA[\n				$(this).find(\'input[type=\"radio\"]\').attr(\'checked\',true);\n			]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options \n				$(this).find(\'input[type=\"radio\"]\').change();\n				// >> Related Options\n			]]></add>\n		</operation>\n		\n	</file>\n	\n	<file path=\"catalog/controller/account/order.php\">\n		<operation error=\"log\">\n			<search><![CDATA[\n				$products = $this->model_account_order->getOrderProducts($this->request->get[\'order_id\']);\n			]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				\n				$products = \\liveopencart\\ext\\ro::getInstance($this->registry)->fillOrderProductsAdditionalFieldsForProducts($products);\n				\n				// >> Related Options \n			]]></add>\n		</operation>\n	\n	</file>\n	\n	<!-- comp with PDF Invoice Pro -->\n	<file path=\"catalog/model/tool/pdf_invoice.php\" error=\"skip\">\n		<operation error=\"log\">\n			<search><![CDATA[\n				$products = $this->{$order_model2}->getOrderProducts($order_id);\n			]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				\n				$products = \\liveopencart\\ext\\ro::getInstance($this->registry)->fillOrderProductsAdditionalFieldsForProducts($products);\n				\n				// >> Related Options \n			]]></add>\n		</operation>\n		\n			\n		<operation error=\"log\">\n			<search><![CDATA[\n				$full_product = array_merge($full_product, (array) $this->model_catalog_product->getProduct($product[\'product_id\']));\n			]]></search>\n			<add position=\"after\"><![CDATA[\n				// << Related Options\n				$full_product = array_merge($full_product, $product);\n				// >> Related Options \n			]]></add>\n		</operation>\n	\n	</file>\n\n</modification>',1,'2021-12-10 17:55:33'),(6,4,'Export/Import Tool (V3.22) for OpenCart 3.x','Export/Import Tool (V3.22) for OpenCart 3.x','mhccorp.com','3.x-3.22','https://www.mhccorp.com','<modification>\n	<name>Export/Import Tool (V3.22) for OpenCart 3.x</name>\n	<code>Export/Import Tool (V3.22) for OpenCart 3.x</code>\n	<version>3.x-3.22</version>\n	<author>mhccorp.com</author>\n	<link>https://www.mhccorp.com</link>\n	<file path=\"admin/controller/common/column_left.php\">\n		<operation>\n			<search><![CDATA[if ($this->user->hasPermission(\'access\', \'tool/upload\')) {]]></search>\n			<add position=\"before\"><![CDATA[\n			if ($this->user->hasPermission(\'access\', \'extension/export_import\')) {\n				$maintenance[] = array(\n					\'name\'	   => $this->language->get(\'text_export_import\'),\n					\'href\'     => $this->url->link(\'extension/export_import\', \'user_token=\' . $this->session->data[\'user_token\'], true),\n					\'children\' => array()		\n				);\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/en{*}/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/ru{*}/common/column_left.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Экспорт / Импорт\';\n			]]></add>\n		</operation>\n	</file>\n</modification>\n',1,'2021-10-28 16:51:48');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (30,'Category','banner','{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"0\"}'),(29,'Brands','carousel','{\"name\":\"Brands\",\"title\":{\"3\":\"\",\"2\":\"\",\"1\":\"\"},\"banner_id\":\"8\",\"width\":\"170\",\"height\":\"120\",\"status\":\"1\"}'),(28,'Модуль рекомендовані товари','featured','{\"name\":\"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0440\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u043e\\u0432\\u0430\\u043d\\u0456 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0438\",\"product_name\":\"\",\"product\":[\"40\",\"42\",\"28\",\"41\",\"30\"],\"limit\":\"12\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(27,'Home Page','slideshow','{\"name\":\"Home Page\",\"banner_id\":\"9\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),(31,'Банер простий','banner','{\"name\":\"\\u0411\\u0430\\u043d\\u0435\\u0440 \\u043f\\u0440\\u043e\\u0441\\u0442\\u0438\\u0439\",\"banner_id\":\"6\",\"width\":\"200\",\"height\":\"300\",\"status\":\"1\"}'),(32,'Слайдшоу для главной','oct_slideshow_plus','{\"status\":\"on\",\"name\":\"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0448\\u043e\\u0443 \\u0434\\u043b\\u044f \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439\",\"slideshow_id\":\"1\",\"width\":\"300\",\"height\":\"300\",\"dop_width\":\"255\",\"dop_height\":\"190\",\"paginations_status\":\"on\"}'),(33,'XBOX ONE','oct_banner_plus','{\"status\":\"on\",\"name\":\"XBOX ONE\",\"banner_id\":\"2\",\"width\":\"300\",\"height\":\"200\"}'),(34,'Баннер - левая колонка','oct_banner_plus','{\"status\":\"on\",\"name\":\"\\u0411\\u0430\\u043d\\u043d\\u0435\\u0440 - \\u043b\\u0435\\u0432\\u0430\\u044f \\u043a\\u043e\\u043b\\u043e\\u043d\\u043a\\u0430\",\"banner_id\":\"1\",\"width\":\"200\",\"height\":\"200\"}'),(35,'Два баннера','oct_banner_plus','{\"status\":\"on\",\"name\":\"\\u0414\\u0432\\u0430 \\u0431\\u0430\\u043d\\u043d\\u0435\\u0440\\u0430\",\"banner_id\":\"3\",\"width\":\"300\",\"height\":\"200\"}'),(36,'Останні відгуки на головній','oct_product_review','{\"status\":\"on\",\"name\":\"\\u041e\\u0441\\u0442\\u0430\\u043d\\u043d\\u0456 \\u0432\\u0456\\u0434\\u0433\\u0443\\u043a\\u0438 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u043d\\u0456\\u0439\",\"limit\":\"4\",\"width\":\"160\",\"height\":\"160\"}'),(37,'Переваги головна','oct_benefits','{\"status\":\"on\",\"name\":\"\\u041f\\u0435\\u0440\\u0435\\u0432\\u0430\\u0433\\u0438 \\u0433\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430\",\"oct_benegits_data\":[{\"icon\":\"far fa-thumbs-up\",\"title\":{\"3\":\"\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0456\\u044f \\u044f\\u043a\\u043e\\u0441\\u0442\\u0456\",\"2\":\"\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430\",\"1\":\"Quality assurance\"},\"text\":{\"3\":\"\\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0439\\u043d\\u043e\\u0435 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u0435 \\u043d\\u0430 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0432 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435\",\"2\":\"100% \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f \\u043d\\u0430 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b,  \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u044c\\u0442\\u0435 \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u044b \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430\",\"1\":\"100% guarantee on all products in the store\"},\"link\":{\"3\":\"\\/about_us_ua\\/\",\"2\":\"\\/about_us_ua\\/\",\"1\":\"#\"},\"color_icon\":\"rgb(203, 207, 212)\",\"color_fon_hover\":\"rgb(24, 164, 225)\",\"color_title\":\"rgb(48, 54, 61)\",\"color_text\":\"rgb(110, 114, 126)\"},{\"icon\":\"fas fa-gift\",\"title\":{\"3\":\"\\u0417\\u043d\\u0438\\u0436\\u043a\\u0438 \\u0442\\u0430 \\u0430\\u043a\\u0446\\u0456\\u0457\",\"2\":\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u0438 \\u0438 \\u0430\\u043a\\u0446\\u0438\\u0438\",\"1\":\"Discounts\"},\"text\":{\"3\":\"\\u0417\\u0430\\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0443\\u0439\\u0442\\u0435\\u0441\\u044c, \\u0442\\u0430 \\u043e\\u0442\\u0440\\u0438\\u043c\\u0443\\u0439\\u0442\\u0435 \\u0430\\u043a\\u0446\\u0456\\u0439\\u043d\\u0456 \\u043f\\u0440\\u043e\\u043f\\u043e\\u0437\\u0438\\u0446\\u0456\\u0457 \",\"2\":\"\\u0417\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u0443\\u0439\\u0442\\u0435\\u0441\\u044c \\u0438 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0430\\u0439\\u0442\\u0435 \\u0430\\u043a\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0435 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f\",\"1\":\"Every month we draw prize points\"},\"link\":{\"3\":\"https:\\/\\/www.sit.com.ua\\/index.php?route=account\\/register\",\"2\":\"https:\\/\\/www.sit.com.ua\\/index.php?route=account\\/register\",\"1\":\"\\/about-us-en\\/\"},\"color_icon\":\"rgb(203, 207, 212)\",\"color_fon_hover\":\"rgb(24, 164, 225)\",\"color_title\":\"rgb(48, 54, 61)\",\"color_text\":\"rgb(110, 114, 126)\"},{\"icon\":\"fab fa-cc-visa\",\"title\":{\"3\":\"\\u0417\\u0440\\u0443\\u0447\\u043d\\u0430 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430\",\"2\":\"\\u0423\\u0434\\u043e\\u0431\\u043d\\u0430\\u044f \\u043e\\u043f\\u043b\\u0430\\u0442\\u0430\",\"1\":\"Convenient payment\"},\"text\":{\"3\":\"\\u041f\\u043b\\u0430\\u0442\\u0456\\u0442\\u044c \\u043f\\u043b\\u0430\\u0442\\u0456\\u0436\\u043d\\u0438\\u043c\\u0438 \\u043a\\u0430\\u0440\\u0442\\u0430\\u043c\\u0438, \\u041f\\u0440\\u0438\\u0432\\u0430\\u0442 24, \\u043d\\u0430 \\u0440\\u043e\\u0437\\u0440\\u0430\\u0445\\u0443\\u043d\\u043a\\u043e\\u0432\\u0438\\u0439 \\u0440\\u0430\\u0445\\u0443\\u043d\\u043e\\u043a\",\"2\":\"\\u041f\\u043b\\u0430\\u0442\\u0438\\u0442\\u0435 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u043c\\u0438 \\u043a\\u0430\\u0440\\u0442\\u0430\\u043c\\u0438, \\u041f\\u0440\\u0438\\u0432\\u0430\\u0442 24, \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442\\u043d\\u044b\\u0439 \\u0441\\u0447\\u0435\\u0442\",\"1\":\"Pay with credit cards, Google Pay or Apple Pay\"},\"link\":{\"3\":\"https:\\/\\/www.sit.com.ua\\/payment_ua\",\"2\":\"https:\\/\\/www.sit.com.ua\\/payment_ua\",\"1\":\"\\/privacy-en\\/\"},\"color_icon\":\"rgb(203, 207, 212)\",\"color_fon_hover\":\"rgb(24, 164, 225)\",\"color_title\":\"rgb(48, 54, 61)\",\"color_text\":\"rgb(110, 114, 126)\"},{\"icon\":\"fas fa-shipping-fast\",\"title\":{\"3\":\"\\u0417\\u0440\\u0443\\u0447\\u043d\\u0430 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"2\":\"\\u0423\\u0434\\u043e\\u0431\\u043d\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"1\":\"Fast shipping\"},\"text\":{\"3\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0454\\u043c\\u043e \\u0443 \\u0432\\u0441\\u0456 \\u0440\\u0435\\u0433\\u0456\\u043e\\u043d\\u0438 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438\",\"2\":\" \\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0435\",\"1\":\"We deliver for the day across the country\"},\"link\":{\"3\":\"\\/delivery_ua\\/\",\"2\":\"\\/delivery\\/\",\"1\":\"\\/delivery-en\\/\"},\"color_icon\":\"rgb(203, 207, 212)\",\"color_fon_hover\":\"rgb(24, 164, 225)\",\"color_title\":\"rgb(48, 54, 61)\",\"color_text\":\"rgb(110, 114, 126)\"}]}'),(38,'Переглянуті товари на головній','oct_product_views','{\"status\":\"on\",\"name\":\"\\u041f\\u0435\\u0440\\u0435\\u0433\\u043b\\u044f\\u043d\\u0443\\u0442\\u0456 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0438 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u043d\\u0456\\u0439\",\"heading\":{\"3\":\"\\u0412\\u0438 \\u0434\\u0438\\u0432\\u0438\\u043b\\u0438\\u0441\\u044c\",\"2\":\"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438\",\"1\":\"you watched\"},\"width\":\"200\",\"height\":\"200\",\"limit\":\"8\"}'),(39,'Квадрокоптеры на главной','oct_products_from_category','{\"status\":\"on\",\"name\":\"\\u041a\\u0432\\u0430\\u0434\\u0440\\u043e\\u043a\\u043e\\u043f\\u0442\\u0435\\u0440\\u044b \\u043d\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439\",\"heading\":{\"3\":\"\\u041d\\u043e\\u0432i \\u043a\\u0432\\u0430\\u0434\\u0440\\u043e\\u043a\\u043e\\u043f\\u0442\\u0435\\u0440\\u0438\",\"2\":\"\\u041d\\u043e\\u0432\\u044b\\u0435 \\u043a\\u0432\\u0430\\u0434\\u0440\\u043e\\u043a\\u043e\\u043f\\u0442\\u0435\\u0440\\u044b\",\"1\":\"New quadrocopters\"},\"link\":{\"3\":\"gadjety-ua\\/kvadrokoptery-ua\",\"2\":\"gadjety-ru\\/kvadrokoptery-ru\",\"1\":\"gadjety-en\\/kvadrokoptery-en\"},\"module_categories\":[\"36\"],\"limit\":\"25\",\"width\":\"200\",\"height\":\"200\",\"sort\":\"pd.name\",\"order\":\"ASC\"}'),(40,'тестовый','oct_products_from_category','{\"status\":\"on\",\"name\":\"\\u0442\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439\",\"heading\":{\"3\":\"\\u0442\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439\",\"2\":\"\\u0442\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439\",\"1\":\"\\u0442\\u0435\\u0441\\u0442\\u043e\\u0432\\u044b\\u0439\"},\"link\":{\"3\":\"\",\"2\":\"\",\"1\":\"\"},\"limit\":\"25\",\"width\":\"200\",\"height\":\"200\",\"sort\":\"pd.name\",\"order\":\"ASC\"}'),(41,'Категорії на головній','oct_category_wall','{\"status\":\"on\",\"name\":\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u043d\\u0456\\u0439\",\"heading\":{\"uk-ua\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u0456 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457\",\"ru-ru\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"en-gb\":\"Popular categories\"},\"module_categories\":[\"33\",\"20\",\"34\",\"17\"],\"sort\":\"c.sort_order\",\"limit\":\"4\",\"width\":\"107\",\"height\":\"107\",\"show_image\":\"on\",\"show_sub_categories\":\"on\"}'),(42,'Модуль акції','special','{\"name\":\"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0430\\u043a\\u0446\\u0456\\u0457\",\"limit\":\"15\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(43,'Модуль новинки','latest','{\"name\":\"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u043d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438\",\"limit\":\"12\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),(44,'Сео-текст на головній','html','{\"name\":\"\\u0421\\u0435\\u043e-\\u0442\\u0435\\u043a\\u0441\\u0442 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u043d\\u0456\\u0439\",\"module_description\":{\"3\":{\"title\":\"\\u0406\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d SIT.COM.UA - \\u043a\\u0443\\u043f\\u0443\\u0439 \\u0437 \\u0432\\u0438\\u0433\\u043e\\u0434\\u043e\\u044e!\",\"description\":\"&lt;p&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u0406\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d SIT.COM.UA - \\u0441\\u0430\\u0439\\u0442 \\u0449\\u043e \\u0437\\u0430\\u0439\\u043c\\u0430\\u0454\\u0442\\u044c\\u0441\\u044f \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0435\\u043c \\u0441\\u0442\\u0456\\u043b\\u044c\\u0446\\u0456\\u0432, \\u043a\\u0440\\u0456\\u0441\\u0435\\u043b, \\u043e\\u0444\\u0456\\u0441\\u043d\\u0438\\u0445 \\u043c\\u0435\\u0431\\u043b\\u0456\\u0432, \\u043c\\u0435\\u0431\\u043b\\u0456\\u0432 \\u0434\\u043b\\u044f \\u0431\\u0443\\u0434\\u0438\\u043d\\u043a\\u0443 \\u0432 \\u0456\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442\\u0456. \\u0414\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u0454 \\u043a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0443\\u0432\\u0430\\u0447\\u0430\\u043c \\u0441\\u0444\\u043e\\u0440\\u043c\\u0443\\u0432\\u0430\\u0442\\u0438 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u043d\\u0430 \\u043a\\u0443\\u043f\\u0456\\u0432\\u043b\\u044e, \\u0432\\u0438\\u0431\\u0440\\u0430\\u0442\\u0438 \\u0441\\u043f\\u043e\\u0441\\u0456\\u0431 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0438 \\u0456 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u0432 \\u043c\\u0435\\u0440\\u0435\\u0436\\u0456 \\u0406\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442. \\u0412\\u0438\\u0431\\u0440\\u0430\\u0432\\u0448\\u0438 \\u043d\\u0435\\u043e\\u0431\\u0445\\u0456\\u0434\\u043d\\u0456 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0438, \\u043a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0443\\u0432\\u0430\\u0447 \\u0437\\u0430\\u0437\\u0432\\u0438\\u0447\\u0430\\u0439 \\u043c\\u0430\\u0454 \\u043c\\u043e\\u0436\\u043b\\u0438\\u0432\\u0456\\u0441\\u0442\\u044c \\u043f\\u0440\\u0438\\u0434\\u0431\\u0430\\u0442\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440 \\u0437 \\u043d\\u0430\\u044f\\u0432\\u043d\\u043e\\u0441\\u0442\\u0456 \\u0430\\u0431\\u043e \\u0436 \\u0437\\u0430\\u043c\\u043e\\u0432\\u0438\\u0442\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0456\\u044e \\u0443 \\u0432\\u0438\\u0440\\u043e\\u0431\\u043d\\u0438\\u0446\\u0442\\u0432\\u043e, \\u0432\\u0438\\u0431\\u0440\\u0430\\u0432\\u0448\\u0438 \\u0441\\u0430\\u043c\\u0435 \\u0442\\u0443 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0430\\u0446\\u0456\\u044e \\u044f\\u043a\\u0430 \\u043d\\u0430\\u0439\\u0431\\u0456\\u043b\\u044c\\u0448 \\u043f\\u0456\\u0434\\u0445\\u043e\\u0434\\u0438\\u0442\\u044c \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0443 \\u0432\\u0456\\u0434\\u043f\\u043e\\u0432\\u0456\\u0434\\u043d\\u043e \\u0434\\u043e \\u0439\\u043e\\u0433\\u043e \\u0432\\u0438\\u043c\\u043e\\u0433.\\r\\n&lt;\\/span&gt;&lt;\\/span&gt;&lt;\\/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&amp;nbsp; &amp;nbsp;\\u0412 \\u0430\\u0441\\u043e\\u0440\\u0442\\u0438\\u043c\\u0435\\u043d\\u0442\\u0456&amp;nbsp; \\u0412\\u0438 \\u0437\\u043d\\u0430\\u0439\\u0434\\u0435\\u0442\\u0435 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0456\\u044e \\u043f\\u0435\\u0440\\u0435\\u0432\\u0456\\u0440\\u0435\\u043d\\u0438\\u0445 \\u0432\\u0456\\u0442\\u0447\\u0438\\u0437\\u043d\\u044f\\u043d\\u0438\\u0445 \\u0456 \\u0437\\u0430\\u0440\\u0443\\u0431\\u0456\\u0436\\u043d\\u0438\\u0445 \\u0432\\u0438\\u0440\\u043e\\u0431\\u043d\\u0438\\u043a\\u0456\\u0432 \\u0441\\u0442\\u0456\\u043b\\u044c\\u0446\\u0456\\u0432, \\u043a\\u0440\\u0456\\u0441\\u0435\\u043b \\u0442\\u0430 \\u043c\\u0435\\u0431\\u043b\\u0456\\u0432, \\u043e\\u0442\\u0440\\u0438\\u043c\\u0430\\u0454\\u0442\\u0435 \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0456\\u044e \\u044f\\u043a\\u043e\\u0441\\u0442\\u0456 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0456\\u0457, \\u0430 \\u0442\\u0430\\u043a\\u043e\\u0436 \\u043f\\u0456\\u0441\\u043b\\u044f\\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0456\\u0439\\u043d\\u0435 \\u043e\\u0431\\u0441\\u043b\\u0443\\u0433\\u043e\\u0432\\u0443\\u0432\\u0430\\u043d\\u043d\\u044f. \\u041d\\u0430\\u0448 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u043d\\u0430\\u0434\\u0430\\u0441\\u0442\\u044c \\u0412\\u0430\\u043c \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u0432\\u0438\\u0431\\u0456\\u0440 \\u043a\\u043e\\u043c\\u043f\'\\u044e\\u0442\\u0435\\u0440\\u043d\\u0438\\u0445 \\u043a\\u0440\\u0456\\u0441\\u0435\\u043b, \\u0441\\u0442\\u0456\\u043b\\u044c\\u0446\\u0456\\u0432 \\u0434\\u043b\\u044f \\u0432\\u0456\\u0434\\u0432\\u0456\\u0434\\u0443\\u0432\\u0430\\u0447\\u0456\\u0432, \\u043a\\u043e\\u043d\\u0444\\u0435\\u0440\\u0435\\u043d\\u0446\\u0456\\u0439\\u043d\\u0438\\u0445 \\u043a\\u0440\\u0456\\u0441\\u0435\\u043b, \\u043a\\u0440\\u0456\\u0441\\u0435\\u043b \\u0434\\u043b\\u044f \\u043a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a\\u0456\\u0432, \\u0441\\u0442\\u0456\\u043b\\u044c\\u0446\\u0456\\u0432 \\u0434\\u043b\\u044f \\u043a\\u0430\\u0444\\u0435, \\u0431\\u0430\\u0440\\u0456\\u0432 \\u0456 \\u0440\\u0435\\u0441\\u0442\\u043e\\u0440\\u0430\\u043d\\u0456\\u0432, \\u0434\\u0438\\u0442\\u044f\\u0447\\u0438\\u0445 \\u043a\\u0440\\u0456\\u0441\\u0435\\u043b, \\u0430 \\u0442\\u0430\\u043a\\u043e\\u0436 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0442\\u0443\\u044e\\u0447\\u0456 \\u043f\\u043e \\u0440\\u0435\\u043c\\u043e\\u043d\\u0442\\u0443 \\u0432\\u0441\\u0456\\u0445 \\u0432\\u0438\\u0434\\u0456\\u0432 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0456\\u0457 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u043e\\u0433\\u043e \\u043f\\u0435\\u0440\\u0435\\u043b\\u0456\\u043a\\u0443.&lt;\\/span&gt;&lt;\\/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;br&gt;&lt;\\/span&gt;\\r\\n&lt;\\/p&gt;\"},\"2\":{\"title\":\"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d SIT.COM.UA - \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0439 \\u0441 \\u0432\\u044b\\u0433\\u043e\\u0434\\u043e\\u0439!\",\"description\":\"\"},\"1\":{\"title\":\"Online Store SIT.COM.UA - buy with profit!\",\"description\":\"\"}},\"status\":\"1\"}'),(45,'Модуль хіти продаж','bestseller','{\"name\":\"\\u041c\\u043e\\u0434\\u0443\\u043b\\u044c \\u0445\\u0456\\u0442\\u0438 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\",\"limit\":\"12\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_banner_plus` WRITE;
/*!40000 ALTER TABLE `oc_oct_banner_plus` DISABLE KEYS */;
INSERT INTO `oc_oct_banner_plus` VALUES (1,'Баннер - левая колонка',1),(2,'XBOX ONE',1),(3,'Баннер - 2 блока',1);
/*!40000 ALTER TABLE `oc_oct_banner_plus` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_banner_plus_image` WRITE;
/*!40000 ALTER TABLE `oc_oct_banner_plus_image` DISABLE KEYS */;
INSERT INTO `oc_oct_banner_plus_image` VALUES (9,1,'catalog/demo/gift-voucher-birthday.jpg','rgb(25, 105, 209)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgba(102, 102, 102, 0)','rgba(43, 106, 182, 0.5)','rgb(255, 255, 255)',0),(2,2,'catalog/demo/ipod_shuffle_3.jpg','rgb(25, 105, 209)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgba(102, 102, 102, 0)','rgba(43, 106, 182, 0.5)','rgb(255, 255, 255)',0),(8,3,'catalog/demo/apple_logo.jpg','rgb(25, 105, 209)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgba(102, 102, 102, 0)','rgba(43, 106, 182, 0.5)','rgb(255, 255, 255)',1),(7,3,'catalog/demo/canon_logo.jpg','rgb(25, 105, 209)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgba(102, 102, 102, 0)','rgba(43, 106, 182, 0.5)','rgb(255, 255, 255)',2);
/*!40000 ALTER TABLE `oc_oct_banner_plus_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_banner_plus_image_description` WRITE;
/*!40000 ALTER TABLE `oc_oct_banner_plus_image_description` DISABLE KEYS */;
INSERT INTO `oc_oct_banner_plus_image_description` VALUES (9,3,1,'Дитячі велосипеди, нові надходження 2019','','Детальніше','Дитячі велосипеди для літнього сезону. Знижки -20% при замовленні від 15 000 грн.'),(2,3,2,'MICROSOFT XBOX ONE S ALL-DIGITAL EDITION','/index.php?route=product/category&amp;path=374_375_377','Дивитись усі','У комплекті: Консоль, контролер, кабель живлення, кабель USB &lt;br&gt;\r\nЗнижка на 2 геймпад - 50%'),(2,2,2,'MICROSOFT XBOX ONE S ALL-DIGITAL EDITION','/index.php?route=product/category&amp;path=374_375_377','Смотреть все','В комплекте: Консоль, контроллер, кабель питания, кабель USB&lt;br&gt;\r\nСкидка на 2 геймпад - 50%'),(2,1,2,'MICROSOFT XBOX ONE S ALL-DIGITAL EDITION','','See all','Included: Console, controller, power cable, USB cable &lt;br&gt;\r\nDiscount for 2 gamepads - 50%'),(8,3,3,'Нові велосипеди 2020','','Дивитись усі','Ще швидше, ще надійніше.&lt;br&gt;\r\nНові моделі від 150 000 руб.'),(8,2,3,'Новые велосипеды 2020','','Смотреть все','Еще быстрее, еще надежнее.&lt;br&gt;\r\nНовые модели от 150 000 руб.'),(8,1,3,'New bikes 2020','','See all','Even faster, more reliable.&lt;br&gt;\r\nNew models from 150 000 rub.'),(7,1,3,'SOLOWHEEL XTREME WHITE','','See all','Delivery in 1-2 days &lt;br&gt;\r\n30% off'),(7,2,3,'SOLOWHEEL XTREME WHITE','','Смотреть все','Доставка за 1-2 дня&lt;br&gt;\r\nСкидка -30%'),(7,3,3,'SOLOWHEEL XTREME WHITE','','Дивитись усі','Доставка за 1-2 дня &lt;br&gt;\r\nЗнижка -30%'),(9,2,1,'Скидка на все велосипеды -20%','','Подробнее','Детские велосипеды для летнего сезона. Скидки -20% при заказе от 15 000 руб.'),(9,1,1,'Children\'s bikes, new arrivals 2019','','more','Children\'s bikes for the summer season. Discounts -20% when ordering from 15 000 dollars.');
/*!40000 ALTER TABLE `oc_oct_banner_plus_image_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogarticle` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogarticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogarticle` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogarticle_description` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogarticle_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogarticle_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogarticle_image` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogarticle_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogarticle_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogarticle_related` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogarticle_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogarticle_related` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogarticle_related_product` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogarticle_related_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogarticle_related_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogarticle_to_category` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogarticle_to_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogarticle_to_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogarticle_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogarticle_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogarticle_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogarticle_to_store` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogarticle_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogarticle_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogcategory` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogcategory_description` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogcategory_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogcategory_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogcategory_path` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogcategory_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogcategory_path` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogcategory_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogcategory_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogcategory_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogcategory_to_store` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogcategory_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogcategory_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_blogcomments` WRITE;
/*!40000 ALTER TABLE `oc_oct_blogcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_blogcomments` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_extra_tabs` WRITE;
/*!40000 ALTER TABLE `oc_oct_extra_tabs` DISABLE KEYS */;
INSERT INTO `oc_oct_extra_tabs` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `oc_oct_extra_tabs` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_extra_tabs_description` WRITE;
/*!40000 ALTER TABLE `oc_oct_extra_tabs_description` DISABLE KEYS */;
INSERT INTO `oc_oct_extra_tabs_description` VALUES (1,3,'Інформаційна вкладка'),(1,2,'Информационная вкладка'),(1,1,'Eng text'),(2,3,'Тест 2'),(2,2,'Тест 2'),(2,1,'Тест 2');
/*!40000 ALTER TABLE `oc_oct_extra_tabs_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_megamenu` WRITE;
/*!40000 ALTER TABLE `oc_oct_megamenu` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_megamenu` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_megamenu_blogcategory` WRITE;
/*!40000 ALTER TABLE `oc_oct_megamenu_blogcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_megamenu_blogcategory` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_megamenu_category` WRITE;
/*!40000 ALTER TABLE `oc_oct_megamenu_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_megamenu_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_megamenu_description` WRITE;
/*!40000 ALTER TABLE `oc_oct_megamenu_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_megamenu_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_megamenu_information` WRITE;
/*!40000 ALTER TABLE `oc_oct_megamenu_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_megamenu_information` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_megamenu_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_oct_megamenu_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_megamenu_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_megamenu_product` WRITE;
/*!40000 ALTER TABLE `oc_oct_megamenu_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_megamenu_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_megamenu_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_oct_megamenu_to_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_megamenu_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_megamenu_to_store` WRITE;
/*!40000 ALTER TABLE `oc_oct_megamenu_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_megamenu_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_popup_call_phone` WRITE;
/*!40000 ALTER TABLE `oc_oct_popup_call_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_popup_call_phone` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_popup_found_cheaper` WRITE;
/*!40000 ALTER TABLE `oc_oct_popup_found_cheaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_popup_found_cheaper` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_product_extra_tabs` WRITE;
/*!40000 ALTER TABLE `oc_oct_product_extra_tabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_product_extra_tabs` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_slideshow_plus` WRITE;
/*!40000 ALTER TABLE `oc_oct_slideshow_plus` DISABLE KEYS */;
INSERT INTO `oc_oct_slideshow_plus` VALUES (1,'Слайдшоу для главной',1,1,1);
/*!40000 ALTER TABLE `oc_oct_slideshow_plus` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_slideshow_plus_image` WRITE;
/*!40000 ALTER TABLE `oc_oct_slideshow_plus_image` DISABLE KEYS */;
INSERT INTO `oc_oct_slideshow_plus_image` VALUES (14,1,'catalog/demo/palm_treo_pro_2.jpg','rgb(3, 83, 180)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgba(136, 136, 136, 0)','rgb(255, 255, 255)','rgba(43, 106, 182, 0.5)',4),(13,1,'catalog/demo/imac_3.jpg','rgb(3, 83, 180)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgba(136, 136, 136, 0)','rgb(255, 255, 255)','rgba(43, 106, 182, 0.5)',3),(12,1,'catalog/demo/iphone_5.jpg','rgb(3, 83, 180)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgba(136, 136, 136, 0)','rgb(255, 255, 255)','rgba(43, 106, 182, 0.5)',1),(15,1,'catalog/demo/ipod_nano_5.jpg','rgb(3, 83, 180)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgb(255, 255, 255)','rgba(136, 136, 136, 0)','rgb(255, 255, 255)','rgba(43, 106, 182, 0.5)',5);
/*!40000 ALTER TABLE `oc_oct_slideshow_plus_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_slideshow_plus_image_description` WRITE;
/*!40000 ALTER TABLE `oc_oct_slideshow_plus_image_description` DISABLE KEYS */;
INSERT INTO `oc_oct_slideshow_plus_image_description` VALUES (13,1,1,'New arrivals bikes','detskie-tovary-en/velosipedy-en','Buy now','Children\'s bikes for the summer season. Discounts -20% when ordering from 15 000 rubles. The gift warranty for 2 years without overpayment.'),(14,3,1,'Чув як звучать Beats Solo 3?','index.php?route=product/category&amp;path=362_369','Купити','Нові динаміки, автономна робота до 12 годин.\r\nНіяких проводів + бездротова зарядка в подарунок!'),(14,2,1,'Новинка Beats Solo 3','index.php?route=product/category&amp;path=362_369','Купить','Новые динамики, автономная работа до 12 часов.\r\nНикаких проводов + беспроводная зарядка в подарок!'),(14,1,1,'Heard the sound of Beats Solo 3?','index.php?route=product/category&amp;path=362_369','Buy now','New speakers, autonomous work up to 12 hours.\r\nNo wires + wireless charging for free!'),(13,3,1,'Нові надходження велосипедів','detskie-tovary-ua/velosipedy-ua','Купити','Дитячі велосипеди для літнього сезону. Знижки -20% при замовленні від 15 000 руб. У подарунок гарантія на 2 роки без переплати.'),(13,2,1,'Скидка на все велосипеды -20%','detskie-tovary-ru/velosipedy-ru','Купить','Детские велосипеды для летнего сезона. Скидки -20% при заказе от 15 000 руб. В подарок гарантия на 2 года без переплаты.'),(12,1,1,'PlayStation VR + Камера + Move','index.php?route=product/product&amp;path=24&amp;product_id=29','PlayStation VR + Камера + Move','PlayStation VR + Камера + Move'),(12,2,1,'PlayStation VR + Камера + Move','index.php?route=product/product&amp;path=24&amp;product_id=29','Подробнее','Разрешение: 1920 x 1080 &lt;br&gt;\r\nЧастота: 120 Гц &lt;br&gt;\r\nУгол обзора: 100º &lt;br&gt;\r\nЦена: от 45 000 руб.'),(12,3,1,'PlayStation VR + Камера + Move','index.php?route=product/product&amp;path=24&amp;product_id=29','Подробнее','Частота: 120 Гц &lt;br&gt;\r\nУгол обзора: 100º &lt;br&gt;\r\nЦена: от 45 000 руб.'),(15,3,1,'Нові квадрокоптери','gadjety-ua/kvadrokoptery-ua','Купити','Інноваційний винахід - квадрокоптер. Безкоштовна доставка за 1-2 дня! &lt;br&gt;\r\nDJI, UDI RC Syma, 3D Robotics (3DR), Aeryon Systems, Align, Blade'),(15,2,1,'Купите новые квадрокоптеры','gadjety-ru/kvadrokoptery-ru','Купить','Инновационное изобретение - квадрокоптер. Бесплатная доставка за 1-2 дня!&lt;br&gt;\r\nDJI, UDI RC Syma,3D Robotics (3DR), Aeryon Systems, Align, Blade'),(15,1,1,'New quadcopter','gadjety-ru/kvadrokoptery-ru','Buy now','Innovative invention - quadrocopter. Free delivery in 1-2 days! &lt;br&gt;\r\nDJI, UDI RC Syma, 3D Robotics (3DR), Aeryon Systems, Align, Blade');
/*!40000 ALTER TABLE `oc_oct_slideshow_plus_image_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_slideshow_plus_product` WRITE;
/*!40000 ALTER TABLE `oc_oct_slideshow_plus_product` DISABLE KEYS */;
INSERT INTO `oc_oct_slideshow_plus_product` VALUES (1,30),(1,42),(1,47);
/*!40000 ALTER TABLE `oc_oct_slideshow_plus_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_sreview_reviews` WRITE;
/*!40000 ALTER TABLE `oc_oct_sreview_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_sreview_reviews` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_sreview_reviews_vote` WRITE;
/*!40000 ALTER TABLE `oc_oct_sreview_reviews_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oct_sreview_reviews_vote` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_sreview_subject` WRITE;
/*!40000 ALTER TABLE `oc_oct_sreview_subject` DISABLE KEYS */;
INSERT INTO `oc_oct_sreview_subject` VALUES (1,4,0,0,0,0,0,1,'2021-09-22 15:38:53','2021-09-22 15:39:16'),(2,2,0,0,0,0,0,1,'2021-09-22 15:40:06','0000-00-00 00:00:00'),(3,1,0,0,0,0,0,1,'2021-09-22 15:41:01','0000-00-00 00:00:00'),(4,3,0,0,0,0,0,1,'2021-09-22 15:42:15','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_oct_sreview_subject` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_sreview_subject_description` WRITE;
/*!40000 ALTER TABLE `oc_oct_sreview_subject_description` DISABLE KEYS */;
INSERT INTO `oc_oct_sreview_subject_description` VALUES (1,3,'Асортимент'),(1,2,'Ассортимент'),(1,1,'Range'),(2,3,'Доставка'),(2,2,'Доставка'),(2,1,'Delivery'),(3,3,'Якість товару'),(3,2,'Качество товара'),(3,1,'Product quality'),(4,3,'Ціни'),(4,2,'Цены'),(4,1,'Prices');
/*!40000 ALTER TABLE `oc_oct_sreview_subject_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_sreview_subject_to_store` WRITE;
/*!40000 ALTER TABLE `oc_oct_sreview_subject_to_store` DISABLE KEYS */;
INSERT INTO `oc_oct_sreview_subject_to_store` VALUES (1,0),(2,0),(3,0),(4,0);
/*!40000 ALTER TABLE `oc_oct_sreview_subject_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_oct_subscribe` WRITE;
/*!40000 ALTER TABLE `oc_oct_subscribe` DISABLE KEYS */;
INSERT INTO `oc_oct_subscribe` VALUES (2,'dihtyaruk.v@gmail.com','31.148.151.28',0,'2021-10-14 18:30:08','132b3a3036e677115638433ee55ae749753f7ba9'),(3,'dva77@meta.ua','95.46.140.15',1,'2021-10-15 09:04:43','299f4d638c61660ac763066e7d098109f6f7aa48');
/*!40000 ALTER TABLE `oc_oct_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (14,'radio',2),(13,'select',1);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (13,1,'Material'),(14,3,'Колір'),(14,2,'Цвет'),(14,1,'Color'),(13,3,'Матеріал'),(13,2,'Материал');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (91,14,'catalog/kolor/SP/SP_A.jpg',26),(88,14,'catalog/kolor/RONI/RONI-4.jpg',23),(89,14,'catalog/kolor/RONI/RONI-7.jpg',24),(90,14,'catalog/kolor/RONI/RONI-8.jpg',25),(49,13,'',888),(50,13,'',88),(87,14,'catalog/kolor/RONI/RONI-3.jpg',22),(86,14,'catalog/kolor/RONI/RONI-1.jpg',21),(83,14,'catalog/kolor/RODEO/RD_1.jpg',18),(76,13,'',3),(85,14,'catalog/kolor/RODEO/RD_308.jpg',20),(84,14,'catalog/kolor/RODEO/RD_108.jpg',19),(82,14,'catalog/kolor/PEARL/PR_4.jpg',17),(81,14,'catalog/kolor/PEARL/PR_3.jpg',16),(80,14,'catalog/kolor/PEARL/PR_2.jpg',15),(79,14,'catalog/kolor/PEARL/PR_1.jpg',14),(74,14,'catalog/kolor/ECO_90.jpg',13),(73,14,'catalog/kolor/ECO_72.jpg',12),(72,14,'catalog/kolor/ECO_70.jpg',11),(75,13,'',2),(61,13,'',1),(77,13,'',4),(78,13,'',5),(71,14,'catalog/kolor/ECO_50.jpg',10),(70,14,'catalog/kolor/ECO_45.jpg',9),(69,14,'catalog/kolor/ECO_31.jpg',8),(68,14,'catalog/kolor/ECO_30.jpg',7),(67,14,'catalog/kolor/ECO_28.jpg',6),(66,14,'catalog/kolor/ECO_22.jpg',5),(65,14,'catalog/kolor/ECO_21.jpg',4),(64,14,'catalog/kolor/ECO_13.jpg',3),(63,14,'catalog/kolor/ECO_7.jpg',2),(62,14,'catalog/kolor/ECO_1.jpg',1),(92,14,'catalog/kolor/SP/SP_B.jpg',27),(93,14,'catalog/kolor/SP/SP_I.jpg',28),(94,14,'catalog/kolor/SP/SP_J.jpg',29),(95,14,'catalog/kolor/SP/SP_L.jpg',30);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (95,1,14,'SP-L'),(95,2,14,'SP-L'),(95,3,14,'SP-L'),(94,1,14,'SP-J'),(94,2,14,'SP-J'),(94,3,14,'SP-J'),(93,1,14,'SP-I'),(93,2,14,'SP-I'),(93,3,14,'SP-I'),(50,1,13,'Тканина'),(50,2,13,'Ткань'),(50,3,13,'Тканина'),(92,1,14,'SP-B'),(92,2,14,'SP-B'),(92,3,14,'SP-B'),(91,1,14,'SP-A'),(76,3,13,'Екошкіра RODEO'),(76,1,13,'Eco-leather RODEO'),(91,3,14,'SP-A'),(90,3,14,'RONI-8'),(90,2,14,'RONI-8'),(76,2,13,'Экокожа RODEO'),(75,1,13,'Eco-leather PEARL'),(91,2,14,'SP-A'),(90,1,14,'RONI-8'),(89,1,14,'RONI-7'),(89,2,14,'RONI-7'),(89,3,14,'RONI-7'),(88,1,14,'RONI-4'),(88,2,14,'RONI-4'),(88,3,14,'RONI-4'),(87,1,14,'RONI-3'),(87,2,14,'RONI-3'),(87,3,14,'RONI-3'),(86,1,14,'RONI-1'),(86,2,14,'RONI-1'),(86,3,14,'RONI-1'),(85,1,14,'RD-308'),(85,2,14,'RD-308'),(85,3,14,'RD-308'),(84,1,14,'RD-108'),(84,2,14,'RD-108'),(84,3,14,'RD-108'),(83,1,14,'RD-1'),(83,2,14,'RD-1'),(83,3,14,'RD-1'),(82,1,14,'PR-4'),(82,2,14,'PR-4'),(82,3,14,'PR-4'),(81,1,14,'PR-3'),(81,2,14,'PR-3'),(81,3,14,'PR-3'),(80,1,14,'PR-2'),(80,2,14,'PR-2'),(80,3,14,'PR-2'),(79,1,14,'PR-1'),(79,2,14,'PR-1'),(79,3,14,'PR-1'),(75,2,13,'Экокожа PEARL'),(75,3,13,'Екошкіра PEARL'),(61,1,13,'Eco leather ECO'),(61,2,13,'Экокожа ECO'),(61,3,13,'Екошкіра ECO'),(49,3,13,'Шкіра'),(49,2,13,'Кожа'),(49,1,13,'Skin'),(77,3,13,'Тканина RONI'),(77,2,13,'Ткань RONI'),(77,1,13,'RONI fabric'),(78,3,13,'Шкіра SPLIT'),(78,2,13,'Кожа SPLIT'),(78,1,13,'SPLIT leather'),(74,1,14,'ECO-90'),(74,2,14,'ECO-90'),(74,3,14,'ECO-90'),(73,1,14,'ECO-72'),(73,2,14,'ECO-72'),(73,3,14,'ECO-72'),(72,1,14,'ECO-70'),(72,2,14,'ECO-70'),(72,3,14,'ECO-70'),(71,1,14,'ECO-50'),(71,2,14,'ECO-50'),(71,3,14,'ECO-50'),(70,1,14,'ECO-45'),(70,2,14,'ECO-45'),(70,3,14,'ECO-45'),(69,1,14,'ECO-31'),(69,2,14,'ECO-31'),(69,3,14,'ECO-31'),(68,1,14,'ECO-30'),(68,2,14,'ECO-30'),(68,3,14,'ECO-30'),(67,1,14,'ECO-28'),(67,2,14,'ECO-28'),(67,3,14,'ECO-28'),(66,1,14,'ECO-22'),(66,2,14,'ECO-22'),(66,3,14,'ECO-22'),(65,1,14,'ECO-21'),(65,2,14,'ECO-21'),(65,3,14,'ECO-21'),(64,1,14,'ECO-13'),(64,2,14,'ECO-13'),(64,3,14,'ECO-13'),(63,1,14,'ECO-07'),(63,2,14,'ECO-07'),(63,3,14,'ECO-07'),(62,1,14,'ECO-01'),(62,2,14,'ECO-01'),(62,3,14,'ECO-01');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (2,0,'INV-2021-00',0,'SIT','https://www.sit.com.ua/',0,0,'Купити в один клік','','office@sit.com.ua','+38(067)000-24-10','','[]','Купити в один клік','','','','','','','',0,'',0,'','[]','','','Купити в один клік','','','','','','','',0,'',0,'','[]','','','',3630.0000,2,0,0.0000,0,'',3,4,'UAH',1.00000000,'95.46.140.39','','Mozilla/5.0 (Linux; Android 5.1.1; Lenovo A6020a40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36','uk-UA,uk;q=0.9,en-US;q=0.8,en;q=0.7','2022-02-18 23:49:49','2022-02-18 23:49:50');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (3,2,2,0,'','2022-02-18 23:49:50');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
INSERT INTO `oc_order_option` VALUES (1,2,2,238,45,'Матеріал','Екошкіра ECO','select'),(2,2,2,239,46,'Колір','ECO-01','radio');
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (2,2,219,'Крісло офісне BOSS BX Tilt PM64','BOSS BX Tilt PM64',1,3630.0000,3630.0000,0.0000,0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_shipment` WRITE;
/*!40000 ALTER TABLE `oc_order_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_shipment` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,1,'Processing'),(3,1,'Shipped'),(7,1,'Canceled'),(5,1,'Complete'),(8,1,'Denied'),(9,1,'Canceled Reversal'),(10,1,'Failed'),(11,1,'Refunded'),(12,1,'Reversed'),(13,1,'Chargeback'),(1,1,'Pending'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired'),(2,2,'Processing'),(3,2,'Shipped'),(7,2,'Canceled'),(5,2,'Complete'),(8,2,'Denied'),(9,2,'Canceled Reversal'),(10,2,'Failed'),(11,2,'Refunded'),(12,2,'Reversed'),(13,2,'Chargeback'),(1,2,'Pending'),(16,2,'Voided'),(15,2,'Processed'),(14,2,'Expired'),(2,3,'Processing'),(3,3,'Shipped'),(7,3,'Canceled'),(5,3,'Complete'),(8,3,'Denied'),(9,3,'Canceled Reversal'),(10,3,'Failed'),(11,3,'Refunded'),(12,3,'Reversed'),(13,3,'Chargeback'),(1,3,'Pending'),(16,3,'Voided'),(15,3,'Processed'),(14,3,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (3,2,'sub_total','Сума',3630.0000,1),(4,2,'total','Разом',3630.0000,9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (52,'PM60','','','','','','','',9,7,'catalog/demo/product/alfa_2.jpg',0,1,1200.0000,0,0,'2020-05-11',10.81000000,1,430.00000000,460.00000000,875.00000000,1,1,1,1,1,9,'2020-05-11 20:28:01','2020-09-21 11:55:42',''),(56,'AMELY chrome','','','','','','','',15,7,'catalog/demo/product/amely.jpg',0,1,1100.0000,0,0,'2020-05-11',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,1,1,15,'2020-05-11 20:28:01','2020-09-21 12:25:17',''),(94,'E4893','','','','','','','',8888,7,'catalog/demo/product/E4893.jpg',0,1,1239.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,20,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(95,'E4886','','','','','','','',8888,7,'catalog/demo/product/E4886.jpg',0,1,1239.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,17,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(96,'E5739','','','','','','','',8888,7,'catalog/demo/product/E5739.jpg',0,1,1239.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,23,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(97,'E5746','','','','','','','',8888,7,'catalog/demo/product/E5746.jpg',0,1,1239.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,16,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(98,'E5678','','','','','','','',8888,7,'catalog/demo/product/E5678.jpg',0,1,1939.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,19,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(99,'E0482','','','','','','','',8888,7,'catalog/demo/product/E0482.jpg',0,1,1699.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,23,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(100,'E0918','','','','','','','',8888,7,'catalog/demo/product/E0918.jpg',0,1,2099.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,20,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(101,'E0925','','','','','','','',8888,7,'catalog/demo/product/E0925.jpg',0,1,2099.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,20,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(102,'E0932','','','','','','','',8888,7,'catalog/demo/product/E0932.jpg',0,1,2099.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,22,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(103,'E4862','','','','','','','',8888,7,'catalog/demo/product/E4862.jpg',0,1,1959.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,22,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(104,'E4992','','','','','','','',8888,7,'catalog/demo/product/E4992.jpg',0,1,2599.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,24,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(105,'E5258','','','','','','','',8888,7,'catalog/demo/product/E5258.jpg',0,1,2799.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(106,'E5241','','','','','','','',8888,7,'catalog/demo/product/E5241.jpg',0,1,2799.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(107,'E0994','','','','','','','',8888,7,'catalog/demo/product/E0994.jpg',0,1,3151.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,23,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(108,'E1007','','','','','','','',8888,7,'catalog/demo/product/E1007.jpg',0,1,2929.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,25,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(109,'E5500','','','','','','','',8888,7,'catalog/demo/product/E5500.jpg',0,1,3999.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,23,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(110,'E4961','','','','','','','',8888,7,'catalog/demo/product/E4961.jpg',0,1,3299.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,18,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(111,'E4978','','','','','','','',8888,7,'catalog/demo/product/E4978.jpg',0,1,3299.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,21,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(112,'E4909','','','','','','','',8888,7,'catalog/demo/product/E4909.jpg',0,1,3299.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,24,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(113,'E5005','','','','','','','',8888,7,'catalog/demo/product/E5005.jpg',0,1,3299.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,21,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(114,'E0444','','','','','','','',8888,7,'catalog/demo/product/E0444.jpg',0,1,3299.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,22,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(115,'E0888','','','','','','','',8888,7,'catalog/demo/product/E0888.jpg',0,1,3599.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,14,'2020-06-01 18:41:32','2020-06-01 18:41:32',''),(116,'E0901','','','','','','','',8888,7,'catalog/demo/product/E0901.jpg',0,1,3599.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,25,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(117,'E0895','','','','','','','',8888,7,'catalog/demo/product/E0895.jpg',0,1,3599.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,23,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(118,'E0871','','','','','','','',8888,7,'catalog/demo/product/E0871.jpg',0,1,3599.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,28,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(119,'E5968','','','','','','','',8888,7,'catalog/demo/product/E5968.jpg',0,1,4799.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(120,'E5975','','','','','','','',8888,7,'catalog/demo/product/E5975.jpg',0,1,3999.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,8,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(121,'E0949','','','','','','','',8888,7,'catalog/demo/product/E0949.jpg',0,1,2795.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,10,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(122,'E4879','','','','','','','',8888,7,'catalog/demo/product/E4879.jpg',0,1,2795.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,12,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(123,'E1533','','','','','','','',8888,7,'catalog/demo/product/E1533.jpg',0,1,2795.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,9,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(124,'E0529','','','','','','','',8888,7,'catalog/demo/product/E0529.jpg',0,1,2795.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,9,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(125,'Е6071','','','','','','','',8888,7,'catalog/demo/product/Е6071.jpg',0,1,2699.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(126,'E5340','','','','','','','',8888,7,'catalog/demo/product/E5340.jpg',0,1,2699.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(127,'E0512','','','','','','','',8888,7,'catalog/demo/product/E0512.jpg',0,1,2899.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,11,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(128,'E6033','','','','','','','',8888,7,'catalog/demo/product/E6033.jpg',0,1,2899.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,18,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(129,'E5265','','','','','','','',8888,7,'catalog/demo/product/E5265.jpg',0,1,2199.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(130,'E4916','','','','','','','',8888,7,'catalog/demo/product/E4916.jpg',0,1,2899.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,21,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(131,'E4695','','','','','','','',8888,7,'catalog/demo/product/E4695.jpg',0,1,3399.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(133,'E4701','','','','','','','',8888,7,'catalog/demo/product/E4701.jpg',0,1,3199.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(134,'E4800','','','','','','','',8888,7,'catalog/demo/product/E4800.jpg',0,1,3399.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(135,'E4817','','','','','','','',8888,7,'catalog/demo/product/E4817.jpg',0,1,3199.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(136,'E4848','','','','','','','',8888,7,'catalog/demo/product/E4848.jpg',0,1,2299.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,18,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(141,'E5913','','','','','','','',8888,7,'catalog/demo/product/E5913.jpg',0,1,2799.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,10,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(142,'E5920','','','','','','','',8888,7,'catalog/demo/product/E5920.jpg',0,1,2799.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,11,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(143,'E4831','','','','','','','',8888,7,'catalog/demo/product/E4831.jpg',0,1,2199.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,11,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(148,'E5869','','','','','','','',8888,7,'catalog/demo/product/E5869.jpg',0,1,2249.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,12,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(149,'E6040','','','','','','','',8888,7,'catalog/demo/product/E6040.jpg',0,1,2249.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,10,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(150,'E5951','','','','','','','',8888,7,'catalog/demo/product/E5951.jpg',0,1,1385.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(151,'E5944','','','','','','','',8888,7,'catalog/demo/product/E5944.jpg',0,1,1385.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(152,'Е6057','','','','','','','',8888,7,'catalog/demo/product/Е6057.jpg',0,1,1385.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(153,'E0505','','','','','','','',8888,7,'catalog/demo/product/E0505.jpg',0,1,3079.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(154,'E0499','','','','','','','',8888,7,'catalog/demo/product/E0499.jpg',0,1,3849.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(155,'E1526','','','','','','','',8888,7,'catalog/demo/product/E1526.jpg',0,1,3849.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(156,'E4787','','','','','','','',8888,7,'catalog/demo/product/E4787.jpg',0,1,3399.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(157,'E4794','','','','','','','',8888,7,'catalog/demo/product/E4794.jpg',0,1,2789.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(158,'E0406','','','','','','','',8888,7,'catalog/demo/product/E0406.jpg',0,1,3319.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(159,'E4985','','','','','','','',8888,7,'catalog/demo/product/E4985.jpg',0,1,3656.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,13,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(160,'E5333','','','','','','','',8888,7,'catalog/demo/product/E5333.jpg',0,1,3656.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,8,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(161,'E4732','','','','','','','',8888,7,'catalog/demo/product/E4732.jpg',0,1,4399.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(162,'E4947','','','','','','','',8888,7,'catalog/demo/product/E4947.jpg',0,1,4399.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(163,'E6064','','','','','','','',8888,7,'catalog/demo/product/E6064.jpg',0,1,3889.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(164,'E4930','','','','','','','',8888,7,'catalog/demo/product/E4930.jpg',0,1,3959.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(165,'E5234','','','','','','','',8888,7,'catalog/demo/product/E5234.jpg',0,1,2699.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(168,'E5401','','','','','','','',8888,7,'catalog/demo/product/E5401.jpg',0,1,4499.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(169,'E4770','','','','','','','',8888,7,'catalog/demo/product/E4770.jpg',0,1,3959.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(170,'E4749','','','','','','','',8888,7,'catalog/demo/product/E4749.jpg',0,1,3959.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(171,'E4756','','','','','','','',8888,7,'catalog/demo/product/E4756.jpg',0,1,3959.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(172,'E4763','','','','','','','',8888,7,'catalog/demo/product/E4763.jpg',0,1,3889.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(173,'E5647','','','','','','','',8888,7,'catalog/demo/product/E5647.jpg',0,1,5459.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(174,'E5623','','','','','','','',8888,7,'catalog/demo/product/E5623.jpg',0,1,3959.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(175,'E5630','','','','','','','',8888,7,'catalog/demo/product/E5630.jpg',0,1,5459.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(176,'E5531','','','','','','','',8888,7,'catalog/demo/product/E5531.jpg',0,1,3199.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(177,'E5555','','','','','','','',8888,7,'catalog/demo/product/E5555.jpg',0,1,2499.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(178,'E5548','','','','','','','',8888,7,'catalog/demo/product/E5548.jpg',0,1,2499.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(179,'E5593','','','','','','','',8888,7,'catalog/demo/product/E5593.jpg',0,1,2999.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(181,'E5562','','','','','','','',8888,7,'catalog/demo/product/E5562.jpg',0,1,3079.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,4,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(182,'E5579','','','','','','','',8888,7,'catalog/demo/product/E5579.jpg',0,1,3079.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(183,'E5395','','','','','','','',8888,7,'catalog/demo/product/E5395.jpg',0,1,2899.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(184,'E5388','','','','','','','',8888,7,'catalog/demo/product/E5388.jpg',0,1,2899.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(185,'E5418','','','','','','','',8888,7,'catalog/demo/product/E5418.jpg',0,1,3339.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(186,'E5685','','','','','','','',8888,7,'catalog/demo/product/E5685.jpg',0,1,3339.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,2,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(187,'E5821','','','','','','','',8888,7,'catalog/demo/product/E5821.jpg',0,1,2099.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,30,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(188,'E5807','','','','','','','',8888,7,'catalog/demo/product/E5807.jpg',0,1,2099.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(189,'E5814','','','','','','','',8888,7,'catalog/demo/product/E5814.jpg',0,1,2099.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(190,'E5838','','','','','','','',8888,7,'catalog/demo/product/E5838.jpg',0,1,2099.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(191,'E5517','','','','','','','',8888,7,'catalog/demo/product/E5517.jpg',0,1,3199.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(192,'E0772','','','','','','','',8888,7,'catalog/demo/product/E0772.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(193,'E0864','','','','','','','',8888,7,'catalog/demo/product/E0864.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(194,'E0765','','','','','','','',8888,7,'catalog/demo/product/E0765.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(195,'E0758','','','','','','','',8888,7,'catalog/demo/product/E0758.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(196,'E0741','','','','','','','',8888,7,'catalog/demo/product/E0741.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(197,'E0734','','','','','','','',8888,7,'catalog/demo/product/E0734.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(198,'E0789','','','','','','','',8888,7,'catalog/demo/product/E0789.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(199,'E0796','','','','','','','',8888,7,'catalog/demo/product/E0796.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(200,'E0826','','','','','','','',8888,7,'catalog/demo/product/E0826.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(201,'E0819','','','','','','','',8888,7,'catalog/demo/product/E0819.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(202,'E5319','','','','','','','',8888,7,'catalog/demo/product/E5319.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(203,'E5326','','','','','','','',8888,7,'catalog/demo/product/E5326.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(204,'E5302','','','','','','','',8888,7,'catalog/demo/product/E5302.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(205,'E0802','','','','','','','',8888,7,'catalog/demo/product/E0802.jpg',0,1,11570.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,18,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(206,'E5456','','','','','','','',8888,7,'catalog/demo/product/E5456.jpg',0,1,12440.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(207,'E5449','','','','','','','',8888,7,'catalog/demo/product/E5449.jpg',0,1,12440.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(208,'E5487','','','','','','','',8888,7,'catalog/demo/product/E5487.jpg',0,1,7219.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(209,'E5494','','','','','','','',8888,7,'catalog/demo/product/E5494.jpg',0,1,7219.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(210,'E5999','','','','','','','',8888,7,'catalog/demo/product/E5999.jpg',0,1,5899.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(211,'E6002','','','','','','','',8888,7,'catalog/demo/product/E6002.jpg',0,1,6199.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,6,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(212,'Е6019','','','','','','','',8888,7,'catalog/demo/product/Е6019.jpg',0,1,5899.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(213,'E6026','','','','','','','',8888,7,'catalog/demo/product/E6026.jpg',0,1,6199.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(214,'E1564','','','','','','','',8888,7,'catalog/demo/product/E1564.jpg',0,1,3499.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(215,'E5791','','','','','','','',8888,7,'catalog/demo/product/E5791.jpg',0,1,3999.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,3,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(216,'E0475','','','','','','','',8888,7,'catalog/demo/product/E0475.jpg',0,1,3999.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(217,'E0420','','','','','','','',8888,7,'catalog/demo/product/E0420.jpg',0,1,3499.0000,0,0,'2020-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2020-06-01 18:41:33','2020-06-01 18:41:33',''),(219,'BOSS BX Tilt PM64','','','','','','','',0,6,'catalog/NOWY_STYL/boss.jpg',0,1,3630.0000,0,0,'2022-01-25',17.00000000,1,480.00000000,540.00000000,1175.00000000,2,0,1,1,1,81,'2022-01-25 13:57:31','2022-01-28 18:23:29','');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_product_attribute` VALUES (219,15,2,'1175 мм'),(219,13,1,'540 мм'),(219,15,3,'1175 мм'),(219,13,2,'540 мм'),(219,13,3,'540 мм'),(219,14,1,'480 мм'),(219,14,2,'480 мм'),(219,14,3,'480 мм'),(219,15,1,'1175 мм');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (143,3,'Кресло офисное Solano 3 office artleather bеigе','','Кресло офисное Solano 3 office artleather bеigе','Кресло офисное Solano 3 office artleather bеigе','Кресло офисное Solano 3 office artleather bеigе','Кресло офисное Solano 3 office artleather bеigе'),(148,3,'Кресло офисное Solano office mesh black','','Кресло офисное Solano office mesh black','Кресло офисное Solano office mesh black','Кресло офисное Solano office mesh black','Кресло офисное Solano office mesh black'),(149,3,'Кресло офисное Solano office mesh grey','','Кресло офисное Solano office mesh grey','Кресло офисное Solano office mesh grey','Кресло офисное Solano office mesh grey','Кресло офисное Solano office mesh grey'),(150,3,'Кресло офисное Ray black','','Кресло офисное Ray black','Кресло офисное Ray black','Кресло офисное Ray black','Кресло офисное Ray black'),(151,3,'Кресло офисное Ray grey','','Кресло офисное Ray grey','Кресло офисное Ray grey','Кресло офисное Ray grey','Кресло офисное Ray grey'),(152,3,'Кресло офисное Ray white','','Кресло офисное Ray white','Кресло офисное Ray white','Кресло офисное Ray white','Кресло офисное Ray white'),(153,3,'Кресло офисное Murano dark','','Кресло офисное Murano dark','Кресло офисное Murano dark','Кресло офисное Murano dark','Кресло офисное Murano dark'),(154,3,'Кресло офисное Murano gray','','Кресло офисное Murano gray','Кресло офисное Murano gray','Кресло офисное Murano gray','Кресло офисное Murano gray'),(155,3,'Кресло офисное Spеcial4You Murano bеigе','','Кресло офисное Spеcial4You Murano bеigе','Кресло офисное Spеcial4You Murano bеigе','Кресло офисное Spеcial4You Murano bеigе','Кресло офисное Spеcial4You Murano bеigе'),(156,3,'Кресло офисное Cross black','','Кресло офисное Cross black','Кресло офисное Cross black','Кресло офисное Cross black','Кресло офисное Cross black'),(157,3,'Кресло офисное Marblе bеigе','','Кресло офисное Marblе bеigе','Кресло офисное Marblе bеigе','Кресло офисное Marblе bеigе','Кресло офисное Marblе bеigе'),(158,3,'Кресло офисное Alizе whitе','','Кресло офисное Alizе whitе','Кресло офисное Alizе whitе','Кресло офисное Alizе whitе','Кресло офисное Alizе whitе'),(159,3,'Кресло офисное Lеadеr brown','','Кресло офисное Lеadеr brown','Кресло офисное Lеadеr brown','Кресло офисное Lеadеr brown','Кресло офисное Lеadеr brown'),(160,3,'Кресло Leader black','','Кресло Leader black','Кресло Leader black','Кресло Leader black','Кресло Leader black'),(161,3,'Кресло геймерское еxtrеmеRacе with footrеst','','Кресло геймерское еxtrеmеRacе with footrеst','Кресло геймерское еxtrеmеRacе with footrеst','Кресло геймерское еxtrеmеRacе with footrеst','Кресло геймерское еxtrеmеRacе with footrеst'),(162,3,'Кресло геймерское ExtrеmеRacе black/rеd with footrеst','','Кресло геймерское ExtrеmеRacе black/rеd with footrеst','Кресло геймерское ExtrеmеRacе black/rеd with footrеst','Кресло геймерское ExtrеmеRacе black/rеd with footrеst','Кресло геймерское ExtrеmеRacе black/rеd with footrеst'),(163,3,'Кресло геймерское еxtrеmеRacе light blue\\white','','Кресло геймерское еxtrеmеRacе light blue\\white','Кресло геймерское еxtrеmеRacе light blue\\white','Кресло геймерское еxtrеmеRacе light blue\\white','Кресло геймерское еxtrеmеRacе light blue\\white'),(164,3,'Кресло геймерское еxtrеmеRacе black/rеd','','Кресло геймерское еxtrеmеRacе black/rеd','Кресло геймерское еxtrеmеRacе black/rеd','Кресло геймерское еxtrеmеRacе black/rеd','Кресло геймерское еxtrеmеRacе black/rеd'),(165,3,'Кресло Riko black/red','','Кресло Riko black/red','Кресло Riko black/red','Кресло Riko black/red','Кресло Riko black/red'),(168,3,'Кресло ExtremeRace 2 black/red','','Кресло ExtremeRace 2 black/red','Кресло ExtremeRace 2 black/red','Кресло ExtremeRace 2 black/red','Кресло ExtremeRace 2 black/red'),(169,3,'Кресло геймерское еxtrеmеRacе black/whitе','','Кресло геймерское еxtrеmеRacе black/whitе','Кресло геймерское еxtrеmеRacе black/whitе','Кресло геймерское еxtrеmеRacе black/whitе','Кресло геймерское еxtrеmеRacе black/whitе'),(170,3,'Кресло геймерское еxtrеmеRacе black/orangе','','Кресло геймерское еxtrеmеRacе black/orangе','Кресло геймерское еxtrеmеRacе black/orangе','Кресло геймерское еxtrеmеRacе black/orangе','Кресло геймерское еxtrеmеRacе black/orangе'),(171,3,'Кресло геймерское еxtrеmеRacе black/yеllow','','Кресло геймерское еxtrеmеRacе black/yеllow','Кресло геймерское еxtrеmеRacе black/yеllow','Кресло геймерское еxtrеmеRacе black/yеllow','Кресло геймерское еxtrеmеRacе black/yеllow'),(172,3,'Кресло геймерское  еxtrеmеRacе black/bluе','','Кресло геймерское  еxtrеmеRacе black/bluе','Кресло геймерское  еxtrеmеRacе black/bluе','Кресло геймерское  еxtrеmеRacе black/bluе','Кресло геймерское  еxtrеmеRacе black/bluе'),(173,3,'Кресло ExtremeRace 3 black/blue','','Кресло ExtremeRace 3 black/blue','Кресло ExtremeRace 3 black/blue','Кресло ExtremeRace 3 black/blue','Кресло ExtremeRace 3 black/blue'),(174,3,'Кресло ExtremeRace black/green','','Кресло ExtremeRace black/green','Кресло ExtremeRace black/green','Кресло ExtremeRace black/green','Кресло ExtremeRace black/green'),(175,3,'Кресло ExtremeRace 3 black/red','','Кресло ExtremeRace 3 black/red','Кресло ExtremeRace 3 black/red','Кресло ExtremeRace 3 black/red','Кресло ExtremeRace 3 black/red'),(176,3,'Кресло Kroz black/red','','Кресло Kroz black/red','Кресло Kroz black/red','Кресло Kroz black/red','Кресло Kroz black/red'),(177,3,'Кресло Prime black/red','','Кресло Prime black/red','Кресло Prime black/red','Кресло Prime black/red','Кресло Prime black/red'),(178,3,'Кресло Prime black/yellow','','Кресло Prime black/yellow','Кресло Prime black/yellow','Кресло Prime black/yellow','Кресло Prime black/yellow'),(179,3,'Кресло Mezzo black/red','','Кресло Mezzo black/red','Кресло Mezzo black/red','Кресло Mezzo black/red','Кресло Mezzo black/red'),(181,3,'Кресло Nitro black/green','','Кресло Nitro black/green','Кресло Nitro black/green','Кресло Nitro black/green','Кресло Nitro black/green'),(182,3,'Кресло Nitro black/red','','Кресло Nitro black/red','Кресло Nitro black/red','Кресло Nitro black/red','Кресло Nitro black/red'),(183,3,'Кресло Game black/orange','','Кресло Game black/orange','Кресло Game black/orange','Кресло Game black/orange','Кресло Game black/orange'),(184,3,'Кресло Game black/red','','Кресло Game black/red','Кресло Game black/red','Кресло Game black/red','Кресло Game black/red'),(185,3,'Кресло Monika white','','Кресло Monika white','Кресло Monika white','Кресло Monika white','Кресло Monika white'),(186,3,'Кресло Monika grey','','Кресло Monika grey','Кресло Monika grey','Кресло Monika grey','Кресло Monika grey'),(187,3,'Кресло Silba black','','Кресло Silba black','Кресло Silba black','Кресло Silba black','Кресло Silba black'),(188,3,'Кресло Silba grey','','Кресло Silba grey','Кресло Silba grey','Кресло Silba grey','Кресло Silba grey'),(189,3,'Кресло Silba brown','','Кресло Silba brown','Кресло Silba brown','Кресло Silba brown','Кресло Silba brown'),(190,3,'Кресло Silba blue','','Кресло Silba blue','Кресло Silba blue','Кресло Silba blue','Кресло Silba blue'),(191,3,'Кресло Amazing black','','Кресло Amazing black','Кресло Amazing black','Кресло Amazing black','Кресло Amazing black'),(192,3,'Кресло офисное Wau black fabric','','Кресло офисное Wau black fabric','Кресло офисное Wau black fabric','Кресло офисное Wau black fabric','Кресло офисное Wau black fabric'),(193,3,'Кресло офисное Wau slatеgrey fabric','','Кресло офисное Wau slatеgrey fabric','Кресло офисное Wau slatеgrey fabric','Кресло офисное Wau slatеgrey fabric','Кресло офисное Wau slatеgrey fabric'),(194,3,'Кресло офисное Wau navybluе fabric','','Кресло офисное Wau navybluе fabric','Кресло офисное Wau navybluе fabric','Кресло офисное Wau navybluе fabric','Кресло офисное Wau navybluе fabric'),(195,3,'Кресло офисное Wau burgundy fabric','','Кресло офисное Wau burgundy fabric','Кресло офисное Wau burgundy fabric','Кресло офисное Wau burgundy fabric','Кресло офисное Wau burgundy fabric'),(196,3,'Кресло офисное Wau mandarin fabric','','Кресло офисное Wau mandarin fabric','Кресло офисное Wau mandarin fabric','Кресло офисное Wau mandarin fabric','Кресло офисное Wau mandarin fabric'),(197,3,'Кресло офисное Wau magеnta fabric','','Кресло офисное Wau magеnta fabric','Кресло офисное Wau magеnta fabric','Кресло офисное Wau magеnta fabric','Кресло офисное Wau magеnta fabric'),(198,3,'Кресло офисное Wau black fabric, charcoal nеtwork','','Кресло офисное Wau black fabric, charcoal nеtwork','Кресло офисное Wau black fabric, charcoal nеtwork','Кресло офисное Wau black fabric, charcoal nеtwork','Кресло офисное Wau black fabric, charcoal nеtwork'),(199,3,'Кресло офисное Wau slatеgrey fabric, snowy nеtwork','','Кресло офисное Wau slatеgrey fabric, snowy nеtwork','Кресло офисное Wau slatеgrey fabric, snowy nеtwork','Кресло офисное Wau slatеgrey fabric, snowy nеtwork','Кресло офисное Wau slatеgrey fabric, snowy nеtwork'),(200,3,'Кресло офисное Wau charcoal nеtwork','','Кресло офисное Wau charcoal nеtwork','Кресло офисное Wau charcoal nеtwork','Кресло офисное Wau charcoal nеtwork','Кресло офисное Wau charcoal nеtwork'),(201,3,'Кресло офисное Wau snowy nеtwork','','Кресло офисное Wau snowy nеtwork','Кресло офисное Wau snowy nеtwork','Кресло офисное Wau snowy nеtwork','Кресло офисное Wau snowy nеtwork'),(202,3,'Кресло WAU CHARCOAL NETWORK WHITE','','Кресло WAU CHARCOAL NETWORK WHITE','Кресло WAU CHARCOAL NETWORK WHITE','Кресло WAU CHARCOAL NETWORK WHITE','Кресло WAU CHARCOAL NETWORK WHITE'),(203,3,'Кресло WAU MANDARIN FABRIC WHITE','','Кресло WAU MANDARIN FABRIC WHITE','Кресло WAU MANDARIN FABRIC WHITE','Кресло WAU MANDARIN FABRIC WHITE','Кресло WAU MANDARIN FABRIC WHITE'),(204,3,'Кресло WAU SNOWY NETWORK WHITE','','Кресло WAU SNOWY NETWORK WHITE','Кресло WAU SNOWY NETWORK WHITE','Кресло WAU SNOWY NETWORK WHITE','Кресло WAU SNOWY NETWORK WHITE'),(205,3,'Кресло офисное Wau dееprеd nеtwork','','Кресло офисное Wau dееprеd nеtwork','Кресло офисное Wau dееprеd nеtwork','Кресло офисное Wau dееprеd nеtwork','Кресло офисное Wau dееprеd nеtwork'),(206,3,'Кресло WAU2 SLATEGREY FABRIC','','Кресло WAU2 SLATEGREY FABRIC','Кресло WAU2 SLATEGREY FABRIC','Кресло WAU2 SLATEGREY FABRIC','Кресло WAU2 SLATEGREY FABRIC'),(207,3,'Кресло WAU2 CHARCOAL NETWORK','','Кресло WAU2 CHARCOAL NETWORK','Кресло WAU2 CHARCOAL NETWORK','Кресло WAU2 CHARCOAL NETWORK','Кресло WAU2 CHARCOAL NETWORK'),(208,3,'Кресло TUNE BLACK','','Кресло TUNE BLACK','Кресло TUNE BLACK','Кресло TUNE BLACK','Кресло TUNE BLACK'),(209,3,'Кресло TUNE SLATEGREY/BLACK','','Кресло TUNE SLATEGREY/BLACK','Кресло TUNE SLATEGREY/BLACK','Кресло TUNE SLATEGREY/BLACK','Кресло TUNE SLATEGREY/BLACK'),(210,3,'Кресло офисное  Rain black','','Кресло офисное  Rain black','Кресло офисное  Rain black','Кресло офисное  Rain black','Кресло офисное  Rain black'),(211,3,'Кресло офисное Rain brown','','Кресло офисное Rain brown','Кресло офисное Rain brown','Кресло офисное Rain brown','Кресло офисное Rain brown'),(212,3,'Кресло офисное  Eternity black','','Кресло офисное  Eternity black','Кресло офисное  Eternity black','Кресло офисное  Eternity black','Кресло офисное  Eternity black'),(213,3,'Кресло офисное Eternity brown','','Кресло офисное Eternity brown','Кресло офисное Eternity brown','Кресло офисное Eternity brown','Кресло офисное Eternity brown'),(214,3,'Кресло офисное Spеcial4You Conor  brown','Тип: крісло керівника\nКолір коричневий\nМатеріал покриття: сидіння і спинка - артшкіра\nМеханізм: механізм підйому Anyfix і фіксації спинки з регулюванням гойдання під вагу користувача.\nПідлокітники: підйомний, матеріал-пластик, колір - silver, оббивка - арткожа\nХрестовина: посилений пластик, колір - silver, 350мм.\nвисота крісла 118-128\nвисота сидіння 50-60\nвисота підлокітників 71-81\nширина сидіння 54\nглибина сидіння 56\nширина спинки 56\nвисота спинки 76\nГранична вага: 120 кг\nВага нетто: 17,52 кг, брутто: 19,27 кг\nРозміри упаковки: 77х37Х65 см\nГарантія: 12 місяців\nКраїна виробник: Китай','Кресло офисное Spеcial4You Conor  brown','Кресло офисное Spеcial4You Conor  brown','Кресло офисное Spеcial4You Conor  brown','Кресло офисное Spеcial4You Conor  brown'),(215,3,'Кресло Lordos grey','Тип: крісло керівника\nСірий колір\nМатеріал покриття: меблева тканина (fabric).\nМеханізм: Multifunction (з фіксацією в двох положеннях) з регулюванням гойдання під вагу користувача\nПідлокітники: нерегульовані, матеріал: пластик, колір - silver, оббивка - тканина\nКорпус: Дерево, пластик\nХрестовина: посилений пластик, колір - silver, 350мм, прогумовані колеса\nГазліфт: пофарбований, 100мм 3-й клас\nВисота крісла: 117-127см\nВисота сидіння: 46-56 см\nВисота спинки: 71,5 см\nШирина спинки: 53 см\nШирина сидіння: 53,5 см\nДовжина сидіння: 53,5 см\nВисота підлокітника: 69-79 см\nанатомічна посадка\nГранична вага: 120 кг.\nВага нетто 18 кг, брутто 20 кг\nазмери упаковки: 83х38х66см\nГарантія: 12 місяців\nКраїна виробник: Китай','Кресло Lordos grey','Кресло Lordos grey','Кресло Lordos grey','Кресло Lordos grey'),(216,3,'Кресло офисное Lordos','Тип: крісло керівника\nКолір: темно-оливковий\nМатеріал покриття: тканина (fabric).\nМеханізм: Multifunction (з фіксацією в двох положеннях) з регулюванням гойдання під вагу користувача\nПідлокітники: нерегульовані, матеріал: пластик, колір - gold, оббивка - тканина\nХрестовина: посилений пластик, колір - gold, 350мм, прогумовані колеса з функцією гальма\nГазліфт: пофарбований, 100мм 3-й клас\nВисота крісла: 117-127см\nВисота сидіння: 46-56 см\nВисота спинки: 71,5 см\nШирина спинки: 53 см\nШирина сидіння: 53,5 см\nДовжина сидіння: 53,5 см\nВисота підлокітника: 69-79 см\nГранична вага: 120 кг\nВага нетто: 17,6 кг, брутто: 20,4 кг\nРозміри упаковки: 83х38х66 см\nГарантія: 12 місяців\nКраїна виробник: Китай','Кресло офисное Lordos','Кресло офисное Lordos','Кресло офисное Lordos','Кресло офисное Lordos'),(217,3,'Кресло офисное Bayron brown','Тип: Крісло офісне\nКолір коричневий\nМеханізм: механізм підйому Anyfix і фіксації спинки з регулюванням гойдання під вагу користувача.\nМатеріал покриття: сидіння і спинка - артшкіра\nПідлокітники: нерегульовані, матеріал-пластик, колір - gold, оббивка - арткожа\nвисота крісла 115-125\nвисота сидіння 48-58\nвисота підлокітників 71-81\nширина сидіння 54\nглибина сидіння 56\nширина спинки 52\nвисота спинки 74\nГарантія: 12 місяців\nКраїна виробник: Китай','Кресло офисное Bayron brown','Кресло офисное Bayron brown','Кресло офисное Bayron brown','Кресло офисное Bayron brown'),(52,3,'ALFA GTP','&lt;p&gt;Крісла для персоналу із спинкою що виконана з еластичної дихаючої сітки - це гарантія того, що Ви завжди будете сидіти комфортно і правильно, що особливо важливо під час роботи. Наш асортимент крісел для персоналу дасть Вам можливість легко вибрати крісла, що відповідають не тільки Вашим естетичним вимогам, але і характеру роботи.&lt;br&gt;&lt;/p&gt;','ALFA GTP','ALFA GTP','ALFA GTP','ALFA GTP'),(56,3,'AMELY chrome','&lt;p&gt;Широкий вибір моделей обідніх стільців&amp;nbsp; дозволить Вам зі смаком облаштувати будь-яке приміщення в обраному стилі.&lt;br&gt;&lt;/p&gt;','AMELY chrome','AMELY chrome','Широкий вибір моделей обідніх стільців  дозволить Вам зі смаком облаштувати будь-яке приміщення в обраному стилі.','AMELY chrome'),(94,3,'Стул Sеdia black/grey','','Стул Sеdia black/grey','Стул Sеdia black/grey','Стул Sеdia black/grey','Стул Sеdia black/grey'),(95,3,'Стул Sеdia black','','Стул Sеdia black','Стул Sеdia black','Стул Sеdia black','Стул Sеdia black'),(96,3,'Стул Sеdia grey','','Стул Sеdia grey','Стул Sеdia grey','Стул Sеdia grey','Стул Sеdia grey'),(97,3,'Стул Sеdia white','','Стул Sеdia white','Стул Sеdia white','Стул Sеdia white','Стул Sеdia white'),(98,3,'Кресло Admit black','','Кресло Admit black','Кресло Admit black','Кресло Admit black','Кресло Admit black'),(99,3,'Кресло офисное Marin black','','Кресло офисное Marin black','Кресло офисное Marin black','Кресло офисное Marin black','Кресло офисное Marin black'),(100,3,'Кресло офисное  Marin bluе','','Кресло офисное  Marin bluе','Кресло офисное  Marin bluе','Кресло офисное  Marin bluе','Кресло офисное  Marin bluе'),(101,3,'Кресло офисное  Marin grey','','Кресло офисное  Marin grey','Кресло офисное  Marin grey','Кресло офисное  Marin grey','Кресло офисное  Marin grey'),(102,3,'Кресло офисное  Marin rеd','','Кресло офисное  Marin rеd','Кресло офисное  Marin rеd','Кресло офисное  Marin rеd','Кресло офисное  Marin rеd'),(103,3,'Кресло офисное Suprеmе black','','Кресло офисное Suprеmе black','Кресло офисное Suprеmе black','Кресло офисное Suprеmе black','Кресло офисное Suprеmе black'),(104,3,'Кресло офисное Suprеmе 2 Black','','Кресло офисное Suprеmе 2 Black','Кресло офисное Suprеmе 2 Black','Кресло офисное Suprеmе 2 Black','Кресло офисное Suprеmе 2 Black'),(105,3,'Кресло OSKAR brown','','Кресло OSKAR brown','Кресло OSKAR brown','Кресло OSKAR brown','Кресло OSKAR brown'),(106,3,'Кресло OSKAR black','','Кресло OSKAR black','Кресло OSKAR black','Кресло OSKAR black','Кресло OSKAR black'),(107,3,'Кресло офисное Spеcial4You Tucan','','Кресло офисное Spеcial4You Tucan','Кресло офисное Spеcial4You Tucan','Кресло офисное Spеcial4You Tucan','Кресло офисное Spеcial4You Tucan'),(108,3,'Кресло офисное Spеcial4You Cancеr','','Кресло офисное Spеcial4You Cancеr','Кресло офисное Spеcial4You Cancеr','Кресло офисное Spеcial4You Cancеr','Кресло офисное Spеcial4You Cancеr'),(109,3,'Кресло Dawn black','','Кресло Dawn black','Кресло Dawn black','Кресло Dawn black','Кресло Dawn black'),(110,3,'Кресло офисное Briz 2 black','','Кресло офисное Briz 2 black','Кресло офисное Briz 2 black','Кресло офисное Briz 2 black','Кресло офисное Briz 2 black'),(111,3,'Кресло офисное Briz 2 grey','','Кресло офисное Briz 2 grey','Кресло офисное Briz 2 grey','Кресло офисное Briz 2 grey','Кресло офисное Briz 2 grey'),(112,3,'Кресло офисное Briz grey/black','','Кресло офисное Briz grey/black','Кресло офисное Briz grey/black','Кресло офисное Briz grey/black','Кресло офисное Briz grey/black'),(113,3,'Кресло офисное Briz black fabric','','Кресло офисное Briz black fabric','Кресло офисное Briz black fabric','Кресло офисное Briz black fabric','Кресло офисное Briz black fabric'),(114,3,'Кресло офисное Briz black','','Кресло офисное Briz black','Кресло офисное Briz black','Кресло офисное Briz black','Кресло офисное Briz black'),(115,3,'Кресло офисное  Briz grey/whitе','','Кресло офисное  Briz grey/whitе','Кресло офисное  Briz grey/whitе','Кресло офисное  Briz grey/whitе','Кресло офисное  Briz grey/whitе'),(116,3,'Кресло офисное Briz rеd/whitе','','Кресло офисное Briz rеd/whitе','Кресло офисное Briz rеd/whitе','Кресло офисное Briz rеd/whitе','Кресло офисное Briz rеd/whitе'),(117,3,'Кресло офисное Briz orangе/whitе','','Кресло офисное Briz orangе/whitе','Кресло офисное Briz orangе/whitе','Кресло офисное Briz orangе/whitе','Кресло офисное Briz orangе/whitе'),(118,3,'Кресло офисное   Briz grееn/whitе','','Кресло офисное   Briz grееn/whitе','Кресло офисное   Briz grееn/whitе','Кресло офисное   Briz grееn/whitе','Кресло офисное   Briz grееn/whitе'),(119,3,'Кресло офисное Wind black','','Кресло офисное Wind black','Кресло офисное Wind black','Кресло офисное Wind black','Кресло офисное Wind black'),(120,3,'Кресло офисное Wind black 2','','Кресло офисное Wind black 2','Кресло офисное Wind black 2','Кресло офисное Wind black 2','Кресло офисное Wind black 2'),(121,3,'Кресло офисное  Solano artlеathеr black','','Кресло офисное  Solano artlеathеr black','Кресло офисное  Solano artlеathеr black','Кресло офисное  Solano artlеathеr black','Кресло офисное  Solano artlеathеr black'),(122,3,'Кресло офисное  Solano artlеathеr grey','','Кресло офисное  Solano artlеathеr grey','Кресло офисное  Solano artlеathеr grey','Кресло офисное  Solano artlеathеr grey','Кресло офисное  Solano artlеathеr grey'),(123,3,'Кресло офисное Spеcial4You Solano artlеathеr bеigе','','Кресло офисное Spеcial4You Solano artlеathеr bеigе','Кресло офисное Spеcial4You Solano artlеathеr bеigе','Кресло офисное Spеcial4You Solano artlеathеr bеigе','Кресло офисное Spеcial4You Solano artlеathеr bеigе'),(124,3,'Кресло офисное Solano artlеathеr whitе','','Кресло офисное Solano artlеathеr whitе','Кресло офисное Solano artlеathеr whitе','Кресло офисное Solano artlеathеr whitе','Кресло офисное Solano artlеathеr whitе'),(125,3,'Кресло офисное Solano 5 artlеathеr grey','','Кресло офисное Solano 5 artlеathеr grey','Кресло офисное Solano 5 artlеathеr grey','Кресло офисное Solano 5 artlеathеr grey','Кресло офисное Solano 5 artlеathеr grey'),(126,3,'Кресло Solano 5 artleather black','','Кресло Solano 5 artleather black','Кресло Solano 5 artleather black','Кресло Solano 5 artleather black','Кресло Solano 5 artleather black'),(127,3,'Кресло офисное Solano mеsh black','','Кресло офисное Solano mеsh black','Кресло офисное Solano mеsh black','Кресло офисное Solano mеsh black','Кресло офисное Solano mеsh black'),(128,3,'Кресло офисное Solano mesh grey','','Кресло офисное Solano mesh grey','Кресло офисное Solano mesh grey','Кресло офисное Solano mesh grey','Кресло офисное Solano mesh grey'),(129,3,'Кресло Solano mesh white','','Кресло Solano mesh white','Кресло Solano mesh white','Кресло Solano mesh white','Кресло Solano mesh white'),(130,3,'Кресло офисное Solano mеsh bluе','','Кресло офисное Solano mеsh bluе','Кресло офисное Solano mеsh bluе','Кресло офисное Solano mеsh bluе','Кресло офисное Solano mеsh bluе'),(131,3,'Кресло офисное Spеcial4You Solano 2 artlеathеr black\n','','Кресло офисное Spеcial4You Solano 2 artlеathеr black\n','Кресло офисное Spеcial4You Solano 2 artlеathеr black\n','Кресло офисное Spеcial4You Solano 2 artlеathеr black\n','Кресло офисное Spеcial4You Solano 2 artlеathеr black\n'),(133,3,'Кресло офисное Spеcial4You Solano 2 artlеathеr bеigе\n','','Кресло офисное Spеcial4You Solano 2 artlеathеr bеigе\n','Кресло офисное Spеcial4You Solano 2 artlеathеr bеigе\n','Кресло офисное Spеcial4You Solano 2 artlеathеr bеigе\n','Кресло офисное Spеcial4You Solano 2 artlеathеr bеigе\n'),(134,3,'Кресло офисное Solano 3 artlеathеr black','','Кресло офисное Solano 3 artlеathеr black','Кресло офисное Solano 3 artlеathеr black','Кресло офисное Solano 3 artlеathеr black','Кресло офисное Solano 3 artlеathеr black'),(135,3,'Кресло офисное Solano 3 artlеathеr bеigе','','Кресло офисное Solano 3 artlеathеr bеigе','Кресло офисное Solano 3 artlеathеr bеigе','Кресло офисное Solano 3 artlеathеr bеigе','Кресло офисное Solano 3 artlеathеr bеigе'),(136,3,'Кресло офисное Solano 3 mеsh black','','Кресло офисное Solano 3 mеsh black','Кресло офисное Solano 3 mеsh black','Кресло офисное Solano 3 mеsh black','Кресло офисное Solano 3 mеsh black'),(141,3,'Кресло Solano 3 office artleather white','','Кресло Solano 3 office artleather white','Кресло Solano 3 office artleather white','Кресло Solano 3 office artleather white','Кресло Solano 3 office artleather white'),(142,3,'Кресло офисное Solano 3 office artleather black','','Кресло офисное Solano 3 office artleather black','Кресло офисное Solano 3 office artleather black','Кресло офисное Solano 3 office artleather black','Кресло офисное Solano 3 office artleather black'),(219,3,'Крісло офісне BOSS BX Tilt PM64','&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Крісло керівника компанії &quot;Новий стиль&quot; - ідеальне поєднання представницького зовнішнього вигляду, приємних на дотик матеріалів та ергономіки, що особливо важливо під час роботи.&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;https://www.sit.com.ua/image/catalog/TILT.jpg&quot; style=&quot;width: 387px;&quot;&gt;&lt;br&gt;&lt;/p&gt;','BOSS BX Tilt PM64','BOSS BX Tilt PM64','Крісло офісне BOSS BX Tilt PM64','BOSS BX Tilt PM64'),(219,2,'Кресло офисное BOSS BX Tilt PM64','&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; Кресло руководителя компании &quot;Новый стиль&quot; - идеальное сочетание представительского внешнего вида, приятных на ощупь материалов и эргономики, что особенно важно во время работы.&lt;br&gt;&lt;/p&gt;','BOSS BX Tilt PM64','BOSS BX Tilt PM64','BOSS BX Tilt PM64','BOSS BX Tilt PM64'),(219,1,'Office chair BOSS BX Tilt PM64','','BOSS BX Tilt PM64','BOSS BX Tilt PM64','BOSS BX Tilt PM64','BOSS BX Tilt PM64');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (2352,52,'catalog/demo/product/alfa_ii_gtp_fas.jpg',1),(2353,52,'catalog/demo/product/alfa_ii_prof.jpg',2),(2354,52,'catalog/demo/product/alfa_ii_z.jpg',3),(2355,56,'catalog/demo/product/amely_chrome_fas.jpg',1),(2356,56,'catalog/demo/product/amely_chrome_prof.jpg',2),(2380,158,'catalog/demo/product/E0406-1.jpg',0),(2381,158,'catalog/demo/product/E0406-10.jpg',0),(2382,158,'catalog/demo/product/E0406-11.jpg',0),(2383,158,'catalog/demo/product/E0406-12.jpg',0),(2384,158,'catalog/demo/product/E0406-13.jpg',0),(2385,158,'catalog/demo/product/E0406-14.jpg',0),(2386,158,'catalog/demo/product/E0406-15.jpg',0),(2387,158,'catalog/demo/product/E0406-16.jpg',0),(2388,158,'catalog/demo/product/E0406-17.jpg',0),(2389,158,'catalog/demo/product/E0406-18.jpg',0),(2390,158,'catalog/demo/product/E0406-2.jpg',0),(2391,158,'catalog/demo/product/E0406-3.jpg',0),(2392,158,'catalog/demo/product/E0406-4.jpg',0),(2393,158,'catalog/demo/product/E0406-5.jpg',0),(2394,158,'catalog/demo/product/E0406-6.jpg',0),(2395,158,'catalog/demo/product/E0406-8.jpg',0),(2396,158,'catalog/demo/product/E0406-9.jpg',0),(2397,158,'catalog/demo/product/E0406.jpg',0),(2398,158,'catalog/demo/product/E0406_rozmir.jpg',0),(2399,217,'catalog/demo/product/E0420-1.jpg',0),(2400,217,'catalog/demo/product/E0420-10.jpg',0),(2401,217,'catalog/demo/product/E0420-11.jpg',0),(2402,217,'catalog/demo/product/E0420-12.jpg',0),(2403,217,'catalog/demo/product/E0420-13.jpg',0),(2404,217,'catalog/demo/product/E0420-2.jpg',0),(2405,217,'catalog/demo/product/E0420-3.jpg',0),(2406,217,'catalog/demo/product/E0420-4.jpg',0),(2407,217,'catalog/demo/product/E0420-5.jpg',0),(2408,217,'catalog/demo/product/E0420-6.jpg',0),(2409,217,'catalog/demo/product/E0420-8.jpg',0),(2410,217,'catalog/demo/product/E0420-9.jpg',0),(2411,217,'catalog/demo/product/E0420.jpg',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` VALUES (239,219,14,'',1),(238,219,13,'',1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (79,239,219,14,95,0,0,0.0000,'+',0,'+',0.00000000,'+'),(78,239,219,14,94,0,0,0.0000,'+',0,'+',0.00000000,'+'),(77,239,219,14,93,0,0,0.0000,'+',0,'+',0.00000000,'+'),(76,239,219,14,92,0,0,0.0000,'+',0,'+',0.00000000,'+'),(75,239,219,14,91,0,0,0.0000,'+',0,'+',0.00000000,'+'),(73,239,219,14,90,0,0,0.0000,'+',0,'+',0.00000000,'+'),(72,239,219,14,89,0,0,0.0000,'+',0,'+',0.00000000,'+'),(71,239,219,14,88,0,0,0.0000,'+',0,'+',0.00000000,'+'),(70,239,219,14,87,0,0,0.0000,'+',0,'+',0.00000000,'+'),(69,239,219,14,86,0,0,0.0000,'+',0,'+',0.00000000,'+'),(68,239,219,14,85,0,0,0.0000,'+',0,'+',0.00000000,'+'),(67,239,219,14,84,0,0,0.0000,'+',0,'+',0.00000000,'+'),(66,239,219,14,83,0,0,0.0000,'+',0,'+',0.00000000,'+'),(63,239,219,14,82,0,0,0.0000,'+',0,'+',0.00000000,'+'),(62,239,219,14,81,0,0,0.0000,'+',0,'+',0.00000000,'+'),(61,239,219,14,80,0,0,0.0000,'+',0,'+',0.00000000,'+'),(60,239,219,14,79,0,0,0.0000,'+',0,'+',0.00000000,'+'),(58,239,219,14,74,0,0,0.0000,'+',0,'+',0.00000000,'+'),(57,239,219,14,73,0,0,0.0000,'+',0,'+',0.00000000,'+'),(56,239,219,14,72,0,0,0.0000,'+',0,'+',0.00000000,'+'),(55,239,219,14,71,0,0,0.0000,'+',0,'+',0.00000000,'+'),(54,239,219,14,70,0,0,0.0000,'+',0,'+',0.00000000,'+'),(53,239,219,14,69,0,0,0.0000,'+',0,'+',0.00000000,'+'),(52,239,219,14,68,0,0,0.0000,'+',0,'+',0.00000000,'+'),(51,239,219,14,67,0,0,0.0000,'+',0,'+',0.00000000,'+'),(50,239,219,14,66,0,0,0.0000,'+',0,'+',0.00000000,'+'),(49,239,219,14,65,0,0,0.0000,'+',0,'+',0.00000000,'+'),(48,239,219,14,64,0,0,0.0000,'+',0,'+',0.00000000,'+'),(47,239,219,14,63,0,0,0.0000,'+',0,'+',0.00000000,'+'),(46,239,219,14,62,0,0,0.0000,'+',0,'+',0.00000000,'+'),(74,238,219,13,78,0,0,531.0000,'+',0,'+',0.00000000,'+'),(65,238,219,13,77,0,0,186.0000,'+',0,'+',0.00000000,'+'),(64,238,219,13,76,0,0,318.0000,'+',0,'+',0.00000000,'+'),(59,238,219,13,75,0,0,0.0000,'+',0,'+',0.00000000,'+'),(45,238,219,13,61,0,0,0.0000,'+',0,'+',0.00000000,'+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` VALUES (52,52),(52,56),(56,52),(94,94),(95,95),(96,96),(97,97),(98,98),(99,99),(100,100),(101,101),(102,102),(103,103),(104,104),(105,105),(106,106),(107,107),(108,108),(109,109),(110,110),(111,111),(112,112),(113,113),(114,114),(115,115),(116,116),(117,117),(118,118),(119,119),(120,120),(121,121),(122,122),(123,123),(124,124),(125,125),(126,126),(127,127),(128,128),(129,129),(130,130),(131,131),(133,133),(134,134),(135,135),(136,136),(141,141),(142,142),(143,143),(148,148),(149,149),(150,150),(151,151),(152,152),(153,153),(154,154),(155,155),(156,156),(157,157),(158,158),(159,159),(160,160),(161,161),(162,162),(163,163),(164,164),(165,165),(168,168),(169,169),(170,170),(171,171),(172,172),(173,173),(174,174),(175,175),(176,176),(177,177),(178,178),(179,179),(181,181),(182,182),(183,183),(184,184),(185,185),(186,186),(187,187),(188,188),(189,189),(190,190),(191,191),(192,192),(193,193),(194,194),(195,195),(196,196),(197,197),(198,198),(199,199),(200,200),(201,201),(202,202),(203,203),(204,204),(205,205),(206,206),(207,207),(208,208),(209,209),(210,210),(211,211),(212,212),(213,213),(214,214),(215,215),(216,216),(217,217);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (52,61),(52,69),(56,60),(56,63),(56,82),(94,63),(94,65),(94,82),(95,63),(95,65),(95,82),(96,63),(96,65),(96,82),(97,63),(97,65),(97,82),(98,61),(98,69),(98,74),(99,61),(99,69),(99,74),(100,61),(100,69),(100,74),(101,61),(101,69),(101,74),(102,61),(102,69),(102,74),(103,61),(103,69),(103,74),(104,61),(104,69),(104,74),(105,62),(106,62),(107,61),(107,69),(107,74),(108,61),(108,69),(108,74),(109,61),(109,69),(109,74),(110,61),(110,69),(110,74),(111,61),(111,69),(111,74),(112,61),(112,69),(112,74),(113,61),(113,69),(113,74),(114,61),(114,69),(114,74),(115,61),(115,69),(115,74),(116,61),(116,69),(116,74),(117,61),(117,69),(117,74),(118,61),(118,69),(118,74),(119,62),(120,62),(121,62),(122,62),(123,62),(124,62),(125,62),(126,62),(127,61),(127,68),(127,74),(128,61),(128,68),(128,74),(129,62),(130,61),(130,68),(130,74),(131,62),(133,62),(134,62),(135,62),(136,61),(136,68),(136,74),(141,61),(141,70),(142,61),(142,70),(143,61),(143,70),(148,61),(148,70),(149,61),(149,70),(150,62),(151,62),(152,62),(153,62),(154,62),(155,62),(156,62),(157,62),(158,62),(159,61),(159,68),(159,73),(160,61),(160,68),(160,73),(161,62),(162,62),(163,62),(164,62),(165,62),(168,62),(169,62),(170,62),(171,62),(172,62),(173,62),(174,62),(175,62),(176,62),(177,62),(178,62),(179,62),(181,62),(182,62),(183,62),(184,62),(185,62),(186,62),(187,61),(187,68),(187,74),(188,61),(188,68),(188,74),(189,61),(189,68),(189,74),(190,61),(190,68),(190,74),(191,61),(191,68),(191,74),(192,62),(193,62),(194,62),(195,62),(196,62),(197,62),(198,62),(199,62),(200,62),(201,62),(202,62),(203,62),(204,61),(204,68),(204,74),(205,61),(205,68),(205,74),(206,61),(206,68),(206,74),(207,61),(207,68),(207,74),(208,61),(208,68),(208,74),(209,61),(209,68),(209,74),(210,62),(211,62),(212,62),(213,62),(214,62),(215,62),(216,62),(217,62),(219,61),(219,68);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (219,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (52,0),(56,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0),(107,0),(108,0),(109,0),(110,0),(111,0),(112,0),(113,0),(114,0),(115,0),(116,0),(117,0),(118,0),(119,0),(120,0),(121,0),(122,0),(123,0),(124,0),(125,0),(126,0),(127,0),(128,0),(129,0),(130,0),(131,0),(133,0),(134,0),(135,0),(136,0),(141,0),(142,0),(143,0),(148,0),(149,0),(150,0),(151,0),(152,0),(153,0),(154,0),(155,0),(156,0),(157,0),(158,0),(159,0),(160,0),(161,0),(162,0),(163,0),(164,0),(165,0),(168,0),(169,0),(170,0),(171,0),(172,0),(173,0),(174,0),(175,0),(176,0),(177,0),(178,0),(179,0),(181,0),(182,0),(183,0),(184,0),(185,0),(186,0),(187,0),(188,0),(189,0),(190,0),(191,0),(192,0),(193,0),(194,0),(195,0),(196,0),(197,0),(198,0),(199,0),(200,0),(201,0),(202,0),(203,0),(204,0),(205,0),(206,0),(207,0),(208,0),(209,0),(210,0),(211,0),(212,0),(213,0),(214,0),(215,0),(216,0),(217,0),(219,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_relatedoptions` WRITE;
/*!40000 ALTER TABLE `oc_relatedoptions` DISABLE KEYS */;
INSERT INTO `oc_relatedoptions` VALUES (26,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(39,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,2),(41,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,2),(38,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,2),(27,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(40,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,2),(25,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(28,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(29,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(30,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(31,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(32,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(33,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(34,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(35,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(36,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(37,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(44,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,3),(43,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,3),(42,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,3),(45,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(46,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(47,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(48,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(49,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(50,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(51,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(52,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(53,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1),(54,3,219,0,'','','','','',0,'',0.00000000,'=',0.0000,0,1);
/*!40000 ALTER TABLE `oc_relatedoptions` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_relatedoptions_discount` WRITE;
/*!40000 ALTER TABLE `oc_relatedoptions_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_relatedoptions_discount` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_relatedoptions_option` WRITE;
/*!40000 ALTER TABLE `oc_relatedoptions_option` DISABLE KEYS */;
INSERT INTO `oc_relatedoptions_option` VALUES (54,219,14,95),(54,219,13,78),(53,219,14,94),(53,219,13,78),(52,219,14,93),(52,219,13,78),(51,219,14,92),(51,219,13,78),(50,219,14,91),(50,219,13,78),(49,219,14,90),(49,219,13,77),(48,219,14,89),(48,219,13,77),(47,219,14,88),(47,219,13,77),(46,219,14,87),(46,219,13,77),(45,219,14,86),(45,219,13,77),(44,219,14,85),(44,219,13,76),(43,219,14,84),(43,219,13,76),(42,219,14,83),(42,219,13,76),(41,219,14,82),(41,219,13,75),(40,219,14,81),(40,219,13,75),(39,219,14,80),(39,219,13,75),(38,219,14,79),(38,219,13,75),(37,219,14,74),(37,219,13,61),(36,219,14,73),(36,219,13,61),(35,219,14,72),(35,219,13,61),(34,219,14,71),(34,219,13,61),(33,219,14,70),(33,219,13,61),(32,219,14,69),(32,219,13,61),(31,219,14,68),(31,219,13,61),(30,219,14,67),(30,219,13,61),(29,219,14,66),(29,219,13,61),(28,219,14,65),(28,219,13,61),(27,219,14,64),(27,219,13,61),(26,219,14,63),(26,219,13,61),(25,219,14,62),(25,219,13,61);
/*!40000 ALTER TABLE `oc_relatedoptions_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_relatedoptions_search` WRITE;
/*!40000 ALTER TABLE `oc_relatedoptions_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_relatedoptions_search` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_relatedoptions_special` WRITE;
/*!40000 ALTER TABLE `oc_relatedoptions_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_relatedoptions_special` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_relatedoptions_variant` WRITE;
/*!40000 ALTER TABLE `oc_relatedoptions_variant` DISABLE KEYS */;
INSERT INTO `oc_relatedoptions_variant` VALUES (1,'МАТЕРІАЛ+КОЛІР',1);
/*!40000 ALTER TABLE `oc_relatedoptions_variant` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_relatedoptions_variant_option` WRITE;
/*!40000 ALTER TABLE `oc_relatedoptions_variant_option` DISABLE KEYS */;
INSERT INTO `oc_relatedoptions_variant_option` VALUES (1,13),(1,14);
/*!40000 ALTER TABLE `oc_relatedoptions_variant_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_relatedoptions_variant_product` WRITE;
/*!40000 ALTER TABLE `oc_relatedoptions_variant_product` DISABLE KEYS */;
INSERT INTO `oc_relatedoptions_variant_product` VALUES (3,1,219,1);
/*!40000 ALTER TABLE `oc_relatedoptions_variant_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Refunded'),(2,1,'Credit Issued'),(3,1,'Replacement Sent'),(1,2,'Refunded'),(2,2,'Credit Issued'),(3,2,'Replacement Sent'),(1,3,'Refunded'),(2,3,'Credit Issued'),(3,3,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Dead On Arrival'),(2,1,'Received Wrong Item'),(3,1,'Order Error'),(4,1,'Faulty, please supply details'),(5,1,'Other, please supply details'),(1,2,'Dead On Arrival'),(2,2,'Received Wrong Item'),(3,2,'Order Error'),(4,2,'Faulty, please supply details'),(5,2,'Other, please supply details'),(1,3,'Dead On Arrival'),(2,3,'Received Wrong Item'),(3,3,'Order Error'),(4,3,'Faulty, please supply details'),(5,3,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Pending'),(3,1,'Complete'),(2,1,'Awaiting Products'),(1,2,'Pending'),(3,2,'Complete'),(2,2,'Awaiting Products'),(1,3,'Pending'),(3,3,'Complete'),(2,3,'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_seo_url` WRITE;
/*!40000 ALTER TABLE `oc_seo_url` DISABLE KEYS */;
INSERT INTO `oc_seo_url` VALUES (918,0,1,'information_id=6','delivery'),(917,0,2,'information_id=6','delivery_ru'),(916,0,3,'information_id=6','delivery_ua'),(963,0,1,'information_id=7','pravyla_ta_umovy_en'),(962,0,2,'information_id=7','pravyla_ta_umovy_ru'),(922,0,3,'information_id=3','payment_ua'),(923,0,2,'information_id=3','payment_ru'),(924,0,1,'information_id=3','payment'),(961,0,3,'information_id=7','pravyla_ta_umovy'),(893,0,2,'information_id=4','about_us_ru'),(894,0,1,'information_id=4','about_us'),(892,0,3,'information_id=4','about_us_ua'),(988,0,3,'information_id=5','user_agreement_ua'),(990,0,1,'information_id=5','user_agreement'),(960,0,1,'information_id=8','privacy_policy'),(959,0,2,'information_id=8','polityka_konfidentsiynosti_ru'),(958,0,3,'information_id=8','polityka_konfidentsiynosti'),(944,0,2,'information_id=9','agreement_ru'),(943,0,3,'information_id=9','agreement_ua'),(945,0,1,'information_id=9','agreement'),(989,0,2,'information_id=5','user_agreement_ru'),(1287,0,1,'product_id=219','boss-bx-tilt-pm64-boss-bx-tilt-pm64-eng'),(1286,0,2,'product_id=219','boss-bx-tilt-pm64-boss-bx-tilt-pm64-ru'),(1285,0,3,'product_id=219','boss-bx-tilt-pm64-boss-bx-tilt-pm64-ua');
/*!40000 ALTER TABLE `oc_seo_url` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_session` WRITE;
/*!40000 ALTER TABLE `oc_session` DISABLE KEYS */;
INSERT INTO `oc_session` VALUES ('0083068af84414ca5b74c345f7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:31:27'),('00b86384f9c032b350fae8cc27','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 10:32:22'),('00c52bbe9eaad6914ffed7fc4e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 04:31:58'),('00db6118387f1997f3646fbadc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 00:45:08'),('00e2bfdae8f035e105a991543a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:39:54'),('01219738d4b34f858aaac8b2ea','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:09:38'),('01a4fb18603b58a971038f6dfe','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:22:14'),('01b8458676f0105ea57318d74c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 07:26:55'),('0209ae46ae31c3fd6ac5309531','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 06:33:39'),('0209f32add51ab376414a59a96','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 23:21:35'),('02d1fc941dccc44c6ac0316701','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 06:32:07'),('02f840c04379874f2a312c4cc3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 14:01:57'),('03a05f84b003a402a2e64a3950','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 03:01:42'),('03b3652d046e9cf5361d4d905d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 23:51:51'),('043a683af941d85d009ed42854','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 14:12:07'),('051bfe8f1fc8b10e7dfa33a5f2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:06:42'),('06229e055936ea964b3fec73a0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 10:50:04'),('0622fcabc4b6a04a993005071b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 13:43:51'),('069e2f74b7290096571f65db24','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-07-12 22:56:52'),('06a7233a486beea1cc8804763a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 00:31:40'),('0710506c0f0044f27a9dc75c6a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 10:41:27'),('0716daf50b8be2421b114949d4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 06:44:32'),('074b40eee6b5628953766d8ecc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 21:43:20'),('0788a4a554d4b48e2ccd2982d2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 20:41:28'),('08071de43f244fa041fa3ea0b9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 21:41:28'),('081269def316a53c2207c02443','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:48:39'),('08df2c072baaa3c81771c8370c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 15:51:51'),('094fe59a4437fc0591b83196f6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 18:42:33'),('0988f7a9cdf9952e01c3804ec0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:01:51'),('09ad8663c5e56fc24b325da6dc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 05:51:46'),('0a088b022dcdf9315b2f91173a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 19:01:46'),('0a3f86e2e47c9ac17064a98416','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 11:31:25'),('0a63f6b93bbaa974bf29751e7b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:03:56'),('0b17fb9b66ae913a076ab27485','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 12:51:38'),('0b1e2f3081276adc674a6a0045','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 08:41:44'),('0c0938bb7bfcd790823e42caec','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 07:11:50'),('0c2bdcec9b631697f5afecde99','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 07:51:26'),('0c5745fec05056c67c3ca0cf4e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 17:55:17'),('0c8ca55c35d48b90e88f76b5bd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 04:42:27'),('0cc1b9147562e0fff63df5cef2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 05:01:55'),('0cf2ffb7839d37c8a3de347b93','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 23:46:58'),('0d19633628be57de10453d3223','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 03:02:00'),('0d529718e3a38d40eb2500618c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 00:41:54'),('0d66f0660b7a71d976ce733716','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:18:23'),('0db8195355cd065cada50ccf57','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:17:34'),('0ddd74dd842ab2192483abb3b5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 15:43:18'),('0e4d7206eb565051a808bee409','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:59:48'),('0ec4bdb18a8dab0887e7e869d5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 21:12:24'),('0f0842a08193aef2551b0cbf5e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:50:10'),('0f6a461ef9eacfdfb77fb6759d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 23:01:46'),('0f8b39becb1965726eca9d7f69','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 14:04:00'),('0fe978dc9242d13c756b4dee61','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 17:51:56'),('0ff35914fc2acfca71f93bf71d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 13:31:50'),('10c89b26b74e88902dc6783587','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 16:21:55'),('11e306a73d91ab9075cedabefb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 04:49:42'),('124fe3bebd344387c492fa8566','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:20:38'),('12a205f6d8564ee32bb6a52ed2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:55'),('12b86926de5515fcfbb6962457','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 17:02:59'),('12ceff2b6b9993f9b61760c5b8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 11:51:24'),('12e03ce954e5867182929fe70e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 14:32:37'),('13011ff3f18c7b37ff5cfc586e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 07:21:20'),('1302d1326f602db789fcd63ec4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 20:33:33'),('133c7087394c621faf42445c81','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 20:56:45'),('135ed6ee1aaa0d9a8864eb872f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 22:35:14'),('1378a399e108fcbef967634bdd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 11:32:18'),('13b04bbb886623ab80038af6e4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 19:41:28'),('13e3c5dd4fc64741a90e67e4d9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 16:11:19'),('14651a4578256090debd0b8db7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:52:25'),('148de6a9f5c466c9232b521efd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 02:41:56'),('14a001363c9fe0cd110e9c0491','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 03:14:03'),('14a6d3f99df0a94ac1dc12ce68','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:31:39'),('14aa99d00bfb39a8e040d333f3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:44:02'),('14f72b4185dfab2a95315d7268','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 10:02:32'),('156561f6cf57861b5c55c31c5e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 09:04:07'),('158ab26dfacb9c743db1abc826','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 13:20:39'),('15a37bff4ec2aa209bfdae0661','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:01:05'),('15aa4ae421a6772a860a6c3b13','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 06:51:38'),('1677c4db33a282c82d8af08bc1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 18:12:26'),('16ce3476466fa4c100b05f1d73','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 02:51:38'),('17270c4ce04ed2442b7baf12f8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:49:29'),('173d241fd01224eca597ba27f0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 09:12:37'),('17c525e7225f3e0d99bf528f38','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-07-12 22:57:21'),('18b39837127aeee95d2e2c5948','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 10:13:10'),('18c54df74ca3f6372dfded8370','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 01:51:29'),('18fed3b4a847ed18e5bbfcdf20','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 16:17:27'),('198253a3974dc6dffdff0eb0f8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:18:23'),('198375bf003cc44e66f45cc9b8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 02:41:49'),('198f207e5114183baeba0ba1c4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 09:14:20'),('1a0d3c8d2fd86a2156fa355afd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:54:48'),('1a108da5936be43a8d05b9b2d9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 03:37:13'),('1ab445ff8182ea415b69c25641','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 06:31:24'),('1b0a6f10d2e4745442f9f88d38','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:03:19'),('1b11581fbd397b75f9fa2d0109','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 18:14:54'),('1b3ef81f2be0d897e58abc6d1f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 01:03:14'),('1b84ec8a2f40d01dd462667410','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 02:45:28'),('1b96ac1595f973b887d8b69bf4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 06:12:28'),('1bd8eb822486b0dd305a67cb73','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 01:11:25'),('1c215909af4c5474d3ab3a480d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 23:01:22'),('1cb1aa0e2b590828f6d6529b2c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 12:03:08'),('1d710c28953f6317a5a56efbef','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 16:42:18'),('1dc3cb6fdc659aec69362a8923','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 16:51:43'),('1dd8933d25322e979369c40a34','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 21:31:38'),('1df789cae69b1d09e1b7a1b44b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 14:23:03'),('1e171e017ad1e523e114b4ecc4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 13:02:05'),('1e240b2aa04986b987430aa713','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 14:31:52'),('1ea5fb3d8f213131c5fa55534d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 02:57:57'),('1ec38ec17810aada740884b58c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 19:21:55'),('1ec6d4852b4bc18cccdb561c6c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 10:11:39'),('1edc377379d02ace6d8a9e38c9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 07:03:29'),('1ef4b02587c5835316989cf7de','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 01:51:37'),('1f257d550d660b9436f1abfd65','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 23:41:55'),('1f86066193607376e55b84f994','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 10:13:33'),('1f995a66ea6de4b47bae6cced0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 18:02:57'),('1fcbc1e132b52a1975e0899d80','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 02:40:55'),('1fe8943b7fb419c3aaa01c232f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 23:11:48'),('201babd57a1f4fb31066d180d0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 09:31:26'),('204bec988a81d188fa8379af44','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 07:51:23'),('20859a59902df027391ea448b9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:52:06'),('209d518c34c98965b9bb767c75','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 10:32:56'),('210c2109b3b6d784f93f3960d6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 11:15:58'),('2184799dd25e1d0c45f67e9a81','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 23:22:35'),('21d4f398d518ce215ecc78913e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 07:01:51'),('21d675b983a671324a96e20cf9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 05:41:51'),('21d7b4d94aa307bb3f301e3de1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 14:01:41'),('225683f2d08ba6575f43868b66','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 23:51:51'),('225ecd39908424252b6a2e9787','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 16:33:19'),('23864940725408dc960220d7a7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 19:49:01'),('23b7b52fedc1873b37e751389c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:32:01'),('23d0f32c5ea2845536b226361d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 22:26:31'),('241cbc7337200df14f0c6f7769','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 17:41:30'),('247d1110954d4a98d4691c1d28','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 21:42:08'),('24fab626ab629f2e7cca2de7e7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 23:11:37'),('25067126e64d402ab965e449d9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 18:31:49'),('251f21606093c8b8069a654ce3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:02:07'),('258b7b031957ee8c36e1ad9287','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 05:32:02'),('263bcbbf9192debe8fbc6e11b6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 23:45:45'),('26ca758600aac291b2db15a966','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:52:15'),('27539a39a815e9bb8cf8e7c5d3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:16:46'),('27720910db94e7ff3e350e8bb3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:46:14'),('27b7da2edc7115d74c77f96abc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 04:01:31'),('27cd184f9cd167a6f8857a28e7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 15:42:33'),('284bd939d1f3cd6ed48950d80c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 21:46:49'),('28947ece09df0dc68bad9c5276','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 14:05:49'),('28d330344c0afb8519f8166a5d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 15:21:41'),('29292054fc3039376a2d8683c2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 16:13:05'),('2955289d5240251bacec59cb73','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 04:11:42'),('296343f5c7d81602a29deeed2f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:21:09'),('29bffbcb2d8af8ae483bc7e79b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:45'),('29d8c4ff473e648acc2e380db9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 04:02:11'),('29ea950c1da976d36046bcfb1d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 22:01:09'),('2a05b03e2de43b185be251064c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 02:21:40'),('2a7326558ddf88501a195697af','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 16:42:59'),('2b17b7373c22ff457c007cbae3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 18:22:33'),('2b5edcbc707e7a449988156789','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 15:12:21'),('2be5ffd07f8f356c85b9b498bf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 12:23:49'),('2bf1e751961a435ad5f702fd27','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:21:57'),('2c0f1c8411eb06980b084a8298','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 20:02:52'),('2c50e99d3f0fa05b3a4b73d8dc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 19:52:44'),('2c884f3093c91484ec3ac0f20b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 01:41:58'),('2c9b67375277068542564cbf0a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:41:54'),('2cebea08bf31454773f5a9d2e3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 15:32:26'),('2d23c6a1fa24770ac205216e20','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 14:23:29'),('2d4367790c1f57ed4861ebb574','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 03:21:40'),('2d507bd51fad0866176bd92b53','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 02:17:37'),('2f152dd8f76dcce57807f09bd5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 17:47:36'),('2f3b1b118d61b4b8fd77b3a529','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:18:23'),('2f57e3774420db6e2b2cab52c8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:14:30'),('2f61c17225f3315d7dd64f2ac9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 17:41:44'),('2f7ca10376cf511803962b278d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 11:12:27'),('2f8f23ae7f807af93a26056967','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 08:31:53'),('2fdb643a1c54c3cadefac3f785','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 09:11:49'),('303696d58e3a69196320ebdc7e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-07-12 22:56:50'),('3089efea3e380dfcfea17d50a5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 05:32:18'),('30d6f8dfda497028c93f80c816','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 10:31:55'),('3149df981578ece7d3d72ca34c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 07:38:37'),('315b68a6769859af4adcfa3761','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 23:34:30'),('31e74dd80c27eecc777433f579','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 22:37:46'),('31ecba555ca3482cb41b507994','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 01:11:51'),('322a1264a88a7e5aa70604540f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:02:05'),('3244cc6cb759ba5be7ddd4a9cb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 18:02:37'),('327bb54889f64afeb656f60d62','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 21:51:33'),('332e3f5addada25735fe7693f7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 03:23:28'),('33704ce57c830eef3d879ceffe','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 22:44:30'),('33d0d9b4cd20f1e4e9b1b64d1d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 17:11:21'),('33e99dd572bac8f7b56f4fe975','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:15:30'),('3429e14f10cb7b146ef2249a56','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:51:30'),('3510b92b35c2a396645bac1c38','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 02:52:20'),('3599bda0f906bb49640992b162','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 20:01:54'),('35aae8c9309d33d3c9ced225e5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 00:12:04'),('35b7c89f8bc9f3587bf09335a0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 17:33:14'),('3640610a09a2babadcff5a9a07','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 19:11:22'),('36931a5da95c72863470860853','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 11:11:31'),('36b1a9c59054ad7a5bfe19d33a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 17:06:11'),('374c04aaff9416fbf92f0d9e10','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 06:08:59'),('37ec4f76781a9ef36a55d4fa8f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:12:02'),('37ec8b86fc50ffccbea397e910','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 15:42:13'),('37fd3124d2b38775adc3b2e130','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 10:52:58'),('383ce915b614ab0c115a94be6c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 00:31:33'),('38593df2d1b59a7946b6560268','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 19:11:48'),('385ee1451f6aa6ad968a2ac7a2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 17:53:17'),('386d2aa4336d5428ec3b9beb0b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 08:51:50'),('389a18757080861efe98ade614','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 13:02:48'),('38fa0502d0df3af0094d3979ed','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:53:17'),('3ac328948abe8048e5e7a42960','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 09:52:28'),('3b25df77b85470d6dcc525217f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 12:12:10'),('3b44e658d43bc91842333f1292','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:51:57'),('3b9b06647c4906daee5c6f8939','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 12:34:06'),('3bcc9f51006c81b2456b317b83','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 20:31:02'),('3bd04ae1e069c895b8de741f7b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 05:43:19'),('3c4123fe7b8ec0be488bc929a5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 20:31:46'),('3c49ef4041280d904e9ccf4aee','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:53:44'),('3d0f6d8bfbca610adc6e61615b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 08:33:33'),('3d520624dd2da1da6508e50983','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 01:41:51'),('3d53471f641de35698e7a6c7e4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 23:41:29'),('3d5582b93fe1dde452b7391d06','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 07:23:22'),('3d93af03da25c162011b03d7f5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 02:51:24'),('3db5db51147192bf19c07c36f1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 08:44:24'),('3df0c3bdee81259b189102e6d1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 19:51:23'),('3e09354c359b506bf8d9f190ee','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 21:40:37'),('3e6aa8f4b671fcd046c7a81e4f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 14:02:52'),('3e792db3d31fc9db6946491e11','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 16:21:32'),('3ea3647e5ef9f365de5b811d1d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 20:11:20'),('3eaa4ed2c553ed1a09635fe1d8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 20:01:41'),('3eaefe72511fa57355112c063f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 13:34:30'),('3f11b231a29df6470376725964','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 13:12:52'),('40e8392523c5e735c2fafa32f1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 21:42:36'),('4130933451035346d53f10347f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 03:12:37'),('41341fceb552779d6ee56c0bf7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 18:23:23'),('418da7d655050e448cf516d8a5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 23:40:29'),('41c6073a49516c46d2bb594b87','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 19:09:02'),('41f97ab810f511a871c3e9b0a5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 07:11:36'),('4223d1105e489968e56cc913aa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 09:11:35'),('422e88e1beb1d7b9bb911334a6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 15:56:09'),('424da8567219ef4bc8c1bcb9db','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:41:52'),('4288402d601df4b27caee7bf6a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 23:56:33'),('42d746c4f42a30b5108074b551','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:42:00'),('4313c07871ca78c16f97ec4b68','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:53'),('431c023ca843b8403c090374d0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 10:01:46'),('434dc966fd149c33ba5b2b87f8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:41:34'),('435db6868320f376aa52b9414a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 21:30:27'),('436d794313f8d7d9500cf7dffc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 01:13:23'),('4386c85051b370a345a9d57536','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 08:43:16'),('43b0a070b007a21b9a5f2cee80','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:03:33'),('44512ad5139b5f47053695261d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 07:04:20'),('44aaa7e76690b8efb2ffa08296','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 21:03:44'),('44ec3a43f267c4715f01ffc836','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 06:22:10'),('45034c9d155a85617219232836','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 06:51:38'),('45a57304fad2a6bbfa28c112e9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 23:52:06'),('45d7158a5755b8ea6ddf6a3adb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:03:48'),('45edbbe19aa498f6e04216f73e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 10:01:59'),('463a32e2cb19e0af6f6b5ea622','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 10:31:44'),('46463ad069d6c5a715ee057295','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 10:22:52'),('46693124958c4db24e0da3dc8e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 15:31:41'),('46b01d1913ac572bdef1609243','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 09:31:24'),('46dda584575e3e2bd39d5677bf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 07:01:29'),('47195b918314d475807b300596','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 01:22:39'),('4751376d927a0c0367a7b44e8a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 00:02:04'),('479c5c5a943df693d49d58fd87','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 16:07:13'),('47a92466677251eedf480ff97f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 08:21:52'),('4817318c4d6b5a077840b94f37','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 22:21:17'),('4819408201612a83837cceaa92','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 21:02:41'),('485163f024242f5f62240d6ce0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 15:13:27'),('48561075b04fb3867b368a9e07','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 12:33:06'),('486e07af3cfd650cc3a6932966','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 12:02:56'),('48a109a6a619b30772c43348d4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 12:21:40'),('48a6b2cebdb84009807542fc29','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 20:21:23'),('490b61d32f3c60154030ec4c0e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 15:13:13'),('49abd866d6c77363aa16da5ea1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 07:31:46'),('49e15f8d68e9f68649833ffbca','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:21:28'),('49ec3bf49d64287339f100382d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 22:31:19'),('4a1a85e7f657f1ba56a93f6c0a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 18:21:45'),('4a819a4465d99a5716e1d0b797','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 00:22:02'),('4a8d7de77e942ea70ff8bd7791','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 18:31:49'),('4a91490d9a374477eee019b8e2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 14:41:24'),('4a94c03d9002e60bd3f222ef02','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 15:03:37'),('4a996d69384eb33ff0b059fe76','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 09:42:00'),('4aa1ab475942140ea6b764fb0d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 11:19:52'),('4adcd14959d4718a41b937e8bb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 18:11:27'),('4ae1b802f09fd486e456dd1ee2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:02:00'),('4b09a7bb92392843f3cff30b43','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 00:42:16'),('4b56c746ce5daf60a9ad99f62f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 20:30:25'),('4be2920db24912e0d039e50a0d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 08:10:39'),('4c15a3f3430d74c6ba54f5fbf4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 04:53:14'),('4c6de4a56d95ec3b52f06047c0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 16:52:45'),('4c92fc201eb7e56aed27625f54','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 20:12:21'),('4caabb1f65161508cee9caaf8c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 07:53:13'),('4cc74aae21a4b15e335e874a3b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 07:22:24'),('4cd1b0dbcbb259db2431f5e14b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 17:03:17'),('4d12b4f95d337f75e7d48be26c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 04:55:55'),('4d1fdc3341e4b92dfbc3ab47f1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 11:42:41'),('4d212ec1aed720375a5ebe3d7d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 09:41:47'),('4d37e36310d51a2b494ebb9a66','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 01:22:15'),('4d6f1a48fda8d92e80e0b40b14','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 19:31:37'),('4dadf664f93f4eeac66571440f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:12:00'),('4db6b9b836fd48963d852e38a3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:21:26'),('4df1cac0a8671ef62de2975c3f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 12:53:04'),('4e3aece981aebcc4e95c99c282','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 07:52:09'),('4e8f026c75317786feb3036782','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 12:53:40'),('4f2470473cd1989bbf56efb89a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 23:25:18'),('4f25186ce2a227eacf93fd7d66','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 02:01:45'),('4f4afffa783b42272a8234762d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 08:41:36'),('4fa2f551dcfdf78bde06ca53ab','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 16:02:24'),('4fe96ba572091cca50caa122a8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 02:02:19'),('501cc3e4c3e122f2118924b4fa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 18:31:27'),('50285a53263229e9c4fd562f72','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 11:43:40'),('503779781e8196b8c01715f97c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 13:11:36'),('507ca8aca0893645ddbe9b29a2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 08:27:47'),('50b9de45aec38816d4d0ec46fe','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:21:14'),('50d827c9f15d1216e7a2c8c6e2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 16:22:05'),('51010f263e440acad7dc4dc256','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 16:22:02'),('512d9feb2f2cdfc26ace22d9dd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 06:21:54'),('5166659cf0211d0c320e9bbd65','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 14:12:09'),('517b9baaacee8efdbfce1843aa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 12:14:37'),('518f724b629e4c506b5399d962','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:55:43'),('51d3e4b591d0a19c82303a9bc4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 17:33:42'),('51e9492d6c1dce1199fe7808a0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 03:21:27'),('5206dc51df7c312171c1a52348','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 11:42:26'),('5217547a0986464c1842a86348','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:09:59'),('526cc1f199c28aa60dcaf13a0b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 07:19:06'),('528e5207a2b69246f8100578bd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 20:31:21'),('53467b676f241b7595dbbc46a2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 15:42:12'),('5392fbce760d1ab9a4738fb905','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 02:11:26'),('53ede64c27033e5cb946c149b2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 05:35:53'),('5403ff1ad4fd97dc94f2e75729','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 14:43:11'),('5434caecc7094e23e7f47016ee','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 23:31:33'),('546dd295b5f1dd6e4ecb9bbe08','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 14:43:38'),('54bc2c83a62c2c28545dd81c56','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 07:42:00'),('54ca7fed70dbca86962867b76b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 20:31:36'),('54f7e9be6ab748e48a0845515b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 17:31:25'),('554cdbe401e9cfc4bd7eecf3f5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 16:41:31'),('55a0abf79fd05265f0a6a04769','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 05:11:40'),('560e5e572da6918b21bb5d8345','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 01:11:01'),('575d560972067cfec64cb5fe19','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 03:41:55'),('57af78584bed51db5275290825','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 02:52:19'),('57da334b908c6b521887abbb40','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:42:08'),('5860141f7f2680a78223462616','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:22:00'),('5956062ed67aa86a9d3e657cf2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 15:52:06'),('5966e3c93cd1be7f6f4e744e6d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 05:43:47'),('59681ca3417f88900eabf03e62','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:58:38'),('59fb315db6b22b1994816cccdc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 14:32:18'),('5a9de7d206833253a98f82910c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 22:12:04'),('5ad5ce22083ff8aeaaf806e6ae','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 05:11:58'),('5add0192451a57a21c78c4bd0f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 09:52:30'),('5b299da1fd40b8ac80d6e8135b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 22:41:35'),('5b421cd7c86eae4e1f21eb4923','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 09:32:37'),('5b8546b69337ab4625ca8dd65c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 08:22:16'),('5b95e8a563aca63bf275a55faf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 09:12:04'),('5bd449d36f1a02edc87860c606','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 20:51:51'),('5c97ad7b15c95fab5dd914106b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 13:43:03'),('5ca9c0287174313c10f707974f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 00:11:44'),('5cacca5496ad65426fc53dea91','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 13:53:51'),('5cf33fce565a0837e4d927b262','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:11:53'),('5d5d394e4663e5204d32db584c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 18:41:58'),('5dccd2a20193451ecf158e1ca9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:32:42'),('5df7443c9d80e5199a38638c33','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:12:33'),('5e1c3aa61b99e13ca9329f5ec8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 10:21:37'),('5ecf64e1a71b8bd9a076780672','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 17:21:47'),('5efcd36b4892037563fa159147','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 20:21:54'),('5f13bc5569c1f8feb193189f02','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 08:52:36'),('5f52572c885172b6c14efe3805','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:16:37'),('5f9cfd8a5b2fad740ee70dfeaf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 17:52:59'),('6001fecdbb726f5be3bdfb5303','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 10:23:06'),('6082385e62c3a0c59919684cf9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 13:31:39'),('611bf95e2b490d275f0dd17dd4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:58'),('61d474d9aa4f4e69950333845d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 01:09:58'),('61f787430581efef41370bd68e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 23:01:28'),('62186aca1b1083afada8e468ac','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 22:51:21'),('62588e32731433ea1b463f0557','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 08:52:31'),('630e96abb071b779ba9c0848cd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 23:21:54'),('6331bbf48c85e55ecf0fc07ff7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 16:32:55'),('6345425e797883d6a867e36a8b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 02:22:03'),('634682171113aeb00ef6c24139','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-07-12 22:40:17'),('63bc19298e4ab53c7316f2a463','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 05:13:57'),('63edbab8e8cb3a6efcf6405634','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 13:01:56'),('63faeb28b4e1d458f2a056b4a1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 04:51:32'),('6405d48cbaa5c7dc7fef7376df','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 13:58:26'),('642bd09699f5426ea2a6f67669','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 16:41:51'),('649f55633e9e5656fc9f38f005','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 20:41:42'),('652cf111be71242a8a0ca298d8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 06:14:29'),('656dbe5edbc5e8307044f52dec','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 11:42:43'),('657ec0addc8aaa48b167098df3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 02:31:23'),('65958b45edc8139b995b180eb6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:02:02'),('66162797fe831578378c55a15a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 17:11:42'),('6622c7e093b62102a35cfc5520','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 00:51:30'),('663f857c051d9e09d78243ab76','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:51:41'),('66554b937ef7d124136aa66f6f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 04:58:33'),('66992af30148affdba74caad4a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 07:11:34'),('66e551b539e9a0565bd8acda6f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 02:11:46'),('66ea3dcdbd94304c1dce0e743b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:15:58'),('6706cdd9a221b3625e9e8b8a21','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 13:22:17'),('68299977eb4aa01b62b62a9acd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 21:12:53'),('68b8600da8e5dfc224d59f4e24','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 03:34:52'),('68d3c7614c3476c5e610f0037c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 08:32:32'),('68d3d10a03dbc5cfb8e420a313','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 08:03:59'),('697ef4fd486c28dcc7cfeffb05','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 07:42:26'),('69a415798d2de96990394a4f07','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:51:33'),('69d40e26f6ed787deddf6f85e9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 17:15:55'),('69ebf8866f0dbb12288e429bf2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 13:33:10'),('6a43a1c87e1beae2212c3aa2dd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 06:12:03'),('6a9d4a7509e36c6a8805efe694','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 06:02:23'),('6b3c5eced0ba11949f33fc64aa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:09:46'),('6b7c99d47cb1ed515abaf4fb24','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 09:13:21'),('6c7efa4a11c845fd5e787892d6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:09:17'),('6c99c13cf2af65938fa7aa41e2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 20:14:28'),('6c9ea1b3e34bdde7b353be65b0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 21:21:26'),('6d4ce6d7b3bdf25fb565ba5863','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:21:51'),('6d70afa82de652b7b8844b1cc2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 15:32:53'),('6dfccdb8822ba1e29a760f90e0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:03:18'),('6e034f568bb66ee7f9be49df58','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:11:31'),('6e05882235b628de9957a19d3b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 01:31:32'),('6e51242db54c0f750a0806b5b4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:37:56'),('6e8a1c96cf02382da5be05e4c5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 20:21:49'),('6f0664997d1882db75592af085','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 03:43:02'),('6f5c3252e6450b131fe773def6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 17:23:52'),('6f9f3e9d97cac3e2d2908bcddd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 06:41:30'),('6fdc0c188b8626b947d1539975','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 16:03:28'),('70084dd2e13a3f2a6ac950c538','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 02:32:11'),('703ca52664bb36c19886445034','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 04:06:43'),('70fc4d6278abea10fd8dfa5c53','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 08:22:13'),('710ad0b87b32dc58014f21985d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 15:42:02'),('7113fbd86f5767a3bc5210bf81','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 06:31:34'),('718ae5dd29477e9feb475e6d35','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 22:21:54'),('7194bbbe80ae8c407812196b49','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 17:21:57'),('71a2de8b47c12bd46a8ee1159d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 09:21:41'),('71b5a30b3f89d3b80dff541f0e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 11:22:09'),('72575f419ae1d24b440c6944f0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 16:51:31'),('72913b87f9cc10909897a08da1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 05:22:02'),('72a594866066d4e962db4bdb42','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:09:45'),('72a65fe56fad97cb11effff351','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 04:12:29'),('733c1cd536c03ba25d7abbc02f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 21:23:28'),('73620bbafe1c7d05d0e74057e8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 14:12:38'),('73eab7fb2f2c6b771ce8048443','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 05:37:28'),('743b110d89ddeea846448490b5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 08:01:43'),('7493873faf2b260699ae38d90a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 05:31:20'),('74b3ee7b6f012327ae958d0a94','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 18:12:01'),('766a7d300e135dc72630cd52fa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:59'),('76fe8afffc93cf68cfcc32ca61','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 09:52:00'),('779fb07ef2211fd37859c5e756','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 07:33:49'),('77e8fc6f12100a3fbb2f151fac','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 22:51:38'),('782f2e8464f9e45e9426934215','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:55:14'),('783d46581ca37c7367c3f3b413','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 16:01:37'),('785129ea35b68e09a4809db74b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 06:09:53'),('789f1ecd16a5916685628c9734','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:43'),('78b12a77174ed8480872da4d70','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:39'),('79127bb41316245f21991b9f73','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:05:38'),('79648d2fff32c1b8f476a203dd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 07:59:46'),('7986085d02f978f51a05d3ce59','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 04:22:29'),('7a9af4629a9c4a570d4634b668','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:46:16'),('7b183acf6eb07360acbf4136cb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 18:33:49'),('7b9ba2bf76a68e3ebbff3741ef','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 17:12:38'),('7bb223ea51489c0cdcfb242393','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 09:31:22'),('7c2dd0c6e82762028322339ce1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:46:36'),('7c9c36bbe0dd45357e69a649f7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 05:32:45'),('7caf88c6dec30eba335064b805','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 20:28:57'),('7d70b8d06ee1a62527e59ea969','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 00:01:44'),('7d7d370f83f98aa2dbe939e831','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 20:08:35'),('7e22874d8adfd90dbe8497cd66','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 12:41:41'),('7e425fddfda72b9ecf30538867','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 21:31:34'),('7e73f6a793ec8a5b541da6ae3e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:01:34'),('7e96e1abf9e1fd55311392f6a8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 12:12:44'),('7ea4460d118b00b8f5ff44c306','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 10:21:57'),('7ecf3d3e7f8653e3be11b483b6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 11:01:36'),('7eda0309ae8df0d9e16c29712b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:11:04'),('7eecec667265cb76ea3b646123','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 05:23:57'),('7f587242aa31e1bb3be60315cf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:51:29'),('7f778bd7ebff16a5d407849fe1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 01:01:31'),('7f7c9fe4fcc8437846e5ea4090','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 02:31:31'),('7f886ca848e8506957809dde71','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 19:31:44'),('80a21acca4724f8024e157889c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 18:21:59'),('813157ac653a14748797eec991','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:05:33'),('817205fd6cc7888ef6c3934701','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 02:23:29'),('8182736d0bf81d4724b9fbe3b2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 17:02:00'),('81c1866d4d976ae137efc0ddaa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 05:51:58'),('81f8df814507f85e14b454ee19','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 17:32:28'),('83069a4639c1a13ee3c36d1ae4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 16:02:20'),('8326a4766b52f5f6b9abcaf0af','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:22:09'),('833335746054d8effed0d6e6c5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:20:48'),('835defcaa18f40aad3b6a58a1d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 20:11:32'),('8372c73045dd22843acb8f2919','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 14:52:07'),('83f980aa795fd4e60c45f786bd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 19:21:52'),('840854633abf7e7967dd058f92','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 08:11:58'),('8410a1fb22ab7dc13c990e84d7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 18:42:33'),('842cca76ba6883c47c74534c61','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 00:22:32'),('8435912d8218b486a43e4b1ea7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 21:21:23'),('8445c43647b09ae55de29a7893','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 08:01:30'),('844636d8700b0705bbd9f574fa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 03:32:02'),('8454b300a474bce8f6ef3d4812','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:02:31'),('84c75c278b47828c8c02cc20c0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 14:42:19'),('854e4057142f4fea65383df48d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 01:00:40'),('8562d759a912ac4d7c58646951','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:01:25'),('85730de00edb159fbc1892d99d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 18:02:20'),('85ad5d5ae5b81c8e6b74ed5219','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 00:34:20'),('86350d90cf8ee1ba3925bb0c04','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 23:41:53'),('865f24f0d1ac7baba35066a616','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:48'),('86815266a93a93f738da2c9f25','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 09:44:11'),('868832feab0b610321f38cd7b6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 00:41:45'),('869e3de30d8775aafe6ba15093','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 13:32:19'),('86b7c3792466e6371cd174948d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:41:26'),('870dba564b233c5e45901e8275','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 23:52:13'),('87b9bd8fab20c5fb898e793fc7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 02:21:57'),('884f7c8ff8bb10c618364b8528','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 12:11:26'),('88c25e5d73a4c7d074b8471141','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:32:40'),('88ed3b03124009616f0d5c08f9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 07:02:06'),('8939157bbb5e9f517c0da352ce','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 11:02:24'),('89cd9669ee4633fcc6be22c1f5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 01:11:46'),('89f07e459979c1e0532950535b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 18:51:56'),('8a75dc19afaca781d812d1f545','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 02:43:38'),('8aaa534a161717ecbe18b4ea22','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 13:12:24'),('8aaeb00ebfdea273974611e6be','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-07-12 22:57:38'),('8ac10d1757e949db6e68a3d045','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 17:42:41'),('8b18d56e47bcbe09dfefccfcad','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:02:09'),('8baf7a31f4b0813c67b5ab018f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 07:42:31'),('8bca77b81a105ce671eaf0536f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 01:44:58'),('8bd565a1a3d34e0bdccee444df','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:12:48'),('8c0c660adab6b4c55f76fde703','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 11:52:31'),('8c652f7673e58b8f2bd226c68f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 01:01:20'),('8c9032a0a41a0f3b658b82427a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:21:19'),('8d3997666dbae208d5aa93fc9e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 15:12:13'),('8d95e2464f5e57265071a25112','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 16:42:23'),('8e070ce30cb1f0914b661d7cee','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:02:33'),('8e61c4fdd0b7a4590ee59e995d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 19:21:27'),('8e6d5e0e7134389fc93d6a752f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:21:34'),('8e8cf10de50929725c5cbc067e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 09:02:19'),('8f2dc6b0e581b3b97a056dc2f7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 16:53:12'),('8f38407c49a1bc71bbc6d1643f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 13:02:29'),('8fc724c16fd6be8c5780885b9c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 08:33:59'),('8ff63afb7bcd7bf0907f34e1af','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 04:44:17'),('908a56b285d799384d0ac0e507','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 16:53:53'),('91507f2d474d9a68508061cfbf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 23:11:27'),('91b7a98fc57e37c73e5028b5fd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 21:39:11'),('930287123444b561eefb8751f4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 18:11:46'),('937b0ad303f8802b55be3760ad','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 17:32:53'),('937cb5676b8cf143610624f8c1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:01:37'),('939ace8932bb44513ba4a9be62','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:01:39'),('93ba913d8df3ceb18299f0e267','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 12:33:22'),('93eb8078bc57908722f2d0ca7d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 07:41:57'),('93f56142450c45a01fd7b9a9a1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 04:11:09'),('941d27364f38084f67e4a87efa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 04:22:55'),('94492daa5f45fd69efe9c4fb8e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 01:02:21'),('945743cb70f31c7fed0a1d0225','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:18:23'),('95350d801e9d4581d584b1188c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 04:31:48'),('9552fe74e4d096131683831d31','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:10:20'),('95cfcf4db48e42f933a83dc6b5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 10:42:53'),('95fea0a8b7c360f403376bb015','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 12:41:46'),('9708a3418aaf502099c15be455','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 14:32:50'),('973766b7c3fd704e11a96315d5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 05:12:26'),('97767624eb91e0a5027a317eb7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 19:22:51'),('97af1a47d0b3dff3d172288208','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 04:53:15'),('97b6bcd1678bf6fd3057318768','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 04:41:44'),('97f2c2cac672108f3ffb5742fd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 00:40:38'),('980d278222acdaafdae18a69a3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 00:50:53'),('9813c32d100e7650d1db608c4f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 21:51:49'),('98168573019f1327765c4917f1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 11:22:51'),('98326e3ebbadae5612e735bd50','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 15:52:55'),('9847383cc0f3c344f23f8b5c8b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 22:01:40'),('984b2cb5d66441f1bdced9486f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 01:31:18'),('98c21893505204e8f60b0ec4fb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 05:55:27'),('98c374709fe32b415f41634c87','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 04:11:23'),('98f92a9842c6a3213e700ebc43','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 18:53:20'),('991f1026b8557160d7f3889b02','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 12:42:32'),('998bf15461820e252deb2d2309','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 09:51:33'),('99a3ad3079392e8102bdcd8f59','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 21:11:25'),('99d2df47327d9d99a5d076fca8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 16:32:05'),('99d56aba7c456df38476de2b35','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 05:44:44'),('99fb5c782ca46e17e870329d20','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 11:18:08'),('9b64e7dc461f5c664764895a5f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 09:32:05'),('9b75fb68d83f1d11ed79df58d0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 20:14:05'),('9c02c39573ba76ae99f22821d6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 07:03:01'),('9c0c376cefae04febdc2c45066','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 00:23:06'),('9c296ec02eee0f29b2499ae3b5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 07:12:53'),('9c64b0626353dd234c3826b3d5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 22:50:08'),('9d52fbad598bccefe6768d2252','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 08:12:13'),('9da731cf04c3c5d99cf46e8bc7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 08:02:06'),('9dc4af97ad2217ee1d2920015f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 07:53:37'),('9dc754495741ef8cd65516ce42','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 08:42:10'),('9e19a73850b064a9dfb515cf88','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 19:02:01'),('9e2b12b55f21310b440b794d30','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 08:13:30'),('9e3c2e9c8c1b3d6de30de600e1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 04:32:14'),('9e3dd3bc7f748474d22805be60','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 00:22:55'),('9e8efad2f42f397e866d196591','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 02:41:44'),('9ed3e00bf986e88f626dec9e91','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 04:35:55'),('9edd01ad8ef0978ff082b95982','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 08:32:42'),('9ee368c37e5739d1e8b5ebeab7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 04:17:23'),('9f6bdea1638a7047944c8ae396','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 23:51:25'),('9f835a5651ba1cfaa51b3c528b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 22:49:43'),('9fc19bcd9116fcfb7d11d1cded','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 15:49:03'),('9fc74905c87bd3ff79ec52215b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 03:21:35'),('a017eea7cd5524f581ec51d487','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:37:52'),('a04192b52f7ad0386972fd641d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 17:39:52'),('a04ceaf1b2c813e1539ea1727e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 09:32:13'),('a06117e38e492717442d53b78b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 11:02:37'),('a09b008a847dbab5b35cb3ce3a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 19:31:27'),('a0ab6fc8d8f7f2ffd06e595a3e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 20:33:42'),('a0b2502cdde8faa1e38111b41b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 11:21:35'),('a20a3cbb81b2839a8dcf15afe1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 06:23:03'),('a24c1abe2268b846ab03bc8fac','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 19:01:33'),('a29bb51fce8220cd9d72deaee9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 00:53:15'),('a29cca07083ab970caa3da6ab7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 01:31:21'),('a2a0b103195781d473af365a30','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 02:15:05'),('a305bf58d963fd9b6ccee682db','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 08:32:26'),('a3646d36d7f285413322f7a404','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 05:44:40'),('a3c2d9f940ac31aac5ac993055','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 22:34:51'),('a455ccb84f5a6d01acf7332db0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 22:31:42'),('a507188c703ddf73d439f99b1b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 07:01:47'),('a586cbc57cc8530bdf76dd2444','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 13:11:30'),('a5caeab2040ba6113f29a916b8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 14:53:06'),('a5f8e14637a1841297bbcf6432','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 17:11:21'),('a5fe9e413b783e3b7cf72ced6c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:39:09'),('a61591b7808ccc02e7340300b5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 15:21:23'),('a63a9247c7c448c07f95fab0a7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 01:41:43'),('a6526f744c5ab3da8affd3a260','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:38:18'),('a68574d18fc2117045b373be09','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 05:42:58'),('a687b41a7d37c8e5053d8a666e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 02:33:27'),('a6bd3650fc7dd99894a7a49919','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 23:21:52'),('a6c27e4d2e07f2597951215382','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 02:15:31'),('a6f54138152e2e4e0a687e7a50','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:31:50'),('a7528ccf8ce515d20be28306f5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 20:14:55'),('a77f83415311ac14fc04b99c8a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:56:54'),('a7c90559ca65adafa755270fc9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 11:41:52'),('a8322634d34426c6a923dd62b5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:59:00'),('a83afb415e072f83516df24a53','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 15:01:52'),('a843a65a2e6193aa58d6481cff','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 16:37:48'),('a874bb91f7aa0e93eca27a42f6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 10:32:52'),('a89c81126743aaef0a5cd99c52','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 11:57:10'),('a8f15b387d007b6d4d4038220e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:13:46'),('a96793d5589f517da8bbe80679','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 10:02:17'),('a9caf0abfeb6fe9a2ab2d4585a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 03:01:33'),('aa27c8dad51a43bc694ac4c371','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 15:03:29'),('aa5ec6dadfffc3f6ddb91e3de8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 21:48:50'),('aa728ca817d1062122b1e57573','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 05:54:18'),('aa9d0585017a0b9a4dfa1ee8e9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 10:03:46'),('aaa0232a3c6a4b436e57015c4f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:51:35'),('aac51553d2d61f0b8b4c116f8d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 14:11:50'),('aae1c05811555bec9827757991','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 06:42:07'),('ab9df8fb2ac6ba87ffd88fe724','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 23:11:57'),('aba8e9b7a1a0ebbd0a6c2ddc3e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 04:51:35'),('abc0d9eedad5b916c2db5dd5c1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 18:42:49'),('ac59c442deeb1ac67c3305f92c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 13:56:26'),('ac7bea46f1067011e1731fccaf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 14:52:05'),('acce59e1f508be815483e86c3c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 13:22:44'),('ace6ec73a4f4a97a110b6b47f5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 19:51:30'),('ada5fd48ff0221767b135f045b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 20:42:21'),('add7b7fc9ee7620e689274c33a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 07:13:52'),('ae0a7de59c18d18543209d5c47','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 22:09:52'),('ae64d417cc00d966a93bf446bc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 14:52:27'),('ae76fb735685b3774b8d0206c6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 21:32:03'),('ae9615cc5279c3a9d8efcb5f29','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 15:41:31'),('af2cd4a3b96396553b293d0e46','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 16:06:14'),('af5ccba1e216bbfd20bbf21ea9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 11:33:36'),('afa5bfbf5488fcaa201eb98017','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 16:41:41'),('afddf50ff6e20ae262af8f4968','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 04:29:50'),('afe91aed115795aa15d5133bab','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 00:11:36'),('b001f1e1d253d5d485a42957e5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 15:02:55'),('b07a631030021b160179719045','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:09:59'),('b0b0fb9d0d53713a2e4e43deac','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 09:46:53'),('b0c440d178ada1a7921b531a73','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 14:32:06'),('b1219d79365f75433baa354e2f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 05:11:43'),('b2429a5101d3985b96bd476a1b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 06:28:36'),('b28756ce6fecc1bcc8dba1c1b8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:21:01'),('b2b35a08b0f092d5dc65eb27cb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 22:01:55'),('b2ce26476157b63839812daf74','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:11:32'),('b2f06ffd4c9e8e4897eef7ba84','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:31:34'),('b31e605a7a61ed4807b93aec71','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 11:19:52'),('b3855f8783b9fa6c20ca73ea60','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 14:02:58'),('b388cf9818019273cf04e80a51','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 21:41:22'),('b3d1ac8a4331f523ca09925d5c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 10:21:33'),('b3d4be5afb2ff3735e31a09748','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 04:41:33'),('b3e4f97a9315876aed6bd6ae8f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 05:53:11'),('b3f1682e099bac2f561b965676','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 04:37:27'),('b3fa9e6d89d99ee253afc001fa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 22:52:13'),('b3fbd6ba169d753c8f89758bdf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 04:44:39'),('b45f0c171ad2c2b1d67e4a32f9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 08:57:43'),('b491a432b22a330db00aed5e4a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 19:42:12'),('b4e97bcc6874f8d3bb32b4a06a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 19:43:22'),('b554ba7681f0c80008f5e770e6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 17:25:43'),('b555e519eebf7b1392ae62febb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 20:10:00'),('b5e4f2c49e914907973a493d08','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 06:51:49'),('b60ac573ed559139a3322a2760','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:28:36'),('b62283920f7b08c352c3bd594e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 09:02:06'),('b69dca5867ed91425b0f6b55ed','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 09:11:35'),('b76c518110a0f71d9e2bb54bf6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 04:11:47'),('b772411e2daa6da8dbefbe599e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:03:08'),('b8419b87cca5abaf9fc44462e4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 03:22:21'),('b8c1de74fa5e73195c7ab41350','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 11:11:51'),('b9002eddce1e90f88ad5e350e1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 06:15:08'),('b911802ec2676e1210e827f710','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 05:22:55'),('b91438d7258278f0f265bec9c6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:51:51'),('b93373462bf1c575f52befb05b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 11:31:31'),('b973593bbb2da4d2f408a96ca8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 23:01:57'),('b9974187765460205664810110','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 00:01:30'),('b9996ca53f847d0f8e2cac31c1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 21:53:50'),('ba0c7bd7f2aa43281fdcb2d5d4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:08:14'),('ba371850b968e2cedd9df545c2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 05:14:10'),('ba3f81feec0affd23bec798ee0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 04:02:17'),('ba47ce9ffcd5af0f8285615271','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:18:23'),('bab1d1d38f1c76f73a3b84994b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 20:12:21'),('baff397859f45910a2f3183ff3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 03:23:59'),('bb6f145a2411a2c15bc2929d5b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:18:23'),('bbefdb47919fd18ab55177c45b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 10:16:04'),('bc3731e907d3552bbe6fb3616f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 03:41:22'),('bc627499b077bb4e51e5a7f755','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 13:42:19'),('bc8652cb79a52afd77df2440b1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:53:13'),('bccbedcd86d96d3e61a4a651f2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 23:07:54'),('bcf055319be90d390d9df43567','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:41:11'),('bd33e101ea0d7f760c30cfe755','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 03:51:24'),('bdf0ae2e586f430e2bf1dc9f43','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 06:14:18'),('be756fd8ed20d6bc0e9de812ec','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 04:50:22'),('be8cf3c6dd67a4957aac455dfb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 23:52:55'),('becbde9252ead89bfeb805167c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 13:52:52'),('bed425fd2bc1446bec30f5f061','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 08:51:45'),('bf1379b398469555a721a596ab','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:16:31'),('bf303d587327878bcc3de98a98','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 23:54:02'),('bf3b040aa399c9e52feef53760','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 08:22:14'),('bfbbeea8ee3744a1e4c200cdf6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 00:22:15'),('c101385b165150deae550d02c4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 11:51:26'),('c10f21d0c1da8bf3c581eb819b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 08:12:27'),('c19efe22d19f2aae0ebf0fe986','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:02:02'),('c1c0d6ae3ff365c3fcd3945402','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 21:31:52'),('c1e73b83ae6c137ef1c9e1859c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:03:50'),('c21ab6bf2c660d55089d98a688','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 05:21:23'),('c2ab4990de1d3f9c275f86e924','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 11:11:41'),('c2f76343d3e0cd2f3b4b4519df','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 16:31:29'),('c33ebf8593611e443ecba707dd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 00:32:44'),('c34013cbab63b3a94f62233b68','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 19:52:19'),('c34077e377a37cbf548f165cf6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 13:51:45'),('c4103b1ea20cde5e94d2a7672d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 10:52:07'),('c41c52a247b0b9545a7ea3e1cc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 23:02:02'),('c425bbc7d51c1a4b085420e603','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 13:42:49'),('c43100d47c9f4116ac8caaf7cb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 13:03:04'),('c455eb97f3073313efae093a51','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 17:01:54'),('c57a4ac9f5419f5568bc9c476c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-07-12 22:57:07'),('c58b226e91abdcd23cf79d8f6b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 03:01:20'),('c60fab24a43abfeeea1bbb285a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:25:23'),('c6335d5e4d4e266b768066d60f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 17:42:00'),('c7500d65bf55dcd6fd76fd0c15','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 04:12:06'),('c76df8097f9808c1e60d83cf94','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 15:54:20'),('c776e1fcbe57e0ece4a4da25f3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 19:51:30'),('c7a6805fc506382401306b3191','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 22:44:35'),('c7ca366701ba25b2c985f9dd61','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 03:53:31'),('c7fc330bb21b43a438a7a9000e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 09:21:28'),('c8573fa8d8ecdbbedb318ff11e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 01:48:46'),('c86d04e7f2adf56ac812d505db','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 04:54:55'),('c9643755992be45f43f4919093','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 12:42:10'),('c9918cc7e719bf39432400f609','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:26:19'),('c996dd9cfeed82ad57fcb6cacb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 07:03:01'),('c9aa8edf29240e90250165e32b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 12:31:23'),('c9ccff1a8c95de5c40a8c0ed00','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:38:38'),('ca4cb8b2b861f543fb934681b3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:12:32'),('ca5cf9637b847b26dda30014f3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 00:52:13'),('ca8cd26a5c005f271b3d758454','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 19:39:33'),('ca9f7c90467042b9e6eca31bd9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 04:51:19'),('caa26240819d9141b68484378c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 09:41:46'),('caafb93757f34add54177bc982','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 15:51:47'),('cac2e28c24a361c25048193822','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:42:19'),('cae1cb37b7db44bbc601ba295e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:52:24'),('cb6a2d5ac9f4b6ed441d5c21ff','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 11:42:34'),('cb7d76d56af7cd77b4ec1f42db','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 16:01:30'),('cb8584c48657560338a859fb2a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 17:31:22'),('cc317caa2e84e781661909e5a3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 20:11:53'),('cc6d431115878ffda422009641','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 21:54:48'),('cc96852d23d9bd3f52c8590a3b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 01:01:16'),('ccd9b184e5a7aaf6fa99bdda77','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 04:32:42'),('cd3ca503cdb721832406a8c360','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 01:12:50'),('cd67302cbd4a4acefbb7dac1dd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 05:04:44'),('cdad5e7738f4659de57c8e90d3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 19:35:49'),('ce3ec7be34797a95ac48fc1c66','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 23:11:38'),('cef660483d082741a7f45ea6f1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 14:21:38'),('cefdf49a8a0d73d28c7bf76ccb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 19:01:36'),('cf1bccf31936fe9638cbd21c64','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 08:02:13'),('cf4b0eaf1311a1b56077371442','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 20:39:25'),('cf7ac3834172ae26c3951ae49b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:48:14'),('cf99a66671a4313fe5738a1232','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 13:11:33'),('cfcf2fef92cc9edb4463fd740b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 22:01:13'),('d04430c0b236d31fa27fd2e374','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 19:14:08'),('d0d44bbc11665916ac4fd4c089','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 17:51:54'),('d17b260036f84ab504fb3671c5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 12:01:45'),('d1dfff0e9ed51a8fb84816ad8f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 01:53:36'),('d213818abb854b3b6842bad32a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 09:35:16'),('d21675f887da143f831740831b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:18:23'),('d23070b387eca05706f5d2b0ee','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 21:51:59'),('d2374172d598ff0acc7ece4c7e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:40:07'),('d25116a0aa0dbc0bfce82ba527','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 11:42:55'),('d257635cb0602316c8e8a1c95c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 08:52:27'),('d2d401697cb35bde962cfeb02e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 00:02:05'),('d2f1b24866d36a0c85d999b8a3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:20:41'),('d3344f7b4de72c33940c84783d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 22:50:01'),('d38977c2c0f112d615cb383b0e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 23:11:55'),('d3d390acbe6f93a159ee9bb843','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 00:52:08'),('d4250fb9151da0c8cdc1a493dd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:51:28'),('d4601fa117d0fe3b92d2c77287','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 14:13:01'),('d4f83f39d9becdc3a51c703dac','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 00:22:20'),('d53219b7c24180357528c7cee1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 17:51:17'),('d53e56e4189709f43ae92989cf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 15:33:38'),('d545621d90776deccc864e3ffd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 13:21:33'),('d5c9939167ac88420956f989d4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 09:55:45'),('d5db198cc44692144680cb5986','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:23:07'),('d5de2dc9d28db2107de7cca8c1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:10:19'),('d69a00d4231a60a550adbe0e41','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 17:52:23'),('d6a72229c94d2a031ee238d260','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 03:09:58'),('d6c2741d8cd6fa141ae7869114','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 20:31:40'),('d731ef26a9fbed6fbc281e65b8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 12:01:31'),('d77fdc63e8307867e84e2f3ecd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 04:02:01'),('d7860a650272f094d6ea3b2f60','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 07:14:10'),('d7864c6b0d52d38e595ac72ca9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 01:52:01'),('d8c77c62ef3be758fe2a6f4e1b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 01:53:47'),('d8ccc3dd1755635018f207bf34','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 04:03:51'),('d97c5fda1620106c3bba2b706f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 18:06:03'),('da6f94b64e853ff1bd1c4dee5c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 20:32:44'),('da94a906ee9c61c8a11c440e77','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 12:31:54'),('dac34a7838e482402896e75580','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 20:51:40'),('dacbbcd6b5058d662e42b97689','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 09:36:00'),('db16b549b985890231310a53e8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 01:31:33'),('dbbec18bcfc0975ed9e64c775a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 09:21:31'),('dbdc7a8ff72b6323967ca704df','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:51'),('dc0e73803ad82ded651462c009','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 15:57:29'),('dc3ecb376067e73765a80463d2','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 08:11:27'),('dc5612bdcd675b6d5a9d685e6a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 15:21:33'),('dc59dca2faa41dc0cbca414ac4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 05:02:11'),('dc6bfef9e8bbe2f0c9466666ef','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 03:12:38'),('dc9b594421a30b73c00fef7283','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 09:11:09'),('dcc32587135a0cf55e30c4b8cd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 09:41:58'),('dcf74cd187c253e1a8d1dfb208','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 14:21:33'),('dd0bbc15fe1f23d9b1bf38df0a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 22:27:27'),('dd4350d7098561a3b339c2de89','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:29:07'),('dda130b54d139d972f6c450087','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 06:01:47'),('ddbb2158cd081ede329d660bf4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 19:12:17'),('ddeab5183b549e7aa15ebb210e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 10:12:07'),('de0c8790d6ed61ce7513151363','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 10:41:50'),('de5c5a87369ea26a8d33dba640','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 12:22:01'),('de9da7415fb1b4e26c0fdcefca','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 18:31:48'),('def3d3f5381d9762c8427d019f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 19:41:40'),('df1bb962d867e8397f95a2103f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 03:17:36'),('df96dcc87bbe5d25968a77d036','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 10:08:04'),('dfe13e850f1bee3f22811cc414','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 10:13:47'),('dfe97bde6781f8a52f6e5a38a0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 10:51:37'),('e01c834a9050eeb94527cecc05','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 19:33:38'),('e07e80b7be4411dc8f276c714e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 14:02:56'),('e0adfac0c692af881124239ce5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 22:03:19'),('e2acefb7854f5ea809dae1aac4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:10:48'),('e2cd51a0c6aa4e20432fa8cbe4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 19:42:08'),('e2e9e64931d9f446528ff812eb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 09:05:33'),('e2ebf0fc7c8011be2c0d355380','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 00:52:27'),('e30baa95eb82d8de808f3d531b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 01:42:02'),('e3162550cc80b1f851c7dff24d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:12:00'),('e3384f9edadab6f2453ddd5e40','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 14:52:03'),('e3533bdd714ae37928a9f00090','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:03:22'),('e3f13a9cff6878876fb5fcc22e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 21:02:25'),('e40ed42cf1db0b32283056e72a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 18:40:49'),('e422952619b508415c1d159b4d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 04:21:51'),('e527b47f9590f1107529b0614e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 04:21:58'),('e565d3b32c5347a1a19644ed78','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 02:01:37'),('e5994b4be4d9a73a042cb264e9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 05:56:10'),('e5ea0988a60f4c2ecab938361a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 00:59:56'),('e630f1d28f4b7e92ab94fd9f4a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 01:41:44'),('e635dd5febf0da14ffeb080568','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 23:41:55'),('e64ec3775327f07a907477c8d1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 11:03:56'),('e6880304b380b7ba4bd3858f3e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 07:06:05'),('e70bd84c92c3fe24f2e09c92cd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:21:38'),('e70f431cfb01990caac8d2a253','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 06:02:25'),('e725889a4fd393f475af0e3c8d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 05:41:22'),('e729882c790cff36c57e4184df','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 03:52:13'),('e77621f90e999690ccfc7f157f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 20:03:08'),('e79edbff093c6a646529e9549a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 07:31:40'),('e7c184c53a00cca4230a793bd9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 00:42:18'),('e7c3300550e82d3862c603fc24','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 08:42:06'),('e7c7984463714adaa622204ffa','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 13:41:41'),('e80fb9d89c37f8f386bf20ee2e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 16:32:01'),('e8554b56f0e65a6f5a9ef4d96d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:12:29'),('e86824f84b411b590b25af10e6','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 15:31:20'),('e8aaa167c309513e121060423c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 19:53:27'),('e8ac8cb3f9334c2e157c43e756','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 22:06:09'),('e94e16d1a2ce78908242484130','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 03:21:32'),('e96302a30966baa38d620ae157','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 21:21:33'),('e9cc0e01d127f586849693ca5a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 09:21:44'),('e9e034e061a3671bd0e88bd3bf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 20:51:54'),('ea0ebd173d0b4a3134b7ead101','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 10:41:46'),('ea38fdf539cb0546b17af6f248','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 15:12:01'),('eadb3acf9f50cd06afb7f6b458','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 23:01:17'),('eb0624a5c3a2197dbc8420a808','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 12:51:44'),('eb0bc65704a7266301b4807977','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 06:33:23'),('eb539cefe1c73a98485f84e587','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 15:23:36'),('eb57c0cd3d09dd483cf88da17f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 17:52:07'),('eb7c888cf63ca16f59fc038114','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 18:01:34'),('ebaec7c136bf3da568d3ad15b3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 19:41:43'),('ec18bad4a99493f20a130adcfb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 17:33:07'),('ec1dfb21124b0020d33f8d83fd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 11:01:59'),('ec417d8f057cde8de4e8c31d35','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 04:23:37'),('ec796f19bb81fbc6dcae370d64','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 15:31:55'),('ed3eea45f6ff27ae99445db32a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:38:39'),('edb79f130d438e9a642f4893df','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 06:43:17'),('edc0040e16137a391c560e8a37','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 05:48:21'),('ee1a293e6165b01aeb1989c977','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 11:22:06'),('ee5e87dce9efcc6338e790961e','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 07:41:25'),('eefc7a7b223fb4c3a62a38096f','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 19:22:15'),('ef8504ce79d11bf22b9e0e36b4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:32:36'),('efba07f08d84d28f997c870a93','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:51:26'),('efc7834c2a151f75e1ce017834','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:40:57'),('efcf2757dfa760e23fdec019f5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 13:51:58'),('effec1addb96238baa1a3e4583','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 22:02:18'),('f0289d56e04e6b03900b58c7dc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 22:01:19'),('f0abf2f558268e9a4cb70994e1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 16:11:40'),('f0f3452a5a503297c65b888b5d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 07:32:08'),('f1120bddbdf5ac9335ca7b2d97','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 02:11:44'),('f1325e34e03d7201b26abe2bc1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 04:03:48'),('f1f0906fe49aa49282644b9b49','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 16:23:38'),('f25cae07b6c03645f394a73815','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:40:17'),('f2c13516aed041ccb36483b827','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:42:04'),('f3096a36835527a8940be18fdf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 23:10:37'),('f30ad6617ce37591e2bfd1b788','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 20:41:48'),('f30ca981a2d63f27c14f6ffaf5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 23:31:50'),('f314e3fd7683248924161e3c51','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 12:59:31'),('f36c584fefda7563678ed29f7d','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 10:51:48'),('f3da1ccf9eeba76bf0b7288140','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 18:51:39'),('f42e87a3dc903e309cb7c66d62','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 18:32:30'),('f48d0307b37a3f5680fab65090','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 03:32:02'),('f4cf1458b12758248b1f7dbaa7','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-11 21:09:04'),('f4d8bb1b94d6b1fda2d940d8fc','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 01:24:37'),('f5301a441430f7856630e5f875','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 04:41:49'),('f555b3e619c955f383494920a9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-12 05:01:56'),('f5e4e28debf33a1ebb7c7bb777','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-05 21:18:23'),('f5ed272ca1b1baf84578f051a9','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 23:31:55'),('f63527ec842b072d2771db81d8','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 14:51:35'),('f6f1457baea9f946131af91dc3','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 02:46:16'),('f73ef4ea14257d9627964e9d08','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 06:51:48'),('f8b8b540151e793848270882ae','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 17:21:26'),('f8e96a52f9e4f9a3f8c0e47b22','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 13:21:42'),('f92d1e5100d43838c100f60650','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 21:44:19'),('f93794ba930716e26a4e535979','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 21:42:24'),('f9c49fef60414adb19bd1684dd','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:53:47'),('faa790e1e254f11046f0c28e61','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 17:41:58'),('fae17b041c694e92a9c2ca6f08','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 05:06:15'),('fb254d1ae9cd35c00be75a5559','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 12:22:54'),('fb40f4f11acab21574040e850a','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 16:54:15'),('fb6a2f3db8e11f91a624f1c120','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 10:52:48'),('fbaa83987788262a6e21e26f19','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 06:02:06'),('fbc1f075cf02833a373bd9a2ca','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 06:42:11'),('fbf9bbdfd9df0b2aad01f71c0c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 17:22:35'),('fc2fd3e4672035d5e7e69ef8e1','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 03:58:01'),('fc9881e1d7856977ac5bd81726','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 07:22:11'),('fd0fd34df6691c689496e51f4c','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-07 01:12:06'),('fd4b78f3e3e0a9fc5b8048d8bf','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 21:11:43'),('fd53a8300a2a07320df17040b4','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 19:11:42'),('fdc26180bfdd6ab9c0fe4b30bb','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 03:53:20'),('fdf71a3889ac5fb34818763f09','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 04:22:15'),('fe79485cb2ba13a6038a3c2257','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 15:26:15'),('ff3d9807d1b76bdf5b24d7083b','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 21:01:33'),('ff5c48a0be6cdfe52d4d4dcc92','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-09 01:31:31'),('ff62f18806c74e465189bcc6a5','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-06 11:51:36'),('ffafda3ef163f4e6080e93abd0','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-10 20:22:20'),('ffbff4ee7eb9135970df169f31','{\"language\":\"uk-ua\",\"currency\":\"UAH\"}','2022-03-08 07:21:33');
/*!40000 ALTER TABLE `oc_session` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1249,0,'oct_megamenu','oct_megamenu_mobile_title','{\"1\":\"\"}',1),(7434,0,'config','config_open','',0),(7435,0,'config','config_comment','',0),(7436,0,'config','config_country_id','220',0),(7437,0,'config','config_zone_id','3500',0),(7438,0,'config','config_timezone','Europe/Kiev',0),(7439,0,'config','config_language','uk-ua',0),(7440,0,'config','config_admin_language','uk-ua',0),(7441,0,'config','config_currency','UAH',0),(7442,0,'config','config_currency_auto','1',0),(7443,0,'config','config_length_class_id','1',0),(7444,0,'config','config_weight_class_id','1',0),(7445,0,'config','config_product_count','1',0),(7446,0,'config','config_limit_admin','20',0),(7447,0,'config','config_review_status','1',0),(7448,0,'config','config_review_guest','0',0),(7449,0,'config','config_voucher_min','1',0),(7450,0,'config','config_voucher_max','1000',0),(7451,0,'config','config_tax','0',0),(7452,0,'config','config_tax_default','shipping',0),(7453,0,'config','config_tax_customer','shipping',0),(7454,0,'config','config_customer_online','1',0),(7455,0,'config','config_customer_activity','1',0),(7456,0,'config','config_customer_search','1',0),(7457,0,'config','config_customer_group_id','1',0),(7458,0,'config','config_customer_group_display','[\"1\"]',1),(7459,0,'config','config_customer_price','0',0),(7460,0,'config','config_login_attempts','5',0),(7461,0,'config','config_account_id','5',0),(7462,0,'config','config_invoice_prefix','INV-2021-00',0),(7463,0,'config','config_cart_weight','1',0),(7464,0,'config','config_checkout_guest','1',0),(7465,0,'config','config_checkout_id','5',0),(7466,0,'config','config_order_status_id','1',0),(7467,0,'config','config_processing_status','[\"5\",\"1\",\"2\",\"12\",\"3\"]',1),(7468,0,'config','config_complete_status','[\"5\",\"3\"]',1),(7469,0,'config','config_fraud_status_id','7',0),(7470,0,'config','config_api_id','1',0),(7471,0,'config','config_stock_display','0',0),(7472,0,'config','config_stock_warning','0',0),(7473,0,'config','config_stock_checkout','1',0),(7474,0,'config','config_affiliate_group_id','1',0),(7475,0,'config','config_affiliate_approval','0',0),(7476,0,'config','config_affiliate_auto','0',0),(7477,0,'config','config_affiliate_commission','5',0),(7478,0,'config','config_affiliate_id','5',0),(7479,0,'config','config_return_id','7',0),(7480,0,'config','config_return_status_id','1',0),(7481,0,'config','config_captcha','',0),(7482,0,'config','config_captcha_page','[\"register\",\"review\",\"return\",\"contact\"]',1),(7483,0,'config','config_logo','catalog/Logo_v4-org_png.png',0),(7484,0,'config','config_icon','catalog/favicon.png',0),(7485,0,'config','config_mail_engine','smtp',0),(7486,0,'config','config_mail_parameter','',0),(7487,0,'config','config_mail_smtp_hostname','ssl://mail.adm.tools',0),(7488,0,'config','config_mail_smtp_username','office@sit.com.ua',0),(7489,0,'config','config_mail_smtp_password','f4dy%_YM@7U5',0),(7490,0,'config','config_mail_smtp_port','465',0),(7491,0,'config','config_mail_smtp_timeout','5',0),(7492,0,'config','config_mail_alert','[\"account\",\"affiliate\",\"order\",\"review\"]',1),(7493,0,'config','config_mail_alert_email','dk_incom@ukr.net',0),(7494,0,'config','config_maintenance','0',0),(7495,0,'config','config_seo_url','1',0),(7496,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(94,0,'payment_free_checkout','payment_free_checkout_status','1',0),(95,0,'payment_free_checkout','payment_free_checkout_order_status_id','1',0),(96,0,'payment_free_checkout','payment_free_checkout_sort_order','1',0),(97,0,'payment_cod','payment_cod_sort_order','5',0),(98,0,'payment_cod','payment_cod_total','0.01',0),(99,0,'payment_cod','payment_cod_order_status_id','1',0),(100,0,'payment_cod','payment_cod_geo_zone_id','0',0),(101,0,'payment_cod','payment_cod_status','1',0),(102,0,'shipping_flat','shipping_flat_sort_order','1',0),(103,0,'shipping_flat','shipping_flat_status','1',0),(104,0,'shipping_flat','shipping_flat_geo_zone_id','0',0),(105,0,'shipping_flat','shipping_flat_tax_class_id','9',0),(106,0,'shipping_flat','shipping_flat_cost','5.00',0),(107,0,'total_shipping','total_shipping_sort_order','3',0),(108,0,'total_sub_total','total_sub_total_sort_order','1',0),(109,0,'total_sub_total','total_sub_total_status','1',0),(110,0,'total_tax','total_tax_status','1',0),(111,0,'total_total','total_total_sort_order','9',0),(112,0,'total_total','total_total_status','1',0),(113,0,'total_tax','total_tax_sort_order','5',0),(114,0,'total_credit','total_credit_sort_order','7',0),(115,0,'total_credit','total_credit_status','1',0),(116,0,'total_reward','total_reward_sort_order','2',0),(117,0,'total_reward','total_reward_status','1',0),(118,0,'total_shipping','total_shipping_status','1',0),(119,0,'total_shipping','total_shipping_estimator','1',0),(120,0,'total_coupon','total_coupon_sort_order','4',0),(121,0,'total_coupon','total_coupon_status','1',0),(122,0,'total_voucher','total_voucher_sort_order','8',0),(123,0,'total_voucher','total_voucher_status','1',0),(124,0,'module_category','module_category_status','1',0),(125,0,'module_account','module_account_status','1',0),(3053,0,'oct_sreview_setting','oct_sreview_setting_data','{\"review_admin_email\":\"1\",\"review_email_to\":\"dihtyaruk.v@gmail.com\",\"review_moderation\":\"1\",\"language\":{\"3\":{\"seo_title\":\"\\u0412\\u0456\\u0434\\u0433\\u0443\\u043a\\u0438 \\u043f\\u0440\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d SIT\",\"seo_h1\":\"\\u0412\\u0456\\u0434\\u0433\\u0443\\u043a\\u0438 \\u043f\\u0440\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d SIT\",\"seo_meta_description\":\"\\u0412\\u0456\\u0434\\u0433\\u0443\\u043a\\u0438 \\u043f\\u0440\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d - \\u041c\\u0435\\u0442\\u0430-\\u0442\\u0435\\u0433 Description\",\"seo_meta_keywords\":\"\\u0412\\u0456\\u0434\\u0433\\u0443\\u043a\\u0438 \\u043f\\u0440\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d - \\u041c\\u0435\\u0442\\u0430-\\u0442\\u0435\\u0433 Keywords\",\"seo_description\":\"&lt;p&gt;&lt;span title=&quot;&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u041e\\u043f\\u0438\\u0441&lt;\\/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&lt;\\/span&gt;&lt;span title=&quot;&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0434\\u043b\\u044f&lt;\\/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&lt;\\/span&gt;&lt;span title=&quot;&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0441\\u0442\\u043e\\u0440\\u0456\\u043d\\u043a\\u0438&lt;\\/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&lt;\\/span&gt;&lt;span title=&quot;&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;&quot;&lt;\\/span&gt;&lt;span title=&quot;&quot; class=&quot;&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0432\\u0456\\u0434\\u0433\\u0443\\u043a\\u0438&lt;\\/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&lt;\\/span&gt;&lt;span title=&quot;&quot; class=&quot;&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u043f\\u0440\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d&lt;\\/span&gt;&lt;span title=&quot;&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;&quot;&lt;\\/span&gt;&lt;span title=&quot;&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;.&lt;\\/span&gt;&lt;br&gt;&lt;\\/p&gt;\"},\"2\":{\"seo_title\":\"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435 SIT\",\"seo_h1\":\"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435 SIT\",\"seo_meta_description\":\"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435 - \\u041c\\u0435\\u0442\\u0430-\\u0442\\u0435\\u0433 Description\",\"seo_meta_keywords\":\"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435 - \\u041c\\u0435\\u0442\\u0430-\\u0442\\u0435\\u0433 Keywords\",\"seo_description\":\"&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435 \\u0434\\u043b\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b &quot;\\u043e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435&quot;.&lt;\\/span&gt;&lt;br&gt;&lt;\\/p&gt;\"},\"1\":{\"seo_title\":\"Store reviews SIT\",\"seo_h1\":\"Store reviews SIT\",\"seo_meta_description\":\"Store reviews - \\u041c\\u0435\\u0442\\u0430-\\u0442\\u0435\\u0433 Description\",\"seo_meta_keywords\":\"Store reviews - \\u041c\\u0435\\u0442\\u0430-\\u0442\\u0435\\u0433 Keywords\",\"seo_description\":\"&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;Description for the store reviews page.&lt;\\/span&gt;&lt;br&gt;&lt;\\/p&gt;\"}}}',1),(150,0,'dashboard_activity','dashboard_activity_status','1',0),(151,0,'dashboard_activity','dashboard_activity_sort_order','7',0),(152,0,'dashboard_sale','dashboard_sale_status','1',0),(153,0,'dashboard_sale','dashboard_sale_width','3',0),(154,0,'dashboard_chart','dashboard_chart_status','1',0),(155,0,'dashboard_chart','dashboard_chart_width','6',0),(156,0,'dashboard_customer','dashboard_customer_status','1',0),(157,0,'dashboard_customer','dashboard_customer_width','3',0),(158,0,'dashboard_map','dashboard_map_status','1',0),(159,0,'dashboard_map','dashboard_map_width','6',0),(160,0,'dashboard_online','dashboard_online_status','1',0),(161,0,'dashboard_online','dashboard_online_width','3',0),(162,0,'dashboard_order','dashboard_order_sort_order','1',0),(163,0,'dashboard_order','dashboard_order_status','1',0),(164,0,'dashboard_order','dashboard_order_width','3',0),(165,0,'dashboard_sale','dashboard_sale_sort_order','2',0),(166,0,'dashboard_customer','dashboard_customer_sort_order','3',0),(167,0,'dashboard_online','dashboard_online_sort_order','4',0),(168,0,'dashboard_map','dashboard_map_sort_order','5',0),(169,0,'dashboard_chart','dashboard_chart_sort_order','6',0),(170,0,'dashboard_recent','dashboard_recent_status','1',0),(171,0,'dashboard_recent','dashboard_recent_sort_order','8',0),(172,0,'dashboard_activity','dashboard_activity_width','4',0),(173,0,'dashboard_recent','dashboard_recent_width','8',0),(174,0,'report_customer_activity','report_customer_activity_status','1',0),(175,0,'report_customer_activity','report_customer_activity_sort_order','1',0),(176,0,'report_customer_order','report_customer_order_status','1',0),(177,0,'report_customer_order','report_customer_order_sort_order','2',0),(178,0,'report_customer_reward','report_customer_reward_status','1',0),(179,0,'report_customer_reward','report_customer_reward_sort_order','3',0),(180,0,'report_customer_search','report_customer_search_sort_order','3',0),(181,0,'report_customer_search','report_customer_search_status','1',0),(182,0,'report_customer_transaction','report_customer_transaction_status','1',0),(183,0,'report_customer_transaction','report_customer_transaction_status_sort_order','4',0),(184,0,'report_sale_tax','report_sale_tax_status','1',0),(185,0,'report_sale_tax','report_sale_tax_sort_order','5',0),(186,0,'report_sale_shipping','report_sale_shipping_status','1',0),(187,0,'report_sale_shipping','report_sale_shipping_sort_order','6',0),(188,0,'report_sale_return','report_sale_return_status','1',0),(189,0,'report_sale_return','report_sale_return_sort_order','7',0),(190,0,'report_sale_order','report_sale_order_status','1',0),(191,0,'report_sale_order','report_sale_order_sort_order','8',0),(192,0,'report_sale_coupon','report_sale_coupon_status','1',0),(193,0,'report_sale_coupon','report_sale_coupon_sort_order','9',0),(194,0,'report_product_viewed','report_product_viewed_status','1',0),(195,0,'report_product_viewed','report_product_viewed_sort_order','10',0),(196,0,'report_product_purchased','report_product_purchased_status','1',0),(197,0,'report_product_purchased','report_product_purchased_sort_order','11',0),(198,0,'report_marketing','report_marketing_status','1',0),(199,0,'report_marketing','report_marketing_sort_order','12',0),(200,0,'developer','developer_theme','1',0),(201,0,'developer','developer_sass','1',0),(7502,0,'config','config_file_max_size','300000',0),(7503,0,'config','config_file_ext_allowed','zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc',0),(7504,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf',0),(1251,0,'oct_megamenu','oct_megamenu_mobile_categories','on',0),(1250,0,'oct_megamenu','oct_megamenu_mobile_st_categories','on',0),(1742,0,'oct_product_tabs','oct_product_tabs_status','1',0),(5604,0,'oct_popup_call_phone','oct_popup_call_phone_status','on',0),(1252,0,'oct_megamenu','oct_megamenu_mobile_categories_icon','on',0),(1248,0,'oct_megamenu','oct_megamenu_categories_page','on',0),(1247,0,'oct_megamenu','oct_megamenu_categories_icon','on',0),(1246,0,'oct_megamenu','oct_megamenu_categories_limit','',0),(1245,0,'oct_megamenu','oct_megamenu_categories','on',0),(1244,0,'oct_megamenu','oct_megamenu_title','{\"1\":\"\"}',1),(1243,0,'oct_megamenu','oct_megamenu_status','on',0),(1744,0,'oct_popup_view','oct_popup_view_data','{\"quantity\":\"on\",\"specification\":\"on\",\"review\":\"on\",\"wishlist\":\"on\",\"compare\":\"on\",\"description\":\"on\",\"description_max\":\"2555\",\"image\":\"on\",\"image_width\":\"500\",\"image_height\":\"500\",\"additional_image\":\"on\",\"image_additional_width\":\"90\",\"image_additional_height\":\"90\"}',1),(1743,0,'oct_popup_view','oct_popup_view_status','on',0),(4902,0,'oct_popup_purchase','oct_popup_purchase_template','{\"3\":{\"subject\":\"\",\"text\":\"\"},\"2\":{\"subject\":\"\",\"text\":\"\"},\"1\":{\"subject\":\"\",\"text\":\"\"}}',1),(4899,0,'oct_popup_purchase','oct_popup_purchase_data','{\"order_status_id\":\"2\",\"firstname\":\"2\",\"email\":\"0\",\"notify_email\":\"dihtyaruk.v@gmail.com\",\"telephone\":\"2\",\"mask\":\"+38 (999) 999-99-99\",\"quantity\":\"on\",\"image\":\"on\",\"comment\":\"on\",\"image_width\":\"540\",\"image_height\":\"600\",\"allowed_options\":{\"7\":\"11\",\"9\":\"6\"}}',1),(4898,0,'oct_popup_purchase','oct_popup_purchase_status','on',0),(5605,0,'oct_popup_call_phone','oct_popup_call_phone_data','{\"notify_status\":\"on\",\"notify_email\":\"office@sit.com.ua\",\"name\":\"2\",\"telephone\":\"2\",\"mask\":\"+38 (999) 999-99-99\",\"time\":\"2\",\"comment\":\"on\"}',1),(4905,0,'oct_popup_found_cheaper','oct_popup_found_cheaper_status','on',0),(4906,0,'oct_popup_found_cheaper','oct_popup_found_cheaper_data','{\"notify_status\":\"on\",\"notify_email\":\"office@sit.com.ua\",\"name\":\"2\",\"email\":\"1\",\"telephone\":\"2\",\"mask\":\"+38 (999) 999-99-99\",\"link\":\"2\",\"comment\":\"on\"}',1),(4997,0,'oct_policy','oct_policy_data','{\"module_text\":{\"3\":\"\",\"2\":\"\",\"1\":\"\"},\"value\":\"oct_policy\",\"max_day\":\"7\",\"indormation_id\":\"8\"}',1),(1082,0,'oct_information_bar','oct_information_bar_status','1',0),(1083,0,'oct_information_bar','oct_information_bar_data','{\"indormation_id\":0,\"max_day\":1,\"background_bar\":\"rgb(32, 35, 52)\",\"color_text\":\"rgb(166, 166, 166)\",\"color_url\":\"rgb(24, 164, 225)\",\"background_button\":\"rgb(3, 83, 180)\",\"background_button_hover\":\"rgb(255, 255, 255)\",\"color_text_button\":\"rgb(255, 255, 255)\",\"color_text_button_hover\":\"rgb(32, 35, 52)\",\"value\":\"oct_information_bar\",\"module_text\":{\"1\":\"\"}}',1),(1084,0,'oct_subscribe','oct_subscribe_status','1',0),(1085,0,'oct_subscribe','oct_subscribe_text_data','{\"1\":{\"promo_text\":\"\",\"subject_email_template_first\":\"\",\"email_template_first\":\"\",\"subject_email_template_second\":\"\",\"email_template_second\":\"\"}}',1),(1086,0,'oct_subscribe','oct_subscribe_template_status','0',0),(1087,0,'oct_subscribe','oct_subscribe_form_data','{\"image\":\"\",\"expire\":\"1\",\"seconds\":\"15000\"}',1),(1088,0,'oct_404_page','oct_404_page_status','1',0),(1089,0,'oct_404_page','oct_404_page_data','{\"image\":\"catalog\\/1dasd\\/notfound.png\",\"module_text\":{\"1\":{\"title\":\"\",\"text\":\"\"}}}',1),(3052,0,'oct_sreview_setting','oct_sreview_setting_status','on',0),(1253,0,'oct_megamenu','oct_megamenu_brands','on',0),(1254,0,'oct_megamenu','oct_megamenu_blog','on',0),(1255,0,'oct_megamenu','oct_megamenu_links','on',0),(4900,0,'oct_popup_purchase','oct_popup_purchase_byoneclick_status','on',0),(4901,0,'oct_popup_purchase','oct_popup_purchase_byoneclick_data','{\"order_status_id\":\"2\",\"mask\":\"+38 (999) 999-99-99\",\"notify_email\":\"office@sit.com.ua\",\"product\":\"on\",\"product_view\":\"on\",\"popup_cart\":\"on\",\"cart\":\"on\"}',1),(7620,0,'theme_oct_feelmart','theme_oct_feelmart_version','1.6.7',0),(7618,0,'theme_oct_feelmart','theme_oct_feelmart_seo_url_status','on',0),(7619,0,'theme_oct_feelmart','theme_oct_feelmart_seo_url_data','{\"lang_prefix\":{\"3\":\"ua\",\"2\":\"ru\",\"1\":\"eng\"},\"product\":\"[name]-[model]-[lang_prefix]\",\"category\":\"[name]-[lang_prefix]\",\"manufacturer\":\"[name]-[lang_prefix]\",\"information\":\"[name]-[lang_prefix]\",\"blog_category\":\"[name]-[lang_prefix]\",\"blog_article\":\"[name]-[lang_prefix]\"}',1),(7617,0,'theme_oct_feelmart','theme_oct_feelmart_seo_title_data','{\"product\":{\"title_status\":\"on\",\"title\":{\"3\":\"[name]\",\"2\":\"[name]\",\"1\":\"[name]\"},\"description_status\":\"on\",\"description\":{\"3\":\"[name]-[category]\",\"2\":\"[name]-[category]\",\"1\":\"[name]-[category]\"}},\"category\":{\"title_status\":\"on\",\"title\":{\"3\":\"[name]-[address]-[phone]\",\"2\":\"[name]-[address]-[phone]\",\"1\":\"[name]-[address]-[phone]\"},\"description_status\":\"on\",\"description\":{\"3\":\"[name]-[store]-[address]-[phone]\",\"2\":\"[name]-[store]-[address]-[phone]\",\"1\":\"[name]-[store]-[address]-[phone]\"}},\"manufacturer\":{\"title_status\":\"on\",\"title\":{\"3\":\"[name]\",\"2\":\"[name]\",\"1\":\"[name]\"},\"description_status\":\"on\",\"description\":{\"3\":\"[name]\",\"2\":\"[name]\",\"1\":\"[name]\"}}}',1),(7616,0,'theme_oct_feelmart','theme_oct_feelmart_seo_title_status','on',0),(7615,0,'theme_oct_feelmart','theme_oct_feelmart_live_search_data','{\"price\":\"on\",\"model\":\"on\",\"sku\":\"on\",\"delay\":\"500\",\"count_symbol\":\"4\"}',1),(7612,0,'theme_oct_feelmart','theme_oct_feelmart_popup_cart_status','on',0),(7613,0,'theme_oct_feelmart','theme_oct_feelmart_isPopup','on',0),(7614,0,'theme_oct_feelmart','theme_oct_feelmart_live_search_status','on',0),(7610,0,'theme_oct_feelmart','theme_oct_feelmart_feedback_status','on',0),(7611,0,'theme_oct_feelmart','theme_oct_feelmart_feedback_data','{\"feedback_messenger\":\"on\",\"feedback_viber\":\"on\",\"feedback_telegram\":\"on\",\"feedback_email\":\"on\",\"feedback_callback\":\"on\"}',1),(7609,0,'theme_oct_feelmart','theme_oct_feelmart_alert_data','{\"products\":\"on\",\"orders\":\"on\",\"oct_modules\":\"on\"}',1),(7608,0,'theme_oct_feelmart','theme_oct_feelmart_alert_status','on',0),(7607,0,'theme_oct_feelmart','theme_oct_feelmart_image_location_height','50',0),(7606,0,'theme_oct_feelmart','theme_oct_feelmart_image_location_width','50',0),(7605,0,'theme_oct_feelmart','theme_oct_feelmart_image_cart_height','100',0),(7604,0,'theme_oct_feelmart','theme_oct_feelmart_image_cart_width','100',0),(7603,0,'theme_oct_feelmart','theme_oct_feelmart_image_wishlist_height','100',0),(7602,0,'theme_oct_feelmart','theme_oct_feelmart_image_wishlist_width','100',0),(7601,0,'theme_oct_feelmart','theme_oct_feelmart_image_compare_height','90',0),(7600,0,'theme_oct_feelmart','theme_oct_feelmart_image_compare_width','90',0),(7599,0,'theme_oct_feelmart','theme_oct_feelmart_image_related_height','228',0),(7598,0,'theme_oct_feelmart','theme_oct_feelmart_image_related_width','228',0),(7597,0,'theme_oct_feelmart','theme_oct_feelmart_image_additional_height','90',0),(7592,0,'theme_oct_feelmart','theme_oct_feelmart_image_thumb_height','500',0),(7593,0,'theme_oct_feelmart','theme_oct_feelmart_image_popup_height','500',0),(7594,0,'theme_oct_feelmart','theme_oct_feelmart_image_product_width','228',0),(7595,0,'theme_oct_feelmart','theme_oct_feelmart_image_product_height','228',0),(7596,0,'theme_oct_feelmart','theme_oct_feelmart_image_additional_width','90',0),(7591,0,'theme_oct_feelmart','theme_oct_feelmart_image_popup_width','700',0),(7590,0,'theme_oct_feelmart','theme_oct_feelmart_image_thumb_width','700',0),(7589,0,'theme_oct_feelmart','theme_oct_feelmart_image_manufacturer_height','80',0),(7588,0,'theme_oct_feelmart','theme_oct_feelmart_image_manufacturer_width','90',0),(7587,0,'theme_oct_feelmart','theme_oct_feelmart_image_category_height','80',0),(7586,0,'theme_oct_feelmart','theme_oct_feelmart_image_category_width','80',0),(7585,0,'theme_oct_feelmart','theme_oct_feelmart_image_sub_category_height','88',0),(7565,0,'theme_oct_feelmart','theme_oct_feelmart_data_osucsess','{\"status\":\"on\",\"reg\":{\"title\":{\"3\":\"\\u0412\\u0430\\u0448\\u0435 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u2116 [order_id] \\u0443\\u0441\\u043f\\u0456\\u0448\\u043d\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d\\u043e!\",\"2\":\"\\u0412\\u0430\\u0448 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u2116[order_id] \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d!\",\"1\":\"Your order No. [order_id] has been successfully completed!\"},\"text\":{\"3\":\"&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0412\\u0438 \\u0443\\u0441\\u043f\\u0456\\u0448\\u043d\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u0438\\u043b\\u0438 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f! \\u041d\\u0430\\u0439\\u0431\\u043b\\u0438\\u0436\\u0447\\u0438\\u043c \\u0447\\u0430\\u0441\\u043e\\u043c \\u0437 \\u0412\\u0430\\u043c\\u0438 \\u0437\\u0432\'\\u044f\\u0436\\u0435\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430\\u0448 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u0434\\u043b\\u044f \\u0443\\u0442\\u043e\\u0447\\u043d\\u0435\\u043d\\u043d\\u044f \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f!&lt;\\/span&gt;&lt;br&gt;&lt;\\/p&gt;\",\"2\":\"&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0412\\u044b \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u0438\\u043b\\u0438 \\u0437\\u0430\\u043a\\u0430\\u0437, \\u043d\\u043e\\u043c\\u0435\\u0440 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430:&amp;nbsp;&lt;span style=&quot;color: rgb(84, 84, 84); font-size: 12px; font-weight: 700;&quot;&gt;[order_id]&lt;\\/span&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0412 \\u0431\\u043b\\u0438\\u0436\\u0430\\u0439\\u0448\\u0435\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0441 \\u0412\\u0430\\u043c\\u0438 \\u0441\\u0432\\u044f\\u0436\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u0448 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u0434\\u043b\\u044f \\u0443\\u0442\\u043e\\u0447\\u043d\\u0435\\u043d\\u0438\\u044f \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0415\\u0441\\u043b\\u0438 \\u0443 \\u0412\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b -&amp;nbsp;&lt;a href=&quot;https:\\/\\/feelmart.octemplates.net\\/index.php?route=information\\/contact&quot;&gt;\\u0441\\u0432\\u044f\\u0436\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438&lt;\\/a&gt;&lt;\\/p&gt;\",\"1\":\"&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;You have successfully placed your order! Our manager will contact you shortly to clarify the details of the order!&lt;\\/span&gt;&lt;br&gt;&lt;\\/p&gt;\"}},\"noreg\":{\"title\":{\"3\":\"\\u0412\\u0430\\u0448\\u0435 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u2116 [order_id] \\u0443\\u0441\\u043f\\u0456\\u0448\\u043d\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d\\u043e!\",\"2\":\"\\u0412\\u0430\\u0448 \\u0437\\u0430\\u043a\\u0430\\u0437 \\u2116[order_id] \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d!\",\"1\":\"Your order No. [order_id] has been successfully completed!\"},\"text\":{\"3\":\"&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0412\\u0438 \\u0443\\u0441\\u043f\\u0456\\u0448\\u043d\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u0438\\u043b\\u0438 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f! \\u041d\\u0430\\u0439\\u0431\\u043b\\u0438\\u0436\\u0447\\u0438\\u043c \\u0447\\u0430\\u0441\\u043e\\u043c \\u0437 \\u0412\\u0430\\u043c\\u0438 \\u0437\\u0432\'\\u044f\\u0436\\u0435\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430\\u0448 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u0434\\u043b\\u044f \\u0443\\u0442\\u043e\\u0447\\u043d\\u0435\\u043d\\u043d\\u044f \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f!&lt;\\/span&gt;&lt;br&gt;&lt;\\/p&gt;\",\"2\":\"&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0412\\u044b \\u0443\\u0441\\u043f\\u0435\\u0448\\u043d\\u043e \\u043e\\u0444\\u043e\\u0440\\u043c\\u0438\\u043b\\u0438 \\u0437\\u0430\\u043a\\u0430\\u0437, \\u043d\\u043e\\u043c\\u0435\\u0440 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430:&amp;nbsp;&lt;span style=&quot;color: rgb(84, 84, 84); font-size: 12px; font-weight: 700;&quot;&gt;[order_id]&lt;\\/span&gt;&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0412 \\u0431\\u043b\\u0438\\u0436\\u0430\\u0439\\u0448\\u0435\\u0435 \\u0432\\u0440\\u0435\\u043c\\u044f \\u0441 \\u0412\\u0430\\u043c\\u0438 \\u0441\\u0432\\u044f\\u0436\\u0435\\u0442\\u0441\\u044f \\u043d\\u0430\\u0448 \\u043c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u0434\\u043b\\u044f \\u0443\\u0442\\u043e\\u0447\\u043d\\u0435\\u043d\\u0438\\u044f \\u0434\\u0435\\u0442\\u0430\\u043b\\u0435\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0415\\u0441\\u043b\\u0438 \\u0443 \\u0412\\u0430\\u0441 \\u0435\\u0441\\u0442\\u044c \\u0434\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441\\u044b -&amp;nbsp;&lt;a href=&quot;https:\\/\\/feelmart.octemplates.net\\/index.php?route=information\\/contact&quot; style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;\\u0441\\u0432\\u044f\\u0436\\u0438\\u0442\\u0435\\u0441\\u044c \\u0441 \\u043d\\u0430\\u043c\\u0438&lt;\\/a&gt;&lt;\\/p&gt;\",\"1\":\"&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;You have successfully placed your order! Our manager will contact you shortly to clarify the details of the order!&lt;\\/span&gt;&lt;br&gt;&lt;\\/p&gt;\"}}}',1),(7584,0,'theme_oct_feelmart','theme_oct_feelmart_image_sub_category_width','88',0),(7583,0,'theme_oct_feelmart','theme_oct_feelmart_js_code','',0),(7582,0,'theme_oct_feelmart','theme_oct_feelmart_css_code','',0),(7581,0,'theme_oct_feelmart','theme_oct_feelmart_sort_data','{\"sort\":[\"p.sort_order-ASC\",\"p.sort_order-DESC\",\"pd.name-ASC\",\"pd.name-DESC\",\"p.price-ASC\",\"p.price-DESC\",\"p.model-ASC\",\"p.model-DESC\",\"p.quantity-ASC\",\"p.quantity-DESC\",\"p.viewed-ASC\",\"p.viewed-DESC\",\"p.date_added-ASC\",\"p.date_added-DESC\",\"rating-ASC\",\"rating-DESC\"],\"deff_sort\":\"p.viewed-DESC\"}',1),(7580,0,'theme_oct_feelmart','theme_oct_feelmart_data_cat_atr_limit','5',0),(7579,0,'theme_oct_feelmart','theme_oct_feelmart_data_atributes','on',0),(7572,0,'theme_oct_feelmart','theme_oct_feelmart_lazyload_mobile','on',0),(7573,0,'theme_oct_feelmart','theme_oct_feelmart_lazyload_tablet','on',0),(7574,0,'theme_oct_feelmart','theme_oct_feelmart_lazyload_desktop','on',0),(7575,0,'theme_oct_feelmart','theme_oct_feelmart_lazyload_image','catalog/1lazy/lazy-image.svg',0),(7576,0,'theme_oct_feelmart','theme_oct_feelmart_product_limit','24',0),(7577,0,'theme_oct_feelmart','theme_oct_feelmart_product_description_length','250',0),(7578,0,'theme_oct_feelmart','theme_oct_feelmart_data_model','on',0),(7566,0,'theme_oct_feelmart','theme_oct_feelmart_directory','oct_feelmart',0),(7567,0,'theme_oct_feelmart','theme_oct_feelmart_status','on',0),(7568,0,'theme_oct_feelmart','theme_oct_feelmart_license','4D0A0-8DE0D-B08AB-6A6C5-CBF5D-490F9-2F868-9EAEA',0),(7569,0,'theme_oct_feelmart','theme_oct_feelmart_data','{\"minify\":\"on\",\"micro\":\"on\",\"open_graph\":\"on\",\"preload\":\"on\",\"header_product_views\":\"on\",\"header_links\":[{\"3\":{\"title\":\"\\u041f\\u0440\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\",\"link\":\"\\/about_us_ua\"},\"2\":{\"title\":\"\\u041e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435\",\"link\":\"\\/about_us_ru\"},\"1\":{\"title\":\"About Us\",\"link\":\"\\/about_us\"}},{\"3\":{\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"link\":\"\\/delivery_ua\"},\"2\":{\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"link\":\"\\/delivery_ru\"},\"1\":{\"title\":\"Delivery Information\",\"link\":\"\\/delivery\"}},{\"3\":{\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430\",\"link\":\"\\/payment_ua\"},\"2\":{\"title\":\"Privacy Policy\",\"link\":\"\\/payment_ru\"},\"1\":{\"title\":\"Privacy Policy\",\"link\":\"\\/payment\"}},{\"3\":{\"title\":\"\\u0423\\u0433\\u043e\\u0434\\u0430 \\u043a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0443\\u0432\\u0430\\u0447\\u0430\",\"link\":\"\\/user_agreement_ua\"},\"2\":{\"title\":\"Terms &amp;amp; Conditions\",\"link\":\"\\/user_agreement_ru\"},\"1\":{\"title\":\"Terms &amp;amp; Conditions\",\"link\":\"\\/user_agreement\"}}],\"footer_totop\":\"on\",\"footer_subscribe\":\"on\",\"footer_link_contact\":\"on\",\"footer_link_return\":\"on\",\"footer_link_sitemap\":\"on\",\"footer_link_specials\":\"on\",\"payments\":{\"privat24\":\"on\",\"visa\":\"on\",\"lp\":\"on\",\"mc\":\"on\"},\"contact_address\":{\"3\":\"\\u043c. \\u0422\\u0435\\u0440\\u043d\\u043e\\u043f\\u0456\\u043b\\u044c, \\u0432\\u0443\\u043b. \\u0421\\u0430\\u0445\\u0430\\u0440\\u043e\\u0432\\u0430, 3\",\"2\":\"\\u0433. \\u0422\\u0435\\u0440\\u043d\\u043e\\u043f\\u043e\\u043b\\u044c, \\u0443\\u043b. \\u0421\\u0430\\u0445\\u0430\\u0440\\u043e\\u0432\\u0430, 3\",\"1\":\"Ternopil, st. Sakharova, 3\"},\"contact_telephone\":\"+38 (067) 353-07-31\",\"contact_open\":{\"3\":\"\\u041f\\u043d-\\u043f\\u0442 - 09:00 - 18:00\\r\\n\\u0421\\u0431 - 10:00 - 16:00\\r\\n\\u041d\\u0435\\u0434 - \\u0432\\u0438\\u0445\\u0456\\u0434\\u043d\\u0438\\u0439\",\"2\":\"\\u041f\\u043d-\\u043f\\u0442 - 09:00 - 18:00\\r\\n\\u0421\\u0431 - 10:00 - 16:00\\r\\n\\u0412\\u0441 - \\u0432\\u044b\\u0445\\u043e\\u0434\\u043d\\u043e\\u0439\",\"1\":\"Mon - Fri - 09:00 - 18:00\\r\\nSut - 10:00 - 16:00\"},\"contact_map\":\"&lt;iframe src=&quot;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d20706.59048002288!2d25.6399567!3d49.553913099999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf1d4604ccf609dfa!2z0JPRg9GA0YLQvtCy0LjQuSDRgdC60LvQsNC0IFNJVC5PUkcuVUE!5e0!3m2!1suk!2sua!4v1631195582844!5m2!1suk!2sua&quot; width=&quot;600&quot; height=&quot;450&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; loading=&quot;lazy&quot;&gt;&lt;\\/iframe&gt;\",\"contact_email\":\"office@sit.com.ua\",\"contact_skype\":\"\",\"contact_whatsapp\":\"380673530731\",\"contact_viber\":\"380673530731\",\"contact_telegram\":\"DVA77_VITALII\",\"contact_messenger\":\"\",\"socials\":[{\"icone\":\"fab fa-facebook-f\",\"title\":\"Facebook\",\"link\":\"\"},{\"icone\":\"fab fa-twitter\",\"title\":\"Twitter\",\"link\":\"\"},{\"icone\":\"fab fa-instagram\",\"title\":\"Instagram\",\"link\":\"\"}],\"category_view_sort_oder\":\"on\",\"category_view_quantity\":\"on\",\"category_desc_position\":\"bottom\",\"category_view_subcats\":\"on\",\"category_subcat_products\":\"on\",\"category_cat_image\":\"on\",\"category_page\":\"on\",\"man_logo\":\"on\",\"contact_view_map\":\"on\",\"contact_view_html\":{\"3\":\"&lt;div class=&quot;fm-content-title&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0430 \\u0456\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0456\\u044f&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-offer-top&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;div class=&quot;fm-content-contact-subtitle&quot;&gt;\\u0423 \\u0432\\u0430\\u0441 \\u0437\\u0430\\u0433\\u0430\\u043b\\u044c\\u043d\\u0435 \\u043f\\u0438\\u0442\\u0430\\u043d\\u043d\\u044f?&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;\\u041d\\u0430\\u043f\\u0438\\u0448\\u0456\\u0442\\u044c \\u0430\\u0431\\u043e \\u0437\\u0430\\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u0443\\u0439\\u0442\\u0435 \\u043d\\u0430\\u043c - \\u0432\\u0441\\u0435 \\u0440\\u043e\\u0437\\u043f\\u043e\\u0432\\u0456\\u043c\\u043e.&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;E-mail:&amp;nbsp;&lt;a href=&quot;mailto:office@sit.com.ua&quot;&gt;office@sit.com.ua&lt;\\/a&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d:&amp;nbsp;&lt;a href=&quot;tel:+380673530731&quot; style=&quot;color: rgb(20, 98, 140); outline: 0px;&quot;&gt;+38 (067) 353-07-37&lt;\\/a&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;\\u0421\\u043b\\u0443\\u0436\\u0431\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0441\\u044c\\u043a\\u043e\\u0457 \\u043f\\u0456\\u0434\\u0442\\u0440\\u0438\\u043c\\u043a\\u0438 \\u043f\\u0440\\u0430\\u0446\\u044e\\u0454 \\u0437 8:00 \\u0434\\u043e 22:00, \\u0431\\u0435\\u0437 \\u0432\\u0438\\u0445\\u0456\\u0434\\u043d\\u0438\\u0445.&lt;\\/div&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-offer-bottom&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;div class=&quot;fm-content-contact-subtitle&quot;&gt;\\u0404 \\u0437\\u0430\\u0443\\u0432\\u0430\\u0436\\u0435\\u043d\\u043d\\u044f \\u0430\\u0431\\u043e \\u043f\\u0440\\u043e\\u043f\\u043e\\u0437\\u0438\\u0446\\u0456\\u0457 \\u044f\\u043a \\u043d\\u0430\\u043c \\u043f\\u0440\\u0430\\u0446\\u044e\\u0432\\u0430\\u0442\\u0438 \\u043a\\u0440\\u0430\\u0449\\u0435?&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;E-mail:&amp;nbsp;&lt;a href=&quot;mailto:office@sit.com.ua&quot;&gt;office@sit.com.ua&lt;\\/a&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-title&quot;&gt;\\u041d\\u0430\\u0448\\u0430 \\u0430\\u0434\\u0440\\u0435\\u0441\\u0430&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;\\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0430, \\u043c. \\u0422\\u0435\\u0440\\u043d\\u043e\\u043f\\u0456\\u043b\\u044c, \\u0432\\u0443\\u043b. \\u0410. \\u0421\\u0430\\u0445\\u0430\\u0440\\u043e\\u0432\\u0430, 3&lt;\\/div&gt;&lt;\\/div&gt;\",\"2\":\"&lt;div class=&quot;fm-content-title&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-offer-top&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;div class=&quot;fm-content-contact-subtitle&quot;&gt;\\u0423 \\u0432\\u0430\\u0441 \\u043e\\u0431\\u0449\\u0438\\u0439 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441?&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;\\u041d\\u0430\\u043f\\u0438\\u0448\\u0438\\u0442\\u0435 \\u0438\\u043b\\u0438 \\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u0438\\u0442\\u0435 \\u043d\\u0430\\u043c \\u2014 \\u0432\\u0441\\u0451 \\u0440\\u0430\\u0441\\u0441\\u043a\\u0430\\u0436\\u0435\\u043c.&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;E-mail:&amp;nbsp;&lt;a href=&quot;mailto:contact@store.com&quot;&gt;contact@store.com&lt;\\/a&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d:&amp;nbsp;&lt;a href=&quot;tel:08007771020&quot;&gt;0 (800) 777-10-20&lt;\\/a&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;\\u0421\\u043b\\u0443\\u0436\\u0431\\u0430 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0441\\u043a\\u043e\\u0439 \\u043f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0438 \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u0442 \\u0441 8:00 \\u0434\\u043e 22:00, \\u0431\\u0435\\u0437 \\u0432\\u044b\\u0445\\u043e\\u0434\\u043d\\u044b\\u0445.&lt;\\/div&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-offer-bottom&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;div class=&quot;fm-content-contact-subtitle&quot;&gt;\\u0415\\u0441\\u0442\\u044c \\u0437\\u0430\\u043c\\u0435\\u0447\\u0430\\u043d\\u0438\\u044f \\u0438\\u043b\\u0438 \\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u044f \\u043a\\u0430\\u043a \\u043d\\u0430\\u043c \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0442\\u044c \\u043b\\u0443\\u0447\\u0448\\u0435?&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;E-mail:&amp;nbsp;&lt;a href=&quot;mailto:contact@ultrastore.com&quot;&gt;contact@ultrastore.com&lt;\\/a&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-title&quot;&gt;\\u041d\\u0430\\u0448 \\u0430\\u0434\\u0440\\u0435\\u0441&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0433. \\u041e\\u0434\\u0435\\u0441\\u0441\\u0430, \\u0443\\u043b. \\u0414\\u0435\\u0440\\u0438\\u0431\\u0430\\u0441\\u043e\\u0432\\u043a\\u0430\\u044f 12, 3 \\u044d\\u0442\\u0430\\u0436, \\u043e\\u0444\\u0438\\u0441 315&lt;\\/div&gt;&lt;\\/div&gt;\",\"1\":\"&lt;div class=&quot;fm-content-title&quot; style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;div class=&quot;fm-content-title&quot;&gt;Contact Information&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-offer-top&quot;&gt;&lt;div class=&quot;fm-content-contact-subtitle&quot;&gt;Do you have a general question?&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;Write or call us - we will tell you everything.&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;E-mail:&amp;nbsp;&lt;a href=&quot;mailto:contact@store.com&quot; style=&quot;color: rgb(20, 98, 140); outline: 0px;&quot;&gt;contact@store.com&lt;\\/a&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;Phone:&amp;nbsp;&lt;a href=&quot;tel:08007771020&quot;&gt;0 (800) 777-10-20&lt;\\/a&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;Customer support service is open from 8:00 to 22:00, seven days a week.&lt;\\/div&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-offer-bottom&quot;&gt;&lt;div class=&quot;fm-content-contact-subtitle&quot;&gt;Any comments or suggestions on how we can do better?&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;E-mail:&amp;nbsp;&lt;a href=&quot;mailto:contact@ultrastore.com&quot;&gt;contact@ultrastore.com&lt;\\/a&gt;&lt;\\/div&gt;&lt;div class=&quot;fm-content-title&quot;&gt;Our address&lt;\\/div&gt;&lt;div class=&quot;fm-content-contact-text&quot;&gt;Ukraine, Odessa, st. Deribasovskaya 12, 3rd floor, office 315&lt;\\/div&gt;&lt;\\/div&gt;&lt;\\/div&gt;\"},\"product_model\":\"on\",\"product_dop_tab\":\"on\",\"product_dop_tab_title\":{\"3\":\"\\u0456\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0456\\u044f\",\"2\":\"\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f\",\"1\":\"Information\"},\"product_dop_tab_text\":{\"3\":\"&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u041c\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0454\\u043c\\u043e \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u043f\\u043e \\u0432\\u0441\\u0456\\u0439 \\u0442\\u0435\\u0440\\u0438\\u0442\\u043e\\u0440\\u0456\\u0457 \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0438.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0422\\u0435\\u0440\\u043c\\u0456\\u043d\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u0437\\u0430\\u043b\\u0435\\u0436\\u0430\\u0442\\u044c \\u0432\\u0456\\u0434 \\u043d\\u0430\\u044f\\u0432\\u043d\\u043e\\u0441\\u0442\\u0456 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0456\\u0432 \\u043d\\u0430 \\u0441\\u043a\\u043b\\u0430\\u0434\\u0456. \\u042f\\u043a\\u0449\\u043e \\u0432 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442 \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d\\u043d\\u044f \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u0432\\u0441\\u0456 \\u043e\\u0431\\u0440\\u0430\\u043d\\u0456 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0438 \\u0454 \\u0432 \\u043d\\u0430\\u044f\\u0432\\u043d\\u043e\\u0441\\u0442\\u0456, \\u0442\\u043e \\u043c\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043c\\u043e \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u043f\\u0440\\u043e\\u0442\\u044f\\u0433\\u043e\\u043c 1&amp;nbsp; \\u0442\\u0438\\u0436\\u043d\\u044f, \\u0432 \\u0437\\u0430\\u043b\\u0435\\u0436\\u043d\\u043e\\u0441\\u0442\\u0456 \\u0432\\u0456\\u0434 \\u0432\\u0456\\u0434\\u0434\\u0430\\u043b\\u0435\\u043d\\u043e\\u0441\\u0442\\u0456 \\u0412\\u0430\\u0448\\u043e\\u0433\\u043e \\u0440\\u0435\\u0433\\u0456\\u043e\\u043d\\u0443. \\u042f\\u043a\\u0449\\u043e \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0439 \\u0442\\u043e\\u0432\\u0430\\u0440 \\u0432\\u0456\\u0434\\u0441\\u0443\\u0442\\u043d\\u0456\\u0439 \\u043d\\u0430 \\u0441\\u043a\\u043b\\u0430\\u0434\\u0456, \\u0442\\u043e \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0438\\u0439 \\u0442\\u0435\\u0440\\u043c\\u0456\\u043d \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u043c\\u043e\\u0436\\u0435 \\u0441\\u043a\\u043b\\u0430\\u0441\\u0442\\u0438 2-3 \\u0442\\u0438\\u0436\\u043d\\u0456. \\u0410\\u043b\\u0435 \\u043c\\u0438 \\u043d\\u0430\\u043c\\u0430\\u0433\\u0430\\u0454\\u043c\\u043e\\u0441\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0442\\u0438 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430\\u043c \\u044f\\u043a\\u043e\\u043c\\u043e\\u0433\\u0430 \\u0448\\u0432\\u0438\\u0434\\u0448\\u0435, \\u0456 90% \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u044c \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0456\\u0432 \\u0432\\u0456\\u0434\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u044e\\u0442\\u044c\\u0441\\u044f \\u043f\\u0440\\u043e\\u0442\\u044f\\u0433\\u043e\\u043c \\u043f\\u0435\\u0440\\u0448\\u0438\\u0445 3 \\u0434\\u043d\\u0456\\u0432. \\u0423 \\u0440\\u0430\\u0437\\u0456, \\u044f\\u043a\\u0449\\u043e \\u0447\\u0430\\u0441\\u0442\\u0438\\u043d\\u0430 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0456\\u0432 \\u0437 \\u0412\\u0430\\u0448\\u043e\\u0433\\u043e \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u0447\\u0435\\u0440\\u0435\\u0437 3 \\u0442\\u0438\\u0436\\u043d\\u0456 \\u043d\\u0435 \\u043d\\u0430\\u0434\\u0456\\u0439\\u0448\\u043b\\u0430 \\u043d\\u0430 \\u0441\\u043a\\u043b\\u0430\\u0434, \\u043c\\u0438 \\u0432\\u0456\\u0434\\u043f\\u0440\\u0430\\u0432\\u0438\\u043c\\u043e \\u0432\\u0441\\u0456 \\u043d\\u0430\\u044f\\u0432\\u043d\\u0456 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0438, \\u0430 \\u043f\\u043e\\u0442\\u0456\\u043c \\u0437\\u0430 \\u043d\\u0430\\u0448 \\u0440\\u0430\\u0445\\u0443\\u043d\\u043e\\u043a \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043c \\u0412\\u0430\\u043c \\u0440\\u0435\\u0448\\u0442\\u0443 \\u0437\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431\\u0438 \\u043e\\u043f\\u043b\\u0430\\u0442\\u0438:&lt;\\/p&gt;&lt;ul style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;li&gt;\\u041e\\u043d\\u043b\\u0430\\u0439\\u043d-\\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043a\\u0430\\u0440\\u0442\\u043e\\u044e&lt;\\/li&gt;&lt;li&gt;\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u0432 \\u0442\\u0435\\u0440\\u043c\\u0456\\u043d\\u0430\\u043b\\u0456&lt;\\/li&gt;&lt;li&gt;\\u0411\\u0435\\u0437\\u0433\\u043e\\u0442\\u0456\\u0432\\u043a\\u043e\\u0432\\u0456\\u0439 \\u0440\\u043e\\u0437\\u0440\\u0430\\u0445\\u0443\\u043d\\u043e\\u043a&lt;\\/li&gt;&lt;\\/ul&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0406\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d - \\u0441\\u0430\\u0439\\u0442 \\u043c\\u0430\\u0454 \\u0430\\u0434\\u0440\\u0435\\u0441\\u0443 \\u0432 \\u043c\\u0435\\u0440\\u0435\\u0436\\u0456 \\u0406\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442. &lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0422\\u043e\\u0432\\u0430\\u0440 - \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0456\\u044f, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u0430 \\u200b\\u200b\\u0434\\u043e \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0443 \\u0432 \\u0456\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0456.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u041a\\u043b\\u0456\\u0454\\u043d\\u0442 - \\u0440\\u043e\\u0437\\u043c\\u0456\\u0441\\u0442\\u0438\\u043b\\u0430 \\u0417\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u0444\\u0456\\u0437\\u0438\\u0447\\u043d\\u0430 \\u0430\\u0431\\u043e \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u043d\\u0430 \\u043e\\u0441\\u043e\\u0431\\u0430. &lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0417\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f - \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d\\u0438\\u0439 \\u043d\\u0430\\u043b\\u0435\\u0436\\u043d\\u0438\\u043c \\u0447\\u0438\\u043d\\u043e\\u043c \\u0437\\u0430\\u043f\\u0438\\u0442 \\u041a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430 \\u043d\\u0430 \\u043a\\u0443\\u043f\\u0456\\u0432\\u043b\\u044e \\u0422\\u043e\\u0432\\u0430\\u0440\\u0443.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442\\u043d\\u0430 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0456\\u044f - \\u0442\\u0440\\u0435\\u0442\\u044f \\u043e\\u0441\\u043e\\u0431\\u0430, \\u0449\\u043e \\u043d\\u0430\\u0434\\u0430\\u0454 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438 \\u0437 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0422\\u043e\\u0432\\u0430\\u0440\\u0456\\u0432 \\u041a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430&lt;\\/p&gt;\",\"2\":\"&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u041c\\u044b \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c \\u0437\\u0430\\u043a\\u0430\\u0437\\u044b \\u043f\\u043e \\u0432\\u0441\\u0435\\u0439 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 \\u0438 \\u0421\\u041d\\u0413.&lt;\\/span&gt;&lt;\\/div&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u0421\\u0440\\u043e\\u043a\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u0437\\u0430\\u0432\\u0438\\u0441\\u044f\\u0442 \\u043e\\u0442 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u044f \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u043d\\u0430 \\u0441\\u043a\\u043b\\u0430\\u0434\\u0435. \\u0415\\u0441\\u043b\\u0438 \\u0432 \\u043c\\u043e\\u043c\\u0435\\u043d\\u0442 \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d\\u0438\\u044f \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u0432\\u0441\\u0435 \\u0432\\u044b\\u0431\\u0440\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b \\u0435\\u0441\\u0442\\u044c \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438, \\u0442\\u043e \\u043c\\u044b \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043c \\u0437\\u0430\\u043a\\u0430\\u0437 \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 1 \\u2013 2 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044c, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0443\\u0434\\u0430\\u043b\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0412\\u0430\\u0448\\u0435\\u0433\\u043e \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d\\u0430. \\u0415\\u0441\\u043b\\u0438 \\u0437\\u0430\\u043a\\u0430\\u0437\\u044b\\u0432\\u0430\\u0435\\u043c\\u044b\\u0439 \\u0442\\u043e\\u0432\\u0430\\u0440 \\u043e\\u0442\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043d\\u0430 \\u0441\\u043a\\u043b\\u0430\\u0434\\u0435, \\u0442\\u043e \\u043c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0441\\u0440\\u043e\\u043a \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u044c 8 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044c. \\u041d\\u043e \\u043c\\u044b \\u0441\\u0442\\u0430\\u0440\\u0430\\u0435\\u043c\\u0441\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437\\u044b \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430\\u043c \\u043a\\u0430\\u043a \\u043c\\u043e\\u0436\\u043d\\u043e \\u0431\\u044b\\u0441\\u0442\\u0440\\u0435\\u0435, \\u0438 90% \\u0437\\u0430\\u043a\\u0430\\u0437\\u043e\\u0432 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043b\\u044f\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 \\u043f\\u0435\\u0440\\u0432\\u044b\\u0445 3 \\u043d\\u0435\\u0434\\u0435\\u043b\\u044c. \\u0412 \\u0441\\u043b\\u0443\\u0447\\u0430\\u0435, \\u0435\\u0441\\u043b\\u0438 \\u0447\\u0430\\u0441\\u0442\\u044c \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438\\u0437 \\u0412\\u0430\\u0448\\u0435\\u0433\\u043e \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430 \\u0447\\u0435\\u0440\\u0435\\u0437 3 \\u043d\\u0435\\u0434\\u0435\\u043b\\u0438 \\u043d\\u0435 \\u043f\\u043e\\u0441\\u0442\\u0443\\u043f\\u0438\\u043b\\u0430 \\u043d\\u0430 \\u0441\\u043a\\u043b\\u0430\\u0434, \\u043c\\u044b \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u0438\\u043c \\u0432\\u0441\\u0435 \\u0438\\u043c\\u0435\\u044e\\u0449\\u0438\\u0435\\u0441\\u044f \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b, \\u0430 \\u0437\\u0430\\u0442\\u0435\\u043c \\u0437\\u0430 \\u043d\\u0430\\u0448 \\u0441\\u0447\\u0435\\u0442 \\u0434\\u043e\\u0448\\u043b\\u0435\\u043c \\u0412\\u0430\\u043c \\u043e\\u0441\\u0442\\u0430\\u0432\\u0448\\u0443\\u044e\\u0441\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430.&lt;\\/span&gt;&lt;\\/div&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;b&gt;\\u0421\\u043f\\u043e\\u0441\\u043e\\u0431\\u044b \\u043e\\u043f\\u043b\\u0430\\u0442\\u044b:&lt;\\/b&gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;ul style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u043f\\u043e\\u043b\\u0443\\u0447\\u0435\\u043d\\u0438\\u0438&lt;\\/span&gt;&lt;\\/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u041e\\u043d\\u043b\\u0430\\u0439\\u043d-\\u043e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043a\\u0430\\u0440\\u0442\\u043e\\u0439&lt;\\/span&gt;&lt;\\/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u0432 \\u0442\\u0435\\u0440\\u043c\\u0438\\u043d\\u0430\\u043b\\u0435&lt;\\/span&gt;&lt;\\/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u0411\\u0435\\u0437\\u043d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0439 \\u0440\\u0430\\u0441\\u0447\\u0435\\u0442&lt;\\/span&gt;&lt;\\/li&gt;&lt;\\/ul&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u2013 \\u0441\\u0430\\u0439\\u0442 \\u0438\\u043c\\u0435\\u044e\\u0449\\u0438\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441 \\u0432 \\u0441\\u0435\\u0442\\u0438 \\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442. \\u0422\\u043e\\u0432\\u0430\\u0440 \\u2013 \\u043f\\u0440\\u043e\\u0434\\u0443\\u043a\\u0446\\u0438\\u044f, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u0435\\u043d\\u043d\\u0430\\u044f \\u043a \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0435 \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.&lt;\\/span&gt;&lt;\\/div&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u041a\\u043b\\u0438\\u0435\\u043d\\u0442 \\u2013 \\u0440\\u0430\\u0437\\u043c\\u0435\\u0441\\u0442\\u0438\\u0432\\u0448\\u0435\\u0435 \\u0417\\u0430\\u043a\\u0430\\u0437 \\u0444\\u0438\\u0437\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435 \\u0438\\u043b\\u0438 \\u044e\\u0440\\u0438\\u0434\\u0438\\u0447\\u0435\\u0441\\u043a\\u043e\\u0435 \\u043b\\u0438\\u0446\\u043e. \\u0417\\u0430\\u043a\\u0430\\u0437 \\u2013 \\u043e\\u0444\\u043e\\u0440\\u043c\\u043b\\u0435\\u043d\\u043d\\u044b\\u0439 \\u0434\\u043e\\u043b\\u0436\\u043d\\u044b\\u043c \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u043c \\u0437\\u0430\\u043f\\u0440\\u043e\\u0441 \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430 \\u043d\\u0430 \\u043f\\u043e\\u043a\\u0443\\u043f\\u043a\\u0443 \\u0422\\u043e\\u0432\\u0430\\u0440\\u0430.&lt;\\/span&gt;&lt;\\/div&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;br&gt;&lt;\\/span&gt;&lt;\\/div&gt;&lt;div style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;\\u0422\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442\\u043d\\u0430\\u044f \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u2013 \\u0442\\u0440\\u0435\\u0442\\u044c\\u0435 \\u043b\\u0438\\u0446\\u043e, \\u043e\\u043a\\u0430\\u0437\\u044b\\u0432\\u0430\\u044e\\u0449\\u0435\\u0435 \\u0443\\u0441\\u043b\\u0443\\u0433\\u0438 \\u043f\\u043e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435 \\u0422\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u041a\\u043b\\u0438\\u0435\\u043d\\u0442\\u0430&lt;\\/span&gt;&lt;\\/div&gt;\",\"1\":\"&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;We deliver orders throughout Russia and the CIS.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;Terms of delivery of the order depend on the availability of goods in stock. If at the time of ordering all the selected products are in stock, we will deliver the order within 1 to 2 weeks, depending on the distance from your region. If the ordered goods are not in stock, the maximum delivery time for the order may be 8 weeks. But we try to deliver orders to customers as quickly as possible, and 90% of customer orders are shipped within the first 3 weeks. If a part of the goods from your order has not arrived at the warehouse after 3 weeks, we will send all the available goods, and then at our expense we will send you the rest of the order.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;br&gt;&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;Payment Methods:&lt;\\/p&gt;&lt;ul style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;li&gt;Payment upon receipt&lt;\\/li&gt;&lt;li&gt;Online payment by card&lt;\\/li&gt;&lt;li&gt;Payment in the terminal&lt;\\/li&gt;&lt;li&gt;Cashless payments&lt;\\/li&gt;&lt;\\/ul&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;Online store - a site with an Internet address. Product - products presented for sale in the online store.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;The Client is the physical or legal person who placed the Order. Order - a properly executed Customer request for the purchase of goods.&lt;\\/p&gt;&lt;p style=&quot;color: rgb(0, 0, 0);&quot;&gt;Transport company - a third party providing services for the delivery of customer goods&lt;\\/p&gt;\"},\"product_js_button\":\"\",\"product_advantage\":\"on\",\"product_advantages\":[{\"icone\":\"fas fa-truck\",\"information_id\":\"\",\"3\":{\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"link\":\"\\/delivery_ua\",\"text\":\"\\u043f\\u043e \\u0423\\u043a\\u0440\\u0430\\u0457\\u043d\\u0456:\\r\\n\\u041a\\u0443\\u0440\'\\u0454\\u0440\\u043e\\u043c Meest Express  \\r\\n\\u0417\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u0432\\u0456\\u0434 2000 \\u0433\\u0440\\u043d - \\u0411\\u0415\\u0417\\u041a\\u041e\\u0428\\u0422\\u041e\\u0412\\u041d\\u041e\\r\\n\\u0417\\u0430\\u043c\\u043e\\u0432\\u043b\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e 2000 \\u0433\\u0440\\u043d - 150 \\u0433\\u0440\\u043d\"},\"2\":{\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"link\":\"\\/delivery_ru\",\"text\":\"\\u043f\\u043e \\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0435:\\r\\n\\u041a\\u0443\\u0440\\u044c\\u0435\\u0440\\u043e\\u043c Meest Express  \\r\\n\\u0417\\u0430\\u043a\\u0430\\u0437 \\u043e\\u0442 2000 \\u0433\\u0440\\u043d - \\u0411\\u0415\\u0421\\u041f\\u041b\\u0410\\u0422\\u041d\\u041e\\r\\n\\u0417\\u0430\\u043a\\u0430\\u0437 \\u0434\\u043e 2000 \\u0433\\u0440\\u043d - 150 \\u0433\\u0440\\u043d\"},\"1\":{\"title\":\"Delivery Information\",\"link\":\"\\/delivery-en\",\"text\":\"Same day when ordering before 16:00\"},\"popup\":\"on\"},{\"icone\":\"fab fa-cc-visa\",\"information_id\":\"\",\"3\":{\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430\",\"link\":\"\\/payment_ua\",\"text\":\"\\u041f\\u0440\\u0438\\u0439\\u043c\\u0430\\u0454\\u043c\\u043e \\u043e\\u043f\\u043b\\u0430\\u0442\\u0443 online\"},\"2\":{\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430\",\"link\":\"\\/payment_ru\",\"text\":\"100% \\u0433\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u044f \\u043d\\u0430 \\u0432\\u0441\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u044b, \\r\\n\\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u044c\\u0442\\u0435 \\u0441\\u0435\\u0440\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u044b \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0430\"},\"1\":{\"title\":\"Payment\",\"link\":\"\\/privacy-en\",\"text\":\"We accept payment online\"}},{\"icone\":\"fas fa-gift\",\"information_id\":\"\",\"3\":{\"title\":\"\\u041d\\u0430\\u043a\\u043e\\u043f\\u0438\\u0447\\u0443\\u0432\\u0430\\u043b\\u044c\\u043d\\u0456 \\u0437\\u043d\\u0438\\u0436\\u043a\\u0438\",\"link\":\"\\/ discount-ua\",\"text\":\"\\u0414\\u043e\\u0434\\u0430\\u0442\\u043a\\u043e\\u0432\\u0456 \\u0437\\u043d\\u0438\\u0436\\u043a\\u0438 \\u043f\\u043e\\u0441\\u0442\\u0456\\u0439\\u043d\\u0438\\u043c \\u0442\\u0430 \\u043a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0438\\u043c \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430\\u043c\"},\"2\":{\"title\":\"\\u041d\\u0430\\u043a\\u043e\\u043f\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438\",\"link\":\"\\/discount\",\"text\":\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u0430 -10% \\u043d\\u0430 \\u0434\\u0435\\u043d\\u044c \\u0440\\u043e\\u0436\\u0434\\u0435\\u043d\\u0438\\u044f.\\r\\n\\u0417\\u0430 \\u043a\\u0430\\u0436\\u0434\\u0443\\u044e 1000 \\u0433\\u0440\\u043d. - 100 \\u0431\\u0430\\u043b\\u043b\\u043e\\u0432\"},\"1\":{\"title\":\"Cumulative discounts\",\"link\":\"\\/ discount-en\",\"text\":\"Discount -10% for birthday.\\r\\nFor every 1000 UAH - 100 points\"},\"popup\":\"on\"}],\"mobile_sidebar_position\":\"top\",\"mobile_links\":[{\"3\":{\"title\":\"\\u041f\\u0440\\u043e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\",\"link\":\"\\/about_us_ua\"},\"2\":{\"title\":\"\\u041e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435\",\"link\":\"\\/about_us_ru\"},\"1\":{\"title\":\"About Us\",\"link\":\"\\/about_us\"}},{\"3\":{\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"link\":\"\\/delivery_ua\"},\"2\":{\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430\",\"link\":\"\\/delivery_ru\"},\"1\":{\"title\":\"Delivery Information\",\"link\":\"\\/delivery\"}},{\"3\":{\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430\",\"link\":\"\\/payment_ua\"},\"2\":{\"title\":\"Privacy Policy\",\"link\":\"\\/payment_ru\"},\"1\":{\"title\":\"Privacy Policy\",\"link\":\"\\/payment\"}},{\"3\":{\"title\":\"\\u0423\\u0433\\u043e\\u0434\\u0430 \\u043a\\u043e\\u0440\\u0438\\u0441\\u0442\\u0443\\u0432\\u0430\\u0447\\u0430\",\"link\":\"\\/user_agreement_ua\"},\"2\":{\"title\":\"Terms &amp;amp; Conditions\",\"link\":\"\\/user_agreement_ru\"},\"1\":{\"title\":\"Terms &amp;amp; Conditions\",\"link\":\"\\/user_agreement\"}}],\"mobile_menu\":{\"time\":\"on\",\"currency\":\"on\",\"address\":\"on\",\"languages\":\"on\",\"phones\":\"on\",\"telegram\":\"on\",\"viber\":\"on\",\"whatsapp\":\"on\",\"messenger\":\"on\"}}',1),(3046,0,'oct_blogsettings','oct_blogsettings_status','1',0),(3047,0,'oct_blogsettings','oct_blogsettings_search','1',0),(3048,0,'oct_blogsettings','oct_blogsettings_count_articles','0',0),(3049,0,'oct_blogsettings','oct_blogsettings_data','{\"show_main_image\":1,\"articles_width\":\"400\",\"articles_height\":\"300\",\"article_width\":\"1200\",\"article_height\":\"900\",\"article_dop_width\":\"160\",\"article_dop_height\":\"120\",\"dop_article_width\":\"400\",\"dop_article_height\":\"300\",\"product_width\":\"192\",\"product_height\":\"200\",\"limit\":\"24\",\"description_length\":130,\"comments\":\"on\",\"comments_moder\":1}',1),(3135,0,'oct_stickers','oct_stickers_status','on',0),(3136,0,'oct_stickers','oct_stickers_data','{\"stickers\":{\"new\":{\"auto\":\"on\",\"count\":\"10\",\"sort\":\"1\",\"text_color\":\"rgb(255, 255, 255)\",\"fon_color\":\"rgb(14, 144, 23)\",\"title\":{\"3\":\"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0430\",\"2\":\"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0430\",\"1\":\"New\"}},\"bestseller\":{\"status\":\"on\",\"auto\":\"on\",\"count\":\"10\",\"sort\":\"2\",\"text_color\":\"rgb(255, 255, 255)\",\"fon_color\":\"rgb(235, 80, 20)\",\"title\":{\"3\":\"\\u0425\\u0456\\u0442 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0443\",\"2\":\"\\u0425\\u0438\\u0442 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\",\"1\":\"Bestseller\"}},\"popular\":{\"status\":\"on\",\"auto\":\"on\",\"count\":\"10\",\"sort\":\"3\",\"text_color\":\"rgb(255, 255, 255)\",\"fon_color\":\"rgb(51, 200, 99)\",\"title\":{\"3\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u0438\\u0439\",\"2\":\"\\u041f\\u043e\\u043f\\u0443\\u043b\\u044f\\u0440\\u043d\\u044b\\u0439\",\"1\":\"Popular\"}},\"sold\":{\"status\":\"on\",\"auto\":\"on\",\"count\":\"0\",\"sort\":\"5\",\"text_color\":\"rgb(255, 255, 255)\",\"fon_color\":\"rgb(0, 0, 0)\",\"title\":{\"3\":\"\\u041f\\u0440\\u043e\\u0434\\u0430\\u043d\\u043e\",\"2\":\"\\u041d\\u0435\\u0442 \\u0432 \\u043d\\u0430\\u043b\\u0438\\u0447\\u0438\\u0438\",\"1\":\"Sold\"}},\"ends\":{\"status\":\"on\",\"auto\":\"on\",\"count\":\"5\",\"sort\":\"6\",\"text_color\":\"rgb(255, 255, 255)\",\"fon_color\":\"rgb(230, 12, 12)\",\"title\":{\"3\":\"\\u0417\\u0430\\u043a\\u0456\\u043d\\u0447\\u0443\\u0454\\u0442\\u044c\\u0441\\u044f\",\"2\":\"\\u0417\\u0430\\u043a\\u0430\\u043d\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442\\u0441\\u044f\",\"1\":\"Ends\"}},\"special\":{\"status\":\"on\",\"auto\":\"on\",\"sort\":\"4\",\"text_color\":\"rgb(255, 255, 255)\",\"fon_color\":\"rgb(255, 0, 96)\",\"persent\":\"on\",\"view_title\":\"on\",\"title\":{\"3\":\"\\u0410\\u043a\\u0446\\u0456\\u044f\",\"2\":\"\\u0410\\u043a\\u0446\\u0438\\u044f\",\"1\":\"Special\"}},\"featured\":{\"status\":\"on\",\"sort\":\"7\",\"text_color\":\"rgb(255, 255, 255)\",\"fon_color\":\"rgb(21, 170, 102)\",\"title\":{\"3\":\"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0454\\u043c\\u043e\",\"2\":\"\\u0420\\u0435\\u043a\\u043e\\u043c\\u0435\\u043d\\u0434\\u0443\\u0435\\u043c\",\"1\":\"Recommended\"}}},\"customer\":{\"novinka-2021\":{\"status\":\"on\",\"sort\":\"\",\"text_color\":\"rgb(255, 255, 255)\",\"fon_color\":\"rgb(137, 50, 204)\",\"title\":{\"3\":\"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0430 2021\",\"2\":\"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0430 2021\",\"1\":\"New 2021\"}}}}',1),(3072,0,'module_oct_blogcategory','module_oct_blogcategory_status','on',0),(3332,0,'module_information','module_information_status','1',0),(3333,0,'module_filter','module_filter_status','1',0),(7505,0,'config','config_error_display','1',0),(7506,0,'config','config_error_log','1',0),(7507,0,'config','config_error_filename','error.log',0),(7501,0,'config','config_encryption','7xpgv9qbZoiBHrHy7qTVkdAfIR3PbIAAfqCbEk5ew8VeBkwzXtSbRtGEe7UxXkVAYYQ1pNdGSbJTjRYwAUe1yQSuYioYS0kUfjyE0qaH0hKc0ozNeBwz7ztC1UQXsrl7JApTmvmiMuNYRx3RnXnxM9TWPf3e54WV3LpfuqEE937Eao6mapiVIjdk1eAqmeuk1YnvepuZViZyEoHaB9fmflVQS1lOLT39k7cvsVSmgnh2aCRXmtobQce87pKXScjg5563rO23TZfNWQAzbVW8G9syQoZsQVHCN19PCbggCs0G9lDNRKEHc9L9CBD4hn9otNZpAb0ocjlfreaQ1ZTbrhGBppKEa7AZUMRv4hI4gUU6Cm7MpGudjHxcrLjMW6jRc9i0z9MfeZWHAjmtZMqhXgiIwZ9SdeAFILLg7GCovbY8XLUouPRpHzplC8T4kFpKWEq9XAJqs2NRAAZNawKQHos2HWz7Uyara4fTZTt3Ll16XXd4G5LV4wm8xaiSMGx4L2YV8nd2aGPr3YOG04RwG6IiLfzprl6JkiRo01CI2r3FdKNK92nxQZRrbpEUTWEzxdpjMoAvM8AKcMsx8CzTlt2yCiArg0b8HxM5VoqWpJM1v1TeLqLa0K3TvV5Ju1DMVsQO5SrBnikeT83WbzUkMZlWn05rxrTx5NpvnRT4hVuK4ul3NT9v7T1RrwlkHN7BWADBMiEZ24u8Y7hoZeAJFT8Fma87PSzFlJ8huf1BtcXid8OeMP5cLuZ0Xj39TmcjrMlria0xvu1UuLRSdzTF67kAbuBr6SpamZdPEREdwG9sV0ZWgXrrevUehEnmmuVmPmdvQzbsJJRM02AyDWNDvHt3ujFUFDRE7TRIzf4xOHnZMbni71ZsH7ehdysGDlByctt64HDEAO0t6vlqHtEBB8djK4tNUHpHzLmCnTsZ73KagjMflxQQ8lZKLyOwSRqw5qgTJz6yC62EMpe8o0GEOYjnzFdfNu1JkccSiu0bekeAuY0RGDiXjmqBmqWMnO5Y',0),(7500,0,'config','config_shared','0',0),(7499,0,'config','config_password','1',0),(7497,0,'config','config_compression','0',0),(7498,0,'config','config_secure','1',0),(4996,0,'oct_policy','oct_policy_status','on',0),(7570,0,'theme_oct_feelmart','theme_oct_feelmart_webp','on',0),(7571,0,'theme_oct_feelmart','theme_oct_feelmart_data_colors','{\"logo_width\":\"on\",\"compare\":\"on\",\"wishlist\":\"on\",\"main_color\":\"rgb(24, 164, 225)\",\"fon_color\":\"rgb(242, 243, 245)\",\"main_link_color\":\"rgb(24, 164, 225)\",\"modal_fon_title_color\":\"rgb(24, 164, 225)\",\"modal_text_title_color\":\"rgb(238, 242, 245)\",\"modal_fon_icon_color\":\"rgb(238, 242, 245)\",\"top_fon_color\":\"rgb(255, 255, 255)\",\"search_bg\":\"rgb(28, 100, 187)\",\"top_link_color\":\"rgb(55, 57, 65)\",\"top_link_color_hover\":\"rgb(24, 164, 225)\",\"menu_fon_color\":\"rgb(3, 83, 180)\",\"menu_fon_cat_color\":\"rgb(28, 100, 187)\",\"menu_fon_cat_hover_color\":\"rgb(65, 132, 213)\",\"menu_fon_cat_text_color\":\"rgb(255, 255, 255)\",\"menu_fon_cat_elements_color\":\"rgb(255, 255, 255)\",\"menu_fon_cat_link_color\":\"rgb(55, 57, 65)\",\"footer_fon_color\":\"rgb(32, 35, 52)\",\"footer_text_color\":\"rgb(238, 242, 245)\",\"footer_link_color\":\"rgb(166, 166, 166)\",\"footer_link_hover_color\":\"rgb(24, 164, 225)\",\"category_module_fon_color\":\"rgb(251, 251, 251)\",\"category_module_link_color\":\"rgb(102, 102, 102)\",\"category_module_link_hover_color\":\"rgb(24, 164, 225)\",\"mobile_fon_top_color\":\"rgb(238, 242, 245)\",\"mobile_fon_icon_c_color\":\"rgb(3, 83, 180)\"}',1),(6631,0,'d_export_import','d_export_import_setting','{\"limit\":\"100\",\"limit_step\":\"50\",\"truncate_table\":\"1\"}',1),(7102,0,'related_options','related_options','{\"update_quantity\":\"1\",\"update_options\":\"1\",\"subtract_stock\":\"0\",\"required\":\"0\",\"ro_use_variants\":\"1\",\"related_options_version\":\"3.1.1\",\"allow_zero_select\":\"1\",\"show_clear_options\":\"0\",\"hide_inaccessible\":\"1\",\"select_first\":\"1\",\"step_by_step\":\"1\",\"spec_model\":\"1\",\"spec_model_delimiter_product\":\"\",\"spec_model_delimiter_ro\":\"\",\"spec_price\":\"1\"}',1),(6699,0,'module_related_options','module_related_options_status','1',0),(7433,0,'config','config_image','catalog/Screenshot_logo.jpg',0),(7432,0,'config','config_fax','',0),(7431,0,'config','config_telephone','+380673530731',0),(7430,0,'config','config_email','office@sit.com.ua',0),(7429,0,'config','config_geocode','https://www.google.com/search?newwindow=1&amp;tbs=lf:1,lf_ui:10&amp;tbm=lcl&amp;sxsrf=AOaemvJibUf8iMPUQd6wRRULflHlodqziQ:1631024491271&amp;q=sit&amp;rflfq=1&amp;num=10&amp;ved=2ahUKEwjp2K_bh-3yAhVBUxoKHRYgCl0QtgN6BAgIEAQ#rlfi=hd:;si:17425658741216288250,l,CgNzaXRaBSIDc2l0kgEeZnVybml0dXJlX2FjY2Vzc29yaWVzX3N1cHBsaWVyqgELEAEqByIDc2l0KCI;mv:[[49.5578396,25.647923199999997],[49.546103099999996,25.5877798]]',0),(7426,0,'config','config_name','SIT',0),(7427,0,'config','config_owner','Віталій',0),(7428,0,'config','config_address','Тернопіль, вул. Сахарова, 3',0),(7422,0,'config','config_meta_description','SIT Офіційний інтернет - магазин крісел, офісних меблів, дизайн та оформлення інтер\'єру для дому та офісу',0),(7423,0,'config','config_meta_keyword','',0),(7424,0,'config','config_theme','oct_feelmart',0),(7425,0,'config','config_layout_id','4',0),(7421,0,'config','config_meta_title','SIT Офіційний інтернет - магазин крісел, офісних меблів, дизайн та оформлення інтер\'єру для дому та офісу',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_shipping_courier` WRITE;
/*!40000 ALTER TABLE `oc_shipping_courier` DISABLE KEYS */;
INSERT INTO `oc_shipping_courier` VALUES (1,'dhl','DHL'),(2,'fedex','Fedex'),(3,'ups','UPS'),(4,'royal-mail','Royal Mail'),(5,'usps','United States Postal Service'),(6,'auspost','Australia Post');
/*!40000 ALTER TABLE `oc_shipping_courier` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_statistics` WRITE;
/*!40000 ALTER TABLE `oc_statistics` DISABLE KEYS */;
INSERT INTO `oc_statistics` VALUES (1,'order_sale',3710.0000),(2,'order_processing',0.0000),(3,'order_complete',0.0000),(4,'order_other',0.0000),(5,'returns',0.0000),(6,'product',0.0000),(7,'review',0.0000);
/*!40000 ALTER TABLE `oc_statistics` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'In Stock'),(8,1,'Pre-Order'),(5,1,'Out Of Stock'),(7,2,'In Stock'),(8,2,'Pre-Order'),(5,2,'Out Of Stock'),(6,1,'14-24 Days'),(7,3,'In Stock'),(8,3,'Pre-Order'),(5,3,'Out Of Stock'),(6,3,'під замовлення 14 днів'),(6,2,'под заказ 14 дней');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_theme` WRITE;
/*!40000 ALTER TABLE `oc_theme` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_theme` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_translation` WRITE;
/*!40000 ALTER TABLE `oc_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_translation` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'dihtyaruk.v','97664a9cb37d5f5cfa7b3ee99fe992d707507a68','9DWNvqoOE','В','В','dihtyaruk.v@gmail.com','','','95.46.140.39',1,'2021-09-07 17:10:18');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/analytics\\/oct_analytics\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/oct_banner_plus\",\"extension\\/module\\/oct_benefits\",\"extension\\/module\\/oct_blogarticle\",\"extension\\/module\\/oct_blogcategory\",\"extension\\/module\\/oct_category_wall\",\"extension\\/module\\/oct_product_review\",\"extension\\/module\\/oct_product_views\",\"extension\\/module\\/oct_products_from_category\",\"extension\\/module\\/oct_slideshow_plus\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/theme\\/oct_feelmart\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"octemplates\\/blog\\/oct_blogarticle\",\"octemplates\\/blog\\/oct_blogcategory\",\"octemplates\\/blog\\/oct_blogcomments\",\"octemplates\\/blog\\/oct_blogsettings\",\"octemplates\\/design\\/oct_banner_plus\",\"octemplates\\/design\\/oct_slideshow_plus\",\"octemplates\\/module\\/oct_404_page\",\"octemplates\\/module\\/oct_information_bar\",\"octemplates\\/module\\/oct_megamenu\",\"octemplates\\/module\\/oct_policy\",\"octemplates\\/module\\/oct_popup_call_phone\",\"octemplates\\/module\\/oct_popup_found_cheaper\",\"octemplates\\/module\\/oct_popup_purchase\",\"octemplates\\/module\\/oct_popup_view\",\"octemplates\\/module\\/oct_product_tabs\",\"octemplates\\/module\\/oct_product_tabs_settings\",\"octemplates\\/module\\/oct_sreview_reviews\",\"octemplates\\/module\\/oct_sreview_setting\",\"octemplates\\/module\\/oct_sreview_subject\",\"octemplates\\/module\\/oct_subscribe\",\"octemplates\\/stickers\\/oct_stickers_settings\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/related_options\",\"extension\\/module\\/related_options\",\"extension\\/payment\\/liqpay\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/analytics\\/oct_analytics\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/export_import\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/oct_banner_plus\",\"extension\\/module\\/oct_benefits\",\"extension\\/module\\/oct_blogarticle\",\"extension\\/module\\/oct_blogcategory\",\"extension\\/module\\/oct_category_wall\",\"extension\\/module\\/oct_product_review\",\"extension\\/module\\/oct_product_views\",\"extension\\/module\\/oct_products_from_category\",\"extension\\/module\\/oct_slideshow_plus\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/theme\\/oct_feelmart\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"octemplates\\/blog\\/oct_blogarticle\",\"octemplates\\/blog\\/oct_blogcategory\",\"octemplates\\/blog\\/oct_blogcomments\",\"octemplates\\/blog\\/oct_blogsettings\",\"octemplates\\/design\\/oct_banner_plus\",\"octemplates\\/design\\/oct_slideshow_plus\",\"octemplates\\/module\\/oct_404_page\",\"octemplates\\/module\\/oct_information_bar\",\"octemplates\\/module\\/oct_megamenu\",\"octemplates\\/module\\/oct_policy\",\"octemplates\\/module\\/oct_popup_call_phone\",\"octemplates\\/module\\/oct_popup_found_cheaper\",\"octemplates\\/module\\/oct_popup_purchase\",\"octemplates\\/module\\/oct_popup_view\",\"octemplates\\/module\\/oct_product_tabs\",\"octemplates\\/module\\/oct_product_tabs_settings\",\"octemplates\\/module\\/oct_sreview_reviews\",\"octemplates\\/module\\/oct_sreview_setting\",\"octemplates\\/module\\/oct_sreview_subject\",\"octemplates\\/module\\/oct_subscribe\",\"octemplates\\/stickers\\/oct_stickers_settings\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/related_options\",\"extension\\/module\\/related_options\",\"extension\\/payment\\/liqpay\"]}'),(10,'Demonstration','{\"access\":[\"catalog\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\",\"event\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\",\"extension\\/advertise\",\"extension\\/advertise\\/google\",\"extension\\/analytics\",\"extension\\/analytics\\/google\",\"extension\\/analytics\\/oct_analytics\",\"extension\\/captcha\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/d_export_import\",\"extension\\/d_export_import\\/excel\",\"extension\\/d_export_import\\/setting\",\"extension\\/d_shopunity\",\"extension\\/d_shopunity\\/d_validator\",\"extension\\/dashboard\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_export_import\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/oct_banner_plus\",\"extension\\/module\\/oct_benefits\",\"extension\\/module\\/oct_blogarticle\",\"extension\\/module\\/oct_blogcategory\",\"extension\\/module\\/oct_category_wall\",\"extension\\/module\\/oct_product_review\",\"extension\\/module\\/oct_product_views\",\"extension\\/module\\/oct_products_from_category\",\"extension\\/module\\/oct_slideshow_plus\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\",\"extension\\/theme\\/default\",\"extension\\/theme\\/oct_feelmart\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"octemplates\",\"octemplates\\/blog\",\"octemplates\\/blog\\/oct_blogarticle\",\"octemplates\\/blog\\/oct_blogcategory\",\"octemplates\\/blog\\/oct_blogcomments\",\"octemplates\\/blog\\/oct_blogsettings\",\"octemplates\\/design\",\"octemplates\\/design\\/oct_banner_plus\",\"octemplates\\/design\\/oct_slideshow_plus\",\"octemplates\\/module\",\"octemplates\\/module\\/oct_404_page\",\"octemplates\\/module\\/oct_information_bar\",\"octemplates\\/module\\/oct_megamenu\",\"octemplates\\/module\\/oct_policy\",\"octemplates\\/module\\/oct_popup_call_phone\",\"octemplates\\/module\\/oct_popup_found_cheaper\",\"octemplates\\/module\\/oct_popup_purchase\",\"octemplates\\/module\\/oct_popup_view\",\"octemplates\\/module\\/oct_product_tabs\",\"octemplates\\/module\\/oct_product_tabs_settings\",\"octemplates\\/module\\/oct_sreview_reviews\",\"octemplates\\/module\\/oct_sreview_setting\",\"octemplates\\/module\\/oct_sreview_subject\",\"octemplates\\/module\\/oct_subscribe\",\"octemplates\\/stickers\",\"octemplates\\/stickers\\/oct_stickers_settings\",\"report\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\",\"setting\\/setting\",\"setting\\/store\",\"startup\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"error\",\"event\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\",\"extension\\/advertise\",\"extension\\/advertise\\/google\",\"extension\\/analytics\",\"extension\\/analytics\\/google\",\"extension\\/analytics\\/oct_analytics\",\"extension\\/captcha\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/d_export_import\",\"extension\\/d_export_import\\/excel\",\"extension\\/d_export_import\\/setting\",\"extension\\/d_shopunity\",\"extension\\/d_shopunity\\/d_validator\",\"extension\\/dashboard\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_export_import\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/oct_banner_plus\",\"extension\\/module\\/oct_benefits\",\"extension\\/module\\/oct_blogarticle\",\"extension\\/module\\/oct_blogcategory\",\"extension\\/module\\/oct_category_wall\",\"extension\\/module\\/oct_product_review\",\"extension\\/module\\/oct_product_views\",\"extension\\/module\\/oct_products_from_category\",\"extension\\/module\\/oct_slideshow_plus\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\",\"extension\\/theme\\/default\",\"extension\\/theme\\/oct_feelmart\",\"extension\\/total\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"octemplates\",\"octemplates\\/blog\",\"octemplates\\/blog\\/oct_blogarticle\",\"octemplates\\/blog\\/oct_blogcategory\",\"octemplates\\/blog\\/oct_blogcomments\",\"octemplates\\/blog\\/oct_blogsettings\",\"octemplates\\/design\",\"octemplates\\/design\\/oct_banner_plus\",\"octemplates\\/design\\/oct_slideshow_plus\",\"octemplates\\/module\",\"octemplates\\/module\\/oct_404_page\",\"octemplates\\/module\\/oct_information_bar\",\"octemplates\\/module\\/oct_megamenu\",\"octemplates\\/module\\/oct_policy\",\"octemplates\\/module\\/oct_popup_call_phone\",\"octemplates\\/module\\/oct_popup_found_cheaper\",\"octemplates\\/module\\/oct_popup_purchase\",\"octemplates\\/module\\/oct_popup_view\",\"octemplates\\/module\\/oct_product_tabs\",\"octemplates\\/module\\/oct_product_tabs_settings\",\"octemplates\\/module\\/oct_sreview_reviews\",\"octemplates\\/module\\/oct_sreview_setting\",\"octemplates\\/module\\/oct_sreview_subject\",\"octemplates\\/module\\/oct_subscribe\",\"octemplates\\/stickers\",\"octemplates\\/stickers\\/oct_stickers_settings\",\"report\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\",\"setting\\/setting\",\"setting\\/store\",\"startup\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Christmas'),(7,1,'Birthday'),(8,1,'General'),(6,2,'Christmas'),(7,2,'Birthday'),(8,2,'General'),(6,3,'Christmas'),(7,3,'Birthday'),(8,3,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Kilogram','kg'),(2,1,'Gram','g'),(5,1,'Pound ','lb'),(6,1,'Ounce','oz'),(1,2,'Kilogram','kg'),(2,2,'Gram','g'),(5,2,'Pound ','lb'),(6,2,'Ounce','oz'),(1,3,'Kilogram','kg'),(2,3,'Gram','g'),(5,3,'Pound ','lb'),(6,3,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-Württemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Thüringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Puducherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'Kalimantan Utara','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord-Brabant','NB',1),(2336,150,'Noord-Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid-Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'Gävleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'Jämtland','Z',1),(3080,203,'Jönköping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'Örebro','T',1),(3085,203,'Östergötland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'Södermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'Värmland','S',1),(3091,203,'Västerbotten','AC',1),(3092,203,'Västernorrland','Y',1),(3093,203,'Västmanland','U',1),(3094,203,'Västra Götaland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graubünden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Zürich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abū Z̧aby','AZ',1),(3507,221,'‘Ajmān','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shāriqah','SH',1),(3510,221,'Dubai','DU',1),(3511,221,'Ra’s al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3969,101,'Alborz','ALB',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1),(4225,118,'Beirut','LB-BR',1),(4226,118,'Bekaa','LB-BE',1),(4227,118,'Mount Lebanon','LB-ML',1),(4228,118,'Nabatieh','LB-NB',1),(4229,118,'North','LB-NR',1),(4230,118,'South','LB-ST',1),(4231,99,'Telangana','TS',1),(4233,100,'Papua Barat','PB',1),(4234,100,'Sulawesi Barat','SR',1),(4235,100,'Kepulauan Riau','KR',1),(4236,105,'Barletta-Andria-Trani','BT',1),(4237,105,'Fermo','FM',1),(4238,105,'Monza Brianza','MB',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (219,220,0,4,'2021-09-29 14:52:23','0000-00-00 00:00:00'),(224,220,3482,3,'2021-09-29 14:56:50','0000-00-00 00:00:00'),(223,220,3493,3,'2021-09-29 14:56:50','0000-00-00 00:00:00'),(222,220,3488,3,'2021-09-29 14:56:50','0000-00-00 00:00:00'),(221,220,3500,3,'2021-09-29 14:56:50','0000-00-00 00:00:00'),(220,220,0,3,'2021-09-29 14:56:50','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

