-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table magazin.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `ID_Customer` int NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Adress` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table magazin.customer: ~10 rows (approximately)
INSERT INTO `customer` (`ID_Customer`, `Customer_Name`, `Adress`) VALUES
	(1, 'Traian', 'Cantacuzino78'),
	(2, 'Lavinia', 'Moldovei5'),
	(3, 'Marcel', 'Lalescu9'),
	(4, 'Ioana', 'Locomotivei12'),
	(5, 'Daniel', 'Barsei16'),
	(6, 'Ovidiu', 'StefancelMare14'),
	(7, 'Lucia', 'Michelangelo1'),
	(8, 'Adrian', 'JeanCalvin78'),
	(9, 'Paula', 'Osorhei119'),
	(10, 'Marius', 'Lesiu65');

-- Dumping structure for table magazin.product
CREATE TABLE IF NOT EXISTS `product` (
  `ID_product` int NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Price` double NOT NULL,
  `Stoc_number` int NOT NULL,
  PRIMARY KEY (`ID_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table magazin.product: ~11 rows (approximately)
INSERT INTO `product` (`ID_product`, `Product_Name`, `Price`, `Stoc_number`) VALUES
	(410, 'Monitor', 1700, 15),
	(411, 'Tastatura', 450, 3),
	(412, 'Mouse', 150, 19),
	(413, 'Imprimanta', 1800, 5),
	(414, 'Boxe', 2500, 17),
	(415, 'Joystick', 90, 25),
	(416, 'Video proiector', 3700, 2),
	(417, 'Laptop', 4700, 12),
	(418, 'Casti', 250, 18),
	(419, 'Camera video', 400, 6),
	(420, 'Joypad', 90, 9);

-- Dumping structure for table magazin.purchase
CREATE TABLE IF NOT EXISTS `purchase` (
  `ID_Transaction` int NOT NULL,
  `ID_Customer` int NOT NULL,
  `ID_Product` int NOT NULL,
  `Transaction_date` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_Transaction`),
  KEY `ID_Customer` (`ID_Customer`),
  KEY `ID_Product` (`ID_Product`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`ID_Customer`) REFERENCES `customer` (`ID_Customer`),
  CONSTRAINT `purchase_ibfk_2` FOREIGN KEY (`ID_Product`) REFERENCES `product` (`ID_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table magazin.purchase: ~10 rows (approximately)
INSERT INTO `purchase` (`ID_Transaction`, `ID_Customer`, `ID_Product`, `Transaction_date`) VALUES
	(201, 5, 410, '02.09.2022'),
	(202, 1, 420, '01.09.2022'),
	(203, 9, 419, '05.09.2022'),
	(204, 6, 411, '06.09.2022'),
	(205, 8, 413, '05.09.2022'),
	(206, 7, 418, '08.09.2022'),
	(207, 2, 415, '05.09.2022'),
	(208, 4, 417, '08.09.2022'),
	(209, 3, 416, '07.09.2022'),
	(210, 10, 412, '06.09.2022');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
