-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.18 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db
CREATE DATABASE IF NOT EXISTS `db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db`;

-- Dumping structure for table db.address
CREATE TABLE IF NOT EXISTS `address` (
  `add_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `number` int(11) NOT NULL DEFAULT '0',
  `street` varchar(255) NOT NULL DEFAULT '0',
  `unit` varchar(255) NOT NULL DEFAULT '0',
  `city` varchar(255) NOT NULL DEFAULT '0',
  `state` varchar(255) NOT NULL DEFAULT '0',
  `zipcode` varchar(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`add_id`),
  KEY `FK_address_identification` (`emp_id`),
  CONSTRAINT `FK_address_identification` FOREIGN KEY (`emp_id`) REFERENCES `identification` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db.address: ~3 rows (approximately)
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`add_id`, `emp_id`, `type`, `number`, `street`, `unit`, `city`, `state`, `zipcode`) VALUES
	(1, 1, 'home', 1234, 'blah blah St', '1 a', 'Somewhere', 'WV', '12345'),
	(2, 2, 'home', 201, 'ABC view', '25 h', 'city1', 'state1', '34562'),
	(3, 3, 'home', 345, 'bvf Avenue', '3b', 'city6', 'state3', '07387');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;

-- Dumping structure for table db.communication
CREATE TABLE IF NOT EXISTS `communication` (
  `comm_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  `preferred` varchar(255) NOT NULL,
  PRIMARY KEY (`comm_id`),
  KEY `FK_communication_identification` (`emp_id`),
  CONSTRAINT `FK_communication_identification` FOREIGN KEY (`emp_id`) REFERENCES `identification` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db.communication: ~4 rows (approximately)
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
INSERT INTO `communication` (`comm_id`, `emp_id`, `type`, `value`, `preferred`) VALUES
	(1, 1, 'email', 'bfe@sample.com', 'true'),
	(2, 2, 'phone', '8769543012', 'true'),
	(3, 1, 'phone', '5467902183', 'false'),
	(4, 3, 'email', 'gft@sample.com', 'true');
/*!40000 ALTER TABLE `communication` ENABLE KEYS */;

-- Dumping structure for table db.identification
CREATE TABLE IF NOT EXISTS `identification` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table db.identification: ~4 rows (approximately)
/*!40000 ALTER TABLE `identification` DISABLE KEYS */;
INSERT INTO `identification` (`emp_id`, `first_name`, `last_name`, `dob`, `gender`, `title`) VALUES
	(1, 'Bob', 'Frederick', '1980-06-21', 'M', 'Manager'),
	(2, 'John', 'Vick', '1991-01-08', 'M', 'Technical Lead'),
	(3, 'Will', 'Smith', '1992-05-06', 'M', 'Engineer'),
	(4, 'Mary', 'Dena', '1989-05-06', 'F', 'Tester');
/*!40000 ALTER TABLE `identification` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
