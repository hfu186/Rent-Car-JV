CREATE DATABASE  IF NOT EXISTS `rent_car` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `rent_car`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: rent_car
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `admin_account`
--

DROP TABLE IF EXISTS `admin_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_account` (
  `Id` varchar(20) NOT NULL,
  `Adminpass` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_account`
--

LOCK TABLES `admin_account` WRITE;
/*!40000 ALTER TABLE `admin_account` DISABLE KEYS */;
INSERT INTO `admin_account` VALUES ('AD01','1909'),('AD02','1806');
/*!40000 ALTER TABLE `admin_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_details`
--

DROP TABLE IF EXISTS `bill_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_details` (
  `Bill_no` int(11) NOT NULL AUTO_INCREMENT,
  `Bill_date` date DEFAULT NULL,
  `Total_days` int(11) DEFAULT NULL,
  `Total_rent_cost` decimal(10,2) DEFAULT NULL,
  `Usr_id` int(11) DEFAULT NULL,
  `Rent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Bill_no`),
  UNIQUE KEY `Rent_id` (`Rent_id`),
  KEY `Usr_id` (`Usr_id`),
  CONSTRAINT `bill_details_ibfk_1` FOREIGN KEY (`Rent_id`) REFERENCES `rent_details` (`Rent_id`),
  CONSTRAINT `bill_details_ibfk_2` FOREIGN KEY (`Usr_id`) REFERENCES `user` (`Usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_details`
--

LOCK TABLES `bill_details` WRITE;
/*!40000 ALTER TABLE `bill_details` DISABLE KEYS */;
INSERT INTO `bill_details` VALUES (1,'2024-11-24',14,3080.00,1,NULL);
/*!40000 ALTER TABLE `bill_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `Driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `Dname` varchar(30) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Contact_no` varchar(20) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  PRIMARY KEY (`Driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Dang Thanh Trung','Nam','0903123456',5,22),(2,'Duong The Vi','Nam','0912345678',4,24),(3,'Duong Chi Cong','Nam','0939123456',5,22),(4,'Pham Cong Thanh','Nam','0945123456',3,21),(5,'Nguyen Nhut Hao','Nam','0981123456',4,20),(6,'Thai Viet Hoang','Nam','0973123456',5,25),(7,'Trinh Tran Phuong Tuan','Nam','0928123456',3,24),(8,'Ha Quoc Huy','Nam','0967123456',4,23),(9,'Truong Thanh Lam','Nam','0999123456',4,22),(10,'Phan Tan Tai','Nam','0912123456',5,21);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent_details`
--

DROP TABLE IF EXISTS `rent_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent_details` (
  `Rent_id` int(11) NOT NULL AUTO_INCREMENT,
  `Rent_start_date` date DEFAULT NULL,
  `Rent_end_date` date DEFAULT NULL,
  `Rent_rate_per_day` decimal(10,2) DEFAULT NULL,
  `Total_rent_cost` decimal(10,2) DEFAULT NULL,
  `Driver_id` int(11) DEFAULT NULL,
  `Usr_id` int(11) DEFAULT NULL,
  `car_id` int(11) DEFAULT NULL,
  `Trip_status` varchar(20) DEFAULT NULL,
  `Payment_status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Rent_id`),
  KEY `Driver_id` (`Driver_id`),
  KEY `Usr_id` (`Usr_id`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `rent_details_ibfk_1` FOREIGN KEY (`Driver_id`) REFERENCES `driver` (`Driver_id`),
  CONSTRAINT `rent_details_ibfk_2` FOREIGN KEY (`Usr_id`) REFERENCES `user` (`Usr_id`),
  CONSTRAINT `rent_details_ibfk_3` FOREIGN KEY (`car_id`) REFERENCES `vehicle` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_details`
--

LOCK TABLES `rent_details` WRITE;
/*!40000 ALTER TABLE `rent_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `rent_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent_requests`
--

DROP TABLE IF EXISTS `rent_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent_requests` (
  `Request_id` int(11) NOT NULL AUTO_INCREMENT,
  `Usr_id` int(11) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL,
  `car_Model` varchar(20) DEFAULT NULL,
  `PickUpCity` varchar(50) DEFAULT NULL,
  `PickUpAddress` varchar(50) DEFAULT NULL,
  `PickUpDate` date DEFAULT NULL,
  `DropOffCity` varchar(50) DEFAULT NULL,
  `DropOffAddress` varchar(50) DEFAULT NULL,
  `DropOffDate` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Request_id`),
  KEY `Usr_id` (`Usr_id`),
  CONSTRAINT `rent_requests_ibfk_1` FOREIGN KEY (`Usr_id`) REFERENCES `user` (`Usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent_requests`
--

LOCK TABLES `rent_requests` WRITE;
/*!40000 ALTER TABLE `rent_requests` DISABLE KEYS */;
INSERT INTO `rent_requests` VALUES (1,1,'Huynh Tu Phuong','pơppp','09888656','Mercedes-AMG','can tho','binh phuoc','2024-11-09','q o mon','q5','2024-11-23','Approved');
/*!40000 ALTER TABLE `rent_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `UName` varchar(50) DEFAULT NULL,
  `UEmail` varchar(50) DEFAULT NULL,
  `Contact_no` varchar(20) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Huynh Tu Phuong',NULL,'0942035835','Female','cantho');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `Usr_name` varchar(20) NOT NULL,
  `Usr_Pass` varchar(25) DEFAULT NULL,
  `Usr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Usr_name`),
  KEY `Usr_id` (`Usr_id`),
  CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`Usr_id`) REFERENCES `user` (`Usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES ('phuong','1234',1);
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `car_id` int(11) NOT NULL,
  `Registration_no` varchar(20) DEFAULT NULL,
  `car_Model` varchar(20) DEFAULT NULL,
  `car_type` varchar(20) DEFAULT NULL,
  `Driver_id` int(11) DEFAULT NULL,
  `Rent_rate_per_day` int(11) NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE KEY `Registration_no` (`Registration_no`),
  KEY `Driver_id` (`Driver_id`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`Driver_id`) REFERENCES `driver` (`Driver_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'59A-111.11','Lamborghini Aventado','2 seater',1,220,'Available'),(2,'65A-777.77','Tesla Model X','4 seater',2,220,'Available'),(3,'65A-999.99','BMW 4','4 seater',3,250,'Available'),(4,'65A-888.88','Bentley Bentayga V8','7 seater',4,260,'Available'),(5,'67A-555.55','Toyota Rush','7 seater',5,300,'Available'),(6,'65A-222.22','Kia Mohave','7 seater',6,310,'Available'),(7,'66A-123.45','Tesla Model Y','4 seater',7,260,'Available'),(8,'67A-567.99','Mercedes-AMG','2 seater',8,220,'Available');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'rent_car'
--
/*!50003 DROP FUNCTION IF EXISTS `CheckAvailability` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CheckAvailability`(p_CarID INT,p_PickUpDate DATE,p_DropOffDate DATE) RETURNS tinyint(1)
BEGIN
    DECLARE carStatus VARCHAR(10);
    DECLARE carCount INT DEFAULT 0;
    SELECT Status INTO carStatus
    FROM VEHICLE
    WHERE Car_id = p_CarID;
    SELECT COUNT(*)
    INTO carCount
    FROM RENT_DETAILS
    WHERE car_id = p_CarID
      AND ((Rent_start_date <= p_PickUpDate AND Rent_end_date >= p_PickUpDate) OR (Rent_start_date <= p_DropOffDate AND Rent_end_date >= p_DropOffDate) OR
           (Rent_start_date >= p_PickUpDate AND Rent_end_date <= p_DropOffDate)
      );
    IF carCount > 0 THEN
        RETURN FALSE;
    ELSE
        RETURN TRUE;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `approve_rent_request` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `approve_rent_request`(IN request_id INT)
BEGIN
    DECLARE rent_start_date DATE;
    DECLARE rent_end_date DATE;
    DECLARE rent_rate DECIMAL(10,2);
    DECLARE car_id INT;
    DECLARE usr_id INT;
    DECLARE driver_id INT;
    DECLARE total_cost DECIMAL(10,2);
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
		ROLLBACK;
	END;
    START TRANSACTION;
    SELECT r.PickUpDate, r.DropOffDate, v.Rent_rate_per_day, v.car_id, r.Usr_id
    INTO rent_start_date, rent_end_date, rent_rate, car_id, usr_id
    FROM RENT_REQUESTS r
    JOIN VEHICLE v ON r.car_Model = v.car_Model
    WHERE r.Request_id = request_id;
    SELECT v.Driver_id
    INTO driver_id
    FROM VEHICLE v
    WHERE v.car_id = car_id;
    SET total_cost = DATEDIFF(rent_end_date, rent_start_date) * rent_rate;
    INSERT INTO RENT_DETAILS (Rent_start_date, Rent_end_date, Rent_rate_per_day, Total_rent_cost, Driver_id, Usr_id, car_id, Trip_status, Payment_status)
    VALUES (rent_start_date, rent_end_date, rent_rate, total_cost, driver_id, usr_id, car_id, 'Pending', 'Unpaid');
    UPDATE RENT_REQUESTS
    SET Status = 'Approved'
    WHERE Request_id = request_id;
    COMMIT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelRent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelRent`(IN p_Usr_id INT)
BEGIN
    DECLARE v_RentId INT;
    DECLARE v_BillNo INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
    END;
    START TRANSACTION;
    SELECT Rent_id INTO v_RentId
    FROM RENT_DETAILS
    WHERE Usr_id = p_Usr_id
    ORDER BY Rent_id DESC
    LIMIT 1;
    IF v_RentId IS NOT NULL THEN
        SELECT Bill_no INTO v_BillNo
        FROM BILL_DETAILS
        WHERE Rent_id = v_RentId
        LIMIT 1;
        IF v_BillNo IS NOT NULL THEN
            DELETE FROM BILL_DETAILS WHERE Bill_no = v_BillNo;
        END IF;
        DELETE FROM RENT_DETAILS WHERE Rent_id = v_RentId;
    END IF;
    DELETE FROM RENT_REQUESTS
    WHERE Usr_id = p_Usr_id
    ORDER BY Request_id DESC
    LIMIT 1;
    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CreateUserAccount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateUserAccount`(IN p_usr_name VARCHAR(20),IN p_usr_pass VARCHAR(25),IN p_uname VARCHAR(50),IN p_contact_no VARCHAR(20),IN p_gender VARCHAR(10),IN p_address VARCHAR(50)
)
BEGIN
    DECLARE new_user_id INT;
    INSERT INTO USER (UName, Contact_no, Gender, Address)
    VALUES (p_uname, p_contact_no, p_gender, p_address);
    SET new_user_id = LAST_INSERT_ID();
    INSERT INTO USER_ACCOUNT (Usr_name, Usr_Pass, Usr_id)
    VALUES (p_usr_name, p_usr_pass, new_user_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetInvoiceDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetInvoiceDetails`()
BEGIN
    DECLARE v_UserId INT;
    DECLARE v_BillNo INT;
    DECLARE v_RentId INT;
    DECLARE v_RequestId INT;
    DECLARE v_CostPerDay DECIMAL(10, 2);
    DECLARE v_TotalCost DECIMAL(10, 2);
    DECLARE v_TotalDays INT;
    DECLARE v_PickUpDate DATE;
    DECLARE v_DropOffDate DATE;
    DECLARE v_CarModel VARCHAR(20);
    DECLARE v_CarId INT;
    SELECT r.Usr_id, r.Request_id, r.car_Model
    INTO v_UserId, v_RequestId, v_CarModel
    FROM rent_requests r
    WHERE r.Status = 'Approved' 
    ORDER BY r.Request_id DESC
    LIMIT 1;
    SELECT v.car_id
    INTO v_CarId
    FROM vehicle v
    WHERE v.car_Model = v_CarModel
    LIMIT 1;
    SELECT rd.Rent_id
    INTO v_RentId
    FROM rent_details rd
    WHERE rd.Usr_id = v_UserId AND rd.car_id = v_CarId
    LIMIT 1;
    SELECT Bill_no INTO v_BillNo
    FROM bill_details
    WHERE Rent_id = v_RentId
    LIMIT 1;
    IF v_BillNo IS NULL THEN
        SELECT DATEDIFF(rr.DropOffDate, rr.PickUpDate), v.Rent_rate_per_day
        INTO v_TotalDays, v_CostPerDay
        FROM rent_requests rr
        JOIN vehicle v ON rr.car_Model = v.car_Model
        WHERE rr.Request_id = v_RequestId;
        SET v_TotalCost = v_CostPerDay * v_TotalDays;
        INSERT INTO bill_details (Bill_date, Total_days, Total_rent_cost, Usr_id, Rent_id)
        VALUES (CURDATE(), v_TotalDays, v_TotalCost, v_UserId, v_RentId);
        SET v_BillNo = LAST_INSERT_ID();
    END IF;
    SELECT b.Bill_no AS InvoiceNumber, b.Bill_date AS InvoiceDate, u.UName AS UserName,u.Contact_no AS PhoneNumber,rr.PickUpDate, rr.DropOffDate, v.car_type AS TypeOfCar, v.car_Model AS NameOfCar, v.Rent_rate_per_day AS PricePerDay,
        DATEDIFF(rr.DropOffDate, rr.PickUpDate) AS TotalDays,DATEDIFF(rr.DropOffDate, rr.PickUpDate) * v.Rent_rate_per_day AS TotalCost
    FROM bill_details b
    JOIN rent_requests rr ON rr.Request_id = v_RequestId
    JOIN user u ON rr.Usr_id = u.Usr_id
    JOIN vehicle v ON rr.car_Model = v.car_Model
    WHERE b.Rent_id = v_RentId AND rr.Usr_id = v_UserId; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNewRentRequestData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNewRentRequestData`(OUT requestID INT,OUT UName VARCHAR(50),OUT phone VARCHAR(15),OUT carModel VARCHAR(50),OUT puDate DATE,OUT drDate DATE)
BEGIN
    SELECT Request_id, UserName, PhoneNumber, car_Model, PickUpDate, DropOffDate
    INTO requestID, UName, phone, carModel, puDate, drDate
    FROM RENT_REQUESTS
    WHERE Status = 'Pending'
    ORDER BY Request_id ASC
    LIMIT 1;
    IF requestID IS NULL THEN
        SET requestID = 0;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetStatistics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStatistics`(OUT car_count INT,OUT customer_count INT,OUT booked_count INT)
BEGIN
    SELECT COUNT(*) INTO car_count FROM VEHICLE;
    SELECT COUNT(*) INTO customer_count FROM USER;
    SELECT COUNT(*) INTO booked_count FROM RENT_DETAILS;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertRentRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertRentRequest`(
    IN p_Usr_id INT,IN p_UserName VARCHAR(50),
    IN p_Email VARCHAR(50),IN p_PhoneNumber VARCHAR(15),
    IN p_Car_Model VARCHAR(20),IN p_PickUpCity VARCHAR(50),
    IN p_PickUpAddress VARCHAR(50),IN p_PickUpDate DATE,
    IN p_DropOffCity VARCHAR(50),IN p_DropOffAddress VARCHAR(50),IN p_DropOffDate DATE
)
BEGIN
    INSERT INTO RENT_REQUESTS (Usr_id,UserName,Email,PhoneNumber,car_Model,PickUpCity,PickUpAddress,PickUpDate,DropOffCity,DropOffAddress,DropOffDate,Status) 
    VALUES (p_Usr_id,p_UserName,p_Email,p_PhoneNumber,p_Car_Model,p_PickUpCity,p_PickUpAddress,p_PickUpDate,p_DropOffCity,p_DropOffAddress,p_DropOffDate,'Pending');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RejectRentRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RejectRentRequest`(
    IN p_Request_id INT
)
BEGIN
    UPDATE RENT_REQUESTS
    SET Status = 'Rejected'
    WHERE Request_id = p_Request_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateVehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateVehicle`(IN p_carID INT,IN p_resNo VARCHAR(50),IN p_model VARCHAR(50),IN p_type VARCHAR(50),IN p_status VARCHAR(20),IN p_driverid INT,IN p_price INT)
BEGIN
    UPDATE VEHICLE
    SET 
        Registration_no = p_resNo,
        car_Model = p_model,
        car_type = p_type,
        Status = p_status,
        Driver_id = p_driverid,
        Rent_rate_per_day = p_price
    WHERE car_id = p_carID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateVehicleStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateVehicleStatus`(IN p_Car_id INT,IN p_NewStatus VARCHAR(20))
BEGIN
    UPDATE VEHICLE
    SET Status = p_NewStatus
    WHERE Car_id = p_Car_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-24 21:25:52
