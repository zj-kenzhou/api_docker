-- --------------------------------------------------------
-- 主机:                           47.101.64.104
-- 服务器版本:                        8.0.15 - MySQL Community Server - GPL
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 costaapi 的数据库结构
CREATE DATABASE IF NOT EXISTS `costaapi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `costaapi`;

-- 导出  表 costaapi.appid_number_ticketnumber 结构
CREATE TABLE IF NOT EXISTS `appid_number_ticketnumber` (
  `ticket_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `app_ticket_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ticket_number`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.appid_number_ticketnumber 的数据：6 rows
DELETE FROM `appid_number_ticketnumber`;
/*!40000 ALTER TABLE `appid_number_ticketnumber` DISABLE KEYS */;
INSERT INTO `appid_number_ticketnumber` (`ticket_number`, `appid`, `app_ticket_number`, `create_time`) VALUES
	('01432759', 'add', '11111111', '2019-04-08 08:52:20'),
	('53982067', 'add', '11111112', '2019-04-11 07:05:58'),
	('10645923', 'add', '11111114', '2019-04-11 08:38:26'),
	('86142903', 'add', '11111119', '2019-04-11 08:53:49'),
	('30468752', 'add', '1111134', '2019-04-12 02:56:36'),
	('01276622', 'add', '11111111', '2019-04-08 08:55:20');
/*!40000 ALTER TABLE `appid_number_ticketnumber` ENABLE KEYS */;

-- 导出  表 costaapi.recipe 结构
CREATE TABLE IF NOT EXISTS `recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dish_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meal_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipe_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipe_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipe_order` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.recipe 的数据：0 rows
DELETE FROM `recipe`;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;

-- 导出  表 costaapi.room_rank 结构
CREATE TABLE IF NOT EXISTS `room_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `array_of_rank` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_cod` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.room_rank 的数据：0 rows
DELETE FROM `room_rank`;
/*!40000 ALTER TABLE `room_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `room_rank` ENABLE KEYS */;

