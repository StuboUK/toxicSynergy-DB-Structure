CREATE DATABASE  IF NOT EXISTS `txsn` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `txsn`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: txsn
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advert`
--

DROP TABLE IF EXISTS `advert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `antispam`
--

DROP TABLE IF EXISTS `antispam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antispam` (
  `ID` bigint(255) unsigned NOT NULL,
  `SpamScore` int(11) DEFAULT NULL,
  `Level 1` int(11) DEFAULT NULL,
  `Level 2` int(11) DEFAULT NULL,
  `Level 3` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(255) DEFAULT NULL,
  `award` varchar(255) DEFAULT NULL,
  `awardimg` varchar(255) DEFAULT NULL,
  `awarddesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benfconfig`
--

DROP TABLE IF EXISTS `benfconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benfconfig` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benfgroups`
--

DROP TABLE IF EXISTS `benfgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benfgroups` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mask_id` smallint(6) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `leader` int(11) NOT NULL DEFAULT '0',
  `expiration_date` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `groups_idx` (`name`),
  KEY `groups_idx2` (`is_public`),
  KEY `groups_idx3` (`expiration_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benfinvitations`
--

DROP TABLE IF EXISTS `benfinvitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benfinvitations` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `code` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `invitations_idx` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benfmasks`
--

DROP TABLE IF EXISTS `benfmasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benfmasks` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `auth_admin` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_phpinfo` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_configuration` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_add_user` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_user_list` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_remove_user` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_edit_user` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_add_page` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_page_list` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_remove_page` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_edit_page` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_page_stats` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_add_mask` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_list_masks` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_remove_mask` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_edit_mask` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_add_group` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_list_groups` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_remove_group` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_edit_group` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_activate_account` tinyint(1) NOT NULL DEFAULT '0',
  `auth_admin_send_invite` tinyint(1) NOT NULL DEFAULT '0',
  `auth_356a192b7913b04c54574d18c28d46e6395428ab` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `masks_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benfpages`
--

DROP TABLE IF EXISTS `benfpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benfpages` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pages_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benfpassword_requests`
--

DROP TABLE IF EXISTS `benfpassword_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benfpassword_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(40) NOT NULL DEFAULT '',
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benfsecurity_image`
--

DROP TABLE IF EXISTS `benfsecurity_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benfsecurity_image` (
  `random_id` varchar(40) NOT NULL DEFAULT '',
  `real_text` varchar(10) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`random_id`),
  KEY `security_image_idx` (`real_text`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benfsessions`
--

DROP TABLE IF EXISTS `benfsessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benfsessions` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sessions_idx` (`value`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `benfusers`
--

DROP TABLE IF EXISTS `benfusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benfusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `code` varchar(40) NOT NULL DEFAULT '',
  `active` char(3) NOT NULL DEFAULT 'no',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_session` varchar(40) NOT NULL DEFAULT '',
  `blocked` char(3) NOT NULL DEFAULT 'no',
  `tries` tinyint(2) NOT NULL DEFAULT '0',
  `last_try` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL DEFAULT '',
  `mask_id` smallint(6) NOT NULL DEFAULT '0',
  `group_id` smallint(6) NOT NULL DEFAULT '2',
  `activation_time` int(11) NOT NULL DEFAULT '0',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `did` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_idx` (`username`),
  KEY `users_idx2` (`code`),
  KEY `users_idx3` (`last_login`),
  KEY `users_idx4` (`last_session`),
  KEY `users_idx5` (`last_try`),
  KEY `users_idx6` (`activation_time`),
  KEY `users_idx7` (`last_action`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bets`
--

DROP TABLE IF EXISTS `bets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bets` (
  `did` bigint(255) unsigned NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `team` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `chatlog`
--

DROP TABLE IF EXISTS `chatlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  `channelname` varchar(2555) DEFAULT NULL,
  `userid` bigint(255) unsigned DEFAULT NULL,
  `avatarurl` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `role` varchar(45) DEFAULT 'NORMAL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1918348 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `commands`
--

DROP TABLE IF EXISTS `commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commands` (
  `command` varchar(255) NOT NULL,
  `commandhelp` varchar(2000) DEFAULT NULL,
  `commandtype` varchar(255) DEFAULT NULL,
  `commandsyntax` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`command`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `corememberlist`
--

DROP TABLE IF EXISTS `corememberlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corememberlist` (
  `userid` bigint(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `csgoelo`
--

DROP TABLE IF EXISTS `csgoelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csgoelo` (
  `did` bigint(255) NOT NULL,
  `matchesplayed` int(11) DEFAULT '0',
  `elo` int(11) DEFAULT '1000',
  `steamid` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `discorduser`
--

DROP TABLE IF EXISTS `discorduser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discorduser` (
  `userid` varchar(255) NOT NULL,
  `level` int(11) DEFAULT '1',
  `xp` int(11) DEFAULT '127',
  `txsncoin` int(11) DEFAULT '0',
  `sscorecoeff` int(11) DEFAULT '0',
  `xpmult` int(11) DEFAULT '1',
  `astimer` varchar(255) DEFAULT '30',
  `txsncoinmulti` int(11) DEFAULT '1',
  `tagenforce` int(11) DEFAULT '1',
  `spamenforce` int(11) DEFAULT '1',
  `filterenforce` int(11) DEFAULT '1',
  `xpgain` int(11) DEFAULT '1',
  `ignitionban` int(11) DEFAULT '0',
  `tag` varchar(45) DEFAULT 'tS |',
  `jailed` int(11) DEFAULT '0',
  `blind` int(11) DEFAULT '0',
  `imagemuted` int(11) DEFAULT '0',
  `voicejoinmuted` int(11) DEFAULT '0',
  `levelperc` int(11) DEFAULT '0',
  `embedcolour` varchar(45) DEFAULT '255, 137, 0',
  `funnyrating` int(11) DEFAULT '0',
  `inventory` varchar(2000) NOT NULL DEFAULT '{"inventory": [{"itemname": "Empty", "quantity": 1}, {"itemname": "Empty", "quantity": 1}, {"itemname": "Empty", "quantity": 1}, {"itemname": "Empty", "quantity": 1}, {"itemname": "Empty", "quantity": 1}, {"itemname": "Empty", "quantity": 1}, {"itemname": "Empty", "quantity": 1}, {"itemname": "Empty", "quantity": 1}]}',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='uwu whats this';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dlrequest`
--

DROP TABLE IF EXISTS `dlrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dlrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RequestName` varchar(255) DEFAULT NULL,
  `Time` varchar(45) DEFAULT NULL,
  `User` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eventdetails`
--

DROP TABLE IF EXISTS `eventdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventdetails` (
  `coverimage` varchar(500) NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `information` varchar(2000) DEFAULT NULL,
  `timedate` varchar(2000) DEFAULT NULL,
  `rules` varchar(2000) DEFAULT NULL,
  `gamepage` varchar(2000) DEFAULT NULL,
  `gamepageheader` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`coverimage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eventlist`
--

DROP TABLE IF EXISTS `eventlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `DiscordID` varchar(255) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filterword` varchar(1000) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortuneban`
--

DROP TABLE IF EXISTS `fortuneban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fortuneban` (
  `userid` bigint(255) unsigned NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fortunes`
--

DROP TABLE IF EXISTS `fortunes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fortunes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fortunes` varchar(2000) DEFAULT NULL,
  `createdby` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ignjoinus`
--

DROP TABLE IF EXISTS `ignjoinus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ignjoinus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discordusername` varchar(255) DEFAULT NULL,
  `discordavatar` varchar(255) DEFAULT NULL,
  `discorduserid` bigint(255) unsigned DEFAULT NULL,
  `username` varchar(450) DEFAULT NULL,
  `email` varchar(450) DEFAULT NULL,
  `steamlink` varchar(250) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `location` varchar(400) DEFAULT NULL,
  `about` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `userid` bigint(255) unsigned NOT NULL,
  `inventory` json NOT NULL,
  `bagsize` varchar(45) NOT NULL DEFAULT '4',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(255) DEFAULT NULL,
  `itemPrintName` varchar(255) DEFAULT NULL,
  `itemDesc` varchar(500) DEFAULT NULL,
  `itemQuality` int(11) DEFAULT NULL,
  `itemPicture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='			';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `joinus`
--

DROP TABLE IF EXISTS `joinus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `joinus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onlinename` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` varchar(1000) DEFAULT NULL,
  `steam` varchar(1000) DEFAULT NULL,
  `games` varchar(1000) DEFAULT NULL,
  `location` varchar(1000) DEFAULT NULL,
  `about` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=706 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `levelcolor`
--

DROP TABLE IF EXISTS `levelcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levelcolor` (
  `userid` bigint(255) unsigned NOT NULL,
  `roleid` bigint(255) unsigned DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `IP` varchar(255) DEFAULT NULL,
  `SESSIONID` varchar(45) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `ALLOWED` varchar(45) DEFAULT NULL,
  `USERID` varchar(45) DEFAULT NULL,
  `AVATAR` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1252 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mcelo`
--

DROP TABLE IF EXISTS `mcelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcelo` (
  `did` bigint(255) NOT NULL,
  `matchesplayed` int(11) DEFAULT '0',
  `mcusername` varchar(45) DEFAULT NULL,
  `elo` int(11) DEFAULT '1000',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `memberlist`
--

DROP TABLE IF EXISTS `memberlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberlist` (
  `userid` bigint(255) unsigned NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(100) DEFAULT NULL,
  `avatar` varchar(2000) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `memberbackground` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `badoo` varchar(255) DEFAULT NULL,
  `bebo` varchar(255) DEFAULT NULL,
  `behance` varchar(255) DEFAULT NULL,
  `blogger` varchar(255) DEFAULT NULL,
  `deviantart` varchar(255) DEFAULT NULL,
  `digg` varchar(255) DEFAULT NULL,
  `disqus` varchar(255) DEFAULT NULL,
  `dribbble` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `flickr` varchar(255) DEFAULT NULL,
  `forrst` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `line` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `myspace` varchar(255) DEFAULT NULL,
  `pintrest` varchar(255) DEFAULT NULL,
  `plurk` varchar(255) DEFAULT NULL,
  `rss` varchar(255) DEFAULT NULL,
  `steam` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `tumblr` varchar(255) DEFAULT NULL,
  `viber` varchar(255) DEFAULT NULL,
  `vimeo` varchar(255) DEFAULT NULL,
  `vine` varchar(255) DEFAULT NULL,
  `vk` varchar(255) DEFAULT NULL,
  `xing` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `teambackground` varchar(255) DEFAULT NULL,
  `nbackground` varchar(255) DEFAULT NULL,
  `nbackgroundstyle` varchar(45) DEFAULT 'cover',
  `nbackgroundrepeat` varchar(45) DEFAULT 'no-repeat',
  `ui_usernamecolor` varchar(45) DEFAULT 'white',
  `ui_titletextcolor` varchar(45) DEFAULT 'white',
  `ui_avatarroundness` varchar(45) DEFAULT '0',
  `ui_marginstrength` varchar(45) DEFAULT '10',
  `ui_navitemcolour` varchar(45) DEFAULT 'white',
  `ui_navblurstrength` varchar(45) DEFAULT '10',
  `ui_navbarsettingcolour` varchar(45) DEFAULT 'white',
  `steamid64` bigint(255) unsigned DEFAULT NULL,
  `mcusername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modlist`
--

DROP TABLE IF EXISTS `modlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modlist` (
  `userid` bigint(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plexrequest`
--

DROP TABLE IF EXISTS `plexrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plexrequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `RequestName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Time` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `User` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Channel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `1337x` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ReqCount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Priority` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Completed` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CompletedBy` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CompletedTime` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CompletedScore` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchase_items`
--

DROP TABLE IF EXISTS `purchase_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchase_queue`
--

DROP TABLE IF EXISTS `purchase_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `done` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `raf`
--

DROP TABLE IF EXISTS `raf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raf` (
  `did` bigint(255) NOT NULL,
  `referdid` bigint(255) DEFAULT NULL,
  `referteam` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `raidmemberlist`
--

DROP TABLE IF EXISTS `raidmemberlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raidmemberlist` (
  `userid` bigint(255) NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `remindme`
--

DROP TABLE IF EXISTS `remindme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remindme` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` bigint(255) unsigned NOT NULL,
  `mutetimer` varchar(45) DEFAULT NULL,
  `unmutetime` int(255) DEFAULT NULL,
  `warden` varchar(2555) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reqrank`
--

DROP TABLE IF EXISTS `reqrank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reqrank` (
  `id` bigint(255) NOT NULL,
  `completed` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reqsubscribe`
--

DROP TABLE IF EXISTS `reqsubscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reqsubscribe` (
  `did` bigint(255) unsigned NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requestcount`
--

DROP TABLE IF EXISTS `requestcount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requestcount` (
  `id` bigint(15) NOT NULL,
  `Amount` int(11) DEFAULT '0',
  `Username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `requestuser` varchar(300) DEFAULT NULL,
  `requestid` varchar(100) DEFAULT NULL,
  `assignedto` varchar(85) DEFAULT NULL,
  `time` varchar(115) DEFAULT NULL,
  `done` varchar(45) DEFAULT '0',
  `timecomplete` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `richboilist`
--

DROP TABLE IF EXISTS `richboilist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `richboilist` (
  `userid` bigint(255) unsigned NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rustentleaderboard`
--

DROP TABLE IF EXISTS `rustentleaderboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rustentleaderboard` (
  `did` bigint(255) unsigned NOT NULL,
  `kills` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rustleaderboard`
--

DROP TABLE IF EXISTS `rustleaderboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rustleaderboard` (
  `did` bigint(255) unsigned NOT NULL,
  `kills` int(11) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `serverid` bigint(255) NOT NULL,
  `currentlyworking` varchar(2000) DEFAULT NULL,
  `blueteamcaptain` bigint(255) unsigned DEFAULT NULL,
  `redteamcaptain` bigint(255) unsigned DEFAULT NULL,
  `vote` int(11) DEFAULT '0',
  `WinningTeam` varchar(45) DEFAULT 'Green',
  `activityscore` varchar(45) DEFAULT '0',
  `eventlockdown` int(11) DEFAULT '0',
  `eventtime` varchar(245) DEFAULT NULL,
  `eventgame` varchar(245) DEFAULT NULL,
  `csgoauthcode` varchar(255) DEFAULT '0',
  `csgopassword` varchar(255) DEFAULT NULL,
  `nostromobet` int(11) DEFAULT NULL,
  `elysiumbet` int(11) DEFAULT NULL,
  `operationactive` int(11) DEFAULT NULL,
  `jailreflector` bigint(255) unsigned DEFAULT NULL,
  `eventmutetimer` varchar(255) DEFAULT NULL,
  `raidmsgid` bigint(255) unsigned DEFAULT NULL,
  `raidchannelid` bigint(255) unsigned DEFAULT NULL,
  `charitypot` int(11) DEFAULT '0',
  PRIMARY KEY (`serverid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shopitems`
--

DROP TABLE IF EXISTS `shopitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopitems` (
  `id` int(11) NOT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskname` varchar(255) DEFAULT NULL,
  `assocuser` bigint(255) unsigned DEFAULT NULL,
  `arg1` varchar(2000) DEFAULT NULL,
  `arg2` varchar(2000) DEFAULT NULL,
  `arg3` varchar(2000) DEFAULT NULL,
  `timeentry` double DEFAULT NULL,
  `timeaction` double DEFAULT '0',
  `actioneduser` bigint(255) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=884199 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `userid` bigint(255) unsigned NOT NULL,
  `team` varchar(45) DEFAULT NULL,
  `teampower` int(11) DEFAULT '0',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `twitchlinks`
--

DROP TABLE IF EXISTS `twitchlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twitchlinks` (
  `twitchusername` varchar(255) NOT NULL,
  `did` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`twitchusername`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `twitchstreams`
--

DROP TABLE IF EXISTS `twitchstreams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `twitchstreams` (
  `id` bigint(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `warnlog`
--

DROP TABLE IF EXISTS `warnlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warnlog` (
  `userid` varchar(255) DEFAULT NULL,
  `reason` varchar(2000) DEFAULT NULL,
  `time` varchar(120) DEFAULT NULL,
  `warden` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xplog`
--

DROP TABLE IF EXISTS `xplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xplog` (
  `xplogid` int(11) NOT NULL AUTO_INCREMENT,
  `did` bigint(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `log` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`xplogid`)
) ENGINE=InnoDB AUTO_INCREMENT=389310 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'txsn'
--

--
-- Dumping routines for database 'txsn'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-07 14:23:15
