-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce_db
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Who','Life father on difficult nice friend about.','2024-02-13 05:00:00'),(2,'Might','Employee reality with hold concern yeah military physical.','2024-04-20 05:00:00'),(3,'Throw','Natural poor author benefit.','2020-04-26 05:00:00'),(4,'Occur','Mother beautiful hand eight key rest claim tonight.','2020-09-13 05:00:00'),(5,'Perhaps','Include light large time between.','2023-07-18 05:00:00'),(6,'Majority','Over sign center.','2021-09-15 05:00:00'),(7,'Above','Certainly report mouth market.','2022-08-14 05:00:00'),(8,'Traditional','Certain officer three behind with practice information.','2021-07-16 05:00:00'),(9,'Speak','Old debate two discussion.','2023-06-27 05:00:00'),(10,'Stay','Rest including happen answer.','2024-04-24 05:00:00'),(11,'List','Strategy baby result fine option.','2022-02-02 05:00:00'),(12,'We','On civil generation create sort cover event.','2023-12-29 05:00:00'),(13,'City','First compare magazine.','2023-09-13 05:00:00'),(14,'Although','Even candidate hotel mouth.','2023-01-21 05:00:00'),(15,'Team','Heavy know box blue hold part big.','2024-05-06 05:00:00'),(16,'Success','Theory management nothing few.','2023-03-15 05:00:00'),(17,'Term','Answer seek tax affect scene.','2020-06-23 05:00:00'),(18,'Investment','Strategy training miss city.','2022-04-29 05:00:00'),(19,'Rather','Performance suffer should evening customer.','2024-09-18 05:00:00'),(20,'Very','Argue traditional six mother itself information.','2023-03-03 05:00:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` text,
  `registration_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Jennifer Henry','Thomasfort','crystal14@example.org','228-931-0104x32249','Unit 3606 Box 6972\nDPO AA 86161','2021-01-21 05:00:00'),(2,'Robert Brown','Gardnerchester','edwardskelsey@example.com','001-239-258-9299x55236','USS Lucas\nFPO AP 11411','2023-06-15 05:00:00'),(3,'Teresa Bryant','Brewerborough','jose86@example.org','(664)672-0626x6604','51374 Joseph Well\nEast Christophertown, OH 15519','2023-12-04 05:00:00'),(4,'Marvin George','Johnsonberg','wtaylor@example.org','001-211-831-2070x7330','4399 James Crest Apt. 812\nMichaelmouth, AS 33657','2020-09-19 05:00:00'),(5,'Nicole Best','Port Glenn','hhicks@example.com','(723)374-0241x048','16573 Erika Brooks Suite 465\nVeronicafurt, IA 21618','2023-01-24 05:00:00'),(6,'Benjamin Leon','Benjaminbury','icaldwell@example.com','001-796-795-8392x34752','55750 Michelle Harbor Suite 747\nMichelleport, NC 56111','2020-07-14 05:00:00'),(7,'Andrew Johnson','Matthewville','samanthawoodard@example.org','(661)402-0269x22922','635 Jackson Corners\nRobinsonborough, MD 84402','2021-09-05 05:00:00'),(8,'Daniel Robinson','Jamestown','brian42@example.com','+1-698-863-8205','16689 Rocha Lakes Suite 975\nSusanberg, KY 85851','2020-04-16 05:00:00'),(9,'Shawn Harvey','South Paulton','earlstewart@example.com','+1-209-691-9084x588','18856 William Street Apt. 190\nEast Shawn, ND 85416','2023-04-04 05:00:00'),(10,'Earl Lee','South Phillip','joannaprice@example.com','319.983.2227x76496','3112 Contreras Stream Suite 018\nGracefort, MS 10716','2021-08-31 05:00:00'),(11,'Anna Arnold','West Bryanberg','andreaarmstrong@example.org','416.287.5359x9392','8997 Howe Islands\nNorth Vanessa, WI 28837','2022-05-25 05:00:00'),(12,'Brenda Gray','Leontown','zimmermanjeffrey@example.net','(572)812-6224','04319 Robles Glen Apt. 460\nGalvanmouth, MP 37167','2022-08-24 05:00:00'),(13,'Christina Johnson','East Anthonyton','ashleybailey@example.net','001-897-681-9144x3921','Unit 9220 Box 3279\nDPO AE 15119','2021-11-11 05:00:00'),(14,'Madison Campbell','South Patrick','krodriguez@example.net','451-745-2223x91487','0828 Michael Mission Apt. 261\nLake Stacy, MI 50558','2022-05-29 05:00:00'),(15,'Kenneth Salas','Bradyberg','ewalker@example.net','2237042627','4552 Nelson Square\nPort Nancyland, ND 45496','2021-04-24 05:00:00'),(16,'Kathleen Ward','South Selenaberg','greencharlotte@example.org','(829)210-2276','965 Nichols Branch Apt. 944\nNorth Daniel, NV 85726','2020-10-05 05:00:00'),(17,'Elizabeth Cook','Melissaside','laura07@example.org','258.997.0772x99414','1807 Jessica Heights\nNorth Jessica, NC 27290','2024-09-29 05:00:00'),(18,'Becky Gutierrez','Karenbury','tarasanders@example.org','856.701.3087','3442 Farmer Locks\nWoodport, FM 12977','2020-01-10 05:00:00'),(19,'Nicholas Hendrix','East Robertland','lopezjennifer@example.net','880.604.9206x29651','704 Morgan Plains\nDebraville, NH 02254','2020-05-25 05:00:00'),(20,'Angela Craig','Jacquelineburgh','tinajohnson@example.org','735.999.1915x873','55215 Daniel Squares Apt. 347\nNew Jacqueline, OH 24633','2024-04-25 05:00:00');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventories`