-- 导出  表 costaapi.system_api 结构
CREATE TABLE IF NOT EXISTS `system_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `input` varchar(1024) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `output` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.system_api 的数据：21 rows
DELETE FROM `system_api`;
/*!40000 ALTER TABLE `system_api` DISABLE KEYS */;
INSERT INTO `system_api` (`id`, `input`, `name`, `output`, `type`, `url`) VALUES
	(1, '{"CurrencyCode":"EUR","CustomerId":"1607318","SaleDateTime":"2011-02-27T18:20:52","OperatorId":"160","PosId":"2","TicketId":"001027761","VoidTicketId":"0","SaleSource":"TCPOS","TransactionNumber":"27774","UEFlag":"true","TypeCode":"MC","CostaClubCode":"0","PrintExcusionTicketFlag":"false","OfflineFlag":"false","ArrayOfSaleItem":{"SaleItem":[{"Amount":"10","DiscountableFlag":"true","PriceListItemId":"IPWP","Quantity":"1","VATCode":"ESC","LineTransactionNumber":"1","OpenDiscount":"0","OpenSurcharge":"0 ","PersonalDiscount":"0.1","ServiceSurcharge":"0.1 ","CostaClubDiscount":"0"},{"Amount":"30","DiscountableFlag":"true","PriceListItemId":"A652","Quantity":"3","VATCode":"ESC","LineTransactionNumber":"3","OpenDiscount":"0","OpenSurcharge":"0 ","PersonalDiscount":"0.1","ServiceSurcharge":"0.1 ","CostaClubDiscount":"0","DiscountManualFlag":"false"}]}}', 'Sale', '', 'post', '/Bill/Sale'),
	(2, '{"PosId":"333","DateTime":"2016-02-08T14:41:16.859Z","TypeCode":"Y","CustomerId":"1790739","TicketNumber":"11","UpdateCredit":"Y","ArrayOfTicketItem":{"TicketItem":[{"Amount":"1","PriceListItemId":"530044","Quantity":"1","ConsumeDateTime":"2016-02-08T14:41:16.859Z","AssignedTo":"1790739"}]},"Verify":"Y","CheckImpSale":"N"}', 'PreSale', '', 'post', '/Bill/PreSale'),
	(3, '', 'Guest', '', 'get', '/Guest/TTGPaxId/{TTGPaxId}'),
	(4, '', 'Guest', '', 'get', '/Guest'),
	(5, '', 'Guest', '', 'get', '/Guest/{time}'),
	(6, '', 'Guest', '', 'get', '/Guest/BadgeId/{BadgeId}'),
	(7, '', 'Guest', '', 'get', '/Guest/GuestId/{GuestId}'),
	(8, '', 'Guest', '', 'get', '/Guest/{time}/{paxStaCod}'),
	(9, '', 'GetRoomRanks', '{\'RoomRanks\':[ { \'ArrayOfRank\':[ \'01\',\'02\',\'03\',\'04\'],\'RoomCod\':\'I\',\'RoomDescription\':\'Hamburgheria\'},{ \'ArrayOfRank\':[ \'01\',\'02\',\'03\',\'04\'],\'RoomCod\':\'P\', \'RoomDescription\':\'Pizzeria\'}]} ', 'get', '/mobile/RoomRanks'),
	(10, '{"RoomCode":"A"}', 'getMenu', '', 'post', '/mobile/Menu'),
	(11, '', 'OrderRegistration', '', 'post', '/mobile/OrderRegistration'),
	(12, '{ \'PosId\': \'1\', \'TicketId\': \'22\', \'GuestId\': \'744705\',\'Amount\': \'1000\'}', 'RollingForImportantSale', '', 'post', '/Guest/RollingForImportantSale'),
	(13, '', 'Parameter', '', 'get', '/Parameter'),
	(14, '', 'Currency', '', 'get', '/Currency'),
	(15, '', 'CurrentDateTime', '', 'get', '/CurrentDateTime'),
	(16, '', 'Currency', '', 'get', '/Currency/{time}'),
	(17, '', 'Ship', '', 'get', '/Ship'),
	(18, '', 'ticketForPreSale', '', 'post', '/ticketForPreSale'),
	(19, '', 'ticketForSale', '', 'post', '/ticketForSale'),
	(20, '', 'saleorder', '', 'post', '/saleorder'),
	(21, '', 'preSaleorder', '', 'post', '/preSaleorder');
/*!40000 ALTER TABLE `system_api` ENABLE KEYS */;

-- 导出  表 costaapi.system_api_api_logs 结构
CREATE TABLE IF NOT EXISTS `system_api_api_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.system_api_api_logs 的数据：16 rows
DELETE FROM `system_api_api_logs`;
/*!40000 ALTER TABLE `system_api_api_logs` DISABLE KEYS */;
INSERT INTO `system_api_api_logs` (`id`, `access_time`, `account`, `api_name`, `api_url`, `ip`, `code`, `msg`) VALUES
	(1, '2019-04-12 09:46:42', 'admin', 'saleorder', '/saleorder', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(2, '2019-04-12 10:00:04', 'admin', 'saleorder', '/saleorder', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(3, '2019-04-12 10:12:55', 'admin', 'preSaleorder', '/preSaleorder', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(4, '2019-04-12 10:13:11', 'admin', 'preSaleorder', '/preSaleorder', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(5, '2019-04-12 10:15:26', 'admin', 'saleorder', '/saleorder', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(6, '2019-04-12 10:17:31', 'admin', 'ticketForSale', '/ticketForSale', '0:0:0:0:0:0:0:1', '50000', 'Exception'),
	(7, '2019-04-12 10:18:09', 'admin', 'ticketForSale', '/ticketForSale', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(8, '2019-04-12 10:46:18', 'admin', 'saleorder', '/saleorder', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(9, '2019-04-12 10:46:22', 'admin', 'saleorder', '/saleorder', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(10, '2019-04-12 10:53:22', 'admin', 'ticketForPreSale', '/ticketForPreSale', '0:0:0:0:0:0:0:1', '50000', 'Exception'),
	(11, '2019-04-12 10:56:41', 'admin', 'ticketForPreSale', '/ticketForPreSale', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(12, '2019-04-12 11:00:32', 'admin', 'preSaleorder', '/preSaleorder', '0:0:0:0:0:0:0:1', '20000', 'success'),
	(13, '2019-04-12 11:01:17', 'admin', 'ticketForSale', '/ticketForSale', '0:0:0:0:0:0:0:1', '50000', 'Exception'),
	(14, '2019-04-12 11:02:03', 'admin', 'ticketForSale', '/ticketForSale', '0:0:0:0:0:0:0:1', '50000', 'Exception'),
	(15, '2019-04-12 11:03:29', 'admin', 'ticketForSale', '/ticketForSale', '0:0:0:0:0:0:0:1', '50000', 'Exception'),
	(16, '2019-04-12 11:04:02', 'admin', 'ticketForSale', '/ticketForSale', '0:0:0:0:0:0:0:1', '20000', 'success');
/*!40000 ALTER TABLE `system_api_api_logs` ENABLE KEYS */;

-- 导出  表 costaapi.system_api_policy 结构
CREATE TABLE IF NOT EXISTS `system_api_policy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.system_api_policy 的数据：7 rows
DELETE FROM `system_api_policy`;
/*!40000 ALTER TABLE `system_api_policy` DISABLE KEYS */;
INSERT INTO `system_api_policy` (`id`, `account`, `ip`, `name`, `url`) VALUES
	(1, 'admin', '', 'GetRoomRanks', '/mobile/RoomRanks'),
	(2, 'admin', '', 'Guest', '/Guest'),
	(3, 'admin', '', 'ticketForPreSale', '/ticketForPreSale'),
	(4, 'admin', '', 'CurrentDateTime', '/CurrentDateTime'),
	(5, 'admin', '', 'ticketForSale', '/ticketForSale'),
	(6, 'admin', '', 'saleorder', '/saleorder'),
	(7, 'admin', '', 'preSaleorder', '/preSaleorder');
/*!40000 ALTER TABLE `system_api_policy` ENABLE KEYS */;

-- 导出  表 costaapi.system_config 结构
CREATE TABLE IF NOT EXISTS `system_config` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `configkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.system_config 的数据：2 rows
DELETE FROM `system_config`;
/*!40000 ALTER TABLE `system_config` DISABLE KEYS */;
INSERT INTO `system_config` (`id`, `create_time`, `update_time`, `configkey`, `value`) VALUES
	('dasdas', '2019-03-26 10:15:07', '2019-03-26 10:15:38', 'SAPI HOST', 'http://10.65.239.240:8083'),
	('8ac8a6e66a0126a6016a0149d6610000', '2019-04-09 08:49:37', '2019-04-09 16:49:37', 'PosId', '001');
/*!40000 ALTER TABLE `system_config` ENABLE KEYS */;

-- 导出  表 costaapi.system_user 结构
CREATE TABLE IF NOT EXISTS `system_user` (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `appid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager` bit(1) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sapiaccout` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sapipassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.system_user 的数据：1 rows
DELETE FROM `system_user`;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` (`id`, `create_time`, `update_time`, `appid`, `manager`, `password`, `sapiaccout`, `sapipassword`, `secret`, `username`) VALUES
	('admin', '2019-03-26 09:52:31', '2019-03-26 09:56:21', 'add', b'1', '1F50C9C92108A7EE', 'SAPI', 'SAPIPWD', 'dasdasaf', 'admin');
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;

-- 导出  表 costaapi.sys_result_of_pre_sale_entity 结构
CREATE TABLE IF NOT EXISTS `sys_result_of_pre_sale_entity` (
  `ticket_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `verify_fail_cause` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `verify_return` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `badge_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `verify_fail_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ticket_number`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.sys_result_of_pre_sale_entity 的数据：5 rows
DELETE FROM `sys_result_of_pre_sale_entity`;
/*!40000 ALTER TABLE `sys_result_of_pre_sale_entity` DISABLE KEYS */;
INSERT INTO `sys_result_of_pre_sale_entity` (`ticket_number`, `create_time`, `verify_fail_cause`, `verify_return`, `badge_id`, `customer_id`, `verify_fail_code`) VALUES
	('01432759', '2019-04-10 03:30:10', NULL, 'CASH', '21966853', '3922733', NULL),
	('53982067', '2019-04-11 08:26:37', NULL, 'CASH', '21966853', '3922733', NULL),
	('10645923', '2019-04-11 08:40:12', NULL, 'CASH', '21966853', '3922733', NULL),
	('86142903', '2019-04-11 08:54:03', NULL, 'CASH', '21966853', '3922733', NULL),
	('30468752', '2019-04-12 02:56:41', NULL, 'CASH', '21966853', '3922733', NULL);
/*!40000 ALTER TABLE `sys_result_of_pre_sale_entity` ENABLE KEYS */;

-- 导出  表 costaapi.sys_result_of_sale_entity 结构
CREATE TABLE IF NOT EXISTS `sys_result_of_sale_entity` (
  `ticket_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `badge_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pmstransaction_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sal_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`ticket_number`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.sys_result_of_sale_entity 的数据：2 rows
DELETE FROM `sys_result_of_sale_entity`;
/*!40000 ALTER TABLE `sys_result_of_sale_entity` DISABLE KEYS */;
INSERT INTO `sys_result_of_sale_entity` (`ticket_number`, `badge_id`, `customer_id`, `description`, `pmstransaction_id`, `sal_no`, `create_time`) VALUES
	('30468752', '21966853', '3922733', 'Ok', '30468752', '26673546', '2019-04-12 03:04:02'),
	('01432759', '21966853', '3922733', 'Ok', '1432759', '26673545', '2019-04-12 02:18:10');
/*!40000 ALTER TABLE `sys_result_of_sale_entity` ENABLE KEYS */;

-- 导出  表 costaapi.sys_ticket_item_entity 结构
CREATE TABLE IF NOT EXISTS `sys_ticket_item_entity` (
  `ticket_item_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `assigned_to` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_discount_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `costa_club_discount_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gift_card_discount_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_discount_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_list_item_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `surcharge` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vatcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `ticket_number_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_ticket_number_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ticket_item_id`) USING BTREE,
  KEY `FKjup1gbw4ubg3midaoqq3yjmd6` (`ticket_number_id`) USING BTREE,
  KEY `FKmclho8sggbrd1dtx5ox38yynm` (`sale_ticket_number_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- 正在导出表  costaapi.sys_ticket_item_entity 的数据：17 rows
DELETE FROM `sys_ticket_item_entity`;
/*!40000 ALTER TABLE `sys_ticket_item_entity` DISABLE KEYS */;
INSERT INTO `sys_ticket_item_entity` (`ticket_item_id`, `amount`, `assigned_to`, `category_discount_value`, `costa_club_discount_value`, `gift_card_discount_value`, `personal_discount_value`, `price_list_item_id`, `quantity`, `surcharge`, `vatcode`, `create_time`, `ticket_number_id`, `sale_ticket_number_id`) VALUES
	('8ac8a6e86a051653016a05513f940014', '55', '3931740', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-10 03:36:12', NULL, NULL),
	('8ac8a6e86a051653016a05513f950015', '55', '3931740', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-10 03:36:12', NULL, NULL),
	('8ac8a6e86a051653016a05532ae50018', '55', '3931740', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-10 03:38:18', NULL, NULL),
	('8ac8a6e86a051653016a055190030016', '55', '3931740', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-10 03:36:33', NULL, NULL),
	('8ac8a6e86a051653016a055190040017', '55', '3931740', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-10 03:36:33', NULL, NULL),
	('8ac8a6e86a051653016a05532ae50019', '55', '3931740', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-10 03:38:18', NULL, NULL),
	('8ac8a6df6a0a9153016a0a98f0f40000', '55', '3922733', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-11 04:12:36', '01432759', '01432759'),
	('8ac8a6df6a0a9153016a0a98f0f60001', '55', '3922733', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-11 04:12:36', '01432759', '01432759'),
	('8ac8a6fb6a0b28c1016a0b817e050000', '9', '3922733', '0', '0', '0', '0', '530044', '1', '0', 'ESC', '2019-04-11 08:26:37', '53982067', NULL),
	('8ac8a6fb6a0b28c1016a0b8debf10001', '9', '3922733', '0', '0', '0', '0', '530044', '1', '0', 'ESC', '2019-04-11 08:40:12', '10645923', NULL),
	('8ac8a6fb6a0b28c1016a0b8debf10002', '9', '3922733', '0', '0', '0', '0', '530044', '1', '0', 'ESC', '2019-04-11 08:40:12', '10645923', NULL),
	('8ac8a6fb6a0b28c1016a0b9a9cdb0003', '9', '3922733', '0', '0', '0', '0', '530044', '1', '0', 'ESC', '2019-04-11 08:54:03', NULL, NULL),
	('8ac8a6fb6a0b28c1016a0b9a9cdc0004', '9', '3922733', '0', '0', '0', '0', '530044', '1', '0', 'ESC', '2019-04-11 08:54:03', NULL, NULL),
	('8ac8a6fb6a0b28c1016a0b9ae8320005', '9', '3922733', '0', '0', '0', '0', '530044', '1', '0', 'ESC', '2019-04-11 08:54:23', '86142903', NULL),
	('8ac8a6fb6a0b28c1016a0b9ae8320006', '9', '3922733', '0', '0', '0', '0', '530044', '1', '0', 'ESC', '2019-04-11 08:54:23', '86142903', NULL),
	('4028f4816a0f49e9016a0f79cb480000', '55', '3922733', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-12 02:56:41', '30468752', '30468752'),
	('4028f4816a0f49e9016a0f79cb490001', '55', '3922733', '0', '0', '0', '0', 'D0319', '1', '8.25', 'ESC', '2019-04-12 02:56:41', '30468752', '30468752');
/*!40000 ALTER TABLE `sys_ticket_item_entity` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
