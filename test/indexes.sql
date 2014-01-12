DROP DATABASE IF EXISTS `idx_tst`;
CREATE DATABASE `idx_tst`;
USE `idx_tst`;

DROP TABLE IF EXISTS `idx_tst_myisam_basic`;
CREATE TABLE `idx_tst_myisam_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `age` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`) USING BTREE,
  KEY `location` (`location_id`) USING BTREE,
  KEY `name_age` (`name`(40),`age`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

DROP TABLE IF EXISTS `idx_tst_myisam_compkey`;
CREATE TABLE `idx_tst_myisam_compkey` (
  `last_name` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  PRIMARY KEY (`last_name`,`first_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

DROP TABLE IF EXISTS `idx_tst_myisam_incrkey`;
CREATE TABLE `idx_tst_myisam_incrkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primary` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`primary`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8
;

DROP TABLE IF EXISTS `idx_tst_innodb_basic`;
CREATE TABLE `idx_tst_innodb_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `age` tinyint(4) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`) USING BTREE,
  KEY `location` (`location_id`) USING BTREE,
  KEY `name_age` (`name`(40),`age`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

DROP TABLE IF EXISTS `idx_tst_innodb_compkey`;
CREATE TABLE `idx_tst_innodb_compkey` (
  `last_name` varchar(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  PRIMARY KEY (`last_name`,`first_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

DROP TABLE IF EXISTS `idx_tst_innodb_incrkey`;
CREATE TABLE `idx_tst_innodb_incrkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primary` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`primary`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;

