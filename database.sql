-- --------------------------------------------------------
-- Host:                         54.232.94.74
-- Server version:               5.5.31-0ubuntu0.12.04.2 - (Ubuntu)
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             8.0.0.4415
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table temp.atcommandlog
DROP TABLE IF EXISTS `atcommandlog`;
CREATE TABLE IF NOT EXISTS `atcommandlog` (
  `atcommand_id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `atcommand_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_name` varchar(25) NOT NULL DEFAULT '',
  `map` varchar(11) NOT NULL DEFAULT '',
  `command` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`atcommand_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.atcommandlog: 0 rows
DELETE FROM `atcommandlog`;
/*!40000 ALTER TABLE `atcommandlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `atcommandlog` ENABLE KEYS */;


-- Dumping structure for table temp.auction
DROP TABLE IF EXISTS `auction`;
CREATE TABLE IF NOT EXISTS `auction` (
  `auction_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) unsigned NOT NULL DEFAULT '0',
  `seller_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_id` int(11) unsigned NOT NULL DEFAULT '0',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `price` int(11) unsigned NOT NULL DEFAULT '0',
  `buynow` int(11) unsigned NOT NULL DEFAULT '0',
  `hours` smallint(6) NOT NULL DEFAULT '0',
  `timestamp` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`auction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.auction: 0 rows
DELETE FROM `auction`;
/*!40000 ALTER TABLE `auction` DISABLE KEYS */;
/*!40000 ALTER TABLE `auction` ENABLE KEYS */;


-- Dumping structure for table temp.cart_inventory
DROP TABLE IF EXISTS `cart_inventory`;
CREATE TABLE IF NOT EXISTS `cart_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `nameid` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) NOT NULL DEFAULT '0',
  `card0` int(11) NOT NULL DEFAULT '0',
  `card1` int(11) NOT NULL DEFAULT '0',
  `card2` int(11) NOT NULL DEFAULT '0',
  `card3` int(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.cart_inventory: 0 rows
DELETE FROM `cart_inventory`;
/*!40000 ALTER TABLE `cart_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_inventory` ENABLE KEYS */;


-- Dumping structure for table temp.char
DROP TABLE IF EXISTS `char`;
CREATE TABLE IF NOT EXISTS `char` (
  `char_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_num` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `class` smallint(11) unsigned NOT NULL DEFAULT '0',
  `base_level` smallint(20) unsigned NOT NULL DEFAULT '1',
  `job_level` smallint(20) unsigned NOT NULL DEFAULT '1',
  `base_exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `job_exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `zeny` int(11) unsigned NOT NULL DEFAULT '500',
  `str` smallint(11) unsigned NOT NULL DEFAULT '0',
  `agi` smallint(11) unsigned NOT NULL DEFAULT '0',
  `vit` smallint(11) unsigned NOT NULL DEFAULT '0',
  `int` smallint(11) unsigned NOT NULL DEFAULT '0',
  `dex` smallint(11) unsigned NOT NULL DEFAULT '0',
  `luk` smallint(11) unsigned NOT NULL DEFAULT '0',
  `max_hp` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `hp` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `max_sp` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `sp` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `status_point` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_point` int(11) unsigned NOT NULL DEFAULT '0',
  `option` int(11) NOT NULL DEFAULT '0',
  `karma` tinyint(3) NOT NULL DEFAULT '0',
  `manner` smallint(6) NOT NULL DEFAULT '0',
  `party_id` int(11) unsigned NOT NULL DEFAULT '0',
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `pet_id` int(11) unsigned NOT NULL DEFAULT '0',
  `homun_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hair_color` smallint(11) unsigned NOT NULL DEFAULT '0',
  `clothes_color` smallint(4) unsigned NOT NULL DEFAULT '0',
  `weapon` smallint(11) unsigned NOT NULL DEFAULT '1',
  `shield` smallint(11) unsigned NOT NULL DEFAULT '0',
  `head_top` smallint(11) unsigned NOT NULL DEFAULT '0',
  `head_mid` smallint(11) unsigned NOT NULL DEFAULT '0',
  `head_bottom` smallint(11) unsigned NOT NULL DEFAULT '0',
  `last_map` varchar(11) NOT NULL,
  `last_x` smallint(11) unsigned NOT NULL DEFAULT '53',
  `last_y` smallint(11) unsigned NOT NULL DEFAULT '111',
  `save_map` varchar(11) NOT NULL,
  `save_x` smallint(11) unsigned NOT NULL DEFAULT '53',
  `save_y` smallint(11) unsigned NOT NULL DEFAULT '111',
  `partner_id` int(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(4) NOT NULL DEFAULT '0',
  `father` int(11) unsigned NOT NULL DEFAULT '0',
  `mother` int(11) unsigned NOT NULL DEFAULT '0',
  `child` int(11) unsigned NOT NULL DEFAULT '0',
  `fame` int(11) unsigned NOT NULL DEFAULT '0',
  `rename` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`),
  KEY `party_id` (`party_id`),
  KEY `guild_id` (`guild_id`),
  KEY `account_id` (`account_id`),
  KEY `name` (`name`),
  KEY `online` (`online`),
  KEY `online_2` (`online`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.char: 0 rows
DELETE FROM `char`;
/*!40000 ALTER TABLE `char` DISABLE KEYS */;
/*!40000 ALTER TABLE `char` ENABLE KEYS */;


-- Dumping structure for table temp.chargdt
DROP TABLE IF EXISTS `chargdt`;
CREATE TABLE IF NOT EXISTS `chargdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `char_idd` int(11) DEFAULT NULL,
  `charkill` int(11) DEFAULT NULL,
  `char_name` varchar(39) DEFAULT NULL,
  `pontokill` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.chargdt: 0 rows
DELETE FROM `chargdt`;
/*!40000 ALTER TABLE `chargdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `chargdt` ENABLE KEYS */;


-- Dumping structure for table temp.charlog
DROP TABLE IF EXISTS `charlog`;
CREATE TABLE IF NOT EXISTS `charlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `char_msg` varchar(255) NOT NULL DEFAULT 'char select',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_num` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `str` int(11) unsigned NOT NULL DEFAULT '0',
  `agi` int(11) unsigned NOT NULL DEFAULT '0',
  `vit` int(11) unsigned NOT NULL DEFAULT '0',
  `int` int(11) unsigned NOT NULL DEFAULT '0',
  `dex` int(11) unsigned NOT NULL DEFAULT '0',
  `luk` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(4) NOT NULL DEFAULT '0',
  `hair_color` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.charlog: 0 rows
DELETE FROM `charlog`;
/*!40000 ALTER TABLE `charlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `charlog` ENABLE KEYS */;


-- Dumping structure for table temp.event_item
DROP TABLE IF EXISTS `event_item`;
CREATE TABLE IF NOT EXISTS `event_item` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `id2` int(9) NOT NULL,
  `nome` varchar(39) NOT NULL,
  `valor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.event_item: 0 rows
DELETE FROM `event_item`;
/*!40000 ALTER TABLE `event_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_item` ENABLE KEYS */;


-- Dumping structure for table temp.friends
DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `friend_account` int(11) NOT NULL DEFAULT '0',
  `friend_id` int(11) NOT NULL DEFAULT '0',
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.friends: 0 rows
DELETE FROM `friends`;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;


-- Dumping structure for table temp.gdt
DROP TABLE IF EXISTS `gdt`;
CREATE TABLE IF NOT EXISTS `gdt` (
  `guild_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tesouros` int(11) unsigned NOT NULL DEFAULT '0',
  `pontos` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.gdt: 0 rows
DELETE FROM `gdt`;
/*!40000 ALTER TABLE `gdt` DISABLE KEYS */;
/*!40000 ALTER TABLE `gdt` ENABLE KEYS */;


-- Dumping structure for table temp.global_reg_value
DROP TABLE IF EXISTS `global_reg_value`;
CREATE TABLE IF NOT EXISTS `global_reg_value` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `str` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '3',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`str`,`account_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.global_reg_value: 0 rows
DELETE FROM `global_reg_value`;
/*!40000 ALTER TABLE `global_reg_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `global_reg_value` ENABLE KEYS */;


-- Dumping structure for table temp.guild
DROP TABLE IF EXISTS `guild`;
CREATE TABLE IF NOT EXISTS `guild` (
  `guild_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL DEFAULT '',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `master` varchar(24) NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `connect_member` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `max_member` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `average_lv` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `exp` int(11) unsigned NOT NULL DEFAULT '0',
  `next_exp` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_point` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `castle_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `mes1` varchar(60) NOT NULL DEFAULT '',
  `mes2` varchar(120) NOT NULL DEFAULT '',
  `emblem_len` int(11) unsigned NOT NULL DEFAULT '0',
  `emblem_id` int(11) unsigned NOT NULL DEFAULT '0',
  `emblem_data` blob,
  PRIMARY KEY (`guild_id`,`char_id`),
  UNIQUE KEY `guild_id` (`guild_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.guild: 0 rows
DELETE FROM `guild`;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;


-- Dumping structure for table temp.guild_alliance
DROP TABLE IF EXISTS `guild_alliance`;
CREATE TABLE IF NOT EXISTS `guild_alliance` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `opposition` int(11) unsigned NOT NULL DEFAULT '0',
  `alliance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`alliance_id`),
  KEY `alliance_id` (`alliance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.guild_alliance: 0 rows
DELETE FROM `guild_alliance`;
/*!40000 ALTER TABLE `guild_alliance` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_alliance` ENABLE KEYS */;


-- Dumping structure for table temp.guild_castle
DROP TABLE IF EXISTS `guild_castle`;
CREATE TABLE IF NOT EXISTS `guild_castle` (
  `castle_id` int(11) unsigned NOT NULL DEFAULT '0',
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `economy` int(11) unsigned NOT NULL DEFAULT '0',
  `defense` int(11) unsigned NOT NULL DEFAULT '0',
  `triggerE` int(11) unsigned NOT NULL DEFAULT '0',
  `triggerD` int(11) unsigned NOT NULL DEFAULT '0',
  `nextTime` int(11) unsigned NOT NULL DEFAULT '0',
  `payTime` int(11) unsigned NOT NULL DEFAULT '0',
  `createTime` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleC` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG0` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG1` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG2` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG3` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG4` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG5` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG6` int(11) unsigned NOT NULL DEFAULT '0',
  `visibleG7` int(11) unsigned NOT NULL DEFAULT '0',
  `gHP0` int(11) unsigned NOT NULL DEFAULT '0',
  `ghP1` int(11) unsigned NOT NULL DEFAULT '0',
  `gHP2` int(11) unsigned NOT NULL DEFAULT '0',
  `gHP3` int(11) unsigned NOT NULL DEFAULT '0',
  `gHP4` int(11) unsigned NOT NULL DEFAULT '0',
  `gHP5` int(11) unsigned NOT NULL DEFAULT '0',
  `gHP6` int(11) unsigned NOT NULL DEFAULT '0',
  `gHP7` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`castle_id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.guild_castle: 0 rows
DELETE FROM `guild_castle`;
/*!40000 ALTER TABLE `guild_castle` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_castle` ENABLE KEYS */;


-- Dumping structure for table temp.guild_expulsion
DROP TABLE IF EXISTS `guild_expulsion`;
CREATE TABLE IF NOT EXISTS `guild_expulsion` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mes` varchar(40) NOT NULL DEFAULT '',
  `acc` varchar(40) NOT NULL DEFAULT '',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `rsv1` int(11) unsigned NOT NULL DEFAULT '0',
  `rsv2` int(11) unsigned NOT NULL DEFAULT '0',
  `rsv3` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.guild_expulsion: 0 rows
DELETE FROM `guild_expulsion`;
/*!40000 ALTER TABLE `guild_expulsion` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_expulsion` ENABLE KEYS */;


-- Dumping structure for table temp.guild_member
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hair` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `hair_color` smallint(6) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `class` smallint(6) unsigned NOT NULL DEFAULT '0',
  `lv` smallint(6) unsigned NOT NULL DEFAULT '0',
  `exp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `exp_payper` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `rsv1` int(11) unsigned NOT NULL DEFAULT '0',
  `rsv2` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  PRIMARY KEY (`guild_id`,`char_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.guild_member: 0 rows
DELETE FROM `guild_member`;
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;


-- Dumping structure for table temp.guild_position
DROP TABLE IF EXISTS `guild_position`;
CREATE TABLE IF NOT EXISTS `guild_position` (
  `guild_id` int(9) unsigned NOT NULL DEFAULT '0',
  `position` tinyint(6) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mode` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `exp_mode` tinyint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`position`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.guild_position: 0 rows
DELETE FROM `guild_position`;
/*!40000 ALTER TABLE `guild_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_position` ENABLE KEYS */;


-- Dumping structure for table temp.guild_skill
DROP TABLE IF EXISTS `guild_skill`;
CREATE TABLE IF NOT EXISTS `guild_skill` (
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guild_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.guild_skill: 0 rows
DELETE FROM `guild_skill`;
/*!40000 ALTER TABLE `guild_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_skill` ENABLE KEYS */;


-- Dumping structure for table temp.guild_storage
DROP TABLE IF EXISTS `guild_storage`;
CREATE TABLE IF NOT EXISTS `guild_storage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guild_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.guild_storage: 0 rows
DELETE FROM `guild_storage`;
/*!40000 ALTER TABLE `guild_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_storage` ENABLE KEYS */;


-- Dumping structure for table temp.gvg
DROP TABLE IF EXISTS `gvg`;
CREATE TABLE IF NOT EXISTS `gvg` (
  `guild_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `kills` int(11) unsigned NOT NULL DEFAULT '0',
  `deaths` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `guild_id` (`guild_id`),
  KEY `kills` (`kills`),
  KEY `deaths` (`deaths`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.gvg: 0 rows
DELETE FROM `gvg`;
/*!40000 ALTER TABLE `gvg` DISABLE KEYS */;
/*!40000 ALTER TABLE `gvg` ENABLE KEYS */;


-- Dumping structure for table temp.harmony_log
DROP TABLE IF EXISTS `harmony_log`;
CREATE TABLE IF NOT EXISTS `harmony_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `char_name` varchar(24) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` varchar(20) NOT NULL,
  `data` varchar(200) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table temp.harmony_log: 0 rows
DELETE FROM `harmony_log`;
/*!40000 ALTER TABLE `harmony_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `harmony_log` ENABLE KEYS */;


-- Dumping structure for table temp.homunculus
DROP TABLE IF EXISTS `homunculus`;
CREATE TABLE IF NOT EXISTS `homunculus` (
  `homun_id` int(11) NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `level` smallint(4) NOT NULL DEFAULT '0',
  `exp` int(12) NOT NULL DEFAULT '0',
  `intimacy` int(12) NOT NULL DEFAULT '0',
  `hunger` smallint(4) NOT NULL DEFAULT '0',
  `str` smallint(4) unsigned NOT NULL DEFAULT '0',
  `agi` smallint(4) unsigned NOT NULL DEFAULT '0',
  `vit` smallint(4) unsigned NOT NULL DEFAULT '0',
  `int` smallint(4) unsigned NOT NULL DEFAULT '0',
  `dex` smallint(4) unsigned NOT NULL DEFAULT '0',
  `luk` smallint(4) unsigned NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `max_hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `max_sp` int(12) NOT NULL DEFAULT '1',
  `skill_point` smallint(4) unsigned NOT NULL DEFAULT '0',
  `alive` tinyint(2) NOT NULL DEFAULT '1',
  `rename_flag` tinyint(2) NOT NULL DEFAULT '0',
  `vaporize` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`homun_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.homunculus: 0 rows
DELETE FROM `homunculus`;
/*!40000 ALTER TABLE `homunculus` DISABLE KEYS */;
/*!40000 ALTER TABLE `homunculus` ENABLE KEYS */;


-- Dumping structure for table temp.hotkey
DROP TABLE IF EXISTS `hotkey`;
CREATE TABLE IF NOT EXISTS `hotkey` (
  `char_id` int(11) NOT NULL,
  `hotkey` tinyint(2) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `itemskill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `skill_lvl` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`hotkey`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.hotkey: 0 rows
DELETE FROM `hotkey`;
/*!40000 ALTER TABLE `hotkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotkey` ENABLE KEYS */;


-- Dumping structure for table temp.interlog
DROP TABLE IF EXISTS `interlog`;
CREATE TABLE IF NOT EXISTS `interlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.interlog: 0 rows
DELETE FROM `interlog`;
/*!40000 ALTER TABLE `interlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `interlog` ENABLE KEYS */;


-- Dumping structure for table temp.inventory
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.inventory: 0 rows
DELETE FROM `inventory`;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;


-- Dumping structure for table temp.ipbanlist
DROP TABLE IF EXISTS `ipbanlist`;
CREATE TABLE IF NOT EXISTS `ipbanlist` (
  `list` varchar(255) NOT NULL DEFAULT '',
  `btime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` varchar(255) NOT NULL DEFAULT '',
  KEY `list` (`list`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.ipbanlist: 0 rows
DELETE FROM `ipbanlist`;
/*!40000 ALTER TABLE `ipbanlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipbanlist` ENABLE KEYS */;


-- Dumping structure for table temp.j_menor
DROP TABLE IF EXISTS `j_menor`;
CREATE TABLE IF NOT EXISTS `j_menor` (
  `aposta` int(11) NOT NULL,
  `apostador` int(11) NOT NULL,
  `apostador_char` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.j_menor: 0 rows
DELETE FROM `j_menor`;
/*!40000 ALTER TABLE `j_menor` DISABLE KEYS */;
/*!40000 ALTER TABLE `j_menor` ENABLE KEYS */;


-- Dumping structure for table temp.j_premios
DROP TABLE IF EXISTS `j_premios`;
CREATE TABLE IF NOT EXISTS `j_premios` (
  `lotogol` int(11) NOT NULL,
  `menor_unico` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.j_premios: 0 rows
DELETE FROM `j_premios`;
/*!40000 ALTER TABLE `j_premios` DISABLE KEYS */;
/*!40000 ALTER TABLE `j_premios` ENABLE KEYS */;


-- Dumping structure for table temp.j_retirada
DROP TABLE IF EXISTS `j_retirada`;
CREATE TABLE IF NOT EXISTS `j_retirada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conta` int(11) NOT NULL,
  `premio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.j_retirada: 0 rows
DELETE FROM `j_retirada`;
/*!40000 ALTER TABLE `j_retirada` DISABLE KEYS */;
/*!40000 ALTER TABLE `j_retirada` ENABLE KEYS */;


-- Dumping structure for table temp.leilao
DROP TABLE IF EXISTS `leilao`;
CREATE TABLE IF NOT EXISTS `leilao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conta` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `pontos` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.leilao: 0 rows
DELETE FROM `leilao`;
/*!40000 ALTER TABLE `leilao` DISABLE KEYS */;
/*!40000 ALTER TABLE `leilao` ENABLE KEYS */;


-- Dumping structure for table temp.login
DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL DEFAULT '',
  `user_pass` varchar(32) DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `state` int(11) unsigned NOT NULL DEFAULT '0',
  `unban_time` int(11) unsigned NOT NULL DEFAULT '0',
  `expiration_time` int(11) unsigned NOT NULL DEFAULT '0',
  `logincount` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `pergunta` varchar(1) DEFAULT NULL,
  `resposta` varchar(39) DEFAULT NULL,
  `creditos2` int(11) NOT NULL DEFAULT '0',
  `bandeiras` int(9) DEFAULT NULL,
  `promocao` int(9) DEFAULT NULL,
  `apelido` varchar(39) NOT NULL DEFAULT 'Nenhum',
  `pontos` int(5) NOT NULL DEFAULT '0',
  `referencia` int(8) DEFAULT NULL,
  `pontos_referencia` int(5) NOT NULL DEFAULT '0',
  `quiz` int(11) NOT NULL DEFAULT '0',
  `invite` int(11) DEFAULT NULL,
  `pbgo` int(11) NOT NULL DEFAULT '0',
  `pin` varchar(4) DEFAULT NULL,
  `mac_address` char(12) NOT NULL DEFAULT '000000000000' COMMENT 'MAC Address',
  `birthdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_mac` varchar(18) NOT NULL DEFAULT '',
  `sent_mail` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`),
  KEY `name` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table temp.login: 0 rows
DELETE FROM `login`;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `level`, `state`, `unban_time`, `expiration_time`, `logincount`, `lastlogin`, `last_ip`, `pergunta`, `resposta`, `creditos2`, `bandeiras`, `promocao`, `apelido`, `pontos`, `referencia`, `pontos_referencia`, `quiz`, `invite`, `pbgo`, `pin`, `mac_address`, `birthdate`, `last_mac`, `sent_mail`) VALUES
	(1, 'pbro1', 'senhasecreta', 'S', 'a@a.com\r\n', 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '', NULL, NULL, 0, NULL, NULL, 'Nenhum', 0, NULL, 0, 0, NULL, 0, NULL, '000000000000', '0000-00-00 00:00:00', '', 0);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


-- Dumping structure for table temp.loginlog
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE IF NOT EXISTS `loginlog` (
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user` varchar(32) NOT NULL DEFAULT '',
  `rcode` tinyint(4) NOT NULL DEFAULT '0',
  `log` varchar(255) NOT NULL DEFAULT '',
  `mac` varchar(18) NOT NULL DEFAULT '',
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.loginlog: 0 rows
DELETE FROM `loginlog`;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;


-- Dumping structure for table temp.mac_addr_ban
DROP TABLE IF EXISTS `mac_addr_ban`;
CREATE TABLE IF NOT EXISTS `mac_addr_ban` (
  `account_id` int(11) unsigned NOT NULL,
  `mac_address` char(12) NOT NULL DEFAULT '000000000000' COMMENT 'MAC Address',
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.mac_addr_ban: 0 rows
DELETE FROM `mac_addr_ban`;
/*!40000 ALTER TABLE `mac_addr_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_addr_ban` ENABLE KEYS */;


-- Dumping structure for table temp.mac_bans
DROP TABLE IF EXISTS `mac_bans`;
CREATE TABLE IF NOT EXISTS `mac_bans` (
  `mac` varchar(17) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mac`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.mac_bans: 0 rows
DELETE FROM `mac_bans`;
/*!40000 ALTER TABLE `mac_bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `mac_bans` ENABLE KEYS */;


-- Dumping structure for table temp.mail
DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `send_name` varchar(30) NOT NULL DEFAULT '',
  `send_id` int(11) unsigned NOT NULL DEFAULT '0',
  `dest_name` varchar(30) NOT NULL DEFAULT '',
  `dest_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `zeny` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.mail: 0 rows
DELETE FROM `mail`;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;


-- Dumping structure for table temp.mapreg
DROP TABLE IF EXISTS `mapreg`;
CREATE TABLE IF NOT EXISTS `mapreg` (
  `varname` varchar(32) NOT NULL,
  `index` int(11) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL,
  KEY `varname` (`varname`),
  KEY `index` (`index`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.mapreg: 0 rows
DELETE FROM `mapreg`;
/*!40000 ALTER TABLE `mapreg` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapreg` ENABLE KEYS */;


-- Dumping structure for table temp.memo
DROP TABLE IF EXISTS `memo`;
CREATE TABLE IF NOT EXISTS `memo` (
  `memo_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL,
  `x` smallint(4) unsigned NOT NULL DEFAULT '0',
  `y` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memo_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.memo: 0 rows
DELETE FROM `memo`;
/*!40000 ALTER TABLE `memo` DISABLE KEYS */;
/*!40000 ALTER TABLE `memo` ENABLE KEYS */;


-- Dumping structure for table temp.mercenary
DROP TABLE IF EXISTS `mercenary`;
CREATE TABLE IF NOT EXISTS `mercenary` (
  `mer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `kill_counter` int(11) NOT NULL,
  `life_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.mercenary: 0 rows
DELETE FROM `mercenary`;
/*!40000 ALTER TABLE `mercenary` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercenary` ENABLE KEYS */;


-- Dumping structure for table temp.mercenary_owner
DROP TABLE IF EXISTS `mercenary_owner`;
CREATE TABLE IF NOT EXISTS `mercenary_owner` (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL DEFAULT '0',
  `arch_calls` int(11) NOT NULL DEFAULT '0',
  `arch_faith` int(11) NOT NULL DEFAULT '0',
  `spear_calls` int(11) NOT NULL DEFAULT '0',
  `spear_faith` int(11) NOT NULL DEFAULT '0',
  `sword_calls` int(11) NOT NULL DEFAULT '0',
  `sword_faith` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.mercenary_owner: 0 rows
DELETE FROM `mercenary_owner`;
/*!40000 ALTER TABLE `mercenary_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercenary_owner` ENABLE KEYS */;


-- Dumping structure for table temp.party
DROP TABLE IF EXISTS `party`;
CREATE TABLE IF NOT EXISTS `party` (
  `party_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL,
  `exp` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `item` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `leader_id` int(11) unsigned NOT NULL DEFAULT '0',
  `leader_char` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`party_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.party: 0 rows
DELETE FROM `party`;
/*!40000 ALTER TABLE `party` DISABLE KEYS */;
/*!40000 ALTER TABLE `party` ENABLE KEYS */;


-- Dumping structure for table temp.pet
DROP TABLE IF EXISTS `pet`;
CREATE TABLE IF NOT EXISTS `pet` (
  `pet_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `class` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `level` smallint(4) unsigned NOT NULL DEFAULT '0',
  `egg_id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `intimate` smallint(9) unsigned NOT NULL DEFAULT '0',
  `hungry` smallint(9) unsigned NOT NULL DEFAULT '0',
  `rename_flag` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `incuvate` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.pet: 0 rows
DELETE FROM `pet`;
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;


-- Dumping structure for table temp.picklog
DROP TABLE IF EXISTS `picklog`;
CREATE TABLE IF NOT EXISTS `picklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `type` enum('M','P','L','T','V','S','N','C','A','R','G','E') NOT NULL DEFAULT 'P',
  `nameid` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '1',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card0` int(11) NOT NULL DEFAULT '0',
  `card1` int(11) NOT NULL DEFAULT '0',
  `card2` int(11) NOT NULL DEFAULT '0',
  `card3` int(11) NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.picklog: 0 rows
DELETE FROM `picklog`;
/*!40000 ALTER TABLE `picklog` DISABLE KEYS */;
/*!40000 ALTER TABLE `picklog` ENABLE KEYS */;


-- Dumping structure for table temp.premios
DROP TABLE IF EXISTS `premios`;
CREATE TABLE IF NOT EXISTS `premios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_item` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.premios: 0 rows
DELETE FROM `premios`;
/*!40000 ALTER TABLE `premios` DISABLE KEYS */;
/*!40000 ALTER TABLE `premios` ENABLE KEYS */;


-- Dumping structure for table temp.pvp
DROP TABLE IF EXISTS `pvp`;
CREATE TABLE IF NOT EXISTS `pvp` (
  `char_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '0',
  `kills` int(11) unsigned NOT NULL DEFAULT '0',
  `deaths` int(11) unsigned NOT NULL DEFAULT '0',
  KEY `char_id` (`char_id`),
  KEY `kills` (`kills`),
  KEY `deaths` (`deaths`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.pvp: 0 rows
DELETE FROM `pvp`;
/*!40000 ALTER TABLE `pvp` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvp` ENABLE KEYS */;


-- Dumping structure for table temp.quest
DROP TABLE IF EXISTS `quest`;
CREATE TABLE IF NOT EXISTS `quest` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL,
  `state` enum('2','1','0') NOT NULL DEFAULT '0',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `count1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `count3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`quest_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.quest: 0 rows
DELETE FROM `quest`;
/*!40000 ALTER TABLE `quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest` ENABLE KEYS */;


-- Dumping structure for table temp.quiz
DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text NOT NULL,
  `r1` text NOT NULL,
  `r2` text NOT NULL,
  `r3` text NOT NULL,
  `r4` text NOT NULL,
  `r5` text NOT NULL,
  `certa` int(1) NOT NULL DEFAULT '0',
  `mes` int(2) NOT NULL DEFAULT '0',
  `dia` int(2) NOT NULL DEFAULT '0',
  `hora` int(2) NOT NULL DEFAULT '0',
  `min` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.quiz: 0 rows
DELETE FROM `quiz`;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;


-- Dumping structure for table temp.ragsrvinfo
DROP TABLE IF EXISTS `ragsrvinfo`;
CREATE TABLE IF NOT EXISTS `ragsrvinfo` (
  `index` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `exp` int(11) unsigned NOT NULL DEFAULT '0',
  `jexp` int(11) unsigned NOT NULL DEFAULT '0',
  `drop` int(11) unsigned NOT NULL DEFAULT '0',
  `motd` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.ragsrvinfo: 0 rows
DELETE FROM `ragsrvinfo`;
/*!40000 ALTER TABLE `ragsrvinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ragsrvinfo` ENABLE KEYS */;


-- Dumping structure for table temp.rank_evento
DROP TABLE IF EXISTS `rank_evento`;
CREATE TABLE IF NOT EXISTS `rank_evento` (
  `id_char` int(11) NOT NULL,
  `completo` int(11) NOT NULL DEFAULT '0',
  `desistencia` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.rank_evento: 0 rows
DELETE FROM `rank_evento`;
/*!40000 ALTER TABLE `rank_evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `rank_evento` ENABLE KEYS */;


-- Dumping structure for table temp.sc_data
DROP TABLE IF EXISTS `sc_data`;
CREATE TABLE IF NOT EXISTS `sc_data` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `type` smallint(11) unsigned NOT NULL,
  `tick` int(11) NOT NULL,
  `val1` int(11) NOT NULL DEFAULT '0',
  `val2` int(11) NOT NULL DEFAULT '0',
  `val3` int(11) NOT NULL DEFAULT '0',
  `val4` int(11) NOT NULL DEFAULT '0',
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.sc_data: 0 rows
DELETE FROM `sc_data`;
/*!40000 ALTER TABLE `sc_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_data` ENABLE KEYS */;


-- Dumping structure for table temp.skill
DROP TABLE IF EXISTS `skill`;
CREATE TABLE IF NOT EXISTS `skill` (
  `char_id` int(11) unsigned NOT NULL DEFAULT '0',
  `id` smallint(11) unsigned NOT NULL DEFAULT '0',
  `lv` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`char_id`,`id`),
  KEY `char_id` (`char_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.skill: 0 rows
DELETE FROM `skill`;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;


-- Dumping structure for table temp.skill_homunculus
DROP TABLE IF EXISTS `skill_homunculus`;
CREATE TABLE IF NOT EXISTS `skill_homunculus` (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL,
  PRIMARY KEY (`homun_id`,`id`),
  KEY `homun_id` (`homun_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.skill_homunculus: 0 rows
DELETE FROM `skill_homunculus`;
/*!40000 ALTER TABLE `skill_homunculus` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_homunculus` ENABLE KEYS */;


-- Dumping structure for table temp.sstatus
DROP TABLE IF EXISTS `sstatus`;
CREATE TABLE IF NOT EXISTS `sstatus` (
  `index` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `user` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.sstatus: 0 rows
DELETE FROM `sstatus`;
/*!40000 ALTER TABLE `sstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `sstatus` ENABLE KEYS */;


-- Dumping structure for table temp.storage
DROP TABLE IF EXISTS `storage`;
CREATE TABLE IF NOT EXISTS `storage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) unsigned NOT NULL DEFAULT '0',
  `nameid` int(11) unsigned NOT NULL DEFAULT '0',
  `amount` smallint(11) unsigned NOT NULL DEFAULT '0',
  `equip` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `identify` smallint(6) unsigned NOT NULL DEFAULT '0',
  `refine` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `attribute` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table temp.storage: 0 rows
DELETE FROM `storage`;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