--

DROP TABLE IF EXISTS `inventories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventories` (
  `inventory_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `stock_available` int DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `inventories_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventories`
--

LOCK TABLES `inventories` WRITE;
/*!40000 ALTER TABLE `inventories` DISABLE KEYS */;
INSERT INTO `inventories` VALUES (1,4,'2024-08-22',63,'2024-08-18 05:00:00'),(2,3,'2024-08-14',97,'2024-09-30 05:00:00'),(3,3,'2024-03-06',140,'2024-10-05 05:00:00'),(4,5,'2024-02-06',88,'2024-03-12 05:00:00'),(5,2,'2024-07-23',109,'2024-08-14 05:00:00'),(6,5,'2024-06-19',91,'2024-06-16 05:00:00'),(7,5,'2024-09-01',55,'2024-01-26 05:00:00'),(8,3,'2024-03-27',60,'2024-06-21 05:00:00'),(9,5,'2024-11-10',141,'2024-08-07 05:00:00'),(10,1,'2024-10-19',145,'2024-07-07 05:00:00'),(11,2,'2024-09-15',109,'2024-02-05 05:00:00'),(12,1,'2024-08-23',53,'2024-02-15 05:00:00'),(13,5,'2024-10-08',76,'2024-06-03 05:00:00'),(14,5,'2024-01-12',160,'2024-04-06 05:00:00'),(15,5,'2024-09-12',107,'2024-06-29 05:00:00'),(16,1,'2024-06-23',165,'2024-03-20 05:00:00'),(17,4,'2024-02-16',98,'2024-05-09 05:00:00'),(18,4,'2024-02-22',65,'2024-05-31 05:00:00'),(19,1,'2024-01-31',83,'2024-06-10 05:00:00'),(20,5,'2024-03-11',106,'2024-06-09 05:00:00');
/*!40000 ALTER TABLE `inventories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'That Traditional',1,983.80,'Perez Group',183,'Serious entire energy both.','2020-05-12 05:00:00'),(2,'Quality Important',2,158.22,'Odom PLC',163,'Project responsibility hour improve result including.','2023-06-13 05:00:00'),(3,'Special Grow',4,842.37,'Vaughn Inc',53,'Quickly tonight break voice probably tend.','2020-12-20 05:00:00'),(4,'Offer Doctor',3,412.85,'Parker, Smith and Carson',198,'Worry page company inside product senior place.','2021-10-07 05:00:00'),(5,'Simply Price',1,75.24,'Walters-Warren',187,'Manager admit baby eat wind.','2020-06-24 05:00:00'),(6,'Wind Admit',3,474.50,'Rollins, Castro and Vasquez',65,'Since positive television.','2020-04-07 05:00:00'),(7,'Future Maintain',5,467.69,'Baxter-Ruiz',176,'Fly investment glass white approach.','2024-11-06 05:00:00'),(8,'Person Business',4,494.11,'Bowman-Thomas',57,'Edge fight kind management own.','2020-06-03 05:00:00'),(9,'Contain Table',3,568.62,'Johnson, Cochran and Taylor',162,'Always happen raise south.','2024-01-23 05:00:00'),(10,'Baby Seven',4,134.62,'Craig, Castaneda and Hanson',133,'Concern card mean rest country forget fund.','2020-09-13 05:00:00'),(11,'Than Himself',4,253.38,'Ramirez, Guerra and Garza',54,'Option last not practice response different.','2024-09-13 05:00:00'),(12,'Mind Husband',5,347.46,'Campbell Inc',174,'Participant into few author.','2024-08-25 05:00:00'),(13,'Congress Place',3,346.14,'Harvey-Black',69,'Must provide area identify nation section.','2024-03-03 05:00:00'),(14,'Base Daughter',3,923.70,'Smith and Sons',170,'Collection my as thought.','2021-07-31 05:00:00'),(15,'Sometimes Music',1,884.53,'Gonzales-Morrison',125,'Money coach hour ahead glass field.','2020-06-22 05:00:00'),(16,'Attack Ground',4,642.13,'Davis-Adams',149,'Quite understand effect board life.','2024-04-10 05:00:00'),(17,'Identify To',4,297.15,'Hall-Smith',70,'Yourself sort seem past.','2020-07-28 05:00:00'),(18,'Discover Those',4,418.17,'Nelson, Bautista and Bishop',195,'Everybody daughter item discuss past.','2022-04-06 05:00:00'),(19,'Relationship Evening',1,66.23,'Mendez-Curry',54,'Own drive before wear room.','2024-05-30 05:00:00'),(20,'Police Design',4,17.95,'Morris Inc',192,'Program fish lose.','2021-07-10 05:00:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `sale_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `product_id` (`product_id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,4,'2024-08-21',1,432.88,'Credit Card','Canceled'),(2,2,2,'2024-04-07',1,942.41,'PayPal','Pending'),(3,3,3,'2024-04-02',3,567.43,'Debit Card','Completed'),(4,5,4,'2024-09-11',3,907.15,'Credit Card','Pending'),(5,1,2,'2024-10-11',3,239.95,'Credit Card','Completed'),(6,3,3,'2024-08-19',3,865.24,'Debit Card','Completed'),(7,2,2,'2024-08-18',3,64.69,'PayPal','Canceled'),(8,2,4,'2024-04-23',3,403.97,'PayPal','Canceled'),(9,3,2,'2024-07-17',4,693.91,'PayPal','Canceled'),(10,3,2,'2024-01-05',5,492.94,'Credit Card','Canceled'),(11,5,4,'2024-05-23',4,819.03,'Debit Card','Completed'),(12,5,5,'2024-02-13',3,518.01,'Credit Card','Canceled'),(13,2,3,'2024-01-06',2,883.29,'PayPal','Pending'),(14,4,1,'2024-10-11',1,936.19,'Credit Card','Pending'),(15,2,5,'2024-10-11',5,490.60,'PayPal','Canceled'),(16,2,3,'2024-09-27',3,841.96,'PayPal','Canceled'),(17,2,1,'2024-10-09',1,899.52,'Debit Card','Canceled'),(18,2,5,'2024-08-05',1,799.67,'PayPal','Pending'),(19,5,3,'2024-09-18',2,222.56,'Credit Card','Canceled'),(20,1,1,'2024-10-03',2,863.09,'Debit Card','Canceled');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 13:19:38
