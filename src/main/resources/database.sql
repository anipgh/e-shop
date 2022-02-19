-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.37-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for e-shop
CREATE DATABASE IF NOT EXISTS `e-shop` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `e-shop`;

-- Dumping structure for table e-shop.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table e-shop.hibernate_sequence: 1 rows
DELETE FROM `hibernate_sequence`;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(6);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Dumping structure for table e-shop.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `catagory` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table e-shop.product: ~3 rows (approximately)
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table e-shop.role
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table e-shop.role: ~2 rows (approximately)
DELETE FROM `role`;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`, `name`) VALUES
	(1, 'ROLE_USER'),
	(2, 'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table e-shop.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table e-shop.user: ~5 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `password`, `username`) VALUES
	(3, '$2a$10$vUxG6gYPW.HfNcPq4kj4buG3cpvpx9juDT7KCA7rNn6bNOzpkjfcG', 'ani'),
	(4, '$2a$10$b4GBThCq6NQ6V0p9lpZbB.cXDIynpVyi7gOh4.ecgW9zRnMlgR1ji', 'user1'),
	(5, '$2a$10$7kb3KRAqR4Egi3u13fnWL.PJOjqjVT9/scWC8W9feFJgpNnuDEqse', 'Sam'),
	(6, '$2a$10$gH9bQhhJgCyPro9IKuhyb.XlvMvlOTIfOKh14HtB.YFN9lWwlsiYe', 'hello'),
	(7, '$2a$10$T7pZ1E3kBjkuwggG0ZcRVOOB3sUKHFbBiOUweoOAFA79MdVojjnBS', 'test2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table e-shop.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `roles_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`roles_id`),
  KEY `FKj9553ass9uctjrmh0gkqsmv0d` (`roles_id`),
  CONSTRAINT `FK55itppkw3i07do3h7qoclqd4k` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKj9553ass9uctjrmh0gkqsmv0d` FOREIGN KEY (`roles_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table e-shop.user_roles: ~5 rows (approximately)
DELETE FROM `user_roles`;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_id`, `roles_id`) VALUES
	(3, 2),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
